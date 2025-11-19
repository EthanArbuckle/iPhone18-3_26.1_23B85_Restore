_BYTE *assignWithCopy for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D24B040(&a1[v4]);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v6 + v14, 1, v15))
        {
          goto LABEL_27;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v37 > 2)
        {
          goto LABEL_113;
        }

        if (v37 == 1)
        {
          goto LABEL_112;
        }

        if (v37 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v13 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v6 + v14, 1, v15))
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

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      v159 = v3;
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_64:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v6, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v50 = *v6;
        *v5 = *v6;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(v5, v6, *(*(v11 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v6 + v56;
      if (*(v6 + v56 + 8))
      {
        v154 = v5;
        v157 = v6;
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v59 = *(v58 + 2);
        v60 = *(v58 + 3);
        v61 = *(v58 + 4);
        v62 = *(v58 + 5);
        v63 = *(v58 + 6);
        v64 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v63, v64, v65);
        *(v57 + 2) = v59;
        *(v57 + 3) = v60;
        *(v57 + 4) = v61;
        *(v57 + 5) = v62;
        *(v57 + 6) = v63;
        *(v57 + 7) = v64;
        v57[64] = v65;
        v57[65] = v58[65];
        v57[66] = v58[66];
        v57[67] = v58[67];
        v57[68] = v58[68];
        v66 = v58[120];
        if (v66 == 255)
        {
          v80 = *(v58 + 72);
          v81 = *(v58 + 88);
          v82 = *(v58 + 104);
          v57[120] = v58[120];
          *(v57 + 104) = v82;
          *(v57 + 88) = v81;
          *(v57 + 72) = v80;
        }

        else
        {
          v67 = *(v58 + 9);
          v68 = *(v58 + 10);
          v69 = *(v58 + 11);
          v70 = *(v58 + 12);
          v71 = *(v58 + 13);
          v72 = *(v58 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v68;
          *(v57 + 11) = v69;
          *(v57 + 12) = v70;
          *(v57 + 13) = v71;
          *(v57 + 14) = v72;
          v57[120] = v73;
        }

        v3 = v159;
        v57[121] = v58[121];
        v5 = v154;
        v6 = v157;
        goto LABEL_97;
      }

LABEL_94:
      v74 = *v58;
      v75 = *(v58 + 1);
      v76 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v76;
      *v57 = v74;
      *(v57 + 1) = v75;
      v77 = *(v58 + 4);
      v78 = *(v58 + 5);
      v79 = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      *(v57 + 5) = v78;
      *(v57 + 6) = v79;
      *(v57 + 4) = v77;
      v3 = v159;
LABEL_97:
      *(v5 + v55[6]) = *(v6 + v55[6]);
      *(v5 + v55[7]) = *(v6 + v55[7]);
      *(v5 + v55[8]) = *(v6 + v55[8]);
      *(v5 + v55[9]) = *(v6 + v55[9]);
      *(v5 + v55[10]) = *(v6 + v55[10]);
      v83 = v55[11];
      v84 = *(v6 + v83);
      *(v5 + v83) = v84;
      v85 = v84;
      goto LABEL_128;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    v159 = v3;
    if (v22 <= 4)
    {
      if (v22 > 2)
      {
LABEL_68:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v6, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v53 = *v6;
      *v5 = *v6;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v22 > 7)
    {
      if (v22 == 8 || v22 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v22 == 5 || v22 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(v5, v6, *(*(v21 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v55[5];
    v57 = v5 + v86;
    v58 = v6 + v86;
    if (*(v6 + v86 + 8))
    {
      v155 = v5;
      v158 = v6;
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v87 = *(v58 + 2);
      v88 = *(v58 + 3);
      v89 = *(v58 + 4);
      v90 = *(v58 + 5);
      v91 = *(v58 + 6);
      v92 = *(v58 + 7);
      v93 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v87, v88, v89, v90, v91, v92, v93);
      *(v57 + 2) = v87;
      *(v57 + 3) = v88;
      *(v57 + 4) = v89;
      *(v57 + 5) = v90;
      *(v57 + 6) = v91;
      *(v57 + 7) = v92;
      v57[64] = v93;
      v57[65] = v58[65];
      v57[66] = v58[66];
      v57[67] = v58[67];
      v57[68] = v58[68];
      v94 = v58[120];
      if (v94 == 255)
      {
        v102 = *(v58 + 72);
        v103 = *(v58 + 88);
        v104 = *(v58 + 104);
        v57[120] = v58[120];
        *(v57 + 104) = v104;
        *(v57 + 88) = v103;
        *(v57 + 72) = v102;
      }

      else
      {
        v95 = *(v58 + 9);
        v96 = *(v58 + 10);
        v97 = *(v58 + 11);
        v98 = *(v58 + 12);
        v99 = *(v58 + 13);
        v100 = *(v58 + 14);
        v101 = v94 & 1;
        sub_21D0FB960(v95, v96, v97, v98, v99, v100, v94 & 1);
        *(v57 + 9) = v95;
        *(v57 + 10) = v96;
        *(v57 + 11) = v97;
        *(v57 + 12) = v98;
        *(v57 + 13) = v99;
        *(v57 + 14) = v100;
        v57[120] = v101;
      }

      v3 = v159;
      v57[121] = v58[121];
      v5 = v155;
      v6 = v158;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 9) = *(v6 + 9);
      *(v5 + 10) = *(v6 + 10);
      v19 = v6[2];
      v5[2] = v19;
      v20 = v19;
      goto LABEL_128;
    }

    v30 = *v6;
    *v5 = *v6;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v6 + v14, 1, v15))
    {
LABEL_27:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v5 + v14, v6 + v14, *(*(v26 - 8) + 64));
      goto LABEL_128;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v105 = *(v6 + v14);
      *(v5 + v14) = v105;
      v106 = v105;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v16 + 56))(v5 + v14, 0, 1, v15);
      goto LABEL_128;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(v5 + v14, v6 + v14, *(v16 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v107 = sub_21DBF563C();
    (*(*(v107 - 8) + 16))(v5 + v14, v6 + v14, v107);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v6, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v5, v6, *(*(v29 - 8) + 64));
    }

    else
    {
      *v5 = *v6;
      v38 = *(v27 + 20);
      v39 = sub_21DBF6C1C();
      v156 = *(*(v39 - 8) + 16);
      sub_21DBF8E0C();
      v156(v5 + v38, v6 + v38, v39);
      (*(v28 + 56))(v5, 0, 1, v27);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v6 + v40);
    if (v42[1])
    {
      *v41 = *v42;
      v41[1] = v42[1];
      v43 = v42[2];
      v41[2] = v43;
      sub_21DBF8E0C();
      v44 = v43;
    }

    else
    {
      v45 = *v42;
      v41[2] = v42[2];
      *v41 = v45;
    }

    goto LABEL_128;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v6, 1, v33))
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v6, *(*(v35 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v6, v47);
      *(v5 + *(v33 + 20)) = *(v6 + *(v33 + 20));
      (*(v34 + 56))(v5, 0, 1, v33);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v6 + *(v48 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(v5, v6, *(*(v7 - 8) + 64));
    goto LABEL_129;
  }

  *v5 = *v6;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6 + v9, v10);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v108 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v109 = v5 + v108;
  v110 = v6 + v108;
  *v109 = *v110;
  *(v109 + 1) = *(v110 + 1);
  sub_21DBF8E0C();

  v111 = *(v110 + 2);
  v112 = *(v110 + 3);
  v113 = *(v110 + 4);
  v114 = *(v110 + 5);
  v115 = *(v110 + 6);
  v116 = *(v110 + 7);
  v117 = v110[64];
  sub_21D2A7DB4(v111, v112, v113, v114, v115, v116, v117);
  v118 = *(v109 + 2);
  v119 = *(v109 + 3);
  v120 = *(v109 + 4);
  v121 = *(v109 + 5);
  v122 = *(v109 + 6);
  v123 = *(v109 + 7);
  *(v109 + 2) = v111;
  *(v109 + 3) = v112;
  *(v109 + 4) = v113;
  *(v109 + 5) = v114;
  *(v109 + 6) = v115;
  *(v109 + 7) = v116;
  v124 = v109[64];
  v109[64] = v117;
  sub_21D179EF0(v118, v119, v120, v121, v122, v123, v124);
  v109[65] = v110[65];
  v109[66] = v110[66];
  v109[67] = v110[67];
  v109[68] = v110[68];
  v125 = v110[120];
  if (v109[120] == 255)
  {
    if (v125 == 255)
    {
      v150 = *(v110 + 72);
      v151 = *(v110 + 88);
      v152 = *(v110 + 104);
      v109[120] = v110[120];
      *(v109 + 104) = v152;
      *(v109 + 88) = v151;
      *(v109 + 72) = v150;
    }

    else
    {
      v140 = *(v110 + 9);
      v141 = *(v110 + 10);
      v142 = *(v110 + 11);
      v143 = *(v110 + 12);
      v144 = *(v110 + 13);
      v145 = *(v110 + 14);
      v146 = v125 & 1;
      sub_21D0FB960(v140, v141, v142, v143, v144, v145, v125 & 1);
      *(v109 + 9) = v140;
      *(v109 + 10) = v141;
      *(v109 + 11) = v142;
      *(v109 + 12) = v143;
      *(v109 + 13) = v144;
      *(v109 + 14) = v145;
      v109[120] = v146;
    }
  }

  else if (v125 == 255)
  {
    sub_21D2E979C((v109 + 72));
    v147 = *(v110 + 88);
    v148 = *(v110 + 104);
    v149 = v110[120];
    *(v109 + 72) = *(v110 + 72);
    v109[120] = v149;
    *(v109 + 104) = v148;
    *(v109 + 88) = v147;
  }

  else
  {
    v126 = *(v110 + 9);
    v127 = *(v110 + 10);
    v128 = *(v110 + 11);
    v129 = *(v110 + 12);
    v130 = *(v110 + 13);
    v131 = *(v110 + 14);
    v132 = v125 & 1;
    sub_21D0FB960(v126, v127, v128, v129, v130, v131, v125 & 1);
    v133 = *(v109 + 9);
    v134 = *(v109 + 10);
    v135 = *(v109 + 11);
    v136 = *(v109 + 12);
    v137 = *(v109 + 13);
    v138 = *(v109 + 14);
    v139 = v109[120];
    *(v109 + 9) = v126;
    *(v109 + 10) = v127;
    *(v109 + 11) = v128;
    *(v109 + 12) = v129;
    *(v109 + 13) = v130;
    *(v109 + 14) = v131;
    v109[120] = v132;
    sub_21D1078C0(v133, v134, v135, v136, v137, v138, v139);
  }

  v109[121] = v110[121];
  return v3;
}

