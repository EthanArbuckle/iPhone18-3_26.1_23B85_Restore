void *sub_21D89B3C0(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
            if ((*(v27 + 48))(v4, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v4, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *v4;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, v4 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (v4 + v39);
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
            if ((*(v33 + 48))(v4, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v4, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, v4, v46);
              *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *v4;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v4;
        *(a1 + 8) = *(v4 + 8);
        *(a1 + 9) = *(v4 + 9);
        *(a1 + 10) = *(v4 + 10);
        v18 = v4[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *v4;
      *a1 = *v4;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(v4 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
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
        v100 = *(v4 + v13);
        *(a1 + v13) = v100;
        v101 = v100;
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
          memcpy(a1 + v13, v4 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v102 = sub_21DBF563C();
      (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(v4 + v13, 1, v14))
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
        v12 = *v4;
        *a1 = *v4;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(v4 + v13, 1, v14))
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
        memcpy(a1, v4, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v111 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
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
        v49 = *v4;
        *a1 = *v4;
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
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v109 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v104 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v104);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v104;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v105 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v105, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v105;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v111;
        v56[121] = v57[121];
        v4 = v109;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v111;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v111 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
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
      v52 = *v4;
      *a1 = *v4;
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
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v110 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v106);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v107 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v107, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v107;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v111;
      v56[121] = v57[121];
      v4 = v110;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + *(a3 + 20)) = *(v4 + *(a3 + 20));
  return a1;
}

_BYTE *sub_21D89CA58(_BYTE *a1, _BYTE *a2, uint64_t a3)
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
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

void *sub_21D89DB2C(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for TTRRemindersListViewModel.Item);
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
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_21D89EC4C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D89ECE4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v42 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(a2, 1, v42))
              {
                v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, a2, *(*(v44 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v56 = *(v42 + 20);
                v57 = sub_21DBF6C1C();
                v129 = *(*(v57 - 8) + 16);
                sub_21DBF8E0C();
                v129(a1 + v56, a2 + v56, v57);
                (*(v43 + 56))(a1, 0, 1, v42);
              }

              v58 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v59 = (a1 + v58);
              v60 = (a2 + v58);
              v61 = v60[1];
              if (v61)
              {
                *v59 = *v60;
                v59[1] = v61;
                v62 = v60[2];
                v59[2] = v62;
                sub_21DBF8E0C();
                v63 = v62;
              }

              else
              {
                *v59 = *v60;
                v59[2] = v60[2];
              }

              goto LABEL_192;
            case 7:
              v48 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v49 = *(v48 - 8);
              if ((*(v49 + 48))(a2, 1, v48))
              {
                v50 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v50 - 8) + 64));
              }

              else
              {
                v65 = sub_21DBF563C();
                (*(*(v65 - 8) + 16))(a1, a2, v65);
                *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
                (*(v49 + 56))(a1, 0, 1, v48);
              }

              v66 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v66 + 20)) = *(a2 + *(v66 + 20));
              goto LABEL_192;
            case 8:
              *a1 = *a2;
              v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v9 = sub_21DBF8D7C();
              (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_192:
              swift_storeEnumTagMultiPayload();
              goto LABEL_193;
          }

LABEL_46:
          memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_193:
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370);
          *(a1 + *(v123 + 48)) = *(a2 + *(v123 + 48));
          goto LABEL_194;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          v34 = a2[2];
          a1[2] = v34;
          v35 = v34;
          goto LABEL_192;
        }

        v45 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v46 = *(v31 + 48);
        v47 = v45;
        if (v46(a2 + v29, 1, v30))
        {
LABEL_39:
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v29, a2 + v29, *(*(v41 - 8) + 64));
          goto LABEL_192;
        }

        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_177;
            }

            goto LABEL_190;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_190;
          }

LABEL_176:
          v120 = *(a2 + v29);
          *(a1 + v29) = v120;
          v121 = v120;
          swift_storeEnumTagMultiPayload();
LABEL_191:
          (*(v31 + 56))(a1 + v29, 0, 1, v30);
          goto LABEL_192;
        }

        if (v64 <= 2)
        {
          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_177;
            }

LABEL_190:
            memcpy(a1 + v29, a2 + v29, *(v31 + 64));
            goto LABEL_191;
          }

          goto LABEL_176;
        }

LABEL_177:
        v122 = sub_21DBF563C();
        (*(*(v122 - 8) + 16))(a1 + v29, a2 + v29, v122);
        swift_storeEnumTagMultiPayload();
        goto LABEL_191;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v38 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v31 = *(v30 - 8);
          v39 = *(v31 + 48);
          v40 = v38;
          if (v39(a2 + v29, 1, v30))
          {
            goto LABEL_39;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_177;
              }

              goto LABEL_190;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_190;
            }

            goto LABEL_176;
          }

          if (v55 > 2)
          {
            goto LABEL_177;
          }

          if (v55 == 1)
          {
            goto LABEL_176;
          }

          if (v55 != 2)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v28 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v31 = *(v30 - 8);
          v32 = *(v31 + 48);
          v33 = v28;
          if (v32(a2 + v29, 1, v30))
          {
            goto LABEL_39;
          }

          v54 = swift_getEnumCaseMultiPayload();
          if (v54 > 4)
          {
            if (v54 <= 7)
            {
              if (v54 == 5 || v54 == 6)
              {
                goto LABEL_177;
              }

              goto LABEL_190;
            }

            if (v54 != 8 && v54 != 9)
            {
              goto LABEL_190;
            }

            goto LABEL_176;
          }

          if (v54 > 2)
          {
            goto LABEL_177;
          }

          if (v54 == 1)
          {
            goto LABEL_176;
          }

          if (v54 != 2)
          {
            goto LABEL_190;
          }
        }

        goto LABEL_177;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_46;
        }

        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = swift_getEnumCaseMultiPayload();
        if (v20 > 4)
        {
          if (v20 <= 7)
          {
            if (v20 == 5 || v20 == 6)
            {
              goto LABEL_103;
            }

            goto LABEL_141;
          }

          if (v20 != 8 && v20 != 9)
          {
            goto LABEL_141;
          }
        }

        else
        {
          if (v20 > 2)
          {
LABEL_103:
            v67 = sub_21DBF563C();
            (*(*(v67 - 8) + 16))(a1, a2, v67);
            swift_storeEnumTagMultiPayload();
LABEL_142:
            v76 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v77 = v76[5];
            v78 = a1 + v77;
            v79 = a2 + v77;
            v80 = *(a2 + v77 + 8);
            if (v80)
            {
              *v78 = *v79;
              *(v78 + 1) = v80;
              v81 = *(v79 + 2);
              v82 = *(v79 + 3);
              v83 = *(v79 + 4);
              v84 = *(v79 + 5);
              v85 = *(v79 + 6);
              v125 = *(v79 + 7);
              v130 = v79[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v81, v82, v83, v84, v85, v125, v130);
              *(v78 + 2) = v81;
              *(v78 + 3) = v82;
              *(v78 + 4) = v83;
              *(v78 + 5) = v84;
              *(v78 + 6) = v85;
              *(v78 + 7) = v125;
              v78[64] = v130;
              *(v78 + 65) = *(v79 + 65);
              v86 = v79[120];
              if (v86 == 255)
              {
                *(v78 + 72) = *(v79 + 72);
                *(v78 + 88) = *(v79 + 88);
                *(v78 + 104) = *(v79 + 104);
                v78[120] = v79[120];
              }

              else
              {
                v126 = *(v79 + 10);
                v131 = *(v79 + 9);
                v87 = *(v79 + 11);
                v88 = *(v79 + 12);
                v89 = *(v79 + 13);
                v90 = *(v79 + 14);
                v91 = v86 & 1;
                sub_21D0FB960(v131, v126, v87, v88, v89, v90, v86 & 1);
                *(v78 + 9) = v131;
                *(v78 + 10) = v126;
                *(v78 + 11) = v87;
                *(v78 + 12) = v88;
                *(v78 + 13) = v89;
                *(v78 + 14) = v90;
                v78[120] = v91;
              }

              v78[121] = v79[121];
            }

            else
            {
              v92 = *(v79 + 5);
              *(v78 + 4) = *(v79 + 4);
              *(v78 + 5) = v92;
              *(v78 + 6) = *(v79 + 6);
              *(v78 + 106) = *(v79 + 106);
              v93 = *(v79 + 1);
              *v78 = *v79;
              *(v78 + 1) = v93;
              v94 = *(v79 + 3);
              *(v78 + 2) = *(v79 + 2);
              *(v78 + 3) = v94;
            }

            *(a1 + v76[6]) = *(a2 + v76[6]);
            *(a1 + v76[7]) = *(a2 + v76[7]);
            *(a1 + v76[8]) = *(a2 + v76[8]);
            *(a1 + v76[9]) = *(a2 + v76[9]);
            *(a1 + v76[10]) = *(a2 + v76[10]);
            v95 = v76[11];
            v96 = *(a2 + v95);
            *(a1 + v95) = v96;
            v97 = v96;
            goto LABEL_192;
          }

          if (v20 != 1)
          {
            if (v20 == 2)
            {
              goto LABEL_103;
            }

LABEL_141:
            memcpy(a1, a2, *(*(v19 - 8) + 64));
            goto LABEL_142;
          }
        }

        v68 = *a2;
        *a1 = *a2;
        v69 = v68;
        swift_storeEnumTagMultiPayload();
        goto LABEL_142;
      }

      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = swift_getEnumCaseMultiPayload();
      if (v37 > 4)
      {
        if (v37 <= 7)
        {
          if (v37 == 5 || v37 == 6)
          {
            goto LABEL_107;
          }

          goto LABEL_149;
        }

        if (v37 != 8 && v37 != 9)
        {
          goto LABEL_149;
        }
      }

      else
      {
        if (v37 > 2)
        {
LABEL_107:
          v70 = sub_21DBF563C();
          (*(*(v70 - 8) + 16))(a1, a2, v70);
          swift_storeEnumTagMultiPayload();
LABEL_150:
          v98 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v99 = v98[5];
          v100 = a1 + v99;
          v101 = a2 + v99;
          v102 = *(a2 + v99 + 8);
          if (v102)
          {
            *v100 = *v101;
            *(v100 + 1) = v102;
            v103 = *(v101 + 2);
            v104 = *(v101 + 3);
            v105 = *(v101 + 4);
            v106 = *(v101 + 5);
            v107 = *(v101 + 6);
            v132 = *(v101 + 7);
            v127 = v101[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v103, v104, v105, v106, v107, v132, v127);
            *(v100 + 2) = v103;
            *(v100 + 3) = v104;
            *(v100 + 4) = v105;
            *(v100 + 5) = v106;
            *(v100 + 6) = v107;
            *(v100 + 7) = v132;
            v100[64] = v127;
            *(v100 + 65) = *(v101 + 65);
            v108 = v101[120];
            if (v108 == 255)
            {
              *(v100 + 72) = *(v101 + 72);
              *(v100 + 88) = *(v101 + 88);
              *(v100 + 104) = *(v101 + 104);
              v100[120] = v101[120];
            }

            else
            {
              v128 = *(v101 + 10);
              v133 = *(v101 + 9);
              v109 = *(v101 + 11);
              v110 = *(v101 + 12);
              v111 = *(v101 + 13);
              v112 = *(v101 + 14);
              v113 = v108 & 1;
              sub_21D0FB960(v133, v128, v109, v110, v111, v112, v108 & 1);
              *(v100 + 9) = v133;
              *(v100 + 10) = v128;
              *(v100 + 11) = v109;
              *(v100 + 12) = v110;
              *(v100 + 13) = v111;
              *(v100 + 14) = v112;
              v100[120] = v113;
            }

            v100[121] = v101[121];
          }

          else
          {
            v114 = *(v101 + 5);
            *(v100 + 4) = *(v101 + 4);
            *(v100 + 5) = v114;
            *(v100 + 6) = *(v101 + 6);
            *(v100 + 106) = *(v101 + 106);
            v115 = *(v101 + 1);
            *v100 = *v101;
            *(v100 + 1) = v115;
            v116 = *(v101 + 3);
            *(v100 + 2) = *(v101 + 2);
            *(v100 + 3) = v116;
          }

          *(a1 + v98[6]) = *(a2 + v98[6]);
          *(a1 + v98[7]) = *(a2 + v98[7]);
          *(a1 + v98[8]) = *(a2 + v98[8]);
          *(a1 + v98[9]) = *(a2 + v98[9]);
          *(a1 + v98[10]) = *(a2 + v98[10]);
          v117 = v98[11];
          v118 = *(a2 + v117);
          *(a1 + v117) = v118;
          v119 = v118;
          goto LABEL_192;
        }

        if (v37 != 1)
        {
          if (v37 == 2)
          {
            goto LABEL_107;
          }

LABEL_149:
          memcpy(a1, a2, *(*(v36 - 8) + 64));
          goto LABEL_150;
        }
      }

      v71 = *a2;
      *a1 = *a2;
      v72 = v71;
      swift_storeEnumTagMultiPayload();
      goto LABEL_150;
    }

    v11 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    switch(v12)
    {
      case 3:
        v24 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v25 = *(v16 + 48);
        v26 = v24;
        if (!v25(a2 + v14, 1, v15))
        {
          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_119;
              }

              goto LABEL_166;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_166;
            }

            goto LABEL_118;
          }

          if (v52 > 2)
          {
            goto LABEL_119;
          }

          if (v52 == 1)
          {
            goto LABEL_118;
          }

          if (v52 != 2)
          {
            goto LABEL_166;
          }

          goto LABEL_119;
        }

        break;
      case 2:
        v21 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v22 = *(v16 + 48);
        v23 = v21;
        if (!v22(a2 + v14, 1, v15))
        {
          v51 = swift_getEnumCaseMultiPayload();
          if (v51 > 4)
          {
            if (v51 <= 7)
            {
              if (v51 == 5 || v51 == 6)
              {
                goto LABEL_119;
              }

              goto LABEL_166;
            }

            if (v51 != 8 && v51 != 9)
            {
              goto LABEL_166;
            }

            goto LABEL_118;
          }

          if (v51 > 2)
          {
            goto LABEL_119;
          }

          if (v51 == 1)
          {
            goto LABEL_118;
          }

          if (v51 != 2)
          {
            goto LABEL_166;
          }

          goto LABEL_119;
        }

        break;
      case 1:
        v13 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(a2 + v14, 1, v15))
        {
          break;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_119;
            }

            goto LABEL_166;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_166;
          }

