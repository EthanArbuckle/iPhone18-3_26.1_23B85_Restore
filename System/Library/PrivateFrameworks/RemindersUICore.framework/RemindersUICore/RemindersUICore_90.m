void *assignWithCopy for TTRSECreateRemindersViewModel.Item.CasesForItemCells(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v37 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v38 = *(v37 - 8);
            if ((*(v38 + 48))(a2, 1, v37))
            {
              v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v39 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v51 = *(v37 + 20);
              v52 = sub_21DBF6C1C();
              v117 = *(*(v52 - 8) + 16);
              sub_21DBF8E0C();
              v117(a1 + v51, a2 + v51, v52);
              (*(v38 + 56))(a1, 0, 1, v37);
            }

            v53 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v54 = (a1 + v53);
            v55 = (a2 + v53);
            if (v55[1])
            {
              *v54 = *v55;
              v54[1] = v55[1];
              v56 = v55[2];
              v54[2] = v56;
              sub_21DBF8E0C();
              v57 = v56;
            }

            else
            {
              v58 = *v55;
              v54[2] = v55[2];
              *v54 = v58;
            }

            goto LABEL_153;
          case 7:
            v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v44 = *(v43 - 8);
            if ((*(v44 + 48))(a2, 1, v43))
            {
              v45 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v45 - 8) + 64));
            }

            else
            {
              v60 = sub_21DBF563C();
              (*(*(v60 - 8) + 16))(a1, a2, v60);
              *(a1 + *(v43 + 20)) = *(a2 + *(v43 + 20));
              (*(v44 + 56))(a1, 0, 1, v43);
            }

            v61 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v61 + 20)) = *(a2 + *(v61 + 20));
            goto LABEL_153;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_153:
            swift_storeEnumTagMultiPayload();
            goto LABEL_154;
        }

LABEL_50:
        memcpy(a1, a2, *(*(v14 - 8) + 64));
        goto LABEL_154;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v29 = a2[2];
        a1[2] = v29;
        v30 = v29;
        goto LABEL_153;
      }

      v40 = *a2;
      *a1 = *a2;
      v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = *(v25 - 8);
      v41 = *(v26 + 48);
      v42 = v40;
      if (v41(a2 + v24, 1, v25))
      {
LABEL_43:
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v24, a2 + v24, *(*(v36 - 8) + 64));
        goto LABEL_153;
      }

      v59 = swift_getEnumCaseMultiPayload();
      if (v59 > 4)
      {
        if (v59 <= 7)
        {
          if (v59 == 5 || v59 == 6)
          {
            goto LABEL_138;
          }

          goto LABEL_151;
        }

        if (v59 != 8 && v59 != 9)
        {
          goto LABEL_151;
        }

LABEL_137:
        v106 = *(a2 + v24);
        *(a1 + v24) = v106;
        v107 = v106;
        swift_storeEnumTagMultiPayload();
LABEL_152:
        (*(v26 + 56))(a1 + v24, 0, 1, v25);
        goto LABEL_153;
      }

      if (v59 <= 2)
      {
        if (v59 != 1)
        {
          if (v59 == 2)
          {
            goto LABEL_138;
          }

LABEL_151:
          memcpy(a1 + v24, a2 + v24, *(v26 + 64));
          goto LABEL_152;
        }

        goto LABEL_137;
      }

LABEL_138:
      v108 = sub_21DBF563C();
      (*(*(v108 - 8) + 16))(a1 + v24, a2 + v24, v108);
      swift_storeEnumTagMultiPayload();
      goto LABEL_152;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v33 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v34 = *(v26 + 48);
        v35 = v33;
        if (v34(a2 + v24, 1, v25))
        {
          goto LABEL_43;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 > 4)
        {
          if (v50 <= 7)
          {
            if (v50 == 5 || v50 == 6)
            {
              goto LABEL_138;
            }

            goto LABEL_151;
          }

          if (v50 != 8 && v50 != 9)
          {
            goto LABEL_151;
          }

          goto LABEL_137;
        }

        if (v50 > 2)
        {
          goto LABEL_138;
        }

        if (v50 == 1)
        {
          goto LABEL_137;
        }

        if (v50 != 2)
        {
          goto LABEL_151;
        }
      }

      else
      {
        v23 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        v28 = v23;
        if (v27(a2 + v24, 1, v25))
        {
          goto LABEL_43;
        }

        v49 = swift_getEnumCaseMultiPayload();
        if (v49 > 4)
        {
          if (v49 <= 7)
          {
            if (v49 == 5 || v49 == 6)
            {
              goto LABEL_138;
            }

            goto LABEL_151;
          }

          if (v49 != 8 && v49 != 9)
          {
            goto LABEL_151;
          }

          goto LABEL_137;
        }

        if (v49 > 2)
        {
          goto LABEL_138;
        }

        if (v49 == 1)
        {
          goto LABEL_137;
        }

        if (v49 != 2)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_138;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_50;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_89:
          v62 = sub_21DBF563C();
          (*(*(v62 - 8) + 16))(a1, a2, v62);
          swift_storeEnumTagMultiPayload();
          goto LABEL_116;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_115;
        }

LABEL_92:
        v63 = *a2;
        *a1 = *a2;
        v64 = v63;
        swift_storeEnumTagMultiPayload();
        goto LABEL_116;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_92;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_89;
      }

LABEL_115:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_116:
      v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v69 = v68[5];
      v70 = a1 + v69;
      v71 = a2 + v69;
      if (*(a2 + v69 + 8))
      {
        *v70 = *v71;
        *(v70 + 1) = *(v71 + 1);
        v72 = *(v71 + 2);
        v73 = *(v71 + 3);
        v74 = *(v71 + 4);
        v75 = *(v71 + 5);
        v109 = *(v71 + 6);
        v118 = *(v71 + 7);
        v113 = v71[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v72, v73, v74, v75, v109, v118, v113);
        *(v70 + 2) = v72;
        *(v70 + 3) = v73;
        *(v70 + 4) = v74;
        *(v70 + 5) = v75;
        *(v70 + 6) = v109;
        *(v70 + 7) = v118;
        v70[64] = v113;
        v70[65] = v71[65];
        v70[66] = v71[66];
        v70[67] = v71[67];
        v70[68] = v71[68];
        v76 = v71[120];
        if (v76 == 255)
        {
          v87 = *(v71 + 72);
          v88 = *(v71 + 88);
          v89 = *(v71 + 104);
          v70[120] = v71[120];
          *(v70 + 104) = v89;
          *(v70 + 88) = v88;
          *(v70 + 72) = v87;
        }

        else
        {
          v114 = *(v71 + 10);
          v119 = *(v71 + 9);
          v77 = *(v71 + 12);
          v110 = *(v71 + 11);
          v78 = *(v71 + 13);
          v79 = *(v71 + 14);
          v80 = v76 & 1;
          sub_21D0FB960(v119, v114, v110, v77, v78, v79, v76 & 1);
          *(v70 + 9) = v119;
          *(v70 + 10) = v114;
          *(v70 + 11) = v110;
          *(v70 + 12) = v77;
          *(v70 + 13) = v78;
          *(v70 + 14) = v79;
          v70[120] = v80;
        }

        v70[121] = v71[121];
        goto LABEL_122;
      }

LABEL_119:
      v81 = *v71;
      v82 = *(v71 + 1);
      v83 = *(v71 + 3);
      *(v70 + 2) = *(v71 + 2);
      *(v70 + 3) = v83;
      *v70 = v81;
      *(v70 + 1) = v82;
      v84 = *(v71 + 4);
      v85 = *(v71 + 5);
      v86 = *(v71 + 6);
      *(v70 + 106) = *(v71 + 106);
      *(v70 + 5) = v85;
      *(v70 + 6) = v86;
      *(v70 + 4) = v84;
LABEL_122:
      *(a1 + v68[6]) = *(a2 + v68[6]);
      *(a1 + v68[7]) = *(a2 + v68[7]);
      *(a1 + v68[8]) = *(a2 + v68[8]);
      *(a1 + v68[9]) = *(a2 + v68[9]);
      *(a1 + v68[10]) = *(a2 + v68[10]);
      v90 = v68[11];
      v91 = *(a2 + v90);
      *(a1 + v90) = v91;
      v92 = v91;
      goto LABEL_153;
    }

    v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 <= 4)
    {
      if (v32 > 2)
      {
LABEL_93:
        v65 = sub_21DBF563C();
        (*(*(v65 - 8) + 16))(a1, a2, v65);
        swift_storeEnumTagMultiPayload();
        goto LABEL_124;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          goto LABEL_93;
        }

        goto LABEL_123;
      }

LABEL_96:
      v66 = *a2;
      *a1 = *a2;
      v67 = v66;
      swift_storeEnumTagMultiPayload();
      goto LABEL_124;
    }

    if (v32 > 7)
    {
      if (v32 == 8 || v32 == 9)
      {
        goto LABEL_96;
      }
    }

    else if (v32 == 5 || v32 == 6)
    {
      goto LABEL_93;
    }

LABEL_123:
    memcpy(a1, a2, *(*(v31 - 8) + 64));
LABEL_124:
    v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v93 = v68[5];
    v70 = a1 + v93;
    v71 = a2 + v93;
    if (*(a2 + v93 + 8))
    {
      *v70 = *v71;
      *(v70 + 1) = *(v71 + 1);
      v94 = *(v71 + 2);
      v95 = *(v71 + 3);
      v96 = *(v71 + 4);
      v97 = *(v71 + 5);
      v111 = *(v71 + 6);
      v120 = *(v71 + 7);
      v115 = v71[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v94, v95, v96, v97, v111, v120, v115);
      *(v70 + 2) = v94;
      *(v70 + 3) = v95;
      *(v70 + 4) = v96;
      *(v70 + 5) = v97;
      *(v70 + 6) = v111;
      *(v70 + 7) = v120;
      v70[64] = v115;
      v70[65] = v71[65];
      v70[66] = v71[66];
      v70[67] = v71[67];
      v70[68] = v71[68];
      v98 = v71[120];
      if (v98 == 255)
      {
        v103 = *(v71 + 72);
        v104 = *(v71 + 88);
        v105 = *(v71 + 104);
        v70[120] = v71[120];
        *(v70 + 104) = v105;
        *(v70 + 88) = v104;
        *(v70 + 72) = v103;
      }

      else
      {
        v116 = *(v71 + 10);
        v121 = *(v71 + 9);
        v99 = *(v71 + 12);
        v112 = *(v71 + 11);
        v100 = *(v71 + 13);
        v101 = *(v71 + 14);
        v102 = v98 & 1;
        sub_21D0FB960(v121, v116, v112, v99, v100, v101, v98 & 1);
        *(v70 + 9) = v121;
        *(v70 + 10) = v116;
        *(v70 + 11) = v112;
        *(v70 + 12) = v99;
        *(v70 + 13) = v100;
        *(v70 + 14) = v101;
        v70[120] = v102;
      }

      v70[121] = v71[121];
      goto LABEL_122;
    }

    goto LABEL_119;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v12 = v7;
    if (v11(a2 + v8, 1, v9))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v8, a2 + v8, *(*(v13 - 8) + 64));
LABEL_154:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_51;
        }

        goto LABEL_66;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_51:
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1 + v8, a2 + v8, v46);
        swift_storeEnumTagMultiPayload();
LABEL_67:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_154;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_51;
        }

LABEL_66:
        memcpy(a1 + v8, a2 + v8, *(v10 + 64));
        goto LABEL_67;
      }
    }

    v47 = *(a2 + v8);
    *(a1 + v8) = v47;
    v48 = v47;
    swift_storeEnumTagMultiPayload();
    goto LABEL_67;
  }

  v18 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v18);
}

_BYTE *initializeWithTake for TTRSECreateRemindersViewModel.Item.CasesForItemCells(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            a1[*(v30 + 20)] = a2[*(v30 + 20)];
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v36 + 20)] = *&a2[*(v36 + 20)];
          goto LABEL_107;
        }

        if (v12 != 8)
        {
          goto LABEL_47;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v27 = sub_21DBF8D7C();
        (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
LABEL_107:
        swift_storeEnumTagMultiPayload();
        goto LABEL_108;
      }

      if (v12 != 4)
      {
        if (v12 == 6)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(a2, 1, v18))
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v20 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v37 = *(v18 + 20);
            v38 = sub_21DBF6C1C();
            (*(*(v38 - 8) + 32))(&a1[v37], &a2[v37], v38);
            (*(v19 + 56))(a1, 0, 1, v18);
          }

          v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v40 = &a1[v39];
          v41 = &a2[v39];
          *v40 = *v41;
          *(v40 + 2) = *(v41 + 2);
          goto LABEL_107;
        }

        goto LABEL_47;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&a2[v23], 1, v24))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (v12 <= 1)
      {
        if (!v12)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_13;
          }

          goto LABEL_84;
        }

        if (v12 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 3)
          {
            if (v14 == 2 || v14 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v14 == 4 || v14 == 5 || v14 == 6)
          {
LABEL_13:
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 32))(a1, a2, v15);
            swift_storeEnumTagMultiPayload();
LABEL_85:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = &a1[v45];
            v47 = &a2[v45];
            v48 = v47[3];
            v46[2] = v47[2];
            v46[3] = v48;
            v49 = v47[1];
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = v47[6];
            v46[5] = v47[5];
            v46[6] = v50;
            v46[4] = v47[4];
            a1[v44[6]] = a2[v44[6]];
            a1[v44[7]] = a2[v44[7]];
            a1[v44[8]] = a2[v44[8]];
            a1[v44[9]] = a2[v44[9]];
            a1[v44[10]] = a2[v44[10]];
            *&a1[v44[11]] = *&a2[v44[11]];
            goto LABEL_107;
          }

LABEL_84:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_85;
        }

LABEL_47:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
        goto LABEL_108;
      }

      if (v12 != 2)
      {
        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(&a2[v23], 1, v24))
        {
          goto LABEL_44;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
LABEL_77:
          v43 = sub_21DBF563C();
          (*(*(v43 - 8) + 32))(&a1[v23], &a2[v23], v43);
          swift_storeEnumTagMultiPayload();
LABEL_106:
          (*(v25 + 56))(&a1[v23], 0, 1, v24);
          goto LABEL_107;
        }

LABEL_105:
        memcpy(&a1[v23], &a2[v23], *(v25 + 64));
        goto LABEL_106;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&a2[v23], 1, v24))
      {
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_105;
      }
    }

LABEL_44:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v23], &a2[v23], *(*(v29 - 8) + 64));
    goto LABEL_107;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_108:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 3)
    {
      if (v21 == 2 || v21 == 3)
      {
        goto LABEL_26;
      }
    }

    else if (v21 == 4 || v21 == 5 || v21 == 6)
    {
LABEL_26:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 32))(&a1[v7], &a2[v7], v22);
      swift_storeEnumTagMultiPayload();
LABEL_52:
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_108;
    }

    memcpy(&a1[v7], &a2[v7], *(v9 + 64));
    goto LABEL_52;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

_BYTE *assignWithTake for TTRSECreateRemindersViewModel.Item.CasesForItemCells(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106F78(a1, type metadata accessor for TTRSECreateRemindersViewModel.Item.CasesForItemCells);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v30 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(a2, 1, v30))
          {
            v32 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v32 - 8) + 64));
          }

          else
          {
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            a1[*(v30 + 20)] = a2[*(v30 + 20)];
            (*(v31 + 56))(a1, 0, 1, v30);
          }

          v36 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v36 + 20)] = *&a2[*(v36 + 20)];
          goto LABEL_108;
        }

        if (v12 != 8)
        {
          goto LABEL_48;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v27 = sub_21DBF8D7C();
        (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
LABEL_108:
        swift_storeEnumTagMultiPayload();
        goto LABEL_109;
      }

      if (v12 != 4)
      {
        if (v12 == 6)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v19 = *(v18 - 8);
          if ((*(v19 + 48))(a2, 1, v18))
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v20 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v37 = *(v18 + 20);
            v38 = sub_21DBF6C1C();
            (*(*(v38 - 8) + 32))(&a1[v37], &a2[v37], v38);
            (*(v19 + 56))(a1, 0, 1, v18);
          }

          v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v40 = &a1[v39];
          v41 = &a2[v39];
          *v40 = *v41;
          *(v40 + 2) = *(v41 + 2);
          goto LABEL_108;
        }

        goto LABEL_48;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&a2[v23], 1, v24))
      {
        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
          goto LABEL_78;
        }

        goto LABEL_106;
      }
    }

    else
    {
      if (v12 <= 1)
      {
        if (!v12)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_14;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_14;
          }

          goto LABEL_85;
        }

        if (v12 == 1)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 3)
          {
            if (v14 == 2 || v14 == 3)
            {
              goto LABEL_14;
            }
          }

          else if (v14 == 4 || v14 == 5 || v14 == 6)
          {
LABEL_14:
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 32))(a1, a2, v15);
            swift_storeEnumTagMultiPayload();
LABEL_86:
            v44 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v45 = v44[5];
            v46 = &a1[v45];
            v47 = &a2[v45];
            v48 = v47[3];
            v46[2] = v47[2];
            v46[3] = v48;
            v49 = v47[1];
            *v46 = *v47;
            v46[1] = v49;
            *(v46 + 106) = *(v47 + 106);
            v50 = v47[6];
            v46[5] = v47[5];
            v46[6] = v50;
            v46[4] = v47[4];
            a1[v44[6]] = a2[v44[6]];
            a1[v44[7]] = a2[v44[7]];
            a1[v44[8]] = a2[v44[8]];
            a1[v44[9]] = a2[v44[9]];
            a1[v44[10]] = a2[v44[10]];
            *&a1[v44[11]] = *&a2[v44[11]];
            goto LABEL_108;
          }

LABEL_85:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_86;
        }

LABEL_48:
        memcpy(a1, a2, *(*(v11 - 8) + 64));
        goto LABEL_109;
      }

      if (v12 != 2)
      {
        *a1 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(&a2[v23], 1, v24))
        {
          goto LABEL_45;
        }

        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
LABEL_78:
          v43 = sub_21DBF563C();
          (*(*(v43 - 8) + 32))(&a1[v23], &a2[v23], v43);
          swift_storeEnumTagMultiPayload();
LABEL_107:
          (*(v25 + 56))(&a1[v23], 0, 1, v24);
          goto LABEL_108;
        }

LABEL_106:
        memcpy(&a1[v23], &a2[v23], *(v25 + 64));
        goto LABEL_107;
      }

      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&a2[v23], 1, v24))
      {
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_78;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
          goto LABEL_78;
        }

        goto LABEL_106;
      }
    }

LABEL_45:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v23], &a2[v23], *(*(v29 - 8) + 64));
    goto LABEL_108;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_109:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 3)
    {
      if (v21 == 2 || v21 == 3)
      {
        goto LABEL_27;
      }
    }

    else if (v21 == 4 || v21 == 5 || v21 == 6)
    {
LABEL_27:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 32))(&a1[v7], &a2[v7], v22);
      swift_storeEnumTagMultiPayload();