_BYTE *initializeWithTake for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v6, 1, v22))
        {
          v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v5, v6, *(*(v24 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(v5, v6, v27);
          v5[*(v22 + 20)] = v6[*(v22 + 20)];
          (*(v23 + 56))(v5, 0, 1, v22);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&v5[*(v28 + 20)] = *&v6[*(v28 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *v5 = *v6;
      v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v19 = sub_21DBF8D7C();
      (*(*(v19 - 8) + 32))(&v5[v18], &v6[v18], v19);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v5, v6, *(*(v14 - 8) + 64));
        }

        else
        {
          *v5 = *v6;
          v29 = *(v12 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&v5[v29], &v6[v29], v30);
          (*(v13 + 56))(v5, 0, 1, v12);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &v5[v31];
        v33 = &v6[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *v5 = *v6;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v6[v15], 1, v16))
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

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(&v6[v15], 1, v16))
      {
        goto LABEL_29;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_57:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&v5[v15], &v6[v15], v35);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v17 + 56))(&v5[v15], 0, 1, v16);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&v5[v15], &v6[v15], *(v17 + 64));
      goto LABEL_86;
    }

    *v5 = *v6;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(&v6[v15], 1, v16))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v5[v15], &v6[v15], *(*(v21 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 3)
    {
      if (v20 == 2 || v20 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v20 == 4 || v20 == 5 || v20 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 <= 3)
    {
      if (v10 == 2 || v10 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v10 == 4 || v10 == 5 || v10 == 6)
    {
LABEL_9:
      v11 = sub_21DBF563C();
      (*(*(v11 - 8) + 32))(v5, v6, v11);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &v5[v37];
      v39 = &v6[v37];
      v40 = v39[3];
      v38[2] = v39[2];
      v38[3] = v40;
      v41 = v39[1];
      *v38 = *v39;
      v38[1] = v41;
      *(v38 + 106) = *(v39 + 106);
      v42 = v39[6];
      v38[5] = v39[5];
      v38[6] = v42;
      v38[4] = v39[4];
      v5[v36[6]] = v6[v36[6]];
      v5[v36[7]] = v6[v36[7]];
      v5[v36[8]] = v6[v36[8]];
      v5[v36[9]] = v6[v36[9]];
      v5[v36[10]] = v6[v36[10]];
      *&v5[v36[11]] = *&v6[v36[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(v5, v6, *(*(v9 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(v5, v6, *(*(v7 - 8) + 64));
LABEL_88:
  v43 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v44 = &v5[v43];
  v45 = &v6[v43];
  v46 = v45[5];
  v44[4] = v45[4];
  v44[5] = v46;
  v44[6] = v45[6];
  *(v44 + 106) = *(v45 + 106);
  v47 = v45[1];
  *v44 = *v45;
  v44[1] = v47;
  v48 = v45[3];
  v44[2] = v45[2];
  v44[3] = v48;
  return a1;
}

_BYTE *assignWithTake for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  if (a1 != a2)
  {
    sub_21D24B040(&a1[v4]);
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v23 = *(v22 - 8);
          if ((*(v23 + 48))(v6, 1, v22))
          {
            v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v5, v6, *(*(v24 - 8) + 64));
          }

          else
          {
            v27 = sub_21DBF563C();
            (*(*(v27 - 8) + 32))(v5, v6, v27);
            v5[*(v22 + 20)] = v6[*(v22 + 20)];
            (*(v23 + 56))(v5, 0, 1, v22);
          }

          v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v5[*(v28 + 20)] = *&v6[*(v28 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *v5 = *v6;
        v18 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v19 = sub_21DBF8D7C();
        (*(*(v19 - 8) + 32))(&v5[v18], &v6[v18], v19);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v13 = *(v12 - 8);
          if ((*(v13 + 48))(v6, 1, v12))
          {
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(v5, v6, *(*(v14 - 8) + 64));
          }

          else
          {
            *v5 = *v6;
            v29 = *(v12 + 20);
            v30 = sub_21DBF6C1C();
            (*(*(v30 - 8) + 32))(&v5[v29], &v6[v29], v30);
            (*(v13 + 56))(v5, 0, 1, v12);
          }

          v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v32 = &v5[v31];
          v33 = &v6[v31];
          *v32 = *v33;
          *(v32 + 2) = *(v33 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(&v6[v15], 1, v16))
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

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 <= 3)
          {
            if (v10 == 2 || v10 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v10 == 4 || v10 == 5 || v10 == 6)
          {
LABEL_10:
            v11 = sub_21DBF563C();
            (*(*(v11 - 8) + 32))(v5, v6, v11);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v37 = v36[5];
            v38 = &v5[v37];
            v39 = &v6[v37];
            v40 = v39[3];
            v38[2] = v39[2];
            v38[3] = v40;
            v41 = v39[1];
            *v38 = *v39;
            v38[1] = v41;
            *(v38 + 106) = *(v39 + 106);
            v42 = v39[6];
            v38[5] = v39[5];
            v38[6] = v42;
            v38[4] = v39[4];
            v5[v36[6]] = v6[v36[6]];
            v5[v36[7]] = v6[v36[7]];
            v5[v36[8]] = v6[v36[8]];
            v5[v36[9]] = v6[v36[9]];
            v5[v36[10]] = v6[v36[10]];
            *&v5[v36[11]] = *&v6[v36[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(v5, v6, *(*(v9 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(v5, v6, *(*(v7 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *v5 = *v6;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(&v6[v15], 1, v16))
        {
          goto LABEL_30;
        }

        v34 = swift_getEnumCaseMultiPayload();
        if (v34 <= 3)
        {
          if (v34 == 2 || v34 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v34 == 4 || v34 == 5 || v34 == 6)
        {
LABEL_58:
          v35 = sub_21DBF563C();
          (*(*(v35 - 8) + 32))(&v5[v15], &v6[v15], v35);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v17 + 56))(&v5[v15], 0, 1, v16);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&v5[v15], &v6[v15], *(v17 + 64));
        goto LABEL_87;
      }

      *v5 = *v6;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(&v6[v15], 1, v16))
      {
        v26 = swift_getEnumCaseMultiPayload();
        if (v26 <= 3)
        {
          if (v26 == 2 || v26 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v26 == 4 || v26 == 5 || v26 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

LABEL_30:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v5[v15], &v6[v15], *(*(v21 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v43 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v44 = &v5[v43];
  v45 = &v6[v43];
  v46 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v46;

  v47 = v45[64];
  v48 = *(v44 + 2);
  v49 = *(v44 + 3);
  v50 = *(v44 + 4);
  v51 = *(v44 + 5);
  v52 = *(v44 + 6);
  v53 = *(v44 + 7);
  v54 = *(v45 + 2);
  *(v44 + 1) = *(v45 + 1);
  *(v44 + 2) = v54;
  *(v44 + 3) = *(v45 + 3);
  v55 = v44[64];
  v44[64] = v47;
  sub_21D179EF0(v48, v49, v50, v51, v52, v53, v55);
  *(v44 + 65) = *(v45 + 65);
  v44[67] = v45[67];
  v44[68] = v45[68];
  v56 = v44[120];
  if (v56 == 255)
  {
LABEL_93:
    *(v44 + 72) = *(v45 + 72);
    *(v44 + 88) = *(v45 + 88);
    *(v44 + 104) = *(v45 + 104);
    v44[120] = v45[120];
    goto LABEL_94;
  }

  v57 = v45[120];
  if (v57 == 255)
  {
    sub_21D2E979C((v44 + 72));
    goto LABEL_93;
  }

  v58 = *(v44 + 9);
  v59 = *(v44 + 10);
  v60 = *(v44 + 11);
  v61 = *(v44 + 12);
  v62 = *(v44 + 13);
  v63 = *(v44 + 14);
  *(v44 + 72) = *(v45 + 72);
  *(v44 + 88) = *(v45 + 88);
  *(v44 + 104) = *(v45 + 104);
  v44[120] = v57 & 1;
  sub_21D1078C0(v58, v59, v60, v61, v62, v63, v56 & 1);
LABEL_94:
  v44[121] = v45[121];
  return a1;
}

uint64_t sub_21DADAD60()
{
  result = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRAnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyEquatableBoxImpl();
  (*(v6 + 16))(v8, a1, a2);
  v9 = sub_21DADAF10(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  return result;
}

uint64_t sub_21DADAF10(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t sub_21DADB118()
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

uint64_t sub_21DADB1F8()
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v1 = sub_21DBFA10C();

    return v1 & 1;
  }

  return result;
}

uint64_t sub_21DADB2B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  a1[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_0, v1 + v2, v3);
}

uint64_t sub_21DADB3A4()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t TTRIHostingControllerWithCustomUndo.__allocating_init(rootView:undoManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_21DADBAEC(a1);
  (*(*(*(v2 + class metadata base offset for TTRIHostingControllerWithCustomUndo) - 8) + 8))(a1);
  return v5;
}

uint64_t TTRIHostingControllerWithCustomUndo.init(rootView:undoManager:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_21DADBAEC(a1);
  (*(*(*(v3 + class metadata base offset for TTRIHostingControllerWithCustomUndo) - 8) + 8))(a1);
  return v4;
}

id TTRIHostingControllerWithCustomUndo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21DADB684()
{
  v0 = sub_21DADBC40();

  return v0;
}

void sub_21DADB6C0(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTRIHostingControllerWithCustomUndo();
  objc_msgSendSuper2(&v7, sel_viewDidAppear_, a1 & 1);
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    v6 = UIView.firstResponderDescendant.getter();

    if (v6)
    {
    }

    else
    {
      [v2 becomeFirstResponder];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21DADB7A4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_21DADB6C0(a3);
}

id sub_21DADB7F8(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIHostingControllerWithCustomUndo();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  return [v1 resignFirstResponder];
}

void sub_21DADB894(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_21DADB7F8(a3);
}

id TTRIHostingControllerWithCustomUndo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIHostingControllerWithCustomUndo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DADBAEC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  *(v1 + *(v3 + 16)) = v4;
  (*(v5 + 16))(&v9 - v6, v7, v2);
  return sub_21DBF97DC();
}

void TTRTemplatesListViewModel.Template.init(template:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - v5;
  type metadata accessor for TTRListColors();
  v7 = [a1 color];
  static TTRListColors.color(for:)(v7, v65);

  v8 = v65[1];
  v55 = v65[0];
  v9 = v65[3];
  v61 = v65[2];
  v10 = v65[4];
  v63 = v65[5];
  v62 = v66;
  v52 = a1;
  v11 = [a1 badge];
  if (!v11)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithRawValue_];
  }

  v12 = [v11 emoji];
  v57 = v10;
  v58 = v9;
  v56 = v11;
  v51 = v8;
  if (!v12)
  {
    v50 = v6;
    v16 = v11;
    v17 = [v16 emblem];
    if (v17)
    {
      v18 = v17;
      if (qword_27CE56B40 != -1)
      {
        swift_once();
      }

      v19 = qword_27CE5F688;
      sub_21DBF8E0C();
      v20 = sub_21D22D5B4(v18, v19);

      if (v20)
      {
        goto LABEL_11;
      }
    }

    v18 = *MEMORY[0x277D44960];
LABEL_11:
    v60 = v18;

    v21 = v18;
    v22 = REMListBadgeEmblem.name.getter();
    v53 = v23;
    v54 = v22;

    v59 = 0;
    v10 = v57;
    v9 = v58;
    v6 = v50;
    goto LABEL_12;
  }

  v13 = sub_21DBFA16C();
  v15 = v14;

  sub_21DBF8E0C();
  v53 = v15;
  v54 = v13;
  v59 = v15;
  v60 = v13;
LABEL_12:
  v24 = v12 != 0;
  v25 = v62;
  LOBYTE(v65[0]) = v62;
  v64 = v12 != 0;
  LODWORD(v50) = v12 != 0;
  v26 = sub_21DBF563C();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = *(type metadata accessor for TTRTemplatesListViewModel.Template(0) + 28);
  v28 = v55;
  v29 = v51;
  v30 = v6;
  v31 = v61;
  sub_21D0FB960(v55, v51, v61, v9, v10, v63, v25);
  sub_21D0FB9BC(v60, v59, v24);
  v32 = v52;
  TTRTemplatePublicLinkData.init(template:now:)(v32, v30, a2 + v27);
  v52 = [v32 objectID];
  v33 = v28;
  v34 = [v32 name];
  v35 = sub_21DBFA16C();
  v36 = v58;
  v49 = v35;
  v48 = v37;

  v38 = v31;
  v39 = v63;
  LOBYTE(v30) = v62;
  sub_21D1078C0(v33, v29, v38, v36, v10, v63, v62);

  v41 = v59;
  v40 = v60;
  LOBYTE(v32) = v50;
  sub_21D0FB9F4(v60, v59, v50);

  v42 = v49;
  *a2 = v52;
  *(a2 + 8) = v42;
  v43 = v53;
  v44 = v54;
  *(a2 + 16) = v48;
  *(a2 + 24) = v44;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  v45 = v61;
  *(a2 + 48) = v29;
  *(a2 + 56) = v45;
  v46 = v57;
  *(a2 + 64) = v36;
  *(a2 + 72) = v46;
  *(a2 + 80) = v39;
  *(a2 + 88) = v30;
  *(a2 + 89) = v65[0];
  *(a2 + 92) = *(v65 + 3);
  *(a2 + 96) = v40;
  *(a2 + 104) = v41;
  *(a2 + 112) = v32;
  *(a2 + 113) = 0;
}

uint64_t TTRTemplatesListStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatesListViewModel.SectionIdentifier.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatesListViewModel.Template.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRTemplatesListViewModel.Template.badge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 72);
  v10 = *(v1 + 56);
  v2 = v10;
  v11 = v3;
  v12[0] = *(v1 + 88);
  v4 = v12[0];
  *(v12 + 10) = *(v1 + 98);
  v6 = *(v1 + 40);
  v9[0] = *(v1 + 24);
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 74) = *(v12 + 10);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21D24BF60(v9, &v8);
}

uint64_t TTRTemplatesListViewModel.Template.init(objectID:name:badge:publicLinkData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4[3];
  *(a6 + 56) = a4[2];
  *(a6 + 72) = v8;
  *(a6 + 88) = a4[4];
  *(a6 + 98) = *(a4 + 74);
  v9 = a4[1];
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v9;
  v10 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  return sub_21DADECA0(a5, a6 + *(v10 + 28), type metadata accessor for TTRTemplatePublicLinkData);
}

uint64_t TTRTemplatesListViewModel.Template.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21DADC494()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21DADC4D8()
{
  sub_21DBFC7DC();
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t TTRTemplatesListViewModel.OptimisticApply.deletedTemplateIDs.getter()
{
  type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTemplatesListViewModel.OptimisticApply.deletedTemplateIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

BOOL TTRTemplatesListViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_21D6DD788(v1, &v11 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE60478);
  }

  else
  {
    v7 = sub_21DBF5EBC();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(v1 + *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20));
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  return v9 == 0;
}

uint64_t TTRTemplatesListViewModel.OptimisticApply.init(templateOrdering:deletedTemplateIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  sub_21D6DD7F8(a1, a3);
  result = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL TTRTemplatesListViewModel.isEmpty.getter()
{
  if (*v0 >> 62)
  {
    v1 = sub_21DBFBD7C();
  }

  else
  {
    v1 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t TTRTemplatesListViewModel.shouldShowContentUnavailableMessage.getter()
{
  v1 = *(v0 + 8);
  if (*v0 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v2 == 0) & (v1 ^ 1u);
}

void TTRTemplatesListViewModel.init(isPlaceholder:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_21D179B70(MEMORY[0x277D84F90]);
  v6 = v5;
  if (v4 >> 62)
  {
    v8 = v5;
    if (sub_21DBFBD7C())
    {
      sub_21D1CE198(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }

    v6 = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  *a2 = v4;
  *(a2 + 8) = a1 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
}

void TTRTemplatesListViewModel.init(templateViewModels:)(uint64_t isUniquelyReferenced_nonNull_native@<X0>, unint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  v36 = MEMORY[0x277D84F98];
  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_28:
    sub_21DBFBD7C();
  }

  v10 = sub_21DBFBF9C();
  v37 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66578);
  sub_21DBF9EAC();
  v32 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v32)
  {
    v29 = a2;
    v30 = isUniquelyReferenced_nonNull_native;
    a2 = 0;
    v31 = isUniquelyReferenced_nonNull_native + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v11 = v36;
    while (1)
    {
      if (a2 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34 = *(v33 + 72);
      sub_21DADEC38(v31 + v34 * a2, v9, type metadata accessor for TTRTemplatesListViewModel.Template);
      v12 = *v9;
      MEMORY[0x223D42D80]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 = v37;
      v13 = v9;
      v14 = v9;
      v9 = v6;
      sub_21DADECA0(v14, v6, type metadata accessor for TTRTemplatesListViewModel.Template);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v11;
      v16 = sub_21D17E07C(v12);
      v17 = v11[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_26;
      }

      v20 = v15;
      if (v11[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = v34;
          v11 = v35;
          if (v15)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_21D226734();
          v23 = v34;
          v11 = v35;
          if (v20)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_21D21FAB8(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_21D17E07C(v12);
        if ((v20 & 1) != (v22 & 1))
        {
          v36 = v11;
          sub_21D0D8CF0(0, &qword_280D17880);
          sub_21DBFC70C();
          __break(1u);
          return;
        }

        v16 = v21;
        v23 = v34;
        v11 = v35;
        if (v20)
        {
LABEL_4:
          v6 = v9;
          sub_21DADED08(v9, v11[7] + v16 * v23);

          goto LABEL_5;
        }
      }

      v11[(v16 >> 6) + 8] |= 1 << v16;
      *(v11[6] + 8 * v16) = v12;
      v6 = v9;
      sub_21DADECA0(v9, v11[7] + v16 * v23, type metadata accessor for TTRTemplatesListViewModel.Template);
      v24 = v11[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_27;
      }

      v11[2] = v26;
LABEL_5:
      ++a2;
      isUniquelyReferenced_nonNull_native = v30;
      v9 = v13;
      if (v32 == a2)
      {

        a2 = v29;
        goto LABEL_22;
      }
    }
  }

  v11 = v36;
LABEL_22:
  if (MEMORY[0x277D84F90] >> 62 && sub_21DBFBD7C())
  {
    sub_21D1CE198(MEMORY[0x277D84F90]);
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v27;
}

void TTRTemplatesListViewModel.init(templates:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
LABEL_14:
    TTRTemplatesListViewModel.init(templateViewModels:)(v10, &v16);
    v14 = v17;
    v15 = v18;
    *a2 = v16;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    return;
  }

  v8 = sub_21DBFBD7C();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  sub_21D18F924(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223D44740](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      TTRTemplatesListViewModel.Template.init(template:)(v11, v7);
      v16 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18F924(v12 > 1, v13 + 1, 1);
        v10 = v16;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      sub_21DADECA0(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for TTRTemplatesListViewModel.Template);
    }

    while (v8 != v9);

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t TTRTemplatesListViewModel.template(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_21D17E07C(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
    v16 = *(v9 - 8);
    sub_21DADEC38(v8 + *(v16 + 72) * v7, a2, type metadata accessor for TTRTemplatesListViewModel.Template);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t TTRTemplatesListViewModel.snapshot(previousViewModel:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 1);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21DADED6C();
  sub_21D183A0C();
  sub_21DBF8AFC();
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = sub_21DBFBD7C();
  if (result)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66588);
    sub_21DBF8A6C();
    LOBYTE(v14) = 0;
    result = sub_21DBF8A2C();
  }

LABEL_4:
  if (v3)
  {
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v16 = v9;
    v10 = v3;
    v11 = v2 & 1;
    v12 = v4;
    sub_21DADD200(&v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66588);
    sub_21DBF8ACC();
  }

  return result;
}

void sub_21DADD200(uint64_t a1)
{
  v3 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v193 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v6 - 8);
  v194 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63020);
  MEMORY[0x28223BE20](v199);
  v9 = &v192 - v8;
  v198 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  v222 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v201 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v220 = &v192 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v192 - v14;
  MEMORY[0x28223BE20](v16);
  v218 = &v192 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665C8);
  MEMORY[0x28223BE20](v18 - 8);
  v227 = (&v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v223 = (&v192 - v21);
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  v24 = *(v22 + 64);
  v225 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v28 = *(a1 + 16);
  v29 = v3;
  v195 = MEMORY[0x277D84F90];
  v241 = MEMORY[0x277D84F90];
  v224 = (v25 + 63) >> 6;
  v221 = v23 & 0xC000000000000001;
  v30 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 < 0)
  {
    v30 = v23;
  }

  v216 = v28;
  v217 = v30;
  v228 = v23 + 56;
  v229 = v23;
  v197 = (v4 + 48);
  v219 = v22;
  sub_21DBF8E0C();
  v31 = 0;
  v203 = v9;
  v226 = v15;
  v196 = v29;
LABEL_7:
  v32 = v227;
  v34 = v224;
  v33 = v225;
  while (v27)
  {
    v35 = v15;
    v36 = v31;
LABEL_20:
    v39 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v218;
    v42 = *(*(v219 + 48) + 8 * v40);
    sub_21DADEC38(*(v219 + 56) + *(v222 + 72) * v40, v218, type metadata accessor for TTRTemplatesListViewModel.Template);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0);
    v44 = *(v43 + 48);
    v45 = v227;
    *v227 = v42;
    v46 = v41;
    v32 = v45;
    sub_21DADECA0(v46, v45 + v44, type metadata accessor for TTRTemplatesListViewModel.Template);
    (*(*(v43 - 8) + 56))(v32, 0, 1, v43);
    v47 = v42;
LABEL_21:
    v48 = v223;
    sub_21DADFD94(v32, v223);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {

      return;
    }

    v50 = *v48;
    sub_21DADECA0(v48 + *(v49 + 48), v35, type metadata accessor for TTRTemplatesListViewModel.Template);
    if (v221)
    {
      v51 = v50;
      v52 = sub_21DBFBDCC();

      if (v52)
      {
        goto LABEL_8;
      }
    }

    else if (*(v229 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      v53 = v229;
      v54 = sub_21DBFB62C();
      v55 = -1 << *(v53 + 32);
      v56 = v54 & ~v55;
      if ((*(v228 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = *(*(v229 + 48) + 8 * v56);
          v59 = sub_21DBFB63C();

          if (v59)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v228 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

LABEL_8:
        v15 = v226;
        sub_21DADFE04(v226, type metadata accessor for TTRTemplatesListViewModel.Template);

        goto LABEL_9;
      }
    }

LABEL_30:
    v60 = v216;
    if (*(v216 + 16))
    {
      v61 = sub_21D17E07C(v50);
      if (v62)
      {
        v63 = *(v60 + 56) + *(v222 + 72) * v61;
        v64 = v201;
        sub_21DADEC38(v63, v201, type metadata accessor for TTRTemplatesListViewModel.Template);
        sub_21DADECA0(v64, v220, type metadata accessor for TTRTemplatesListViewModel.Template);
        v65 = sub_21D0D8CF0(0, &qword_280D17680);
        v15 = v226;
        v66 = sub_21DBFB63C();
        v212 = v50;
        if ((v66 & 1) == 0 || (*(v220 + 8) != *(v15 + 1) || *(v220 + 16) != *(v15 + 2)) && (sub_21DBFC64C() & 1) == 0)
        {
          goto LABEL_96;
        }

        v67 = *(v220 + 72);
        v233 = *(v220 + 56);
        v234 = v67;
        *v235 = *(v220 + 88);
        *&v235[10] = *(v220 + 98);
        v68 = *(v220 + 40);
        v231 = *(v220 + 24);
        v232 = v68;
        v69 = *(v15 + 72);
        v238 = *(v15 + 56);
        v239 = v69;
        *v240 = *(v15 + 88);
        *&v240[10] = *(v15 + 98);
        v70 = *(v15 + 40);
        v236 = *(v15 + 24);
        v237 = v70;
        if (*(&v231 + 1))
        {
          if (!*(&v236 + 1) || v231 != v236 && (sub_21DBFC64C() & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        else if (*(&v236 + 1))
        {
          goto LABEL_96;
        }

        v202 = v65;
        v73 = *(&v232 + 1);
        v213 = *(&v233 + 1);
        v74 = *(&v234 + 1);
        v210 = v234;
        v75 = v235[0];
        v76 = v237;
        v77 = *(&v238 + 1);
        v78 = v238;
        v79 = *(&v239 + 1);
        v80 = v239;
        v205 = *(&v232 + 1);
        v206 = v237;
        v208 = *(&v234 + 1);
        v214 = *(&v238 + 1);
        v209 = v238;
        v215 = v233;
        v211 = *(&v237 + 1);
        if (v235[0])
        {
          if ((v240[0] & 1) == 0)
          {
            goto LABEL_82;
          }

          v81 = v232;
          v82 = *(&v239 + 1);
          v204 = *(&v239 + 1);
          v207 = v239;
          sub_21D0FB960(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), 1);
          v83 = v81;
          v84 = v81;
          v85 = v210;
          sub_21D0FB960(v83, v73, v215, v213, v210, v74, 1);
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          sub_21D0FB960(v76, v211, v209, v214, v207, v82, 1);
          v86 = v73;
          v87 = v73;
          v88 = v215;
          v89 = v213;
          v90 = v208;
          sub_21D0FB960(v84, v87, v215, v213, v85, v208, 1);
          LODWORD(v202) = sub_21DBFB63C();
          sub_21D1078C0(v84, v86, v88, v89, v85, v90, 1);
          v92 = v206;
          v91 = v207;
          v93 = v211;
          v94 = v209;
          v95 = v214;
          v96 = v204;
          sub_21D1078C0(v206, v211, v209, v214, v207, v204, 1);
          sub_21D1078C0(v92, v93, v94, v95, v91, v96, 1);
          v97 = v84;
          v15 = v226;
          v98 = v205;
          v99 = v215;
          v100 = v213;
          v101 = v210;
          v102 = v208;
          v103 = 1;
          goto LABEL_57;
        }

        if (v240[0])
        {
LABEL_82:
          v157 = v232;
          v200 = v232;
          v204 = *(&v239 + 1);
          v207 = v239;
          sub_21D0FB960(v237, *(&v237 + 1), v238, *(&v238 + 1), v239, *(&v239 + 1), v235[0] ^ 1);
          v158 = v157;
          v159 = v215;
          v160 = v213;
          v161 = v210;
          v162 = v208;
          sub_21D0FB960(v158, v73, v215, v213, v210, v208, v75);
          sub_21D1078C0(v200, v73, v159, v160, v161, v162, v75);
          v163 = v75 ^ 1;
          v164 = v206;
          v165 = v207;
          v166 = v211;
          v167 = v209;
          v168 = v214;
          v169 = v204;
          goto LABEL_94;
        }

        v200 = v232;
        if (v232 != v237)
        {
          v104 = v239;
          v105 = *(&v232 + 1);
          v106 = *(&v239 + 1);
          v107 = sub_21DBFC64C();
          v80 = v104;
          v79 = v106;
          v77 = v214;
          if ((v107 & 1) == 0)
          {
            v173 = v105;
            v207 = v104;
            v204 = v79;
            sub_21D0FB960(v76, *(&v76 + 1), v78, v214, v104, v79, 0);
            v174 = v200;
            v175 = v105;
            v176 = v215;
            v177 = v213;
            v178 = v173;
            v179 = v210;
            v180 = v208;
            sub_21D0FB960(v200, v175, v215, v213, v210, v208, 0);
            v181 = v174;
            v182 = v178;
            v183 = v176;
            v184 = v177;
            v185 = v179;
            goto LABEL_93;
          }
        }

        v108 = v78;
        if (v215 != v78 || v213 != v77)
        {
          v109 = v80;
          v110 = v79;
          v111 = sub_21DBFC64C();
          v80 = v109;
          v79 = v110;
          if ((v111 & 1) == 0)
          {
            v207 = v109;
            v204 = *(&v76 + 1);
            sub_21D0FB960(v76, v211, v108, v214, v109, *(&v76 + 1), 0);
            v186 = v200;
            v187 = v205;
            v188 = v215;
            v189 = v213;
            v190 = v210;
            v180 = v208;
            sub_21D0FB960(v200, v205, v215, v213, v210, v208, 0);
            v181 = v186;
            v182 = v187;
            v183 = v188;
            v184 = v189;
            v185 = v190;
LABEL_93:
            sub_21D1078C0(v181, v182, v183, v184, v185, v180, 0);
            v164 = v206;
            v165 = v207;
            v166 = v211;
            v167 = v209;
            v168 = v214;
            v169 = v204;
            v163 = 0;
LABEL_94:
            sub_21D1078C0(v164, v166, v167, v168, v165, v169, v163);
LABEL_95:
            v50 = v212;
LABEL_96:
            v191 = v50;
            MEMORY[0x223D42D80]();
            if (*((v241 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

            v195 = v241;
            sub_21DADFE04(v220, type metadata accessor for TTRTemplatesListViewModel.Template);
            sub_21DADFE04(v15, type metadata accessor for TTRTemplatesListViewModel.Template);
            goto LABEL_7;
          }
        }

        v112 = v208;
        if (v210 == v80 && v208 == v79)
        {
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          v113 = v108;
          v114 = v210;
          sub_21D0FB960(v76, v211, v113, v214, v210, v112, 0);
          v115 = v200;
          v116 = v205;
          v117 = v215;
          v118 = v213;
          sub_21D0FB960(v200, v205, v215, v213, v114, v112, 0);
          sub_21D1078C0(v115, v116, v117, v118, v114, v112, 0);
          sub_21D1078C0(v206, v211, v209, v214, v114, v112, 0);
        }

        else
        {
          v119 = v210;
          v120 = v80;
          v207 = v80;
          v121 = v79;
          v204 = v79;
          LODWORD(v202) = sub_21DBFC64C();
          sub_21D24BF60(&v231, v230);
          sub_21D24BF60(&v236, v230);
          sub_21D0FB960(v76, v211, v108, v214, v120, v121, 0);
          v122 = v200;
          v123 = v205;
          v124 = v215;
          v125 = v213;
          sub_21D0FB960(v200, v205, v215, v213, v119, v112, 0);
          sub_21D1078C0(v122, v123, v124, v125, v119, v112, 0);
          v97 = v206;
          v101 = v207;
          v98 = v211;
          v99 = v209;
          v100 = v214;
          v102 = v204;
          v103 = 0;
LABEL_57:
          sub_21D1078C0(v97, v98, v99, v100, v101, v102, v103);
          if ((v202 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        v126 = *&v235[8];
        v127 = v235[24];
        v129 = *&v240[8];
        v128 = *&v240[16];
        if (v235[24])
        {
          if ((v240[24] & 1) == 0)
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 1);
            sub_21D0FB9BC(v129, v128, 0);
            sub_21D0FB9F4(v126, *(&v126 + 1), 1);
            v170 = v129;
            v171 = v128;
            v172 = 0;
            goto LABEL_85;
          }

          if (*&v235[8] == *&v240[8])
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 1);
            sub_21D0FB9BC(v126, *(&v126 + 1), 1);
            v131 = *(&v126 + 1);
            v130 = v126;
            v132 = 1;
            goto LABEL_66;
          }

          v139 = sub_21DBFC64C();
          sub_21D0FB9BC(v126, *(&v126 + 1), 1);
          sub_21D0FB9BC(v129, v128, 1);
          sub_21D0FB9F4(v126, *(&v126 + 1), 1);
          sub_21D0FB9F4(v129, v128, 1);
          v138 = v203;
          if ((v139 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v240[24])
          {
            sub_21D0FB9BC(*&v235[8], *&v235[16], 0);
            sub_21D0FB9BC(v129, v128, 1);
            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            v170 = v129;
            v171 = v128;
            v172 = 1;
LABEL_85:
            sub_21D0FB9F4(v170, v171, v172);
LABEL_86:
            sub_21D24C27C(&v236);
            sub_21D24C27C(&v231);
            goto LABEL_95;
          }

          v215 = *&v240[16];
          v133 = sub_21DBFA16C();
          v135 = v134;
          if (v133 == sub_21DBFA16C() && v135 == v136)
          {
            v137 = v215;
            v214 = v136;
            sub_21D0FB9BC(v129, v215, 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v129, v137, 0);

            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            sub_21D0FB9F4(v129, v137, 0);
            v130 = v129;
            v131 = v137;
            v132 = 0;
LABEL_66:
            sub_21D0FB9F4(v130, v131, v132);
            sub_21D0FB9F4(v126, *(&v126 + 1), v127);
            v138 = v203;
          }

          else
          {
            LODWORD(v214) = sub_21DBFC64C();
            v140 = v215;
            sub_21D0FB9BC(v129, v215, 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v126, *(&v126 + 1), 0);
            sub_21D0FB9BC(v129, v140, 0);

            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            sub_21D0FB9F4(v129, v140, 0);
            sub_21D0FB9F4(v129, v140, 0);
            sub_21D0FB9F4(v126, *(&v126 + 1), 0);
            v138 = v203;
            if ((v214 & 1) == 0)
            {
              goto LABEL_86;
            }
          }
        }

        v141 = v235[25];
        v142 = v240[25];
        sub_21D24C27C(&v236);
        sub_21D24C27C(&v231);
        if (v141 != v142)
        {
          goto LABEL_95;
        }

        v143 = *(v198 + 28);
        v144 = v220 + v143;
        v145 = &v15[v143];
        v146 = *(v199 + 48);
        sub_21DADEC38(v220 + v143, v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v215 = v145;
        sub_21DADEC38(v145, v138 + v146, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v147 = v196;
        v148 = *v197;
        if ((*v197)(v138, 1, v196) == 1)
        {
          v149 = v148(v138 + v146, 1, v147);
          v15 = v226;
          if (v149 != 1)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v214 = v144;
          v150 = v194;
          sub_21DADEC38(v138, v194, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
          if (v148(v138 + v146, 1, v147) == 1)
          {
            sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            v15 = v226;
LABEL_88:
            sub_21D0CF7E0(v138, &qword_27CE63020);
            goto LABEL_95;
          }

          v151 = v193;
          sub_21DADECA0(v138 + v146, v193, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          if ((sub_21DBF55EC() & 1) == 0)
          {
            sub_21DADFE04(v151, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            v15 = v226;
LABEL_90:
            sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
            sub_21DADFE04(v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
            goto LABEL_95;
          }

          v152 = *(v147 + 20);
          v153 = *(v150 + v152);
          v154 = *(v151 + v152);
          sub_21DADFE04(v151, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          v155 = v153 == v154;
          v138 = v203;
          v15 = v226;
          if (!v155)
          {
            goto LABEL_90;
          }

          sub_21DADFE04(v150, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
          v144 = v214;
        }

        sub_21DADFE04(v138, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
        v156 = type metadata accessor for TTRTemplatePublicLinkData(0);
        if (*(v144 + *(v156 + 20)) != *&v215[*(v156 + 20)])
        {
          goto LABEL_95;
        }

        sub_21DADFE04(v220, type metadata accessor for TTRTemplatesListViewModel.Template);
        v71 = v15;
        goto LABEL_81;
      }
    }

    v15 = v226;
    v71 = v226;
LABEL_81:
    sub_21DADFE04(v71, type metadata accessor for TTRTemplatesListViewModel.Template);
LABEL_9:
    v32 = v227;
    v34 = v224;
    v33 = v225;
  }

  if (v34 <= v31 + 1)
  {
    v37 = v31 + 1;
  }

  else
  {
    v37 = v34;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
      v35 = v15;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665D0);
      (*(*(v72 - 8) + 56))(v32, 1, 1, v72);
      v27 = 0;
      v31 = v38;
      goto LABEL_21;
    }

    v27 = *(v33 + 8 * v36);
    ++v31;
    if (v27)
    {
      v35 = v15;
      v31 = v36;
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t TTRTemplatesListViewModel.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60478);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60480);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-v10];
  v12 = *v2;
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v13 = *(a1 + *(type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0) + 20));
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v14 = sub_21DBFBD7C();
    if (!v14)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = *(v13 + 16);
  v14 = sub_21DBF8E0C();
  if (v17)
  {
LABEL_3:
    MEMORY[0x28223BE20](v14);
    *&v18[-16] = a1;
    v12 = sub_21D9B2688(sub_21DADEDC0, &v18[-32], v12);
  }

LABEL_4:
  sub_21D6DD788(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE60478);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v21 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D6DDD90();
    sub_21D183A0C();
    v15 = sub_21DBFA45C();

    (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  *a2 = v12;
  *(a2 + 16) = v20;
  *(a2 + 24) = v13;
  *(a2 + 8) = v19;
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

uint64_t sub_21DADE8C0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_21DBFBD7C();
    }

    result = sub_21DBFBF9C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_21DADE97C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21DBFBD7C();
LABEL_9:
  result = sub_21DBFBF9C();
  *v1 = result;
  return result;
}

BOOL _s15RemindersUICore25TTRTemplatesListViewModelV8TemplateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_280D17680);
  result = 0;
  if (sub_21DBFB63C())
  {
    v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
    if (v4 || (sub_21DBFC64C() & 1) != 0)
    {
      v5 = *(a1 + 72);
      v32[2] = *(a1 + 56);
      v32[3] = v5;
      v33[0] = *(a1 + 88);
      *(v33 + 10) = *(a1 + 98);
      v6 = *(a1 + 40);
      v32[0] = *(a1 + 24);
      v32[1] = v6;
      v7 = *(a1 + 72);
      v29 = *(a1 + 56);
      v30 = v7;
      v31[0] = *(a1 + 88);
      *(v31 + 10) = *(a1 + 98);
      v8 = *(a1 + 40);
      v27 = *(a1 + 24);
      v28 = v8;
      v9 = *(a2 + 40);
      v34[0] = *(a2 + 24);
      v34[1] = v9;
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      v12 = *(a2 + 88);
      *(v35 + 10) = *(a2 + 98);
      v34[3] = v11;
      v35[0] = v12;
      v34[2] = v10;
      v13 = *(a2 + 72);
      v24 = *(a2 + 56);
      v25 = v13;
      v26[0] = *(a2 + 88);
      *(v26 + 10) = *(a2 + 98);
      v14 = *(a2 + 40);
      v22 = *(a2 + 24);
      v23 = v14;
      sub_21D24BF60(v32, v21);
      sub_21D24BF60(v34, v21);
      v15 = _s15RemindersUICore27TTRListDetailBadgeViewModelV2eeoiySbAC_ACtFZ_0(&v27, &v22);
      v36[2] = v24;
      v36[3] = v25;
      v37[0] = v26[0];
      *(v37 + 10) = *(v26 + 10);
      v36[0] = v22;
      v36[1] = v23;
      sub_21D24C27C(v36);
      v38[2] = v29;
      v38[3] = v30;
      v39[0] = v31[0];
      *(v39 + 10) = *(v31 + 10);
      v38[0] = v27;
      v38[1] = v28;
      sub_21D24C27C(v38);
      if (v15)
      {
        v16 = *(type metadata accessor for TTRTemplatesListViewModel.Template(0) + 28);
        v17 = a1 + v16;
        v18 = a2 + v16;
        if (_s15RemindersUICore25TTRTemplatePublicLinkDataV14StateToDisplayO2eeoiySbAE_AEtFZ_0(a1 + v16, v18))
        {
          v19 = type metadata accessor for TTRTemplatePublicLinkData(0);
          if (*(v17 + *(v19 + 20)) == *(v18 + *(v19 + 20)))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21DADEC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DADECA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DADED08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTemplatesListViewModel.Template(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DADED6C()
{
  result = qword_27CE66580;
  if (!qword_27CE66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66580);
  }

  return result;
}

BOOL sub_21DADEDC0(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = type metadata accessor for TTRTemplatesListViewModel.OptimisticApply(0);
  return (sub_21D1E21BC(v3, *(v2 + *(v4 + 20))) & 1) == 0;
}

unint64_t sub_21DADEE18()
{
  result = qword_27CE66590;
  if (!qword_27CE66590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66590);
  }

  return result;
}

unint64_t sub_21DADEE70()
{
  result = qword_27CE66598;
  if (!qword_27CE66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66598);
  }

  return result;
}

unint64_t sub_21DADEEC8()
{
  result = qword_27CE665A0;
  if (!qword_27CE665A0)
  {
    type metadata accessor for TTRTemplatesListViewModel.Template(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE665A0);
  }

  return result;
}

uint64_t destroy for TTRTemplatesListViewModel()
{
}

uint64_t initializeWithCopy for TTRTemplatesListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRTemplatesListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRTemplatesListViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRTemplatesListViewModel.Template(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = a2[4];
    *(a1 + 3) = a2[3];
    *(a1 + 4) = v7;
    v8 = a2[6];
    v27 = a2[5];
    v9 = a2[7];
    v10 = a2[8];
    v11 = a2[9];
    v12 = a2[10];
    v13 = *(a2 + 88);
    v15 = v5;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D0FB960(v27, v8, v9, v10, v11, v12, v13);
    *(a1 + 5) = v27;
    *(a1 + 6) = v8;
    *(a1 + 7) = v9;
    *(a1 + 8) = v10;
    *(a1 + 9) = v11;
    *(a1 + 10) = v12;
    a1[88] = v13;
    v16 = a2[12];
    v17 = a2[13];
    LOBYTE(v7) = *(a2 + 112);
    sub_21D0FB9BC(v16, v17, v7);
    *(a1 + 12) = v16;
    *(a1 + 13) = v17;
    a1[112] = v7;
    a1[113] = *(a2 + 113);
    v18 = *(a3 + 28);
    v19 = &a1[v18];
    v20 = a2 + v18;
    v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v20, 1, v21))
    {
      v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      v24 = sub_21DBF563C();
      (*(*(v24 - 8) + 16))(v19, v20, v24);
      v19[*(v21 + 20)] = v20[*(v21 + 20)];
      (*(v22 + 56))(v19, 0, 1, v21);
    }

    v25 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *&v19[*(v25 + 20)] = *&v20[*(v25 + 20)];
  }

  return a1;
}

uint64_t destroy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2)
{

  sub_21D1078C0(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  sub_21D0FB9F4(*(a1 + 96), *(a1 + 104), *(a1 + 112));
  v4 = *(a2 + 28);
  v5 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  result = (*(*(v5 - 8) + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = sub_21DBF563C();
    v8 = *(*(v7 - 8) + 8);

    return v8(a1 + v4, v7);
  }

  return result;
}

uint64_t initializeWithCopy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  v27 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v27, v8, v9, v10, v11, v12, v13);
  *(a1 + 40) = v27;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  sub_21D0FB9BC(v15, v16, v17);
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 113) = *(a2 + 113);
  v18 = *(a3 + 28);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21))
  {
    v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v19, v20, *(*(v23 - 8) + 64));
  }

  else
  {
    v24 = sub_21DBF563C();
    (*(*(v24 - 8) + 16))(v19, v20, v24);
    v19[*(v21 + 20)] = v20[*(v21 + 20)];
    (*(v22 + 56))(v19, 0, 1, v21);
  }

  v25 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v19[*(v25 + 20)] = *&v20[*(v25 + 20)];
  return a1;
}

uint64_t assignWithCopy for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  sub_21D0FB960(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  sub_21D1078C0(v16, v17, v18, v19, v20, v21, v22);
  v23 = *(a2 + 96);
  v24 = *(a2 + 104);
  LOBYTE(v11) = *(a2 + 112);
  sub_21D0FB9BC(v23, v24, v11);
  v25 = *(a1 + 96);
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  *(a1 + 96) = v23;
  *(a1 + 104) = v24;
  *(a1 + 112) = v11;
  sub_21D0FB9F4(v25, v26, v27);
  *(a1 + 113) = *(a2 + 113);
  v28 = *(a3 + 28);
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  LODWORD(v24) = v33(v29, 1, v31);
  v34 = v33(v30, 1, v31);
  if (!v24)
  {
    if (!v34)
    {
      v39 = sub_21DBF563C();
      (*(*(v39 - 8) + 24))(v29, v30, v39);
      v29[*(v31 + 20)] = v30[*(v31 + 20)];
      goto LABEL_7;
    }

    sub_21DADFE04(v29, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v34)
  {
LABEL_6:
    v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v29, v30, *(*(v36 - 8) + 64));
    goto LABEL_7;
  }

  v35 = sub_21DBF563C();
  (*(*(v35 - 8) + 16))(v29, v30, v35);
  v29[*(v31 + 20)] = v30[*(v31 + 20)];
  (*(v32 + 56))(v29, 0, 1, v31);
LABEL_7:
  v37 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v29[*(v37 + 20)] = *&v30[*(v37 + 20)];
  return a1;
}

uint64_t initializeWithTake for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a3 + 28);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  *(a1 + 40) = *(a2 + 40);
  v7 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    v9 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v5, v6, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 32))(v5, v6, v10);
    v5[*(v7 + 20)] = v6[*(v7 + 20)];
    (*(v8 + 56))(v5, 0, 1, v7);
  }

  v11 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v5[*(v11 + 20)] = *&v6[*(v11 + 20)];
  return a1;
}

uint64_t assignWithTake for TTRTemplatesListViewModel.Template(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v7;

  v8 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;

  v9 = *(a2 + 88);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v9;
  sub_21D1078C0(v10, v11, v12, v13, v14, v15, v16);
  v17 = *(a2 + 112);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v17;
  sub_21D0FB9F4(v18, v19, v20);
  *(a1 + 113) = *(a2 + 113);
  v21 = *(a3 + 28);
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v22, 1, v24);
  v28 = v26(v23, 1, v24);
  if (!v27)
  {
    if (!v28)
    {
      v33 = sub_21DBF563C();
      (*(*(v33 - 8) + 40))(v22, v23, v33);
      v22[*(v24 + 20)] = v23[*(v24 + 20)];
      goto LABEL_7;
    }

    sub_21DADFE04(v22, type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription);
    goto LABEL_6;
  }

  if (v28)
  {
LABEL_6:
    v30 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v22, v23, *(*(v30 - 8) + 64));
    goto LABEL_7;
  }

  v29 = sub_21DBF563C();
  (*(*(v29 - 8) + 32))(v22, v23, v29);
  v22[*(v24 + 20)] = v23[*(v24 + 20)];
  (*(v25 + 56))(v22, 0, 1, v24);
LABEL_7:
  v31 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *&v22[*(v31 + 20)] = *&v23[*(v31 + 20)];
  return a1;
}

uint64_t sub_21DADFCBC()
{
  result = type metadata accessor for TTRTemplatePublicLinkData(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21DADFD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DADFE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall TTRModuleState.viewWillDisappear()()
{
  if (*(v0 + 51) == 1)
  {
    if ((*(v0 + 49) & 1) == 0)
    {
      if (qword_280D17ED8 != -1)
      {
        swift_once();
      }

      v1 = sub_21DBF84BC();
      __swift_project_value_buffer(v1, qword_280D0F240);

      v2 = sub_21DBF84AC();
      v3 = sub_21DBFAE9C();

      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v20 = v5;
        *v4 = 136315138;
        v6 = TTRModuleState.description.getter();
        v8 = sub_21D0CDFB4(v6, v7, &v20);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_21D0C9000, v2, v3, "%s reject", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x223D46520](v5, -1, -1);
        MEMORY[0x223D46520](v4, -1, -1);
      }

      v9 = sub_21DBF5F5C();
      sub_21D122DFC(&qword_280D0C850, MEMORY[0x277D44D58]);
      v10 = swift_allocError();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D44D50], v9);

      sub_21DBF5FAC();
    }

    *(v0 + 51) = 0;
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F240);

    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      v17 = TTRModuleState.description.getter();
      v19 = sub_21D0CDFB4(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_21D0C9000, v13, v14, "%s unresolve", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223D46520](v16, -1, -1);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0);
    swift_allocObject();
    *(v0 + 56) = sub_21DBF5FDC();
  }
}

uint64_t TTRModuleState.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_21D0D852C(a1, a2);

  return v4;
}

uint64_t TTRModuleState.readyPromise.getter()
{

  v0 = sub_21DBF5FBC();

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t TTRModuleState.name.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRModuleState.defersResolve.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t TTRModuleState.readyAndModelIsUpToDatePromise.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC0AA00;

  v1 = sub_21DBF5FBC();

  if (v1)
  {
    *(v0 + 32) = v1;

    v3 = sub_21DBF5FBC();

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608E8);
      *(v0 + 40) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE608F0);
      sub_21D0D0F1C(&qword_27CE608F8, &qword_27CE608F0);
      sub_21DBF819C();

      v4 = sub_21DBF816C();
      v5 = sub_21DBF820C();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TTRModuleState.viewAppearedPromise.getter()
{

  v0 = sub_21DBF5FBC();

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRModuleState.modelWillRefresh()()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[51];
  v0[50] = 0;
  if (v4)
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v1;
  v9 = v6 | v5;
  sub_21D0EF69C(v7 | v1 | v6 | v5);

  sub_21DAE0620(v8 | v9);
}

uint64_t sub_21DAE0620(uint64_t result)
{
  if ((result & 0x1000000) != 0)
  {
    if (*(v1 + 51))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_280D0F240);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      v15 = TTRModuleState.description.getter();
      v17 = sub_21D0CDFB4(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "%s view disappeared", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0);
    swift_allocObject();
    *(v1 + 80) = sub_21DBF5FDC();
  }

  else
  {
    if (!*(v1 + 51))
    {
      return result;
    }

    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F240);

    v3 = sub_21DBF84AC();
    v4 = sub_21DBFAE9C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      v7 = TTRModuleState.description.getter();
      v9 = sub_21D0CDFB4(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_21D0C9000, v3, v4, "%s view appeared", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D46520](v6, -1, -1);
      MEMORY[0x223D46520](v5, -1, -1);
    }

    sub_21DBF5FCC();
  }
}

uint64_t TTRModuleState.deinit()
{

  return v0;
}

uint64_t TTRModuleState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21DAE09E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 49);
  v4 = *(a1 + 50);
  v5 = *(a1 + 51);
  *(a1 + 48) = 0;
  *(a1 + 50) = 0;
  if (v3 == 1 && (v5 & 1) != 0)
  {
    if (qword_280D17ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0F240);

    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();

    if (os_log_type_enabled(v7, v8))
    {
      v21 = v2;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = TTRModuleState.description.getter();
      v13 = sub_21D0CDFB4(v11, v12, &v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v7, v8, "%s unresolve", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      v14 = v9;
      v2 = v21;
      MEMORY[0x223D46520](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C9B0);
    swift_allocObject();
    *(a1 + 56) = sub_21DBF5FDC();
  }

  if (v5)
  {
    v15 = 0x1000000;
  }

  else
  {
    v15 = 0;
  }

  if (v4)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v3)
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v2;
  v19 = v16 | v15;
  sub_21D0EF69C(v17 | v2 | v16 | v15);
  return sub_21DAE0620(v18 | v19);
}

uint64_t getEnumTagSinglePayload for TTRModuleState.ModuleStates(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for TTRModuleState.ModuleStates(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t TTRReminderSuggestedAttribute.init(attributeType:source:valueText:rangeToDelete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_21DAE99CC(a1, a7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v13 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v14 = v13[5];
  v15 = sub_21DBF79FC();
  result = (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  *(a7 + v13[6]) = a3;
  v17 = a7 + v13[7];
  *v17 = a4;
  *(v17 + 8) = a5;
  *(v17 + 16) = a6 & 1;
  return result;
}

uint64_t TTRReminderSuggestedAttribute.attributeTypeDescription.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        sub_21DAE57A0(&v3[*(v6 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
        v7 = sub_21DBF509C();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0x6E65727275636572;
      }

      else
      {
        sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        return 0x65746164657564;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x6E6F697461636F6CLL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x656C6369686576;
    }

    else
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 1953720684;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 6775156;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x746361746E6F63;
    }

    else
    {
      sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return 0x7265646E696D6572;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0x65656E6769737361;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 1734437990;
  }

  else
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0x797469726F697270;
  }
}

uint64_t TTRReminderSuggestedAttribute.AugmentedAttributeType.remSuggestedAttributeType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v2, v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v12 = *MEMORY[0x277D45648];
        v13 = sub_21DBF799C();
        v14 = *(v13 - 8);
        (*(v14 + 104))(a1, v12, v13);
        (*(v14 + 56))(a1, 0, 1, v13);
        return sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21DAE57A0(&v6[*(v16 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
      v17 = sub_21DBF509C();
      (*(*(v17 - 8) + 8))(v6, v17);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45650];
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_13;
      }

      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45670];
    }

LABEL_21:
    v19 = *v11;
    v9 = sub_21DBF799C();
    v10 = *(v9 - 8);
    (*(v10 + 104))(a1, v19, v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45668];
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_13;
      }

      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v11 = MEMORY[0x277D45678];
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 5)
  {
LABEL_13:
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
LABEL_19:
    v18 = sub_21DBF799C();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  if (EnumCaseMultiPayload != 6)
  {
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v11 = MEMORY[0x277D45698];
    goto LABEL_21;
  }

  v8 = *MEMORY[0x277D45680];
  v9 = sub_21DBF799C();
  v10 = *(v9 - 8);
  (*(v10 + 104))(a1, v8, v9);
  return (*(v10 + 56))(a1, 0, 1, v9);
}

uint64_t TTRReminderSuggestedAttribute.UserLocation.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderSuggestedAttribute.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderSuggestedAttribute(0) + 20);
  v4 = sub_21DBF79FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRReminderSuggestedAttribute.valueText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderSuggestedAttribute(0) + 24));

  return v1;
}