LABEL_118:
          v73 = *(a2 + v14);
          *(a1 + v14) = v73;
          v74 = v73;
          swift_storeEnumTagMultiPayload();
LABEL_167:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_168;
        }

        if (v53 <= 2)
        {
          if (v53 != 1)
          {
            if (v53 == 2)
            {
              goto LABEL_119;
            }

LABEL_166:
            memcpy(a1 + v14, a2 + v14, *(v16 + 64));
            goto LABEL_167;
          }

          goto LABEL_118;
        }

LABEL_119:
        v75 = sub_21DBF563C();
        (*(*(v75 - 8) + 16))(a1 + v14, a2 + v14, v75);
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      default:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_194:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(a1 + v14, a2 + v14, *(*(v27 - 8) + 64));
LABEL_168:
    swift_storeEnumTagMultiPayload();
    goto LABEL_194;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v5 + 16) & ~v5));

  return a1;
}

void sub_21D8A0D98(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 1)
    {
      return;
    }

    goto LABEL_22;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v2 = swift_getEnumCaseMultiPayload();
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      goto LABEL_22;
    }

    if (v2 > 1)
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
          goto LABEL_54;
        }

        goto LABEL_50;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_50;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
LABEL_54:
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
          goto LABEL_58;
        }

LABEL_50:
        v19 = sub_21DBF563C();
        (*(*(v19 - 8) + 8))(a1, v19);
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  if (v2 <= 5)
  {
    if (v2 != 4)
    {
      v9 = *(a1 + 16);
LABEL_58:

      return;
    }

LABEL_22:

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

        goto LABEL_43;
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
LABEL_43:
        v4 = sub_21DBF563C();
        v5 = *(*(v4 - 8) + 8);
        v6 = a1 + v10;
LABEL_44:

        v5(v6, v4);
        return;
      }

      if (v12 != 1)
      {
        if (v12 != 2)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    v9 = *(a1 + v10);
    goto LABEL_58;
  }

  if (v2 != 6)
  {
    if (v2 == 7)
    {
      v17 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v17 - 8) + 48))(a1, 1, v17))
      {
        return;
      }

      v18 = sub_21DBF563C();
      v5 = *(*(v18 - 8) + 8);
      v4 = v18;
      v6 = a1;
    }

    else
    {
      if (v2 != 8)
      {
        return;
      }

      v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v4 = sub_21DBF8D7C();
      v5 = *(*(v4 - 8) + 8);
      v6 = a1 + v3;
    }

    goto LABEL_44;
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
    goto LABEL_58;
  }
}

void *sub_21D8A1224(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v39 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(a2, 1, v39))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v41 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v53 = *(v39 + 20);
              v54 = sub_21DBF6C1C();
              v131 = *(*(v54 - 8) + 16);
              sub_21DBF8E0C();
              v131(a1 + v53, a2 + v53, v54);
              (*(v40 + 56))(a1, 0, 1, v39);
            }

            v55 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v56 = (a1 + v55);
            v57 = (a2 + v55);
            v58 = v57[1];
            if (v58)
            {
              *v56 = *v57;
              v56[1] = v58;
              v59 = v57[2];
              v56[2] = v59;
              sub_21DBF8E0C();
              v60 = v59;
            }

            else
            {
              *v56 = *v57;
              v56[2] = v57[2];
            }

            goto LABEL_190;
          case 7:
            v45 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v46 = *(v45 - 8);
            if ((*(v46 + 48))(a2, 1, v45))
            {
              v47 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v47 - 8) + 64));
            }

            else
            {
              v62 = sub_21DBF563C();
              (*(*(v62 - 8) + 16))(a1, a2, v62);
              *(a1 + *(v45 + 20)) = *(a2 + *(v45 + 20));
              (*(v46 + 56))(a1, 0, 1, v45);
            }

            v63 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v63 + 20)) = *(a2 + *(v63 + 20));
            goto LABEL_190;
          case 8:
            *a1 = *a2;
            v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v7 = sub_21DBF8D7C();
            (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
LABEL_190:
            swift_storeEnumTagMultiPayload();
            goto LABEL_191;
        }

LABEL_44:
        memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_191:
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370);
        *(a1 + *(v126 + 48)) = *(a2 + *(v126 + 48));
        goto LABEL_192;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v31 = a2[2];
        a1[2] = v31;
        v32 = v31;
        goto LABEL_190;
      }

      v42 = *a2;
      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      v43 = *(v28 + 48);
      v44 = v42;
      if (v43(a2 + v26, 1, v27))
      {
LABEL_37:
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v26, a2 + v26, *(*(v38 - 8) + 64));
        goto LABEL_190;
      }

      v61 = swift_getEnumCaseMultiPayload();
      if (v61 > 4)
      {
        if (v61 <= 7)
        {
          if (v61 == 5 || v61 == 6)
          {
            goto LABEL_175;
          }

          goto LABEL_188;
        }

        if (v61 != 8 && v61 != 9)
        {
          goto LABEL_188;
        }

LABEL_174:
        v123 = *(a2 + v26);
        *(a1 + v26) = v123;
        v124 = v123;
        swift_storeEnumTagMultiPayload();
LABEL_189:
        (*(v28 + 56))(a1 + v26, 0, 1, v27);
        goto LABEL_190;
      }

      if (v61 <= 2)
      {
        if (v61 != 1)
        {
          if (v61 == 2)
          {
            goto LABEL_175;
          }

LABEL_188:
          memcpy(a1 + v26, a2 + v26, *(v28 + 64));
          goto LABEL_189;
        }

        goto LABEL_174;
      }