LABEL_53:
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
      goto LABEL_109;
    }

    memcpy(&a1[v7], &a2[v7], *(v9 + 64));
    goto LABEL_53;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21D965680()
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_21D96586C(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = &v13[(v6 + 16) & ~v6];

    return a1;
  }

  v8 = *(a3 - 8);
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(a2, a4, v9))
  {
    v27 = a4;
    v14 = *a2;
    *a1 = *a2;
    v15 = *(v9 + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    v19 = v14;
    if (v18(&a2[v15], 1, v16))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v15], &a2[v15], *(*(v20 - 8) + 64));
      v21 = v27;
LABEL_26:
      (*(v10 + 56))(a1, 0, v21, v9);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = v15;
    if (EnumCaseMultiPayload > 4)
    {
      v21 = v27;
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v21 = v27;
      if (EnumCaseMultiPayload > 2)
      {
LABEL_17:
        v24 = sub_21DBF563C();
        (*(*(v24 - 8) + 16))(&a1[v23], &a2[v23], v24);
        swift_storeEnumTagMultiPayload();
LABEL_25:
        (*(v17 + 56))(&a1[v23], 0, 1, v16);
        goto LABEL_26;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_17;
        }

LABEL_24:
        memcpy(&a1[v23], &a2[v23], *(v17 + 64));
        goto LABEL_25;
      }
    }

    v25 = *&a2[v23];
    *&a1[v23] = v25;
    v26 = v25;
    swift_storeEnumTagMultiPayload();
    goto LABEL_25;
  }

  v11 = *(v8 + 64);

  return memcpy(a1, a2, v11);
}

void sub_21D965D1C(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  if ((*(*(v5 - 8) + 48))(a1, a3, v5))
  {
    return;
  }

  v6 = *(v5 + 20);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
  {
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        return;
      }

      goto LABEL_12;
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
LABEL_12:
      v9 = sub_21DBF563C();
      v10 = *(*(v9 - 8) + 8);

      v10(a1 + v6, v9);
      return;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  v11 = *(a1 + v6);
}

void **sub_21D965EC8(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, a4, v8))
  {
    v25 = a4;
    v12 = *a2;
    *a1 = *a2;
    v13 = *(v8 + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
      v19 = v25;
LABEL_24:
      (*(v9 + 56))(a1, 0, v19, v8);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v13;
    if (EnumCaseMultiPayload > 4)
    {
      v19 = v25;
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v25;
      if (EnumCaseMultiPayload > 2)
      {
LABEL_15:
        v22 = sub_21DBF563C();
        (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
        swift_storeEnumTagMultiPayload();
LABEL_23:
        (*(v15 + 56))(a1 + v21, 0, 1, v14);
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          goto LABEL_15;
        }

LABEL_22:
        memcpy(a1 + v21, a2 + v21, *(v15 + 64));
        goto LABEL_23;
      }
    }

    v23 = *(a2 + v21);
    *(a1 + v21) = v23;
    v24 = v23;
    swift_storeEnumTagMultiPayload();
    goto LABEL_23;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void **sub_21D96633C(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, a4, v8);
  v12 = v10(a2, a4, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    v25 = *a2;
    v26 = *a1;
    *a1 = *a2;
    v27 = v25;

    v28 = *(v8 + 20);
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    LODWORD(v26) = v31(a1 + v28, 1, v29);
    v32 = v31(a2 + v28, 1, v29);
    if (v26)
    {
      if (!v32)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 7)
          {
            if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
            {
              goto LABEL_50;
            }

            goto LABEL_61;
          }

          if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (EnumCaseMultiPayload > 2)
          {
LABEL_50:
            v41 = sub_21DBF563C();
            (*(*(v41 - 8) + 16))(a1 + v28, a2 + v28, v41);
            swift_storeEnumTagMultiPayload();
LABEL_62:
            (*(v30 + 56))(a1 + v28, 0, 1, v29);
            return a1;
          }

          if (EnumCaseMultiPayload != 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              goto LABEL_50;
            }

LABEL_61:
            memcpy(a1 + v28, a2 + v28, *(v30 + 64));
            goto LABEL_62;
          }
        }

        v42 = *(a2 + v28);
        *(a1 + v28) = v42;
        v43 = v42;
        swift_storeEnumTagMultiPayload();
        goto LABEL_62;
      }

      goto LABEL_24;
    }

    if (v32)
    {
      sub_21D106F78(a1 + v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_24:
      v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70) - 8) + 64);
LABEL_25:
      memcpy(a1 + v28, a2 + v28, v36);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    sub_21D106F78(a1 + v28, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 > 4)
    {
      if (v40 <= 7)
      {
        if (v40 == 5 || v40 == 6)
        {
          goto LABEL_63;
        }

        goto LABEL_71;
      }

      if (v40 != 8 && v40 != 9)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v40 > 2)
      {
LABEL_63:
        v44 = sub_21DBF563C();
        (*(*(v44 - 8) + 16))(a1 + v28, a2 + v28, v44);
LABEL_70:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          goto LABEL_63;
        }

LABEL_71:
        v36 = *(v30 + 64);
        goto LABEL_25;
      }
    }

    v45 = *(a2 + v28);
    *(a1 + v28) = v45;
    v46 = v45;
    goto LABEL_70;
  }

  if (!v12)
  {
    v13 = *a2;
    *a1 = *a2;
    v14 = *(v8 + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    v18 = v13;
    v19 = v14;
    if (v17(a2 + v14, 1, v15))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
      v21 = v9;
      v22 = a4;
LABEL_48:
      (*(v21 + 56))(a1, 0, v22, v8);
      return a1;
    }

    v34 = swift_getEnumCaseMultiPayload();
    v21 = v9;
    v35 = a2;
    if (v34 > 4)
    {
      v22 = a4;
      if (v34 <= 7)
      {
        if (v34 == 5 || v34 == 6)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

      if (v34 != 8 && v34 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = a4;
      if (v34 > 2)
      {
LABEL_29:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 16))(a1 + v19, v35 + v19, v37);
        swift_storeEnumTagMultiPayload();
LABEL_47:
        (*(v16 + 56))(a1 + v19, 0, 1, v15);
        goto LABEL_48;
      }

      if (v34 != 1)
      {
        if (v34 == 2)
        {
          goto LABEL_29;
        }

LABEL_46:
        memcpy(a1 + v19, v35 + v19, *(v16 + 64));
        goto LABEL_47;
      }
    }

    v38 = *(v35 + v19);
    *(a1 + v19) = v38;
    v39 = v38;
    swift_storeEnumTagMultiPayload();
    goto LABEL_47;
  }

LABEL_7:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

char *sub_21D966DE0(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a2, a4, v8))
  {
    *a1 = *a2;
    v12 = *(v8 + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&a2[v12], 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
LABEL_20:
      (*(v9 + 56))(a1, 0, a4, v8);
      return a1;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
      {
        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
    {
LABEL_11:
      v17 = sub_21DBF563C();
      (*(*(v17 - 8) + 32))(&a1[v12], &a2[v12], v17);
      swift_storeEnumTagMultiPayload();
LABEL_19:
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_20;
    }

    memcpy(&a1[v12], &a2[v12], *(v14 + 64));
    goto LABEL_19;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void **sub_21D96719C(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, a4, v8);
  v12 = v10(a2, a4, v8);
  if (!v11)
  {
    if (v12)
    {
      sub_21D106F78(a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    v19 = *a1;
    *a1 = *a2;

    v20 = *(v8 + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    v24 = v23(a1 + v20, 1, v21);
    v25 = v23(a2 + v20, 1, v21);
    if (v24)
    {
      if (!v25)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
          {
            goto LABEL_16;
          }
        }

        else if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
        {
LABEL_16:
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1 + v20, a2 + v20, v27);
          swift_storeEnumTagMultiPayload();
LABEL_49:
          (*(v22 + 56))(a1 + v20, 0, 1, v21);
          return a1;
        }

        memcpy(a1 + v20, a2 + v20, *(v22 + 64));
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    if (v25)
    {
      sub_21D106F78(a1 + v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
LABEL_24:
      v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70) - 8) + 64);
LABEL_25:
      memcpy(a1 + v20, a2 + v20, v30);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    sub_21D106F78(a1 + v20, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v31 = swift_getEnumCaseMultiPayload();
    if (v31 <= 3)
    {
      if (v31 == 2 || v31 == 3)
      {
        goto LABEL_52;
      }
    }

    else if (v31 == 4 || v31 == 5 || v31 == 6)
    {
LABEL_52:
      v32 = sub_21DBF563C();
      (*(*(v32 - 8) + 32))(a1 + v20, a2 + v20, v32);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v30 = *(v22 + 64);
    goto LABEL_25;
  }

  if (!v12)
  {
    *a1 = *a2;
    v13 = *(v8 + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2 + v13, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
LABEL_40:
      (*(v9 + 56))(a1, 0, a4, v8);
      return a1;
    }

    v28 = swift_getEnumCaseMultiPayload();
    if (v28 <= 3)
    {
      if (v28 == 2 || v28 == 3)
      {
        goto LABEL_21;
      }
    }

    else if (v28 == 4 || v28 == 5 || v28 == 6)
    {
LABEL_21:
      v29 = sub_21DBF563C();
      (*(*(v29 - 8) + 32))(a1 + v13, a2 + v13, v29);
      swift_storeEnumTagMultiPayload();
LABEL_39:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_40;
    }

    memcpy(a1 + v13, a2 + v13, *(v15 + 64));
    goto LABEL_39;
  }

LABEL_7:
  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

uint64_t sub_21D967A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a3, v5);
}

uint64_t sub_21D967B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a4, v7);
}

uint64_t sub_21D967BB0()
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void TTRRemindersListViewModel.InlineSubtaskButtonData.init(baseAttributes:tintColor:subtaskString:)(void *a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  if (a2)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v6 = sub_21DBFA12C();

    type metadata accessor for Key(0);
    sub_21D112874();
    v7 = sub_21DBF9E5C();
    v8 = [v5 initWithString:v6 attributes:{v7, 0x800000021DC4BF10}];

    v9 = *MEMORY[0x277D740C0];
    v18 = sub_21D114D24();
    *&v17 = a1;
    sub_21D0CF2E8(&v17, v16);
    v10 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v16, v9, isUniquelyReferenced_nonNull_native);
    v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v13 = sub_21DBFA12C();

    v14 = sub_21DBF9E5C();

    v15 = [v12 initWithString:v13 attributes:v14];

    *a3 = v8;
    a3[1] = v15;
    a3[2] = v10;
  }

  else
  {

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t TTRRemindersListViewModel.InlineSubtaskButtonData.init(leadingSeparatorText:buttonTitle:tintColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRICollectionViewHitTestResult.debugHUDInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D968F4C(v1, v13, type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D9688A4(v13, v7, type metadata accessor for TTRICollectionViewGapHit);
      v20[0] = 0x203A706147;
      v20[1] = 0xE500000000000000;
      v15 = TTRICollectionViewHitIndexPaths.description.getter();
      MEMORY[0x223D42AA0](v15);

      v16 = v20[0];
      v17 = type metadata accessor for TTRICollectionViewGapHit;
      v18 = v7;
    }

    else
    {
      sub_21D9688A4(v13, v4, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v16 = TTRICollectionViewEmptySpaceType.description.getter();
      v17 = type metadata accessor for TTRICollectionViewEmptySpaceType;
      v18 = v4;
    }
  }

  else
  {
    sub_21D9688A4(v13, v10, type metadata accessor for TTRICollectionViewItemHit);
    v16 = sub_21D968348();
    v17 = type metadata accessor for TTRICollectionViewItemHit;
    v18 = v10;
  }

  sub_21D968ECC(v18, v17);
  return v16;
}

uint64_t TTRICollectionViewHitIndexPaths.init(inDestination:presentationDestination:dataSourceDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBF5D5C();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v9(a4 + *(v10 + 20), a2, v8);
  return sub_21D0D523C(a3, a4 + *(v10 + 24), &unk_27CE58E70);
}

uint64_t TTRICollectionViewItemHit.init(indexPaths:portion:isCloseToMiddle:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_21D9688A4(a1, a4, type metadata accessor for TTRICollectionViewHitIndexPaths);
  result = type metadata accessor for TTRICollectionViewItemHit(0);
  *(a4 + *(result + 20)) = v6;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_21D968348()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21DC08D00;
  v2 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v2);

  *(v1 + 32) = 0x203A746948;
  *(v1 + 40) = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D20;
  v4 = type metadata accessor for TTRICollectionViewItemHit(0);
  v5 = 7368564;
  if (*(v0 + *(v4 + 20)))
  {
    v5 = 0x6D6F74746F62;
  }

  v6 = 0xE300000000000000;
  if (*(v0 + *(v4 + 20)))
  {
    v6 = 0xE600000000000000;
  }

  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  v7 = 0x656C6464696DLL;
  if (*(v0 + *(v4 + 24)))
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
  sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
  sub_21DBFA41C();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v9 = sub_21DBFA07C();
  v11 = v10;

  MEMORY[0x223D42AA0](v9, v11);

  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (v13 >= v12 >> 1)
  {
    v1 = sub_21D210A84((v12 > 1), v13 + 1, 1, v1);
  }

  *(v1 + 16) = v13 + 1;
  v14 = v1 + 16 * v13;
  *(v14 + 32) = 0x2020202020;
  *(v14 + 40) = 0xE500000000000000;
  v15 = sub_21DBFA07C();

  return v15;
}

uint64_t TTRICollectionViewGapHit.description.getter()
{
  v0 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v0);

  return 0x203A706147;
}

uint64_t TTRICollectionViewEmptySpaceType.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v5 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D968F4C(v1, v7, type metadata accessor for TTRICollectionViewEmptySpaceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0D523C(v7, v4, &qword_27CE61600);
      v15 = 0;
      v16 = 0xE000000000000000;
      sub_21DBFBEEC();

      v15 = 0xD000000000000013;
      v16 = 0x800000021DC71600;
      v9 = sub_21DBFBA5C();
      MEMORY[0x223D42AA0](v9);

      MEMORY[0x223D42AA0](41, 0xE100000000000000);
      v10 = v15;
      sub_21D0CF7E0(v4, &qword_27CE61600);
      return v10;
    }

    else
    {
      return 0x6170537974706D65;
    }
  }

  else
  {
    v12 = *v7;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_21DBFBEEC();

    v15 = 0xD00000000000001BLL;
    v16 = 0x800000021DC71620;
    v14[1] = v12;
    v13 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v13);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return v15;
  }
}

uint64_t sub_21D9688A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewItemHit.Portion.description.getter()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t TTRICollectionViewItemHit.Portion.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9689C4()
{
  if (*v0)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

uint64_t TTRICollectionViewItemHit.portion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRICollectionViewItemHit(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRICollectionViewItemHit.description.getter()
{
  sub_21DBFBEEC();

  v1 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](0x6F6974726F70202CLL, 0xEB00000000203A6ELL);
  v2 = type metadata accessor for TTRICollectionViewItemHit(0);
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 0x6D6F74746F62;
  }

  else
  {
    v3 = 7368564;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x223D42AA0](v3, v4);

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC71640);
  if (*(v0 + *(v2 + 24)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223D42AA0](v5, v6);

  return 0x746968206D657449;
}

uint64_t sub_21D968BF0()
{
  v0 = TTRICollectionViewHitIndexPaths.description.getter();
  MEMORY[0x223D42AA0](v0);

  return 0x203A706147;
}

uint64_t TTRICollectionViewHitIndexPaths.inDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewHitIndexPaths.presentationDestination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRICollectionViewHitIndexPaths(0) + 20);
  v4 = sub_21DBF5D5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRICollectionViewHitIndexPaths.description.getter()
{
  sub_21DBFBEEC();

  sub_21DBF5D5C();
  sub_21D23894C(&qword_27CE59FD0);
  v0 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](1030758444, 0xE400000000000000);
  type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v1 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](1029972012, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  v2 = sub_21DBFBA5C();
  MEMORY[0x223D42AA0](v2);

  return 4025961;
}