uint64_t TTRReminderSuggestedAttribute.AttributeType.description.getter()
{
  v1 = sub_21DBF509C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v0, v7, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v13 = *v7;
        v33 = 677863796;
        v34 = 0xE400000000000000;
        v14 = [v13 description];
      }

      else
      {
        if (EnumCaseMultiPayload == 9)
        {
          v15 = *v7;
          v33 = 0x28746361746E6F63;
          v34 = 0xE800000000000000;
          v16 = [v15 description];
          v17 = sub_21DBFA16C();
          v19 = v18;

          MEMORY[0x223D42AA0](v17, v19);

          return v33;
        }

        v13 = *v7;
        v33 = 0x7265646E696D6572;
        v34 = 0xE900000000000028;
        v14 = [v13 description];
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v9 = *v7;
          v33 = 0x2867616C66;
          v34 = 0xE500000000000000;
          if (v9)
          {
            v10 = 1702195828;
          }

          else
          {
            v10 = 0x65736C6166;
          }

          if (v9)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0xE500000000000000;
          }

          v12 = v11;
        }

        else
        {
          v27 = *v7;
          v33 = 0x797469726F697270;
          v34 = 0xE900000000000028;
          v32[1] = v27;
          v10 = sub_21DBFC5BC();
        }

        MEMORY[0x223D42AA0](v10, v12);

        MEMORY[0x223D42AA0](41, 0xE100000000000000);
        return v33;
      }

      v13 = *v7;
      v33 = 0x65656E6769737361;
      v34 = 0xE900000000000028;
      v14 = [v13 description];
    }