LABEL_175:
      v125 = sub_21DBF563C();
      (*(*(v125 - 8) + 16))(a1 + v26, a2 + v26, v125);
      swift_storeEnumTagMultiPayload();
      goto LABEL_189;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v35 = *a2;
        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        v36 = *(v28 + 48);
        v37 = v35;
        if (v36(a2 + v26, 1, v27))
        {
          goto LABEL_37;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_175;
            }

            goto LABEL_188;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_188;
          }

          goto LABEL_174;
        }

        if (v52 > 2)
        {
          goto LABEL_175;
        }

        if (v52 == 1)
        {
          goto LABEL_174;
        }

        if (v52 != 2)
        {
          goto LABEL_188;
        }
      }

      else
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
          goto LABEL_37;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_175;
            }

            goto LABEL_188;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_188;
          }

          goto LABEL_174;
        }

        if (v51 > 2)
        {
          goto LABEL_175;
        }

        if (v51 == 1)
        {
          goto LABEL_174;
        }

        if (v51 != 2)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_175;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_44;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      if (v17 > 4)
      {
        if (v17 <= 7)
        {
          if (v17 == 5 || v17 == 6)
          {
            goto LABEL_101;
          }

          goto LABEL_139;
        }

        if (v17 != 8 && v17 != 9)
        {
          goto LABEL_139;
        }
      }

      else
      {
        if (v17 > 2)
        {
LABEL_101:
          v64 = sub_21DBF563C();
          (*(*(v64 - 8) + 16))(a1, a2, v64);
          swift_storeEnumTagMultiPayload();
LABEL_140:
          v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v74 = v73[5];
          v75 = a1 + v74;
          v76 = a2 + v74;
          v77 = *(a2 + v74 + 8);
          if (v77)
          {
            v128 = a2;
            v132 = a1;
            *v75 = *v76;
            *(v75 + 1) = v77;
            v78 = *(v76 + 2);
            v79 = *(v76 + 3);
            v80 = *(v76 + 4);
            v81 = *(v76 + 5);
            v83 = *(v76 + 6);
            v82 = *(v76 + 7);
            v84 = v76[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v78, v79, v80, v81, v83, v82, v84);
            *(v75 + 2) = v78;
            *(v75 + 3) = v79;
            *(v75 + 4) = v80;
            *(v75 + 5) = v81;
            *(v75 + 6) = v83;
            *(v75 + 7) = v82;
            v75[64] = v84;
            *(v75 + 65) = *(v76 + 65);
            v85 = v76[120];
            if (v85 == 255)
            {
              *(v75 + 72) = *(v76 + 72);
              *(v75 + 88) = *(v76 + 88);
              *(v75 + 104) = *(v76 + 104);
              v75[120] = v76[120];
            }

            else
            {
              v86 = *(v76 + 9);
              v87 = *(v76 + 10);
              v88 = *(v76 + 11);
              v89 = *(v76 + 12);
              v90 = *(v76 + 13);
              v91 = *(v76 + 14);
              v92 = v85 & 1;
              sub_21D0FB960(v86, v87, v88, v89, v90, v91, v85 & 1);
              *(v75 + 9) = v86;
              *(v75 + 10) = v87;
              *(v75 + 11) = v88;
              *(v75 + 12) = v89;
              *(v75 + 13) = v90;
              *(v75 + 14) = v91;
              v75[120] = v92;
            }

            v75[121] = v76[121];
            a2 = v128;
            a1 = v132;
          }

          else
          {
            v93 = *(v76 + 5);
            *(v75 + 4) = *(v76 + 4);
            *(v75 + 5) = v93;
            *(v75 + 6) = *(v76 + 6);
            *(v75 + 106) = *(v76 + 106);
            v94 = *(v76 + 1);
            *v75 = *v76;
            *(v75 + 1) = v94;
            v95 = *(v76 + 3);
            *(v75 + 2) = *(v76 + 2);
            *(v75 + 3) = v95;
          }

          *(a1 + v73[6]) = *(a2 + v73[6]);
          *(a1 + v73[7]) = *(a2 + v73[7]);
          *(a1 + v73[8]) = *(a2 + v73[8]);
          *(a1 + v73[9]) = *(a2 + v73[9]);
          *(a1 + v73[10]) = *(a2 + v73[10]);
          v96 = v73[11];
          v97 = *(a2 + v96);
          *(a1 + v96) = v97;
          v98 = v97;
          goto LABEL_190;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_101;
          }

LABEL_139:
          memcpy(a1, a2, *(*(v16 - 8) + 64));
          goto LABEL_140;
        }
      }

      v65 = *a2;
      *a1 = *a2;
      v66 = v65;
      swift_storeEnumTagMultiPayload();
      goto LABEL_140;
    }

    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v34 = swift_getEnumCaseMultiPayload();
    if (v34 > 4)
    {
      if (v34 <= 7)
      {
        if (v34 == 5 || v34 == 6)
        {
          goto LABEL_105;
        }

        goto LABEL_147;
      }

      if (v34 != 8 && v34 != 9)
      {
        goto LABEL_147;
      }
    }

    else
    {
      if (v34 > 2)
      {
LABEL_105:
        v67 = sub_21DBF563C();
        (*(*(v67 - 8) + 16))(a1, a2, v67);
        swift_storeEnumTagMultiPayload();
LABEL_148:
        v99 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v100 = v99[5];
        v101 = a1 + v100;
        v102 = a2 + v100;
        v103 = *(a2 + v100 + 8);
        if (v103)
        {
          v133 = a1;
          *v101 = *v102;
          *(v101 + 1) = v103;
          v104 = *(v102 + 2);
          v105 = *(v102 + 3);
          v106 = *(v102 + 4);
          v107 = *(v102 + 5);
          v108 = *(v102 + 6);
          v109 = *(v102 + 7);
          v129 = v102[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v104, v105, v106, v107, v108, v109, v129);
          *(v101 + 2) = v104;
          *(v101 + 3) = v105;
          *(v101 + 4) = v106;
          *(v101 + 5) = v107;
          *(v101 + 6) = v108;
          *(v101 + 7) = v109;
          v101[64] = v129;
          *(v101 + 65) = *(v102 + 65);
          v110 = v102[120];
          if (v110 == 255)
          {
            *(v101 + 72) = *(v102 + 72);
            *(v101 + 88) = *(v102 + 88);
            *(v101 + 104) = *(v102 + 104);
            v101[120] = v102[120];
          }

          else
          {
            v111 = *(v102 + 9);
            v130 = *(v102 + 10);
            v112 = *(v102 + 11);
            v113 = *(v102 + 12);
            v114 = *(v102 + 13);
            v115 = *(v102 + 14);
            v116 = v110 & 1;
            sub_21D0FB960(v111, v130, v112, v113, v114, v115, v110 & 1);
            *(v101 + 9) = v111;
            *(v101 + 10) = v130;
            *(v101 + 11) = v112;
            *(v101 + 12) = v113;
            *(v101 + 13) = v114;
            *(v101 + 14) = v115;
            v101[120] = v116;
          }

          v101[121] = v102[121];
          a1 = v133;
        }

        else
        {
          v117 = *(v102 + 5);
          *(v101 + 4) = *(v102 + 4);
          *(v101 + 5) = v117;
          *(v101 + 6) = *(v102 + 6);
          *(v101 + 106) = *(v102 + 106);
          v118 = *(v102 + 1);
          *v101 = *v102;
          *(v101 + 1) = v118;
          v119 = *(v102 + 3);
          *(v101 + 2) = *(v102 + 2);
          *(v101 + 3) = v119;
        }

        *(a1 + v99[6]) = *(a2 + v99[6]);
        *(a1 + v99[7]) = *(a2 + v99[7]);
        *(a1 + v99[8]) = *(a2 + v99[8]);
        *(a1 + v99[9]) = *(a2 + v99[9]);
        *(a1 + v99[10]) = *(a2 + v99[10]);
        v120 = v99[11];
        v121 = *(a2 + v120);
        *(a1 + v120) = v121;
        v122 = v121;
        goto LABEL_190;
      }

      if (v34 != 1)
      {
        if (v34 == 2)
        {
          goto LABEL_105;
        }

LABEL_147:
        memcpy(a1, a2, *(*(v33 - 8) + 64));
        goto LABEL_148;
      }
    }

    v68 = *a2;
    *a1 = *a2;
    v69 = v68;
    swift_storeEnumTagMultiPayload();
    goto LABEL_148;
  }

  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v9 = swift_getEnumCaseMultiPayload();
  switch(v9)
  {
    case 3:
      v21 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v22 = *(v13 + 48);
      v23 = v21;
      if (v22(a2 + v11, 1, v12))
      {
LABEL_24:
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v11, a2 + v11, *(*(v24 - 8) + 64));
LABEL_166:
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      v49 = swift_getEnumCaseMultiPayload();
      if (v49 > 4)
      {
        if (v49 <= 7)
        {
          if (v49 == 5 || v49 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v49 != 8 && v49 != 9)
        {
          goto LABEL_164;
        }

        goto LABEL_116;
      }

      if (v49 > 2)
      {
        goto LABEL_117;
      }

      if (v49 == 1)
      {
        goto LABEL_116;
      }

      if (v49 != 2)
      {
        goto LABEL_164;
      }

      goto LABEL_117;
    case 2:
      v18 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v19 = *(v13 + 48);
      v20 = v18;
      if (v19(a2 + v11, 1, v12))
      {
        goto LABEL_24;
      }

      v48 = swift_getEnumCaseMultiPayload();
      if (v48 > 4)
      {
        if (v48 <= 7)
        {
          if (v48 == 5 || v48 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v48 != 8 && v48 != 9)
        {
          goto LABEL_164;
        }

        goto LABEL_116;
      }

      if (v48 > 2)
      {
        goto LABEL_117;
      }

      if (v48 == 1)
      {
        goto LABEL_116;
      }

      if (v48 != 2)
      {
        goto LABEL_164;
      }

      goto LABEL_117;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        goto LABEL_24;
      }

      v50 = swift_getEnumCaseMultiPayload();
      if (v50 > 4)
      {
        if (v50 <= 7)
        {
          if (v50 == 5 || v50 == 6)
          {
            goto LABEL_117;
          }

          goto LABEL_164;
        }

        if (v50 != 8 && v50 != 9)
        {
          goto LABEL_164;
        }

LABEL_116:
        v70 = *(a2 + v11);
        *(a1 + v11) = v70;
        v71 = v70;
        swift_storeEnumTagMultiPayload();
LABEL_165:
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
        goto LABEL_166;
      }

      if (v50 <= 2)
      {
        if (v50 != 1)
        {
          if (v50 == 2)
          {
            goto LABEL_117;
          }

LABEL_164:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_165;
        }

        goto LABEL_116;
      }

LABEL_117:
      v72 = sub_21DBF563C();
      (*(*(v72 - 8) + 16))(a1 + v11, a2 + v11, v72);
      swift_storeEnumTagMultiPayload();
      goto LABEL_165;
  }

  memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_192:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *sub_21D8A3280(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for PendingDisplay.Element);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 5)
        {
          switch(EnumCaseMultiPayload)
          {
            case 6:
              v39 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v40 = *(v39 - 8);
              if ((*(v40 + 48))(a2, 1, v39))
              {
                v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, a2, *(*(v41 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v53 = *(v39 + 20);
                v54 = sub_21DBF6C1C();
                v136 = *(*(v54 - 8) + 16);
                sub_21DBF8E0C();
                v136(a1 + v53, a2 + v53, v54);
                (*(v40 + 56))(a1, 0, 1, v39);
              }

              v55 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v56 = (a1 + v55);
              v57 = (a2 + v55);
              if (v57[1])
              {
                *v56 = *v57;
                v56[1] = v57[1];
                v58 = v57[2];
                v56[2] = v58;
                sub_21DBF8E0C();
                v59 = v58;
              }

              else
              {
                v60 = *v57;
                v56[2] = v57[2];
                *v56 = v60;
              }

              goto LABEL_191;
            case 7:
              v45 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v46 = *(v45 - 8);
              if ((*(v46 + 48))(a2, 1, v45))
              {
                v47 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v47 - 8) + 64));
              }

              else
              {
                v62 = sub_21DBF563C();
                (*(*(v62 - 8) + 16))(a1, a2, v62);
                *(a1 + *(v45 + 20)) = *(a2 + *(v45 + 20));
                (*(v46 + 56))(a1, 0, 1, v45);
              }

              v63 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v63 + 20)) = *(a2 + *(v63 + 20));
              goto LABEL_191;
            case 8:
              *a1 = *a2;
              v6 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v7 = sub_21DBF8D7C();
              (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
LABEL_191:
              swift_storeEnumTagMultiPayload();
              goto LABEL_192;
          }

LABEL_45:
          memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_192:
          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370);
          *(a1 + *(v130 + 48)) = *(a2 + *(v130 + 48));
          goto LABEL_193;
        }

        if (EnumCaseMultiPayload != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          *(a1 + 10) = *(a2 + 10);
          v31 = a2[2];
          a1[2] = v31;
          v32 = v31;
          goto LABEL_191;
        }

        v42 = *a2;
        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        v43 = *(v28 + 48);
        v44 = v42;
        if (v43(a2 + v26, 1, v27))
        {
LABEL_38:
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v26, a2 + v26, *(*(v38 - 8) + 64));
          goto LABEL_191;
        }

        v61 = swift_getEnumCaseMultiPayload();
        if (v61 > 4)
        {
          if (v61 <= 7)
          {
            if (v61 == 5 || v61 == 6)
            {
              goto LABEL_176;
            }

            goto LABEL_189;
          }

          if (v61 != 8 && v61 != 9)
          {
            goto LABEL_189;
          }

LABEL_175:
          v127 = *(a2 + v26);
          *(a1 + v26) = v127;
          v128 = v127;
          swift_storeEnumTagMultiPayload();
LABEL_190:
          (*(v28 + 56))(a1 + v26, 0, 1, v27);
          goto LABEL_191;
        }

        if (v61 <= 2)
        {
          if (v61 != 1)
          {
            if (v61 == 2)
            {
              goto LABEL_176;
            }

LABEL_189:
            memcpy(a1 + v26, a2 + v26, *(v28 + 64));
            goto LABEL_190;
          }

          goto LABEL_175;
        }