uint64_t sub_21D968ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D968F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TTRICollectionViewGapLocationRelativeToHit.description.getter()
{
  v1 = *v0;
  v2 = 0x7061476F6ELL;
  v3 = 0x65766F6261;
  v4 = 0x4C746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x776F6C6562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRICollectionViewGapLocationRelativeToHit.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D9690D8()
{
  v1 = *v0;
  v2 = 0x7061476F6ELL;
  v3 = 0x65766F6261;
  v4 = 0x4C746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x776F6C6562;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s15RemindersUICore32TTRICollectionViewEmptySpaceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64160);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v31 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64168);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v21 = *(v20 + 56);
  sub_21D968F4C(a1, &v31 - v18, type metadata accessor for TTRICollectionViewEmptySpaceType);
  sub_21D968F4C(a2, &v19[v21], type metadata accessor for TTRICollectionViewEmptySpaceType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D968F4C(v19, v13, type metadata accessor for TTRICollectionViewEmptySpaceType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *(v8 + 48);
        sub_21D0D523C(v13, v10, &qword_27CE61600);
        sub_21D0D523C(&v19[v21], &v10[v23], &qword_27CE61600);
        v24 = v34;
        v25 = *(v33 + 48);
        if (v25(v10, 1, v34) == 1)
        {
          if (v25(&v10[v23], 1, v24) == 1)
          {
            sub_21D0CF7E0(v10, &qword_27CE61600);
LABEL_10:
            sub_21D968ECC(v19, type metadata accessor for TTRICollectionViewEmptySpaceType);
            return 1;
          }
        }

        else
        {
          v28 = v32;
          sub_21D0D3954(v10, v32, &qword_27CE61600);
          if (v25(&v10[v23], 1, v24) != 1)
          {
            v29 = v31;
            sub_21D9688A4(&v10[v23], v31, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            v30 = _s15RemindersUICore41TTRICollectionViewInsertAtIndexPathOptionO2eeoiySbAC_ACtFZ_0(v28, v29);
            sub_21D968ECC(v29, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            sub_21D968ECC(v28, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
            sub_21D0CF7E0(v10, &qword_27CE61600);
            if (v30)
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }

          sub_21D968ECC(v28, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
        }

        sub_21D0CF7E0(v10, &qword_27CE64160);
LABEL_17:
        sub_21D968ECC(v19, type metadata accessor for TTRICollectionViewEmptySpaceType);
        return 0;
      }

      sub_21D0CF7E0(v13, &qword_27CE61600);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_21D968F4C(v19, v16, type metadata accessor for TTRICollectionViewEmptySpaceType);
    if (!swift_getEnumCaseMultiPayload())
    {
      v26 = *v16 == *&v19[v21];
      sub_21D968ECC(v19, type metadata accessor for TTRICollectionViewEmptySpaceType);
      return v26;
    }
  }

  sub_21D0CF7E0(v19, &qword_27CE64168);
  return 0;
}

uint64_t _s15RemindersUICore31TTRICollectionViewHitTestResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v2 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRICollectionViewGapHit(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewItemHit(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewHitTestResult(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64170);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v35 - v20;
  v23 = *(v22 + 56);
  sub_21D968F4C(v37, &v35 - v20, type metadata accessor for TTRICollectionViewHitTestResult);
  sub_21D968F4C(v38, &v21[v23], type metadata accessor for TTRICollectionViewHitTestResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D968F4C(v21, v18, type metadata accessor for TTRICollectionViewHitTestResult);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D9688A4(&v21[v23], v9, type metadata accessor for TTRICollectionViewItemHit);
      if (_s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(v18, v9) && v18[*(v7 + 20)] == v9[*(v7 + 20)])
      {
        v32 = *(v7 + 24);
        v33 = v18[v32];
        v34 = v9[v32];
        sub_21D968ECC(v9, type metadata accessor for TTRICollectionViewItemHit);
        if (v33 == v34)
        {
          sub_21D968ECC(v18, type metadata accessor for TTRICollectionViewItemHit);
          sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
          v25 = 1;
          return v25 & 1;
        }
      }

      else
      {
        sub_21D968ECC(v9, type metadata accessor for TTRICollectionViewItemHit);
      }

      sub_21D968ECC(v18, type metadata accessor for TTRICollectionViewItemHit);
      sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
      goto LABEL_13;
    }

    v28 = type metadata accessor for TTRICollectionViewItemHit;
    v29 = v18;
LABEL_12:
    sub_21D968ECC(v29, v28);
    sub_21D0CF7E0(v21, &qword_27CE64170);
LABEL_13:
    v25 = 0;
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21D968F4C(v21, v12, type metadata accessor for TTRICollectionViewHitTestResult);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v30 = v36;
      sub_21D9688A4(&v21[v23], v36, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v25 = _s15RemindersUICore32TTRICollectionViewEmptySpaceTypeO2eeoiySbAC_ACtFZ_0(v12, v30);
      v26 = type metadata accessor for TTRICollectionViewEmptySpaceType;
      sub_21D968ECC(v30, type metadata accessor for TTRICollectionViewEmptySpaceType);
      v27 = v12;
      goto LABEL_9;
    }

    v28 = type metadata accessor for TTRICollectionViewEmptySpaceType;
    v29 = v12;
    goto LABEL_12;
  }

  sub_21D968F4C(v21, v15, type metadata accessor for TTRICollectionViewHitTestResult);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = type metadata accessor for TTRICollectionViewGapHit;
    v29 = v15;
    goto LABEL_12;
  }

  sub_21D9688A4(&v21[v23], v6, type metadata accessor for TTRICollectionViewGapHit);
  v25 = _s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(v15, v6);
  v26 = type metadata accessor for TTRICollectionViewGapHit;
  sub_21D968ECC(v6, type metadata accessor for TTRICollectionViewGapHit);
  v27 = v15;
LABEL_9:
  sub_21D968ECC(v27, v26);
  sub_21D968ECC(v21, type metadata accessor for TTRICollectionViewHitTestResult);
  return v25 & 1;
}

BOOL _s15RemindersUICore24TTRICollectionViewGapHitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v24 = v5;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_21D0D3954(a1 + v15, v13, &unk_27CE58E70);
  v17 = a2 + v15;
  v18 = v24;
  sub_21D0D3954(v17, &v13[v16], &unk_27CE58E70);
  v19 = *(v18 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE58E70);
      return 1;
    }

    goto LABEL_8;
  }

  sub_21D0D3954(v13, v10, &unk_27CE58E70);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v18 + 8))(v10, v4);
LABEL_8:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8);
    return 0;
  }

  (*(v18 + 32))(v7, &v13[v16], v4);
  sub_21D23894C(&qword_280D17150);
  v21 = sub_21DBFA10C();
  v22 = *(v18 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_21D0CF7E0(v13, &unk_27CE58E70);
  return (v21 & 1) != 0;
}

uint64_t _s15RemindersUICore25TTRICollectionViewItemHitV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  if ((_s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = a1;
  v16 = v5;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  v25 = v15;
  sub_21D0D3954(v15 + v17, v13, &unk_27CE58E70);
  v26 = a2;
  sub_21D0D3954(a2 + v17, &v13[v18], &unk_27CE58E70);
  v19 = *(v16 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_21D0D3954(v13, v10, &unk_27CE58E70);
    if (v19(&v13[v18], 1, v4) != 1)
    {
      (*(v16 + 32))(v7, &v13[v18], v4);
      sub_21D23894C(&qword_280D17150);
      v20 = sub_21DBFA10C();
      v21 = *(v16 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_21D0CF7E0(v13, &unk_27CE58E70);
      if ((v20 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    (*(v16 + 8))(v10, v4);
LABEL_8:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8);
    goto LABEL_11;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_21D0CF7E0(v13, &unk_27CE58E70);
LABEL_10:
  v22 = type metadata accessor for TTRICollectionViewItemHit(0);
  if (*(v25 + *(v22 + 20)) == *(v26 + *(v22 + 20)))
  {
    v23 = *(v25 + *(v22 + 24)) ^ *(v26 + *(v22 + 24)) ^ 1;
    return v23 & 1;
  }

LABEL_11:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_21D96A2C8()
{
  result = qword_27CE640F8;
  if (!qword_27CE640F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE640F8);
  }

  return result;
}

unint64_t sub_21D96A320()
{
  result = qword_27CE64100;
  if (!qword_27CE64100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64100);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewHitTestResult(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v15 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v25 = sub_21DBF5D5C();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a1, a2, *(*(v14 - 8) + 64));
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_21DBF5D5C();
      v8 = *(v7 - 8);
      v9 = *(v8 + 16);
      v9(a1, a2, v7);
      v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v9((a1 + *(v10 + 20)), (a2 + *(v10 + 20)), v7);
      v11 = *(v10 + 24);
      if ((*(v8 + 48))(a2 + v11, 1, v7))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
        memcpy(a1 + v11, a2 + v11, *(*(v12 - 8) + 64));
      }

      else
      {
        v9((a1 + v11), (a2 + v11), v7);
        (*(v8 + 56))(a1 + v11, 0, 1, v7);
      }
    }

    else
    {
      v18 = sub_21DBF5D5C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 16);
      v20(a1, a2, v18);
      v21 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v20((a1 + *(v21 + 20)), (a2 + *(v21 + 20)), v18);
      v22 = *(v21 + 24);
      if ((*(v19 + 48))(a2 + v22, 1, v18))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
        memcpy(a1 + v22, a2 + v22, *(*(v23 - 8) + 64));
      }

      else
      {
        v20((a1 + v22), (a2 + v22), v18);
        (*(v19 + 56))(a1 + v22, 0, 1, v18);
      }

      v24 = type metadata accessor for TTRICollectionViewItemHit(0);
      *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
      *(a1 + *(v24 + 24)) = *(a2 + *(v24 + 24));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewHitTestResult(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    result = swift_getEnumCaseMultiPayload();
    if (result != 1)
    {
      return result;
    }

    v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    result = (*(*(v10 - 8) + 48))(a1, 1, v10);
    if (result)
    {
      return result;
    }

    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      return result;
    }

    v11 = sub_21DBF5D5C();
    v9 = *(*(v11 - 8) + 8);
    v8 = v11;
    v7 = a1;
  }

  else
  {
    if (result > 1)
    {
      return result;
    }

    v3 = sub_21DBF5D5C();
    v4 = *(v3 - 8);
    v12 = *(v4 + 8);
    v12(a1, v3);
    v5 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v12(a1 + *(v5 + 20), v3);
    v6 = *(v5 + 24);
    result = (*(v4 + 48))(a1 + v6, 1, v3);
    if (result)
    {
      return result;
    }

    v7 = a1 + v6;
    v8 = v3;
    v9 = v12;
  }

  return v9(v7, v8);
}

char *initializeWithCopy for TTRICollectionViewHitTestResult(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *(*(v13 - 8) + 64);
      v11 = a1;
      v12 = a2;
LABEL_11:
      memcpy(v11, v12, v10);
      goto LABEL_17;
    }

    v14 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v16 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v24 = sub_21DBF5D5C();
      (*(*(v24 - 8) + 16))(a1, a2, v24);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(a1, 0, 1, v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = sub_21DBF5D5C();
      v6 = *(v5 - 8);
      v7 = *(v6 + 16);
      v7(a1, a2, v5);
      v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v7(&a1[*(v8 + 20)], &a2[*(v8 + 20)], v5);
      v9 = *(v8 + 24);
      if (!(*(v6 + 48))(&a2[v9], 1, v5))
      {
        v7(&a1[v9], &a2[v9], v5);
        (*(v6 + 56))(&a1[v9], 0, 1, v5);
        goto LABEL_17;
      }

      v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70) - 8) + 64);
      v11 = &a1[v9];
      v12 = &a2[v9];
      goto LABEL_11;
    }

    v17 = sub_21DBF5D5C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 16);
    v19(a1, a2, v17);
    v20 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v19(&a1[*(v20 + 20)], &a2[*(v20 + 20)], v17);
    v21 = *(v20 + 24);
    if ((*(v18 + 48))(&a2[v21], 1, v17))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
    }

    else
    {
      v19(&a1[v21], &a2[v21], v17);
      (*(v18 + 56))(&a1[v21], 0, 1, v17);
    }

    v23 = type metadata accessor for TTRICollectionViewItemHit(0);
    a1[*(v23 + 20)] = a2[*(v23 + 20)];
    a1[*(v23 + 24)] = a2[*(v23 + 24)];
  }

LABEL_17:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for TTRICollectionViewHitTestResult(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewHitTestResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(a2, 1, v14))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
          memcpy(a1, a2, *(*(v16 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v24 = sub_21DBF5D5C();
          (*(*(v24 - 8) + 16))(a1, a2, v24);
          swift_storeEnumTagMultiPayload();
          (*(v15 + 56))(a1, 0, 1, v14);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      v10 = *(*(v13 - 8) + 64);
      v11 = a1;
      v12 = a2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v17 = sub_21DBF5D5C();
        v18 = *(v17 - 8);
        v19 = *(v18 + 16);
        v19(a1, a2, v17);
        v20 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v19(&a1[*(v20 + 20)], &a2[*(v20 + 20)], v17);
        v21 = *(v20 + 24);
        if ((*(v18 + 48))(&a2[v21], 1, v17))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
          memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
        }

        else
        {
          v19(&a1[v21], &a2[v21], v17);
          (*(v18 + 56))(&a1[v21], 0, 1, v17);
        }

        v23 = type metadata accessor for TTRICollectionViewItemHit(0);
        a1[*(v23 + 20)] = a2[*(v23 + 20)];
        a1[*(v23 + 24)] = a2[*(v23 + 24)];
        goto LABEL_18;
      }

      v5 = sub_21DBF5D5C();
      v6 = *(v5 - 8);
      v7 = *(v6 + 16);
      v7(a1, a2, v5);
      v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v7(&a1[*(v8 + 20)], &a2[*(v8 + 20)], v5);
      v9 = *(v8 + 24);
      if (!(*(v6 + 48))(&a2[v9], 1, v5))
      {
        v7(&a1[v9], &a2[v9], v5);
        (*(v6 + 56))(&a1[v9], 0, 1, v5);
        goto LABEL_18;
      }

      v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70) - 8) + 64);
      v11 = &a1[v9];
      v12 = &a2[v9];
    }

    memcpy(v11, v12, v10);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRICollectionViewHitTestResult(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v13 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v10 = *(*(v13 - 8) + 64);
      v11 = a1;
      v12 = a2;
LABEL_11:
      memcpy(v11, v12, v10);
      goto LABEL_17;
    }

    v14 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(a2, 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v16 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v24 = sub_21DBF5D5C();
      (*(*(v24 - 8) + 32))(a1, a2, v24);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(a1, 0, 1, v14);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = sub_21DBF5D5C();
      v6 = *(v5 - 8);
      v7 = *(v6 + 32);
      v7(a1, a2, v5);
      v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v7(&a1[*(v8 + 20)], &a2[*(v8 + 20)], v5);
      v9 = *(v8 + 24);
      if (!(*(v6 + 48))(&a2[v9], 1, v5))
      {
        v7(&a1[v9], &a2[v9], v5);
        (*(v6 + 56))(&a1[v9], 0, 1, v5);
        goto LABEL_17;
      }

      v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70) - 8) + 64);
      v11 = &a1[v9];
      v12 = &a2[v9];
      goto LABEL_11;
    }

    v17 = sub_21DBF5D5C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 32);
    v19(a1, a2, v17);
    v20 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v19(&a1[*(v20 + 20)], &a2[*(v20 + 20)], v17);
    v21 = *(v20 + 24);
    if ((*(v18 + 48))(&a2[v21], 1, v17))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
    }

    else
    {
      v19(&a1[v21], &a2[v21], v17);
      (*(v18 + 56))(&a1[v21], 0, 1, v17);
    }

    v23 = type metadata accessor for TTRICollectionViewItemHit(0);
    a1[*(v23 + 20)] = a2[*(v23 + 20)];
    a1[*(v23 + 24)] = a2[*(v23 + 24)];
  }

LABEL_17:
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for TTRICollectionViewHitTestResult(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewHitTestResult);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for TTRICollectionViewEmptySpaceType(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(a2, 1, v14))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
          memcpy(a1, a2, *(*(v16 - 8) + 64));
        }

        else
        {
          swift_getEnumCaseMultiPayload();
          v24 = sub_21DBF5D5C();
          (*(*(v24 - 8) + 32))(a1, a2, v24);
          swift_storeEnumTagMultiPayload();
          (*(v15 + 56))(a1, 0, 1, v14);
        }

        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      v10 = *(*(v13 - 8) + 64);
      v11 = a1;
      v12 = a2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v17 = sub_21DBF5D5C();
        v18 = *(v17 - 8);
        v19 = *(v18 + 32);
        v19(a1, a2, v17);
        v20 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v19(&a1[*(v20 + 20)], &a2[*(v20 + 20)], v17);
        v21 = *(v20 + 24);
        if ((*(v18 + 48))(&a2[v21], 1, v17))
        {
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
          memcpy(&a1[v21], &a2[v21], *(*(v22 - 8) + 64));
        }

        else
        {
          v19(&a1[v21], &a2[v21], v17);
          (*(v18 + 56))(&a1[v21], 0, 1, v17);
        }

        v23 = type metadata accessor for TTRICollectionViewItemHit(0);
        a1[*(v23 + 20)] = a2[*(v23 + 20)];
        a1[*(v23 + 24)] = a2[*(v23 + 24)];
        goto LABEL_18;
      }

      v5 = sub_21DBF5D5C();
      v6 = *(v5 - 8);
      v7 = *(v6 + 32);
      v7(a1, a2, v5);
      v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v7(&a1[*(v8 + 20)], &a2[*(v8 + 20)], v5);
      v9 = *(v8 + 24);
      if (!(*(v6 + 48))(&a2[v9], 1, v5))
      {
        v7(&a1[v9], &a2[v9], v5);
        (*(v6 + 56))(&a1[v9], 0, 1, v5);
        goto LABEL_18;
      }

      v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70) - 8) + 64);
      v11 = &a1[v9];
      v12 = &a2[v9];
    }

    memcpy(v11, v12, v10);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D96BC34()
{
  result = type metadata accessor for TTRICollectionViewItemHit(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TTRICollectionViewEmptySpaceType(319);
      if (v3 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewItemHit(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v10 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
    v9(&a1[*(v10 + 20)], &a2[*(v10 + 20)], v7);
    v11 = *(v10 + 24);
    if ((*(v8 + 48))(&a2[v11], 1, v7))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(&a1[v11], &a2[v11], *(*(v12 - 8) + 64));
    }

    else
    {
      v9(&a1[v11], &a2[v11], v7);
      (*(v8 + 56))(&a1[v11], 0, 1, v7);
    }

    v14 = *(a3 + 24);
    a1[*(a3 + 20)] = a2[*(a3 + 20)];
    a1[v14] = a2[v14];
  }

  return a1;
}

uint64_t initializeWithCopy for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v8(a1 + *(v9 + 20), a2 + *(v9 + 20), v6);
  v10 = *(v9 + 24);
  if ((*(v7 + 48))(a2 + v10, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v8(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v12) = *(a2 + v12);
  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v5);
  v9 = *(v8 + 24);
  v10 = *(v6 + 48);
  LODWORD(v8) = v10(a1 + v9, 1, v5);
  v11 = v10(a2 + v9, 1, v5);
  if (!v8)
  {
    if (!v11)
    {
      v7(a1 + v9, a2 + v9, v5);
      goto LABEL_7;
    }

    (*(v6 + 8))(a1 + v9, v5);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v6 + 16))(a1 + v9, a2 + v9, v5);
  (*(v6 + 56))(a1 + v9, 0, 1, v5);
LABEL_7:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v8(a1 + *(v9 + 20), a2 + *(v9 + 20), v6);
  v10 = *(v9 + 24);
  if ((*(v7 + 48))(a2 + v10, 1, v6))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v10), (a2 + v10), *(*(v11 - 8) + 64));
  }

  else
  {
    v8(a1 + v10, a2 + v10, v6);
    (*(v7 + 56))(a1 + v10, 0, 1, v6);
  }

  v12 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v12) = *(a2 + v12);
  return a1;
}

uint64_t assignWithTake for TTRICollectionViewItemHit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v8 + 20), a2 + *(v8 + 20), v5);
  v9 = *(v8 + 24);
  v10 = *(v6 + 48);
  LODWORD(v8) = v10(a1 + v9, 1, v5);
  v11 = v10(a2 + v9, 1, v5);
  if (!v8)
  {
    if (!v11)
    {
      v7(a1 + v9, a2 + v9, v5);
      goto LABEL_7;
    }

    (*(v6 + 8))(a1 + v9, v5);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v6 + 32))(a1 + v9, a2 + v9, v5);
  (*(v6 + 56))(a1 + v9, 0, 1, v5);
LABEL_7:
  v13 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v13) = *(a2 + v13);
  return a1;
}