LABEL_31:
    v28 = v14;
    v29 = sub_21DBFA16C();
    v31 = v30;

    MEMORY[0x223D42AA0](v29, v31);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);

    return v33;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v7;
      v33 = 0x6E6F697461636F6CLL;
      v34 = 0xE900000000000028;
      v14 = [v13 description];
    }

    else
    {
      v13 = *v7;
      if (EnumCaseMultiPayload == 3)
      {
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_21DBFBEEC();

        v33 = 0x54656C6369686576;
        v34 = 0xEF28726567676972;
      }

      else
      {
        v33 = 0x287473696CLL;
        v34 = 0xE500000000000000;
      }

      v14 = [v13 description];
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    (*(v2 + 32))(v4, v7, v1);
    v24 = sub_21DAE1C80();
    v26 = v25;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21DBFBEEC();

    v33 = 0x6E65727275636572;
    v34 = 0xEF28746E65764574;
    MEMORY[0x223D42AA0](v24, v26);

    MEMORY[0x223D42AA0](0x3E656C75723C202CLL, 0xE900000000000029);
    v21 = v33;
    (*(v2 + 8))(v4, v1);
    sub_21DAE57A0(&v7[v23], type metadata accessor for TTRRecurrenceRuleModel);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v20 = sub_21DAE1C80();
    v33 = 0x7461446465786966;
    v34 = 0xEA00000000002865;
    MEMORY[0x223D42AA0](v20);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    v21 = v33;
    (*(v2 + 8))(v4, v1);
  }

  return v21;
}

uint64_t sub_21DAE1C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_21DBF5A2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  sub_21DBF597C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D68);
    return 4144959;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v15 setDateStyle_];
    v16 = sub_21DBF4EDC();
    v17 = [v16 rem_isAllDayDateComponents];

    [v15 setTimeStyle_];
    sub_21DBF507C();
    v18 = sub_21DBF5C4C();
    v19 = *(v18 - 8);
    v20 = 0;
    if ((*(v19 + 48))(v2, 1, v18) != 1)
    {
      v20 = sub_21DBF5C0C();
      (*(v19 + 8))(v2, v18);
    }

    [v15 setTimeZone_];

    v21 = sub_21DBF55BC();
    v22 = [v15 stringFromDate_];

    v23 = sub_21DBFA16C();
    (*(v11 + 8))(v13, v10);
    return v23;
  }
}

uint64_t sub_21DAE205C@<X0>(id *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v2, v13, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
        v17 = *(v16 + 48);
        v18 = *(v8 + 32);
        v18(v10, v13, v7);
        sub_21DAE99CC(v13 + v17, v6, type metadata accessor for TTRRecurrenceRuleModel);
        v19 = *(v16 + 48);
        v18(a1, v10, v7);
        sub_21DAE99CC(v6, a1 + v19, type metadata accessor for TTRRecurrenceRuleModel);
      }

      else
      {
        (*(v8 + 32))(a1, v13, v7);
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v15 = *v13;

        *a1 = v15;
        type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (EnumCaseMultiPayload == 6)
      {
        *a1 = *v13;
      }

      else
      {
        v20 = *v13;

        *a1 = v20;
      }

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        *a1 = *v13;
      }

      else
      {
        v21 = *v13;

        *a1 = v21;
      }

LABEL_13:
      type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  *a1 = *v13;
  type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TTRReminderSuggestedAttribute.identitiesEqual(_:_:)()
{
  v0 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_21DAE205C((&v8 - v4));
  sub_21DAE205C(v2);
  v6 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v5, v2);
  sub_21DAE57A0(v2, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21DAE57A0(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  return v6 & 1;
}

uint64_t sub_21DAE2510()
{
  v0 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (&v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_21DAE205C((&v8 - v4));
  sub_21DAE205C(v2);
  v6 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v5, v2);
  sub_21DAE57A0(v2, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  sub_21DAE57A0(v5, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  return v6 & 1;
}

uint64_t TTRReminderSuggestedAttribute.headerText.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  sub_21DAE5820(v1, v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (EnumCaseMultiPayload == 9)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else
      {
        v19 = *v7;
        v20 = v7[16];

        if (v20 == 1)
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

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_41;
    }

LABEL_30:
    sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else
      {
        sub_21DAE57A0(v7, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    (*(v9 + 32))(v14, v7, v8);
    sub_21DAE57A0(&v7[v16], type metadata accessor for TTRRecurrenceRuleModel);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  (*(v9 + 16))(v11, v14, v8);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  TTRReminderEditor.AllDayColloquialDateType.init(dueDateComponents:now:)(v11, v4, &v23);
  if (v23 - 2 >= 3)
  {
    (*(v9 + 8))(v14, v8);
    if (qword_280D1BAA8 != -1)
    {
LABEL_41:
      swift_once();
    }
  }

  else
  {
    v17 = sub_21DBF4EDC();
    v18 = [v17 rem_isAllDayDateComponents];

    (*(v9 + 8))(v14, v8);
    if (v18)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  return sub_21DBF516C();
}

void TTRReminderSuggestedAttribute.iconImageInfo.getter(uint64_t a1@<X8>)
{
  sub_21DAE3344(&v16);
  v2 = *(&v16 + 1);
  v3 = v16;
  v4 = v17;
  if (v17 <= 2u)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        *a1 = v16;
        *(a1 + 8) = 0;
      }

      else
      {
        if (!*(&v16 + 1))
        {
          v2 = [objc_opt_self() systemBlueColor];
        }

        *a1 = v3;
        *(a1 + 8) = v2;
        v4 = 2;
      }

      *(a1 + 16) = v4;
      return;
    }

    if (v16 == 2)
    {
      v8 = [objc_opt_self() systemRedColor];
    }

    else
    {
      v12 = objc_opt_self();
      if (v3)
      {
        v8 = [v12 systemBrownColor];
      }

      else
      {
        v8 = [v12 systemCyanColor];
      }
    }

LABEL_36:
    v14 = sub_21DBFA12C();

    v15 = [objc_opt_self() _systemImageNamed_];

    *a1 = v15;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    return;
  }

  if (v17 == 3)
  {
    v5 = 3;
    v6 = v16;
    v7 = 3;
  }

  else
  {
    if (v17 != 4)
    {
      if (v16 > 2)
      {
        v8 = 0;
        if (v16 ^ 3 | *(&v16 + 1) && !(v16 ^ 4 | *(&v16 + 1)))
        {
          v8 = [objc_opt_self() systemOrangeColor];
        }
      }

      else if (v16 == 0)
      {
        if (qword_280D16960 != -1)
        {
          swift_once();
        }

        v8 = qword_280D16968;
        v13 = qword_280D16968;
      }

      else if (v16 ^ 1 | *(&v16 + 1))
      {
        v8 = [objc_opt_self() systemBlueColor];
      }

      else
      {
        if (qword_280D16918 != -1)
        {
          swift_once();
        }

        v8 = qword_280D16920;
        v11 = qword_280D16920;
      }

      goto LABEL_36;
    }

    v5 = 4;
    v6 = v16;
    v7 = 4;
  }

  sub_21DAE5888(v6, *(&v16 + 1), v7);
  if (qword_280D16900 != -1)
  {
    swift_once();
  }

  v9 = qword_280D16908;
  *a1 = qword_280D16908;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;

  v10 = v9;
}

void sub_21DAE3344(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v2, v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        (*(v8 + 32))(v10, v6, v7);
        sub_21DAE57A0(&v6[v15], type metadata accessor for TTRRecurrenceRuleModel);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
      }

      v16 = sub_21DBF4EDC();
      v17 = [v16 rem_isAllDayDateComponents];

      (*(v8 + 8))(v10, v7);
      v12 = 0;
      v14 = v17 ^ 1;
      v13 = 5;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v14 = v6[8];

      v12 = 0;
      v13 = 0;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v12 = 0;
      v13 = 5;
      v14 = 2;
    }

    else
    {
      v12 = 0;
      v14 = *v6;
      v13 = 1;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v12 = 0;
      v14 = *v6;
      v13 = 3;
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v12 = 0;
      v14 = 5;
      v13 = 5;
    }

    else
    {
      v14 = *v6;

      v12 = 0;
      v13 = 4;
    }
  }

  else if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE57A0(v6, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v12 = 0;
    v13 = 5;
    v14 = 3;
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v12 = 0;
    v13 = 5;
    v14 = 4;
  }

  else
  {
    v14 = *v6;
    v12 = *(v6 + 1);
    v13 = 2;
  }

  *a1 = v14;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
}