LABEL_176:
        v129 = sub_21DBF563C();
        (*(*(v129 - 8) + 16))(a1 + v26, a2 + v26, v129);
        swift_storeEnumTagMultiPayload();
        goto LABEL_190;
      }

      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v35 = *a2;
          *a1 = *a2;
          v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = *(v27 - 8);
          v36 = *(v28 + 48);
          v37 = v35;
          if (v36(a2 + v26, 1, v27))
          {
            goto LABEL_38;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_176;
              }

              goto LABEL_189;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_189;
            }

            goto LABEL_175;
          }

          if (v52 > 2)
          {
            goto LABEL_176;
          }

          if (v52 == 1)
          {
            goto LABEL_175;
          }

          if (v52 != 2)
          {
            goto LABEL_189;
          }
        }

        else
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
            goto LABEL_38;
          }

          v51 = swift_getEnumCaseMultiPayload();
          if (v51 > 4)
          {
            if (v51 <= 7)
            {
              if (v51 == 5 || v51 == 6)
              {
                goto LABEL_176;
              }

              goto LABEL_189;
            }

            if (v51 != 8 && v51 != 9)
            {
              goto LABEL_189;
            }

            goto LABEL_175;
          }

          if (v51 > 2)
          {
            goto LABEL_176;
          }

          if (v51 == 1)
          {
            goto LABEL_175;
          }

          if (v51 != 2)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_176;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_45;
        }

        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = swift_getEnumCaseMultiPayload();
        if (v17 > 4)
        {
          if (v17 <= 7)
          {
            if (v17 == 5 || v17 == 6)
            {
              goto LABEL_102;
            }

            goto LABEL_140;
          }

          if (v17 != 8 && v17 != 9)
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v17 > 2)
          {
LABEL_102:
            v64 = sub_21DBF563C();
            (*(*(v64 - 8) + 16))(a1, a2, v64);
            swift_storeEnumTagMultiPayload();
LABEL_141:
            v73 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v74 = v73[5];
            v75 = a1 + v74;
            v76 = a2 + v74;
            if (*(a2 + v74 + 8))
            {
              *v75 = *v76;
              *(v75 + 1) = *(v76 + 1);
              v77 = *(v76 + 2);
              v78 = *(v76 + 3);
              v79 = *(v76 + 4);
              v80 = *(v76 + 5);
              v81 = *(v76 + 6);
              v132 = *(v76 + 7);
              v137 = v76[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v77, v78, v79, v80, v81, v132, v137);
              *(v75 + 2) = v77;
              *(v75 + 3) = v78;
              *(v75 + 4) = v79;
              *(v75 + 5) = v80;
              *(v75 + 6) = v81;
              *(v75 + 7) = v132;
              v75[64] = v137;
              v75[65] = v76[65];
              v75[66] = v76[66];
              v75[67] = v76[67];
              v75[68] = v76[68];
              v82 = v76[120];
              if (v82 == 255)
              {
                v94 = *(v76 + 72);
                v95 = *(v76 + 88);
                v96 = *(v76 + 104);
                v75[120] = v76[120];
                *(v75 + 104) = v96;
                *(v75 + 88) = v95;
                *(v75 + 72) = v94;
              }

              else
              {
                v133 = *(v76 + 10);
                v138 = *(v76 + 9);
                v83 = *(v76 + 11);
                v84 = *(v76 + 12);
                v85 = *(v76 + 13);
                v86 = *(v76 + 14);
                v87 = v82 & 1;
                sub_21D0FB960(v138, v133, v83, v84, v85, v86, v82 & 1);
                *(v75 + 9) = v138;
                *(v75 + 10) = v133;
                *(v75 + 11) = v83;
                *(v75 + 12) = v84;
                *(v75 + 13) = v85;
                *(v75 + 14) = v86;
                v75[120] = v87;
              }

              v75[121] = v76[121];
            }

            else
            {
              v88 = *v76;
              v89 = *(v76 + 1);
              v90 = *(v76 + 3);
              *(v75 + 2) = *(v76 + 2);
              *(v75 + 3) = v90;
              *v75 = v88;
              *(v75 + 1) = v89;
              v91 = *(v76 + 4);
              v92 = *(v76 + 5);
              v93 = *(v76 + 6);
              *(v75 + 106) = *(v76 + 106);
              *(v75 + 5) = v92;
              *(v75 + 6) = v93;
              *(v75 + 4) = v91;
            }

            *(a1 + v73[6]) = *(a2 + v73[6]);
            *(a1 + v73[7]) = *(a2 + v73[7]);
            *(a1 + v73[8]) = *(a2 + v73[8]);
            *(a1 + v73[9]) = *(a2 + v73[9]);
            *(a1 + v73[10]) = *(a2 + v73[10]);
            v97 = v73[11];
            v98 = *(a2 + v97);
            *(a1 + v97) = v98;
            v99 = v98;
            goto LABEL_191;
          }

          if (v17 != 1)
          {
            if (v17 == 2)
            {
              goto LABEL_102;
            }

LABEL_140:
            memcpy(a1, a2, *(*(v16 - 8) + 64));
            goto LABEL_141;
          }
        }

        v65 = *a2;
        *a1 = *a2;
        v66 = v65;
        swift_storeEnumTagMultiPayload();
        goto LABEL_141;
      }

      v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v34 = swift_getEnumCaseMultiPayload();
      if (v34 > 4)
      {
        if (v34 <= 7)
        {
          if (v34 == 5 || v34 == 6)
          {
            goto LABEL_106;
          }

          goto LABEL_148;
        }

        if (v34 != 8 && v34 != 9)
        {
          goto LABEL_148;
        }
      }

      else
      {
        if (v34 > 2)
        {
LABEL_106:
          v67 = sub_21DBF563C();
          (*(*(v67 - 8) + 16))(a1, a2, v67);
          swift_storeEnumTagMultiPayload();
LABEL_149:
          v100 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v101 = v100[5];
          v102 = a1 + v101;
          v103 = a2 + v101;
          if (*(a2 + v101 + 8))
          {
            *v102 = *v103;
            *(v102 + 1) = *(v103 + 1);
            v104 = *(v103 + 2);
            v105 = *(v103 + 3);
            v106 = *(v103 + 4);
            v107 = *(v103 + 5);
            v108 = *(v103 + 6);
            v139 = *(v103 + 7);
            v134 = v103[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v104, v105, v106, v107, v108, v139, v134);
            *(v102 + 2) = v104;
            *(v102 + 3) = v105;
            *(v102 + 4) = v106;
            *(v102 + 5) = v107;
            *(v102 + 6) = v108;
            *(v102 + 7) = v139;
            v102[64] = v134;
            v102[65] = v103[65];
            v102[66] = v103[66];
            v102[67] = v103[67];
            v102[68] = v103[68];
            v109 = v103[120];
            if (v109 == 255)
            {
              v121 = *(v103 + 72);
              v122 = *(v103 + 88);
              v123 = *(v103 + 104);
              v102[120] = v103[120];
              *(v102 + 104) = v123;
              *(v102 + 88) = v122;
              *(v102 + 72) = v121;
            }

            else
            {
              v135 = *(v103 + 10);
              v140 = *(v103 + 9);
              v110 = *(v103 + 11);
              v111 = *(v103 + 12);
              v112 = *(v103 + 13);
              v113 = *(v103 + 14);
              v114 = v109 & 1;
              sub_21D0FB960(v140, v135, v110, v111, v112, v113, v109 & 1);
              *(v102 + 9) = v140;
              *(v102 + 10) = v135;
              *(v102 + 11) = v110;
              *(v102 + 12) = v111;
              *(v102 + 13) = v112;
              *(v102 + 14) = v113;
              v102[120] = v114;
            }

            v102[121] = v103[121];
          }

          else
          {
            v115 = *v103;
            v116 = *(v103 + 1);
            v117 = *(v103 + 3);
            *(v102 + 2) = *(v103 + 2);
            *(v102 + 3) = v117;
            *v102 = v115;
            *(v102 + 1) = v116;
            v118 = *(v103 + 4);
            v119 = *(v103 + 5);
            v120 = *(v103 + 6);
            *(v102 + 106) = *(v103 + 106);
            *(v102 + 5) = v119;
            *(v102 + 6) = v120;
            *(v102 + 4) = v118;
          }

          *(a1 + v100[6]) = *(a2 + v100[6]);
          *(a1 + v100[7]) = *(a2 + v100[7]);
          *(a1 + v100[8]) = *(a2 + v100[8]);
          *(a1 + v100[9]) = *(a2 + v100[9]);
          *(a1 + v100[10]) = *(a2 + v100[10]);
          v124 = v100[11];
          v125 = *(a2 + v124);
          *(a1 + v124) = v125;
          v126 = v125;
          goto LABEL_191;
        }

        if (v34 != 1)
        {
          if (v34 == 2)
          {
            goto LABEL_106;
          }

LABEL_148:
          memcpy(a1, a2, *(*(v33 - 8) + 64));
          goto LABEL_149;
        }
      }

      v68 = *a2;
      *a1 = *a2;
      v69 = v68;
      swift_storeEnumTagMultiPayload();
      goto LABEL_149;
    }

    v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v9 = swift_getEnumCaseMultiPayload();
    switch(v9)
    {
      case 3:
        v21 = *a2;
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        v22 = *(v13 + 48);
        v23 = v21;
        if (!v22(a2 + v11, 1, v12))
        {
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_165;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_165;
            }

            goto LABEL_117;
          }

          if (v49 > 2)
          {
            goto LABEL_118;
          }

          if (v49 == 1)
          {
            goto LABEL_117;
          }

          if (v49 != 2)
          {
            goto LABEL_165;
          }

          goto LABEL_118;
        }

        break;
      case 2:
        v18 = *a2;
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        v19 = *(v13 + 48);
        v20 = v18;
        if (!v19(a2 + v11, 1, v12))
        {
          v48 = swift_getEnumCaseMultiPayload();
          if (v48 > 4)
          {
            if (v48 <= 7)
            {
              if (v48 == 5 || v48 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_165;
            }

            if (v48 != 8 && v48 != 9)
            {
              goto LABEL_165;
            }

            goto LABEL_117;
          }

          if (v48 > 2)
          {
            goto LABEL_118;
          }

          if (v48 == 1)
          {
            goto LABEL_117;
          }

          if (v48 != 2)
          {
            goto LABEL_165;
          }

          goto LABEL_118;
        }

        break;
      case 1:
        v10 = *a2;
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        v14 = *(v13 + 48);
        v15 = v10;
        if (v14(a2 + v11, 1, v12))
        {
          break;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 > 4)
        {
          if (v50 <= 7)
          {
            if (v50 == 5 || v50 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_165;
          }

          if (v50 != 8 && v50 != 9)
          {
            goto LABEL_165;
          }

LABEL_117:
          v70 = *(a2 + v11);
          *(a1 + v11) = v70;
          v71 = v70;
          swift_storeEnumTagMultiPayload();
LABEL_166:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_167;
        }

        if (v50 <= 2)
        {
          if (v50 != 1)
          {
            if (v50 == 2)
            {
              goto LABEL_118;
            }

LABEL_165:
            memcpy(a1 + v11, a2 + v11, *(v13 + 64));
            goto LABEL_166;
          }

          goto LABEL_117;
        }

LABEL_118:
        v72 = sub_21DBF563C();
        (*(*(v72 - 8) + 16))(a1 + v11, a2 + v11, v72);
        swift_storeEnumTagMultiPayload();
        goto LABEL_166;
      default:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_193:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(a1 + v11, a2 + v11, *(*(v24 - 8) + 64));
LABEL_167:
    swift_storeEnumTagMultiPayload();
    goto LABEL_193;
  }

  return a1;
}