uint64_t sub_21D96C628()
{
  result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewGapHit(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v9(&a1[*(v6 + 20)], &a2[*(v6 + 20)], v7);
    v10 = *(v6 + 24);
    if ((*(v8 + 48))(&a2[v10], 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v9(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
    }
  }

  return a1;
}

uint64_t sub_21D96C888(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  v7 = *(v3 + 8);
  v7(a1, v2);
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v7(a1 + *(v4 + 20), v2);
  v5 = *(v4 + 24);
  result = (*(v3 + 48))(a1 + v5, 1, v2);
  if (!result)
  {

    return (v7)(a1 + v5, v2);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  if ((*(v5 + 48))(a2 + v8, 1, v4))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v8), (a2 + v8), *(*(v9 - 8) + 64));
  }

  else
  {
    v6(a1 + v8, a2 + v8, v4);
    (*(v5 + 56))(a1 + v8, 0, 1, v4);
  }

  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 24);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  v9 = *(v5 + 48);
  LODWORD(v7) = v9(a1 + v8, 1, v4);
  v10 = v9(a2 + v8, 1, v4);
  if (!v7)
  {
    if (!v10)
    {
      v6(a1 + v8, a2 + v8, v4);
      return a1;
    }

    (*(v5 + 8))(a1 + v8, v4);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v5 + 16))(a1 + v8, a2 + v8, v4);
  (*(v5 + 56))(a1 + v8, 0, 1, v4);
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 32);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  if ((*(v5 + 48))(a2 + v8, 1, v4))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v8), (a2 + v8), *(*(v9 - 8) + 64));
  }

  else
  {
    v6(a1 + v8, a2 + v8, v4);
    (*(v5 + 56))(a1 + v8, 0, 1, v4);
  }

  return a1;
}

uint64_t assignWithTake for TTRICollectionViewGapHit(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 40);
  v6(a1, a2, v4);
  v7 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  v6(a1 + *(v7 + 20), a2 + *(v7 + 20), v4);
  v8 = *(v7 + 24);
  v9 = *(v5 + 48);
  LODWORD(v7) = v9(a1 + v8, 1, v4);
  v10 = v9(a2 + v8, 1, v4);
  if (!v7)
  {
    if (!v10)
    {
      v6(a1 + v8, a2 + v8, v4);
      return a1;
    }

    (*(v5 + 8))(a1 + v8, v4);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v8), (a2 + v8), *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v5 + 32))(a1 + v8, a2 + v8, v4);
  (*(v5 + 56))(a1 + v8, 0, 1, v4);
  return a1;
}

uint64_t sub_21D96D054()
{
  result = type metadata accessor for TTRICollectionViewHitIndexPaths(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewEmptySpaceType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v13 = sub_21DBF5D5C();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(v6 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for TTRICollectionViewEmptySpaceType(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    result = (*(*(v3 - 8) + 48))(a1, 1, v3);
    if (!result)
    {
      result = swift_getEnumCaseMultiPayload();
      if (result <= 2)
      {
        v4 = sub_21DBF5D5C();
        v5 = *(*(v4 - 8) + 8);

        return v5(a1, v4);
      }
    }
  }

  return result;
}

void *initializeWithCopy for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithCopy for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewEmptySpaceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }
}