void *TTRReminderSuggestedAttribute.contact.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v5 = *v3;
    v6 = v3[1];

    return v6;
  }

  else
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }
}

uint64_t TTRReminderSuggestedAttribute.secondaryValueText.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21DAE57A0(v4 + *(v12 + 48), type metadata accessor for TTRRecurrenceRuleModel);
      v13 = sub_21DBF509C();
      (*(*(v13 - 8) + 8))(v4, v13);
      return 0;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v6 = EnumCaseMultiPayload;
      result = 0;
      if (v6 == 6)
      {
        return result;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
  {
LABEL_13:
    sub_21DAE57A0(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }

  v8 = *v4;

  v9 = [v8 notesAsString];
  if (v9)
  {
    v10 = v9;
    v11 = sub_21DBFA16C();

    return v11;
  }

  v14 = [v8 attachmentContext];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v14 imageAttachments];

  sub_21D0D8CF0(0, &qword_280D0C290);
  v17 = sub_21DBFA5EC();

  if (v17 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      v18 = sub_21DBFBD7C();
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_24:

LABEL_25:

    return 0;
  }

LABEL_19:

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_21DC08D00;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = v18;
  v22 = sub_21DBFA13C();

  return v22;
}

void *TTRReminderSuggestedAttribute.images.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21DAE57A0(v3 + *(v8 + 48), type metadata accessor for TTRRecurrenceRuleModel);
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 8))(v3, v9);
      return MEMORY[0x277D84F90];
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v5 = *v3;
      v6 = v3[1];

      return v6;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return MEMORY[0x277D84F90];
}

uint64_t TTRReminderSuggestedAttribute.requiresSeparator.getter()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21DAE57A0(&v3[*(v8 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 8))(v3, v9);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v5 = *v3;
      v6 = v3[17];

      return v6;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return 0;
}

void *sub_21DAE3E68()
{
  v1 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DAE5820(v0, v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    return *v3;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v5 = *v3;
    v6 = v3[1];

    return v6;
  }

  else
  {
    sub_21DAE57A0(v3, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }
}

uint64_t _s15RemindersUICore29TTRReminderSuggestedAttributeV09AugmentedE4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v115 = a2;
  v116 = a1;
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v114 = &v103 - v5;
  v110 = sub_21DBF509C();
  v113 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v112 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = &v103 - v8;
  v9 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v9);
  v109 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = (&v103 - v12);
  MEMORY[0x28223BE20](v13);
  v106 = (&v103 - v14);
  MEMORY[0x28223BE20](v15);
  v107 = (&v103 - v16);
  MEMORY[0x28223BE20](v17);
  v105 = &v103 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (&v103 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = (&v103 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = (&v103 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v103 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v103 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v103 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE665E8);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v103 - v38;
  v41 = &v103 + *(v40 + 56) - v38;
  sub_21DAE5820(v116, &v103 - v38, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v116 = v41;
  sub_21DAE5820(v115, v41, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v49 = v111;
    v48 = v112;
    v115 = v39;
    v50 = v113;
    v51 = v114;
    if (EnumCaseMultiPayload <= 1)
    {
      v55 = v116;
      if (EnumCaseMultiPayload)
      {
        v70 = v33;
        sub_21DAE5820(v115, v33, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v72 = v48;
          v73 = v110;
          (*(v50 + 32))(v48, v55, v110);
          sub_21DAE99CC(&v70[v71], v51, type metadata accessor for TTRRecurrenceRuleModel);
          v74 = v55 + v71;
          v75 = v104;
          sub_21DAE99CC(v74, v104, type metadata accessor for TTRRecurrenceRuleModel);
          v76 = MEMORY[0x223D3D6A0](v70, v48);
          v77 = *(v50 + 8);
          v77(v70, v73);
          if (v76)
          {
            v47 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v51, v75);
            sub_21DAE57A0(v75, type metadata accessor for TTRRecurrenceRuleModel);
            sub_21DAE57A0(v51, type metadata accessor for TTRRecurrenceRuleModel);
            v77(v72, v73);
            sub_21DAE57A0(v115, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
            return v47 & 1;
          }

          sub_21DAE57A0(v75, type metadata accessor for TTRRecurrenceRuleModel);
          sub_21DAE57A0(v51, type metadata accessor for TTRRecurrenceRuleModel);
          v77(v72, v73);
          sub_21DAE57A0(v115, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          goto LABEL_34;
        }

        sub_21DAE57A0(&v33[v71], type metadata accessor for TTRRecurrenceRuleModel);
        (*(v50 + 8))(v33, v110);
        v39 = v115;
        goto LABEL_33;
      }

      v39 = v115;
      sub_21DAE5820(v115, v36, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v50 + 8))(v36, v110);
        goto LABEL_33;
      }

      v97 = v50;
      v98 = *(v50 + 32);
      v99 = v49;
      v100 = v55;
      v101 = v110;
      v98(v49, v100, v110);
      v47 = MEMORY[0x223D3D6A0](v36, v49);
      v102 = *(v97 + 8);
      v102(v99, v101);
      v102(v36, v101);
LABEL_30:
      sub_21DAE57A0(v39, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return v47 & 1;
    }

    v52 = v116;
    if (EnumCaseMultiPayload == 2)
    {
      v39 = v115;
      sub_21DAE5820(v115, v30, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v53 = *v30;
      v56 = v30[8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v57 = *v52;
        v58 = *(v52 + 8);
        sub_21D0D8CF0(0, &qword_280D17680);
        v59 = sub_21DBFB63C();

        if ((v59 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (v56 != 2)
        {
          if (v58 != 2 && ((v58 ^ v56) & 1) == 0)
          {
            goto LABEL_66;
          }

          goto LABEL_58;
        }

        if (v58 != 2)
        {
          goto LABEL_58;
        }

LABEL_66:
        sub_21DAE57A0(v39, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v47 = 1;
        return v47 & 1;
      }

      goto LABEL_32;
    }

    v39 = v115;
    if (EnumCaseMultiPayload == 3)
    {
      sub_21DAE5820(v115, v27, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v53 = *v27;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_21DAE5820(v115, v24, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v53 = *v24;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v68 = *v52;
    sub_21D0D8CF0(0, &qword_280D17680);
    v47 = sub_21DBFB63C();

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v67 = v106;
      sub_21DAE5820(v39, v106, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v53 = *v67;
      v52 = v116;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        v84 = v39;
        v85 = v109;
        sub_21DAE5820(v39, v109, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        v87 = *v85;
        v86 = *(v85 + 8);
        v88 = *(v85 + 16);
        v89 = *(v85 + 17);
        v90 = v116;
        if (swift_getEnumCaseMultiPayload() != 10)
        {

          v39 = v84;
          goto LABEL_33;
        }

        v92 = *v90;
        v91 = *(v90 + 8);
        v93 = *(v90 + 16);
        v94 = *(v90 + 17);
        sub_21D0D8CF0(0, &qword_280D17680);
        v95 = sub_21DBFB63C();

        if (v95)
        {
          v96 = sub_21D1D6D70(v86, v91);

          if ((v96 & 1) != 0 && v88 == v93)
          {
            v45 = v89 ^ v94;
            v46 = v84;
            goto LABEL_7;
          }
        }

        else
        {
        }

        sub_21DAE57A0(v84, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        goto LABEL_34;
      }

      v54 = v108;
      sub_21DAE5820(v39, v108, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      v53 = *v54;
      v52 = v116;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE5820(v39, v21, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v61 = *v21;
    v60 = v21[1];
    v62 = v116;
    if (swift_getEnumCaseMultiPayload() != 5)
    {

      goto LABEL_33;
    }

    v63 = v39;
    v65 = *v62;
    v64 = *(v62 + 8);
    sub_21D0D8CF0(0, &qword_280D17680);
    v66 = sub_21DBFB63C();

    if (v66)
    {
      v47 = sub_21DBFB63C();

      sub_21DAE57A0(v63, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      return v47 & 1;
    }

    sub_21DAE57A0(v63, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
LABEL_34:
    v47 = 0;
    return v47 & 1;
  }

  v43 = v116;
  if (EnumCaseMultiPayload != 6)
  {
    v78 = v107;
    sub_21DAE5820(v39, v107, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v79 = v78[1];
    if (swift_getEnumCaseMultiPayload() != 7)
    {

      goto LABEL_33;
    }

    v80 = *v43;
    v81 = v43[1];
    if (*v78 != v80)
    {

      goto LABEL_58;
    }

    if (v79)
    {
      if (v81)
      {
        sub_21D0D8CF0(0, &qword_280D1B8F0);
        v82 = v79;
        v83 = sub_21DBFB63C();

        if (v83)
        {
          goto LABEL_66;
        }
      }

      else
      {
      }

LABEL_58:
      sub_21DAE57A0(v39, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
      goto LABEL_34;
    }

    if (v81)
    {

      goto LABEL_58;
    }

    goto LABEL_66;
  }

  v44 = v105;
  sub_21DAE5820(v39, v105, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
LABEL_33:
    sub_21D0CF7E0(v39, &qword_27CE665E8);
    goto LABEL_34;
  }

  v45 = *v44 ^ *v43;
  v46 = v39;
LABEL_7:
  sub_21DAE57A0(v46, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  v47 = v45 ^ 1;
  return v47 & 1;
}

BOOL _s15RemindersUICore29TTRReminderSuggestedAttributeV13contentsEqualySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore29TTRReminderSuggestedAttributeV09AugmentedE4TypeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  if ((sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 16))
    {
      return 0;
    }

    return *v6 == *v8 && v6[1] == *(v8 + 8);
  }

  return *(v8 + 16) != 0;
}

BOOL _s15RemindersUICore29TTRReminderSuggestedAttributeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore29TTRReminderSuggestedAttributeV09AugmentedE4TypeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  if ((sub_21DBF79BC() & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = a2 + v5;
  if ((v7 & 1) == 0)
  {
    if (*(v8 + 16))
    {
      return 0;
    }

    return *v6 == *v8 && v6[1] == *(v8 + 8);
  }

  return (*(v8 + 16) & 1) != 0;
}

uint64_t _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v101 = a2;
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v87 = &v86 - v5;
  v94 = sub_21DBF509C();
  v99 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v86 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v95 = &v86 - v12;
  v13 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v13);
  v93 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v92 = (&v86 - v16);
  MEMORY[0x28223BE20](v17);
  v90 = (&v86 - v18);
  MEMORY[0x28223BE20](v19);
  v91 = (&v86 - v20);
  MEMORY[0x28223BE20](v21);
  v89 = &v86 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v86 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = (&v86 - v27);
  MEMORY[0x28223BE20](v29);
  v31 = (&v86 - v30);
  MEMORY[0x28223BE20](v32);
  v34 = (&v86 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = &v86 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v86 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE665F0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v86 - v42;
  v45 = (&v86 + *(v44 + 56) - v42);
  sub_21DAE5820(v100, &v86 - v42, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  v100 = v45;
  sub_21DAE5820(v101, v45, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  v101 = v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v50 = v37;
    v51 = v95;
    v52 = v96;
    v54 = v97;
    v53 = v98;
    v55 = v99;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v68 = v50;
        sub_21DAE5820(v101, v50, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v70 = v100;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v71 = *(v55 + 32);
          v72 = v54;
          v73 = v54;
          v74 = v94;
          v71(v73, v68, v94);
          v71(v53, v70, v74);
          v75 = v68 + v69;
          v76 = v87;
          sub_21DAE99CC(v75, v87, type metadata accessor for TTRRecurrenceRuleModel);
          v77 = v88;
          sub_21DAE99CC(v70 + v69, v88, type metadata accessor for TTRRecurrenceRuleModel);
          if (MEMORY[0x223D3D6A0](v72, v53))
          {
            v49 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v76, v77);
          }

          else
          {
            v49 = 0;
          }

          sub_21DAE57A0(v77, type metadata accessor for TTRRecurrenceRuleModel);
          sub_21DAE57A0(v76, type metadata accessor for TTRRecurrenceRuleModel);
          v84 = *(v55 + 8);
          v84(v53, v74);
          v84(v72, v74);
          goto LABEL_42;
        }

        sub_21DAE57A0(v68 + v69, type metadata accessor for TTRRecurrenceRuleModel);
        (*(v55 + 8))(v68, v94);
      }

      else
      {
        sub_21DAE5820(v101, v40, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v60 = v100;
        if (!swift_getEnumCaseMultiPayload())
        {
          v81 = *(v55 + 32);
          v82 = v94;
          v81(v51, v40, v94);
          v81(v52, v60, v82);
          v49 = MEMORY[0x223D3D6A0](v51, v52);
          v83 = *(v55 + 8);
          v83(v52, v82);
          v83(v51, v82);
          goto LABEL_42;
        }

        (*(v55 + 8))(v40, v94);
      }

      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_21DAE5820(v101, v34, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v56 = *v34;
      v57 = v100;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        sub_21DAE5820(v101, v28, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
        v56 = *v28;
        v64 = v100;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_36;
        }

        v65 = *v64;
        sub_21D0D8CF0(0, &qword_280D17680);
        v66 = [v56 objectID];
        v67 = [v65 objectID];
        goto LABEL_35;
      }

      sub_21DAE5820(v101, v31, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v56 = *v31;
      v57 = v100;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_36;
      }
    }

    v61 = *v57;
    v49 = [v56 isContentEqual_];

    goto LABEL_42;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v58 = v100;
    if (EnumCaseMultiPayload == 8)
    {
      v63 = v90;
      sub_21DAE5820(v101, v90, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v56 = *v63;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_36;
      }

LABEL_24:
      v62 = *v58;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v59 = v92;
      sub_21DAE5820(v101, v92, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      v56 = *v59;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v79 = v93;
    sub_21DAE5820(v101, v93, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v56 = *v79;
    if (swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_36;
    }

    v65 = *v58;
    sub_21D0D8CF0(0, &qword_280D17680);
    v66 = [v56 objectID];
    v67 = [v65 objectID];
LABEL_35:
    v80 = v67;
    v49 = sub_21DBFB63C();

    goto LABEL_42;
  }

  v47 = v100;
  if (EnumCaseMultiPayload == 5)
  {
    sub_21DAE5820(v101, v25, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    v56 = *v25;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v62 = *v47;
LABEL_25:
      sub_21D0D8CF0(0, &qword_280D17680);
      v49 = sub_21DBFB63C();

      goto LABEL_42;
    }

LABEL_36:

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v48 = v89;
    sub_21DAE5820(v101, v89, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v49 = *v48 ^ *v47 ^ 1;
LABEL_42:
      sub_21DAE57A0(v101, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
      return v49 & 1;
    }
  }

  else
  {
    v78 = v91;
    sub_21DAE5820(v101, v91, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v49 = *v78 == *v47;
      goto LABEL_42;
    }
  }

LABEL_38:
  sub_21D0CF7E0(v101, qword_27CE665F0);
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_21DAE57A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DAE5820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21DAE5888(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 - 3 < 2 || a3 == 1)
  {
  }

  else if (a3 == 2)
  {
  }
}

unint64_t sub_21DAE58B8()
{
  result = qword_27CE665D8;
  if (!qword_27CE665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE665D8);
  }

  return result;
}

unint64_t sub_21DAE590C(uint64_t a1)
{
  result = sub_21DAE5934();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21DAE5934()
{
  result = qword_27CE665E0;
  if (!qword_27CE665E0)
  {
    type metadata accessor for TTRReminderSuggestedAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE665E0);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRReminderSuggestedAttribute(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v25 = *a2;
          v26 = a2[1];
          *a1 = *a2;
          a1[1] = v26;
          v27 = v25;
          v28 = v26;
          goto LABEL_30;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v22 = a2[1];
          *a1 = *a2;
          a1[1] = v22;
          v23 = v22;
          goto LABEL_30;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
        {
LABEL_5:
          v9 = *a2;
          *a1 = *a2;
          v10 = v9;
LABEL_30:
          swift_storeEnumTagMultiPayload();
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload == 10)
        {
          v12 = *a2;
          v13 = a2[1];
          *a1 = *a2;
          a1[1] = v13;
          *(a1 + 8) = *(a2 + 8);
          v14 = v12;
          sub_21DBF8E0C();
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
          v29 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          v30 = v29;
          goto LABEL_30;
        }

        goto LABEL_5;
      }

      if (!EnumCaseMultiPayload)
      {
        v24 = sub_21DBF509C();
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v15 = sub_21DBF509C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v17 = a1 + v16;
        v18 = a2 + v16;
        v19 = type metadata accessor for TTRRecurrenceEndModel(0);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v18, 1, v19))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
          memcpy(v17, v18, *(*(v21 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v17, v18, *(v20 + 64));
          }

          else
          {
            v31 = sub_21DBF563C();
            (*(*(v31 - 8) + 16))(v17, v18, v31);
            swift_storeEnumTagMultiPayload();
          }

          (*(v20 + 56))(v17, 0, 1, v19);
        }

        v32 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v17[v32[5]] = *&v18[v32[5]];
        *&v17[v32[6]] = *&v18[v32[6]];
        *&v17[v32[7]] = *&v18[v32[7]];
        *&v17[v32[8]] = *&v18[v32[8]];
        *&v17[v32[9]] = *&v18[v32[9]];
        *&v17[v32[10]] = *&v18[v32[10]];
        *&v17[v32[11]] = *&v18[v32[11]];
        *&v17[v32[12]] = *&v18[v32[12]];
        *&v17[v32[13]] = *&v18[v32[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_30;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_31:
    v33 = a3[5];
    v34 = sub_21DBF79FC();
    (*(*(v34 - 8) + 16))(a1 + v33, a2 + v33, v34);
    v35 = a3[6];
    v36 = a3[7];
    v37 = *(a2 + v35);
    *(a1 + v35) = v37;
    v38 = a1 + v36;
    v39 = a2 + v36;
    *v38 = *v39;
    v38[16] = v39[16];
    v40 = v37;
    return a1;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRReminderSuggestedAttribute(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
      }

      else if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_23;
      }

      v5 = *(a1 + 8);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 10)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_9:
      v5 = *a1;
LABEL_22:

      goto LABEL_23;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = sub_21DBF509C();
        (*(*(v6 - 8) + 8))(a1, v6);
        v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v8 = type metadata accessor for TTRRecurrenceEndModel(0);
        if (!(*(*(v8 - 8) + 48))(v7, 1, v8) && !swift_getEnumCaseMultiPayload())
        {
          v9 = sub_21DBF563C();
          (*(*(v9 - 8) + 8))(v7, v9);
        }

        type metadata accessor for TTRRecurrenceRuleModel(0);
      }
    }

    else
    {
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(a1, v10);
    }
  }

LABEL_23:
  v11 = *(a2 + 20);
  v12 = sub_21DBF79FC();
  (*(*(v12 - 8) + 8))(a1 + v11, v12);
  v13 = *(a1 + *(a2 + 24));
}

void *initializeWithCopy for TTRReminderSuggestedAttribute(void *a1, void *a2, int *a3)
{
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v23 = *a2;
        v24 = a2[1];
        *a1 = *a2;
        a1[1] = v24;
        v25 = v23;
        v26 = v24;
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v20 = a2[1];
        *a1 = *a2;
        a1[1] = v20;
        v21 = v20;
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
LABEL_4:
        v8 = *a2;
        *a1 = *a2;
        v9 = v8;
LABEL_28:
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 10)
      {
        v10 = *a2;
        v11 = a2[1];
        *a1 = *a2;
        a1[1] = v11;
        *(a1 + 8) = *(a2 + 8);
        v12 = v10;
        sub_21DBF8E0C();
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v28 = v27;
        goto LABEL_28;
      }

      goto LABEL_4;
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = sub_21DBF509C();
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v13 = sub_21DBF509C();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = type metadata accessor for TTRRecurrenceEndModel(0);
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v16, 1, v17))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v15, v16, *(*(v19 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v15, v16, *(v18 + 64));
        }

        else
        {
          v29 = sub_21DBF563C();
          (*(*(v29 - 8) + 16))(v15, v16, v29);
          swift_storeEnumTagMultiPayload();
        }

        (*(v18 + 56))(v15, 0, 1, v17);
      }

      v30 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v15[v30[5]] = *&v16[v30[5]];
      *&v15[v30[6]] = *&v16[v30[6]];
      *&v15[v30[7]] = *&v16[v30[7]];
      *&v15[v30[8]] = *&v16[v30[8]];
      *&v15[v30[9]] = *&v16[v30[9]];
      *&v15[v30[10]] = *&v16[v30[10]];
      *&v15[v30[11]] = *&v16[v30[11]];
      *&v15[v30[12]] = *&v16[v30[12]];
      *&v15[v30[13]] = *&v16[v30[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_28;
    }
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_29:
  v31 = a3[5];
  v32 = sub_21DBF79FC();
  (*(*(v32 - 8) + 16))(a1 + v31, a2 + v31, v32);
  v33 = a3[6];
  v34 = a3[7];
  v35 = *(a2 + v33);
  *(a1 + v33) = v35;
  v36 = a1 + v34;
  v37 = a2 + v34;
  *v36 = *v37;
  v36[16] = v37[16];
  v38 = v35;
  return a1;
}

void *assignWithCopy for TTRReminderSuggestedAttribute(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DAE57A0(a1, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v6 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 7)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v22 = *a2;
          *a1 = *a2;
          v23 = a2[1];
          a1[1] = v23;
          v24 = v22;
          v25 = v23;
          goto LABEL_29;
        }

        if (EnumCaseMultiPayload == 7)
        {
          *a1 = *a2;
          v19 = a2[1];
          a1[1] = v19;
          v20 = v19;
          goto LABEL_29;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
        {
LABEL_5:
          v8 = *a2;
          *a1 = *a2;
          v9 = v8;
LABEL_29:
          swift_storeEnumTagMultiPayload();
          goto LABEL_30;
        }

        if (EnumCaseMultiPayload == 10)
        {
          v10 = *a2;
          *a1 = *a2;
          a1[1] = a2[1];
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 17) = *(a2 + 17);
          v11 = v10;
          sub_21DBF8E0C();
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v26 = *a2;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          v27 = v26;
          goto LABEL_29;
        }

        goto LABEL_5;
      }

      if (!EnumCaseMultiPayload)
      {
        v21 = sub_21DBF509C();
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v12 = sub_21DBF509C();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
        v14 = a1 + v13;
        v15 = a2 + v13;
        v16 = type metadata accessor for TTRRecurrenceEndModel(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v15, 1, v16))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
          memcpy(v14, v15, *(*(v18 - 8) + 64));
        }

        else
        {
          if (swift_getEnumCaseMultiPayload())
          {
            memcpy(v14, v15, *(v17 + 64));
          }

          else
          {
            v28 = sub_21DBF563C();
            (*(*(v28 - 8) + 16))(v14, v15, v28);
            swift_storeEnumTagMultiPayload();
          }

          (*(v17 + 56))(v14, 0, 1, v16);
        }

        v29 = type metadata accessor for TTRRecurrenceRuleModel(0);
        *&v14[v29[5]] = *&v15[v29[5]];
        *&v14[v29[6]] = *&v15[v29[6]];
        *&v14[v29[7]] = *&v15[v29[7]];
        *&v14[v29[8]] = *&v15[v29[8]];
        *&v14[v29[9]] = *&v15[v29[9]];
        *&v14[v29[10]] = *&v15[v29[10]];
        *&v14[v29[11]] = *&v15[v29[11]];
        *&v14[v29[12]] = *&v15[v29[12]];
        *&v14[v29[13]] = *&v15[v29[13]];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        goto LABEL_29;
      }
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_30:
  v30 = a3[5];
  v31 = sub_21DBF79FC();
  (*(*(v31 - 8) + 24))(a1 + v30, a2 + v30, v31);
  v32 = a3[6];
  v33 = *(a2 + v32);
  v34 = *(a1 + v32);
  *(a1 + v32) = v33;
  v35 = v33;

  v36 = a3[7];
  v37 = a1 + v36;
  v38 = a2 + v36;
  v39 = *v38;
  v37[16] = v38[16];
  *v37 = v39;
  return a1;
}

char *initializeWithTake for TTRReminderSuggestedAttribute(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for TTRRecurrenceEndModel(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v11, v12, *(v14 + 64));
      }

      else
      {
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(v11, v12, v16);
        swift_storeEnumTagMultiPayload();
      }

      (*(v14 + 56))(v11, 0, 1, v13);
    }

    v17 = type metadata accessor for TTRRecurrenceRuleModel(0);
    *&v11[v17[5]] = *&v12[v17[5]];
    *&v11[v17[6]] = *&v12[v17[6]];
    *&v11[v17[7]] = *&v12[v17[7]];
    *&v11[v17[8]] = *&v12[v17[8]];
    *&v11[v17[9]] = *&v12[v17[9]];
    *&v11[v17[10]] = *&v12[v17[10]];
    *&v11[v17[11]] = *&v12[v17[11]];
    *&v11[v17[12]] = *&v12[v17[12]];
    *&v11[v17[13]] = *&v12[v17[13]];
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_13:
  v18 = a3[5];
  v19 = sub_21DBF79FC();
  (*(*(v19 - 8) + 32))(&a1[v18], &a2[v18], v19);
  v20 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *v21 = *v22;
  v21[16] = v22[16];
  return a1;
}

char *assignWithTake for TTRReminderSuggestedAttribute(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21DAE57A0(a1, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    v6 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for TTRRecurrenceEndModel(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v11, v12, *(v14 + 64));
        }

        else
        {
          v16 = sub_21DBF563C();
          (*(*(v16 - 8) + 32))(v11, v12, v16);
          swift_storeEnumTagMultiPayload();
        }

        (*(v14 + 56))(v11, 0, 1, v13);
      }

      v17 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v11[v17[5]] = *&v12[v17[5]];
      *&v11[v17[6]] = *&v12[v17[6]];
      *&v11[v17[7]] = *&v12[v17[7]];
      *&v11[v17[8]] = *&v12[v17[8]];
      *&v11[v17[9]] = *&v12[v17[9]];
      *&v11[v17[10]] = *&v12[v17[10]];
      *&v11[v17[11]] = *&v12[v17[11]];
      *&v11[v17[12]] = *&v12[v17[12]];
      *&v11[v17[13]] = *&v12[v17[13]];
      goto LABEL_13;
    }

    if (!EnumCaseMultiPayload)
    {
      v8 = sub_21DBF509C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      goto LABEL_14;
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  v18 = a3[5];
  v19 = sub_21DBF79FC();
  (*(*(v19 - 8) + 40))(&a1[v18], &a2[v18], v19);
  v20 = a3[6];
  v21 = *&a1[v20];
  *&a1[v20] = *&a2[v20];

  v22 = a3[7];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  v23[16] = v24[16];
  return a1;
}

uint64_t sub_21DAE71FC()
{
  result = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(319);
  if (v1 <= 0x3F)
  {
    result = sub_21DBF79FC();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRReminderSuggestedAttribute.AttributeType(char *a1, char **a2, uint64_t a3)
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
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_17:
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
LABEL_30:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (!EnumCaseMultiPayload)
    {
      v18 = sub_21DBF509C();
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_21DBF509C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v11 = &a1[v10];
      v12 = a2 + v10;
      v13 = type metadata accessor for TTRRecurrenceEndModel(0);
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v12, 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v11, v12, *(*(v15 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v11, v12, *(v14 + 64));
        }

        else
        {
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 16))(v11, v12, v21);
          swift_storeEnumTagMultiPayload();
        }

        (*(v14 + 56))(v11, 0, 1, v13);
      }

      v22 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v11[v22[5]] = *&v12[v22[5]];
      *&v11[v22[6]] = *&v12[v22[6]];
      *&v11[v22[7]] = *&v12[v22[7]];
      *&v11[v22[8]] = *&v12[v22[8]];
      *&v11[v22[9]] = *&v12[v22[9]];
      *&v11[v22[10]] = *&v12[v22[10]];
      *&v11[v22[11]] = *&v12[v22[11]];
      *&v11[v22[12]] = *&v12[v22[12]];
      *&v11[v22[13]] = *&v12[v22[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_30;
    }
  }

  else if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    goto LABEL_17;
  }

  v19 = *(v6 + 64);

  return memcpy(a1, a2, v19);
}

void destroy for TTRReminderSuggestedAttribute.AttributeType(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload != 4 && EnumCaseMultiPayload != 5)
      {
        return;
      }
    }

    else if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 10)
    {
      return;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 1)
  {
LABEL_19:
    v7 = *a1;

    return;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = sub_21DBF509C();
      (*(*(v3 - 8) + 8))(a1, v3);
      v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v5 = type metadata accessor for TTRRecurrenceEndModel(0);
      if (!(*(*(v5 - 8) + 48))(v4, 1, v5) && !swift_getEnumCaseMultiPayload())
      {
        v6 = sub_21DBF563C();
        (*(*(v6 - 8) + 8))(v4, v6);
      }

      type metadata accessor for TTRRecurrenceRuleModel(0);
    }
  }

  else
  {
    v8 = sub_21DBF509C();
    v9 = *(*(v8 - 8) + 8);

    v9(a1, v8);
  }
}