_BYTE *sub_21D8A5358(_BYTE *a1, _BYTE *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v26 = *(v25 - 8);
          if ((*(v26 + 48))(a2, 1, v25))
          {
            v27 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v27 - 8) + 64));
          }

          else
          {
            v34 = sub_21DBF563C();
            (*(*(v34 - 8) + 32))(a1, a2, v34);
            a1[*(v25 + 20)] = a2[*(v25 + 20)];
            (*(v26 + 56))(a1, 0, 1, v25);
          }

          v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v35 + 20)] = *&a2[*(v35 + 20)];
          goto LABEL_134;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_43;
        }

        *a1 = *a2;
        v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v22 = sub_21DBF8D7C();
        (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
LABEL_134:
        swift_storeEnumTagMultiPayload();
        goto LABEL_135;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v15 = *(v14 - 8);
          if ((*(v15 + 48))(a2, 1, v14))
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v16 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v36 = *(v14 + 20);
            v37 = sub_21DBF6C1C();
            (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
            (*(v15 + 56))(a1, 0, 1, v14);
          }

          v38 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v39 = &a1[v38];
          v40 = &a2[v38];
          *v39 = *v40;
          *(v39 + 2) = *(v40 + 2);
          goto LABEL_134;
        }

        goto LABEL_43;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(&a2[v17], 1, v18))
      {
        v32 = swift_getEnumCaseMultiPayload();
        if (v32 <= 3)
        {
          if (v32 == 2 || v32 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v32 == 4 || v32 == 5 || v32 == 6)
        {
          goto LABEL_83;
        }

        goto LABEL_132;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v23 = swift_getEnumCaseMultiPayload();
          if (v23 <= 3)
          {
            if (v23 == 2 || v23 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v23 == 4 || v23 == 5 || v23 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_99;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v7 = swift_getEnumCaseMultiPayload();
          if (v7 <= 3)
          {
            if (v7 == 2 || v7 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v7 == 4 || v7 == 5 || v7 == 6)
          {
LABEL_10:
            v8 = sub_21DBF563C();
            (*(*(v8 - 8) + 32))(a1, a2, v8);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            v43 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v44 = v43[5];
            v45 = &a1[v44];
            v46 = &a2[v44];
            v47 = v46[3];
            v45[2] = v46[2];
            v45[3] = v47;
            v48 = v46[1];
            *v45 = *v46;
            v45[1] = v48;
            *(v45 + 106) = *(v46 + 106);
            v49 = v46[6];
            v45[5] = v46[5];
            v45[6] = v49;
            v45[4] = v46[4];
            a1[v43[6]] = a2[v43[6]];
            a1[v43[7]] = a2[v43[7]];
            a1[v43[8]] = a2[v43[8]];
            a1[v43[9]] = a2[v43[9]];
            a1[v43[10]] = a2[v43[10]];
            *&a1[v43[11]] = *&a2[v43[11]];
            goto LABEL_134;
          }

LABEL_99:
          memcpy(a1, a2, *(*(v6 - 8) + 64));
          goto LABEL_100;
        }

LABEL_43:
        memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_135:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370);
        *&a1[*(v50 + 48)] = *&a2[*(v50 + 48)];
        goto LABEL_136;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(&a2[v17], 1, v18))
        {
          goto LABEL_40;
        }

        v41 = swift_getEnumCaseMultiPayload();
        if (v41 <= 3)
        {
          if (v41 == 2 || v41 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v41 == 4 || v41 == 5 || v41 == 6)
        {
LABEL_83:
          v42 = sub_21DBF563C();
          (*(*(v42 - 8) + 32))(&a1[v17], &a2[v17], v42);
          swift_storeEnumTagMultiPayload();
LABEL_133:
          (*(v19 + 56))(&a1[v17], 0, 1, v18);
          goto LABEL_134;
        }

LABEL_132:
        memcpy(&a1[v17], &a2[v17], *(v19 + 64));
        goto LABEL_133;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(&a2[v17], 1, v18))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_83;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_83;
        }

        goto LABEL_132;
      }
    }

LABEL_40:
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v17], &a2[v17], *(*(v24 - 8) + 64));
    goto LABEL_134;
  }

  v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v10 = swift_getEnumCaseMultiPayload();
  switch(v10)
  {
    case 3:
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(&a2[v11], 1, v12))
      {
LABEL_27:
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v11], &a2[v11], *(*(v20 - 8) + 64));
LABEL_122:
        swift_storeEnumTagMultiPayload();
        goto LABEL_136;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_120;
    case 2:
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(&a2[v11], 1, v12))
      {
        goto LABEL_27;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 <= 3)
      {
        if (v28 == 2 || v28 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v28 == 4 || v28 == 5 || v28 == 6)
      {
        goto LABEL_58;
      }

      goto LABEL_120;
    case 1:
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(&a2[v11], 1, v12))
      {
        goto LABEL_27;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_58;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
LABEL_58:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 32))(&a1[v11], &a2[v11], v31);
        swift_storeEnumTagMultiPayload();
LABEL_121:
        (*(v13 + 56))(&a1[v11], 0, 1, v12);
        goto LABEL_122;
      }

LABEL_120:
      memcpy(&a1[v11], &a2[v11], *(v13 + 64));
      goto LABEL_121;
  }

  memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_136:
  swift_storeEnumTagMultiPayload();
  return a1;
}

_BYTE *sub_21D8A6CD4(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    sub_21D106EB8(a1, type metadata accessor for PendingDisplay.Element);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload > 6)
        {
          if (EnumCaseMultiPayload == 7)
          {
            v25 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v26 = *(v25 - 8);
            if ((*(v26 + 48))(a2, 1, v25))
            {
              v27 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v27 - 8) + 64));
            }

            else
            {
              v34 = sub_21DBF563C();
              (*(*(v34 - 8) + 32))(a1, a2, v34);
              a1[*(v25 + 20)] = a2[*(v25 + 20)];
              (*(v26 + 56))(a1, 0, 1, v25);
            }

            v35 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v35 + 20)] = *&a2[*(v35 + 20)];
            goto LABEL_135;
          }

          if (EnumCaseMultiPayload != 8)
          {
            goto LABEL_44;
          }

          *a1 = *a2;
          v21 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v22 = sub_21DBF8D7C();
          (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
LABEL_135:
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }

        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload == 6)
          {
            v14 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(a2, 1, v14))
            {
              v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v16 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v36 = *(v14 + 20);
              v37 = sub_21DBF6C1C();
              (*(*(v37 - 8) + 32))(&a1[v36], &a2[v36], v37);
              (*(v15 + 56))(a1, 0, 1, v14);
            }

            v38 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v39 = &a1[v38];
            v40 = &a2[v38];
            *v39 = *v40;
            *(v39 + 2) = *(v40 + 2);
            goto LABEL_135;
          }

          goto LABEL_44;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        if (!(*(v19 + 48))(&a2[v17], 1, v18))
        {
          v32 = swift_getEnumCaseMultiPayload();
          if (v32 <= 3)
          {
            if (v32 == 2 || v32 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v32 == 4 || v32 == 5 || v32 == 6)
          {
            goto LABEL_84;
          }

          goto LABEL_133;
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (!EnumCaseMultiPayload)
          {
            v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v23 = swift_getEnumCaseMultiPayload();
            if (v23 <= 3)
            {
              if (v23 == 2 || v23 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v23 == 4 || v23 == 5 || v23 == 6)
            {
              goto LABEL_11;
            }

            goto LABEL_100;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v6 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v7 = swift_getEnumCaseMultiPayload();
            if (v7 <= 3)
            {
              if (v7 == 2 || v7 == 3)
              {
                goto LABEL_11;
              }
            }

            else if (v7 == 4 || v7 == 5 || v7 == 6)
            {
LABEL_11:
              v8 = sub_21DBF563C();
              (*(*(v8 - 8) + 32))(a1, a2, v8);
              swift_storeEnumTagMultiPayload();
LABEL_101:
              v43 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v44 = v43[5];
              v45 = &a1[v44];
              v46 = &a2[v44];
              v47 = v46[3];
              v45[2] = v46[2];
              v45[3] = v47;
              v48 = v46[1];
              *v45 = *v46;
              v45[1] = v48;
              *(v45 + 106) = *(v46 + 106);
              v49 = v46[6];
              v45[5] = v46[5];
              v45[6] = v49;
              v45[4] = v46[4];
              a1[v43[6]] = a2[v43[6]];
              a1[v43[7]] = a2[v43[7]];
              a1[v43[8]] = a2[v43[8]];
              a1[v43[9]] = a2[v43[9]];
              a1[v43[10]] = a2[v43[10]];
              *&a1[v43[11]] = *&a2[v43[11]];
              goto LABEL_135;
            }

LABEL_100:
            memcpy(a1, a2, *(*(v6 - 8) + 64));
            goto LABEL_101;
          }

LABEL_44:
          memcpy(a1, a2, *(*(v4 - 8) + 64));
LABEL_136:
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63370);
          *&a1[*(v50 + 48)] = *&a2[*(v50 + 48)];
          goto LABEL_137;
        }

        if (EnumCaseMultiPayload != 2)
        {
          *a1 = *a2;
          v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(&a2[v17], 1, v18))
          {
            goto LABEL_41;
          }

          v41 = swift_getEnumCaseMultiPayload();
          if (v41 <= 3)
          {
            if (v41 == 2 || v41 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v41 == 4 || v41 == 5 || v41 == 6)
          {
LABEL_84:
            v42 = sub_21DBF563C();
            (*(*(v42 - 8) + 32))(&a1[v17], &a2[v17], v42);
            swift_storeEnumTagMultiPayload();
LABEL_134:
            (*(v19 + 56))(&a1[v17], 0, 1, v18);
            goto LABEL_135;
          }

LABEL_133:
          memcpy(&a1[v17], &a2[v17], *(v19 + 64));
          goto LABEL_134;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        if (!(*(v19 + 48))(&a2[v17], 1, v18))
        {
          v33 = swift_getEnumCaseMultiPayload();
          if (v33 <= 3)
          {
            if (v33 == 2 || v33 == 3)
            {
              goto LABEL_84;
            }
          }

          else if (v33 == 4 || v33 == 5 || v33 == 6)
          {
            goto LABEL_84;
          }

          goto LABEL_133;
        }
      }

LABEL_41:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v17], &a2[v17], *(*(v24 - 8) + 64));
      goto LABEL_135;
    }

    v9 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    switch(v10)
    {
      case 3:
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        if (!(*(v13 + 48))(&a2[v11], 1, v12))
        {
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 <= 3)
          {
            if (v29 == 2 || v29 == 3)
            {
              goto LABEL_59;
            }
          }

          else if (v29 == 4 || v29 == 5 || v29 == 6)
          {
            goto LABEL_59;
          }

          goto LABEL_121;
        }

        break;
      case 2:
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        if (!(*(v13 + 48))(&a2[v11], 1, v12))
        {
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_59;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_59;
          }

          goto LABEL_121;
        }

        break;
      case 1:
        *a1 = *a2;
        v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(&a2[v11], 1, v12))
        {
          break;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 <= 3)
        {
          if (v30 == 2 || v30 == 3)
          {
            goto LABEL_59;
          }
        }

        else if (v30 == 4 || v30 == 5 || v30 == 6)
        {
LABEL_59:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 32))(&a1[v11], &a2[v11], v31);
          swift_storeEnumTagMultiPayload();
LABEL_122:
          (*(v13 + 56))(&a1[v11], 0, 1, v12);
          goto LABEL_123;
        }

LABEL_121:
        memcpy(&a1[v11], &a2[v11], *(v13 + 64));
        goto LABEL_122;
      default:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_137:
        swift_storeEnumTagMultiPayload();
        return a1;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v11], &a2[v11], *(*(v20 - 8) + 64));
LABEL_123:
    swift_storeEnumTagMultiPayload();
    goto LABEL_137;
  }

  return a1;
}

uint64_t sub_21D8A8674()
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3[5] = v3;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t TTRIHashtagCollectionViewAdaptor.__allocating_init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = swift_allocObject();
  v11 = *a6;
  v12 = a6[1];
  LOBYTE(a6) = *(a6 + 16);
  swift_unknownObjectWeakInit();
  *(v10 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 48) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 72) = a6;
  return v10;
}

uint64_t TTRIHashtagCollectionViewAdaptor.init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a6 + 16);
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 48) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v6 + 56) = v10;
  *(v6 + 64) = v11;
  *(v6 + 72) = v12;
  return v6;
}

void TTRIHashtagCollectionViewAdaptor.updateButtons(_:specialViewTags:animation:with:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = sub_21DBF5B9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if ((*(a3 + 8) & 1) == 0)
  {
    v18 = *a3;
    v19 = objc_opt_self();
    (*(v11 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v20 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    (*(v11 + 32))(v21 + v20, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v22 = (v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a4;
    v22[1] = a5;
    aBlock[4] = sub_21D8A8CA0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_107;
    v23 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v19 animateWithDuration:v23 animations:v18];
    _Block_release(v23);
    return;
  }

  if (a1 >> 62)
  {
    v13 = sub_21DBFBD7C();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      [v15 tag];
      v17 = sub_21DBF5B2C();
      a4(v16, v17 & 1);
    }

    while (v13 != v14);
  }
}

void sub_21D8A8BA4(unint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  if (a1 >> 62)
  {
    v5 = sub_21DBFBD7C();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
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
      [v7 tag];
      v9 = sub_21DBF5B2C();
      a3(v8, v9 & 1);
      [v8 layoutIfNeeded];
    }

    while (v5 != v6);
  }
}

uint64_t TTRIHashtagCollectionViewAdaptor.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 40);
  sub_21D8A8CD8(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  return v0;
}