void *assignWithTake for TTRICollectionViewEmptySpaceType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D968ECC(a1, type metadata accessor for TTRICollectionViewEmptySpaceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(a2, 1, v6))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61600);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      swift_getEnumCaseMultiPayload();
      v11 = sub_21DBF5D5C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      swift_storeEnumTagMultiPayload();
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_21D96DB10()
{
  sub_21D96E5FC(319, &qword_27CE64148, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRICollectionViewHitIndexPaths(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 16);
    v9(a1, a2, v7);
    v9(&a1[*(a3 + 20)], &a2[*(a3 + 20)], v7);
    v10 = *(a3 + 24);
    if ((*(v8 + 48))(&a2[v10], 1, v7))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
    }

    else
    {
      v9(&a1[v10], &a2[v10], v7);
      (*(v8 + 56))(&a1[v10], 0, 1, v7);
    }
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v8 = *(v5 + 8);
  v8(a1, v4);
  v8(a1 + *(a2 + 20), v4);
  v6 = *(a2 + 24);
  result = (*(v5 + 48))(a1 + v6, 1, v4);
  if (!result)
  {

    return (v8)(a1 + v6, v4);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  v10 = *(v7 + 48);
  LODWORD(a3) = v10(a1 + v9, 1, v6);
  v11 = v10(a2 + v9, 1, v6);
  if (!a3)
  {
    if (!v11)
    {
      v8(a1 + v9, a2 + v9, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(a1 + v9, a2 + v9, v6);
  (*(v7 + 56))(a1 + v9, 0, 1, v6);
  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  if ((*(v7 + 48))(a2 + v9, 1, v6))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v10 - 8) + 64));
  }

  else
  {
    v8(a1 + v9, a2 + v9, v6);
    (*(v7 + 56))(a1 + v9, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for TTRICollectionViewHitIndexPaths(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v8(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v9 = *(a3 + 24);
  v10 = *(v7 + 48);
  LODWORD(a3) = v10(a1 + v9, 1, v6);
  v11 = v10(a2 + v9, 1, v6);
  if (!a3)
  {
    if (!v11)
    {
      v8(a1 + v9, a2 + v9, v6);
      return a1;
    }

    (*(v7 + 8))(a1 + v9, v6);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy((a1 + v9), (a2 + v9), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(a1 + v9, a2 + v9, v6);
  (*(v7 + 56))(a1 + v9, 0, 1, v6);
  return a1;
}

void sub_21D96E518()
{
  sub_21DBF5D5C();
  if (v0 <= 0x3F)
  {
    sub_21D96E5FC(319, &qword_27CE61428, MEMORY[0x277CC9AF8]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D96E5FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t TTRICollectionViewInsertAtIndexPathOption.description.getter()
{
  v1 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D96F2E4(v0, v9, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
      v11 = 0x2865726F666562;
      v12 = 0xE700000000000000;
    }

    else
    {
      sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
      v11 = 0x287265746661;
      v12 = 0xE600000000000000;
    }

    v21 = v11;
    v22 = v12;
    sub_21DBF5D5C();
    sub_21D96E970();
    v19 = sub_21DBFC5BC();
    v20 = v17;
    MEMORY[0x223D42AA0](0x296A64616E7528, 0xE700000000000000);
    MEMORY[0x223D42AA0](v19, v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v14 = v21;
    v15 = type metadata accessor for TTRUnadjustedIndexPath;
    v16 = v3;
  }

  else
  {
    sub_21D74EAE0(v9, v6, type metadata accessor for TTRAdjustedIndexPath);
    v21 = 2651233;
    v22 = 0xE300000000000000;
    sub_21DBF5D5C();
    sub_21D96E970();
    v19 = sub_21DBFC5BC();
    v20 = v13;
    MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
    MEMORY[0x223D42AA0](v19, v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v14 = v21;
    v15 = type metadata accessor for TTRAdjustedIndexPath;
    v16 = v6;
  }

  sub_21D96E9C8(v16, v15);
  return v14;
}

unint64_t sub_21D96E970()
{
  result = qword_27CE59FD0;
  if (!qword_27CE59FD0)
  {
    sub_21DBF5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE59FD0);
  }

  return result;
}

uint64_t sub_21D96E9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRICollectionViewDropIntent.TargetType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRICollectionViewDropIntent.description.getter()
{
  v1 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRICollectionViewDropIntent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D96F2E4(v0, v9, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v15 = v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220) + 48)];
    sub_21D74EAE0(v9, v6, type metadata accessor for TTRAdjustedIndexPath);
    if (v15)
    {
      v23 = 2643009;
      v24 = 0xE300000000000000;
      sub_21DBF5D5C();
      sub_21D96E970();
      v21 = sub_21DBFC5BC();
      v22 = v16;
      MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
      MEMORY[0x223D42AA0](v21, v22);

      if (v15 == 1)
      {
        v17 = 692396076;
      }

      else
      {
        v17 = 692592684;
      }

      v19 = 0xE400000000000000;
    }

    else
    {
      v23 = 2643009;
      v24 = 0xE300000000000000;
      sub_21DBF5D5C();
      sub_21D96E970();
      v21 = sub_21DBFC5BC();
      v22 = v18;
      MEMORY[0x223D42AA0](0x296A646128, 0xE500000000000000);
      MEMORY[0x223D42AA0](v21, v22);

      v17 = 41;
      v19 = 0xE100000000000000;
    }

    MEMORY[0x223D42AA0](v17, v19);
    v12 = v23;
    v13 = type metadata accessor for TTRAdjustedIndexPath;
    v14 = v6;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D74EAE0(v9, v3, type metadata accessor for TTRUnadjustedIndexPath);
    v23 = 0x284F544E49;
    v24 = 0xE500000000000000;
    sub_21DBF5D5C();
    sub_21D96E970();
    v21 = sub_21DBFC5BC();
    v22 = v11;
    MEMORY[0x223D42AA0](0x296A64616E7528, 0xE700000000000000);
    MEMORY[0x223D42AA0](v21, v22);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v12 = v23;
    v13 = type metadata accessor for TTRUnadjustedIndexPath;
    v14 = v3;
LABEL_12:
    sub_21D96E9C8(v14, v13);
    return v12;
  }

  return 1347636821;
}

uint64_t _s15RemindersUICore41TTRICollectionViewInsertAtIndexPathOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE641A0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_21D96F2E4(a1, &v33 - v21, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  sub_21D96F2E4(v34, &v22[v24], type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D96F2E4(v22, v16, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D74EAE0(&v22[v24], v7, type metadata accessor for TTRUnadjustedIndexPath);
        v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
        v27 = type metadata accessor for TTRUnadjustedIndexPath;
        sub_21D96E9C8(v7, type metadata accessor for TTRUnadjustedIndexPath);
        v28 = v16;
LABEL_13:
        sub_21D96E9C8(v28, v27);
        sub_21D96E9C8(v22, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
        return v26 & 1;
      }

      v29 = type metadata accessor for TTRUnadjustedIndexPath;
      v30 = v16;
    }

    else
    {
      sub_21D96F2E4(v22, v13, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v33;
        sub_21D74EAE0(&v22[v24], v33, type metadata accessor for TTRUnadjustedIndexPath);
        v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
        v27 = type metadata accessor for TTRUnadjustedIndexPath;
        sub_21D96E9C8(v31, type metadata accessor for TTRUnadjustedIndexPath);
        v28 = v13;
        goto LABEL_13;
      }

      v29 = type metadata accessor for TTRUnadjustedIndexPath;
      v30 = v13;
    }
  }

  else
  {
    sub_21D96F2E4(v22, v19, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D74EAE0(&v22[v24], v10, type metadata accessor for TTRAdjustedIndexPath);
      v26 = _s15RemindersUICore20TTRAdjustedIndexPathV2eeoiySbAC_ACtFZ_0();
      v27 = type metadata accessor for TTRAdjustedIndexPath;
      sub_21D96E9C8(v10, type metadata accessor for TTRAdjustedIndexPath);
      v28 = v19;
      goto LABEL_13;
    }

    v29 = type metadata accessor for TTRAdjustedIndexPath;
    v30 = v19;
  }

  sub_21D96E9C8(v30, v29);
  sub_21D97002C(v22);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_21D96F2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D96F350()
{
  result = qword_27CE64178;
  if (!qword_27CE64178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64178);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRICollectionViewInsertAtIndexPathOption(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    swift_getEnumCaseMultiPayload();
    v6 = sub_21DBF5D5C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v3 = sub_21DBF5D5C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

uint64_t initializeWithCopy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    swift_getEnumCaseMultiPayload();
    v4 = sub_21DBF5D5C();
    (*(*(v4 - 8) + 16))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2)
{
  swift_getEnumCaseMultiPayload();
  v4 = sub_21DBF5D5C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithTake for TTRICollectionViewInsertAtIndexPathOption(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewInsertAtIndexPathOption);
    swift_getEnumCaseMultiPayload();
    v4 = sub_21DBF5D5C();
    (*(*(v4 - 8) + 32))(a1, a2, v4);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_21D96F7A4()
{
  result = sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRICollectionViewDropIntent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_21DBF5D5C();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF5D5C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220);
    *(a1 + *(v9 + 48)) = *(a2 + *(v9 + 48));
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for TTRICollectionViewDropIntent(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = sub_21DBF5D5C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithCopy for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *initializeWithTake for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *assignWithTake for TTRICollectionViewDropIntent(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D96E9C8(a1, type metadata accessor for TTRICollectionViewDropIntent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF5D5C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF5D5C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61220);
    a1[*(v8 + 48)] = a2[*(v8 + 48)];
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D96FF74()
{
  result = sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    v3[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D97002C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE641A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array<A>.init(pinnedLists:)(uint64_t a1)
{
  v2 = sub_21DBF68BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = sub_21DBFB1BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {

    return MEMORY[0x277D84F90];
  }

  v48 = MEMORY[0x277D84F90];
  v44 = v12;
  sub_21D18F62C(0, v12, 0);
  v13 = 0;
  v14 = v48;
  v43 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v42 = v3 + 16;
  v40 = v3 + 88;
  v39 = *MEMORY[0x277D452D0];
  v33 = *MEMORY[0x277D452D8];
  v30 = *MEMORY[0x277D452C8];
  v37 = (v3 + 8);
  v38 = (v3 + 96);
  v32 = *MEMORY[0x277D45A08];
  v36 = (v9 + 104);
  v31 = *MEMORY[0x277D45A00];
  v34 = v8;
  v35 = v9 + 32;
  v45 = v3;
  v46 = a1;
  v41 = v11;
  while (v13 < *(a1 + 16))
  {
    v15 = *(v3 + 16);
    v15(v7, v43 + *(v3 + 72) * v13, v2);
    v16 = v47;
    v15(v47, v7, v2);
    v17 = (*(v3 + 88))(v16, v2);
    if (v17 == v39)
    {
      (*v37)(v7, v2);
      (*v38)(v16, v2);
      v18 = v41;
      *v41 = *v16;
      v19 = v31;
LABEL_8:
      v22 = v18;
      goto LABEL_11;
    }

    if (v17 == v33)
    {
      (*v38)(v16, v2);
      v20 = *v16;
      v21 = [v20 objectID];

      (*v37)(v7, v2);
      v18 = v41;
      *v41 = v21;
      v8 = v34;
      v19 = v32;
      goto LABEL_8;
    }

    if (v17 != v30)
    {
      goto LABEL_18;
    }

    (*v38)(v16, v2);
    v23 = *v16;
    v24 = [v23 objectID];

    (*v37)(v7, v2);
    v22 = v41;
    *v41 = v24;
    v19 = v32;
    v8 = v34;
LABEL_11:
    (*v36)(v22, v19, v8);
    v48 = v14;
    v25 = v8;
    v27 = *(v14 + 16);
    v26 = *(v14 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_21D18F62C(v26 > 1, v27 + 1, 1);
      v14 = v48;
    }

    ++v13;
    *(v14 + 16) = v27 + 1;
    (*(v9 + 32))(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, v22, v25);
    v8 = v25;
    v3 = v45;
    a1 = v46;
    if (v44 == v13)
    {

      return v14;
    }
  }

  __break(1u);
LABEL_18:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

size_t Array<A>.appending(lists:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 2;
      v8 = [v7 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = Array<A>.appendingListsOrCustomSmartLists(with:)(v3, a2);

  return v9;
}

{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = a2;
    v11 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v6 += 28;
      v8 = v7;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v2;
    }

    while (v2);
    v3 = v11;
    a2 = v5;
  }

  v9 = Array<A>.appendingListsOrCustomSmartLists(with:)(v3, a2);

  return v9;
}

size_t Array<A>.appendingListsOrCustomSmartLists(with:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFB1BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - v9);
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
LABEL_16:
    v27 = a2;
    sub_21DBF8E0C();
    sub_21D5635FC(v12);
    return v27;
  }

  v24 = a1;
  v27 = MEMORY[0x277D84F90];
  result = sub_21D18F62C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v23[0] = a2;
    v12 = v27;
    v14 = v24;
    if ((v24 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v26 = *MEMORY[0x277D45A08];
      v25 = v5 + 32;
      do
      {
        *v10 = MEMORY[0x223D44740](v15, v14);
        (*(v5 + 104))(v10, v26, v4);
        v27 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21D18F62C(v16 > 1, v17 + 1, 1);
          v14 = v24;
          v12 = v27;
        }

        ++v15;
        *(v12 + 16) = v17 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v10, v4);
      }

      while (v11 != v15);
    }

    else
    {
      v18 = (v24 + 32);
      v26 = *MEMORY[0x277D45A08];
      v24 = *(v5 + 104);
      v25 = v5 + 104;
      v23[1] = v5 + 32;
      do
      {
        v19 = *v18;
        *v7 = *v18;
        (v24)(v7, v26, v4);
        v27 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        v22 = v19;
        if (v21 >= v20 >> 1)
        {
          sub_21D18F62C(v20 > 1, v21 + 1, 1);
          v12 = v27;
        }

        *(v12 + 16) = v21 + 1;
        (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v7, v4);
        ++v18;
        --v11;
      }

      while (v11);
    }

    a2 = v23[0];
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removing(lists:)(uint64_t a1, uint64_t a2)
{
  return sub_21D970EC4(a1, a2, &qword_27CE641A8, &unk_21DC32EA8, &qword_27CE641B0);
}

{
  return sub_21D970EC4(a1, a2, &qword_27CE61C70, &unk_21DC29A50, &qword_27CE61C78);
}

uint64_t Array<A>.removingListsOrCustomSmartLists(with:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBFB1BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = (v37 - v9);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = v37 - v11;
  v49 = *(a2 + 16);
  if (v49)
  {
    v14 = 0;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v47 = a2 + v42;
    v48 = v16;
    v52 = *(v15 + 56);
    v46 = (v15 + 72);
    v45 = *MEMORY[0x277D45A00];
    v40 = *MEMORY[0x277D45A08];
    v38 = a1 & 0xC000000000000001;
    v39 = (v15 + 80);
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    v37[2] = v17;
    v41 = (v15 - 8);
    v50 = a1 + 56;
    v51 = (v15 + 16);
    v18 = MEMORY[0x277D84F90];
    v19 = v43;
    v44 = v37 - v11;
    v37[0] = v7;
    v37[1] = v15;
    while (1)
    {
      v20 = v48;
      (v48)(v13, v47 + v52 * v14, v4, v12);
      v20(v19, v13, v4);
      v21 = (*v46)(v19, v4);
      if (v21 == v45)
      {
        break;
      }

      if (v21 != v40)
      {
        result = sub_21DBFC63C();
        __break(1u);
        return result;
      }

      (*v39)(v19, v4);
      v22 = *v19;
      if (v38)
      {
        v23 = v22;
        v24 = sub_21DBFBDCC();

        v19 = v43;
        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(a1 + 16))
        {

          goto LABEL_21;
        }

        sub_21D37FB1C();
        v25 = sub_21DBFB62C();
        v26 = a1;
        v27 = -1 << *(a1 + 32);
        v28 = v25 & ~v27;
        if (((*(v50 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
LABEL_19:

          a1 = v26;
          v7 = v37[0];
          v19 = v43;
          v13 = v44;
          goto LABEL_21;
        }

        v29 = ~v27;
        while (1)
        {
          v30 = *(*(v26 + 48) + 8 * v28);
          v31 = sub_21DBFB63C();

          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v50 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v26;
        v7 = v37[0];
        v19 = v43;
        v13 = v44;
      }

      (*v41)(v13, v4);
LABEL_7:
      if (++v14 == v49)
      {
        return v18;
      }
    }

    (*v41)(v19, v4);
LABEL_21:
    v32 = *v51;
    (*v51)(v7, v13, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_21D18F62C(0, *(v18 + 16) + 1, 1);
      v19 = v43;
      v18 = v53;
    }

    v35 = *(v18 + 16);
    v34 = *(v18 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_21D18F62C(v34 > 1, v35 + 1, 1);
      v19 = v43;
      v18 = v53;
    }

    *(v18 + 16) = v35 + 1;
    v32((v18 + v42 + v35 * v52), v7, v4);
    v13 = v44;
    goto LABEL_7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D970EC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_21D37FB1C();
  sub_21D0D9418(a5, a3);
  sub_21D183A0C();
  v8 = sub_21DBFA49C();
  v9 = Array<A>.removingListsOrCustomSmartLists(with:)(v8, a2);

  return v9;
}

uint64_t sub_21D970F8C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t TTRMoveRemindersToListInteractorCapability.move(remindersWithIDs:to:)(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v6 = *a2;
  v7 = v4;
  return sub_21D971CE0(a1, &v6, 0, 0, a3, a4);
}

unint64_t sub_21D971010(unint64_t a1, NSObject *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v83 = a4;
  v86[5] = *MEMORY[0x277D85DE8];
  v81 = sub_21DBF563C();
  v13 = *(v81 - 8);
  *&v14 = MEMORY[0x28223BE20](v81).n128_u64[0];
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 customContext];
  if (!v16 || (v17 = v16, v18 = sub_21DBFB4FC(), v17, (v82 = v18) == 0))
  {
    if (qword_27CE56E90 == -1)
    {
LABEL_17:
      v25 = sub_21DBF84BC();
      __swift_project_value_buffer(v25, qword_27CE641B8);
      v26 = a2;
      v27 = sub_21DBF84AC();
      v28 = sub_21DBFAECC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = [v26 objectID];
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&dword_21D0C9000, v27, v28, "Passed smart list that is not a custom smart {listID: %@}", v29, 0xCu);
        sub_21D0CF7E0(v30, &unk_27CE60070);
        MEMORY[0x223D46520](v30, -1, -1);
        MEMORY[0x223D46520](v29, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  v78 = a2;
  v79 = a3;
  v74 = a5;
  v75 = a6;
  v76 = v7;
  v86[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v19 = sub_21DBFBD7C();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v21 = 0;
  a6 = (a1 & 0xC000000000000001);
  do
  {
    if (a6)
    {
      v22 = MEMORY[0x223D44740](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v7 = v22;
    a2 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v23 = [v22 account];
    v24 = [v23 capabilities];

    v17 = [v24 supportsCustomSmartLists];
    if (v17)
    {
      v17 = v86;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    else
    {
    }

    ++v21;
  }

  while (a2 != v19);
  v33 = v86[0];
  v20 = MEMORY[0x277D84F90];
LABEL_22:
  v77 = v13;
  if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
  {
    v34 = sub_21DBFBD7C();
    if (!v34)
    {
      goto LABEL_37;
    }

LABEL_25:
    v86[0] = v20;
    sub_21DBFC01C();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x223D44740](v7, v33);
        }

        else
        {
          v35 = *(v33 + 8 * v7 + 32);
        }

        v36 = v35;
        v7 = (v7 + 1);
        v37 = [v79 updateReminder_];

        v17 = v86;
        sub_21DBFBFEC();
        a6 = *(v86[0] + 2);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      while (v34 != v7);

      v38 = v86[0];
      v13 = v77;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    __break(1u);
LABEL_86:
    swift_once();
    goto LABEL_54;
  }

  v34 = *(v33 + 16);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_37:

  v38 = MEMORY[0x277D84F90];
LABEL_38:
  v84 = v38;
  v86[0] = v20;
  if (v19)
  {
    v39 = 0;
    a6 = (a1 & 0xC000000000000001);
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a6)
      {
        v40 = MEMORY[0x223D44740](v39, a1);
      }

      else
      {
        if (v39 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v40 = *(a1 + 8 * v39 + 32);
      }

      v34 = v40;
      v41 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v42 = [v40 account];
      v7 = [v42 capabilities];

      v17 = [v7 supportsCustomSmartLists];
      if (v17)
      {
      }

      else
      {
        v17 = v86;
        sub_21DBFBFEC();
        v7 = *(v86[0] + 2);
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      ++v39;
      if (v41 == v19)
      {
        v20 = v86[0];
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    if (!sub_21DBFBD7C())
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_50:
    v34 = v78;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if (!*(v20 + 16))
    {
LABEL_72:

      goto LABEL_73;
    }
  }

  if (qword_27CE56E90 != -1)
  {
    goto LABEL_86;
  }

LABEL_54:
  v43 = sub_21DBF84BC();
  v44 = __swift_project_value_buffer(v43, qword_27CE641B8);
  v32 = v34;

  v19 = sub_21DBF84AC();
  LOBYTE(v7) = sub_21DBFAECC();

  if (!os_log_type_enabled(v19, v7))
  {

    goto LABEL_60;
  }

  v45 = swift_slowAlloc();
  a6 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v86[0] = v34;
  *v45 = 138412546;
  v17 = &off_278331000;
  v46 = [v32 objectID];
  *(v45 + 4) = v46;
  *a6 = v46;
  *(v45 + 12) = 2080;
  v73 = v44;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_88;
  }

  if (!*(v20 + 16))
  {
    __break(1u);
  }

  v47 = a6;
  v48 = v34;
  v49 = *(v20 + 32);
  while (2)
  {
    v50 = v49;
    v51 = [v49 v17[425]];

    v85[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60EE0);
    v52 = sub_21DBFBA5C();
    v54 = v53;

    v55 = sub_21D0CDFB4(v52, v54, v86);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_21D0C9000, v19, v7, "Unexpected attempt to add reminders not supporting CSL to a CSL {cslID: %@, reminders.first.objectID: %s}", v45, 0x16u);
    sub_21D0CF7E0(v47, &unk_27CE60070);
    MEMORY[0x223D46520](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D46520](v48, -1, -1);
    MEMORY[0x223D46520](v45, -1, -1);

    v13 = v77;
    v44 = v73;
LABEL_60:
    a6 = v79;
    v56 = [v79 store];
    v7 = [v32 accountID];
    v86[0] = 0;
    v34 = [v56 fetchDefaultListRequiringCloudKitAccountWithAccountID:v7 error:v86];

    if (v86[0])
    {
      v57 = v86[0];

      swift_willThrow();
      v34 = v57;
      v17 = v44;
      v7 = sub_21DBF84AC();
      v58 = sub_21DBFAEBC();

      if (os_log_type_enabled(v7, v58))
      {
        v59 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v86[0] = v19;
        *v59 = 136315138;
        swift_getErrorValue();
        v60 = sub_21DBFC74C();
        v17 = v61;
        a6 = sub_21D0CDFB4(v60, v61, v86);

        *(v59 + 4) = a6;
        _os_log_impl(&dword_21D0C9000, v7, v58, "unable to fetch default CloudKit list because %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x223D46520](v19, -1, -1);
        MEMORY[0x223D46520](v59, -1, -1);
      }

      else
      {
      }

      goto LABEL_73;
    }

    if (v34)
    {
      a6 = sub_21D9724B8(v20, v34, a6, v83, v74, v75);
      v79 = v62;

      v17 = &v84;
      sub_21D562380(a6);
    }

    else
    {

      v34 = sub_21DBF84AC();
      v17 = sub_21DBFAEBC();
      if (os_log_type_enabled(v34, v17))
      {
        v7 = swift_slowAlloc();
        LOWORD(v7->isa) = 0;
        _os_log_impl(&dword_21D0C9000, v34, v17, "No available default CloudKit list", v7, 2u);
        MEMORY[0x223D46520](v7, -1, -1);
      }

LABEL_73:
      v79 = 0;
    }

    v32 = v84;
    if (v84 >> 62)
    {
      v45 = sub_21DBFBD7C();
      if (!v45)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v45 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_83;
      }
    }

    if (v45 < 1)
    {
      __break(1u);
LABEL_88:
      v47 = a6;
      v48 = v34;
      v49 = MEMORY[0x223D44740](0, v20);
      continue;
    }

    break;
  }

  v63 = 0;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x223D44740](v63, v32);
    }

    else
    {
      v64 = *(v32 + 8 * v63 + 32);
    }

    v65 = v64;
    ++v63;
    sub_21D1826C4(v83, v86);
    sub_21D1826C4(v86, v85);
    type metadata accessor for TTRReminderEditor();
    v66 = swift_allocObject();
    *(v66 + 72) = 0;
    *(v66 + 16) = v65;
    sub_21D1826C4(v85, v66 + 24);
    *(v66 + 64) = 0;
    v67 = v65;
    v68 = [v67 fetchedCurrentDueDateDeltaAlert];
    sub_21D0CF7E0(v85, &unk_27CE60D80);
    sub_21D0CF7E0(v86, &unk_27CE60D80);
    v69 = *(v66 + 72);
    *(v66 + 72) = v68;

    v70 = v80;
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    TTRReminderEditor.edit(toMatch:now:)(v82, v70);

    (*(v13 + 8))(v70, v81);
  }

  while (v45 != v63);
LABEL_83:

  return v32;
}

uint64_t sub_21D971C14()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE641B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D971CE0(unint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = sub_21D972080(a1, a5, a6);
  v13 = v12;
  if (v12 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v36 = a3;
    v37 = a4;
    v14 = swift_allocObject();
    v15 = swift_allocObject();
    v16 = (*(a6 + 8))(a5, a6);
    v38 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

    v17 = objc_allocWithZone(TTRUndoManager);
    v18 = sub_21DBFA12C();
    v19 = [v17 initWithDebugIdentifier_];

    v20 = type metadata accessor for TTRBasicUndoContext();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v40[3] = v20;
    v40[4] = &protocol witness table for TTRBasicUndoContext;
    v40[0] = v21;
    v35 = v11;
    sub_21D0D32E4(v40, aBlock);
    v22 = v19;
    if (v11)
    {
      v23 = sub_21D971010(v13, v10, v38, aBlock, a5, a6);
    }

    else
    {
      v23 = sub_21D9724B8(v13, v10, v38, aBlock, a5, a6);
    }

    v25 = v23;
    v26 = v10;
    v27 = v24;

    sub_21D0CF7E0(aBlock, &unk_27CE60D80);
    *(v14 + 16) = v25;
    *(v15 + 16) = v27;
    sub_21D0D8CF0(0, &qword_280D1B900);
    v28 = sub_21DBFB12C();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = a6;
    *(v30 + 32) = v26;
    *(v30 + 40) = v35;
    *(v30 + 48) = v14;
    *(v30 + 56) = v15;
    *(v30 + 64) = v36;
    *(v30 + 72) = v37;
    *(v30 + 80) = v29;
    *(v30 + 88) = v19;
    aBlock[4] = sub_21D974DEC;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_30_1;
    v31 = _Block_copy(aBlock);
    v32 = v19;
    v33 = v26;

    sub_21D0D0E78(v36);

    [v38 saveWithQueue:v28 completion:v31];

    _Block_release(v31);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  if (a3)
  {
    return a3(0);
  }

  return result;
}

id sub_21D972080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v4 = (*(a3 + 8))(a2, a3);
  sub_21D0D8CF0(0, &qword_280D17880);
  v5 = sub_21DBFA5DC();
  v33[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v33];

  v7 = v33[0];
  if (v6)
  {
    sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v8 = sub_21DBF9E6C();
    v9 = v7;

    v33[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
LABEL_30:
      v10 = sub_21DBFBD7C();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      while (1)
      {
        if (v10 == v11)
        {

          return v31;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x223D44740](v11, a1);
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v12 = *(a1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*(v8 + 16))
        {
          v16 = sub_21D17E07C(v12);
          if (v17)
          {
            v15 = *(*(v8 + 56) + 8 * v16);
            v18 = v15;
            goto LABEL_17;
          }
        }

LABEL_5:

        ++v11;
      }

      if (!sub_21DBFC2CC())
      {
        goto LABEL_5;
      }

      swift_dynamicCast();
      v15 = v32;
LABEL_17:

      ++v11;
      if (v15)
      {
        MEMORY[0x223D42D80]();
        if (*((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v31 = v33[0];
        v11 = v14;
      }
    }
  }

  v20 = v33[0];
  v21 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE641B8);
  v23 = v21;
  v24 = sub_21DBF84AC();
  v25 = sub_21DBFAEBC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33[0] = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_21DBFC74C();
    v30 = sub_21D0CDFB4(v28, v29, v33);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21D0C9000, v24, v25, "Failed to fetch reminders {error: %s}", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x223D46520](v27, -1, -1);
    MEMORY[0x223D46520](v26, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21D9724B8(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = a5;
  v96 = a6;
  v10 = v109;
  v11 = sub_21DBF563C();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x28223BE20](v11);
  v83 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x277D84F90];
  v87 = a4;
  sub_21D1826C4(a4, v112);
  sub_21D1826C4(v112, v111);
  v13 = a2;
  v14 = a3;
  v15 = [v14 updateList_];
  sub_21D1826C4(v111, v109);
  if (qword_280D1AA10 != -1)
  {
LABEL_55:
    swift_once();
  }

  v16 = qword_280D1AA18;
  sub_21D0CF7E0(v111, &unk_27CE60D80);
  type metadata accessor for TTRListEditor();
  inited = swift_initStackObject();
  v107 = type metadata accessor for TTRUserDefaults();
  v108 = &protocol witness table for TTRUserDefaults;
  *&v106 = v16;
  v18 = v16;
  sub_21D0CF7E0(v112, &unk_27CE60D80);
  inited[64] = 0;
  *(inited + 2) = v15;
  v19 = v110;
  v20 = v10[1];
  *(inited + 24) = *v10;
  *(inited + 40) = v20;
  *(inited + 7) = v19;
  swift_beginAccess();
  inited[64] = 0;
  v92 = inited;
  sub_21D0D15E0(&v106, (inited + 72));

  v104 = v14;
  v21 = a1;
  v15 = (a1 >> 62);
  v93 = v13;
  v94 = a1;
  v88 = a1 >> 62;
  if (a1 >> 62)
  {
    v91 = a1 & 0xFFFFFFFFFFFFFF8;
    v89 = sub_21DBFBD7C();
    if (!v89)
    {
      v89 = 0;
      v10 = 0;
      v102 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      v21 = a1;
      v13 = v104;
LABEL_60:
      v100 = v10;
      v48 = v21;
      v49 = sub_21DBFBD7C();
      v21 = v48;
      v47 = v49;
      goto LABEL_61;
    }

    v21 = a1;
  }

  else
  {
    v91 = a1 & 0xFFFFFFFFFFFFFF8;
    v89 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v89)
    {
      v89 = 0;
      v10 = 0;
      v102 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      v13 = v104;
      goto LABEL_51;
    }
  }

  v10 = 0;
  v97 = v21 & 0xC000000000000001;
  v90 = v21 + 32;
  v22 = v89;
  v102 = MEMORY[0x277D84F90];
  v13 = v104;
  while (1)
  {
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      break;
    }

    v99 = v24;
    if (v97)
    {
      v25 = MEMORY[0x223D44740]();
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (v24 >= *(v91 + 16))
      {
        goto LABEL_54;
      }

      v25 = *(v90 + 8 * v24);
    }

    v26 = v25;
    v103 = [v13 updateReminder_];
    v27 = _s15RemindersUICore07TTRMoveA26ToListInteractorCapabilityPAAE22fetchSubtasksForMoving2ofSaySo11REMReminderCGAG_tF_0(v26);
    v14 = v27;
    if (v27 >> 62)
    {
      a1 = sub_21DBFBD7C();
      v101 = v26;
      if (!a1)
      {
LABEL_21:
        v32 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

    else
    {
      a1 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v101 = v26;
      if (!a1)
      {
        goto LABEL_21;
      }
    }

    *&v106 = MEMORY[0x277D84F90];
    v15 = &v106;
    sub_21DBFC01C();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v28 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x223D44740](v28, v14);
      }

      else
      {
        v29 = *(v14 + 8 * v28 + 32);
      }

      v30 = v29;
      ++v28;
      v31 = [v13 updateReminder_];

      sub_21DBFBFEC();
      inited = *(v106 + 16);
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (a1 != v28);
    v32 = v106;
LABEL_22:
    v100 = v10;
    v33 = [v103 assignmentContext];
    [v33 removeAllAssignments];

    v98 = v32 >> 62;
    if (v32 >> 62)
    {
      v34 = sub_21DBFBD7C();
      if (v34)
      {
LABEL_24:
        v35 = 0;
        v10 = (v32 & 0xC000000000000001);
        while (1)
        {
          if (v10)
          {
            v36 = MEMORY[0x223D44740](v35, v32);
          }

          else
          {
            if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_47;
            }

            v36 = *(v32 + 8 * v35 + 32);
          }

          v37 = v36;
          v13 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            break;
          }

          inited = [v36 assignmentContext];
          [inited removeAllAssignments];

          ++v35;
          v38 = v13 == v34;
          v13 = v104;
          if (v38)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }
    }

    else
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_24;
      }
    }

LABEL_34:
    if (v98)
    {
      v39 = sub_21DBFBD7C();
    }

    else
    {
      v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = (v100 + v39);
    if (__OFADD__(v100, v39))
    {
      goto LABEL_49;
    }

    *&v106 = 0;
    BYTE8(v106) = 2;
    v40 = TTRListEditor.move(_:togetherWith:position:)(v103, v32, &v106);

    a1 = v40;
    MEMORY[0x223D42D80]();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v98 = v113;
    v15 = [v101 list];
    v41 = [a1 objectID];
    v42 = v93;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_21D2115B8(0, *(v102 + 2) + 1, 1, v102);
    }

    v44 = *(v102 + 2);
    v43 = *(v102 + 3);
    inited = (v44 + 1);
    if (v44 >= v43 >> 1)
    {
      v102 = sub_21D2115B8((v43 > 1), v44 + 1, 1, v102);
    }

    v45 = v102;
    *(v102 + 2) = inited;
    v46 = &v45[32 * v44];
    *(v46 + 4) = v15;
    *(v46 + 5) = v42;
    *(v46 + 6) = v41;
    *(v46 + 7) = v14;
    v21 = v94;
    v22 = v99;
    if (!v99)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  if (v88)
  {
    goto LABEL_60;
  }

LABEL_51:
  v100 = v10;
  v47 = *(v91 + 16);
LABEL_61:
  v50 = MEMORY[0x277D84F90];
  if (v47)
  {
    *&v106 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v47 < 0)
    {
      goto LABEL_102;
    }

    v51 = 0;
    inited = (v94 & 0xC000000000000001);
    v104 = (v94 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (inited)
      {
        v52 = MEMORY[0x223D44740](v51, v94);
      }

      else
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (v51 >= v104[2])
        {
          goto LABEL_101;
        }

        v52 = *(v94 + 8 * v51 + 32);
      }

      v53 = v52;
      ++v51;
      v54 = [v52 remObjectID];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v47 != v51);
    v55 = v94;
  }

  else
  {
    v55 = v21;
  }

  v56 = [v13 updateList_];
  v57 = sub_21D1BF9F4();

  v58 = v55;
  if ((v57 & 1) == 0)
  {
    *&v106 = v50;
    v104 = v56;
    if (v89)
    {
      v50 = 0;
      v59 = v55 & 0xC000000000000001;
      v60 = v55 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v59)
        {
          v61 = MEMORY[0x223D44740](v50, v58);
        }

        else
        {
          if (v50 >= *(v60 + 16))
          {
            goto LABEL_97;
          }

          v61 = *(v58 + 8 * v50 + 32);
        }

        v62 = v61;
        inited = (v50 + 1);
        if (__OFADD__(v50, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v63 = [v61 list];
        v64 = [v63 objectID];

        v65 = [v93 objectID];
        sub_21D0D8CF0(0, &qword_280D17880);
        LOBYTE(v63) = sub_21DBFB63C();

        if (v63)
        {
        }

        else
        {
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
        }

        ++v50;
        v58 = v94;
      }

      while (inited != v89);
      v50 = v106;
    }

    inited = sub_21D1778CC(MEMORY[0x277D84F90]);
    if ((v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
    {
      goto LABEL_103;
    }

    for (i = *(v50 + 16); i; i = sub_21DBFBD7C())
    {
      v67 = 0;
      while (1)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x223D44740](v67, v50);
        }

        else
        {
          if (v67 >= *(v50 + 16))
          {
            goto LABEL_99;
          }

          v68 = *(v50 + 8 * v67 + 32);
        }

        v69 = v68;
        v70 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        v71 = [v68 objectID];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v106 = inited;
        sub_21D477304(0, v71, isUniquelyReferenced_nonNull_native);

        inited = v106;
        ++v67;
        if (v70 == i)
        {
          goto LABEL_104;
        }
      }

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
      ;
    }

LABEL_104:

    v56 = v104;
    v73 = [v104 sectionsContextChangeItem];
    if (v73)
    {
      v74 = v73;
      v75 = v83;
      sub_21DBF560C();
      sub_21D1E449C(inited, v75);

      (*(v84 + 8))(v75, v85);
    }

    else
    {
    }

    v58 = v94;
  }

  v76 = v58;
  sub_21DBF8E0C();
  sub_21D20C388(v76, &v106);
  v77 = v106;
  sub_21D1826C4(v87, &v106);
  v78 = v107;
  if (v107)
  {
    v79 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    v105[0] = v77;
    v80 = swift_allocObject();
    v81 = v96;
    v80[2] = v95;
    v80[3] = v81;
    v80[4] = v102;
    v80[5] = v86;
    swift_unknownObjectRetain();
    TTRUndoContext.registerUndo(forEditing:action:)(v105, sub_21D974DE0, v80, v78, v79);

    __swift_destroy_boxed_opaque_existential_0(&v106);
  }

  else
  {

    sub_21D0CF7E0(&v106, &unk_27CE60D80);
  }

  return v98;
}

void sub_21D973080(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  if (a1)
  {
    v16 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE641B8);

    v18 = a1;
    v19 = a2;

    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v48 = a6;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v22 = 136315906;
      swift_getErrorValue();
      v24 = sub_21DBFC74C();
      v26 = sub_21D0CDFB4(v24, v25, v49);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2112;
      v27 = [v19 objectID];
      *(v22 + 14) = v27;
      *v23 = v27;
      *(v22 + 22) = 2048;
      swift_beginAccess();
      v28 = *(a4 + 16);
      if (v28 >> 62)
      {
        v29 = sub_21DBFBD7C();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a6 = v48;

      *(v22 + 24) = v29;

      *(v22 + 32) = 2048;
      swift_beginAccess();
      v30 = *(a5 + 16);

      *(v22 + 34) = v30;

      _os_log_impl(&dword_21D0C9000, v20, v21, "Failed to move reminders into list {error: %s, listID: %@, reminderCount: %ld, subtaskCount: %ld}", v22, 0x2Au);
      sub_21D0CF7E0(v23, &unk_27CE60070);
      MEMORY[0x223D46520](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);

      if (!v48)
      {
        goto LABEL_17;
      }
    }

    else
    {

      if (!a6)
      {
LABEL_17:

        return;
      }
    }

    v40 = a1;
    a6(a1);

    goto LABEL_17;
  }

  if (qword_27CE56E90 != -1)
  {
    swift_once();
  }

  v31 = sub_21DBF84BC();
  __swift_project_value_buffer(v31, qword_27CE641B8);
  v32 = a2;

  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAEDC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412802;
    v37 = [v32 objectID];
    *(v35 + 4) = v37;
    *v36 = v37;
    *(v35 + 12) = 2048;
    swift_beginAccess();
    v38 = *(a4 + 16);
    if (v38 >> 62)
    {
      v39 = sub_21DBFBD7C();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 14) = v39;

    *(v35 + 22) = 2048;
    swift_beginAccess();
    *(v35 + 24) = *(a5 + 16);

    _os_log_impl(&dword_21D0C9000, v33, v34, "Moved reminders into list {listID: %@, reminderCount: %ld, subtaskCount: %ld}", v35, 0x20u);
    sub_21D0CF7E0(v36, &unk_27CE60070);
    MEMORY[0x223D46520](v36, -1, -1);
    MEMORY[0x223D46520](v35, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = (*(a11 + 16))(a10, a11);
    if (v41)
    {
      v42 = v41;
      v43 = (*(a11 + 8))(a10, a11);
      if ([a9 canUndo])
      {
        v44 = swift_allocObject();
        *(v44 + 16) = a9;
        *(v44 + 24) = v43;
        sub_21D0D8CF0(0, &unk_280D17840);
        v45 = a9;
        v46 = v43;
        sub_21DBFAE8C();
      }
    }

    if (a6)
    {
      a6(0);
    }

    swift_unknownObjectRelease();
  }

  else if (a6)
  {
    a6(0);
  }
}

uint64_t sub_21D973698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  sub_21D0D32E4(a1, v12);
  v10 = sub_21D973750(a2, 1, v9, v12, a4, a5);

  sub_21D0CF7E0(v12, &unk_27CE60D80);
  return v10;
}

uint64_t sub_21D973750(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v144 = *MEMORY[0x277D85DE8];
  v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *&v136 = MEMORY[0x277D84FA0];
  v9 = *(a1 + 16);
  v120 = v8;
  v116 = a1;
  if (v9)
  {
    v10 = a1 + 56;
    v11 = *(a1 + 16);
    do
    {
      v12 = *(v10 - 8);
      v13 = *(v10 - 16);
      v14 = *(v10 - 24);
      v15 = v13;
      v16 = v12;
      sub_21DBF8E0C();
      sub_21D29B0D0(&v132, [v14 objectID]);

      sub_21D29B0D0(&v132, [v15 objectID]);

      v10 += 32;
      --v11;
    }

    while (v11);
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(v136);

    *&v136 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v17 = (v116 + 48);
    v18 = v9;
    do
    {
      v19 = *v17;
      v17 += 4;
      v20 = v19;
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v18;
    }

    while (v18);
  }

  else
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(MEMORY[0x277D84FA0]);
  }

  v21 = sub_21D0D8CF0(0, &qword_280D17880);
  v22 = sub_21DBFA5DC();

  *&v136 = 0;
  v23 = [a3 fetchRemindersWithObjectIDs:v22 error:&v136];

  v24 = v136;
  if (!v23)
  {
    v95 = v136;
    v33 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  v112 = a3;
  v25 = sub_21D0D8CF0(0, &qword_280D17860);
  sub_21D183A0C();
  v131 = v25;
  v26 = sub_21DBF9E6C();
  v27 = v24;

  v119 = v26;
  if (!v9)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_66:

    *(swift_allocObject() + 16) = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
    swift_allocObject();
    v106 = v120;
    v105 = sub_21DBF911C();
    sub_21D1826C4(a4, &v136);
    v107 = v137;
    if (v137)
    {
      v108 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, v137);
      *&v132 = v29;
      v109 = swift_allocObject();
      *(v109 + 16) = a5;
      *(v109 + 24) = a6;
      *(v109 + 32) = v115;
      *(v109 + 40) = v116;
      *(v109 + 48) = a2 & 1;
      *(v109 + 56) = v112;
      sub_21DBF8E0C();
      v110 = v112;
      TTRUndoContext.registerUndo(forEditing:action:)(&v132, sub_21D974DCC, v109, v107, v108);

      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {

      sub_21D0CF7E0(&v136, &unk_27CE60D80);
    }

    return v105;
  }

  v28 = 0;
  v130 = v21;
  v129 = v26 & 0xC000000000000001;
  v29 = MEMORY[0x277D84F90];
  v125 = v9;
  while (1)
  {
    v30 = v116 + 32 + 32 * v28;
    v31 = *v30;
    v32 = *(v30 + 8);
    v34 = *(v30 + 16);
    v33 = *(v30 + 24);
    if (v129)
    {
      v35 = v34;
      v36 = v31;
      v37 = v32;
      sub_21DBF8E0C();
      v38 = sub_21DBFC2CC();
      if (v38)
      {
        *&v132 = v38;
        swift_dynamicCast();
        v39 = v136;

        if (!v39)
        {
          goto LABEL_56;
        }

        goto LABEL_20;
      }

LABEL_56:
      if (qword_27CE56E90 != -1)
      {
        swift_once();
      }

      v86 = sub_21DBF84BC();
      __swift_project_value_buffer(v86, qword_27CE641B8);
      v87 = v34;
      v88 = v31;
      v89 = v32;
      sub_21DBF8E0C();
      v90 = sub_21DBF84AC();
      v91 = sub_21DBFAEBC();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        *(v92 + 4) = v87;
        *v93 = v87;
        v87 = v87;
        _os_log_impl(&dword_21D0C9000, v90, v91, "TTRMoveRemindersToListInteractorCapability#performUndo: missing reminder {objectID: %@}", v92, 0xCu);
        sub_21D0CF7E0(v93, &unk_27CE60070);
        v94 = v93;
        v9 = v125;
        MEMORY[0x223D46520](v94, -1, -1);
        MEMORY[0x223D46520](v92, -1, -1);
      }

      goto LABEL_12;
    }

    v40 = *(v119 + 16);
    v41 = v34;
    if (!v40)
    {
      v62 = v31;
      v63 = v32;
      sub_21DBF8E0C();
      goto LABEL_56;
    }

    v42 = v41;
    v43 = v31;
    v44 = v32;
    sub_21DBF8E0C();
    v45 = sub_21D17E07C(v42);
    if ((v46 & 1) == 0)
    {

      goto LABEL_56;
    }

    v39 = *(*(v119 + 56) + 8 * v45);

    if (!v39)
    {
      goto LABEL_56;
    }

LABEL_20:
    v128 = v39;
    if (a2)
    {
      v47 = v31;
    }

    else
    {
      v47 = v32;
    }

    sub_21D1826C4(a4, v143);
    sub_21D1826C4(v143, v142);
    v48 = v47;
    v49 = v120;
    v121 = v48;
    v50 = [v49 updateList_];
    sub_21D1826C4(v142, v140);
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v122 = v34;
    v123 = v32;
    v51 = qword_280D1AA18;

    sub_21D0CF7E0(v142, &unk_27CE60D80);
    type metadata accessor for TTRListEditor();
    inited = swift_initStackObject();
    v137 = type metadata accessor for TTRUserDefaults();
    v138 = &protocol witness table for TTRUserDefaults;
    *&v136 = v51;
    v53 = v51;
    sub_21D0CF7E0(v143, &unk_27CE60D80);
    *(inited + 64) = 0;
    *(inited + 16) = v50;
    v54 = v141;
    v55 = v140[1];
    *(inited + 24) = v140[0];
    *(inited + 40) = v55;
    *(inited + 56) = v54;
    v127 = inited;
    sub_21D0D15E0(&v136, inited + 72);
    v126 = [v49 updateReminder_];
    if (v33 >> 62)
    {
      v56 = sub_21DBFBD7C();
    }

    else
    {
      v56 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v124 = v50;
    if (!v56)
    {
      v61 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    *&v136 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    if (v56 < 0)
    {
      break;
    }

    v57 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x223D44740](v57, v33);
      }

      else
      {
        v58 = *(v33 + 8 * v57 + 32);
      }

      v59 = v58;
      ++v57;
      v60 = [v49 updateReminder_];

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v56 != v57);
    v61 = v136;
    v50 = v124;
LABEL_38:
    LOBYTE(v136) = 0;
    v64 = _s15RemindersUICore13TTRListEditorC30prepareToMoveByCopyingIfNeeded_12togetherWith2to05forceI0011allowsLossyI0010assignmentI0So21REMReminderChangeItemC8reminder_SayAKG8subtaskstAK_AMSo07REMListtU0CS2bAC010AssignmentI0OtFZ_0(v126, v61, v50, 0, 0, &v136);
    *&v136 = 0;
    BYTE8(v136) = 2;
    sub_21D1BF7A0(v64, v65, &v136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_21DC09CF0;
    *(v66 + 32) = [v126 objectID];
    sub_21D1BF9F4();

    v67 = [v64 objectID];
    v137 = v130;
    *&v136 = v67;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
    v139 = v68;
    v138 = v131;
    sub_21D22BFF0(&v136, &v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_21D2116C4(0, *(v29 + 2) + 1, 1, v29);
    }

    v9 = v125;
    v70 = *(v29 + 2);
    v69 = *(v29 + 3);
    if (v70 >= v69 >> 1)
    {
      v29 = sub_21D2116C4((v69 > 1), v70 + 1, 1, v29);
    }

    sub_21D22C04C(&v136);
    *(v29 + 2) = v70 + 1;
    v71 = &v29[64 * v70];
    v72 = v135;
    v73 = v132;
    v74 = v133;
    *(v71 + 4) = v134;
    *(v71 + 5) = v72;
    *(v71 + 2) = v73;
    *(v71 + 3) = v74;
    if (v33 >> 62)
    {
      v75 = sub_21DBFBD7C();
      if (!v75)
      {
LABEL_54:

        swift_setDeallocating();
        sub_21D0CF7E0(v127 + 24, &unk_27CE60D80);
        __swift_destroy_boxed_opaque_existential_0(v127 + 72);
        goto LABEL_12;
      }
    }

    else
    {
      v75 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_54;
      }
    }

    if (v75 < 1)
    {
      goto LABEL_71;
    }

    v76 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x223D44740](v76, v33);
      }

      else
      {
        v77 = *(v33 + 8 * v76 + 32);
      }

      v78 = v77;
      v79 = [v77 remObjectID];
      v137 = v130;
      v138 = v131;
      *&v136 = v79;
      v139 = v68;
      sub_21D22BFF0(&v136, &v132);
      v81 = *(v29 + 2);
      v80 = *(v29 + 3);
      if (v81 >= v80 >> 1)
      {
        v29 = sub_21D2116C4((v80 > 1), v81 + 1, 1, v29);
      }

      ++v76;

      sub_21D22C04C(&v136);
      *(v29 + 2) = v81 + 1;
      v82 = &v29[64 * v81];
      v83 = v135;
      v84 = v132;
      v85 = v133;
      *(v82 + 4) = v134;
      *(v82 + 5) = v83;
      *(v82 + 2) = v84;
      *(v82 + 3) = v85;
    }

    while (v75 != v76);

    swift_setDeallocating();
    sub_21D0CF7E0(v127 + 24, &unk_27CE60D80);
    __swift_destroy_boxed_opaque_existential_0(v127 + 72);
    v9 = v125;
LABEL_12:
    if (++v28 == v9)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_62:
  v96 = sub_21DBF84BC();
  __swift_project_value_buffer(v96, qword_27CE641B8);
  v97 = v33;
  v98 = sub_21DBF84AC();
  v99 = sub_21DBFAEBC();

  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v136 = v101;
    *v100 = 136446210;
    swift_getErrorValue();
    v102 = sub_21DBFC75C();
    v104 = sub_21D0CDFB4(v102, v103, &v136);

    *(v100 + 4) = v104;
    _os_log_impl(&dword_21D0C9000, v98, v99, "TTRMoveRemindersToListInteractorCapability#performUndo: failed to fetch reminders {error: %{public}s}", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x223D46520](v101, -1, -1);
    MEMORY[0x223D46520](v100, -1, -1);
  }

  *(swift_allocObject() + 16) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  swift_allocObject();
  v105 = sub_21DBF911C();

  return v105;
}

uint64_t sub_21D9745D4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 1;
  return a1(&v4);
}