void **initializeWithCopy for TTRReminderSuggestedAttribute.AttributeType(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_15:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (!EnumCaseMultiPayload)
    {
      v16 = sub_21DBF509C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_21DBF509C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for TTRRecurrenceEndModel(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v9, v10, *(*(v13 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v9, v10, *(v12 + 64));
        }

        else
        {
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 16))(v9, v10, v19);
          swift_storeEnumTagMultiPayload();
        }

        (*(v12 + 56))(v9, 0, 1, v11);
      }

      v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v9[v20[5]] = *&v10[v20[5]];
      *&v9[v20[6]] = *&v10[v20[6]];
      *&v9[v20[7]] = *&v10[v20[7]];
      *&v9[v20[8]] = *&v10[v20[8]];
      *&v9[v20[9]] = *&v10[v20[9]];
      *&v9[v20[10]] = *&v10[v20[10]];
      *&v9[v20[11]] = *&v10[v20[11]];
      *&v9[v20[12]] = *&v10[v20[12]];
      *&v9[v20[13]] = *&v10[v20[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_28;
    }
  }

  else if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_15;
    }
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    goto LABEL_15;
  }

  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

void **assignWithCopy for TTRReminderSuggestedAttribute.AttributeType(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAE57A0(a1, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
LABEL_16:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
LABEL_29:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (!EnumCaseMultiPayload)
    {
      v16 = sub_21DBF509C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = sub_21DBF509C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v9 = a1 + v8;
      v10 = a2 + v8;
      v11 = type metadata accessor for TTRRecurrenceEndModel(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v9, v10, *(*(v13 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v9, v10, *(v12 + 64));
        }

        else
        {
          v19 = sub_21DBF563C();
          (*(*(v19 - 8) + 16))(v9, v10, v19);
          swift_storeEnumTagMultiPayload();
        }

        (*(v12 + 56))(v9, 0, 1, v11);
      }

      v20 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v9[v20[5]] = *&v10[v20[5]];
      *&v9[v20[6]] = *&v10[v20[6]];
      *&v9[v20[7]] = *&v10[v20[7]];
      *&v9[v20[8]] = *&v10[v20[8]];
      *&v9[v20[9]] = *&v10[v20[9]];
      *&v9[v20[10]] = *&v10[v20[10]];
      *&v9[v20[11]] = *&v10[v20[11]];
      *&v9[v20[12]] = *&v10[v20[12]];
      *&v9[v20[13]] = *&v10[v20[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_29;
    }
  }

  else if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      goto LABEL_16;
    }
  }

  else if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9 || EnumCaseMultiPayload == 10)
  {
    goto LABEL_16;
  }

  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

char *initializeBufferWithCopyOfBuffer for TTRReminderSuggestedAttribute.AugmentedAttributeType(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v24 = *a2;
        v25 = a2[1];
        *a1 = v24;
        *(a1 + 1) = v25;
        v26 = v24;
        v27 = v25;
        goto LABEL_32;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v21 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v21;
        v22 = v21;
        goto LABEL_32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
LABEL_5:
        v8 = *a2;
        *a1 = *a2;
        v9 = v8;
LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload == 10)
      {
        v11 = *a2;
        v12 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v12;
        *(a1 + 8) = *(a2 + 8);
        v13 = v11;
        sub_21DBF8E0C();
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = *a2;
        *a1 = *a2;
        a1[8] = *(a2 + 8);
        v29 = v28;
        goto LABEL_32;
      }

      goto LABEL_5;
    }

    if (!EnumCaseMultiPayload)
    {
      v23 = sub_21DBF509C();
      (*(*(v23 - 8) + 16))(a1, a2, v23);
      goto LABEL_32;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = sub_21DBF509C();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v16 = &a1[v15];
      v17 = a2 + v15;
      v18 = type metadata accessor for TTRRecurrenceEndModel(0);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v17, 1, v18))
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v16, v17, *(*(v20 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v16, v17, *(v19 + 64));
        }

        else
        {
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 16))(v16, v17, v32);
          swift_storeEnumTagMultiPayload();
        }

        (*(v19 + 56))(v16, 0, 1, v18);
      }

      v33 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v16[v33[5]] = *&v17[v33[5]];
      *&v16[v33[6]] = *&v17[v33[6]];
      *&v16[v33[7]] = *&v17[v33[7]];
      *&v16[v33[8]] = *&v17[v33[8]];
      *&v16[v33[9]] = *&v17[v33[9]];
      *&v16[v33[10]] = *&v17[v33[10]];
      *&v16[v33[11]] = *&v17[v33[11]];
      *&v16[v33[12]] = *&v17[v33[12]];
      *&v16[v33[13]] = *&v17[v33[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_32;
    }
  }

  v30 = *(v6 + 64);

  return memcpy(a1, a2, v30);
}

void destroy for TTRReminderSuggestedAttribute.AugmentedAttributeType(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
      }

      else if (EnumCaseMultiPayload != 7)
      {
        return;
      }

      v3 = *(a1 + 8);
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
    {
LABEL_9:
      v3 = *a1;
LABEL_27:

      return;
    }

    if (EnumCaseMultiPayload != 10)
    {
      return;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }

    v4 = sub_21DBF509C();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v6 = type metadata accessor for TTRRecurrenceEndModel(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6) && !swift_getEnumCaseMultiPayload())
    {
      v7 = sub_21DBF563C();
      (*(*(v7 - 8) + 8))(v5, v7);
    }

    type metadata accessor for TTRRecurrenceRuleModel(0);

LABEL_16:

    return;
  }

  v8 = sub_21DBF509C();
  v9 = *(*(v8 - 8) + 8);

  v9(a1, v8);
}

void *initializeWithCopy for TTRReminderSuggestedAttribute.AugmentedAttributeType(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v22 = *a2;
        v23 = a2[1];
        *a1 = *a2;
        a1[1] = v23;
        v24 = v22;
        v25 = v23;
        goto LABEL_30;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v19 = a2[1];
        *a1 = *a2;
        a1[1] = v19;
        v20 = v19;
        goto LABEL_30;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
LABEL_4:
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload == 10)
      {
        v9 = *a2;
        v10 = a2[1];
        *a1 = *a2;
        a1[1] = v10;
        *(a1 + 8) = *(a2 + 8);
        v11 = v9;
        sub_21DBF8E0C();
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
        v26 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v27 = v26;
        goto LABEL_30;
      }

      goto LABEL_4;
    }

    if (!EnumCaseMultiPayload)
    {
      v21 = sub_21DBF509C();
      (*(*(v21 - 8) + 16))(a1, a2, v21);
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_21DBF509C();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = type metadata accessor for TTRRecurrenceEndModel(0);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v14, v15, *(v17 + 64));
        }

        else
        {
          v30 = sub_21DBF563C();
          (*(*(v30 - 8) + 16))(v14, v15, v30);
          swift_storeEnumTagMultiPayload();
        }

        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v31 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v14[v31[5]] = *&v15[v31[5]];
      *&v14[v31[6]] = *&v15[v31[6]];
      *&v14[v31[7]] = *&v15[v31[7]];
      *&v14[v31[8]] = *&v15[v31[8]];
      *&v14[v31[9]] = *&v15[v31[9]];
      *&v14[v31[10]] = *&v15[v31[10]];
      *&v14[v31[11]] = *&v15[v31[11]];
      *&v14[v31[12]] = *&v15[v31[12]];
      *&v14[v31[13]] = *&v15[v31[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_30;
    }
  }

  v28 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v28);
}