void sub_21D8A8CD8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t TTRIHashtagCollectionViewAdaptor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 40);
  sub_21D8A8CD8(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

char *TTRIHashtagCollectionViewAdaptor.makeHashtagButton(title:viewTag:buttonToReuse:accessibilityDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v29 = a1;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = sub_21D8A9000(v6);
  }

  v19 = a4;
  v20 = v18;
  sub_21DBFB97C();
  v21 = sub_21DBFB95C();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v17, 1, v21))
  {
    sub_21D3032C8(v17);
  }

  else
  {
    v23 = sub_21DBFB91C();
    v25 = v24;
    sub_21D3032C8(v17);
    if (v25)
    {
      if (v23 == v29 && v25 == a2)
      {

        goto LABEL_17;
      }

      v27 = sub_21DBFC64C();

      if (v27)
      {

        goto LABEL_17;
      }
    }
  }

  sub_21DBFB97C();
  if (v22(v14, 1, v21))
  {
    sub_21D303258(v14, v11);
    sub_21DBFB98C();

    sub_21D3032C8(v14);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFB92C();
    sub_21DBFB98C();
  }

  [v20 invalidateIntrinsicContentSize];
LABEL_17:
  [v20 setTag_];
  *&v20[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = v31;
  swift_unknownObjectWeakAssign();
  return v20;
}

char *sub_21D8A9000(uint64_t a1)
{
  v2 = _s15RemindersUICore17TTRIHashtagButtonC14makeForHashtagACyFZ_0();
  v3 = *(a1 + 32);
  if (v3)
  {
    [v2 addTarget:swift_unknownObjectWeakLoadStrong() action:v3 forControlEvents:0x2000];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakLoadStrong();
  v4 = *(a1 + 48);
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
  swift_beginAccess();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

char *TTRIHashtagCollectionViewAdaptor.makeAddHashtagButton(viewTag:buttonToReuse:accessibilityDelegate:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = sub_21D8A918C(v4);
  }

  v9 = a2;
  [v8 setTag_];
  *&v8[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate + 8] = a4;
  swift_unknownObjectWeakAssign();
  v10 = v8;
  v11 = sub_21DBFA12C();
  [v10 setAccessibilityIdentifier_];

  return v10;
}

char *sub_21D8A918C(uint64_t a1)
{
  v2 = _s15RemindersUICore17TTRIHashtagButtonC13makeForAddTagACyFZ_0();
  v3 = *(a1 + 24);
  if (v3)
  {
    [v2 addTarget:swift_unknownObjectWeakLoadStrong() action:v3 forControlEvents:0x2000];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectWeakLoadStrong();
  v4 = *(a1 + 48);
  v5 = &v2[OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate];
  swift_beginAccess();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

void TTRIHashtagCollectionViewAdaptor.updateSelected(for:selectedViewTags:animation:)(unint64_t a1, id a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21DBF5B9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 8) & 1) == 0)
  {
    v15 = *a3;
    v16 = objc_opt_self();
    (*(v9 + 16))(&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    (*(v9 + 32))(v19 + v17, v11, v8);
    v20 = (v19 + v18);
    *v20 = sub_21D8A9664;
    v20[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    v41 = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_7_3;
    v21 = _Block_copy(aBlock);
    v11 = v41;
    sub_21DBF8E0C();

    [v16 animateWithDuration:v21 animations:v15];
    _Block_release(v21);
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_11:
  if (*(v4 + 72) == 1)
  {
    v22 = *(v4 + 64);
    v39 = *(v4 + 56);
    v12 = v22;
    if (sub_21DBF5AAC() == 1)
    {
      v23 = sub_21DBF5ABC();
      if ((v24 & 1) == 0)
      {
        a2 = v23;
        if (a1 >> 62)
        {
          goto LABEL_33;
        }

        v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          while (1)
          {
            v26 = 0;
            while ((a1 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x223D44740](v26, a1);
              v4 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
LABEL_25:
                __break(1u);
LABEL_26:
                [v11 frame];
                v29 = v28;
                v31 = v30;
                v33 = v32;
                v35 = v34;

                [v39 spacing];
                v37 = -v36;
                v42.origin.x = v29;
                v42.origin.y = v31;
                v42.size.width = v33;
                v42.size.height = v35;
                v43 = CGRectInset(v42, v37, 0.0);
                [v12 scrollRectToVisible:1 animated:{v43.origin.x, v43.origin.y, v43.size.width, v43.size.height}];

                goto LABEL_27;
              }

LABEL_20:
              v11 = v27;
              if ([v11 tag] == a2)
              {
                goto LABEL_26;
              }

              ++v26;
              if (v4 == v25)
              {
                goto LABEL_27;
              }
            }

            if (v26 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_30:
            v12 = sub_21DBFBD7C();
            if (!v12)
            {
              goto LABEL_11;
            }

LABEL_4:
            if (v12 >= 1)
            {
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

                v11 = v14;
                ++v13;
                [v14 tag];
                [v11 setSelected_];
              }

              while (v12 != v13);
              goto LABEL_11;
            }

            __break(1u);
LABEL_33:
            v25 = sub_21DBFBD7C();
            if (!v25)
            {
              goto LABEL_27;
            }
          }

          v27 = *(a1 + 8 * v26 + 32);
          v4 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_25;
          }

          goto LABEL_20;
        }
      }
    }

LABEL_27:
  }
}

id sub_21D8A967C(_BYTE *a1, char a2)
{
  v4 = a2 & 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  result = swift_beginAccess();
  v7 = a1[v5];
  a1[v5] = a2;
  if (v7 != v4)
  {
    return [a1 setNeedsUpdateConfiguration];
  }

  return result;
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC22updateArrangedSubviews_08arrangedI16RequiringNewRows17hashTagButtonFontySaySo6UIViewCG_ShyAHGSo6UIFontCSgtF_0()
{
  v1 = *(v0 + 56);
  if (*(v0 + 72) == 1)
  {
    v2 = v1;
    sub_21D114EC8();
    v3 = v2;
    v8 = sub_21DBFA5DC();
    [v3 setArrangedSubviews_];
  }

  else
  {
    v4 = *(v0 + 64);
    sub_21D114EC8();
    v5 = v1;
    v6 = sub_21DBFA5DC();
    [v5 setArrangedSubviews_];

    sub_21D8A8CD8(v1, v4, 0);
    v7 = sub_21DBF8E0C();
    sub_21DA3257C(v7);

    sub_21D8A8CD8(v1, v4, 0);
  }
}

uint64_t _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC13updateEnabled_3forySb_SayAA0C6ButtonCGtF_0(char a1, unint64_t a2)
{
  v4 = sub_21DBF5B9C();
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  sub_21D8AA1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
  sub_21D37081C();
  v14 = v4;
  result = sub_21DBFBCBC();
  if (!(a2 >> 62))
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

    return (*(v13 + 8))(v6, v14);
  }

  result = sub_21DBFBD7C();
  v8 = result;
  if (!result)
  {
    return (*(v13 + 8))(v6, v14);
  }

LABEL_3:
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D44740](v9, a2);
      }

      else
      {
        v10 = *(a2 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      [v10 tag];
      sub_21DBF5B2C();
      [v11 setEnabled_];
    }

    while (v8 != v9);
    return (*(v13 + 8))(v6, v14);
  }

  __break(1u);
  return result;
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC14updateExcluded3for08excludedE4Tags9animationySayAA0C6ButtonCG_10Foundation8IndexSetVAA010TTRHashtagdE15AnimationParamsOtF_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  if ((*(a3 + 8) & 1) == 0)
  {
    v17 = *a3;
    v18 = objc_opt_self();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v19 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    (*(v7 + 32))(v20 + v19, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_21D8A967C;
    v21[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_24_1;
    v22 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v18 animateWithDuration:v22 animations:v17];
    _Block_release(v22);
    return;
  }

  if (a1 >> 62)
  {
    v10 = sub_21DBFBD7C();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v10; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](i, a1, v9);
      }

      else
      {
        v12 = *(a1 + 8 * i + 32);
      }

      v13 = v12;
      [v12 tag];
      v14 = sub_21DBF5B2C();
      v15 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
      swift_beginAccess();
      v16 = v13[v15];
      v13[v15] = v14 & 1;
      if ((v14 & 1) != v16)
      {
        [v13 setNeedsUpdateConfiguration];
      }
    }
  }
}

void _s15RemindersUICore32TTRIHashtagCollectionViewAdaptorC17updateHighlighted3for011highlightedE4Tags9animationySayAA0C6ButtonCG_10Foundation8IndexSetVAA010TTRHashtagdE15AnimationParamsOtF_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if ((*(a3 + 8) & 1) == 0)
  {
    v13 = *a3;
    v14 = objc_opt_self();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    (*(v7 + 32))(v16 + v15, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = sub_21D8A96F8;
    v17[1] = 0;
    aBlock[4] = sub_21D8AA2D4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_17_5;
    v18 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v14 animateWithDuration:v18 animations:v13];
    _Block_release(v18);
    return;
  }

  if (a1 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v10, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      [v11 tag];
      [v12 setHighlighted_];
    }

    while (v9 != v10);
  }
}

id sub_21D8AA098(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
    v3 = vars8;
  }

  return a1;
}