void sub_21D974618(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_21D0D8CF0(0, &qword_280D1B900);

  v7 = sub_21DBFB12C();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D22D130;
  *(v8 + 24) = v6;
  v10[4] = sub_21D974D7C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21D11E5E4;
  v10[3] = &block_descriptor_119;
  v9 = _Block_copy(v10);

  [a3 saveWithQueue:v7 completion:v9];
  _Block_release(v9);
}

void sub_21D974754(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE641B8);
    v6 = a1;
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_21DBFC74C();
      v13 = sub_21D0CDFB4(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to undo move of reminders. %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    v14 = a1;
    a2(a1, 1);
  }

  else
  {
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE641B8);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "Undid move of reminders.", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    a2(0, 0);
  }
}

uint64_t sub_21D9749D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21D0D32E4(a1, v14);
  v12 = sub_21D973750(a3, (a4 & 1) == 0, a5, v14, a6, a7);
  sub_21D0CF7E0(v14, &unk_27CE60D80);
  return v12;
}

uint64_t _s15RemindersUICore07TTRMoveA26ToListInteractorCapabilityPAAE22fetchSubtasksForMoving2ofSaySo11REMReminderCGAG_tF_0(void *a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (v2)
  {
    v3 = v2;
    v24[0] = 0;
    v4 = [v2 fetchRemindersForMovingWithError_];
    v5 = v24[0];
    if (v4)
    {
      v6 = v4;
      sub_21D0D8CF0(0, &qword_280D17860);
      v7 = sub_21DBFA5EC();
      v8 = v5;

      return v7;
    }

    v10 = v24[0];
    v11 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56E90 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE641B8);
    v13 = a1;
    v14 = v11;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v17 = 138412546;
      v20 = [v13 objectID];
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_21DBFC74C();
      v23 = sub_21D0CDFB4(v21, v22, v24);

      *(v17 + 14) = v23;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Failed to fetch subtasks of reminder for moving {objectID: %@, error: %s}", v17, 0x16u);
      sub_21D0CF7E0(v18, &unk_27CE60070);
      MEMORY[0x223D46520](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x223D46520](v19, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D974D84(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 1;
  return a1(&v3);
}

uint64_t destroy for MoveReminderArguments(id *a1)
{
}

void *initializeWithCopy for MoveReminderArguments(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  a1[2] = v6;
  a1[3] = v5;
  v7 = v3;
  v8 = v4;
  v9 = v6;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for MoveReminderArguments(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for MoveReminderArguments(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = a2[1];

  return a1;
}

id DateComponents.rem_isAllDay.getter()
{
  v0 = sub_21DBF4EDC();
  v1 = [v0 rem_isAllDayDateComponents];

  return v1;
}

id DateComponents.rem_isValid.getter()
{
  v0 = sub_21DBF4EDC();
  v1 = [v0 rem_isValidDateComponents];

  return v1;
}

void sub_21D97505C(SEL *a1)
{
  v2 = sub_21DBF4EDC();
  v3 = [v2 *a1];

  sub_21DBF4EFC();
}

void DateComponents.rem_dateComponents(byAddingTimeInterval:)(double a1)
{
  v2 = sub_21DBF4EDC();
  v3 = [v2 rem:a1 dateComponentsByAddingTimeInterval:?];

  sub_21DBF4EFC();
}

id DateComponents.rem_isWeekend.getter()
{
  v0 = sub_21DBF4EDC();
  v1 = [v0 rem_isWeekendDateComponents];

  return v1;
}

id DateComponents.rem_localizedDayString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF563C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = sub_21DBF4EDC();
  sub_21DBF507C();
  v14 = *(v4 + 48);
  if (v14(v2, 1, v3) == 1)
  {
    v15 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v14(v2, 1, v3) != 1)
    {
      sub_21D1E0858(v2);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  v16 = objc_opt_self();
  v17 = sub_21DBF5C0C();
  (*(v4 + 8))(v6, v3);
  v18 = [v16 rem:v13 dateWithDateComponents:v17 timeZone:?];

  if (v18)
  {
    sub_21DBF55FC();

    v20 = v25;
    v19 = v26;
    (*(v25 + 32))(v12, v9, v26);
    if (qword_280D1B878 != -1)
    {
      swift_once();
    }

    v21 = qword_280D1B880;
    v22 = sub_21DBF55BC();
    v23 = [v21 stringFromDate_];

    v18 = sub_21DBFA16C();
    (*(v20 + 8))(v12, v19);
  }

  return v18;
}

uint64_t sub_21D975538(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = sub_21DBF582C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_21DBF5C4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21DBF563C();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v50 = &v39 - v18;
  v19 = sub_21DBF4EDC();
  v48 = v2;
  sub_21DBF507C();
  v20 = *(v12 + 48);
  v21 = v20(v10, 1, v11);
  v44 = v7;
  v40 = v20;
  if (v21 == 1)
  {
    v22 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v20(v10, 1, v11) != 1)
    {
      sub_21D1E0858(v10);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v23 = objc_opt_self();
  v24 = sub_21DBF5C0C();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v26 = [v23 rem:v19 dateWithDateComponents:v24 timeZone:?];

  if (!v26)
  {
    return 0;
  }

  sub_21DBF55FC();

  v27 = v47;
  v28 = v49;
  (*(v47 + 32))(v50, v16, v49);
  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v30 = v41;
  sub_21DBF56FC();
  v31 = sub_21DBF574C();
  (*(v42 + 8))(v30, v43);
  [v29 setLocale_];

  [v29 setDateStyle_];
  [v29 setTimeStyle_];
  v32 = v44;
  sub_21DBF507C();
  if (v40(v32, 1, v11) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_21DBF5C0C();
    v25(v32, v11);
  }

  [v29 setTimeZone_];

  v35 = v50;
  v36 = sub_21DBF55BC();
  v37 = [v29 stringFromDate_];

  v34 = sub_21DBFA16C();
  (*(v27 + 8))(v35, v28);
  return v34;
}

id static TTROneshotEditing.saveRequest(in:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D447D8]);

  return [v2 initWithStore_];
}

uint64_t TTROneshotEditing.init(item:saveRequest:undoContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v17[-v13 - 8];
  (*(v11 + 16))(&v17[-v13 - 8], a1, AssociatedTypeWitness, v12);
  sub_21D1826C4(a3, v17);
  (*(a5 + 24))(v14, a2, v17, 0, a4, a5);
  sub_21D311700(a3);
  return (*(v11 + 8))(a1, AssociatedTypeWitness);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  if (a2)
  {
    v13 = type metadata accessor for TTRBasicUndoContext();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    v14 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v15 = a2;
  static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(a1, v17, a3, a4, 0, 0, a5, a6);
  return sub_21D311700(v17);
}

id static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v33 = a4;
  v29 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v28 = *(v16 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v28 - v18;
  v20 = *(a9 + 40);
  v37 = a9;
  v21 = v20(a2, a8, a9, v17);
  [v21 setSaveIsNoopIfNoChangedKeys_];
  if (a3)
  {
    REMSaveRequest.prepareForMutatingOrder(inListsWithIDs:)(a3);
  }

  v38 = v21;
  if (!sub_21DBFA6DC())
  {
    return v38;
  }

  v22 = 0;
  v30 = *(v37 + 24);
  v31 = v37 + 24;
  v32 = (v16 + 16);
  v23 = (v29 + 8);
  while (1)
  {
    v24 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v24)
    {
      (*(v16 + 16))(v19, a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v22, AssociatedTypeWitness);
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    result = sub_21DBFBF7C();
    if (v28 != 8)
    {
      break;
    }

    v39[0] = result;
    (*v32)(v19, v39, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_12:
      __break(1u);
      return v38;
    }

LABEL_7:
    sub_21D1826C4(v33, v39);
    v26 = v38;
    v30(v19, v26, v39, v34 & 1, a8, v37);
    v35(v14);
    (*v23)(v14, a8);
    ++v22;
    if (v25 == sub_21DBFA6DC())
    {
      return v38;
    }
  }

  __break(1u);
  return result;
}

void static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = MEMORY[0x223D45970]();
  sub_21D976B90(v8, a1, a2, a3, a4, a5, a6, a7, a8, &v18);
  objc_autoreleasePoolPop(v17);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(a8 + 32))(a1, a7, a8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  v15 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  v16 = sub_21DBFA60C();
  (*(v15 + 16))(v17, a1, AssociatedTypeWitness);
  sub_21D23C8B4();
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(v16, v13, 0, a2, a3, a4, 0, 0, a5, a6, a7, a8);
}

uint64_t TTROneshotEditing.init(item:saveRequest:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20[-1] - v13;
  (*(v11 + 16))(&v20[-1] - v13, a1, AssociatedTypeWitness, v12);
  v15 = 0;
  if (a3)
  {
    v16 = type metadata accessor for TTRBasicUndoContext();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v17 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  v20[0] = v15;
  v20[3] = v16;
  v20[4] = v17;
  TTROneshotEditing.init(item:saveRequest:undoContext:)(v14, a2, v20, a4, a5);
  return (*(v11 + 8))(a1, AssociatedTypeWitness);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  if (a3)
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v16 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v14;
  v19[3] = v15;
  v19[4] = v16;
  v17 = a3;
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a1, a2, 0, v19, a4, a5, 0, 0, 0, 0, a6, a7);
  return sub_21D311700(v19);
}

void static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a1, a2, a3, a4, 0, a5, a6, a11, a12);
  if (a7)
  {
    a7();
  }

  sub_21D0CE468();
  v15 = sub_21DBFB12C();
  v16 = swift_allocObject();
  v16[2] = a11;
  v16[3] = a12;
  v16[4] = a1;
  v16[5] = a9;
  v16[6] = a10;
  aBlock[4] = sub_21D97766C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_120;
  v17 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  sub_21D0D0E78(a9);

  [v14 saveWithQueue:v15 completion:v17];
  _Block_release(v17);
}

uint64_t sub_21D976634()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641D0);
  v1 = __swift_project_value_buffer(v0, qword_27CE641D0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D976714(id a1, uint64_t a2, void (*a3)(id))
{
  if (a1)
  {
    v5 = a1;
    if (qword_27CE56E98 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE641D0);
    v7 = a1;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC74C();
      v14 = sub_21D0CDFB4(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Failed to save oneshot edit {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);

      if (!a3)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }
  }

  else
  {
    if (qword_27CE56E98 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_27CE641D0);
    sub_21DBF8E0C();
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAE9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      swift_getAssociatedTypeWitness();
      *(v18 + 4) = sub_21DBFA6DC();

      _os_log_impl(&dword_21D0C9000, v16, v17, "Did perform oneshot edit {items.count: %ld}", v18, 0xCu);
      MEMORY[0x223D46520](v18, -1, -1);

      if (!a3)
      {
        return;
      }
    }

    else
    {

      if (!a3)
      {
        return;
      }
    }
  }

  a3(a1);
}