void *assignWithCopy for TTRReminderSuggestedAttribute.AugmentedAttributeType(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAE57A0(a1, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = *a2;
        *a1 = *a2;
        v22 = a2[1];
        a1[1] = v22;
        v23 = v21;
        v24 = v22;
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 7)
      {
        *a1 = *a2;
        v18 = a2[1];
        a1[1] = v18;
        v19 = v18;
        goto LABEL_31;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 8 || EnumCaseMultiPayload == 9)
      {
LABEL_5:
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
LABEL_31:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      if (EnumCaseMultiPayload == 10)
      {
        v9 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 17) = *(a2 + 17);
        v10 = v9;
        sub_21DBF8E0C();
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v26 = v25;
        goto LABEL_31;
      }

      goto LABEL_5;
    }

    if (!EnumCaseMultiPayload)
    {
      v20 = sub_21DBF509C();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v11 = sub_21DBF509C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = type metadata accessor for TTRRecurrenceEndModel(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        if (swift_getEnumCaseMultiPayload())
        {
          memcpy(v13, v14, *(v16 + 64));
        }

        else
        {
          v29 = sub_21DBF563C();
          (*(*(v29 - 8) + 16))(v13, v14, v29);
          swift_storeEnumTagMultiPayload();
        }

        (*(v16 + 56))(v13, 0, 1, v15);
      }

      v30 = type metadata accessor for TTRRecurrenceRuleModel(0);
      *&v13[v30[5]] = *&v14[v30[5]];
      *&v13[v30[6]] = *&v14[v30[6]];
      *&v13[v30[7]] = *&v14[v30[7]];
      *&v13[v30[8]] = *&v14[v30[8]];
      *&v13[v30[9]] = *&v14[v30[9]];
      *&v13[v30[10]] = *&v14[v30[10]];
      *&v13[v30[11]] = *&v14[v30[11]];
      *&v13[v30[12]] = *&v14[v30[12]];
      *&v13[v30[13]] = *&v14[v30[13]];
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      goto LABEL_31;
    }
  }

  v27 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v27);
}

char *sub_21DAE928C(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for TTRRecurrenceEndModel(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(v10, v11, *(*(v14 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v10, v11, *(v13 + 64));
      }

      else
      {
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 32))(v10, v11, v17);
        swift_storeEnumTagMultiPayload();
      }

      (*(v13 + 56))(v10, 0, 1, v12);
    }

    v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
    *&v10[v18[5]] = *&v11[v18[5]];
    *&v10[v18[6]] = *&v11[v18[6]];
    *&v10[v18[7]] = *&v11[v18[7]];
    *&v10[v18[8]] = *&v11[v18[8]];
    *&v10[v18[9]] = *&v11[v18[9]];
    *&v10[v18[10]] = *&v11[v18[10]];
    *&v10[v18[11]] = *&v11[v18[11]];
    *&v10[v18[12]] = *&v11[v18[12]];
    *&v10[v18[13]] = *&v11[v18[13]];
    goto LABEL_14;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

char *sub_21DAE9584(char *a1, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21DAE57A0(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_21DBF509C();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38) + 48);
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for TTRRecurrenceEndModel(0);
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(v11, v12, *(v14 + 64));
      }

      else
      {
        v18 = sub_21DBF563C();
        (*(*(v18 - 8) + 32))(v11, v12, v18);
        swift_storeEnumTagMultiPayload();
      }

      (*(v14 + 56))(v11, 0, 1, v13);
    }

    v19 = type metadata accessor for TTRRecurrenceRuleModel(0);
    *&v11[v19[5]] = *&v12[v19[5]];
    *&v11[v19[6]] = *&v12[v19[6]];
    *&v11[v19[7]] = *&v12[v19[7]];
    *&v11[v19[8]] = *&v12[v19[8]];
    *&v11[v19[9]] = *&v12[v19[9]];
    *&v11[v19[10]] = *&v12[v19[10]];
    *&v11[v19[11]] = *&v12[v19[11]];
    *&v11[v19[12]] = *&v12[v19[12]];
    *&v11[v19[13]] = *&v12[v19[13]];
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
LABEL_15:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_21DAE989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_21DBF509C();
  if (v12 <= 0x3F)
  {
    v15 = *(result - 8) + 64;
    result = type metadata accessor for TTRRecurrenceRuleModel(319);
    if (v13 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v16 = &v14;
      v17 = a4;
      v18 = MEMORY[0x277D833E8] + 64;
      v19 = MEMORY[0x277D833E8] + 64;
      v20 = a5;
      v21 = &unk_21DC3C928;
      v22 = a6;
      v23 = MEMORY[0x277D833E8] + 64;
      v24 = MEMORY[0x277D833E8] + 64;
      v25 = a7;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21DAE99CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRViewModelObserver.__allocating_init(didReceiveNewValue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRViewModelObserver.init(didReceiveNewValue:)(a1, a2);
  return v4;
}

Swift::Void __swiftcall TTRViewModelObserver.unsubscribe()()
{
  v1 = *(*v0 + 112);
  if (*(v0 + v1))
  {

    sub_21DBF901C();
  }

  *(v0 + v1) = 0;
}

uint64_t TTRViewModelObserver.ValueChangeInfo.oldValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TTRViewModelObserver.localValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_21DAE9C98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D10CD80(0);
  }

  return result;
}

uint64_t TTRViewModelObserver.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_21DBFBA8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D10CCDC(*(v0 + *(*v0 + 104)));

  return v0;
}

uint64_t TTRViewModelObserver.__deallocating_deinit()
{
  TTRViewModelObserver.deinit();

  return swift_deallocClassInstance();
}

void *sub_21DAE9E68(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = ~v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  if (v7 <= 7u && (v7 & 0x100000) == 0 && ((-2 - v7) | v7) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v13 = &a1[v7 + 1];
    v14 = &a2[v7 + 1];
    if ((*(v5 + 48))(v14 & v8, 1, v4))
    {
      memcpy((v13 & v8), (v14 & v8), v9);
    }

    else
    {
      (*(v6 + 16))(v13 & v8, v14 & v8, v4);
      (*(v6 + 56))(v13 & v8, 0, 1, v4);
    }
  }

  else
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v7 + 16) & v8));
  }

  return v3;
}