uint64_t sub_21D8AA0E4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D8AA098(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIHashtagCollectionViewAdaptor.ContainerView(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D8AA098(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D8A8CD8(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRIHashtagCollectionViewAdaptor.ContainerView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D8A8CD8(v4, v5, v6);
  return a1;
}

unint64_t sub_21D8AA1E0()
{
  result = qword_280D1B818;
  if (!qword_280D1B818)
  {
    sub_21DBF5B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1B818);
  }

  return result;
}

void sub_21D8AA238()
{
  v1 = *(sub_21DBF5B9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21D8A8BA4(v3, v0 + v2, v4);
}

UIImage_optional __swiftcall UIView.snapshotImage()()
{
  v1 = v0;
  [v0 bounds];
  v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D8AB23C;
  *(v6 + 24) = v5;
  v12[4] = sub_21D112B24;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D112B7C;
  v12[3] = &block_descriptor_108;
  v7 = _Block_copy(v12);
  v8 = v1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
  }

  result.value.super.isa = v10;
  result.is_nil = v11;
  return result;
}

void *UIView.firstResponderDescendant.getter()
{
  v1 = [v0 firstResponder];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

    return v3;
  }

  v4 = v2;
  v5 = [v3 superview];

  if (!v5)
  {
LABEL_6:

    return 0;
  }

  while (v5 != v0)
  {
    v6 = v5;
    v5 = [v6 superview];

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  return v3;
}

Swift::Void __swiftcall UIView.expandHitTestArea(minHitTestSize:)(CGSize minHitTestSize)
{
  height = minHitTestSize.height;
  width = minHitTestSize.width;
  [v1 bounds];
  v6 = (width - v5) * 0.5;
  if (v6 < 0.0)
  {
    v7 = -0.0;
  }

  else
  {
    v7 = -v6;
  }

  v8 = (height - v4) * 0.5;
  v9 = -v8;
  if (v8 < 0.0)
  {
    v9 = -0.0;
  }

  [v1 setHitTestInsets_];
}

void UIView.apply(updates:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = a1;
  v10 = *(a3 + 8);
  if (v10 == 2)
  {
LABEL_5:
    (v9)(a1);
    if (a4)
    {
      a4(1);
    }

    return;
  }

  if (v10 == 3)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = a2;
    v12[4] = a4;
    v12[5] = a5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21D8AB544;
    *(v9 + 24) = v12;
    v24 = sub_21D0E6070;
    v25 = v9;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21D0E6204;
    v23 = &block_descriptor_21_1;
    v13 = _Block_copy(&v20);

    sub_21D0D0E78(a4);

    [v11 performWithoutAnimation_];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_5;
  }

  v15 = *a3;
  if (v10)
  {
    [v5 layoutIfNeeded];
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = a2;
  *(v16 + 32) = v10 & 1;
  *(v16 + 40) = v5;
  v24 = sub_21D8AB4D4;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_21D0D74FC;
  v23 = &block_descriptor_9_2;
  v17 = _Block_copy(&v20);

  v18 = v5;

  if (a4)
  {
    v24 = a4;
    v25 = a5;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_21D2F9D00;
    v23 = &block_descriptor_12_3;
    v19 = _Block_copy(&v20);
  }

  else
  {
    v19 = 0;
  }

  [objc_opt_self() animateWithDuration:v17 animations:v19 completion:v15];
  _Block_release(v19);
  _Block_release(v17);
}

uint64_t UIView.ancestorView<A>(ofType:passing:)@<X0>(uint64_t (*a1)(char *)@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v28 = a1;
  v23 = a3;
  v27 = sub_21DBFBA8C();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v21 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3;
  v13 = [v12 superview];
  v22 = v8;
  if (v13)
  {
    v14 = v13;
    v29 = (v8 + 56);
    v25 = (v5 + 8);
    v26 = (v8 + 32);
    v24 = (v8 + 8);
    sub_21D114EC8();
    while (1)
    {
      v30 = v14;
      v15 = v14;
      if (swift_dynamicCast())
      {
        v16 = *v29;
        (*v29)(v7, 0, 1, a2);
        v17 = *v26;
        (*v26)(v11, v7, a2);
        v18 = v28(v11);

        if (v18)
        {

          v20 = v23;
          v17(v23, v11, a2);
          return (v16)(v20, 0, 1, a2);
        }

        (*v24)(v11, a2);
      }

      else
      {

        (*v29)(v7, 1, 1, a2);
        (*v25)(v7, v27);
      }

      v14 = [v15 superview];
      v12 = v15;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  v15 = v12;
LABEL_9:

  return (*(v22 + 56))(v23, 1, 1, a2);
}

void sub_21D8AAD5C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = swift_dynamicCastUnknownClass();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  if (a3)
  {
    v11 = a1;
    sub_21D0D0E78(a3);
    if (a3(v10))
    {
      sub_21D23CE60(a5, a5);
      swift_allocObject();
      sub_21DBFA60C();
      *v12 = v10;
      sub_21D23C8B4();
      sub_21D0D0E88(a3);
      return;
    }

    sub_21D0D0E88(a3);

LABEL_9:
    sub_21DBF9E3C();
    v15 = [a1 subviews];
    sub_21D114EC8();
    v16 = sub_21DBFA5EC();

    if (v16 >> 62)
    {
      v17 = sub_21DBFBD7C();
      if (v17)
      {
LABEL_11:
        if (v17 < 1)
        {
          __break(1u);
        }

        else
        {
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
            sub_21D8AAD5C(v19, a2, a3, a4, a5);
            sub_21DBFA74C();
            swift_getWitnessTable();
            sub_21DBFA6EC();
          }

          while (v17 != v18);
        }

        return;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_11;
      }
    }

    return;
  }

  sub_21D23CE60(a5, a5);
  swift_allocObject();
  v13 = a1;
  sub_21DBFA60C();
  *v14 = v10;

  sub_21D23C8B4();
}

uint64_t sub_21D8AB00C(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = swift_dynamicCastUnknownClass();
  if (!v8)
  {
LABEL_5:
    v12 = [a1 subviews];
    sub_21D114EC8();
    v13 = sub_21DBFA5EC();

    if (v13 >> 62)
    {
LABEL_21:
      v14 = sub_21DBFBD7C();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v14 != i; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = sub_21D8AB00C(v16, v21, a3, a4, v23);

      if (v9)
      {

        return v9;
      }
    }

    return 0;
  }

  v9 = v8;
  if (!a3)
  {
    v18 = a1;
    return v9;
  }

  v10 = a1;
  sub_21D0D0E78(a3);
  v11 = a3(v9);
  sub_21D0D0E88(a3);
  if ((v11 & 1) == 0)
  {

    goto LABEL_5;
  }

  return v9;
}

void sub_21D8AB1AC(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

BOOL UIView.isIPadIdiom.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 1;
}

void UIView.leadingSpace(to:)(void *a1)
{
  [a1 bounds];
  [v1 convertRect:a1 fromCoordinateSpace:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [a1 effectiveAlignmentRectInsets];
  v13 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v1 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = [v1 effectiveUserInterfaceLayoutDirection];
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  CGRectGetMinY(v31);
  v32.origin.x = v21;
  v32.origin.y = v23;
  v32.size.width = v25;
  v32.size.height = v27;
  CGRectGetMinY(v32);
  v33.origin.x = v21;
  v33.origin.y = v23;
  v33.size.width = v25;
  v33.size.height = v27;
  CGRectGetMaxY(v33);
  v34.origin.x = v13;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  CGRectGetMaxY(v34);
  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v17;
  v35.size.height = v19;
  CGRectGetMinX(v35);
  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  CGRectGetMinX(v36);
  v37.origin.x = v21;
  v37.origin.y = v23;
  v37.size.width = v25;
  v37.size.height = v27;
  CGRectGetMaxX(v37);
  v38.origin.x = v13;
  v38.origin.y = v15;
  v38.size.width = v17;
  v38.size.height = v19;
  CGRectGetMaxX(v38);
  if (v28 > 1)
  {
    if (qword_27CE56650 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE5B1E8);
    v30 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v30);
    sub_21DAEAB00("unknown layout direction", 24, 2);
    __break(1u);
  }
}

id sub_21D8AB4D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  result = (*(v0 + 16))();
  if (v1 == 1)
  {

    return [v2 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_21D8AB544()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))();
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t _s22UpdateAnimationOptionsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s22UpdateAnimationOptionsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_21D8AB634(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D8AB650(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

void (*sub_21D8AB6BC(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTRICollectionViewPresentationTreeManagementPresenterCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRICollectionViewPresentationTreeManagementPresenterCapability.init()();
  return v0;
}

uint64_t sub_21D8AB788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  MEMORY[0x28223BE20](a1);
  v6 = &v15[-1] - v5;
  *(v2 + *(v7 + 112)) |= 1uLL;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFA68C();
  if (sub_21DBFA6DC())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = sub_21D495A08(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v15[0] = 1;
  v15[1] = v11;
  v16 = 0;
  sub_21D0E20B4(v12, v6);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v15, v6, v4, a2);
}

uint64_t sub_21D8AB954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  MEMORY[0x28223BE20](a1);
  v6 = &v11[-1] - v5;
  v11[0] = v7;
  v11[1] = 0;
  v12 = 1;
  v8 = sub_21DBF8E0C();
  sub_21D0E20B4(v8, v6);
  return TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(v11, v6, v4, a2);
}

uint64_t sub_21D8ABA44(int a1)
{
  *(v1 + *(*v1 + 112)) |= 4uLL;
  v3 = a1 & 1;
  v4 = *(v1 + *(*v1 + 128));
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  sub_21DBFC7FC();
  v5 = sub_21DBFC82C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 != 2 && ((v9 ^ a1) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_21DBF8E0C();
  }

  else
  {
LABEL_7:
    sub_21DBF8E0C();
    result = swift_isUniquelyReferenced_nonNull_native();
    if (*(v4 + 24) <= *(v4 + 16))
    {
      if (result)
      {
        sub_21D8B0890();
      }

      else
      {
        sub_21D8B67DC();
      }

      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](0);
      sub_21DBFC7FC();
      result = sub_21DBFC82C();
      v11 = -1 << *(v4 + 32);
      v7 = result & ~v11;
      if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        v12 = ~v11;
        while (1)
        {
          v13 = *(*(v4 + 48) + v7);
          if (v13 != 2 && ((v13 ^ a1) & 1) == 0)
          {
            break;
          }

          v7 = (v7 + 1) & v12;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        result = sub_21DBFC6FC();
        __break(1u);
      }
    }

    else if ((result & 1) == 0)
    {
      result = sub_21D8B240C();
    }

LABEL_19:
    *(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
    *(*(v4 + 48) + v7) = v3;
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return result;
    }

    *(v4 + 16) = v16;
  }

  v17 = *(*v1 + 128);
  v18 = *(v1 + v17);
  *(v1 + v17) = v4;
  sub_21D8ABF78(v18);
}

uint64_t sub_21D8ABCC4()
{
  *(v0 + *(*v0 + 112)) |= 2uLL;
  v1 = *(v0 + *(*v0 + 128));
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](1);
  v2 = sub_21DBFC82C();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (*(*(v1 + 48) + v4) != 2)
    {
      v4 = (v4 + 1) & v5;
      if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21DBF8E0C();
    goto LABEL_18;
  }

LABEL_5:
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v1 + 24) <= *(v1 + 16))
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_21D8B0890();
    }

    else
    {
      sub_21D8B67DC();
    }

    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](1);
    v7 = sub_21DBFC82C();
    v8 = -1 << *(v1 + 32);
    v4 = v7 & ~v8;
    if ((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v9 = ~v8;
      while (*(*(v1 + 48) + v4) != 2)
      {
        v4 = (v4 + 1) & v9;
        if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_22;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21D8B240C();
  }

LABEL_16:
  *(v1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v4;
  *(*(v1 + 48) + v4) = 2;
  v10 = *(v1 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_22:
    result = sub_21DBFC6FC();
    __break(1u);
    return result;
  }

  *(v1 + 16) = v12;
LABEL_18:
  v13 = *(*v0 + 128);
  v14 = *(v0 + v13);
  *(v0 + v13) = v1;
  sub_21D8ABF78(v14);
}

void sub_21D8ABF78(uint64_t a1)
{
  v2 = *(*v1 + 128);
  if ((sub_21D32268C(*(v1 + v2), a1) & 1) == 0)
  {
    if (*(*(v1 + v2) + 16))
    {
      v3._countAndFlagsBits = 0x6465727265666564;
      v3._object = 0xEF73657461647055;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }
  }
}

uint64_t sub_21D8AC000(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_21D8ABF78(v3);
}

uint64_t _s15RemindersUICore63TTRICollectionViewPresentationTreeManagementPresenterCapabilityC21deferredActionPerform_6reasonyAA011TTRDeferredK0C_SStF_0_0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  MEMORY[0x28223BE20](a1);
  v17 = &v17 - v5;
  v6 = v3[11];
  v7 = type metadata accessor for TTRICollectionViewPresentationTreeUpdates();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v18 = &v17 - v8;
  v9 = v3[16];
  v10 = *(v2 + v9);
  *(v2 + v9) = MEMORY[0x277D84FA0];
  v11 = sub_21DBF8E0C();
  sub_21D8ABF78(v11);

  v26 = v10;
  v23 = 0;
  v24 = 0;
  v25 = -1;
  v21 = v4;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633C8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TTRICollectionViewPresentationTreeUpdateScope();
  sub_21DBFBA8C();
  sub_21D0D0F1C(&qword_280D0C378, &qword_27CE633C8);
  sub_21DBFA54C();

  if (v28 != 255)
  {
    v13 = v17;
    sub_21D0E20B4(result, v17);
    v14 = v18;
    TTRICollectionViewPresentationTreeUpdates.init(scope:presentationTree:)(&v27, v13, v4, v18);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v2[3];
      ObjectType = swift_getObjectType();
      (*(v15 + 64))(v2, v14, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    return (*(v19 + 8))(v14, v20);
  }

  return result;
}

uint64_t sub_21D8AC3E0@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  v5 = *a2;
  v6 = v5 == 2;
  v7 = v5 != 2;
  if (v6)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if (v4 == 255)
  {
    v10 = 0;
  }

  else
  {
    v14 = *result;
    v15 = v4;
    v11 = v7;
    v12 = 0;
    v13 = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    updated = type metadata accessor for TTRICollectionViewPresentationTreeUpdateScope();
    TTRICollectionViewPresentationTreeUpdateScope.merging(with:)(&v11, updated, v16);
    result = sub_21D6B1C70(v11, v12, v13);
    v7 = v16[0];
    v10 = v16[1];
    v8 = v17;
  }

  *a3 = v7;
  *(a3 + 8) = v10;
  *(a3 + 16) = v8;
  return result;
}

uint64_t TTRICollectionViewPresentationTreeManagementPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  v1 = *(*v0 + 104);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TTRICollectionViewPresentationTreeManagementPresenterCapability.__deallocating_deinit()
{
  TTRICollectionViewPresentationTreeManagementPresenterCapability.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D8AC658()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63450);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8ACAB4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F8);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_21D8B7748(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      result = sub_21DBFC82C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_21D8B7748(v4, *(v7 + 48) + v15 * v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_21D8ACDBC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      MEMORY[0x223D44FA0](v19);
      MEMORY[0x223D44FA0](v20);
      result = sub_21DBFC82C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AD06C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21DBFC7DC();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AD2E0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633F8);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_21D8B7748(*(v5 + 48) + v19 * (v16 | (v8 << 6)), v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.SectionID.hash(into:)();
      result = sub_21DBFC82C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_21D8B7748(v4, *(v7 + 48) + v15 * v19, type metadata accessor for TTRRemindersListViewModel.SectionID);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_21D8AD5E8()
{
  v1 = v0;
  v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63478);
  result = sub_21DBFBE9C();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v0;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = (v2 + 48);
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v47 = (v16 - 1) & v16;
LABEL_15:
      v23 = *(v9 + 48);
      v46 = *(v44 + 72);
      v24 = v48;
      sub_21D8B7748(v23 + v46 * (v20 | (v12 << 6)), v48, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(v24 + *(v7 + 20), v6, &unk_27CE5CD70);
      if ((*v43)(v6, 1, v45) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v25 = v6;
        v26 = v11;
        v27 = v7;
        v28 = v6;
        v29 = v9;
        v30 = v42;
        sub_21D8B7748(v25, v42, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.SectionID.hash(into:)();
        v31 = v30;
        v9 = v29;
        v6 = v28;
        v7 = v27;
        v11 = v26;
        sub_21D8791E0(v31, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      result = sub_21DBFC82C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D8B7748(v48, *(v11 + 48) + v19 * v46, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      ++*(v11 + 16);
      v16 = v47;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v39 = 1 << *(v9 + 32);
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    v1 = v41;
    *(v9 + 16) = 0;
  }

  *v1 = v11;
  return result;
}

uint64_t sub_21D8ADAB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      MEMORY[0x223D44FA0](v19);
      result = sub_21DBFC82C();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8ADD30()
{
  v1 = v0;
  v45 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v41 = v0;
    v42 = v10;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v2 + 48);
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
LABEL_15:
      v25 = *(v11 + 48);
      v46 = *(v5 + 72);
      sub_21D66A69C(v25 + v46 * (v22 | (v14 << 6)), v10);
      sub_21DBFC7DC();
      sub_21D0D3954(v10, v7, &qword_27CE5FB90);
      if ((*v44)(v7, 1, v45) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v26 = v7;
        v27 = v13;
        v28 = v7;
        v29 = v5;
        v30 = v11;
        v31 = v43;
        sub_21D8B7748(v26, v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.ItemID.hash(into:)();
        v32 = v31;
        v11 = v30;
        v5 = v29;
        v7 = v28;
        v13 = v27;
        v10 = v42;
        sub_21D8791E0(v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      result = sub_21DBFC82C();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21D66A69C(v10, *(v13 + 48) + v21 * v46);
      ++*(v13 + 16);
      v18 = v47;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v11 + 32);
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    v1 = v41;
    *(v11 + 16) = 0;
  }

  *v1 = v13;
  return result;
}

uint64_t sub_21D8AE190()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A00);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_21D8B7748(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)();
      sub_21DBFC82C();
      v18 = v23;
      v19 = sub_21DBFBCFC();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D8B7748(i, *(v6 + 48) + v19 * v17, type metadata accessor for TTRRecurrenceRuleModel);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21D8AE440()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v1;
    v35 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    v36 = result;
    while (1)
    {
      if (!v9)
      {
        v18 = v5;
        while (1)
        {
          v5 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v5 >= v10)
          {
            break;
          }

          v19 = v6[v5];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v37 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        v33 = 1 << *(v2 + 32);
        if (v33 >= 64)
        {
          bzero(v6, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v33;
        }

        v1 = v34;
        *(v2 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v20 = (*(v2 + 48) + 80 * (v17 | (v5 << 6)));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = v20[4];
      v42 = v20[7];
      v38 = v20[8];
      v39 = v20[5];
      v40 = v20[6];
      v41 = v20[9];
      sub_21DBFC7DC();
      if (v21)
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v24)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_21DBFC7FC();
        if (v24)
        {
LABEL_17:
          sub_21DBFC7FC();
          sub_21DBFA27C();
          goto LABEL_20;
        }
      }

      sub_21DBFC7FC();
LABEL_20:
      if (v39)
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (v42)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_21DBFC7FC();
        if (v42)
        {
LABEL_22:
          sub_21DBFC7FC();
          sub_21DBFA27C();
          goto LABEL_25;
        }
      }

      sub_21DBFC7FC();
LABEL_25:
      sub_21DBFC7FC();
      if (v41)
      {
        sub_21DBFA27C();
      }

      result = sub_21DBFC82C();
      v4 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v13 = v22;
        v15 = v41;
        v14 = v42;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v13 = v22;
      v15 = v41;
      v14 = v42;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v16 = (*(v36 + 48) + 80 * v12);
      *v16 = v13;
      v16[1] = v21;
      v16[2] = v23;
      v16[3] = v24;
      v16[4] = v25;
      v16[5] = v39;
      v16[6] = v40;
      v16[7] = v14;
      v16[8] = v38;
      v16[9] = v15;
      ++*(v36 + 16);
      v2 = v35;
      v9 = v37;
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AE80C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63440);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AEB34()
{
  v1 = v0;
  v35 = sub_21DBF70DC();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63438);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21D0D8A98(&qword_27CE58AC0, MEMORY[0x277D45430]);
      result = sub_21DBF9FFC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21D8AEE90()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v16);
      result = sub_21DBFC82C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AF0E0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63428);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8AF3E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63420);
  result = sub_21DBFBE9C();
  v10 = result;
  if (*(v8 + 16))
  {
    v32 = v0;
    v33 = v8;
    v11 = 0;
    v12 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48);
      v23 = *(v34 + 72);
      sub_21D8B7748(v22 + v23 * (v19 | (v11 << 6)), v7, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
      TTRRemindersListViewModel.ItemID.hash(into:)();
      sub_21D8791E0(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = sub_21DBFC82C();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_21D8B7748(v7, *(v10 + 48) + v18 * v23, type metadata accessor for TTRRemindersListViewModel.Item);
      ++*(v10 + 16);
      v8 = v33;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v8 + 32);
    if (v31 >= 64)
    {
      bzero(v12, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    v1 = v32;
    *(v8 + 16) = 0;
  }

  *v1 = v10;
  return result;
}

uint64_t sub_21D8AF75C()
{
  v1 = v0;
  v35 = sub_21DBF686C();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63418);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21D0D8A98(&unk_280D0C7E8, MEMORY[0x277D45298]);
      result = sub_21DBF9FFC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21D8AFAB8()
{
  v1 = v0;
  v35 = sub_21DBF5D5C();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63410);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8]);
      result = sub_21DBF9FFC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_21D8AFE28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_21DBFB62C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_21D8B0048()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633E8);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8B034C()
{
  v1 = v0;
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63408);
  result = sub_21DBFBE9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v42 = (v3 + 48);
    v43 = result;
    v40 = (v3 + 32);
    v38 = v1;
    v39 = (v3 + 8);
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v47 = (v17 - 1) & v17;
LABEL_15:
      v24 = *(v10 + 48);
      v46 = *(v44 + 72);
      v25 = v48;
      sub_21D8B7748(v24 + v46 * (v21 | (v13 << 6)), v48, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      sub_21DBFC7DC();
      sub_21D0D3954(v25, v7, &unk_27CE58E70);
      if ((*v42)(v7, 1, v2) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v26 = v41;
        (*v40)(v41, v7, v2);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8]);
        sub_21DBFA00C();
        (*v39)(v26, v2);
      }

      v27 = v45;
      v28 = v48;
      MEMORY[0x223D44FA0](*(v48 + *(v45 + 20)));
      if (*(v28 + *(v27 + 24) + 8))
      {
        sub_21DBFC7FC();
        sub_21DBFA27C();
      }

      else
      {
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v12 = v43;
      v29 = -1 << *(v43 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_21D8B7748(v48, *(v12 + 48) + v20 * v46, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      ++*(v12 + 16);
      v17 = v47;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v10 + 32);
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    v1 = v38;
    *(v10 + 16) = 0;
  }

  *v1 = v12;
  return result;
}