void static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = MEMORY[0x223D45970]();
  sub_21D976AA8(v7, a1, a2, a3, a4, a5, a6, a7, &v16);
  objc_autoreleasePoolPop(v15);
}

void sub_21D976AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v9 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a2, a3, 0, a4, 1, a5, a6, a7, a8);
  v13[0] = 0;
  if ([v9 saveSynchronouslyWithError_])
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    v12 = sub_21DBF52DC();

    swift_willThrow();
    *a9 = v12;
  }
}

void sub_21D976B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v10 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a2, a3, a4, a5, 1, a6, a7, a8, a9);
  v14[0] = 0;
  if ([v10 saveSynchronouslyWithError_])
  {
    v11 = v14[0];
  }

  else
  {
    v12 = v14[0];
    v13 = sub_21DBF52DC();

    swift_willThrow();
    *a10 = v13;
  }
}

void static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoContext:editBlock:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v29 - v12;
  v13 = (*(a6 + 32))(a1, a5, a6, v11);
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v14 = sub_21DBFA60C();
  v15 = *(v10 + 16);
  v15(v16, a1, AssociatedTypeWitness);
  sub_21D23C8B4();
  v33 = v13;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(v14, v13, 0, v30, v31, v32, a5, a6);
  v17 = v10;
  v18 = v29;

  if (qword_27CE56E98 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE641D0);
  v15(v18, a1, AssociatedTypeWitness);
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAE9C();
  v22 = v17;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    DynamicType = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v25 = sub_21DBFA1AC();
    v27 = v26;
    (*(v22 + 8))(v18, AssociatedTypeWitness);
    v28 = sub_21D0CDFB4(v25, v27, &v35);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_21D0C9000, v20, v21, "Did perform oneshot edit {type: %s}", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223D46520](v24, -1, -1);
    MEMORY[0x223D46520](v23, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v18, AssociatedTypeWitness);
  }
}

uint64_t static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:completionBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  if (a2)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v19 = a2;
  static TTROneshotEditing.oneshotEdit(_:undoContext:editBlock:completionBlock:)(a1, v21, a3, a4, a5, a6, a7, a8);
  return sub_21D311700(v21);
}

uint64_t static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoManager:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = 0;
  if (a4)
  {
    v18 = type metadata accessor for TTRBasicUndoContext();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v19 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v20 = a4;
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a1, a2, a3, v23, a5, a6, 0, 0, a7, a8, a9, a10);
  return sub_21D311700(v23);
}

uint64_t static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  if (a3)
  {
    v15 = type metadata accessor for TTRBasicUndoContext();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    v16 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v14;
  v19[3] = v15;
  v19[4] = v16;
  v17 = a3;
  static TTROneshotEditing.oneshotEditWithSyncSave(_:store:undoContext:editBlock:)(a1, a2, v19, a4, a5, a6, a7);
  return sub_21D311700(v19);
}

uint64_t static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoManager:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0;
  if (a4)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v21[1] = 0;
    v21[2] = 0;
  }

  v21[0] = v16;
  v21[3] = v17;
  v21[4] = v18;
  v19 = a4;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:)(a1, a2, a3, v21, a5, a6, a7, a8);
  return sub_21D311700(v21);
}

uint64_t static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoManager:editBlock:)(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = 0;
  if (a2)
  {
    v13 = type metadata accessor for TTRBasicUndoContext();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    v14 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17[1] = 0;
    v17[2] = 0;
  }

  v17[0] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v15 = a2;
  static TTROneshotEditing.unitTest_oneshotEditWithSyncSave(_:undoContext:editBlock:)(a1, v17, a3, a4, a5, a6);
  return sub_21D311700(v17);
}

id static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoManager:unitTest_oneShotSyncSaveForUndo:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = 0;
  if (a4)
  {
    v18 = type metadata accessor for TTRBasicUndoContext();
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    v19 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v23[1] = 0;
    v23[2] = 0;
  }

  v23[0] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v20 = a4;
  v21 = static TTROneshotEditing.performEdit(_:store:listIDsForOrderMutationPreparation:undoContext:unitTest_oneShotSyncSaveForUndo:editBlock:)(a1, a2, a3, v23, a5 & 1, a6, a7, a8, a9);
  sub_21D311700(v23);
  return v21;
}

void sub_21D9776CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC09CF0;
  *(v7 + 32) = a1;
  v8 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v9 = a1;
  v26 = v6;
  v10 = [v8 initWithStore_];
  [v10 setSaveIsNoopIfNoChangedKeys_];
  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    v12 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_21D1826C4(a2, aBlock);
      v15 = v10;
      v16 = [v15 updateList_];
      sub_21D1826C4(aBlock, v33);
      if (qword_280D1AA10 != -1)
      {
        swift_once();
      }

      ++v12;
      v17 = qword_280D1AA18;

      sub_21D311700(aBlock);
      type metadata accessor for TTRListEditor();
      v18 = swift_allocObject();
      v31 = type metadata accessor for TTRUserDefaults();
      v32 = &protocol witness table for TTRUserDefaults;
      *&v30 = v17;
      *(v18 + 64) = 0;
      *(v18 + 16) = v16;
      v19 = v33[1];
      *(v18 + 24) = v33[0];
      *(v18 + 40) = v19;
      *(v18 + 56) = v34;
      swift_beginAccess();
      *(v18 + 64) = 0;
      sub_21D0D15E0(&v30, v18 + 72);
      v20 = v17;
      a5(v18);
    }

    while (v11 != v12);
  }

  sub_21D0CE468();
  v21 = sub_21DBFB12C();
  v22 = swift_allocObject();
  v22[2] = v7;
  v22[3] = a3;
  v22[4] = a4;
  aBlock[4] = sub_21D1D1AC8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_12_4;
  v23 = _Block_copy(aBlock);
  sub_21D0D0E78(a3);

  [v10 saveWithQueue:v21 completion:v23];
  _Block_release(v23);
}

void sub_21D9779E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v25 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateSmartList_];

      type metadata accessor for TTRSmartListEditor();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = v27;
      *(v18 + 24) = aBlock;
      *(v18 + 40) = v19;
      *(v18 + 56) = v28;
      *(v18 + 64) = 0;
      a5();
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v20 = sub_21DBFB12C();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = a3;
  v21[4] = a4;
  v28 = sub_21D1D1AC8;
  v29 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_21D11E5E4;
  *(&v27 + 1) = &block_descriptor_18_2;
  v22 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3);

  [v12 saveWithQueue:v20 completion:v22];
  _Block_release(v22);
}

void sub_21D977C68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v25 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateTemplate_];

      type metadata accessor for TTRTemplateEditor();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v19 = v27;
      *(v18 + 24) = aBlock;
      *(v18 + 40) = v19;
      *(v18 + 56) = v28;
      *(v18 + 64) = 0;
      a5();
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v20 = sub_21DBFB12C();
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = a3;
  v21[4] = a4;
  v28 = sub_21D1D1AC8;
  v29 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_21D11E5E4;
  *(&v27 + 1) = &block_descriptor_24_2;
  v22 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3);

  [v12 saveWithQueue:v20 completion:v22];
  _Block_release(v22);
}

void sub_21D977EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22._countAndFlagsBits = a4;
  v22._object = a5;
  v23 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v23 setSaveIsNoopIfNoChangedKeys_];
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_21D0CE468();
    v19 = sub_21DBFB12C();
    v20 = swift_allocObject();
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = a1;
    aBlock[4] = sub_21D1D1AC8;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_6_5;
    v21 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    [v23 saveWithQueue:v19 completion:v21];
    _Block_release(v21);

    return;
  }

  v7 = sub_21DBFBD7C();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v10 = a1;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x223D44740](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      ++v8;
      sub_21D1826C4(a3, aBlock);
      v13 = v23;
      v14 = [v13 updateReminder_];
      sub_21D1826C4(aBlock, v25);
      type metadata accessor for TTRReminderEditor();
      v15 = swift_allocObject();
      *(v15 + 72) = 0;
      *(v15 + 16) = v14;
      sub_21D1826C4(v25, v15 + 24);
      *(v15 + 64) = 0;
      v16 = v14;
      v17 = [v16 fetchedCurrentDueDateDeltaAlert];

      sub_21D311700(v25);
      sub_21D311700(aBlock);
      v18 = *(v15 + 72);
      *(v15 + 72) = v17;

      TTRReminderEditor.edit(tagged:withHashtagNamed:)(1, v22);

      a1 = v10;
    }

    while (v7 != v8);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_21D97823C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  v12 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC09CF0;
  *(v13 + 32) = a1;
  v14 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v15 = a1;
  v31 = v12;
  v16 = [v14 initWithStore_];
  [v16 setSaveIsNoopIfNoChangedKeys_];
  v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    v18 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223D44740](v18, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      sub_21D1826C4(a2, &aBlock);
      v21 = [v16 updateAccount_];

      type metadata accessor for TTRAccountEditor();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v23 = v33;
      *(v22 + 24) = aBlock;
      *(v22 + 40) = v23;
      *(v22 + 56) = v34;
      *(v22 + 64) = 0;
      a9(a5);
    }

    while (v17 != v18);
  }

  sub_21D0CE468();
  v24 = sub_21DBFB12C();
  v25 = swift_allocObject();
  v25[2] = v13;
  v25[3] = a3;
  v25[4] = a4;
  v34 = a7;
  v35 = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_21D11E5E4;
  *(&v33 + 1) = a8;
  v26 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3);

  [v16 saveWithQueue:v24 completion:v26];
  _Block_release(v26);
}

void sub_21D9784B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 store];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = a1;
  v10 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v11 = a1;
  v28 = v8;
  v12 = [v10 initWithStore_];
  [v12 setSaveIsNoopIfNoChangedKeys_];
  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    v14 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      sub_21D1826C4(a2, &aBlock);
      v17 = [v12 updateAccount_];

      type metadata accessor for TTRAccountEditor();
      inited = swift_initStackObject();
      *(inited + 16) = v17;
      v19 = v31;
      v20 = v30;
      *(inited + 24) = aBlock;
      *(inited + 40) = v20;
      *(inited + 56) = v19;
      *(inited + 64) = 0;
      v21 = [v17 saveRequest];
      v22 = [v21 updateTemplate_];
      [v22 removeFromParentAccount];
    }

    while (v13 != v14);
  }

  sub_21D0CE468();
  v23 = sub_21DBFB12C();
  v24 = swift_allocObject();
  v24[2] = v9;
  v24[3] = a3;
  v24[4] = a4;
  v31 = sub_21D1D1AC8;
  v32 = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_21D11E5E4;
  *(&v30 + 1) = &block_descriptor_30_2;
  v25 = _Block_copy(&aBlock);
  sub_21D0D0E78(a3);

  [v12 saveWithQueue:v23 completion:v25];
  _Block_release(v25);
}