_BYTE *sub_21DAE9FD0(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = &a1[v6 + 1];
  v8 = &a2[v6 + 1];
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_BYTE *sub_21DAEA0E4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = &a1[v6 + 1];
  v8 = &a2[v6 + 1];
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

_BYTE *sub_21DAEA270(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = &a1[v6 + 1];
  v8 = &a2[v6 + 1];
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_BYTE *sub_21DAEA384(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = &a1[v6 + 1];
  v8 = &a2[v6 + 1];
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

uint64_t sub_21DAEA510(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 1) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if (v6 > 0xFE)
      {
        v20 = (*(v4 + 48))(&a1[v8 + 1] & ~v8);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        v18 = v17 >= 2;
        v19 = (v17 + 2147483646) & 0x7FFFFFFF;
        if (v18)
        {
          return (v19 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_21DAEA6D0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 1) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 > 0xFE)
  {
    v21 = (&a1[v11 + 1] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 1] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_21DAEA9BC()
{
  swift_unknownObjectRelease();
}

uint64_t sub_21DAEA9F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  swift_unknownObjectRetain();

  return a1;
}

void *sub_21DAEAA3C(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t sub_21DAEAA9C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

void sub_21DAEAB00(uint64_t a1, uint64_t a2, char a3)
{
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAECC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446722;
    v9 = sub_21DBFBF1C();
    v11 = sub_21D0CDFB4(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_21DBF9E7C();
    v14 = a3;
    v15 = sub_21D0CDFB4(v12, v13, &v19);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2082;
    v16 = sub_21DBF9E7C();
    v18 = sub_21D0CDFB4(v16, v17, &v19);
    a3 = v14;

    *(v7 + 24) = v18;
    _os_log_impl(&dword_21D0C9000, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

void sub_21DAEACDC()
{
  sub_21DBF606C();
  sub_21DBF835C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_21DBFBF1C();
  v1 = sub_21DBFA12C();

  *(inited + 48) = v1;
  v2 = sub_21D1777B4(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE59220);
  MEMORY[0x223D40B00](0xD00000000000001CLL, 0x800000021DC77790, v2, 0, 1);

  if (qword_280D17A60 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_280D21AC8);
  sub_21DBF8E0C();
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    v8 = sub_21DBFBF1C();
    v10 = sub_21D0CDFB4(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_21DBF9E7C();
    v13 = sub_21D0CDFB4(v11, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_21D0C9000, v4, v5, "%{public}s; UserInfo=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }
}

void sub_21DAEAF90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28 - v10;
  sub_21DBF835C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D10;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_21D66A81C();
  *(inited + 48) = sub_21DBFB66C();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x800000021DC777C0;
  v28 = a1;
  *(inited + 72) = sub_21DBFA12C();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x800000021DC777E0;
  v29 = a3;
  *(inited + 96) = sub_21DBFA12C();
  v13 = sub_21D1777B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
  swift_arrayDestroy();
  MEMORY[0x223D40B00](0xD00000000000001CLL, 0x800000021DC77790, v13, 0, 1);

  sub_21D3050B8(v30, v11);
  v14 = sub_21DBF54CC();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5EA20);
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v16 = sub_21DBF535C();
    v17 = v18;
    (*(v15 + 8))(v11, v14);
  }

  v31[0] = v16;
  v31[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0);
  v19 = sub_21DBFBA5C();
  v21 = v20;

  if (qword_280D17A60 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_280D21AC8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAEDC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31[0] = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_21D0CDFB4(v28, a2, v31);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_21D0CDFB4(v29, a4, v31);
    *(v25 + 22) = 2080;
    v27 = sub_21D0CDFB4(v19, v21, v31);

    *(v25 + 24) = v27;
    _os_log_impl(&dword_21D0C9000, v23, v24, "Navigating (%s) -> (%s) {url:%s}", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v26, -1, -1);
    MEMORY[0x223D46520](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21DAEB4C0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  MEMORY[0x28223BE20](v20);
  v39 = &v33 - v21;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v33 - v21);
  sub_21DAEEC04(a1, v13, type metadata accessor for TTRRemindersListViewModel.Item);
  v36 = *(v3 + 56);
  v37 = v3 + 56;
  v36(v13, 0, 1, v2);
  sub_21D0D3954(v13, v10, &unk_27CE5CD80);
  v22 = *(v3 + 48);
  v34 = v2;
  v35 = v22;
  if (v22(v10, 1, v2) == 1)
  {
LABEL_2:
    sub_21D0CF7E0(v13, &unk_27CE5CD80);
    sub_21DAEEC6C(v39, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v10, &unk_27CE5CD80);
    return 0;
  }

  else
  {
    while (1)
    {
      sub_21DAEECCC(v10, v5, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
      v27 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v19, v39);
      sub_21DAEEC6C(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v27)
      {
        break;
      }

      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
      v28 = v38;
      swift_beginAccess();
      if (*(*(v28 + 24) + 16) && (sub_21D181E00(v16, v29), (v30 & 1) != 0))
      {
        swift_endAccess();

        sub_21DAEEC6C(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        Strong = swift_weakLoadStrong();

        sub_21DAEEC6C(v5, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v13, &unk_27CE5CD80);
        if (Strong)
        {
          v32 = *(*Strong + 120);
          swift_beginAccess();
          sub_21DAEEC04(Strong + v32, v40, type metadata accessor for TTRRemindersListViewModel.Item);

          v24 = 0;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        swift_endAccess();
        sub_21DAEEC6C(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DAEEC6C(v5, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v13, &unk_27CE5CD80);
        v24 = 1;
      }

      v25 = v40;
      v26 = v34;
      v36(v40, v24, 1, v34);
      sub_21D36DFDC(v25, v13);
      sub_21D0D3954(v13, v10, &unk_27CE5CD80);
      if (v35(v10, 1, v26) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_21DAEEC6C(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v13, &unk_27CE5CD80);
    sub_21DAEEC6C(v39, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return 1;
  }
}

uint64_t sub_21DAEBA40(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v37 = &v31 - v18;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v31 - v18);
  sub_21DAEEC04(a1, v13, type metadata accessor for TTRRemindersListViewModel.Item);
  (*(v3 + 56))(v13, 0, 1, v2);
  v36 = v13;
  sub_21D0D3954(v13, v10, &unk_27CE5CD80);
  v19 = *(v3 + 48);
  v33 = v3 + 48;
  v34 = v2;
  v31 = v19;
  if (v19(v10, 1, v2) == 1)
  {
LABEL_4:
    sub_21D0CF7E0(v36, &unk_27CE5CD80);
    sub_21DAEEC6C(v37, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v10, &unk_27CE5CD80);
    return 0;
  }

  else
  {
    while (1)
    {
      sub_21DAEECCC(v10, v5, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v37);
      sub_21DAEEC6C(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v20)
      {
        break;
      }

      v22 = *(v35 + 16);
      v21 = *(v35 + 24);
      ObjectType = swift_getObjectType();
      v38 = v22;
      v24 = *(*(v21 + 8) + 8);
      v25 = *(v24 + 48);
      swift_unknownObjectRetain();
      v26 = v10;
      v27 = v32;
      v25(v5, ObjectType, v24);
      sub_21DAEEC6C(v5, type metadata accessor for TTRRemindersListViewModel.Item);
      v28 = v36;
      sub_21D0CF7E0(v36, &unk_27CE5CD80);
      swift_unknownObjectRelease();
      v29 = v27;
      v10 = v26;
      sub_21D36DFDC(v29, v28);
      sub_21D0D3954(v28, v26, &unk_27CE5CD80);
      if (v31(v26, 1, v34) == 1)
      {
        goto LABEL_4;
      }
    }

    sub_21DAEEC6C(v5, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v36, &unk_27CE5CD80);
    sub_21DAEEC6C(v37, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return 1;
  }
}

uint64_t sub_21DAEBE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = v2[2];
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  ObjectType = swift_getObjectType();
  sub_21D5EF860(v18, a1, v10, ObjectType, v17);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &unk_27CE5CD80);
  }

  else
  {
    v32 = a2;
    sub_21DAEECCC(v9, v15, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = *(*v2 + 104);
    v23 = *(v16 + 16);
    v24 = *(v16 + 24);
    v25 = swift_getObjectType();
    v26 = v2 + v22;
    v27 = v34;
    sub_21D5EF860(v23, v26, v10, v25, v24);
    if (v20(v27, 1, v10) == 1)
    {
      sub_21DAEEC6C(v15, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v27, &unk_27CE5CD80);
      v21 = 1;
      a2 = v32;
      return (*(v11 + 56))(a2, v21, 1, v10);
    }

    v28 = v33;
    sub_21DAEECCC(v27, v33, type metadata accessor for TTRRemindersListViewModel.Item);
    v29 = sub_21DAEBA40(v15);
    sub_21DAEEC6C(v28, type metadata accessor for TTRRemindersListViewModel.Item);
    a2 = v32;
    if (v29)
    {
      sub_21DAEECCC(v15, v32, type metadata accessor for TTRRemindersListViewModel.Item);
      v21 = 0;
      return (*(v11 + 56))(a2, v21, 1, v10);
    }

    sub_21DAEEC6C(v15, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v21 = 1;
  return (*(v11 + 56))(a2, v21, 1, v10);
}

uint64_t sub_21DAEC1D4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666B8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65F20);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30[-v14];
  MEMORY[0x28223BE20](v16);
  v19 = &v30[-v18];
  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v8;
  v33 = v17;
  v20 = v5;
  v21 = *(*v2 + 88);
  swift_beginAccess();
  v34 = a1;
  sub_21DAEEC04(a1, v19, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
  (*(v6 + 56))(v19, 0, 1, v20);
  v22 = *(v9 + 48);
  v23 = v2 + v21;
  v5 = v20;
  sub_21D0D3954(v23, v11, &qword_27CE65F20);
  sub_21D0D3954(v19, &v11[v22], &qword_27CE65F20);
  v24 = *(v6 + 48);
  if (v24(v11, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE65F20);
    if (v24(&v11[v22], 1, v20) == 1)
    {
      return sub_21D0CF7E0(v11, &qword_27CE65F20);
    }

    goto LABEL_7;
  }

  v26 = v33;
  sub_21D0D3954(v11, v33, &qword_27CE65F20);
  if (v24(&v11[v22], 1, v5) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE65F20);
    sub_21DAEEC6C(v26, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
LABEL_7:
    sub_21D0CF7E0(v11, &qword_27CE666B8);
    a1 = v34;
LABEL_8:
    sub_21DAEEC04(a1, v15, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
    (*(v6 + 56))(v15, 0, 1, v5);
    v27 = *(*v2 + 88);
    swift_beginAccess();
    sub_21D0F02F4(v15, v2 + v27, &qword_27CE65F20);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    sub_21D0EAF6C();
    return sub_21DBF912C();
  }

  v28 = &v11[v22];
  v29 = v32;
  sub_21DAEECCC(v28, v32, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
  v31 = _s15RemindersUICore39TTRBoardColumnItemIntermediateViewModelV2eeoiySbAC_ACtFZ_0(v26, v29);
  sub_21DAEEC6C(v29, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
  sub_21D0CF7E0(v19, &qword_27CE65F20);
  sub_21DAEEC6C(v26, type metadata accessor for TTRBoardColumnItemIntermediateViewModel);
  result = sub_21D0CF7E0(v11, &qword_27CE65F20);
  a1 = v34;
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_21DAEC6B0(uint64_t a1, char a2)
{
  v5 = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66690);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v32[-v18];
  if (a2)
  {
    goto LABEL_9;
  }

  v34 = v8;
  v20 = v5;
  v21 = *(*v2 + 88);
  swift_beginAccess();
  v35 = a1;
  sub_21DAEEC04(a1, v19, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
  (*(v6 + 56))(v19, 0, 1, v20);
  v22 = *(v9 + 48);
  v23 = v2 + v21;
  v5 = v20;
  sub_21D0D3954(v23, v11, &qword_27CE66690);
  sub_21D0D3954(v19, &v11[v22], &qword_27CE66690);
  v24 = *(v6 + 48);
  if (v24(v11, 1, v20) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE66690);
    if (v24(&v11[v22], 1, v20) == 1)
    {
      return sub_21D0CF7E0(v11, &qword_27CE66690);
    }

    goto LABEL_7;
  }

  v26 = v36;
  sub_21D0D3954(v11, v36, &qword_27CE66690);
  if (v24(&v11[v22], 1, v5) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE66690);
    sub_21DAEEC6C(v26, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
LABEL_7:
    v27 = &qword_27CE666B0;
    v28 = v11;
LABEL_8:
    sub_21D0CF7E0(v28, v27);
    a1 = v35;
LABEL_9:
    sub_21DAEEC04(a1, v16, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
    (*(v6 + 56))(v16, 0, 1, v5);
    v29 = *(*v2 + 88);
    swift_beginAccess();
    sub_21D0F02F4(v16, v2 + v29, &qword_27CE66690);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    sub_21D0EAF6C();
    return sub_21DBF912C();
  }

  v30 = &v11[v22];
  v31 = v34;
  sub_21DAEECCC(v30, v34, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
  if (*v26 != *v31)
  {
    sub_21DAEEC6C(v31, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
    sub_21D0CF7E0(v19, &qword_27CE66690);
    sub_21DAEEC6C(v26, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
    v28 = v11;
    v27 = &qword_27CE66690;
    goto LABEL_8;
  }

  v33 = _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(&v26[*(v5 + 20)], &v31[*(v5 + 20)]);
  sub_21DAEEC6C(v31, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
  sub_21D0CF7E0(v19, &qword_27CE66690);
  sub_21DAEEC6C(v26, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
  result = sub_21D0CF7E0(v11, &qword_27CE66690);
  a1 = v35;
  if ((v33 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_21DAECC00()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE66678);
  v1 = __swift_project_value_buffer(v0, qword_27CE66678);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRBoardColumnPresentationTreesManagementViewCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.observableIntermediateCellViewModels.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.observableHeaderViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.__allocating_init(dataSource:)(void *a1)
{
  v2 = swift_allocObject();
  TTRBoardColumnPresentationTreesManagementViewCapability.init(dataSource:)(a1);
  return v2;
}

void *TTRBoardColumnPresentationTreesManagementViewCapability.init(dataSource:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = 0;
  v2[6] = 0;
  v2[5] = 0;
  v2[7] = a1;
  v7 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66698);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F98];
  v8[3] = v7;
  v8[4] = v9;
  v8[2] = sub_21DAED4AC;
  swift_beginAccess();
  v2[5] = v8;
  v10 = a1;

  v11 = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666A0);
  v13 = swift_allocObject();
  v12((v13 + *(*v13 + 88)), 1, 1, v11);
  v14 = *(*v13 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  swift_allocObject();
  v15 = sub_21DBF907C();

  *(v13 + v14) = v15;
  v16 = *(*v13 + 88);
  swift_beginAccess();
  sub_21D0F02F4(v6, v13 + v16, &qword_27CE66690);
  swift_endAccess();
  swift_beginAccess();
  v2[6] = v13;

  v17 = swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666A8);
  v18 = swift_allocObject();
  v19 = *(*v18 + 88);
  v20 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  v21 = (v18 + *(*v18 + 104));
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 0;
  *(v18 + *(*v18 + 112)) = 0;
  v22 = (v18 + *(*v18 + 96));
  *v22 = sub_21DAED514;
  v22[1] = v17;
  swift_beginAccess();
  v2[4] = v18;

  return v2;
}

void sub_21DAED3E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 56);

    TTRBoardColumnDiffableDataSource.intermediateCellViewModel(forItemID:)(a1, a2);
  }

  else
  {
    v6 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
    (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_21DAED4B4(unsigned __int8 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21DAED51C(a1);
  }

  return result;
}

uint64_t sub_21DAED51C(unsigned __int8 *a1)
{
  v2 = v1;
  v108 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v105 = *(v3 - 8);
  v106 = v3;
  MEMORY[0x28223BE20](v3);
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v102);
  v103 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v107 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v92 - v18;
  MEMORY[0x28223BE20](v19);
  v109 = &v92 - v20;
  v21 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AC8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v92 - v26;
  v28 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v110 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v32 = v2[4];
  if (!v32)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v33 = *(*v32 + 88);
  swift_beginAccess();
  sub_21D0D3954(v32 + v33, v27, &qword_27CE58AC8);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_21D0CF7E0(v27, &qword_27CE58AC8);
  }

  v34 = v110;
  sub_21DAEECCC(v27, v110, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
  v35 = *(v28 + 20);
  v97 = *&v34[*(v28 + 24)];
  v36 = *v108;
  v37 = v24;
  sub_21DAEEC04(&v34[v35], v24, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  v38 = v2[7];
  v39 = v109;
  TTRBoardColumnDiffableDataSource.columnItem.getter(v109);
  sub_21DAEEC04(v37, v14, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
  (*(v22 + 56))(v14, 0, 1, v21);
  v40 = qword_27CE5C7E8;
  swift_beginAccess();
  v96 = v38;
  sub_21D0F02F4(v14, v38 + v40, &qword_27CE5C7F0);
  swift_endAccess();
  v41 = *v34;
  LODWORD(v108) = v36;
  if (v36)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  v43 = *(v37 + *(type metadata accessor for TTRRemindersBoardPresentationTrees(0) + 28) + 2);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v44 + 8))(v2, v43 ^ 1u, ObjectType, v44);
    swift_unknownObjectRelease();
  }

  if (v42 != 3)
  {
    if (v42 == 4)
    {
      result = swift_beginAccess();
      v46 = v2[5];
      if (v46)
      {
        v47 = *(v46 + 16);
        v48 = *(v46 + 24);
        v49 = v97;
        sub_21DBF8E0C();

        sub_21DAAD6F4(v49, v47, v48, v46);
        sub_21D0CF7E0(v39, &unk_27CE5CD80);
        sub_21DAEEC6C(v37, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);

        return sub_21DAEEC6C(v110, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      }

      goto LABEL_41;
    }

    v93 = v42;
    v94 = v41;
    v55 = v100;
    sub_21D0D3954(v39, v100, &unk_27CE5CD80);
    v56 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v57 = *(*(v56 - 8) + 48);
    if (v57(v55, 1, v56) == 1)
    {
      sub_21D0CF7E0(v55, &unk_27CE5CD80);
      v58 = 1;
      v59 = v105;
      v60 = v107;
    }

    else
    {
      v61 = v107;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v107);
      v60 = v61;
      sub_21DAEEC6C(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      v58 = 0;
      v59 = v105;
    }

    v62 = v101;
    v63 = *(v59 + 56);
    v63(v60, v58, 1, v106);
    TTRBoardColumnDiffableDataSource.columnItem.getter(v62);
    v64 = v57(v62, 1, v56);
    v95 = v37;
    if (v64 == 1)
    {
      sub_21D0CF7E0(v62, &unk_27CE5CD80);
      v65 = 1;
      v66 = v104;
    }

    else
    {
      v66 = v104;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v104);
      sub_21DAEEC6C(v62, type metadata accessor for TTRRemindersListViewModel.Item);
      v65 = 0;
    }

    v67 = v106;
    v63(v66, v65, 1, v106);
    v68 = *(v102 + 48);
    v69 = v107;
    v70 = v103;
    sub_21D0D3954(v107, v103, &qword_27CE5FB90);
    sub_21D0D3954(v66, v70 + v68, &qword_27CE5FB90);
    v71 = v66;
    v72 = *(v105 + 48);
    if (v72(v70, 1, v67) == 1)
    {
      sub_21D0CF7E0(v71, &qword_27CE5FB90);
      sub_21D0CF7E0(v69, &qword_27CE5FB90);
      v73 = v72(v70 + v68, 1, v67);
      v37 = v95;
      v74 = v93;
      if (v73 == 1)
      {
        sub_21D0CF7E0(v70, &qword_27CE5FB90);
        v75 = 0;
LABEL_27:
        v78 = v108;
        v79 = v94;
LABEL_29:
        v84 = v79 & 1;
        if (v78)
        {
          v84 = 0;
        }

        if ((v74 == 2) | v75 & 1)
        {
          v85 = 2;
        }

        else
        {
          v85 = v84;
        }

        v112[0] = v85;
        sub_21DAEE1C8(v37, v112);
        result = swift_beginAccess();
        v86 = v2[5];
        if (!v86)
        {
          goto LABEL_43;
        }

        v87 = *(v86 + 16);
        v88 = *(v86 + 24);
        v89 = v97;
        sub_21DBF8E0C();

        sub_21DAAED30(0, v87, v88, v86, v78, v89);

        sub_21DAEE318(v37);
        v111 = v85;
        TTRBoardColumnDiffableDataSource.applySnapshot(option:)(&v111);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v90 = v2[3];
          v91 = swift_getObjectType();
          (*(v90 + 24))(v2, v75 & 1, v91, v90);
          swift_unknownObjectRelease();
        }

        v54 = v109;
LABEL_38:
        sub_21D0CF7E0(v54, &unk_27CE5CD80);
        sub_21DAEEC6C(v37, type metadata accessor for TTRRemindersBoardColumnPresentationTrees);
        return sub_21DAEEC6C(v110, type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn);
      }
    }

    else
    {
      v76 = v99;
      sub_21D0D3954(v70, v99, &qword_27CE5FB90);
      v77 = v72(v70 + v68, 1, v67);
      v37 = v95;
      if (v77 != 1)
      {
        v80 = v70 + v68;
        v81 = v98;
        sub_21DAEECCC(v80, v98, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v82 = v76;
        v83 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v76, v81);
        sub_21DAEEC6C(v81, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v104, &qword_27CE5FB90);
        sub_21D0CF7E0(v107, &qword_27CE5FB90);
        sub_21DAEEC6C(v82, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v70, &qword_27CE5FB90);
        v75 = v83 ^ 1;
        v78 = v108;
        v79 = v94;
        v74 = v93;
        goto LABEL_29;
      }

      sub_21D0CF7E0(v104, &qword_27CE5FB90);
      sub_21D0CF7E0(v107, &qword_27CE5FB90);
      sub_21DAEEC6C(v76, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v74 = v93;
    }

    sub_21D0CF7E0(v70, &qword_27CE5F2E0);
    v75 = 1;
    goto LABEL_27;
  }

  result = swift_beginAccess();
  v50 = v2[5];
  if (v50)
  {
    v51 = *(v50 + 16);
    v52 = *(v50 + 24);
    v53 = v97;
    sub_21DBF8E0C();

    sub_21DAAED30(0, v51, v52, v50, v108, v53);

    sub_21DAEE318(v37);
    v54 = v39;
    goto LABEL_38;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_21DAEE1C8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  result = swift_beginAccess();
  if (!*(v2 + 40))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (v4 == 2)
  {

    sub_21D19D7D4(sub_21D19DA18, 0);

    if (!*(v2 + 40))
    {
      goto LABEL_8;
    }
  }

  MEMORY[0x28223BE20](result);
  v8[2] = a1;

  sub_21D19D7D4(sub_21DAEEBFC, v8);

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAEE318(uint64_t a1)
{
  v52[0] = type metadata accessor for TTRBoardEditableColumnHeaderViewModel();
  MEMORY[0x28223BE20](v52[0]);
  v53 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v54);
  v56 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v57);
  v58 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v52 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v52 - v11;
  type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v55 = a1;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = 1;
  v15(v9, 1, 1, v13);
  v17 = sub_21D46F07C(v9);
  sub_21D0CF7E0(v9, &unk_27CE5CD80);
  if (v17 >= 1)
  {
    v15(v9, 1, 1, v13);
    sub_21D46F388(0, v9, v12);
    sub_21D0CF7E0(v9, &unk_27CE5CD80);
    v16 = 0;
  }

  v15(v12, v16, 1, v13);
  v18 = v59;
  sub_21D0D3954(v12, v59, &unk_27CE5CD80);
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_21D0CF7E0(v18, &unk_27CE5CD80);
LABEL_11:
    v41 = v58;
    if (qword_27CE57100 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE66678);
    sub_21D0D3954(v12, v41, &unk_27CE5CD80);
    v43 = sub_21DBF84AC();
    v44 = sub_21DBFAEBC();
    v45 = v12;
    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v67 = v47;
      *v46 = 136315138;
      v48 = sub_21DBFBA5C();
      v50 = v49;
      sub_21D0CF7E0(v41, &unk_27CE5CD80);
      v51 = sub_21D0CDFB4(v48, v50, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_21D0C9000, v43, v44, "Tried to refresh a column header for an unexpected item: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223D46520](v47, -1, -1);
      MEMORY[0x223D46520](v46, -1, -1);

      v40 = v45;
    }

    else
    {

      sub_21D0CF7E0(v41, &unk_27CE5CD80);
      v40 = v12;
    }

    return sub_21D0CF7E0(v40, &unk_27CE5CD80);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21DAEEC6C(v18, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_11;
  }

  v19 = v12;
  v20 = v56;
  sub_21DAEECCC(v18, v56, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v21 = *(type metadata accessor for TTRRemindersBoardPresentationTrees(0) + 28);
  v22 = (v20 + *(v54 + 20));
  v23 = v22[5];
  v24 = v22[3];
  v64 = v22[4];
  v65 = v23;
  v25 = v22[5];
  v66[0] = v22[6];
  *(v66 + 10) = *(v22 + 106);
  v26 = v22[3];
  v27 = v22[1];
  v62 = v22[2];
  v63 = v26;
  v28 = v22[1];
  v61[0] = *v22;
  v61[1] = v28;
  *(v73 + 10) = *(v22 + 106);
  v29 = v22[6];
  v72 = v25;
  v73[0] = v29;
  v70 = v24;
  v71 = v64;
  v68 = v27;
  v69 = v62;
  v30 = *(v55 + v21 + 1);
  v67 = v61[0];
  if (sub_21D1D9A6C(&v67) == 1)
  {
LABEL_9:
    sub_21DAEEC6C(v20, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v40 = v19;
    return sub_21D0CF7E0(v40, &unk_27CE5CD80);
  }

  v31 = v30 ^ 1;
  v32 = v53;
  v33 = &v53[*(v52[0] + 20)];
  sub_21DAEEC04(v20, v33, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  swift_storeEnumTagMultiPayload();
  v34 = (v33 + *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20));
  v35 = v72;
  v34[4] = v71;
  v34[5] = v35;
  v34[6] = v73[0];
  *(v34 + 106) = *(v73 + 10);
  v36 = v68;
  *v34 = v67;
  v34[1] = v36;
  v37 = v70;
  v34[2] = v69;
  v34[3] = v37;
  *v32 = v31;
  v38 = v52[1];
  result = swift_beginAccess();
  if (*(v38 + 48))
  {
    sub_21D0D3954(v61, &v60, &qword_27CE5B090);

    sub_21DAEC6B0(v32, 0);

    sub_21DAEEC6C(v32, type metadata accessor for TTRBoardEditableColumnHeaderViewModel);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

BOOL sub_21DAEE9D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  sub_21DAEBE84(a1, v4);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) == 1;
  sub_21D0CF7E0(v4, &unk_27CE5CD80);
  return v6;
}

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRBoardColumnPresentationTreesManagementViewCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21DAEEC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21DAEEC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21DAEECCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21DAEED34(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_21DBF5D5C();
    ++v2;
    sub_21D2FB588();
  }

  while ((sub_21DBFA10C() & 1) == 0);
  return v3 != v4;
}

id UICollectionView.visibleCellForItem(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 indexPathsForVisibleItems];
  sub_21DBF5D5C();
  v5 = sub_21DBFA5EC();

  LOBYTE(v4) = sub_21DAEED34(a1, v5);

  result = 0;
  if (v4)
  {
    v7 = sub_21DBF5C6C();
    v8 = [v2 cellForItemAtIndexPath_];

    return v8;
  }

  return result;
}

Swift::Void __swiftcall UICollectionView.ttr_setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v6[24] = _;
  if (animated)
  {

    [v2 setEditing_];
  }

  else
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21DAEF034;
    *(v4 + 24) = v6;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_148;
    v5 = _Block_copy(aBlock);

    [v3 performWithoutAnimation_];
    _Block_release(v5);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t UICollectionView.dequeueBlankListCell(for:)()
{
  if (qword_27CE57108 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666D8);
  __swift_project_value_buffer(v0, qword_27CE666C0);
  sub_21DAEF184();
  return sub_21DBFB06C();
}

uint64_t sub_21DAEF0F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666D8);
  __swift_allocate_value_buffer(v0, qword_27CE666C0);
  __swift_project_value_buffer(v0, qword_27CE666C0);
  sub_21DAEF184();
  return sub_21DBFB05C();
}

unint64_t sub_21DAEF184()
{
  result = qword_27CE64FF8;
  if (!qword_27CE64FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE64FF8);
  }

  return result;
}

uint64_t sub_21DAEF1D0()
{
  v1[3] = sub_21DBF8A0C();
  v1[4] = MEMORY[0x277D74C30];
  __swift_allocate_boxed_opaque_existential_0(v1);
  MEMORY[0x223D43CA0]();
  return MEMORY[0x223D43B20](v1);
}

UICollectionViewScrollPosition __swiftcall UICollectionViewScrollPosition.init(tableViewScrollPosition:)(UITableViewScrollPosition tableViewScrollPosition)
{
  if ((tableViewScrollPosition - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21DC3CC50[tableViewScrollPosition - 1];
  }
}

uint64_t TTRQuickEntryReminderCreationInteractorCapability.FetchOptions.init(recentlySelectedListObjectID:requiresAttachmentSupport:prefersGroceryList:defaultListOption:fetchesAccountsLists:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 9) = a3;
  *(a6 + 16) = v6;
  *(a6 + 24) = a5;
  return result;
}

uint64_t static TTRQuickEntryReminderCreationInteractorCapability.fetchInitialListForReminderCreation(store:options:)(void *a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A278);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A280);
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE666F8);
  v13 = *(v12 - 8);
  v35 = v12;
  v36 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = *a2;
  v17 = *(a2 + 8);
  v32 = *(a2 + 9);
  v33 = v17;
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);
  v40 = 1;
  sub_21DBF90EC();
  sub_21DBF60DC();
  v18 = sub_21DBF60AC();
  v40 = v18;
  v19 = sub_21DBFB0DC();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_27CE5A2A8, &qword_27CE5A278);
  sub_21D47130C();
  sub_21DBF936C();
  sub_21D0CF7E0(v5, &unk_27CE5F250);

  (*(v7 + 8))(v9, v6);
  v20 = swift_allocObject();
  v21 = v38;
  *(v20 + 16) = v38;
  *(v20 + 24) = v16;
  v22 = v32;
  *(v20 + 32) = v33;
  *(v20 + 33) = v22;
  v23 = v30;
  *(v20 + 40) = v30;
  *(v20 + 48) = v31;
  *(v20 + 56) = v39;
  v24 = v16;
  v25 = v21;
  sub_21D15751C(v23);
  sub_21D0D0F1C(&qword_27CE5A2B8, &qword_27CE5A280);
  v26 = v34;
  sub_21DBF931C();

  (*(v37 + 8))(v11, v26);
  sub_21D0D0F1C(&qword_27CE66700, &qword_27CE666F8);
  v27 = v35;
  v28 = sub_21DBF920C();
  (*(v36 + 8))(v15, v27);
  return v28;
}