uint64_t sub_21D8B0890()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_21DBFC7DC();
      if (v16 == 2)
      {
        MEMORY[0x223D44FA0](1);
      }

      else
      {
        MEMORY[0x223D44FA0](0);
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21D8B0B14(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_21DBFA16C();
      sub_21DBFC7DC();
      sub_21DBFA27C();
      v19 = sub_21DBFC82C();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_21D8B0DB0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      result = sub_21DBFC82C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_21D8B0FF8()
{
  v1 = v0;
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633D0);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v2;
    v39 = v1;
    v14 = 0;
    v15 = (v11 + 56);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v3 + 48);
    v45 = result;
    v40 = (v3 + 8);
    v41 = (v3 + 32);
    v20 = result + 56;
    v42 = v11;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = *(v11 + 48);
      v49 = *(v47 + 72);
      sub_21D8B7748(v25 + v49 * (v22 | (v14 << 6)), v10, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      v26 = v10;
      sub_21D0D3954(&v10[*(v48 + 20)], v7, &qword_27CE5EA20);
      v27 = v46;
      if ((*v44)(v7, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v28 = v43;
        (*v41)(v43, v7, v27);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D171E0, MEMORY[0x277CC9260]);
        sub_21DBFA00C();
        v29 = v28;
        v11 = v42;
        (*v40)(v29, v27);
      }

      result = sub_21DBFC82C();
      v13 = v45;
      v30 = -1 << *(v45 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v10 = v26;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21D8B7748(v26, *(v13 + 48) + v21 * v49, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v11 + 32);
    if (v37 >= 64)
    {
      bzero(v15, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    v1 = v39;
    *(v11 + 16) = 0;
  }

  *v1 = v13;
  return result;
}

void *sub_21D8B156C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 24 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v4 + 48) + v17;
      *v20 = *v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D8B16EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_21DBF8E0C();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D8B1898(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v12 = *v4;
  v13 = sub_21DBFBE8C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v29 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = *(v12 + 56);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = *(v9 + 72) * (v24 | (v18 << 6));
        sub_21D8B77B0(*(v12 + 48) + v27, v11, a4);
        result = sub_21D8B7748(v11, *(v14 + 48) + v27, a4);
      }

      while (v22);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v12 + 56 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

void *sub_21D8B1ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D8B1C34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460);
  v6 = *v0;
  v7 = sub_21DBFBE8C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_21D0D3954(*(v6 + 48) + v21, v5, &qword_27CE5FB90);
        result = sub_21D66A69C(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_21D8B1E9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_21D1D9B34(v23, &v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21D8B2074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_21D8B227C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_21DBFBE8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}