uint64_t sub_21D9787B0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE641F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE641F0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D978878(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  sub_21DBF8E0C();
  v5 = sub_21DBFA12C();

  v6 = [v4 localizedStringForLabel_];

  sub_21DBFA16C();
  sub_21D176F0C();
  v7 = MEMORY[0x277D837D0];
  v8 = sub_21DBFBB4C();
  v10 = v9;

  v11 = [a3 contactType];
  if (v11 == 1)
  {
    v12 = [objc_opt_self() stringFromContact:a3 style:0];
    if (v12)
    {
      v13 = v12;

      sub_21DBFA16C();
    }

    else
    {
      if (qword_27CE56EA0 != -1)
      {
        swift_once();
      }

      v21 = sub_21DBF84BC();
      __swift_project_value_buffer(v21, qword_27CE641F0);
      v22 = a3;
      v13 = sub_21DBF84AC();
      v23 = sub_21DBFAEBC();

      if (os_log_type_enabled(v13, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v22;
        v26 = v22;
        _os_log_impl(&dword_21D0C9000, v13, v23, "contact is missing name -- returning cnLocalizedLabel {contact: %@}", v24, 0xCu);
        sub_21D560EB8(v25);
        MEMORY[0x223D46520](v25, -1, -1);
        MEMORY[0x223D46520](v24, -1, -1);
      }
    }
  }

  else if (v11)
  {
    if (qword_27CE56EA0 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE641F0);
    v29 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v29);
    sub_21DAEAB00("unknown contact type", 20, 2);
    __break(1u);
  }

  else
  {
    v14 = [a3 givenName];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v18 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21DC08D20;
      *(v19 + 56) = v7;
      v20 = sub_21D17A884();
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      *(v19 + 96) = v7;
      *(v19 + 104) = v20;
      *(v19 + 64) = v20;
      *(v19 + 72) = v8;
      *(v19 + 80) = v10;
      sub_21DBFA13C();
    }

    else
    {

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_21DC08D00;
      *(v27 + 56) = v7;
      *(v27 + 64) = sub_21D17A884();
      *(v27 + 32) = v15;
      *(v27 + 40) = v17;
      sub_21DBFA13C();
    }
  }
}

id sub_21D978DB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  sub_21D978878(v5, v7, v8);

  v9 = sub_21DBFA12C();

  return v9;
}

uint64_t sub_21D978E58()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64210);
  v1 = __swift_project_value_buffer(v0, qword_27CE64210);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D978F60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = (v1 + qword_27CE64228);
  *v5 = 0;
  v5[1] = 0;
  v6 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v6 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v6 & *v1) + 0x90)) = 0;
  v7 = v1 + *((*v6 & *v1) + 0x78);
  *v7 = v2;
  *(v7 + 1) = v3;
  v7[16] = v4;
  *(v1 + *((*v6 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v6 & *v1) + 0x88));
  *v8 = 0xD000000000000012;
  v8[1] = 0x800000021DC71840;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64390);
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_21D9790CC(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78));
  swift_beginAccess();
  result = *v4;
  v6 = v4[1];
  if ((result & 0x8000000000000000) != 0 && (v7 = __OFSUB__(0, result), result = -result, v7))
  {
    __break(1u);
  }

  else
  {
    sub_21D97926C(result);
    result = sub_21D97A14C(v6);
    v8 = *(a1 + qword_27CE64278);
    *(a1 + qword_27CE64278) = result;
    if (v8 != result)
    {
      return sub_21D97A234();
    }
  }

  return result;
}

id sub_21D97926C(id result)
{
  v2 = *(v1 + qword_27CE64270);
  *(v1 + qword_27CE64270) = result;
  if (v2 != result)
  {
    sub_21D97A030();
    v3 = *(v1 + qword_27CE64258);
    v4 = *(v1 + qword_27CE64260 + 8);
    if (*(v4 + 16) && (v5 = sub_21D17E780(1), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }

    return [v3 reloadComponent_];
  }

  return result;
}

void *sub_21D97930C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_21D97933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[qword_27CE64250 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = qword_27CE64268;
  *&v4[qword_27CE64268] = &unk_282EA8080;
  *&v4[qword_27CE64270] = 1;
  v4[qword_27CE64278] = 1;
  v9 = [objc_allocWithZone(MEMORY[0x277D75840]) initWithFrame_];
  *&v4[qword_27CE64258] = v9;
  v10 = *&v4[v8];
  v11 = v9;
  v12 = sub_21DBF8E0C();
  v13 = sub_21D97A334(v12);
  v14 = &v4[qword_27CE64260];
  *v14 = v10;
  v14[1] = v13;
  if (a3)
  {
    v15 = sub_21DBFA12C();
  }

  else
  {
    v15 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, a1, v15);

  v17 = qword_27CE5AF20;
  v18 = *&v16[qword_27CE5AF20];
  v19 = v16;
  [v18 setAxis_];
  [v11 setDelegate_];
  v20 = *&v16[v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC09CF0;
  *(v21 + 32) = v11;
  sub_21D114EC8();
  v22 = v11;
  v23 = v20;
  v24 = sub_21DBFA5DC();

  [v23 setArrangedSubviews_];

  sub_21D97A030();
  sub_21D97A234();

  return v19;
}

char *sub_21D97955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return sub_21D97933C(a3, a4, v6);
}

void sub_21D9795DC()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_27CE64250 + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D979658()
{
  v1 = *(v0 + qword_27CE64258);
  v2 = [v1 numberOfComponents];
  v3 = v2;
  v4 = *(v0 + qword_27CE64260 + 8);
  if (*(v4 + 16))
  {
    v5 = sub_21D17E780(0);
    if (v6)
    {
      if (*(*(v4 + 56) + 8 * v5) >= v3)
      {
        return 1;
      }
    }

    else if (v3 < 1)
    {
      return 1;
    }

    v7 = sub_21D17E780(0);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      goto LABEL_12;
    }
  }

  else if (v2 <= 0)
  {
    return 1;
  }

  v9 = 0;
LABEL_12:
  v11 = [v1 selectedRowInComponent_];
  v12 = __OFADD__(v11, 1);
  result = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21D979728()
{
  v1 = *(v0 + qword_27CE64258);
  v2 = [v1 numberOfComponents];
  v3 = v2;
  v4 = *(v0 + qword_27CE64260 + 8);
  if (*(v4 + 16))
  {
    v5 = sub_21D17E780(1);
    if (v6)
    {
      if (*(*(v4 + 56) + 8 * v5) >= v3)
      {
        return 1;
      }
    }

    else if (v3 < 1)
    {
      return 1;
    }

    v7 = sub_21D17E780(1);
    if (v8)
    {
      v9 = *(*(v4 + 56) + 8 * v7);
      goto LABEL_12;
    }
  }

  else if (v2 <= 0)
  {
    return 1;
  }

  v9 = 0;
LABEL_12:
  result = [v1 selectedRowInComponent_];
  if (result >= 5)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_21D9797F4()
{
  sub_21D157444(v0 + qword_27CE64250);
}

uint64_t sub_21D979868(uint64_t a1)
{
  sub_21D157444(a1 + qword_27CE64250);
}

id sub_21D979A14(uint64_t a1)
{
  v3 = [*(v1 + qword_27CE64258) effectiveUserInterfaceLayoutDirection];
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor_];

  v6 = *MEMORY[0x277D74418];
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:23.0 weight:v6];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithDesign_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];

    v8 = v11;
  }

  v12 = v3 == 1;
  [v4 setFont_];

  if (a1 == 1)
  {
    v13 = 2 * v12;
  }

  else
  {
    v13 = 1;
  }

  [v4 setTextAlignment_];
  return v4;
}

uint64_t sub_21D979BB8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0 || (v4 = *(v2 + qword_27CE64260), *(v4 + 16) <= a2) || (*(v4 + a2 + 32) & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = __OFADD__(a1, 1);
    v10 = a1 + 1;
    if (v9)
    {
      __break(1u);
      goto LABEL_17;
    }

    v11 = v8;
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v13 = [v11 localizedStringFromNumber:v12 numberStyle:1];

    v14 = sub_21DBFA16C();
    return v14;
  }

  if (a1 > 4)
  {
    return 0;
  }

  result = sub_21D979658();
  v6 = -result;
  if (__OFSUB__(0, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_18:
    swift_once();
    return sub_21DBF516C();
  }

  if (!__OFSUB__(0, v6))
  {
    return _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO16intervalUnitText5count0gH0SSSi_So015REMDueDateDeltaH0VtFZ_0(result, a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_21D979F44()
{
  result = qword_27CE64370;
  if (!qword_27CE64370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64370);
  }

  return result;
}

unint64_t sub_21D979FDC()
{
  result = qword_27CE64388;
  if (!qword_27CE64388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64388);
  }

  return result;
}

int64_t sub_21D97A030()
{
  v1 = v0;
  v2 = *(v0 + qword_27CE64258);
  result = [v2 numberOfComponents];
  v4 = result;
  v5 = *(v0 + qword_27CE64260 + 8);
  if (!*(v5 + 16))
  {
    if (result <= 0)
    {
      return result;
    }

    v7 = *(v1 + qword_27CE64270);
    v8 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
LABEL_14:
      v11 = 0;
      if (v8 < 0)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  result = sub_21D17E780(0);
  if (v6)
  {
    if (*(*(v5 + 56) + 8 * result) >= v4)
    {
      return result;
    }
  }

  else if (v4 < 1)
  {
    return result;
  }

  v9 = *(v1 + qword_27CE64270);
  v8 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    goto LABEL_20;
  }

  result = sub_21D17E780(0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = *(*(v5 + 56) + 8 * result);
  if (v8 < 0)
  {
    return result;
  }

LABEL_15:
  if ((v11 & 0x8000000000000000) == 0)
  {

    return [v2 selectRow:v8 inComponent:? animated:?];
  }

  return result;
}

unint64_t sub_21D97A14C(unint64_t result)
{
  if (result >= 5)
  {
    if (qword_27CE56EA8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE64210);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "TTRIIntervalPickerTableCell.Units: Invalid remValue", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }

    return 1;
  }

  return result;
}

int64_t sub_21D97A234()
{
  v1 = v0;
  v2 = *(v0 + qword_27CE64258);
  result = [v2 numberOfComponents];
  v4 = result;
  v5 = *(v0 + qword_27CE64260 + 8);
  if (*(v5 + 16))
  {
    result = sub_21D17E780(1);
    if (v6)
    {
      if (*(*(v5 + 56) + 8 * result) >= v4)
      {
        return result;
      }
    }

    else if (v4 <= 0)
    {
      return result;
    }

    v8 = *(v1 + qword_27CE64278);
    v9 = sub_21D17E780(1);
    if (v10)
    {
      v7 = *(*(v5 + 56) + 8 * v9);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (result <= 0)
    {
      return result;
    }

    v7 = 0;
    v8 = *(v1 + qword_27CE64278);
  }

  return [v2 selectRow:v8 inComponent:v7 animated:0];
}

uint64_t sub_21D97A334(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = 0;
  v3 = a1 + 32;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v5 = *(v3 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = sub_21D17E780(v5);
    v9 = v4[2];
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      break;
    }

    v13 = v8;
    if (v4[3] < v12)
    {
      sub_21D218DBC(v12, isUniquelyReferenced_nonNull_native);
      v7 = sub_21D17E780(v5);
      if ((v13 & 1) != (v14 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v13)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v17 = v7;
    sub_21D2224F4();
    v7 = v17;
    if (v13)
    {
LABEL_3:
      *(v4[7] + 8 * v7) = v2;
      goto LABEL_4;
    }

LABEL_11:
    v4[(v7 >> 6) + 8] |= 1 << v7;
    *(v4[6] + 8 * v7) = v5;
    *(v4[7] + 8 * v7) = v2;
    v15 = v4[2];
    v11 = __OFADD__(v15, 1);
    v16 = v15 + 1;
    if (v11)
    {
      goto LABEL_18;
    }

    v4[2] = v16;
LABEL_4:
    if (v1 == ++v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

void sub_21D97A49C()
{
  *(v0 + qword_27CE64250 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_27CE64268) = &unk_282EA80A8;
  *(v0 + qword_27CE64270) = 1;
  *(v0 + qword_27CE64278) = 1;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D97A540()
{
  result = sub_21D979658();
  v2 = -result;
  if (__OFSUB__(0, result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_21D979728();
  v3 = result;
  if (v2 < 0)
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      goto LABEL_16;
    }
  }

  sub_21D97926C(v2);
  v5 = sub_21D97A14C(v3);
  v6 = qword_27CE64278;
  v7 = *(v0 + qword_27CE64278);
  *(v0 + qword_27CE64278) = v5;
  if (v7 != v5)
  {
    sub_21D97A234();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v0 + qword_27CE64270);
    v9 = -v8;
    if (!__OFSUB__(0, v8))
    {
      v10 = result;
      v11 = *(v0 + v6);
      sub_21D5C732C(-v8, v11, 1);
      v12 = *(v10 + qword_27CE64228);
      if (v12)
      {
        v13[0] = v9;
        v13[1] = v11;
        v14 = 1;

        v12(v13);
        swift_unknownObjectRelease();
        return sub_21D0D0E88(v12);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    goto LABEL_15;
  }

  return result;
}

Swift::Bool __swiftcall TTRReminderDetailCompletionState.prepareToCommitOrCancel()()
{
  v1 = *v0;
  if (!*v0)
  {
    *v0 = 1;
  }

  return v1 == 0;
}

uint64_t TTRReminderDetailCompletionState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D97A758()
{
  result = qword_27CE64398;
  if (!qword_27CE64398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64398);
  }

  return result;
}

uint64_t initializeWithCopy for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRSESuggestedRemindersState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void sub_21D97A914(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = v11;
    if (a2 < 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = v12;
    swift_bridgeObjectRetain_n();
    v36 = a3;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v35 = MEMORY[0x277D84F90];
    v14 = a2 >> 62;
    for (i = a2 >> 62; ; v14 = i)
    {
      v15 = v13;
      if (!v14)
      {
        break;
      }

      while (2)
      {
        v16 = sub_21DBFBD7C();
        if (v15 == v16)
        {
          goto LABEL_30;
        }

        while (1)
        {
LABEL_12:
          if ((a2 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x223D44740](v15, a2);
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              return;
            }

            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v17 = *(a2 + 8 * v15 + 32);
          }

          v18 = v17;
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_34;
          }

          if (*(a4 + 16))
          {
            v19 = sub_21D17E07C(v17);
            if (v20)
            {
              break;
            }
          }

          ++v15;
          if (v13 == v16)
          {
            goto LABEL_30;
          }
        }

        v21 = *(*(a4 + 56) + 24 * v19);
        sub_21DBF8E0C();

        v22 = sub_21D1E21BC(v21, v36);

        if (v22)
        {

          v15 = v13;
          if (i)
          {
            continue;
          }

          goto LABEL_7;
        }

        break;
      }

      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = v32;
      (*(*(v24 - 8) + 56))(v32 + v23, 1, 1, v24);
      *v25 = v21;
      swift_storeEnumTagMultiPayload();
      v26 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_21D214F10(0, v26[2] + 1, 1, v26);
      }

      v28 = v26[2];
      v27 = v26[3];
      v35 = v26;
      if (v28 >= v27 >> 1)
      {
        v35 = sub_21D214F10(v27 > 1, v28 + 1, 1, v35);
      }

      v29 = v35;
      v35[2] = v28 + 1;
      sub_21D97BA40(v32, v29 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28);
    }

LABEL_7:
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 != v16)
    {
      goto LABEL_12;
    }

LABEL_30:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v30 = v35;
    if (v35[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21DC08D00;
      swift_storeEnumTagMultiPayload();
      v37 = v31;
      sub_21D5635D0(v30);
    }

    else
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A60);
    *(swift_allocObject() + 16) = xmmword_21DC08D20;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_21D97AD40(char a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = sub_21DBF604C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D44DA8], v7, v9);
  v12 = sub_21DBF603C();
  (*(v8 + 8))(v11, v7);
  result = 0;
  if ((v12 & 1) == 0 || (a1 & 1) == 0)
  {
    return result;
  }

  v34 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_62:
    v14 = sub_21DBFBD7C();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = a2 & 0xC000000000000001;
  v36 = a2 + 32;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v16 = 0;
  while (1)
  {
    if (v14 == v16)
    {
      v16 = v14;
      if (v34)
      {
        goto LABEL_19;
      }

LABEL_16:
      v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 != v21)
      {
        goto LABEL_22;
      }

      goto LABEL_48;
    }

    if (v15)
    {
      v18 = MEMORY[0x223D44740](v16, a2);
    }

    else
    {
      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v18 = *(a2 + 8 * v16 + 32);
    }

    v19 = v18;
    if (*(a4 + 16))
    {
      sub_21D17E07C(v18);
      if (v20)
      {
        break;
      }
    }

    v17 = __OFADD__(v16++, 1);
    if (v17)
    {
      goto LABEL_57;
    }
  }

  if (!v34)
  {
    goto LABEL_16;
  }

LABEL_19:
  v21 = sub_21DBFBD7C();
  if (v16 != v21)
  {
LABEL_22:
    if (v15)
    {
      v22 = MEMORY[0x223D44740](v16, a2);
      goto LABEL_26;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v22 = *(v36 + 8 * v16);
LABEL_26:
    v23 = v22;
    if (!*(a4 + 16) || (v24 = sub_21D17E07C(v22), (v25 & 1) == 0))
    {

      __break(1u);
      return result;
    }

    v26 = *(*(a4 + 56) + 24 * v24);
    sub_21DBF8E0C();

    v27 = sub_21D1E21BC(v26, v35);

    if (v27)
    {
      if (!v34)
      {
        v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 != v28)
        {
          goto LABEL_35;
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v16 == sub_21DBFBD7C())
      {
        goto LABEL_61;
      }

      v28 = sub_21DBFBD7C();
LABEL_35:
      while (1)
      {
        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          break;
        }

        if (v16 == v28)
        {
          v16 = v28;
          if (v28 != v21)
          {
            goto LABEL_22;
          }

LABEL_47:
          v16 = v21;
          goto LABEL_48;
        }

        if (v15)
        {
          v29 = MEMORY[0x223D44740](v16, a2);
        }

        else
        {
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_54;
          }

          if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v29 = *(v36 + 8 * v16);
        }

        v30 = v29;
        if (*(a4 + 16))
        {
          sub_21D17E07C(v29);
          if (v31)
          {

            if (v16 != v21)
            {
              goto LABEL_22;
            }

            goto LABEL_47;
          }
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

LABEL_48:

  if (v34)
  {
    v32 = sub_21DBFBD7C();
  }

  else
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v16 != v32;
}