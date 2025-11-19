void destroy for TTRRemindersListUncommittedSection(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_2;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 != 5 && v19 != 6)
        {
          goto LABEL_97;
        }

        goto LABEL_93;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v19 > 2)
      {
        goto LABEL_93;
      }

      if (v19 != 1)
      {
        if (v19 != 2)
        {
LABEL_97:
          v41 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v42 = a1 + *(v41 + 20);
          if (*(v42 + 8))
          {

            sub_21D179EF0(*(v42 + 16), *(v42 + 24), *(v42 + 32), *(v42 + 40), *(v42 + 48), *(v42 + 56), *(v42 + 64));
            v43 = *(v42 + 120);
            if (v43 != 255)
            {
              sub_21D1078C0(*(v42 + 72), *(v42 + 80), *(v42 + 88), *(v42 + 96), *(v42 + 104), *(v42 + 112), v43 & 1);
            }
          }

          v25 = *(a1 + *(v41 + 44));
          goto LABEL_101;
        }

LABEL_93:
        v40 = sub_21DBF563C();
        (*(*(v40 - 8) + 8))(a1, v40);
        goto LABEL_97;
      }
    }

    goto LABEL_97;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v25 = *(a1 + 16);
LABEL_101:

      goto LABEL_2;
    }

LABEL_50:

    v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v27 - 8) + 48))(a1 + v26, 1, v27))
    {
      goto LABEL_2;
    }

    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 4)
    {
      if (v28 <= 7)
      {
        if (v28 != 5 && v28 != 6)
        {
          goto LABEL_2;
        }

LABEL_102:
        v44 = sub_21DBF563C();
        (*(*(v44 - 8) + 8))(a1 + v26, v44);
        goto LABEL_2;
      }

      if (v28 != 8 && v28 != 9)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v28 > 2)
      {
        goto LABEL_102;
      }

      if (v28 != 1)
      {
        if (v28 != 2)
        {
          goto LABEL_2;
        }

        goto LABEL_102;
      }
    }

    v25 = *(a1 + v26);
    goto LABEL_101;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v38 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v38 - 8) + 48))(a1, 1, v38))
      {
        v39 = sub_21DBF563C();
        (*(*(v39 - 8) + 8))(a1, v39);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v13 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v14 = sub_21DBF8D7C();
      (*(*(v14 - 8) + 8))(a1 + v13, v14);
    }

    goto LABEL_2;
  }

  v33 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v33 - 8) + 48))(a1, 1, v33))
  {

    v34 = *(v33 + 20);
    v35 = sub_21DBF6C1C();
    (*(*(v35 - 8) + 8))(a1 + v34, v35);
  }

  v36 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v36 + 8))
  {

    v25 = *(v36 + 16);
    goto LABEL_101;
  }

LABEL_2:
  v5 = a1 + *(a2 + 20);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      goto LABEL_24;
    }

    if (v6 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          goto LABEL_64;
        }

        goto LABEL_60;
      }

      if (v11 != 8 && v11 != 9)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v11 > 2)
      {
        goto LABEL_60;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
LABEL_64:
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v31 = v5 + *(v30 + 20);
          if (*(v31 + 8))
          {

            sub_21D179EF0(*(v31 + 16), *(v31 + 24), *(v31 + 32), *(v31 + 40), *(v31 + 48), *(v31 + 56), *(v31 + 64));
            v32 = *(v31 + 120);
            if (v32 != 255)
            {
              sub_21D1078C0(*(v31 + 72), *(v31 + 80), *(v31 + 88), *(v31 + 96), *(v31 + 104), *(v31 + 112), v32 & 1);
            }
          }

          v15 = *(v5 + *(v30 + 44));
          goto LABEL_68;
        }

LABEL_60:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 8))(v5, v29);
        goto LABEL_64;
      }
    }

    goto LABEL_64;
  }

  if (v6 <= 5)
  {
    if (v6 != 4)
    {
      v15 = *(v5 + 16);
LABEL_68:

      return;
    }

LABEL_24:

    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v17 - 8) + 48))(v5 + v16, 1, v17))
    {
      return;
    }

    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 4)
    {
      if (v18 <= 7)
      {
        if (v18 != 5 && v18 != 6)
        {
          return;
        }

        goto LABEL_82;
      }

      if (v18 != 8 && v18 != 9)
      {
        return;
      }
    }

    else
    {
      if (v18 > 2)
      {
LABEL_82:
        v8 = sub_21DBF563C();
        v9 = *(*(v8 - 8) + 8);
        v10 = v5 + v16;
LABEL_83:

        v9(v10, v8);
        return;
      }

      if (v18 != 1)
      {
        if (v18 != 2)
        {
          return;
        }

        goto LABEL_82;
      }
    }

    v15 = *(v5 + v16);
    goto LABEL_68;
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      v24 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v24 - 8) + 48))(v5, 1, v24))
      {
        return;
      }

      v37 = sub_21DBF563C();
      v9 = *(*(v37 - 8) + 8);
      v8 = v37;
      v10 = v5;
    }

    else
    {
      if (v6 != 8)
      {
        return;
      }

      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      v9 = *(*(v8 - 8) + 8);
      v10 = v5 + v7;
    }

    goto LABEL_83;
  }

  v20 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v20 - 8) + 48))(v5, 1, v20))
  {

    v21 = *(v20 + 20);
    v22 = sub_21DBF6C1C();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  v23 = v5 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v23 + 8))
  {

    v15 = *(v23 + 16);
    goto LABEL_68;
  }
}

void *initializeWithCopy for TTRRemindersListUncommittedSection(void *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a2, 1, v7);
  if (EnumCaseMultiPayload == 1)
  {
    if (v9)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_264:
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
      *(a1 + *(v202 + 48)) = *(a2 + *(v202 + 48));
      goto LABEL_269;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 5)
      {
        switch(v12)
        {
          case 6:
            v54 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v55 = *(v54 - 8);
            if ((*(v55 + 48))(a2, 1, v54))
            {
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v56 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v78 = *(v54 + 20);
              v79 = sub_21DBF6C1C();
              v302 = *(*(v79 - 8) + 16);
              sub_21DBF8E0C();
              v302(a1 + v78, a2 + v78, v79);
              (*(v55 + 56))(a1, 0, 1, v54);
            }

            v80 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v81 = (a1 + v80);
            v82 = (a2 + v80);
            v83 = v82[1];
            if (v83)
            {
              *v81 = *v82;
              v81[1] = v83;
              v84 = v82[2];
              v81[2] = v84;
              sub_21DBF8E0C();
              v85 = v84;
            }

            else
            {
              *v81 = *v82;
              v81[2] = v82[2];
            }

            goto LABEL_262;
          case 7:
            v66 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v67 = *(v66 - 8);
            if ((*(v67 + 48))(a2, 1, v66))
            {
              v68 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v68 - 8) + 64));
            }

            else
            {
              v96 = sub_21DBF563C();
              (*(*(v96 - 8) + 16))(a1, a2, v96);
              *(a1 + *(v66 + 20)) = *(a2 + *(v66 + 20));
              (*(v67 + 56))(a1, 0, 1, v66);
            }

            v97 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v97 + 20)) = *(a2 + *(v97 + 20));
            goto LABEL_262;
          case 8:
            *a1 = *a2;
            v13 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v14 = sub_21DBF8D7C();
            (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
LABEL_262:
            swift_storeEnumTagMultiPayload();
            goto LABEL_263;
        }

LABEL_70:
        memcpy(a1, a2, *(v8 + 64));
LABEL_263:
        (*(v8 + 56))(a1, 0, 1, v7);
        goto LABEL_264;
      }

      if (v12 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v34 = a2[2];
        a1[2] = v34;
        v35 = v34;
        goto LABEL_262;
      }

      v320 = a3;
      v60 = *a2;
      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v44 = *(v43 - 8);
      v61 = *(v44 + 48);
      v62 = v60;
      if (v61(a2 + v23, 1, v43))
      {
LABEL_55:
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v23, a2 + v23, *(*(v47 - 8) + 64));
        a3 = v320;
        goto LABEL_262;
      }

      v94 = swift_getEnumCaseMultiPayload();
      if (v94 > 4)
      {
        if (v94 <= 7)
        {
          if (v94 == 5 || v94 == 6)
          {
            goto LABEL_228;
          }

          goto LABEL_260;
        }

        if (v94 != 8 && v94 != 9)
        {
          goto LABEL_260;
        }

LABEL_232:
        v198 = *(a2 + v23);
        *(a1 + v23) = v198;
        v199 = v198;
        swift_storeEnumTagMultiPayload();
        goto LABEL_261;
      }

      if (v94 <= 2)
      {
        if (v94 != 1)
        {
          if (v94 == 2)
          {
            goto LABEL_228;
          }

LABEL_260:
          memcpy(a1 + v23, a2 + v23, *(v44 + 64));
          goto LABEL_261;
        }

        goto LABEL_232;
      }

LABEL_228:
      v196 = sub_21DBF563C();
      (*(*(v196 - 8) + 16))(a1 + v23, a2 + v23, v196);
      swift_storeEnumTagMultiPayload();
LABEL_261:
      (*(v44 + 56))(a1 + v23, 0, 1, v43);
      goto LABEL_262;
    }

    if (v12 <= 1)
    {
      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_70;
        }

        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = swift_getEnumCaseMultiPayload();
        v318 = a3;
        v326 = v7;
        if (v19 <= 4)
        {
          if (v19 > 2)
          {
LABEL_130:
            v100 = sub_21DBF563C();
            (*(*(v100 - 8) + 16))(a1, a2, v100);
            swift_storeEnumTagMultiPayload();
            goto LABEL_183;
          }

          if (v19 != 1)
          {
            if (v19 == 2)
            {
              goto LABEL_130;
            }

            goto LABEL_182;
          }

LABEL_134:
          v102 = *a2;
          *a1 = *a2;
          v103 = v102;
          swift_storeEnumTagMultiPayload();
          goto LABEL_183;
        }

        if (v19 > 7)
        {
          if (v19 == 8 || v19 == 9)
          {
            goto LABEL_134;
          }
        }

        else if (v19 == 5 || v19 == 6)
        {
          goto LABEL_130;
        }

LABEL_182:
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_183:
        v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v113 = v112[5];
        v114 = a1 + v113;
        v115 = a2 + v113;
        v116 = *(a2 + v113 + 8);
        if (v116)
        {
          v314 = v8;
          v330 = a1;
          *v114 = *v115;
          *(v114 + 1) = v116;
          v117 = *(v115 + 2);
          v118 = *(v115 + 3);
          v119 = *(v115 + 4);
          v120 = *(v115 + 5);
          v122 = *(v115 + 6);
          v121 = *(v115 + 7);
          v304 = v115[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v117, v118, v119, v120, v122, v121, v304);
          *(v114 + 2) = v117;
          *(v114 + 3) = v118;
          *(v114 + 4) = v119;
          *(v114 + 5) = v120;
          *(v114 + 6) = v122;
          *(v114 + 7) = v121;
          v114[64] = v304;
          *(v114 + 65) = *(v115 + 65);
          v123 = v115[120];
          if (v123 == 255)
          {
            *(v114 + 72) = *(v115 + 72);
            *(v114 + 88) = *(v115 + 88);
            *(v114 + 104) = *(v115 + 104);
            v114[120] = v115[120];
          }

          else
          {
            v124 = *(v115 + 10);
            v305 = *(v115 + 9);
            v125 = *(v115 + 11);
            v126 = *(v115 + 12);
            v127 = *(v115 + 13);
            v128 = *(v115 + 14);
            v129 = v123 & 1;
            sub_21D0FB960(v305, v124, v125, v126, v127, v128, v123 & 1);
            *(v114 + 9) = v305;
            *(v114 + 10) = v124;
            *(v114 + 11) = v125;
            *(v114 + 12) = v126;
            *(v114 + 13) = v127;
            *(v114 + 14) = v128;
            v114[120] = v129;
          }

          a3 = v318;
          v7 = v326;
          v8 = v314;
          v114[121] = v115[121];
          a1 = v330;
          goto LABEL_203;
        }

LABEL_200:
        v163 = *(v115 + 5);
        *(v114 + 4) = *(v115 + 4);
        *(v114 + 5) = v163;
        *(v114 + 6) = *(v115 + 6);
        *(v114 + 106) = *(v115 + 106);
        v164 = *(v115 + 1);
        *v114 = *v115;
        *(v114 + 1) = v164;
        v165 = *(v115 + 3);
        *(v114 + 2) = *(v115 + 2);
        *(v114 + 3) = v165;
LABEL_203:
        *(a1 + v112[6]) = *(a2 + v112[6]);
        *(a1 + v112[7]) = *(a2 + v112[7]);
        *(a1 + v112[8]) = *(a2 + v112[8]);
        *(a1 + v112[9]) = *(a2 + v112[9]);
        *(a1 + v112[10]) = *(a2 + v112[10]);
        v166 = v112[11];
        v167 = *(a2 + v166);
        *(a1 + v166) = v167;
        v168 = v167;
        goto LABEL_262;
      }

      v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v39 = swift_getEnumCaseMultiPayload();
      v322 = a3;
      if (v39 <= 4)
      {
        if (v39 > 2)
        {
LABEL_138:
          v106 = sub_21DBF563C();
          (*(*(v106 - 8) + 16))(a1, a2, v106);
          swift_storeEnumTagMultiPayload();
          goto LABEL_197;
        }

        if (v39 != 1)
        {
          if (v39 == 2)
          {
            goto LABEL_138;
          }

          goto LABEL_196;
        }

LABEL_142:
        v108 = *a2;
        *a1 = *a2;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_197;
      }

      if (v39 > 7)
      {
        if (v39 == 8 || v39 == 9)
        {
          goto LABEL_142;
        }
      }

      else if (v39 == 5 || v39 == 6)
      {
        goto LABEL_138;
      }

LABEL_196:
      memcpy(a1, a2, *(*(v38 - 8) + 64));
LABEL_197:
      v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v148 = v112[5];
      v114 = a1 + v148;
      v115 = a2 + v148;
      v149 = *(a2 + v148 + 8);
      if (v149)
      {
        v315 = v8;
        v329 = v7;
        v332 = a1;
        *v114 = *v115;
        *(v114 + 1) = v149;
        v150 = *(v115 + 2);
        v151 = *(v115 + 3);
        v152 = *(v115 + 4);
        v153 = *(v115 + 5);
        v155 = *(v115 + 6);
        v154 = *(v115 + 7);
        v308 = v115[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v150, v151, v152, v153, v155, v154, v308);
        *(v114 + 2) = v150;
        *(v114 + 3) = v151;
        *(v114 + 4) = v152;
        *(v114 + 5) = v153;
        *(v114 + 6) = v155;
        *(v114 + 7) = v154;
        v114[64] = v308;
        *(v114 + 65) = *(v115 + 65);
        v156 = v115[120];
        if (v156 == 255)
        {
          *(v114 + 72) = *(v115 + 72);
          *(v114 + 88) = *(v115 + 88);
          *(v114 + 104) = *(v115 + 104);
          v114[120] = v115[120];
        }

        else
        {
          v157 = *(v115 + 10);
          v309 = *(v115 + 9);
          v158 = *(v115 + 11);
          v159 = *(v115 + 12);
          v160 = *(v115 + 13);
          v161 = *(v115 + 14);
          v162 = v156 & 1;
          sub_21D0FB960(v309, v157, v158, v159, v160, v161, v156 & 1);
          *(v114 + 9) = v309;
          *(v114 + 10) = v157;
          *(v114 + 11) = v158;
          *(v114 + 12) = v159;
          *(v114 + 13) = v160;
          *(v114 + 14) = v161;
          v114[120] = v162;
        }

        a3 = v322;
        v7 = v329;
        v8 = v315;
        v114[121] = v115[121];
        a1 = v332;
        goto LABEL_203;
      }

      goto LABEL_200;
    }

    if (v12 == 2)
    {
      v320 = a3;
      v42 = *a2;
      *a1 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v44 = *(v43 - 8);
      v45 = *(v44 + 48);
      v46 = v42;
      if (v45(a2 + v23, 1, v43))
      {
        goto LABEL_55;
      }

      v76 = swift_getEnumCaseMultiPayload();
      if (v76 > 4)
      {
        if (v76 <= 7)
        {
          if (v76 == 5 || v76 == 6)
          {
            goto LABEL_228;
          }

          goto LABEL_260;
        }

        if (v76 != 8 && v76 != 9)
        {
          goto LABEL_260;
        }

        goto LABEL_232;
      }

      if (v76 > 2)
      {
        goto LABEL_228;
      }

      if (v76 == 1)
      {
        goto LABEL_232;
      }

      if (v76 != 2)
      {
        goto LABEL_260;
      }

      goto LABEL_228;
    }

    v320 = a3;
    v22 = *a2;
    *a1 = *a2;
    v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    v27 = v22;
    if (v26(a2 + v23, 1, v24))
    {
      goto LABEL_55;
    }

    v72 = swift_getEnumCaseMultiPayload();
    if (v72 > 4)
    {
      v73 = v25;
      if (v72 <= 7)
      {
        if (v72 == 5 || v72 == 6)
        {
          goto LABEL_212;
        }

        goto LABEL_254;
      }

      if (v72 != 8 && v72 != 9)
      {
        goto LABEL_254;
      }
    }

    else
    {
      v73 = v25;
      if (v72 > 2)
      {
LABEL_212:
        v190 = sub_21DBF563C();
        (*(*(v190 - 8) + 16))(a1 + v23, a2 + v23, v190);
        swift_storeEnumTagMultiPayload();
LABEL_255:
        (*(v73 + 56))(a1 + v23, 0, 1, v24);
        goto LABEL_262;
      }

      if (v72 != 1)
      {
        if (v72 == 2)
        {
          goto LABEL_212;
        }

LABEL_254:
        memcpy(a1 + v23, a2 + v23, *(v73 + 64));
        goto LABEL_255;
      }
    }

    v192 = *(a2 + v23);
    *(a1 + v23) = v192;
    v193 = v192;
    swift_storeEnumTagMultiPayload();
    goto LABEL_255;
  }

  if (v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_269;
  }

  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 3)
  {
    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_71;
        }

        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = swift_getEnumCaseMultiPayload();
        v319 = a3;
        v327 = v7;
        v312 = v8;
        if (v21 <= 4)
        {
          if (v21 > 2)
          {
LABEL_131:
            v101 = sub_21DBF563C();
            (*(*(v101 - 8) + 16))(a1, a2, v101);
            swift_storeEnumTagMultiPayload();
            goto LABEL_190;
          }

          if (v21 != 1)
          {
            if (v21 == 2)
            {
              goto LABEL_131;
            }

            goto LABEL_189;
          }

LABEL_137:
          v104 = *a2;
          *a1 = *a2;
          v105 = v104;
          swift_storeEnumTagMultiPayload();
          goto LABEL_190;
        }

        if (v21 > 7)
        {
          if (v21 == 8 || v21 == 9)
          {
            goto LABEL_137;
          }
        }

        else if (v21 == 5 || v21 == 6)
        {
          goto LABEL_131;
        }

LABEL_189:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_190:
        v130 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v131 = v130[5];
        v132 = a1 + v131;
        v133 = a2 + v131;
        v134 = *(a2 + v131 + 8);
        if (v134)
        {
          v331 = a1;
          *v132 = *v133;
          *(v132 + 1) = v134;
          v135 = *(v133 + 2);
          v136 = *(v133 + 3);
          v137 = *(v133 + 4);
          v138 = *(v133 + 5);
          v140 = *(v133 + 6);
          v139 = *(v133 + 7);
          v306 = v133[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v135, v136, v137, v138, v140, v139, v306);
          *(v132 + 2) = v135;
          *(v132 + 3) = v136;
          *(v132 + 4) = v137;
          *(v132 + 5) = v138;
          *(v132 + 6) = v140;
          *(v132 + 7) = v139;
          v132[64] = v306;
          *(v132 + 65) = *(v133 + 65);
          v141 = v133[120];
          if (v141 == 255)
          {
            *(v132 + 72) = *(v133 + 72);
            *(v132 + 88) = *(v133 + 88);
            *(v132 + 104) = *(v133 + 104);
            v132[120] = v133[120];
          }

          else
          {
            v142 = *(v133 + 10);
            v307 = *(v133 + 9);
            v143 = *(v133 + 11);
            v144 = *(v133 + 12);
            v145 = *(v133 + 13);
            v146 = *(v133 + 14);
            v147 = v141 & 1;
            sub_21D0FB960(v307, v142, v143, v144, v145, v146, v141 & 1);
            *(v132 + 9) = v307;
            *(v132 + 10) = v142;
            *(v132 + 11) = v143;
            *(v132 + 12) = v144;
            *(v132 + 13) = v145;
            *(v132 + 14) = v146;
            v132[120] = v147;
          }

          a3 = v319;
          v7 = v327;
          v8 = v312;
          v132[121] = v133[121];
          a1 = v331;
          goto LABEL_211;
        }

LABEL_208:
        v184 = *(v133 + 5);
        *(v132 + 4) = *(v133 + 4);
        *(v132 + 5) = v184;
        *(v132 + 6) = *(v133 + 6);
        *(v132 + 106) = *(v133 + 106);
        v185 = *(v133 + 1);
        *v132 = *v133;
        *(v132 + 1) = v185;
        v186 = *(v133 + 3);
        *(v132 + 2) = *(v133 + 2);
        *(v132 + 3) = v186;
LABEL_211:
        *(a1 + v130[6]) = *(a2 + v130[6]);
        *(a1 + v130[7]) = *(a2 + v130[7]);
        *(a1 + v130[8]) = *(a2 + v130[8]);
        *(a1 + v130[9]) = *(a2 + v130[9]);
        *(a1 + v130[10]) = *(a2 + v130[10]);
        v187 = v130[11];
        v188 = *(a2 + v187);
        *(a1 + v187) = v188;
        v189 = v188;
        goto LABEL_267;
      }

      v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v41 = swift_getEnumCaseMultiPayload();
      v323 = a3;
      v328 = v7;
      v313 = v8;
      if (v41 <= 4)
      {
        if (v41 > 2)
        {
LABEL_139:
          v107 = sub_21DBF563C();
          (*(*(v107 - 8) + 16))(a1, a2, v107);
          swift_storeEnumTagMultiPayload();
          goto LABEL_205;
        }

        if (v41 != 1)
        {
          if (v41 == 2)
          {
            goto LABEL_139;
          }

          goto LABEL_204;
        }

LABEL_145:
        v110 = *a2;
        *a1 = *a2;
        v111 = v110;
        swift_storeEnumTagMultiPayload();
        goto LABEL_205;
      }

      if (v41 > 7)
      {
        if (v41 == 8 || v41 == 9)
        {
          goto LABEL_145;
        }
      }

      else if (v41 == 5 || v41 == 6)
      {
        goto LABEL_139;
      }

LABEL_204:
      memcpy(a1, a2, *(*(v40 - 8) + 64));
LABEL_205:
      v130 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v169 = v130[5];
      v132 = a1 + v169;
      v133 = a2 + v169;
      v170 = *(a2 + v169 + 8);
      if (v170)
      {
        v333 = a1;
        *v132 = *v133;
        *(v132 + 1) = v170;
        v171 = *(v133 + 2);
        v172 = *(v133 + 3);
        v174 = *(v133 + 4);
        v173 = *(v133 + 5);
        v175 = *(v133 + 6);
        v176 = *(v133 + 7);
        v310 = v133[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v171, v172, v174, v173, v175, v176, v310);
        *(v132 + 2) = v171;
        *(v132 + 3) = v172;
        *(v132 + 4) = v174;
        *(v132 + 5) = v173;
        *(v132 + 6) = v175;
        *(v132 + 7) = v176;
        v132[64] = v310;
        *(v132 + 65) = *(v133 + 65);
        v177 = v133[120];
        if (v177 == 255)
        {
          *(v132 + 72) = *(v133 + 72);
          *(v132 + 88) = *(v133 + 88);
          *(v132 + 104) = *(v133 + 104);
          v132[120] = v133[120];
        }

        else
        {
          v178 = *(v133 + 10);
          v311 = *(v133 + 9);
          v179 = *(v133 + 11);
          v180 = *(v133 + 12);
          v181 = *(v133 + 13);
          v182 = *(v133 + 14);
          v183 = v177 & 1;
          sub_21D0FB960(v311, v178, v179, v180, v181, v182, v177 & 1);
          *(v132 + 9) = v311;
          *(v132 + 10) = v178;
          *(v132 + 11) = v179;
          *(v132 + 12) = v180;
          *(v132 + 13) = v181;
          *(v132 + 14) = v182;
          v132[120] = v183;
        }

        a3 = v323;
        v7 = v328;
        v8 = v313;
        v132[121] = v133[121];
        a1 = v333;
        goto LABEL_211;
      }

      goto LABEL_208;
    }

    if (v15 == 2)
    {
      v321 = a3;
      v48 = *a2;
      *a1 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v48;
      if (v51(a2 + v29, 1, v49))
      {
        goto LABEL_57;
      }

      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 4)
      {
        if (v77 <= 7)
        {
          if (v77 == 5 || v77 == 6)
          {
            goto LABEL_229;
          }

          goto LABEL_265;
        }

        if (v77 != 8 && v77 != 9)
        {
          goto LABEL_265;
        }

        goto LABEL_235;
      }

      if (v77 > 2)
      {
        goto LABEL_229;
      }

      if (v77 == 1)
      {
        goto LABEL_235;
      }

      if (v77 != 2)
      {
        goto LABEL_265;
      }

      goto LABEL_229;
    }

    v321 = a3;
    v28 = *a2;
    *a1 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v28;
    if (v32(a2 + v29, 1, v30))
    {
      goto LABEL_57;
    }

    v74 = swift_getEnumCaseMultiPayload();
    if (v74 > 4)
    {
      v75 = v31;
      if (v74 <= 7)
      {
        if (v74 == 5 || v74 == 6)
        {
          goto LABEL_213;
        }

        goto LABEL_256;
      }

      if (v74 != 8 && v74 != 9)
      {
        goto LABEL_256;
      }
    }

    else
    {
      v75 = v31;
      if (v74 > 2)
      {
LABEL_213:
        v191 = sub_21DBF563C();
        (*(*(v191 - 8) + 16))(a1 + v29, a2 + v29, v191);
        swift_storeEnumTagMultiPayload();
LABEL_257:
        (*(v75 + 56))(a1 + v29, 0, 1, v30);
        goto LABEL_267;
      }

      if (v74 != 1)
      {
        if (v74 == 2)
        {
          goto LABEL_213;
        }

LABEL_256:
        memcpy(a1 + v29, a2 + v29, *(v75 + 64));
        goto LABEL_257;
      }
    }

    v194 = *(a2 + v29);
    *(a1 + v29) = v194;
    v195 = v194;
    swift_storeEnumTagMultiPayload();
    goto LABEL_257;
  }

  if (v15 <= 5)
  {
    if (v15 != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v36 = a2[2];
      a1[2] = v36;
      v37 = v36;
      goto LABEL_267;
    }

    v321 = a3;
    v63 = *a2;
    *a1 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v50 = *(v49 - 8);
    v64 = *(v50 + 48);
    v65 = v63;
    if (v64(a2 + v29, 1, v49))
    {
LABEL_57:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v29, a2 + v29, *(*(v53 - 8) + 64));
      a3 = v321;
      goto LABEL_267;
    }

    v95 = swift_getEnumCaseMultiPayload();
    if (v95 > 4)
    {
      if (v95 <= 7)
      {
        if (v95 == 5 || v95 == 6)
        {
          goto LABEL_229;
        }

        goto LABEL_265;
      }

      if (v95 != 8 && v95 != 9)
      {
        goto LABEL_265;
      }

LABEL_235:
      v200 = *(a2 + v29);
      *(a1 + v29) = v200;
      v201 = v200;
      swift_storeEnumTagMultiPayload();
      goto LABEL_266;
    }

    if (v95 <= 2)
    {
      if (v95 != 1)
      {
        if (v95 == 2)
        {
          goto LABEL_229;
        }

LABEL_265:
        memcpy(a1 + v29, a2 + v29, *(v50 + 64));
        goto LABEL_266;
      }

      goto LABEL_235;
    }

LABEL_229:
    v197 = sub_21DBF563C();
    (*(*(v197 - 8) + 16))(a1 + v29, a2 + v29, v197);
    swift_storeEnumTagMultiPayload();
LABEL_266:
    (*(v50 + 56))(a1 + v29, 0, 1, v49);
    goto LABEL_267;
  }

  switch(v15)
  {
    case 6:
      v57 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v58 = *(v57 - 8);
      if ((*(v58 + 48))(a2, 1, v57))
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v59 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v86 = *(v57 + 20);
        v87 = sub_21DBF6C1C();
        v303 = *(*(v87 - 8) + 16);
        sub_21DBF8E0C();
        v303(a1 + v86, a2 + v86, v87);
        (*(v58 + 56))(a1, 0, 1, v57);
      }

      v88 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v89 = (a1 + v88);
      v90 = (a2 + v88);
      v91 = v90[1];
      if (v91)
      {
        *v89 = *v90;
        v89[1] = v91;
        v92 = v90[2];
        v89[2] = v92;
        sub_21DBF8E0C();
        v93 = v92;
      }

      else
      {
        *v89 = *v90;
        v89[2] = v90[2];
      }

      goto LABEL_267;
    case 7:
      v69 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v70 = *(v69 - 8);
      if ((*(v70 + 48))(a2, 1, v69))
      {
        v71 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v71 - 8) + 64));
      }

      else
      {
        v98 = sub_21DBF563C();
        (*(*(v98 - 8) + 16))(a1, a2, v98);
        *(a1 + *(v69 + 20)) = *(a2 + *(v69 + 20));
        (*(v70 + 56))(a1, 0, 1, v69);
      }

      v99 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v99 + 20)) = *(a2 + *(v99 + 20));
      goto LABEL_267;
    case 8:
      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_267:
      swift_storeEnumTagMultiPayload();
      goto LABEL_268;
  }

LABEL_71:
  memcpy(a1, a2, *(v8 + 64));
LABEL_268:
  (*(v8 + 56))(a1, 0, 1, v7);
LABEL_269:
  swift_storeEnumTagMultiPayload();
  v203 = *(a3 + 20);
  v204 = (a1 + v203);
  v205 = (a2 + v203);
  v206 = swift_getEnumCaseMultiPayload();
  if (v206 <= 3)
  {
    if (v206 > 1)
    {
      if (v206 == 2)
      {
        v222 = *v205;
        *v204 = *v205;
        v212 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v213 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v214 = *(v213 - 8);
        v215 = v205;
        v223 = *(v214 + 48);
        v224 = v222;
        if (v223(v215 + v212, 1, v213))
        {
          goto LABEL_294;
        }

        v236 = swift_getEnumCaseMultiPayload();
        if (v236 > 4)
        {
          if (v236 <= 7)
          {
            if (v236 == 5 || v236 == 6)
            {
              goto LABEL_380;
            }

            goto LABEL_393;
          }

          if (v236 != 8 && v236 != 9)
          {
            goto LABEL_393;
          }

          goto LABEL_379;
        }

        if (v236 > 2)
        {
          goto LABEL_380;
        }

        if (v236 == 1)
        {
          goto LABEL_379;
        }

        if (v236 != 2)
        {
          goto LABEL_393;
        }
      }

      else
      {
        v211 = *v205;
        *v204 = *v205;
        v212 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v213 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v214 = *(v213 - 8);
        v215 = v205;
        v216 = *(v214 + 48);
        v217 = v211;
        if (v216(v215 + v212, 1, v213))
        {
          goto LABEL_294;
        }

        v235 = swift_getEnumCaseMultiPayload();
        if (v235 > 4)
        {
          if (v235 <= 7)
          {
            if (v235 == 5 || v235 == 6)
            {
              goto LABEL_380;
            }

            goto LABEL_393;
          }

          if (v235 != 8 && v235 != 9)
          {
            goto LABEL_393;
          }

          goto LABEL_379;
        }

        if (v235 > 2)
        {
          goto LABEL_380;
        }

        if (v235 == 1)
        {
          goto LABEL_379;
        }

        if (v235 != 2)
        {
          goto LABEL_393;
        }
      }

      goto LABEL_380;
    }

    if (v206)
    {
      if (v206 != 1)
      {
        goto LABEL_301;
      }

      v209 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v210 = swift_getEnumCaseMultiPayload();
      v334 = a1;
      if (v210 <= 4)
      {
        if (v210 > 2)
        {
LABEL_331:
          v249 = sub_21DBF563C();
          (*(*(v249 - 8) + 16))(v204, v205, v249);
          swift_storeEnumTagMultiPayload();
          goto LABEL_358;
        }

        if (v210 != 1)
        {
          if (v210 == 2)
          {
            goto LABEL_331;
          }

          goto LABEL_357;
        }

LABEL_334:
        v250 = *v205;
        *v204 = *v205;
        v251 = v250;
        swift_storeEnumTagMultiPayload();
        goto LABEL_358;
      }

      if (v210 > 7)
      {
        if (v210 == 8 || v210 == 9)
        {
          goto LABEL_334;
        }
      }

      else if (v210 == 5 || v210 == 6)
      {
        goto LABEL_331;
      }

LABEL_357:
      memcpy(v204, v205, *(*(v209 - 8) + 64));
LABEL_358:
      v255 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v256 = v255[5];
      v257 = v204 + v256;
      v258 = v205 + v256;
      v259 = *(v205 + v256 + 8);
      if (v259)
      {
        v316 = v205;
        v324 = v204;
        *v257 = *v258;
        *(v257 + 1) = v259;
        v260 = *(v258 + 2);
        v261 = *(v258 + 3);
        v262 = *(v258 + 4);
        v263 = *(v258 + 5);
        v264 = *(v258 + 6);
        v265 = *(v258 + 7);
        v266 = v258[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v260, v261, v262, v263, v264, v265, v266);
        *(v257 + 2) = v260;
        *(v257 + 3) = v261;
        *(v257 + 4) = v262;
        *(v257 + 5) = v263;
        *(v257 + 6) = v264;
        *(v257 + 7) = v265;
        v257[64] = v266;
        *(v257 + 65) = *(v258 + 65);
        v267 = v258[120];
        if (v267 == 255)
        {
          *(v257 + 72) = *(v258 + 72);
          *(v257 + 88) = *(v258 + 88);
          *(v257 + 104) = *(v258 + 104);
          v257[120] = v258[120];
        }

        else
        {
          v268 = *(v258 + 9);
          v269 = *(v258 + 10);
          v270 = *(v258 + 11);
          v271 = *(v258 + 12);
          v272 = *(v258 + 13);
          v273 = *(v258 + 14);
          v274 = v267 & 1;
          sub_21D0FB960(v268, v269, v270, v271, v272, v273, v267 & 1);
          *(v257 + 9) = v268;
          *(v257 + 10) = v269;
          *(v257 + 11) = v270;
          *(v257 + 12) = v271;
          *(v257 + 13) = v272;
          *(v257 + 14) = v273;
          v257[120] = v274;
        }

        a1 = v334;
        v257[121] = v258[121];
        v205 = v316;
        v204 = v324;
        goto LABEL_364;
      }

LABEL_361:
      v275 = *(v258 + 5);
      *(v257 + 4) = *(v258 + 4);
      *(v257 + 5) = v275;
      *(v257 + 6) = *(v258 + 6);
      *(v257 + 106) = *(v258 + 106);
      v276 = *(v258 + 1);
      *v257 = *v258;
      *(v257 + 1) = v276;
      v277 = *(v258 + 3);
      *(v257 + 2) = *(v258 + 2);
      *(v257 + 3) = v277;
LABEL_364:
      *(v204 + v255[6]) = *(v205 + v255[6]);
      *(v204 + v255[7]) = *(v205 + v255[7]);
      *(v204 + v255[8]) = *(v205 + v255[8]);
      *(v204 + v255[9]) = *(v205 + v255[9]);
      *(v204 + v255[10]) = *(v205 + v255[10]);
      v278 = v255[11];
      v279 = *(v205 + v278);
      *(v204 + v278) = v279;
      v280 = v279;
      goto LABEL_395;
    }

    v220 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v221 = swift_getEnumCaseMultiPayload();
    v335 = a1;
    if (v221 <= 4)
    {
      if (v221 > 2)
      {
LABEL_335:
        v252 = sub_21DBF563C();
        (*(*(v252 - 8) + 16))(v204, v205, v252);
        swift_storeEnumTagMultiPayload();
        goto LABEL_366;
      }

      if (v221 != 1)
      {
        if (v221 == 2)
        {
          goto LABEL_335;
        }

        goto LABEL_365;
      }

LABEL_338:
      v253 = *v205;
      *v204 = *v205;
      v254 = v253;
      swift_storeEnumTagMultiPayload();
      goto LABEL_366;
    }

    if (v221 > 7)
    {
      if (v221 == 8 || v221 == 9)
      {
        goto LABEL_338;
      }
    }

    else if (v221 == 5 || v221 == 6)
    {
      goto LABEL_335;
    }

LABEL_365:
    memcpy(v204, v205, *(*(v220 - 8) + 64));
LABEL_366:
    v255 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v281 = v255[5];
    v257 = v204 + v281;
    v258 = v205 + v281;
    v282 = *(v205 + v281 + 8);
    if (v282)
    {
      v317 = v205;
      v325 = v204;
      *v257 = *v258;
      *(v257 + 1) = v282;
      v283 = *(v258 + 2);
      v284 = *(v258 + 3);
      v285 = *(v258 + 4);
      v286 = *(v258 + 5);
      v288 = *(v258 + 6);
      v287 = *(v258 + 7);
      v289 = v258[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v283, v284, v285, v286, v288, v287, v289);
      *(v257 + 2) = v283;
      *(v257 + 3) = v284;
      *(v257 + 4) = v285;
      *(v257 + 5) = v286;
      *(v257 + 6) = v288;
      *(v257 + 7) = v287;
      v257[64] = v289;
      *(v257 + 65) = *(v258 + 65);
      v290 = v258[120];
      if (v290 == 255)
      {
        *(v257 + 72) = *(v258 + 72);
        *(v257 + 88) = *(v258 + 88);
        *(v257 + 104) = *(v258 + 104);
        v257[120] = v258[120];
      }

      else
      {
        v291 = *(v258 + 9);
        v292 = *(v258 + 10);
        v293 = *(v258 + 11);
        v294 = *(v258 + 12);
        v295 = *(v258 + 13);
        v296 = *(v258 + 14);
        v297 = v290 & 1;
        sub_21D0FB960(v291, v292, v293, v294, v295, v296, v290 & 1);
        *(v257 + 9) = v291;
        *(v257 + 10) = v292;
        *(v257 + 11) = v293;
        *(v257 + 12) = v294;
        *(v257 + 13) = v295;
        *(v257 + 14) = v296;
        v257[120] = v297;
      }

      a1 = v335;
      v257[121] = v258[121];
      v205 = v317;
      v204 = v325;
      goto LABEL_364;
    }

    goto LABEL_361;
  }

  if (v206 <= 5)
  {
    if (v206 != 4)
    {
      *v204 = *v205;
      *(v204 + 8) = *(v205 + 8);
      *(v204 + 9) = *(v205 + 9);
      v218 = v205[2];
      v204[2] = v218;
      v219 = v218;
      goto LABEL_395;
    }

    v229 = *v205;
    *v204 = *v205;
    v212 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v213 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v214 = *(v213 - 8);
    v215 = v205;
    v230 = *(v214 + 48);
    v231 = v229;
    if (v230(v215 + v212, 1, v213))
    {
LABEL_294:
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v204 + v212, v215 + v212, *(*(v225 - 8) + 64));
      goto LABEL_395;
    }

    v246 = swift_getEnumCaseMultiPayload();
    if (v246 > 4)
    {
      if (v246 <= 7)
      {
        if (v246 == 5 || v246 == 6)
        {
          goto LABEL_380;
        }

        goto LABEL_393;
      }

      if (v246 != 8 && v246 != 9)
      {
        goto LABEL_393;
      }

LABEL_379:
      v298 = *(v215 + v212);
      *(v204 + v212) = v298;
      v299 = v298;
      swift_storeEnumTagMultiPayload();
LABEL_394:
      (*(v214 + 56))(v204 + v212, 0, 1, v213);
      goto LABEL_395;
    }

    if (v246 <= 2)
    {
      if (v246 != 1)
      {
        if (v246 == 2)
        {
          goto LABEL_380;
        }

LABEL_393:
        memcpy(v204 + v212, v215 + v212, *(v214 + 64));
        goto LABEL_394;
      }

      goto LABEL_379;
    }

LABEL_380:
    v300 = sub_21DBF563C();
    (*(*(v300 - 8) + 16))(v204 + v212, v215 + v212, v300);
    swift_storeEnumTagMultiPayload();
    goto LABEL_394;
  }

  switch(v206)
  {
    case 6:
      v226 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v227 = *(v226 - 8);
      if ((*(v227 + 48))(v205, 1, v226))
      {
        v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v204, v205, *(*(v228 - 8) + 64));
      }

      else
      {
        *v204 = *v205;
        v237 = *(v226 + 20);
        v238 = sub_21DBF6C1C();
        v239 = *(*(v238 - 8) + 16);
        sub_21DBF8E0C();
        v239(v204 + v237, v205 + v237, v238);
        (*(v227 + 56))(v204, 0, 1, v226);
      }

      v240 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v241 = (v204 + v240);
      v242 = (v205 + v240);
      v243 = v242[1];
      if (v243)
      {
        *v241 = *v242;
        v241[1] = v243;
        v244 = v242[2];
        v241[2] = v244;
        sub_21DBF8E0C();
        v245 = v244;
      }

      else
      {
        *v241 = *v242;
        v241[2] = v242[2];
      }

      goto LABEL_395;
    case 7:
      v232 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v233 = *(v232 - 8);
      if ((*(v233 + 48))(v205, 1, v232))
      {
        v234 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v204, v205, *(*(v234 - 8) + 64));
      }

      else
      {
        v247 = sub_21DBF563C();
        (*(*(v247 - 8) + 16))(v204, v205, v247);
        *(v204 + *(v232 + 20)) = *(v205 + *(v232 + 20));
        (*(v233 + 56))(v204, 0, 1, v232);
      }

      v248 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v204 + *(v248 + 20)) = *(v205 + *(v248 + 20));
      goto LABEL_395;
    case 8:
      *v204 = *v205;
      v207 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v208 = sub_21DBF8D7C();
      (*(*(v208 - 8) + 16))(v204 + v207, v205 + v207, v208);
LABEL_395:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_301:
  memcpy(v204, v205, *(v8 + 64));
  return a1;
}

void *assignWithCopy for TTRRemindersListUncommittedSection(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5A3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(a2, 1, v7);
    if (EnumCaseMultiPayload == 1)
    {
      if (v9)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(v3, a2, *(*(v10 - 8) + 64));
LABEL_265:
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *(v3 + *(v218 + 48)) = *(a2 + *(v218 + 48));
        goto LABEL_270;
      }

      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          switch(v12)
          {
            case 6:
              v54 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v55 = *(v54 - 8);
              if ((*(v55 + 48))(a2, 1, v54))
              {
                v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(v3, a2, *(*(v56 - 8) + 64));
              }

              else
              {
                *v3 = *a2;
                v78 = *(v54 + 20);
                v345 = a3;
                v79 = sub_21DBF6C1C();
                v325 = *(*(v79 - 8) + 16);
                sub_21DBF8E0C();
                v80 = v79;
                a3 = v345;
                v325(v3 + v78, a2 + v78, v80);
                (*(v55 + 56))(v3, 0, 1, v54);
              }

              v81 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v82 = (v3 + v81);
              v83 = (a2 + v81);
              if (v83[1])
              {
                *v82 = *v83;
                v82[1] = v83[1];
                v84 = v83[2];
                v82[2] = v84;
                sub_21DBF8E0C();
                v85 = v84;
              }

              else
              {
                v94 = *v83;
                v82[2] = v83[2];
                *v82 = v94;
              }

              goto LABEL_263;
            case 7:
              v66 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v67 = *(v66 - 8);
              if ((*(v67 + 48))(a2, 1, v66))
              {
                v68 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v3, a2, *(*(v68 - 8) + 64));
              }

              else
              {
                v98 = sub_21DBF563C();
                (*(*(v98 - 8) + 16))(v3, a2, v98);
                *(v3 + *(v66 + 20)) = *(a2 + *(v66 + 20));
                (*(v67 + 56))(v3, 0, 1, v66);
              }

              v99 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v3 + *(v99 + 20)) = *(a2 + *(v99 + 20));
              goto LABEL_263;
            case 8:
              *v3 = *a2;
              v13 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v14 = sub_21DBF8D7C();
              (*(*(v14 - 8) + 16))(v3 + v13, a2 + v13, v14);
LABEL_263:
              swift_storeEnumTagMultiPayload();
              goto LABEL_264;
          }

LABEL_71:
          memcpy(v3, a2, *(v8 + 64));
LABEL_264:
          (*(v8 + 56))(v3, 0, 1, v7);
          goto LABEL_265;
        }

        if (v12 != 4)
        {
          *v3 = *a2;
          *(v3 + 8) = *(a2 + 8);
          *(v3 + 9) = *(a2 + 9);
          *(v3 + 10) = *(a2 + 10);
          v34 = a2[2];
          v3[2] = v34;
          v35 = v34;
          goto LABEL_263;
        }

        v342 = a3;
        v60 = *a2;
        *v3 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v44 = *(v43 - 8);
        v61 = *(v44 + 48);
        v62 = v60;
        if (v61(a2 + v23, 1, v43))
        {
LABEL_56:
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v3 + v23, a2 + v23, *(*(v47 - 8) + 64));
          a3 = v342;
          goto LABEL_263;
        }

        v96 = swift_getEnumCaseMultiPayload();
        if (v96 > 4)
        {
          if (v96 <= 7)
          {
            if (v96 == 5 || v96 == 6)
            {
              goto LABEL_229;
            }

            goto LABEL_261;
          }

          if (v96 != 8 && v96 != 9)
          {
            goto LABEL_261;
          }

LABEL_233:
          v214 = *(a2 + v23);
          *(v3 + v23) = v214;
          v215 = v214;
          swift_storeEnumTagMultiPayload();
          goto LABEL_262;
        }

        if (v96 <= 2)
        {
          if (v96 != 1)
          {
            if (v96 == 2)
            {
              goto LABEL_229;
            }

LABEL_261:
            memcpy(v3 + v23, a2 + v23, *(v44 + 64));
            goto LABEL_262;
          }

          goto LABEL_233;
        }

LABEL_229:
        v212 = sub_21DBF563C();
        (*(*(v212 - 8) + 16))(v3 + v23, a2 + v23, v212);
        swift_storeEnumTagMultiPayload();
LABEL_262:
        (*(v44 + 56))(v3 + v23, 0, 1, v43);
        goto LABEL_263;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          if (v12 != 1)
          {
            goto LABEL_71;
          }

          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          v354 = v7;
          v340 = a3;
          if (v19 <= 4)
          {
            if (v19 > 2)
            {
LABEL_131:
              v102 = sub_21DBF563C();
              (*(*(v102 - 8) + 16))(v3, a2, v102);
              swift_storeEnumTagMultiPayload();
              goto LABEL_184;
            }

            if (v19 != 1)
            {
              if (v19 == 2)
              {
                goto LABEL_131;
              }

              goto LABEL_183;
            }

LABEL_135:
            v104 = *a2;
            *v3 = *a2;
            v105 = v104;
            swift_storeEnumTagMultiPayload();
            goto LABEL_184;
          }

          if (v19 > 7)
          {
            if (v19 == 8 || v19 == 9)
            {
              goto LABEL_135;
            }
          }

          else if (v19 == 5 || v19 == 6)
          {
            goto LABEL_131;
          }

LABEL_183:
          memcpy(v3, a2, *(*(v18 - 8) + 64));
LABEL_184:
          v114 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v115 = v114[5];
          v116 = v3 + v115;
          v117 = a2 + v115;
          if (*(a2 + v115 + 8))
          {
            v336 = v8;
            v349 = v3;
            *v116 = *v117;
            *(v116 + 1) = *(v117 + 1);
            v118 = *(v117 + 2);
            v119 = *(v117 + 3);
            v120 = *(v117 + 4);
            v121 = *(v117 + 5);
            v123 = *(v117 + 6);
            v122 = *(v117 + 7);
            v327 = v117[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v118, v119, v120, v121, v123, v122, v327);
            *(v116 + 2) = v118;
            *(v116 + 3) = v119;
            *(v116 + 4) = v120;
            *(v116 + 5) = v121;
            *(v116 + 6) = v123;
            *(v116 + 7) = v122;
            v116[64] = v327;
            v116[65] = v117[65];
            v116[66] = v117[66];
            v116[67] = v117[67];
            v116[68] = v117[68];
            v124 = v117[120];
            if (v124 == 255)
            {
              v131 = *(v117 + 72);
              v132 = *(v117 + 88);
              v133 = *(v117 + 104);
              v116[120] = v117[120];
              *(v116 + 104) = v133;
              *(v116 + 88) = v132;
              *(v116 + 72) = v131;
            }

            else
            {
              v125 = *(v117 + 10);
              v328 = *(v117 + 9);
              v126 = *(v117 + 11);
              v127 = *(v117 + 12);
              v128 = *(v117 + 13);
              v129 = *(v117 + 14);
              v130 = v124 & 1;
              sub_21D0FB960(v328, v125, v126, v127, v128, v129, v124 & 1);
              *(v116 + 9) = v328;
              *(v116 + 10) = v125;
              *(v116 + 11) = v126;
              *(v116 + 12) = v127;
              *(v116 + 13) = v128;
              *(v116 + 14) = v129;
              v116[120] = v130;
            }

            v3 = v349;
            v7 = v354;
            v8 = v336;
            a3 = v340;
            v116[121] = v117[121];
            goto LABEL_204;
          }

LABEL_201:
          v168 = *v117;
          v169 = *(v117 + 1);
          v170 = *(v117 + 3);
          *(v116 + 2) = *(v117 + 2);
          *(v116 + 3) = v170;
          *v116 = v168;
          *(v116 + 1) = v169;
          v171 = *(v117 + 4);
          v172 = *(v117 + 5);
          v173 = *(v117 + 6);
          *(v116 + 106) = *(v117 + 106);
          *(v116 + 5) = v172;
          *(v116 + 6) = v173;
          *(v116 + 4) = v171;
LABEL_204:
          *(v3 + v114[6]) = *(a2 + v114[6]);
          *(v3 + v114[7]) = *(a2 + v114[7]);
          *(v3 + v114[8]) = *(a2 + v114[8]);
          *(v3 + v114[9]) = *(a2 + v114[9]);
          *(v3 + v114[10]) = *(a2 + v114[10]);
          v177 = v114[11];
          v178 = *(a2 + v177);
          *(v3 + v177) = v178;
          v179 = v178;
          goto LABEL_263;
        }

        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = swift_getEnumCaseMultiPayload();
        v344 = a3;
        if (v39 <= 4)
        {
          if (v39 > 2)
          {
LABEL_139:
            v108 = sub_21DBF563C();
            (*(*(v108 - 8) + 16))(v3, a2, v108);
            swift_storeEnumTagMultiPayload();
            goto LABEL_198;
          }

          if (v39 != 1)
          {
            if (v39 == 2)
            {
              goto LABEL_139;
            }

            goto LABEL_197;
          }

LABEL_143:
          v110 = *a2;
          *v3 = *a2;
          v111 = v110;
          swift_storeEnumTagMultiPayload();
          goto LABEL_198;
        }

        if (v39 > 7)
        {
          if (v39 == 8 || v39 == 9)
          {
            goto LABEL_143;
          }
        }

        else if (v39 == 5 || v39 == 6)
        {
          goto LABEL_139;
        }

LABEL_197:
        memcpy(v3, a2, *(*(v38 - 8) + 64));
LABEL_198:
        v114 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v154 = v114[5];
        v116 = v3 + v154;
        v117 = a2 + v154;
        if (*(a2 + v154 + 8))
        {
          v337 = v8;
          v351 = v3;
          v356 = v7;
          *v116 = *v117;
          *(v116 + 1) = *(v117 + 1);
          v155 = *(v117 + 2);
          v156 = *(v117 + 3);
          v157 = *(v117 + 4);
          v158 = *(v117 + 5);
          v160 = *(v117 + 6);
          v159 = *(v117 + 7);
          v331 = v117[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v155, v156, v157, v158, v160, v159, v331);
          *(v116 + 2) = v155;
          *(v116 + 3) = v156;
          *(v116 + 4) = v157;
          *(v116 + 5) = v158;
          *(v116 + 6) = v160;
          *(v116 + 7) = v159;
          v116[64] = v331;
          v116[65] = v117[65];
          v116[66] = v117[66];
          v116[67] = v117[67];
          v116[68] = v117[68];
          v161 = v117[120];
          if (v161 == 255)
          {
            v174 = *(v117 + 72);
            v175 = *(v117 + 88);
            v176 = *(v117 + 104);
            v116[120] = v117[120];
            *(v116 + 104) = v176;
            *(v116 + 88) = v175;
            *(v116 + 72) = v174;
          }

          else
          {
            v162 = *(v117 + 10);
            v332 = *(v117 + 9);
            v163 = *(v117 + 11);
            v164 = *(v117 + 12);
            v165 = *(v117 + 13);
            v166 = *(v117 + 14);
            v167 = v161 & 1;
            sub_21D0FB960(v332, v162, v163, v164, v165, v166, v161 & 1);
            *(v116 + 9) = v332;
            *(v116 + 10) = v162;
            *(v116 + 11) = v163;
            *(v116 + 12) = v164;
            *(v116 + 13) = v165;
            *(v116 + 14) = v166;
            v116[120] = v167;
          }

          v3 = v351;
          v7 = v356;
          v8 = v337;
          a3 = v344;
          v116[121] = v117[121];
          goto LABEL_204;
        }

        goto LABEL_201;
      }

      if (v12 == 2)
      {
        v342 = a3;
        v42 = *a2;
        *v3 = *a2;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v44 = *(v43 - 8);
        v45 = *(v44 + 48);
        v46 = v42;
        if (v45(a2 + v23, 1, v43))
        {
          goto LABEL_56;
        }

        v76 = swift_getEnumCaseMultiPayload();
        if (v76 > 4)
        {
          if (v76 <= 7)
          {
            if (v76 == 5 || v76 == 6)
            {
              goto LABEL_229;
            }

            goto LABEL_261;
          }

          if (v76 != 8 && v76 != 9)
          {
            goto LABEL_261;
          }

          goto LABEL_233;
        }

        if (v76 > 2)
        {
          goto LABEL_229;
        }

        if (v76 == 1)
        {
          goto LABEL_233;
        }

        if (v76 != 2)
        {
          goto LABEL_261;
        }

        goto LABEL_229;
      }

      v342 = a3;
      v22 = *a2;
      *v3 = *a2;
      v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      v27 = v22;
      if (v26(a2 + v23, 1, v24))
      {
        goto LABEL_56;
      }

      v72 = swift_getEnumCaseMultiPayload();
      if (v72 > 4)
      {
        v73 = v25;
        if (v72 <= 7)
        {
          if (v72 == 5 || v72 == 6)
          {
            goto LABEL_213;
          }

          goto LABEL_255;
        }

        if (v72 != 8 && v72 != 9)
        {
          goto LABEL_255;
        }
      }

      else
      {
        v73 = v25;
        if (v72 > 2)
        {
LABEL_213:
          v206 = sub_21DBF563C();
          (*(*(v206 - 8) + 16))(v3 + v23, a2 + v23, v206);
          swift_storeEnumTagMultiPayload();
LABEL_256:
          (*(v73 + 56))(v3 + v23, 0, 1, v24);
          goto LABEL_263;
        }

        if (v72 != 1)
        {
          if (v72 == 2)
          {
            goto LABEL_213;
          }

LABEL_255:
          memcpy(v3 + v23, a2 + v23, *(v73 + 64));
          goto LABEL_256;
        }
      }

      v208 = *(a2 + v23);
      *(v3 + v23) = v208;
      v209 = v208;
      swift_storeEnumTagMultiPayload();
      goto LABEL_256;
    }

    if (v9)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(v3, a2, *(*(v11 - 8) + 64));
      goto LABEL_270;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v57 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v58 = *(v57 - 8);
            if ((*(v58 + 48))(a2, 1, v57))
            {
              v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v3, a2, *(*(v59 - 8) + 64));
            }

            else
            {
              *v3 = *a2;
              v86 = *(v57 + 20);
              v346 = a3;
              v87 = sub_21DBF6C1C();
              v326 = *(*(v87 - 8) + 16);
              sub_21DBF8E0C();
              v88 = v87;
              a3 = v346;
              v326(v3 + v86, a2 + v86, v88);
              (*(v58 + 56))(v3, 0, 1, v57);
            }

            v89 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v90 = (v3 + v89);
            v91 = (a2 + v89);
            if (v91[1])
            {
              *v90 = *v91;
              v90[1] = v91[1];
              v92 = v91[2];
              v90[2] = v92;
              sub_21DBF8E0C();
              v93 = v92;
            }

            else
            {
              v95 = *v91;
              v90[2] = v91[2];
              *v90 = v95;
            }

            goto LABEL_268;
          case 7:
            v69 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v70 = *(v69 - 8);
            if ((*(v70 + 48))(a2, 1, v69))
            {
              v71 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v3, a2, *(*(v71 - 8) + 64));
            }

            else
            {
              v100 = sub_21DBF563C();
              (*(*(v100 - 8) + 16))(v3, a2, v100);
              *(v3 + *(v69 + 20)) = *(a2 + *(v69 + 20));
              (*(v70 + 56))(v3, 0, 1, v69);
            }

            v101 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v3 + *(v101 + 20)) = *(a2 + *(v101 + 20));
            goto LABEL_268;
          case 8:
            *v3 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(v3 + v16, a2 + v16, v17);
LABEL_268:
            swift_storeEnumTagMultiPayload();
            goto LABEL_269;
        }

LABEL_72:
        memcpy(v3, a2, *(v8 + 64));
LABEL_269:
        (*(v8 + 56))(v3, 0, 1, v7);
LABEL_270:
        swift_storeEnumTagMultiPayload();
        v219 = *(a3 + 20);
        v220 = (v3 + v219);
        v221 = (a2 + v219);
        sub_21D106918(v3 + v219, type metadata accessor for TTRRemindersListViewModel.Item);
        v222 = swift_getEnumCaseMultiPayload();
        if (v222 > 3)
        {
          if (v222 > 5)
          {
            switch(v222)
            {
              case 6:
                v242 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                v243 = *(v242 - 8);
                if ((*(v243 + 48))(v221, 1, v242))
                {
                  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                  memcpy(v220, v221, *(*(v244 - 8) + 64));
                }

                else
                {
                  *v220 = *v221;
                  v253 = *(v242 + 20);
                  v254 = sub_21DBF6C1C();
                  v255 = *(*(v254 - 8) + 16);
                  sub_21DBF8E0C();
                  v255(v220 + v253, v221 + v253, v254);
                  (*(v243 + 56))(v220, 0, 1, v242);
                }

                v256 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                v257 = (v220 + v256);
                v258 = (v221 + v256);
                if (v258[1])
                {
                  *v257 = *v258;
                  v257[1] = v258[1];
                  v259 = v258[2];
                  v257[2] = v259;
                  sub_21DBF8E0C();
                  v260 = v259;
                }

                else
                {
                  v261 = *v258;
                  v257[2] = v258[2];
                  *v257 = v261;
                }

                goto LABEL_396;
              case 7:
                v248 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                v249 = *(v248 - 8);
                if ((*(v249 + 48))(v221, 1, v248))
                {
                  v250 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                  memcpy(v220, v221, *(*(v250 - 8) + 64));
                }

                else
                {
                  v263 = sub_21DBF563C();
                  (*(*(v263 - 8) + 16))(v220, v221, v263);
                  *(v220 + *(v248 + 20)) = *(v221 + *(v248 + 20));
                  (*(v249 + 56))(v220, 0, 1, v248);
                }

                v264 = type metadata accessor for TTRTemplatePublicLinkData(0);
                *(v220 + *(v264 + 20)) = *(v221 + *(v264 + 20));
                goto LABEL_396;
              case 8:
                *v220 = *v221;
                v223 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                v224 = sub_21DBF8D7C();
                (*(*(v224 - 8) + 16))(v220 + v223, v221 + v223, v224);
LABEL_396:
                swift_storeEnumTagMultiPayload();
                return v3;
            }

            goto LABEL_302;
          }

          if (v222 != 4)
          {
            *v220 = *v221;
            *(v220 + 8) = *(v221 + 8);
            *(v220 + 9) = *(v221 + 9);
            *(v220 + 10) = *(v221 + 10);
            v234 = v221[2];
            v220[2] = v234;
            v235 = v234;
            goto LABEL_396;
          }

          v245 = *v221;
          *v220 = *v221;
          v228 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v229 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v230 = *(v229 - 8);
          v231 = v221;
          v246 = *(v230 + 48);
          v247 = v245;
          if (v246(&v231[v228], 1, v229))
          {
LABEL_295:
            v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(v220 + v228, &v231[v228], *(*(v241 - 8) + 64));
            goto LABEL_396;
          }

          v262 = swift_getEnumCaseMultiPayload();
          if (v262 > 4)
          {
            if (v262 <= 7)
            {
              if (v262 == 5 || v262 == 6)
              {
                goto LABEL_381;
              }

              goto LABEL_394;
            }

            if (v262 != 8 && v262 != 9)
            {
              goto LABEL_394;
            }

LABEL_380:
            v321 = *&v231[v228];
            *(v220 + v228) = v321;
            v322 = v321;
            swift_storeEnumTagMultiPayload();
LABEL_395:
            (*(v230 + 56))(v220 + v228, 0, 1, v229);
            goto LABEL_396;
          }

          if (v262 <= 2)
          {
            if (v262 != 1)
            {
              if (v262 == 2)
              {
                goto LABEL_381;
              }

LABEL_394:
              memcpy(v220 + v228, &v231[v228], *(v230 + 64));
              goto LABEL_395;
            }

            goto LABEL_380;
          }

LABEL_381:
          v323 = sub_21DBF563C();
          (*(*(v323 - 8) + 16))(v220 + v228, &v231[v228], v323);
          swift_storeEnumTagMultiPayload();
          goto LABEL_395;
        }

        if (v222 > 1)
        {
          if (v222 == 2)
          {
            v238 = *v221;
            *v220 = *v221;
            v228 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v229 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v230 = *(v229 - 8);
            v231 = v221;
            v239 = *(v230 + 48);
            v240 = v238;
            if (v239(&v231[v228], 1, v229))
            {
              goto LABEL_295;
            }

            v252 = swift_getEnumCaseMultiPayload();
            if (v252 > 4)
            {
              if (v252 <= 7)
              {
                if (v252 == 5 || v252 == 6)
                {
                  goto LABEL_381;
                }

                goto LABEL_394;
              }

              if (v252 != 8 && v252 != 9)
              {
                goto LABEL_394;
              }

              goto LABEL_380;
            }

            if (v252 > 2)
            {
              goto LABEL_381;
            }

            if (v252 == 1)
            {
              goto LABEL_380;
            }

            if (v252 != 2)
            {
              goto LABEL_394;
            }
          }

          else
          {
            v227 = *v221;
            *v220 = *v221;
            v228 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v229 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v230 = *(v229 - 8);
            v231 = v221;
            v232 = *(v230 + 48);
            v233 = v227;
            if (v232(&v231[v228], 1, v229))
            {
              goto LABEL_295;
            }

            v251 = swift_getEnumCaseMultiPayload();
            if (v251 > 4)
            {
              if (v251 <= 7)
              {
                if (v251 == 5 || v251 == 6)
                {
                  goto LABEL_381;
                }

                goto LABEL_394;
              }

              if (v251 != 8 && v251 != 9)
              {
                goto LABEL_394;
              }

              goto LABEL_380;
            }

            if (v251 > 2)
            {
              goto LABEL_381;
            }

            if (v251 == 1)
            {
              goto LABEL_380;
            }

            if (v251 != 2)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_381;
        }

        if (v222)
        {
          if (v222 != 1)
          {
LABEL_302:
            memcpy(v220, v221, *(v8 + 64));
            return v3;
          }

          v225 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v226 = swift_getEnumCaseMultiPayload();
          v353 = v3;
          if (v226 <= 4)
          {
            if (v226 > 2)
            {
LABEL_332:
              v265 = sub_21DBF563C();
              (*(*(v265 - 8) + 16))(v220, v221, v265);
              swift_storeEnumTagMultiPayload();
              goto LABEL_359;
            }

            if (v226 != 1)
            {
              if (v226 == 2)
              {
                goto LABEL_332;
              }

              goto LABEL_358;
            }

LABEL_335:
            v266 = *v221;
            *v220 = *v221;
            v267 = v266;
            swift_storeEnumTagMultiPayload();
            goto LABEL_359;
          }

          if (v226 > 7)
          {
            if (v226 == 8 || v226 == 9)
            {
              goto LABEL_335;
            }
          }

          else if (v226 == 5 || v226 == 6)
          {
            goto LABEL_332;
          }

LABEL_358:
          memcpy(v220, v221, *(*(v225 - 8) + 64));
LABEL_359:
          v271 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v272 = v271[5];
          v273 = v220 + v272;
          v274 = v221 + v272;
          if (*(v221 + v272 + 8))
          {
            v338 = v221;
            v347 = v220;
            *v273 = *v274;
            *(v273 + 1) = *(v274 + 1);
            v275 = *(v274 + 2);
            v276 = *(v274 + 3);
            v277 = *(v274 + 4);
            v278 = *(v274 + 5);
            v279 = *(v274 + 6);
            v280 = *(v274 + 7);
            v281 = v274[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v275, v276, v277, v278, v279, v280, v281);
            *(v273 + 2) = v275;
            *(v273 + 3) = v276;
            *(v273 + 4) = v277;
            *(v273 + 5) = v278;
            *(v273 + 6) = v279;
            *(v273 + 7) = v280;
            v273[64] = v281;
            v273[65] = v274[65];
            v273[66] = v274[66];
            v273[67] = v274[67];
            v273[68] = v274[68];
            v282 = v274[120];
            if (v282 == 255)
            {
              v296 = *(v274 + 72);
              v297 = *(v274 + 88);
              v298 = *(v274 + 104);
              v273[120] = v274[120];
              *(v273 + 104) = v298;
              *(v273 + 88) = v297;
              *(v273 + 72) = v296;
            }

            else
            {
              v283 = *(v274 + 9);
              v284 = *(v274 + 10);
              v285 = *(v274 + 11);
              v286 = *(v274 + 12);
              v287 = *(v274 + 13);
              v288 = *(v274 + 14);
              v289 = v282 & 1;
              sub_21D0FB960(v283, v284, v285, v286, v287, v288, v282 & 1);
              *(v273 + 9) = v283;
              *(v273 + 10) = v284;
              *(v273 + 11) = v285;
              *(v273 + 12) = v286;
              *(v273 + 13) = v287;
              *(v273 + 14) = v288;
              v273[120] = v289;
            }

            v3 = v353;
            v273[121] = v274[121];
            v221 = v338;
            v220 = v347;
            goto LABEL_365;
          }

LABEL_362:
          v290 = *v274;
          v291 = *(v274 + 1);
          v292 = *(v274 + 3);
          *(v273 + 2) = *(v274 + 2);
          *(v273 + 3) = v292;
          *v273 = v290;
          *(v273 + 1) = v291;
          v293 = *(v274 + 4);
          v294 = *(v274 + 5);
          v295 = *(v274 + 6);
          *(v273 + 106) = *(v274 + 106);
          *(v273 + 5) = v294;
          *(v273 + 6) = v295;
          *(v273 + 4) = v293;
          v3 = v353;
LABEL_365:
          *(v220 + v271[6]) = *(v221 + v271[6]);
          *(v220 + v271[7]) = *(v221 + v271[7]);
          *(v220 + v271[8]) = *(v221 + v271[8]);
          *(v220 + v271[9]) = *(v221 + v271[9]);
          *(v220 + v271[10]) = *(v221 + v271[10]);
          v299 = v271[11];
          v300 = *(v221 + v299);
          *(v220 + v299) = v300;
          v301 = v300;
          goto LABEL_396;
        }

        v236 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v237 = swift_getEnumCaseMultiPayload();
        v353 = v3;
        if (v237 <= 4)
        {
          if (v237 > 2)
          {
LABEL_336:
            v268 = sub_21DBF563C();
            (*(*(v268 - 8) + 16))(v220, v221, v268);
            swift_storeEnumTagMultiPayload();
            goto LABEL_367;
          }

          if (v237 != 1)
          {
            if (v237 == 2)
            {
              goto LABEL_336;
            }

            goto LABEL_366;
          }

LABEL_339:
          v269 = *v221;
          *v220 = *v221;
          v270 = v269;
          swift_storeEnumTagMultiPayload();
          goto LABEL_367;
        }

        if (v237 > 7)
        {
          if (v237 == 8 || v237 == 9)
          {
            goto LABEL_339;
          }
        }

        else if (v237 == 5 || v237 == 6)
        {
          goto LABEL_336;
        }

LABEL_366:
        memcpy(v220, v221, *(*(v236 - 8) + 64));
LABEL_367:
        v271 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v302 = v271[5];
        v273 = v220 + v302;
        v274 = v221 + v302;
        if (*(v221 + v302 + 8))
        {
          v339 = v221;
          v348 = v220;
          *v273 = *v274;
          *(v273 + 1) = *(v274 + 1);
          v303 = *(v274 + 2);
          v304 = *(v274 + 3);
          v305 = *(v274 + 4);
          v306 = *(v274 + 5);
          v308 = *(v274 + 6);
          v307 = *(v274 + 7);
          v309 = v274[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v303, v304, v305, v306, v308, v307, v309);
          *(v273 + 2) = v303;
          *(v273 + 3) = v304;
          *(v273 + 4) = v305;
          *(v273 + 5) = v306;
          *(v273 + 6) = v308;
          *(v273 + 7) = v307;
          v273[64] = v309;
          v273[65] = v274[65];
          v273[66] = v274[66];
          v273[67] = v274[67];
          v273[68] = v274[68];
          v310 = v274[120];
          if (v310 == 255)
          {
            v318 = *(v274 + 72);
            v319 = *(v274 + 88);
            v320 = *(v274 + 104);
            v273[120] = v274[120];
            *(v273 + 104) = v320;
            *(v273 + 88) = v319;
            *(v273 + 72) = v318;
          }

          else
          {
            v311 = *(v274 + 9);
            v312 = *(v274 + 10);
            v313 = *(v274 + 11);
            v314 = *(v274 + 12);
            v315 = *(v274 + 13);
            v316 = *(v274 + 14);
            v317 = v310 & 1;
            sub_21D0FB960(v311, v312, v313, v314, v315, v316, v310 & 1);
            *(v273 + 9) = v311;
            *(v273 + 10) = v312;
            *(v273 + 11) = v313;
            *(v273 + 12) = v314;
            *(v273 + 13) = v315;
            *(v273 + 14) = v316;
            v273[120] = v317;
          }

          v3 = v353;
          v273[121] = v274[121];
          v221 = v339;
          v220 = v348;
          goto LABEL_365;
        }

        goto LABEL_362;
      }

      if (v15 != 4)
      {
        *v3 = *a2;
        *(v3 + 8) = *(a2 + 8);
        *(v3 + 9) = *(a2 + 9);
        *(v3 + 10) = *(a2 + 10);
        v36 = a2[2];
        v3[2] = v36;
        v37 = v36;
        goto LABEL_268;
      }

      v343 = a3;
      v63 = *a2;
      *v3 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v64 = *(v50 + 48);
      v65 = v63;
      if (v64(a2 + v29, 1, v49))
      {
LABEL_58:
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v3 + v29, a2 + v29, *(*(v53 - 8) + 64));
        a3 = v343;
        goto LABEL_268;
      }

      v97 = swift_getEnumCaseMultiPayload();
      if (v97 > 4)
      {
        if (v97 <= 7)
        {
          if (v97 == 5 || v97 == 6)
          {
            goto LABEL_230;
          }

          goto LABEL_266;
        }

        if (v97 != 8 && v97 != 9)
        {
          goto LABEL_266;
        }

LABEL_236:
        v216 = *(a2 + v29);
        *(v3 + v29) = v216;
        v217 = v216;
        swift_storeEnumTagMultiPayload();
        goto LABEL_267;
      }

      if (v97 <= 2)
      {
        if (v97 != 1)
        {
          if (v97 == 2)
          {
            goto LABEL_230;
          }

LABEL_266:
          memcpy(v3 + v29, a2 + v29, *(v50 + 64));
          goto LABEL_267;
        }

        goto LABEL_236;
      }

LABEL_230:
      v213 = sub_21DBF563C();
      (*(*(v213 - 8) + 16))(v3 + v29, a2 + v29, v213);
      swift_storeEnumTagMultiPayload();
LABEL_267:
      (*(v50 + 56))(v3 + v29, 0, 1, v49);
      goto LABEL_268;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_72;
        }

        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = swift_getEnumCaseMultiPayload();
        v355 = v7;
        v335 = v8;
        v341 = a3;
        if (v21 <= 4)
        {
          if (v21 > 2)
          {
LABEL_132:
            v103 = sub_21DBF563C();
            (*(*(v103 - 8) + 16))(v3, a2, v103);
            swift_storeEnumTagMultiPayload();
            goto LABEL_191;
          }

          if (v21 != 1)
          {
            if (v21 == 2)
            {
              goto LABEL_132;
            }

            goto LABEL_190;
          }

LABEL_138:
          v106 = *a2;
          *v3 = *a2;
          v107 = v106;
          swift_storeEnumTagMultiPayload();
          goto LABEL_191;
        }

        if (v21 > 7)
        {
          if (v21 == 8 || v21 == 9)
          {
            goto LABEL_138;
          }
        }

        else if (v21 == 5 || v21 == 6)
        {
          goto LABEL_132;
        }

LABEL_190:
        memcpy(v3, a2, *(*(v20 - 8) + 64));
LABEL_191:
        v134 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v135 = v134[5];
        v136 = v3 + v135;
        v137 = a2 + v135;
        if (*(a2 + v135 + 8))
        {
          v350 = v3;
          *v136 = *v137;
          *(v136 + 1) = *(v137 + 1);
          v138 = *(v137 + 2);
          v139 = *(v137 + 3);
          v140 = *(v137 + 4);
          v141 = *(v137 + 5);
          v143 = *(v137 + 6);
          v142 = *(v137 + 7);
          v329 = v137[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v138, v139, v140, v141, v143, v142, v329);
          *(v136 + 2) = v138;
          *(v136 + 3) = v139;
          *(v136 + 4) = v140;
          *(v136 + 5) = v141;
          *(v136 + 6) = v143;
          *(v136 + 7) = v142;
          v136[64] = v329;
          v136[65] = v137[65];
          v136[66] = v137[66];
          v136[67] = v137[67];
          v136[68] = v137[68];
          v144 = v137[120];
          if (v144 == 255)
          {
            v151 = *(v137 + 72);
            v152 = *(v137 + 88);
            v153 = *(v137 + 104);
            v136[120] = v137[120];
            *(v136 + 104) = v153;
            *(v136 + 88) = v152;
            *(v136 + 72) = v151;
          }

          else
          {
            v145 = *(v137 + 10);
            v330 = *(v137 + 9);
            v146 = *(v137 + 11);
            v147 = *(v137 + 12);
            v148 = *(v137 + 13);
            v149 = *(v137 + 14);
            v150 = v144 & 1;
            sub_21D0FB960(v330, v145, v146, v147, v148, v149, v144 & 1);
            *(v136 + 9) = v330;
            *(v136 + 10) = v145;
            *(v136 + 11) = v146;
            *(v136 + 12) = v147;
            *(v136 + 13) = v148;
            *(v136 + 14) = v149;
            v136[120] = v150;
          }

          v3 = v350;
          v7 = v355;
          v8 = v335;
          a3 = v341;
          v136[121] = v137[121];
          goto LABEL_212;
        }

LABEL_209:
        v194 = *v137;
        v195 = *(v137 + 1);
        v196 = *(v137 + 3);
        *(v136 + 2) = *(v137 + 2);
        *(v136 + 3) = v196;
        *v136 = v194;
        *(v136 + 1) = v195;
        v197 = *(v137 + 4);
        v198 = *(v137 + 5);
        v199 = *(v137 + 6);
        *(v136 + 106) = *(v137 + 106);
        *(v136 + 5) = v198;
        *(v136 + 6) = v199;
        *(v136 + 4) = v197;
        v7 = v355;
        v8 = v335;
        a3 = v341;
LABEL_212:
        *(v3 + v134[6]) = *(a2 + v134[6]);
        *(v3 + v134[7]) = *(a2 + v134[7]);
        *(v3 + v134[8]) = *(a2 + v134[8]);
        *(v3 + v134[9]) = *(a2 + v134[9]);
        *(v3 + v134[10]) = *(a2 + v134[10]);
        v203 = v134[11];
        v204 = *(a2 + v203);
        *(v3 + v203) = v204;
        v205 = v204;
        goto LABEL_268;
      }

      v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v41 = swift_getEnumCaseMultiPayload();
      v355 = v7;
      v335 = v8;
      v341 = a3;
      if (v41 <= 4)
      {
        if (v41 > 2)
        {
LABEL_140:
          v109 = sub_21DBF563C();
          (*(*(v109 - 8) + 16))(v3, a2, v109);
          swift_storeEnumTagMultiPayload();
          goto LABEL_206;
        }

        if (v41 != 1)
        {
          if (v41 == 2)
          {
            goto LABEL_140;
          }

          goto LABEL_205;
        }

LABEL_146:
        v112 = *a2;
        *v3 = *a2;
        v113 = v112;
        swift_storeEnumTagMultiPayload();
        goto LABEL_206;
      }

      if (v41 > 7)
      {
        if (v41 == 8 || v41 == 9)
        {
          goto LABEL_146;
        }
      }

      else if (v41 == 5 || v41 == 6)
      {
        goto LABEL_140;
      }

LABEL_205:
      memcpy(v3, a2, *(*(v40 - 8) + 64));
LABEL_206:
      v134 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v180 = v134[5];
      v136 = v3 + v180;
      v137 = a2 + v180;
      if (*(a2 + v180 + 8))
      {
        v352 = v3;
        *v136 = *v137;
        *(v136 + 1) = *(v137 + 1);
        v181 = *(v137 + 2);
        v182 = *(v137 + 3);
        v184 = *(v137 + 4);
        v183 = *(v137 + 5);
        v185 = *(v137 + 6);
        v186 = *(v137 + 7);
        v333 = v137[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v181, v182, v184, v183, v185, v186, v333);
        *(v136 + 2) = v181;
        *(v136 + 3) = v182;
        *(v136 + 4) = v184;
        *(v136 + 5) = v183;
        *(v136 + 6) = v185;
        *(v136 + 7) = v186;
        v136[64] = v333;
        v136[65] = v137[65];
        v136[66] = v137[66];
        v136[67] = v137[67];
        v136[68] = v137[68];
        v187 = v137[120];
        if (v187 == 255)
        {
          v200 = *(v137 + 72);
          v201 = *(v137 + 88);
          v202 = *(v137 + 104);
          v136[120] = v137[120];
          *(v136 + 104) = v202;
          *(v136 + 88) = v201;
          *(v136 + 72) = v200;
        }

        else
        {
          v188 = *(v137 + 10);
          v334 = *(v137 + 9);
          v189 = *(v137 + 11);
          v190 = *(v137 + 12);
          v191 = *(v137 + 13);
          v192 = *(v137 + 14);
          v193 = v187 & 1;
          sub_21D0FB960(v334, v188, v189, v190, v191, v192, v187 & 1);
          *(v136 + 9) = v334;
          *(v136 + 10) = v188;
          *(v136 + 11) = v189;
          *(v136 + 12) = v190;
          *(v136 + 13) = v191;
          *(v136 + 14) = v192;
          v136[120] = v193;
        }

        v3 = v352;
        v7 = v355;
        v8 = v335;
        a3 = v341;
        v136[121] = v137[121];
        goto LABEL_212;
      }

      goto LABEL_209;
    }

    if (v15 == 2)
    {
      v343 = a3;
      v48 = *a2;
      *v3 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v48;
      if (v51(a2 + v29, 1, v49))
      {
        goto LABEL_58;
      }

      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 4)
      {
        if (v77 <= 7)
        {
          if (v77 == 5 || v77 == 6)
          {
            goto LABEL_230;
          }

          goto LABEL_266;
        }

        if (v77 != 8 && v77 != 9)
        {
          goto LABEL_266;
        }

        goto LABEL_236;
      }

      if (v77 > 2)
      {
        goto LABEL_230;
      }

      if (v77 == 1)
      {
        goto LABEL_236;
      }

      if (v77 != 2)
      {
        goto LABEL_266;
      }

      goto LABEL_230;
    }

    v343 = a3;
    v28 = *a2;
    *v3 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v28;
    if (v32(a2 + v29, 1, v30))
    {
      goto LABEL_58;
    }

    v74 = swift_getEnumCaseMultiPayload();
    if (v74 > 4)
    {
      v75 = v31;
      if (v74 <= 7)
      {
        if (v74 == 5 || v74 == 6)
        {
          goto LABEL_214;
        }

        goto LABEL_257;
      }

      if (v74 != 8 && v74 != 9)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v75 = v31;
      if (v74 > 2)
      {
LABEL_214:
        v207 = sub_21DBF563C();
        (*(*(v207 - 8) + 16))(v3 + v29, a2 + v29, v207);
        swift_storeEnumTagMultiPayload();
LABEL_258:
        (*(v75 + 56))(v3 + v29, 0, 1, v30);
        goto LABEL_268;
      }

      if (v74 != 1)
      {
        if (v74 == 2)
        {
          goto LABEL_214;
        }

LABEL_257:
        memcpy(v3 + v29, a2 + v29, *(v75 + 64));
        goto LABEL_258;
      }
    }

    v210 = *(a2 + v29);
    *(v3 + v29) = v210;
    v211 = v210;
    swift_storeEnumTagMultiPayload();
    goto LABEL_258;
  }

  return v3;
}

_BYTE *initializeWithTake for TTRRemindersListUncommittedSection(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a2, 1, v7);
  if (EnumCaseMultiPayload == 1)
  {
    if (v9)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_182:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
      *&a1[*(v82 + 48)] = *&a2[*(v82 + 48)];
      goto LABEL_187;
    }

    v12 = swift_getEnumCaseMultiPayload();
    if (v12 > 3)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          v40 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(a2, 1, v40))
          {
            v42 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v42 - 8) + 64));
          }

          else
          {
            v50 = sub_21DBF563C();
            (*(*(v50 - 8) + 32))(a1, a2, v50);
            a1[*(v40 + 20)] = a2[*(v40 + 20)];
            (*(v41 + 56))(a1, 0, 1, v40);
          }

          v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v51 + 20)] = *&a2[*(v51 + 20)];
          goto LABEL_180;
        }

        if (v12 != 8)
        {
          goto LABEL_68;
        }

        *a1 = *a2;
        v32 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v33 = sub_21DBF8D7C();
        (*(*(v33 - 8) + 32))(&a1[v32], &a2[v32], v33);
LABEL_180:
        swift_storeEnumTagMultiPayload();
        goto LABEL_181;
      }

      if (v12 != 4)
      {
        if (v12 == 6)
        {
          v20 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v21 = *(v20 - 8);
          if ((*(v21 + 48))(a2, 1, v20))
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v22 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v54 = *(v20 + 20);
            v55 = sub_21DBF6C1C();
            (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
            (*(v21 + 56))(a1, 0, 1, v20);
          }

          v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v57 = &a1[v56];
          v58 = &a2[v56];
          *v57 = *v58;
          *(v57 + 2) = *(v58 + 2);
          goto LABEL_180;
        }

        goto LABEL_68;
      }

      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&a2[v26], 1, v27))
      {
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 <= 3)
        {
          if (v46 == 2 || v46 == 3)
          {
            goto LABEL_114;
          }
        }

        else if (v46 == 4 || v46 == 5 || v46 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_178;
      }
    }

    else
    {
      if (v12 <= 1)
      {
        if (!v12)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v36 = swift_getEnumCaseMultiPayload();
          if (v36 <= 3)
          {
            if (v36 == 2 || v36 == 3)
            {
              goto LABEL_14;
            }
          }

          else if (v36 == 4 || v36 == 5 || v36 == 6)
          {
            goto LABEL_14;
          }

          goto LABEL_132;
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
LABEL_133:
            v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v69 = v68[5];
            v70 = &a1[v69];
            v71 = &a2[v69];
            v72 = v71[3];
            v70[2] = v71[2];
            v70[3] = v72;
            v73 = v71[1];
            *v70 = *v71;
            v70[1] = v73;
            *(v70 + 106) = *(v71 + 106);
            v74 = v71[6];
            v70[5] = v71[5];
            v70[6] = v74;
            v70[4] = v71[4];
            a1[v68[6]] = a2[v68[6]];
            a1[v68[7]] = a2[v68[7]];
            a1[v68[8]] = a2[v68[8]];
            a1[v68[9]] = a2[v68[9]];
            a1[v68[10]] = a2[v68[10]];
            *&a1[v68[11]] = *&a2[v68[11]];
            goto LABEL_180;
          }

LABEL_132:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_133;
        }

LABEL_68:
        memcpy(a1, a2, *(v8 + 64));
LABEL_181:
        (*(v8 + 56))(a1, 0, 1, v7);
        goto LABEL_182;
      }

      if (v12 != 2)
      {
        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        if ((*(v28 + 48))(&a2[v26], 1, v27))
        {
          goto LABEL_61;
        }

        v64 = swift_getEnumCaseMultiPayload();
        if (v64 <= 3)
        {
          if (v64 == 2 || v64 == 3)
          {
            goto LABEL_114;
          }
        }

        else if (v64 == 4 || v64 == 5 || v64 == 6)
        {
LABEL_114:
          v65 = sub_21DBF563C();
          (*(*(v65 - 8) + 32))(&a1[v26], &a2[v26], v65);
          swift_storeEnumTagMultiPayload();
LABEL_179:
          (*(v28 + 56))(&a1[v26], 0, 1, v27);
          goto LABEL_180;
        }

LABEL_178:
        memcpy(&a1[v26], &a2[v26], *(v28 + 64));
        goto LABEL_179;
      }

      *a1 = *a2;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&a2[v26], 1, v27))
      {
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 <= 3)
        {
          if (v48 == 2 || v48 == 3)
          {
            goto LABEL_114;
          }
        }

        else if (v48 == 4 || v48 == 5 || v48 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_178;
      }
    }

LABEL_61:
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v26], &a2[v26], *(*(v38 - 8) + 64));
    goto LABEL_180;
  }

  if (v9)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_187;
  }

  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 3)
  {
    if (v16 > 6)
    {
      if (v16 == 7)
      {
        v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v44 = *(v43 - 8);
        if ((*(v44 + 48))(a2, 1, v43))
        {
          v45 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v45 - 8) + 64));
        }

        else
        {
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 32))(a1, a2, v52);
          a1[*(v43 + 20)] = a2[*(v43 + 20)];
          (*(v44 + 56))(a1, 0, 1, v43);
        }

        v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v53 + 20)] = *&a2[*(v53 + 20)];
        goto LABEL_185;
      }

      if (v16 != 8)
      {
        goto LABEL_69;
      }

      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v35 = sub_21DBF8D7C();
      (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
LABEL_185:
      swift_storeEnumTagMultiPayload();
      goto LABEL_186;
    }

    if (v16 != 4)
    {
      if (v16 == 6)
      {
        v23 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v24 = *(v23 - 8);
        if ((*(v24 + 48))(a2, 1, v23))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v25 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v59 = *(v23 + 20);
          v60 = sub_21DBF6C1C();
          (*(*(v60 - 8) + 32))(&a1[v59], &a2[v59], v60);
          (*(v24 + 56))(a1, 0, 1, v23);
        }

        v61 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v62 = &a1[v61];
        v63 = &a2[v61];
        *v62 = *v63;
        *(v62 + 2) = *(v63 + 2);
        goto LABEL_185;
      }

      goto LABEL_69;
    }

    *a1 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(&a2[v29], 1, v30))
    {
      v47 = swift_getEnumCaseMultiPayload();
      if (v47 <= 3)
      {
        if (v47 == 2 || v47 == 3)
        {
          goto LABEL_119;
        }
      }

      else if (v47 == 4 || v47 == 5 || v47 == 6)
      {
        goto LABEL_119;
      }

      goto LABEL_183;
    }

    goto LABEL_63;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *a1 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(&a2[v29], 1, v30))
      {
        goto LABEL_63;
      }

      v66 = swift_getEnumCaseMultiPayload();
      if (v66 <= 3)
      {
        if (v66 == 2 || v66 == 3)
        {
          goto LABEL_119;
        }
      }

      else if (v66 == 4 || v66 == 5 || v66 == 6)
      {
LABEL_119:
        v67 = sub_21DBF563C();
        (*(*(v67 - 8) + 32))(&a1[v29], &a2[v29], v67);
        swift_storeEnumTagMultiPayload();
LABEL_184:
        (*(v31 + 56))(&a1[v29], 0, 1, v30);
        goto LABEL_185;
      }

LABEL_183:
      memcpy(&a1[v29], &a2[v29], *(v31 + 64));
      goto LABEL_184;
    }

    *a1 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(&a2[v29], 1, v30))
    {
      v49 = swift_getEnumCaseMultiPayload();
      if (v49 <= 3)
      {
        if (v49 == 2 || v49 == 3)
        {
          goto LABEL_119;
        }
      }

      else if (v49 == 4 || v49 == 5 || v49 == 6)
      {
        goto LABEL_119;
      }

      goto LABEL_183;
    }

LABEL_63:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v29], &a2[v29], *(*(v39 - 8) + 64));
    goto LABEL_185;
  }

  if (!v16)
  {
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v37 = swift_getEnumCaseMultiPayload();
    if (v37 <= 3)
    {
      if (v37 == 2 || v37 == 3)
      {
        goto LABEL_23;
      }
    }

    else if (v37 == 4 || v37 == 5 || v37 == 6)
    {
      goto LABEL_23;
    }

    goto LABEL_134;
  }

  if (v16 == 1)
  {
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_23;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
LABEL_23:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      swift_storeEnumTagMultiPayload();
LABEL_135:
      v75 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v76 = v75[5];
      v77 = &a1[v76];
      v78 = &a2[v76];
      v79 = v78[3];
      v77[2] = v78[2];
      v77[3] = v79;
      v80 = v78[1];
      *v77 = *v78;
      v77[1] = v80;
      *(v77 + 106) = *(v78 + 106);
      v81 = v78[6];
      v77[5] = v78[5];
      v77[6] = v81;
      v77[4] = v78[4];
      a1[v75[6]] = a2[v75[6]];
      a1[v75[7]] = a2[v75[7]];
      a1[v75[8]] = a2[v75[8]];
      a1[v75[9]] = a2[v75[9]];
      a1[v75[10]] = a2[v75[10]];
      *&a1[v75[11]] = *&a2[v75[11]];
      goto LABEL_185;
    }

LABEL_134:
    memcpy(a1, a2, *(*(v17 - 8) + 64));
    goto LABEL_135;
  }

LABEL_69:
  memcpy(a1, a2, *(v8 + 64));
LABEL_186:
  (*(v8 + 56))(a1, 0, 1, v7);
LABEL_187:
  swift_storeEnumTagMultiPayload();
  v83 = *(a3 + 20);
  v84 = &a1[v83];
  v85 = &a2[v83];
  v86 = swift_getEnumCaseMultiPayload();
  if (v86 > 3)
  {
    if (v86 > 6)
    {
      if (v86 == 7)
      {
        v100 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v101 = *(v100 - 8);
        if ((*(v101 + 48))(v85, 1, v100))
        {
          v102 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(v84, v85, *(*(v102 - 8) + 64));
        }

        else
        {
          v105 = sub_21DBF563C();
          (*(*(v105 - 8) + 32))(v84, v85, v105);
          v84[*(v100 + 20)] = v85[*(v100 + 20)];
          (*(v101 + 56))(v84, 0, 1, v100);
        }

        v106 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&v84[*(v106 + 20)] = *&v85[*(v106 + 20)];
        goto LABEL_273;
      }

      if (v86 != 8)
      {
        goto LABEL_218;
      }

      *v84 = *v85;
      v96 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v97 = sub_21DBF8D7C();
      (*(*(v97 - 8) + 32))(&v84[v96], &v85[v96], v97);
LABEL_273:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (v86 != 4)
    {
      if (v86 == 6)
      {
        v90 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v91 = *(v90 - 8);
        if ((*(v91 + 48))(v85, 1, v90))
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(v84, v85, *(*(v92 - 8) + 64));
        }

        else
        {
          *v84 = *v85;
          v107 = *(v90 + 20);
          v108 = sub_21DBF6C1C();
          (*(*(v108 - 8) + 32))(&v84[v107], &v85[v107], v108);
          (*(v91 + 56))(v84, 0, 1, v90);
        }

        v109 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v110 = &v84[v109];
        v111 = &v85[v109];
        *v110 = *v111;
        *(v110 + 2) = *(v111 + 2);
        goto LABEL_273;
      }

      goto LABEL_218;
    }

    *v84 = *v85;
    v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v95 = *(v94 - 8);
    if (!(*(v95 + 48))(&v85[v93], 1, v94))
    {
      v103 = swift_getEnumCaseMultiPayload();
      if (v103 <= 3)
      {
        if (v103 == 2 || v103 == 3)
        {
          goto LABEL_243;
        }
      }

      else if (v103 == 4 || v103 == 5 || v103 == 6)
      {
        goto LABEL_243;
      }

      goto LABEL_271;
    }

    goto LABEL_215;
  }

  if (v86 > 1)
  {
    if (v86 != 2)
    {
      *v84 = *v85;
      v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v95 = *(v94 - 8);
      if ((*(v95 + 48))(&v85[v93], 1, v94))
      {
        goto LABEL_215;
      }

      v112 = swift_getEnumCaseMultiPayload();
      if (v112 <= 3)
      {
        if (v112 == 2 || v112 == 3)
        {
          goto LABEL_243;
        }
      }

      else if (v112 == 4 || v112 == 5 || v112 == 6)
      {
LABEL_243:
        v113 = sub_21DBF563C();
        (*(*(v113 - 8) + 32))(&v84[v93], &v85[v93], v113);
        swift_storeEnumTagMultiPayload();
LABEL_272:
        (*(v95 + 56))(&v84[v93], 0, 1, v94);
        goto LABEL_273;
      }

LABEL_271:
      memcpy(&v84[v93], &v85[v93], *(v95 + 64));
      goto LABEL_272;
    }

    *v84 = *v85;
    v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v95 = *(v94 - 8);
    if (!(*(v95 + 48))(&v85[v93], 1, v94))
    {
      v104 = swift_getEnumCaseMultiPayload();
      if (v104 <= 3)
      {
        if (v104 == 2 || v104 == 3)
        {
          goto LABEL_243;
        }
      }

      else if (v104 == 4 || v104 == 5 || v104 == 6)
      {
        goto LABEL_243;
      }

      goto LABEL_271;
    }

LABEL_215:
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v84[v93], &v85[v93], *(*(v99 - 8) + 64));
    goto LABEL_273;
  }

  if (!v86)
  {
    v87 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v98 = swift_getEnumCaseMultiPayload();
    if (v98 <= 3)
    {
      if (v98 == 2 || v98 == 3)
      {
        goto LABEL_195;
      }
    }

    else if (v98 == 4 || v98 == 5 || v98 == 6)
    {
      goto LABEL_195;
    }

    goto LABEL_250;
  }

  if (v86 == 1)
  {
    v87 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v88 = swift_getEnumCaseMultiPayload();
    if (v88 <= 3)
    {
      if (v88 == 2 || v88 == 3)
      {
        goto LABEL_195;
      }
    }

    else if (v88 == 4 || v88 == 5 || v88 == 6)
    {
LABEL_195:
      v89 = sub_21DBF563C();
      (*(*(v89 - 8) + 32))(v84, v85, v89);
      swift_storeEnumTagMultiPayload();
LABEL_251:
      v114 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v115 = v114[5];
      v116 = &v84[v115];
      v117 = &v85[v115];
      v118 = v117[3];
      v116[2] = v117[2];
      v116[3] = v118;
      v119 = v117[1];
      *v116 = *v117;
      v116[1] = v119;
      *(v116 + 106) = *(v117 + 106);
      v120 = v117[6];
      v116[5] = v117[5];
      v116[6] = v120;
      v116[4] = v117[4];
      v84[v114[6]] = v85[v114[6]];
      v84[v114[7]] = v85[v114[7]];
      v84[v114[8]] = v85[v114[8]];
      v84[v114[9]] = v85[v114[9]];
      v84[v114[10]] = v85[v114[10]];
      *&v84[v114[11]] = *&v85[v114[11]];
      goto LABEL_273;
    }

LABEL_250:
    memcpy(v84, v85, *(*(v87 - 8) + 64));
    goto LABEL_251;
  }

LABEL_218:
  memcpy(v84, v85, *(v8 + 64));
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListUncommittedSection(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5A3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = *(v7 - 8);
    v9 = (*(v8 + 48))(a2, 1, v7);
    if (EnumCaseMultiPayload == 1)
    {
      if (v9)
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_183:
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *&a1[*(v82 + 48)] = *&a2[*(v82 + 48)];
        goto LABEL_188;
      }

      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 3)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v40 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v41 = *(v40 - 8);
            if ((*(v41 + 48))(a2, 1, v40))
            {
              v42 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v42 - 8) + 64));
            }

            else
            {
              v50 = sub_21DBF563C();
              (*(*(v50 - 8) + 32))(a1, a2, v50);
              a1[*(v40 + 20)] = a2[*(v40 + 20)];
              (*(v41 + 56))(a1, 0, 1, v40);
            }

            v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v51 + 20)] = *&a2[*(v51 + 20)];
            goto LABEL_181;
          }

          if (v12 != 8)
          {
            goto LABEL_69;
          }

          *a1 = *a2;
          v32 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v33 = sub_21DBF8D7C();
          (*(*(v33 - 8) + 32))(&a1[v32], &a2[v32], v33);
LABEL_181:
          swift_storeEnumTagMultiPayload();
          goto LABEL_182;
        }

        if (v12 != 4)
        {
          if (v12 == 6)
          {
            v20 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v21 = *(v20 - 8);
            if ((*(v21 + 48))(a2, 1, v20))
            {
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v22 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v54 = *(v20 + 20);
              v55 = sub_21DBF6C1C();
              (*(*(v55 - 8) + 32))(&a1[v54], &a2[v54], v55);
              (*(v21 + 56))(a1, 0, 1, v20);
            }

            v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v57 = &a1[v56];
            v58 = &a2[v56];
            *v57 = *v58;
            *(v57 + 2) = *(v58 + 2);
            goto LABEL_181;
          }

          goto LABEL_69;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        if (!(*(v28 + 48))(&a2[v26], 1, v27))
        {
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 <= 3)
          {
            if (v46 == 2 || v46 == 3)
            {
              goto LABEL_115;
            }
          }

          else if (v46 == 4 || v46 == 5 || v46 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_179;
        }
      }

      else
      {
        if (v12 <= 1)
        {
          if (!v12)
          {
            v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v36 = swift_getEnumCaseMultiPayload();
            if (v36 <= 3)
            {
              if (v36 == 2 || v36 == 3)
              {
                goto LABEL_15;
              }
            }

            else if (v36 == 4 || v36 == 5 || v36 == 6)
            {
              goto LABEL_15;
            }

            goto LABEL_133;
          }

          if (v12 == 1)
          {
            v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v14 = swift_getEnumCaseMultiPayload();
            if (v14 <= 3)
            {
              if (v14 == 2 || v14 == 3)
              {
                goto LABEL_15;
              }
            }

            else if (v14 == 4 || v14 == 5 || v14 == 6)
            {
LABEL_15:
              v15 = sub_21DBF563C();
              (*(*(v15 - 8) + 32))(a1, a2, v15);
              swift_storeEnumTagMultiPayload();
LABEL_134:
              v68 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v69 = v68[5];
              v70 = &a1[v69];
              v71 = &a2[v69];
              v72 = v71[3];
              v70[2] = v71[2];
              v70[3] = v72;
              v73 = v71[1];
              *v70 = *v71;
              v70[1] = v73;
              *(v70 + 106) = *(v71 + 106);
              v74 = v71[6];
              v70[5] = v71[5];
              v70[6] = v74;
              v70[4] = v71[4];
              a1[v68[6]] = a2[v68[6]];
              a1[v68[7]] = a2[v68[7]];
              a1[v68[8]] = a2[v68[8]];
              a1[v68[9]] = a2[v68[9]];
              a1[v68[10]] = a2[v68[10]];
              *&a1[v68[11]] = *&a2[v68[11]];
              goto LABEL_181;
            }

LABEL_133:
            memcpy(a1, a2, *(*(v13 - 8) + 64));
            goto LABEL_134;
          }

LABEL_69:
          memcpy(a1, a2, *(v8 + 64));
LABEL_182:
          (*(v8 + 56))(a1, 0, 1, v7);
          goto LABEL_183;
        }

        if (v12 != 2)
        {
          *a1 = *a2;
          v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v28 = *(v27 - 8);
          if ((*(v28 + 48))(&a2[v26], 1, v27))
          {
            goto LABEL_62;
          }

          v64 = swift_getEnumCaseMultiPayload();
          if (v64 <= 3)
          {
            if (v64 == 2 || v64 == 3)
            {
              goto LABEL_115;
            }
          }

          else if (v64 == 4 || v64 == 5 || v64 == 6)
          {
LABEL_115:
            v65 = sub_21DBF563C();
            (*(*(v65 - 8) + 32))(&a1[v26], &a2[v26], v65);
            swift_storeEnumTagMultiPayload();
LABEL_180:
            (*(v28 + 56))(&a1[v26], 0, 1, v27);
            goto LABEL_181;
          }

LABEL_179:
          memcpy(&a1[v26], &a2[v26], *(v28 + 64));
          goto LABEL_180;
        }

        *a1 = *a2;
        v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v28 = *(v27 - 8);
        if (!(*(v28 + 48))(&a2[v26], 1, v27))
        {
          v48 = swift_getEnumCaseMultiPayload();
          if (v48 <= 3)
          {
            if (v48 == 2 || v48 == 3)
            {
              goto LABEL_115;
            }
          }

          else if (v48 == 4 || v48 == 5 || v48 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_179;
        }
      }

LABEL_62:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v26], &a2[v26], *(*(v38 - 8) + 64));
      goto LABEL_181;
    }

    if (v9)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
      goto LABEL_188;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 3)
    {
      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(a2, 1, v43))
          {
            v45 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v45 - 8) + 64));
          }

          else
          {
            v52 = sub_21DBF563C();
            (*(*(v52 - 8) + 32))(a1, a2, v52);
            a1[*(v43 + 20)] = a2[*(v43 + 20)];
            (*(v44 + 56))(a1, 0, 1, v43);
          }

          v53 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v53 + 20)] = *&a2[*(v53 + 20)];
          goto LABEL_186;
        }

        if (v16 != 8)
        {
          goto LABEL_70;
        }

        *a1 = *a2;
        v34 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v35 = sub_21DBF8D7C();
        (*(*(v35 - 8) + 32))(&a1[v34], &a2[v34], v35);
LABEL_186:
        swift_storeEnumTagMultiPayload();
        goto LABEL_187;
      }

      if (v16 != 4)
      {
        if (v16 == 6)
        {
          v23 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(a2, 1, v23))
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v25 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v59 = *(v23 + 20);
            v60 = sub_21DBF6C1C();
            (*(*(v60 - 8) + 32))(&a1[v59], &a2[v59], v60);
            (*(v24 + 56))(a1, 0, 1, v23);
          }

          v61 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v62 = &a1[v61];
          v63 = &a2[v61];
          *v62 = *v63;
          *(v62 + 2) = *(v63 + 2);
          goto LABEL_186;
        }

        goto LABEL_70;
      }

      *a1 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(&a2[v29], 1, v30))
      {
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 3)
        {
          if (v47 == 2 || v47 == 3)
          {
            goto LABEL_120;
          }
        }

        else if (v47 == 4 || v47 == 5 || v47 == 6)
        {
          goto LABEL_120;
        }

        goto LABEL_184;
      }
    }

    else
    {
      if (v16 <= 1)
      {
        if (!v16)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v37 = swift_getEnumCaseMultiPayload();
          if (v37 <= 3)
          {
            if (v37 == 2 || v37 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v37 == 4 || v37 == 5 || v37 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_135;
        }

        if (v16 == 1)
        {
          v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v18 = swift_getEnumCaseMultiPayload();
          if (v18 <= 3)
          {
            if (v18 == 2 || v18 == 3)
            {
              goto LABEL_24;
            }
          }

          else if (v18 == 4 || v18 == 5 || v18 == 6)
          {
LABEL_24:
            v19 = sub_21DBF563C();
            (*(*(v19 - 8) + 32))(a1, a2, v19);
            swift_storeEnumTagMultiPayload();
LABEL_136:
            v75 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v76 = v75[5];
            v77 = &a1[v76];
            v78 = &a2[v76];
            v79 = v78[3];
            v77[2] = v78[2];
            v77[3] = v79;
            v80 = v78[1];
            *v77 = *v78;
            v77[1] = v80;
            *(v77 + 106) = *(v78 + 106);
            v81 = v78[6];
            v77[5] = v78[5];
            v77[6] = v81;
            v77[4] = v78[4];
            a1[v75[6]] = a2[v75[6]];
            a1[v75[7]] = a2[v75[7]];
            a1[v75[8]] = a2[v75[8]];
            a1[v75[9]] = a2[v75[9]];
            a1[v75[10]] = a2[v75[10]];
            *&a1[v75[11]] = *&a2[v75[11]];
            goto LABEL_186;
          }

LABEL_135:
          memcpy(a1, a2, *(*(v17 - 8) + 64));
          goto LABEL_136;
        }

LABEL_70:
        memcpy(a1, a2, *(v8 + 64));
LABEL_187:
        (*(v8 + 56))(a1, 0, 1, v7);
LABEL_188:
        swift_storeEnumTagMultiPayload();
        v83 = *(a3 + 20);
        v84 = &a1[v83];
        v85 = &a2[v83];
        sub_21D106918(&a1[v83], type metadata accessor for TTRRemindersListViewModel.Item);
        v86 = swift_getEnumCaseMultiPayload();
        if (v86 <= 3)
        {
          if (v86 <= 1)
          {
            if (!v86)
            {
              v87 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v98 = swift_getEnumCaseMultiPayload();
              if (v98 <= 3)
              {
                if (v98 == 2 || v98 == 3)
                {
                  goto LABEL_196;
                }
              }

              else if (v98 == 4 || v98 == 5 || v98 == 6)
              {
                goto LABEL_196;
              }

              goto LABEL_251;
            }

            if (v86 == 1)
            {
              v87 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v88 = swift_getEnumCaseMultiPayload();
              if (v88 <= 3)
              {
                if (v88 == 2 || v88 == 3)
                {
                  goto LABEL_196;
                }
              }

              else if (v88 == 4 || v88 == 5 || v88 == 6)
              {
LABEL_196:
                v89 = sub_21DBF563C();
                (*(*(v89 - 8) + 32))(v84, v85, v89);
                swift_storeEnumTagMultiPayload();
LABEL_252:
                v114 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
                v115 = v114[5];
                v116 = (v84 + v115);
                v117 = (v85 + v115);
                v118 = v117[3];
                v116[2] = v117[2];
                v116[3] = v118;
                v119 = v117[1];
                *v116 = *v117;
                v116[1] = v119;
                *(v116 + 106) = *(v117 + 106);
                v120 = v117[6];
                v116[5] = v117[5];
                v116[6] = v120;
                v116[4] = v117[4];
                *(v84 + v114[6]) = *(v85 + v114[6]);
                *(v84 + v114[7]) = *(v85 + v114[7]);
                *(v84 + v114[8]) = *(v85 + v114[8]);
                *(v84 + v114[9]) = *(v85 + v114[9]);
                *(v84 + v114[10]) = *(v85 + v114[10]);
                *(v84 + v114[11]) = *(v85 + v114[11]);
                goto LABEL_274;
              }

LABEL_251:
              memcpy(v84, v85, *(*(v87 - 8) + 64));
              goto LABEL_252;
            }

            goto LABEL_219;
          }

          if (v86 == 2)
          {
            *v84 = *v85;
            v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v85 + v93, 1, v94))
            {
LABEL_216:
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
              memcpy(v84 + v93, v85 + v93, *(*(v99 - 8) + 64));
              goto LABEL_274;
            }

            v104 = swift_getEnumCaseMultiPayload();
            if (v104 <= 3)
            {
              if (v104 == 2 || v104 == 3)
              {
                goto LABEL_244;
              }
            }

            else if (v104 == 4 || v104 == 5 || v104 == 6)
            {
              goto LABEL_244;
            }
          }

          else
          {
            *v84 = *v85;
            v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v85 + v93, 1, v94))
            {
              goto LABEL_216;
            }

            v112 = swift_getEnumCaseMultiPayload();
            if (v112 <= 3)
            {
              if (v112 == 2 || v112 == 3)
              {
                goto LABEL_244;
              }
            }

            else if (v112 == 4 || v112 == 5 || v112 == 6)
            {
LABEL_244:
              v113 = sub_21DBF563C();
              (*(*(v113 - 8) + 32))(v84 + v93, v85 + v93, v113);
              swift_storeEnumTagMultiPayload();
LABEL_273:
              (*(v95 + 56))(v84 + v93, 0, 1, v94);
              goto LABEL_274;
            }
          }

LABEL_272:
          memcpy(v84 + v93, v85 + v93, *(v95 + 64));
          goto LABEL_273;
        }

        if (v86 > 6)
        {
          if (v86 == 7)
          {
            v100 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v101 = *(v100 - 8);
            if ((*(v101 + 48))(v85, 1, v100))
            {
              v102 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v84, v85, *(*(v102 - 8) + 64));
            }

            else
            {
              v105 = sub_21DBF563C();
              (*(*(v105 - 8) + 32))(v84, v85, v105);
              *(v84 + *(v100 + 20)) = *(v85 + *(v100 + 20));
              (*(v101 + 56))(v84, 0, 1, v100);
            }

            v106 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v84 + *(v106 + 20)) = *(v85 + *(v106 + 20));
            goto LABEL_274;
          }

          if (v86 == 8)
          {
            *v84 = *v85;
            v96 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v97 = sub_21DBF8D7C();
            (*(*(v97 - 8) + 32))(v84 + v96, v85 + v96, v97);
LABEL_274:
            swift_storeEnumTagMultiPayload();
            return a1;
          }
        }

        else
        {
          if (v86 == 4)
          {
            *v84 = *v85;
            v93 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v94 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v95 = *(v94 - 8);
            if ((*(v95 + 48))(v85 + v93, 1, v94))
            {
              goto LABEL_216;
            }

            v103 = swift_getEnumCaseMultiPayload();
            if (v103 <= 3)
            {
              if (v103 == 2 || v103 == 3)
              {
                goto LABEL_244;
              }
            }

            else if (v103 == 4 || v103 == 5 || v103 == 6)
            {
              goto LABEL_244;
            }

            goto LABEL_272;
          }

          if (v86 == 6)
          {
            v90 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v91 = *(v90 - 8);
            if ((*(v91 + 48))(v85, 1, v90))
            {
              v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v84, v85, *(*(v92 - 8) + 64));
            }

            else
            {
              *v84 = *v85;
              v107 = *(v90 + 20);
              v108 = sub_21DBF6C1C();
              (*(*(v108 - 8) + 32))(v84 + v107, v85 + v107, v108);
              (*(v91 + 56))(v84, 0, 1, v90);
            }

            v109 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v110 = v84 + v109;
            v111 = v85 + v109;
            *v110 = *v111;
            *(v110 + 2) = *(v111 + 2);
            goto LABEL_274;
          }
        }

LABEL_219:
        memcpy(v84, v85, *(v8 + 64));
        return a1;
      }

      if (v16 != 2)
      {
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        if ((*(v31 + 48))(&a2[v29], 1, v30))
        {
          goto LABEL_64;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 <= 3)
        {
          if (v66 == 2 || v66 == 3)
          {
            goto LABEL_120;
          }
        }

        else if (v66 == 4 || v66 == 5 || v66 == 6)
        {
LABEL_120:
          v67 = sub_21DBF563C();
          (*(*(v67 - 8) + 32))(&a1[v29], &a2[v29], v67);
          swift_storeEnumTagMultiPayload();
LABEL_185:
          (*(v31 + 56))(&a1[v29], 0, 1, v30);
          goto LABEL_186;
        }

LABEL_184:
        memcpy(&a1[v29], &a2[v29], *(v31 + 64));
        goto LABEL_185;
      }

      *a1 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = *(v30 - 8);
      if (!(*(v31 + 48))(&a2[v29], 1, v30))
      {
        v49 = swift_getEnumCaseMultiPayload();
        if (v49 <= 3)
        {
          if (v49 == 2 || v49 == 3)
          {
            goto LABEL_120;
          }
        }

        else if (v49 == 4 || v49 == 5 || v49 == 6)
        {
          goto LABEL_120;
        }

        goto LABEL_184;
      }
    }

LABEL_64:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v29], &a2[v29], *(*(v39 - 8) + 64));
    goto LABEL_186;
  }

  return a1;
}

void sub_21D2DB8F0()
{
  sub_21D2B78E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersListSectionCreationLocation(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 != 6)
          {
            if (v8 != 7)
            {
              if (v8 == 8)
              {
                goto LABEL_15;
              }

              goto LABEL_68;
            }

            v50 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v51 = *(v50 - 8);
            if ((*(v51 + 48))(a2, 1, v50))
            {
LABEL_67:
              v52 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v52 - 8) + 64));
LABEL_124:
              v71 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v71 + 20)) = *(a2 + *(v71 + 20));
              goto LABEL_251;
            }

LABEL_123:
            v70 = sub_21DBF563C();
            (*(*(v70 - 8) + 16))(a1, a2, v70);
            *(a1 + *(v50 + 20)) = *(a2 + *(v50 + 20));
            (*(v51 + 56))(a1, 0, 1, v50);
            goto LABEL_124;
          }

          v38 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v39 = *(v38 - 8);
          if ((*(v39 + 48))(a2, 1, v38))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v40 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v57 = *(v38 + 20);
            v58 = sub_21DBF6C1C();
            v166 = *(*(v58 - 8) + 16);
            sub_21DBF8E0C();
            v166(a1 + v57, a2 + v57, v58);
            (*(v39 + 56))(a1, 0, 1, v38);
          }

          v59 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v60 = a1 + v59;
          v61 = a2 + v59;
          v62 = *(v61 + 1);
          if (!v62)
          {
            *v60 = *v61;
            *(v60 + 2) = *(v61 + 2);
            goto LABEL_251;
          }

          goto LABEL_110;
        }

        if (v8 != 4)
        {
          goto LABEL_41;
        }

        v44 = *a2;
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v45 = *(v19 + 48);
        v46 = v44;
        if (v45(a2 + v17, 1, v18))
        {
          goto LABEL_55;
        }

        v68 = swift_getEnumCaseMultiPayload();
        if (v68 > 4)
        {
          if (v68 <= 7)
          {
            if (v68 == 5 || v68 == 6)
            {
              goto LABEL_223;
            }

            goto LABEL_249;
          }

          if (v68 != 8 && v68 != 9)
          {
            goto LABEL_249;
          }

          goto LABEL_227;
        }

        if (v68 <= 2)
        {
          if (v68 != 1)
          {
            if (v68 == 2)
            {
              goto LABEL_223;
            }

LABEL_249:
            memcpy(a1 + v17, a2 + v17, *(v19 + 64));
            goto LABEL_250;
          }

          goto LABEL_227;
        }

LABEL_223:
        v154 = sub_21DBF563C();
        (*(*(v154 - 8) + 16))(a1 + v17, a2 + v17, v154);
        swift_storeEnumTagMultiPayload();
LABEL_250:
        (*(v19 + 56))(a1 + v17, 0, 1, v18);
        goto LABEL_251;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v31 = *a2;
          *a1 = *a2;
          v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = *(v18 - 8);
          v32 = *(v19 + 48);
          v33 = v31;
          if (v32(a2 + v17, 1, v18))
          {
            goto LABEL_55;
          }

          v55 = swift_getEnumCaseMultiPayload();
          if (v55 > 4)
          {
            if (v55 <= 7)
            {
              if (v55 == 5 || v55 == 6)
              {
                goto LABEL_223;
              }

              goto LABEL_249;
            }

            if (v55 != 8 && v55 != 9)
            {
              goto LABEL_249;
            }

            goto LABEL_227;
          }

          if (v55 > 2)
          {
            goto LABEL_223;
          }

          if (v55 == 1)
          {
            goto LABEL_227;
          }

          if (v55 != 2)
          {
            goto LABEL_249;
          }
        }

        else
        {
          v16 = *a2;
          *a1 = *a2;
          v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = *(v18 - 8);
          v20 = *(v19 + 48);
          v21 = v16;
          if (v20(a2 + v17, 1, v18))
          {
            goto LABEL_55;
          }

          v53 = swift_getEnumCaseMultiPayload();
          if (v53 > 4)
          {
            if (v53 <= 7)
            {
              if (v53 == 5 || v53 == 6)
              {
                goto LABEL_223;
              }

              goto LABEL_249;
            }

            if (v53 != 8 && v53 != 9)
            {
              goto LABEL_249;
            }

            goto LABEL_227;
          }

          if (v53 > 2)
          {
            goto LABEL_223;
          }

          if (v53 == 1)
          {
            goto LABEL_227;
          }

          if (v53 != 2)
          {
            goto LABEL_249;
          }
        }

        goto LABEL_223;
      }

      if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_68;
        }

        v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v13 = swift_getEnumCaseMultiPayload();
        if (v13 <= 4)
        {
          if (v13 > 2)
          {
LABEL_125:
            v72 = sub_21DBF563C();
            (*(*(v72 - 8) + 16))(a1, a2, v72);
            swift_storeEnumTagMultiPayload();
            goto LABEL_178;
          }

          if (v13 != 1)
          {
            if (v13 == 2)
            {
              goto LABEL_125;
            }

            goto LABEL_177;
          }

LABEL_129:
          v74 = *a2;
          *a1 = *a2;
          v75 = v74;
          swift_storeEnumTagMultiPayload();
          goto LABEL_178;
        }

        if (v13 > 7)
        {
          if (v13 == 8 || v13 == 9)
          {
            goto LABEL_129;
          }
        }

        else if (v13 == 5 || v13 == 6)
        {
          goto LABEL_125;
        }

LABEL_177:
        memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_178:
        v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v85 = v84[5];
        v86 = a1 + v85;
        v87 = a2 + v85;
        v88 = *(a2 + v85 + 8);
        if (v88)
        {
          *v86 = *v87;
          *(v86 + 1) = v88;
          v89 = *(v87 + 2);
          v90 = *(v87 + 3);
          v91 = *(v87 + 4);
          v92 = *(v87 + 5);
          v93 = *(v87 + 6);
          v158 = *(v87 + 7);
          v168 = v87[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v89, v90, v91, v92, v93, v158, v168);
          *(v86 + 2) = v89;
          *(v86 + 3) = v90;
          *(v86 + 4) = v91;
          *(v86 + 5) = v92;
          *(v86 + 6) = v93;
          *(v86 + 7) = v158;
          v86[64] = v168;
          *(v86 + 65) = *(v87 + 65);
          v94 = v87[120];
          if (v94 == 255)
          {
            *(v86 + 72) = *(v87 + 72);
            *(v86 + 88) = *(v87 + 88);
            *(v86 + 104) = *(v87 + 104);
            v86[120] = v87[120];
          }

          else
          {
            v159 = *(v87 + 10);
            v169 = *(v87 + 9);
            v95 = *(v87 + 11);
            v96 = *(v87 + 12);
            v97 = *(v87 + 13);
            v98 = *(v87 + 14);
            v99 = v94 & 1;
            sub_21D0FB960(v169, v159, v95, v96, v97, v98, v94 & 1);
            *(v86 + 9) = v169;
            *(v86 + 10) = v159;
            *(v86 + 11) = v95;
            *(v86 + 12) = v96;
            *(v86 + 13) = v97;
            *(v86 + 14) = v98;
            v86[120] = v99;
          }

          v86[121] = v87[121];
          goto LABEL_191;
        }

LABEL_196:
        v129 = *(v87 + 5);
        *(v86 + 4) = *(v87 + 4);
        *(v86 + 5) = v129;
        *(v86 + 6) = *(v87 + 6);
        *(v86 + 106) = *(v87 + 106);
        v130 = *(v87 + 1);
        *v86 = *v87;
        *(v86 + 1) = v130;
        v131 = *(v87 + 3);
        *(v86 + 2) = *(v87 + 2);
        *(v86 + 3) = v131;
LABEL_191:
        *(a1 + v84[6]) = *(a2 + v84[6]);
        *(a1 + v84[7]) = *(a2 + v84[7]);
        *(a1 + v84[8]) = *(a2 + v84[8]);
        *(a1 + v84[9]) = *(a2 + v84[9]);
        *(a1 + v84[10]) = *(a2 + v84[10]);
        v113 = v84[11];
        v114 = *(a2 + v113);
        *(a1 + v113) = v114;
        v115 = v114;
        goto LABEL_251;
      }

      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = swift_getEnumCaseMultiPayload();
      if (v28 <= 4)
      {
        if (v28 > 2)
        {
LABEL_133:
          v78 = sub_21DBF563C();
          (*(*(v78 - 8) + 16))(a1, a2, v78);
          swift_storeEnumTagMultiPayload();
          goto LABEL_193;
        }

        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_133;
          }

          goto LABEL_192;
        }

LABEL_137:
        v80 = *a2;
        *a1 = *a2;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
        goto LABEL_193;
      }

      if (v28 > 7)
      {
        if (v28 == 8 || v28 == 9)
        {
          goto LABEL_137;
        }
      }

      else if (v28 == 5 || v28 == 6)
      {
        goto LABEL_133;
      }

LABEL_192:
      memcpy(a1, a2, *(*(v27 - 8) + 64));
LABEL_193:
      v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v116 = v84[5];
      v86 = a1 + v116;
      v87 = a2 + v116;
      v117 = *(a2 + v116 + 8);
      if (v117)
      {
        *v86 = *v87;
        *(v86 + 1) = v117;
        v118 = *(v87 + 2);
        v119 = *(v87 + 3);
        v120 = *(v87 + 4);
        v121 = *(v87 + 5);
        v122 = *(v87 + 6);
        v162 = *(v87 + 7);
        v172 = v87[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v118, v119, v120, v121, v122, v162, v172);
        *(v86 + 2) = v118;
        *(v86 + 3) = v119;
        *(v86 + 4) = v120;
        *(v86 + 5) = v121;
        *(v86 + 6) = v122;
        *(v86 + 7) = v162;
        v86[64] = v172;
        *(v86 + 65) = *(v87 + 65);
        v123 = v87[120];
        if (v123 == 255)
        {
          *(v86 + 72) = *(v87 + 72);
          *(v86 + 88) = *(v87 + 88);
          *(v86 + 104) = *(v87 + 104);
          v86[120] = v87[120];
        }

        else
        {
          v163 = *(v87 + 10);
          v173 = *(v87 + 9);
          v124 = *(v87 + 11);
          v125 = *(v87 + 12);
          v126 = *(v87 + 13);
          v127 = *(v87 + 14);
          v128 = v123 & 1;
          sub_21D0FB960(v173, v163, v124, v125, v126, v127, v123 & 1);
          *(v86 + 9) = v173;
          *(v86 + 10) = v163;
          *(v86 + 11) = v124;
          *(v86 + 12) = v125;
          *(v86 + 13) = v126;
          *(v86 + 14) = v127;
          v86[120] = v128;
        }

        v86[121] = v87[121];
        goto LABEL_191;
      }

      goto LABEL_196;
    }

    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 != 6)
        {
          if (v8 != 7)
          {
            if (v8 == 8)
            {
LABEL_15:
              *a1 = *a2;
              v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v11 = sub_21DBF8D7C();
              (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
LABEL_251:
              swift_storeEnumTagMultiPayload();
              goto LABEL_252;
            }

LABEL_68:
            memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_252:
            swift_storeEnumTagMultiPayload();
            return a1;
          }

          v50 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v51 = *(v50 - 8);
          if ((*(v51 + 48))(a2, 1, v50))
          {
            goto LABEL_67;
          }

          goto LABEL_123;
        }

        v41 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(a2, 1, v41))
        {
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v43 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v63 = *(v41 + 20);
          v64 = sub_21DBF6C1C();
          v167 = *(*(v64 - 8) + 16);
          sub_21DBF8E0C();
          v167(a1 + v63, a2 + v63, v64);
          (*(v42 + 56))(a1, 0, 1, v41);
        }

        v65 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v60 = a1 + v65;
        v61 = a2 + v65;
        v62 = *(v61 + 1);
        if (!v62)
        {
          *v60 = *v61;
          *(v60 + 2) = *(v61 + 2);
          goto LABEL_251;
        }

LABEL_110:
        *v60 = *v61;
        *(v60 + 1) = v62;
        v66 = *(v61 + 2);
        *(v60 + 2) = v66;
        sub_21DBF8E0C();
        v67 = v66;
        goto LABEL_251;
      }

      if (v8 != 4)
      {
LABEL_41:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v25 = a2[2];
        a1[2] = v25;
        v26 = v25;
        goto LABEL_251;
      }

      v47 = *a2;
      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = *(v18 - 8);
      v48 = *(v19 + 48);
      v49 = v47;
      if (v48(a2 + v17, 1, v18))
      {
LABEL_55:
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v17, a2 + v17, *(*(v37 - 8) + 64));
        goto LABEL_251;
      }

      v69 = swift_getEnumCaseMultiPayload();
      if (v69 > 4)
      {
        if (v69 <= 7)
        {
          if (v69 == 5 || v69 == 6)
          {
            goto LABEL_223;
          }

          goto LABEL_249;
        }

        if (v69 != 8 && v69 != 9)
        {
          goto LABEL_249;
        }
      }

      else
      {
        if (v69 > 2)
        {
          goto LABEL_223;
        }

        if (v69 != 1)
        {
          if (v69 == 2)
          {
            goto LABEL_223;
          }

          goto LABEL_249;
        }
      }

LABEL_227:
      v155 = *(a2 + v17);
      *(a1 + v17) = v155;
      v156 = v155;
      swift_storeEnumTagMultiPayload();
      goto LABEL_250;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v34 = *a2;
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v35 = *(v19 + 48);
        v36 = v34;
        if (v35(a2 + v17, 1, v18))
        {
          goto LABEL_55;
        }

        v56 = swift_getEnumCaseMultiPayload();
        if (v56 > 4)
        {
          if (v56 <= 7)
          {
            if (v56 == 5 || v56 == 6)
            {
              goto LABEL_223;
            }

            goto LABEL_249;
          }

          if (v56 != 8 && v56 != 9)
          {
            goto LABEL_249;
          }

          goto LABEL_227;
        }

        if (v56 > 2)
        {
          goto LABEL_223;
        }

        if (v56 == 1)
        {
          goto LABEL_227;
        }

        if (v56 != 2)
        {
          goto LABEL_249;
        }
      }

      else
      {
        v22 = *a2;
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = *(v18 - 8);
        v23 = *(v19 + 48);
        v24 = v22;
        if (v23(a2 + v17, 1, v18))
        {
          goto LABEL_55;
        }

        v54 = swift_getEnumCaseMultiPayload();
        if (v54 > 4)
        {
          if (v54 <= 7)
          {
            if (v54 == 5 || v54 == 6)
            {
              goto LABEL_223;
            }

            goto LABEL_249;
          }

          if (v54 != 8 && v54 != 9)
          {
            goto LABEL_249;
          }

          goto LABEL_227;
        }

        if (v54 > 2)
        {
          goto LABEL_223;
        }

        if (v54 == 1)
        {
          goto LABEL_227;
        }

        if (v54 != 2)
        {
          goto LABEL_249;
        }
      }

      goto LABEL_223;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_68;
      }

      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 4)
      {
        if (v15 > 2)
        {
LABEL_126:
          v73 = sub_21DBF563C();
          (*(*(v73 - 8) + 16))(a1, a2, v73);
          swift_storeEnumTagMultiPayload();
          goto LABEL_185;
        }

        if (v15 != 1)
        {
          if (v15 == 2)
          {
            goto LABEL_126;
          }

          goto LABEL_184;
        }

LABEL_132:
        v76 = *a2;
        *a1 = *a2;
        v77 = v76;
        swift_storeEnumTagMultiPayload();
        goto LABEL_185;
      }

      if (v15 > 7)
      {
        if (v15 == 8 || v15 == 9)
        {
          goto LABEL_132;
        }
      }

      else if (v15 == 5 || v15 == 6)
      {
        goto LABEL_126;
      }

LABEL_184:
      memcpy(a1, a2, *(*(v14 - 8) + 64));
LABEL_185:
      v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v100 = v84[5];
      v86 = a1 + v100;
      v87 = a2 + v100;
      v101 = *(a2 + v100 + 8);
      if (v101)
      {
        *v86 = *v87;
        *(v86 + 1) = v101;
        v102 = *(v87 + 2);
        v103 = *(v87 + 3);
        v104 = *(v87 + 4);
        v105 = *(v87 + 5);
        v106 = *(v87 + 6);
        v160 = *(v87 + 7);
        v170 = v87[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v102, v103, v104, v105, v106, v160, v170);
        *(v86 + 2) = v102;
        *(v86 + 3) = v103;
        *(v86 + 4) = v104;
        *(v86 + 5) = v105;
        *(v86 + 6) = v106;
        *(v86 + 7) = v160;
        v86[64] = v170;
        *(v86 + 65) = *(v87 + 65);
        v107 = v87[120];
        if (v107 == 255)
        {
          *(v86 + 72) = *(v87 + 72);
          *(v86 + 88) = *(v87 + 88);
          *(v86 + 104) = *(v87 + 104);
          v86[120] = v87[120];
        }

        else
        {
          v161 = *(v87 + 10);
          v171 = *(v87 + 9);
          v108 = *(v87 + 11);
          v109 = *(v87 + 12);
          v110 = *(v87 + 13);
          v111 = *(v87 + 14);
          v112 = v107 & 1;
          sub_21D0FB960(v171, v161, v108, v109, v110, v111, v107 & 1);
          *(v86 + 9) = v171;
          *(v86 + 10) = v161;
          *(v86 + 11) = v108;
          *(v86 + 12) = v109;
          *(v86 + 13) = v110;
          *(v86 + 14) = v111;
          v86[120] = v112;
        }

        v86[121] = v87[121];
        goto LABEL_191;
      }

      goto LABEL_196;
    }

    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 > 4)
    {
      if (v30 <= 7)
      {
        if (v30 == 5 || v30 == 6)
        {
          goto LABEL_134;
        }

        goto LABEL_199;
      }

      if (v30 != 8 && v30 != 9)
      {
        goto LABEL_199;
      }
    }

    else
    {
      if (v30 > 2)
      {
LABEL_134:
        v79 = sub_21DBF563C();
        (*(*(v79 - 8) + 16))(a1, a2, v79);
        swift_storeEnumTagMultiPayload();
LABEL_200:
        v132 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v133 = v132[5];
        v134 = a1 + v133;
        v135 = a2 + v133;
        v136 = *(a2 + v133 + 8);
        if (v136)
        {
          *v134 = *v135;
          *(v134 + 1) = v136;
          v137 = *(v135 + 2);
          v138 = *(v135 + 3);
          v139 = *(v135 + 4);
          v140 = *(v135 + 5);
          v141 = *(v135 + 6);
          v174 = *(v135 + 7);
          v164 = v135[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v137, v138, v139, v140, v141, v174, v164);
          *(v134 + 2) = v137;
          *(v134 + 3) = v138;
          *(v134 + 4) = v139;
          *(v134 + 5) = v140;
          *(v134 + 6) = v141;
          *(v134 + 7) = v174;
          v134[64] = v164;
          *(v134 + 65) = *(v135 + 65);
          v142 = v135[120];
          if (v142 == 255)
          {
            *(v134 + 72) = *(v135 + 72);
            *(v134 + 88) = *(v135 + 88);
            *(v134 + 104) = *(v135 + 104);
            v134[120] = v135[120];
          }

          else
          {
            v165 = *(v135 + 10);
            v175 = *(v135 + 9);
            v143 = *(v135 + 11);
            v144 = *(v135 + 12);
            v145 = *(v135 + 13);
            v146 = *(v135 + 14);
            v147 = v142 & 1;
            sub_21D0FB960(v175, v165, v143, v144, v145, v146, v142 & 1);
            *(v134 + 9) = v175;
            *(v134 + 10) = v165;
            *(v134 + 11) = v143;
            *(v134 + 12) = v144;
            *(v134 + 13) = v145;
            *(v134 + 14) = v146;
            v134[120] = v147;
          }

          v134[121] = v135[121];
        }

        else
        {
          v148 = *(v135 + 5);
          *(v134 + 4) = *(v135 + 4);
          *(v134 + 5) = v148;
          *(v134 + 6) = *(v135 + 6);
          *(v134 + 106) = *(v135 + 106);
          v149 = *(v135 + 1);
          *v134 = *v135;
          *(v134 + 1) = v149;
          v150 = *(v135 + 3);
          *(v134 + 2) = *(v135 + 2);
          *(v134 + 3) = v150;
        }

        *(a1 + v132[6]) = *(a2 + v132[6]);
        *(a1 + v132[7]) = *(a2 + v132[7]);
        *(a1 + v132[8]) = *(a2 + v132[8]);
        *(a1 + v132[9]) = *(a2 + v132[9]);
        *(a1 + v132[10]) = *(a2 + v132[10]);
        v151 = v132[11];
        v152 = *(a2 + v151);
        *(a1 + v151) = v152;
        v153 = v152;
        goto LABEL_251;
      }

      if (v30 != 1)
      {
        if (v30 == 2)
        {
          goto LABEL_134;
        }

LABEL_199:
        memcpy(a1, a2, *(*(v29 - 8) + 64));
        goto LABEL_200;
      }
    }

    v82 = *a2;
    *a1 = *a2;
    v83 = v82;
    swift_storeEnumTagMultiPayload();
    goto LABEL_200;
  }

  v9 = *a2;
  *a1 = *a2;
  a1 = (v9 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRRemindersListSectionCreationLocation(uint64_t a1)
{
  swift_getEnumCaseMultiPayload();
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload > 1)
    {
      return;
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
    }

    else
    {
      if (v7 > 2)
      {
        goto LABEL_37;
      }

      if (v7 != 1)
      {
        if (v7 != 2)
        {
LABEL_41:
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v19 = a1 + *(v18 + 20);
          if (*(v19 + 8))
          {

            sub_21D179EF0(*(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64));
            v20 = *(v19 + 120);
            if (v20 != 255)
            {
              sub_21D1078C0(*(v19 + 72), *(v19 + 80), *(v19 + 88), *(v19 + 96), *(v19 + 104), *(v19 + 112), v20 & 1);
            }
          }

          v8 = *(a1 + *(v18 + 44));
          goto LABEL_45;
        }

LABEL_37:
        v17 = sub_21DBF563C();
        (*(*(v17 - 8) + 8))(a1, v17);
        goto LABEL_41;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v8 = *(a1 + 16);
LABEL_45:

      return;
    }

LABEL_17:

    v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v10 - 8) + 48))(a1 + v9, 1, v10))
    {
      return;
    }

    v11 = swift_getEnumCaseMultiPayload();
    if (v11 > 4)
    {
      if (v11 <= 7)
      {
        if (v11 != 5 && v11 != 6)
        {
          return;
        }

        goto LABEL_49;
      }

      if (v11 != 8 && v11 != 9)
      {
        return;
      }
    }

    else
    {
      if (v11 > 2)
      {
LABEL_49:
        v4 = sub_21DBF563C();
        v5 = *(*(v4 - 8) + 8);
        v6 = a1 + v9;
LABEL_50:

        v5(v6, v4);
        return;
      }

      if (v11 != 1)
      {
        if (v11 != 2)
        {
          return;
        }

        goto LABEL_49;
      }
    }

    v8 = *(a1 + v9);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v16 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v16 - 8) + 48))(a1, 1, v16))
      {
        return;
      }

      v21 = sub_21DBF563C();
      v5 = *(*(v21 - 8) + 8);
      v4 = v21;
      v6 = a1;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        return;
      }

      v3 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v4 = sub_21DBF8D7C();
      v5 = *(*(v4 - 8) + 8);
      v6 = a1 + v3;
    }

    goto LABEL_50;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v12 - 8) + 48))(a1, 1, v12))
  {

    v13 = *(v12 + 20);
    v14 = sub_21DBF6C1C();
    (*(*(v14 - 8) + 8))(a1 + v13, v14);
  }

  v15 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v15 + 8))
  {

    v8 = *(v15 + 16);
    goto LABEL_45;
  }
}

void *initializeWithCopy for TTRRemindersListSectionCreationLocation(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (v6 > 3)
    {
      if (v6 > 5)
      {
        if (v6 != 6)
        {
          if (v6 != 7)
          {
            if (v6 == 8)
            {
              goto LABEL_13;
            }

            goto LABEL_66;
          }

          v47 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v48 = *(v47 - 8);
          if ((*(v48 + 48))(a2, 1, v47))
          {
            goto LABEL_65;
          }

          goto LABEL_121;
        }

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
          v54 = *(v35 + 20);
          v55 = sub_21DBF6C1C();
          v56 = *(*(v55 - 8) + 16);
          sub_21DBF8E0C();
          v56(a1 + v54, a2 + v54, v55);
          (*(v36 + 56))(a1, 0, 1, v35);
        }

        v57 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v58 = a1 + v57;
        v59 = a2 + v57;
        v60 = *(v59 + 1);
        if (!v60)
        {
          *v58 = *v59;
          *(v58 + 2) = *(v59 + 2);
          goto LABEL_248;
        }

LABEL_108:
        *v58 = *v59;
        *(v58 + 1) = v60;
        v65 = *(v59 + 2);
        *(v58 + 2) = v65;
        sub_21DBF8E0C();
        v66 = v65;
        goto LABEL_248;
      }

      if (v6 != 4)
      {
LABEL_39:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v22 = a2[2];
        a1[2] = v22;
        v23 = v22;
        goto LABEL_248;
      }

      v41 = *a2;
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      v42 = *(v16 + 48);
      v43 = v41;
      if (v42(a2 + v14, 1, v15))
      {
LABEL_53:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v14, a2 + v14, *(*(v34 - 8) + 64));
        goto LABEL_248;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 > 4)
      {
        if (v67 <= 7)
        {
          if (v67 == 5 || v67 == 6)
          {
            goto LABEL_220;
          }

          goto LABEL_246;
        }

        if (v67 != 8 && v67 != 9)
        {
          goto LABEL_246;
        }

        goto LABEL_224;
      }

      if (v67 <= 2)
      {
        if (v67 != 1)
        {
          if (v67 == 2)
          {
            goto LABEL_220;
          }

LABEL_246:
          memcpy(a1 + v14, a2 + v14, *(v16 + 64));
          goto LABEL_247;
        }

        goto LABEL_224;
      }

LABEL_220:
      v160 = sub_21DBF563C();
      (*(*(v160 - 8) + 16))(a1 + v14, a2 + v14, v160);
      swift_storeEnumTagMultiPayload();
LABEL_247:
      (*(v16 + 56))(a1 + v14, 0, 1, v15);
      goto LABEL_248;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v28 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v29 = *(v16 + 48);
        v30 = v28;
        if (v29(a2 + v14, 1, v15))
        {
          goto LABEL_53;
        }

        v52 = swift_getEnumCaseMultiPayload();
        if (v52 > 4)
        {
          if (v52 <= 7)
          {
            if (v52 == 5 || v52 == 6)
            {
              goto LABEL_220;
            }

            goto LABEL_246;
          }

          if (v52 != 8 && v52 != 9)
          {
            goto LABEL_246;
          }

          goto LABEL_224;
        }

        if (v52 > 2)
        {
          goto LABEL_220;
        }

        if (v52 == 1)
        {
          goto LABEL_224;
        }

        if (v52 != 2)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v13 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(a2 + v14, 1, v15))
        {
          goto LABEL_53;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 > 4)
        {
          if (v50 <= 7)
          {
            if (v50 == 5 || v50 == 6)
            {
              goto LABEL_220;
            }

            goto LABEL_246;
          }

          if (v50 != 8 && v50 != 9)
          {
            goto LABEL_246;
          }

          goto LABEL_224;
        }

        if (v50 > 2)
        {
          goto LABEL_220;
        }

        if (v50 == 1)
        {
          goto LABEL_224;
        }

        if (v50 != 2)
        {
          goto LABEL_246;
        }
      }

      goto LABEL_220;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_66;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_123:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 16))(a1, a2, v71);
          swift_storeEnumTagMultiPayload();
          goto LABEL_176;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_123;
          }

          goto LABEL_175;
        }

LABEL_127:
        v73 = *a2;
        *a1 = *a2;
        v74 = v73;
        swift_storeEnumTagMultiPayload();
        goto LABEL_176;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_127;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_123;
      }

LABEL_175:
      memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_176:
      v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v84 = v83[5];
      v85 = a1 + v84;
      v86 = a2 + v84;
      v87 = *(a2 + v84 + 8);
      if (v87)
      {
        v164 = a2;
        v168 = a1;
        *v85 = *v86;
        *(v85 + 1) = v87;
        v88 = *(v86 + 2);
        v89 = *(v86 + 3);
        v90 = *(v86 + 4);
        v91 = *(v86 + 5);
        v92 = *(v86 + 6);
        v93 = *(v86 + 7);
        v94 = v86[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v88, v89, v90, v91, v92, v93, v94);
        *(v85 + 2) = v88;
        *(v85 + 3) = v89;
        *(v85 + 4) = v90;
        *(v85 + 5) = v91;
        *(v85 + 6) = v92;
        *(v85 + 7) = v93;
        v85[64] = v94;
        *(v85 + 65) = *(v86 + 65);
        v95 = v86[120];
        if (v95 == 255)
        {
          *(v85 + 72) = *(v86 + 72);
          *(v85 + 88) = *(v86 + 88);
          *(v85 + 104) = *(v86 + 104);
          v85[120] = v86[120];
        }

        else
        {
          v97 = *(v86 + 9);
          v96 = *(v86 + 10);
          v98 = *(v86 + 11);
          v99 = *(v86 + 12);
          v100 = *(v86 + 13);
          v101 = *(v86 + 14);
          v102 = v95 & 1;
          sub_21D0FB960(v97, v96, v98, v99, v100, v101, v95 & 1);
          *(v85 + 9) = v97;
          *(v85 + 10) = v96;
          *(v85 + 11) = v98;
          *(v85 + 12) = v99;
          *(v85 + 13) = v100;
          *(v85 + 14) = v101;
          v85[120] = v102;
        }

        v85[121] = v86[121];
        a2 = v164;
        a1 = v168;
        goto LABEL_189;
      }

LABEL_194:
      v140 = *(v86 + 5);
      *(v85 + 4) = *(v86 + 4);
      *(v85 + 5) = v140;
      *(v85 + 6) = *(v86 + 6);
      *(v85 + 106) = *(v86 + 106);
      v141 = *(v86 + 1);
      *v85 = *v86;
      *(v85 + 1) = v141;
      v142 = *(v86 + 3);
      *(v85 + 2) = *(v86 + 2);
      *(v85 + 3) = v142;
LABEL_189:
      *(a1 + v83[6]) = *(a2 + v83[6]);
      *(a1 + v83[7]) = *(a2 + v83[7]);
      *(a1 + v83[8]) = *(a2 + v83[8]);
      *(a1 + v83[9]) = *(a2 + v83[9]);
      *(a1 + v83[10]) = *(a2 + v83[10]);
      v120 = v83[11];
      v121 = *(a2 + v120);
      *(a1 + v120) = v121;
      v122 = v121;
      goto LABEL_248;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_131:
        v77 = sub_21DBF563C();
        (*(*(v77 - 8) + 16))(a1, a2, v77);
        swift_storeEnumTagMultiPayload();
        goto LABEL_191;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_131;
        }

        goto LABEL_190;
      }

LABEL_135:
      v79 = *a2;
      *a1 = *a2;
      v80 = v79;
      swift_storeEnumTagMultiPayload();
      goto LABEL_191;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_135;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_131;
    }

LABEL_190:
    memcpy(a1, a2, *(*(v24 - 8) + 64));
LABEL_191:
    v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v123 = v83[5];
    v85 = a1 + v123;
    v86 = a2 + v123;
    v124 = *(a2 + v123 + 8);
    if (v124)
    {
      v166 = a2;
      v170 = a1;
      *v85 = *v86;
      *(v85 + 1) = v124;
      v125 = *(v86 + 2);
      v126 = *(v86 + 3);
      v127 = *(v86 + 4);
      v128 = *(v86 + 5);
      v129 = *(v86 + 6);
      v130 = *(v86 + 7);
      v131 = v86[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v125, v126, v127, v128, v129, v130, v131);
      *(v85 + 2) = v125;
      *(v85 + 3) = v126;
      *(v85 + 4) = v127;
      *(v85 + 5) = v128;
      *(v85 + 6) = v129;
      *(v85 + 7) = v130;
      v85[64] = v131;
      *(v85 + 65) = *(v86 + 65);
      v132 = v86[120];
      if (v132 == 255)
      {
        *(v85 + 72) = *(v86 + 72);
        *(v85 + 88) = *(v86 + 88);
        *(v85 + 104) = *(v86 + 104);
        v85[120] = v86[120];
      }

      else
      {
        v134 = *(v86 + 9);
        v133 = *(v86 + 10);
        v135 = *(v86 + 11);
        v136 = *(v86 + 12);
        v137 = *(v86 + 13);
        v138 = *(v86 + 14);
        v139 = v132 & 1;
        sub_21D0FB960(v134, v133, v135, v136, v137, v138, v132 & 1);
        *(v85 + 9) = v134;
        *(v85 + 10) = v133;
        *(v85 + 11) = v135;
        *(v85 + 12) = v136;
        *(v85 + 13) = v137;
        *(v85 + 14) = v138;
        v85[120] = v139;
      }

      v85[121] = v86[121];
      a2 = v166;
      a1 = v170;
      goto LABEL_189;
    }

    goto LABEL_194;
  }

  if (v6 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v31 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v32 = *(v16 + 48);
        v33 = v31;
        if (v32(a2 + v14, 1, v15))
        {
          goto LABEL_53;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_220;
            }

            goto LABEL_246;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_246;
          }

          goto LABEL_224;
        }

        if (v53 > 2)
        {
          goto LABEL_220;
        }

        if (v53 == 1)
        {
          goto LABEL_224;
        }

        if (v53 != 2)
        {
          goto LABEL_246;
        }
      }

      else
      {
        v19 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v20 = *(v16 + 48);
        v21 = v19;
        if (v20(a2 + v14, 1, v15))
        {
          goto LABEL_53;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_220;
            }

            goto LABEL_246;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_246;
          }

          goto LABEL_224;
        }

        if (v51 > 2)
        {
          goto LABEL_220;
        }

        if (v51 == 1)
        {
          goto LABEL_224;
        }

        if (v51 != 2)
        {
          goto LABEL_246;
        }
      }

      goto LABEL_220;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_66;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_124:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 16))(a1, a2, v72);
          swift_storeEnumTagMultiPayload();
          goto LABEL_183;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_124;
          }

          goto LABEL_182;
        }

LABEL_130:
        v75 = *a2;
        *a1 = *a2;
        v76 = v75;
        swift_storeEnumTagMultiPayload();
        goto LABEL_183;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_130;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_124;
      }

LABEL_182:
      memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_183:
      v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v103 = v83[5];
      v85 = a1 + v103;
      v86 = a2 + v103;
      v104 = *(a2 + v103 + 8);
      if (v104)
      {
        v165 = a2;
        v169 = a1;
        *v85 = *v86;
        *(v85 + 1) = v104;
        v105 = *(v86 + 2);
        v106 = *(v86 + 3);
        v107 = *(v86 + 4);
        v108 = *(v86 + 5);
        v109 = *(v86 + 6);
        v110 = *(v86 + 7);
        v111 = v86[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v105, v106, v107, v108, v109, v110, v111);
        *(v85 + 2) = v105;
        *(v85 + 3) = v106;
        *(v85 + 4) = v107;
        *(v85 + 5) = v108;
        *(v85 + 6) = v109;
        *(v85 + 7) = v110;
        v85[64] = v111;
        *(v85 + 65) = *(v86 + 65);
        v112 = v86[120];
        if (v112 == 255)
        {
          *(v85 + 72) = *(v86 + 72);
          *(v85 + 88) = *(v86 + 88);
          *(v85 + 104) = *(v86 + 104);
          v85[120] = v86[120];
        }

        else
        {
          v114 = *(v86 + 9);
          v113 = *(v86 + 10);
          v115 = *(v86 + 11);
          v116 = *(v86 + 12);
          v117 = *(v86 + 13);
          v118 = *(v86 + 14);
          v119 = v112 & 1;
          sub_21D0FB960(v114, v113, v115, v116, v117, v118, v112 & 1);
          *(v85 + 9) = v114;
          *(v85 + 10) = v113;
          *(v85 + 11) = v115;
          *(v85 + 12) = v116;
          *(v85 + 13) = v117;
          *(v85 + 14) = v118;
          v85[120] = v119;
        }

        v85[121] = v86[121];
        a2 = v165;
        a1 = v169;
        goto LABEL_189;
      }

      goto LABEL_194;
    }

    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 <= 4)
    {
      if (v27 > 2)
      {
LABEL_132:
        v78 = sub_21DBF563C();
        (*(*(v78 - 8) + 16))(a1, a2, v78);
        swift_storeEnumTagMultiPayload();
        goto LABEL_198;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_132;
        }

        goto LABEL_197;
      }

LABEL_138:
      v81 = *a2;
      *a1 = *a2;
      v82 = v81;
      swift_storeEnumTagMultiPayload();
      goto LABEL_198;
    }

    if (v27 > 7)
    {
      if (v27 == 8 || v27 == 9)
      {
        goto LABEL_138;
      }
    }

    else if (v27 == 5 || v27 == 6)
    {
      goto LABEL_132;
    }

LABEL_197:
    memcpy(a1, a2, *(*(v26 - 8) + 64));
LABEL_198:
    v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v143 = v83[5];
    v85 = a1 + v143;
    v86 = a2 + v143;
    v144 = *(a2 + v143 + 8);
    if (v144)
    {
      v167 = a2;
      v171 = a1;
      *v85 = *v86;
      *(v85 + 1) = v144;
      v145 = *(v86 + 2);
      v146 = *(v86 + 3);
      v147 = *(v86 + 4);
      v148 = *(v86 + 5);
      v150 = *(v86 + 6);
      v149 = *(v86 + 7);
      v151 = v86[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v145, v146, v147, v148, v150, v149, v151);
      *(v85 + 2) = v145;
      *(v85 + 3) = v146;
      *(v85 + 4) = v147;
      *(v85 + 5) = v148;
      *(v85 + 6) = v150;
      *(v85 + 7) = v149;
      v85[64] = v151;
      *(v85 + 65) = *(v86 + 65);
      v152 = v86[120];
      if (v152 == 255)
      {
        *(v85 + 72) = *(v86 + 72);
        *(v85 + 88) = *(v86 + 88);
        *(v85 + 104) = *(v86 + 104);
        v85[120] = v86[120];
      }

      else
      {
        v154 = *(v86 + 9);
        v153 = *(v86 + 10);
        v155 = *(v86 + 11);
        v156 = *(v86 + 12);
        v157 = *(v86 + 13);
        v158 = *(v86 + 14);
        v159 = v152 & 1;
        sub_21D0FB960(v154, v153, v155, v156, v157, v158, v152 & 1);
        *(v85 + 9) = v154;
        *(v85 + 10) = v153;
        *(v85 + 11) = v155;
        *(v85 + 12) = v156;
        *(v85 + 13) = v157;
        *(v85 + 14) = v158;
        v85[120] = v159;
      }

      v85[121] = v86[121];
      a2 = v167;
      a1 = v171;
      goto LABEL_189;
    }

    goto LABEL_194;
  }

  if (v6 <= 5)
  {
    if (v6 != 4)
    {
      goto LABEL_39;
    }

    v44 = *a2;
    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v45 = *(v16 + 48);
    v46 = v44;
    if (v45(a2 + v14, 1, v15))
    {
      goto LABEL_53;
    }

    v68 = swift_getEnumCaseMultiPayload();
    if (v68 > 4)
    {
      if (v68 <= 7)
      {
        if (v68 == 5 || v68 == 6)
        {
          goto LABEL_220;
        }

        goto LABEL_246;
      }

      if (v68 != 8 && v68 != 9)
      {
        goto LABEL_246;
      }
    }

    else
    {
      if (v68 > 2)
      {
        goto LABEL_220;
      }

      if (v68 != 1)
      {
        if (v68 == 2)
        {
          goto LABEL_220;
        }

        goto LABEL_246;
      }
    }

LABEL_224:
    v161 = *(a2 + v14);
    *(a1 + v14) = v161;
    v162 = v161;
    swift_storeEnumTagMultiPayload();
    goto LABEL_247;
  }

  switch(v6)
  {
    case 6:
      v38 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(a2, 1, v38))
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v40 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v61 = *(v38 + 20);
        v62 = sub_21DBF6C1C();
        v63 = *(*(v62 - 8) + 16);
        sub_21DBF8E0C();
        v63(a1 + v61, a2 + v61, v62);
        (*(v39 + 56))(a1, 0, 1, v38);
      }

      v64 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v58 = a1 + v64;
      v59 = a2 + v64;
      v60 = *(v59 + 1);
      if (!v60)
      {
        *v58 = *v59;
        *(v58 + 2) = *(v59 + 2);
        goto LABEL_248;
      }

      goto LABEL_108;
    case 7:
      v47 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(a2, 1, v47))
      {
LABEL_65:
        v49 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v49 - 8) + 64));
LABEL_122:
        v70 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v70 + 20)) = *(a2 + *(v70 + 20));
        goto LABEL_248;
      }

LABEL_121:
      v69 = sub_21DBF563C();
      (*(*(v69 - 8) + 16))(a1, a2, v69);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      (*(v48 + 56))(a1, 0, 1, v47);
      goto LABEL_122;
    case 8:
LABEL_13:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_248:
      swift_storeEnumTagMultiPayload();
      goto LABEL_249;
  }

LABEL_66:
  memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_249:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRRemindersListSectionCreationLocation(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListSectionCreationLocation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 != 6)
          {
            if (v6 != 7)
            {
              if (v6 == 8)
              {
                goto LABEL_14;
              }

              goto LABEL_67;
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v48 = *(v47 - 8);
            if ((*(v48 + 48))(a2, 1, v47))
            {
LABEL_66:
              v49 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v49 - 8) + 64));
LABEL_123:
              v69 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v69 + 20)) = *(a2 + *(v69 + 20));
              goto LABEL_250;
            }

LABEL_122:
            v68 = sub_21DBF563C();
            (*(*(v68 - 8) + 16))(a1, a2, v68);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            (*(v48 + 56))(a1, 0, 1, v47);
            goto LABEL_123;
          }

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
            v54 = *(v35 + 20);
            v55 = sub_21DBF6C1C();
            v178 = *(*(v55 - 8) + 16);
            sub_21DBF8E0C();
            v178(a1 + v54, a2 + v54, v55);
            (*(v36 + 56))(a1, 0, 1, v35);
          }

          v56 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v57 = a1 + v56;
          v58 = a2 + v56;
          if (!*(v58 + 1))
          {
            v64 = *v58;
            *(v57 + 2) = *(v58 + 2);
            *v57 = v64;
            goto LABEL_250;
          }

          goto LABEL_109;
        }

        if (v6 != 4)
        {
          goto LABEL_40;
        }

        v41 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v42 = *(v16 + 48);
        v43 = v41;
        if (v42(a2 + v14, 1, v15))
        {
          goto LABEL_54;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 > 4)
        {
          if (v66 <= 7)
          {
            if (v66 == 5 || v66 == 6)
            {
              goto LABEL_222;
            }

            goto LABEL_248;
          }

          if (v66 != 8 && v66 != 9)
          {
            goto LABEL_248;
          }

          goto LABEL_226;
        }

        if (v66 <= 2)
        {
          if (v66 != 1)
          {
            if (v66 == 2)
            {
              goto LABEL_222;
            }

LABEL_248:
            memcpy(a1 + v14, a2 + v14, *(v16 + 64));
            goto LABEL_249;
          }

          goto LABEL_226;
        }

LABEL_222:
        v166 = sub_21DBF563C();
        (*(*(v166 - 8) + 16))(a1 + v14, a2 + v14, v166);
        swift_storeEnumTagMultiPayload();
LABEL_249:
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
        goto LABEL_250;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v28 = *a2;
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          v29 = *(v16 + 48);
          v30 = v28;
          if (v29(a2 + v14, 1, v15))
          {
            goto LABEL_54;
          }

          v52 = swift_getEnumCaseMultiPayload();
          if (v52 > 4)
          {
            if (v52 <= 7)
            {
              if (v52 == 5 || v52 == 6)
              {
                goto LABEL_222;
              }

              goto LABEL_248;
            }

            if (v52 != 8 && v52 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_226;
          }

          if (v52 > 2)
          {
            goto LABEL_222;
          }

          if (v52 == 1)
          {
            goto LABEL_226;
          }

          if (v52 != 2)
          {
            goto LABEL_248;
          }
        }

        else
        {
          v13 = *a2;
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          v17 = *(v16 + 48);
          v18 = v13;
          if (v17(a2 + v14, 1, v15))
          {
            goto LABEL_54;
          }

          v50 = swift_getEnumCaseMultiPayload();
          if (v50 > 4)
          {
            if (v50 <= 7)
            {
              if (v50 == 5 || v50 == 6)
              {
                goto LABEL_222;
              }

              goto LABEL_248;
            }

            if (v50 != 8 && v50 != 9)
            {
              goto LABEL_248;
            }

            goto LABEL_226;
          }

          if (v50 > 2)
          {
            goto LABEL_222;
          }

          if (v50 == 1)
          {
            goto LABEL_226;
          }

          if (v50 != 2)
          {
            goto LABEL_248;
          }
        }

        goto LABEL_222;
      }

      if (v6)
      {
        if (v6 != 1)
        {
          goto LABEL_67;
        }

        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = swift_getEnumCaseMultiPayload();
        if (v10 <= 4)
        {
          if (v10 > 2)
          {
LABEL_124:
            v70 = sub_21DBF563C();
            (*(*(v70 - 8) + 16))(a1, a2, v70);
            swift_storeEnumTagMultiPayload();
            goto LABEL_177;
          }

          if (v10 != 1)
          {
            if (v10 == 2)
            {
              goto LABEL_124;
            }

            goto LABEL_176;
          }

LABEL_128:
          v72 = *a2;
          *a1 = *a2;
          v73 = v72;
          swift_storeEnumTagMultiPayload();
          goto LABEL_177;
        }

        if (v10 > 7)
        {
          if (v10 == 8 || v10 == 9)
          {
            goto LABEL_128;
          }
        }

        else if (v10 == 5 || v10 == 6)
        {
          goto LABEL_124;
        }

LABEL_176:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_177:
        v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v83 = v82[5];
        v84 = a1 + v83;
        v85 = a2 + v83;
        if (*(a2 + v83 + 8))
        {
          *v84 = *v85;
          *(v84 + 1) = *(v85 + 1);
          v86 = *(v85 + 2);
          v87 = *(v85 + 3);
          v88 = *(v85 + 4);
          v89 = *(v85 + 5);
          v90 = *(v85 + 6);
          v170 = *(v85 + 7);
          v180 = v85[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v86, v87, v88, v89, v90, v170, v180);
          *(v84 + 2) = v86;
          *(v84 + 3) = v87;
          *(v84 + 4) = v88;
          *(v84 + 5) = v89;
          *(v84 + 6) = v90;
          *(v84 + 7) = v170;
          v84[64] = v180;
          v84[65] = v85[65];
          v84[66] = v85[66];
          v84[67] = v85[67];
          v84[68] = v85[68];
          v91 = v85[120];
          if (v91 == 255)
          {
            v97 = *(v85 + 72);
            v98 = *(v85 + 88);
            v99 = *(v85 + 104);
            v84[120] = v85[120];
            *(v84 + 104) = v99;
            *(v84 + 88) = v98;
            *(v84 + 72) = v97;
          }

          else
          {
            v171 = *(v85 + 10);
            v181 = *(v85 + 9);
            v92 = *(v85 + 11);
            v93 = *(v85 + 12);
            v94 = *(v85 + 13);
            v95 = *(v85 + 14);
            v96 = v91 & 1;
            sub_21D0FB960(v181, v171, v92, v93, v94, v95, v91 & 1);
            *(v84 + 9) = v181;
            *(v84 + 10) = v171;
            *(v84 + 11) = v92;
            *(v84 + 12) = v93;
            *(v84 + 13) = v94;
            *(v84 + 14) = v95;
            v84[120] = v96;
          }

          v84[121] = v85[121];
          goto LABEL_190;
        }

LABEL_187:
        v112 = *v85;
        v113 = *(v85 + 1);
        v114 = *(v85 + 3);
        *(v84 + 2) = *(v85 + 2);
        *(v84 + 3) = v114;
        *v84 = v112;
        *(v84 + 1) = v113;
        v115 = *(v85 + 4);
        v116 = *(v85 + 5);
        v117 = *(v85 + 6);
        *(v84 + 106) = *(v85 + 106);
        *(v84 + 5) = v116;
        *(v84 + 6) = v117;
        *(v84 + 4) = v115;
LABEL_190:
        *(a1 + v82[6]) = *(a2 + v82[6]);
        *(a1 + v82[7]) = *(a2 + v82[7]);
        *(a1 + v82[8]) = *(a2 + v82[8]);
        *(a1 + v82[9]) = *(a2 + v82[9]);
        *(a1 + v82[10]) = *(a2 + v82[10]);
        v121 = v82[11];
        v122 = *(a2 + v121);
        *(a1 + v121) = v122;
        v123 = v122;
        goto LABEL_250;
      }

      v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 4)
      {
        if (v25 > 2)
        {
LABEL_132:
          v76 = sub_21DBF563C();
          (*(*(v76 - 8) + 16))(a1, a2, v76);
          swift_storeEnumTagMultiPayload();
          goto LABEL_192;
        }

        if (v25 != 1)
        {
          if (v25 == 2)
          {
            goto LABEL_132;
          }

          goto LABEL_191;
        }

LABEL_136:
        v78 = *a2;
        *a1 = *a2;
        v79 = v78;
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      if (v25 > 7)
      {
        if (v25 == 8 || v25 == 9)
        {
          goto LABEL_136;
        }
      }

      else if (v25 == 5 || v25 == 6)
      {
        goto LABEL_132;
      }

LABEL_191:
      memcpy(a1, a2, *(*(v24 - 8) + 64));
LABEL_192:
      v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v124 = v82[5];
      v84 = a1 + v124;
      v85 = a2 + v124;
      if (*(a2 + v124 + 8))
      {
        *v84 = *v85;
        *(v84 + 1) = *(v85 + 1);
        v125 = *(v85 + 2);
        v126 = *(v85 + 3);
        v127 = *(v85 + 4);
        v128 = *(v85 + 5);
        v129 = *(v85 + 6);
        v174 = *(v85 + 7);
        v184 = v85[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v125, v126, v127, v128, v129, v174, v184);
        *(v84 + 2) = v125;
        *(v84 + 3) = v126;
        *(v84 + 4) = v127;
        *(v84 + 5) = v128;
        *(v84 + 6) = v129;
        *(v84 + 7) = v174;
        v84[64] = v184;
        v84[65] = v85[65];
        v84[66] = v85[66];
        v84[67] = v85[67];
        v84[68] = v85[68];
        v130 = v85[120];
        if (v130 == 255)
        {
          v136 = *(v85 + 72);
          v137 = *(v85 + 88);
          v138 = *(v85 + 104);
          v84[120] = v85[120];
          *(v84 + 104) = v138;
          *(v84 + 88) = v137;
          *(v84 + 72) = v136;
        }

        else
        {
          v175 = *(v85 + 10);
          v185 = *(v85 + 9);
          v131 = *(v85 + 11);
          v132 = *(v85 + 12);
          v133 = *(v85 + 13);
          v134 = *(v85 + 14);
          v135 = v130 & 1;
          sub_21D0FB960(v185, v175, v131, v132, v133, v134, v130 & 1);
          *(v84 + 9) = v185;
          *(v84 + 10) = v175;
          *(v84 + 11) = v131;
          *(v84 + 12) = v132;
          *(v84 + 13) = v133;
          *(v84 + 14) = v134;
          v84[120] = v135;
        }

        v84[121] = v85[121];
        goto LABEL_190;
      }

      goto LABEL_187;
    }

    if (v6 > 3)
    {
      if (v6 > 5)
      {
        if (v6 != 6)
        {
          if (v6 != 7)
          {
            if (v6 == 8)
            {
LABEL_14:
              *a1 = *a2;
              v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v8 = sub_21DBF8D7C();
              (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_250:
              swift_storeEnumTagMultiPayload();
              goto LABEL_251;
            }

LABEL_67:
            memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_251:
            swift_storeEnumTagMultiPayload();
            return a1;
          }

          v47 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v48 = *(v47 - 8);
          if ((*(v48 + 48))(a2, 1, v47))
          {
            goto LABEL_66;
          }

          goto LABEL_122;
        }

        v38 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(a2, 1, v38))
        {
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v40 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v59 = *(v38 + 20);
          v60 = sub_21DBF6C1C();
          v179 = *(*(v60 - 8) + 16);
          sub_21DBF8E0C();
          v179(a1 + v59, a2 + v59, v60);
          (*(v39 + 56))(a1, 0, 1, v38);
        }

        v61 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v57 = a1 + v61;
        v58 = a2 + v61;
        if (!*(v58 + 1))
        {
          v65 = *v58;
          *(v57 + 2) = *(v58 + 2);
          *v57 = v65;
          goto LABEL_250;
        }

LABEL_109:
        *v57 = *v58;
        *(v57 + 1) = *(v58 + 1);
        v62 = *(v58 + 2);
        *(v57 + 2) = v62;
        sub_21DBF8E0C();
        v63 = v62;
        goto LABEL_250;
      }

      if (v6 != 4)
      {
LABEL_40:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v22 = a2[2];
        a1[2] = v22;
        v23 = v22;
        goto LABEL_250;
      }

      v44 = *a2;
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      v45 = *(v16 + 48);
      v46 = v44;
      if (v45(a2 + v14, 1, v15))
      {
LABEL_54:
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v14, a2 + v14, *(*(v34 - 8) + 64));
        goto LABEL_250;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 > 4)
      {
        if (v67 <= 7)
        {
          if (v67 == 5 || v67 == 6)
          {
            goto LABEL_222;
          }

          goto LABEL_248;
        }

        if (v67 != 8 && v67 != 9)
        {
          goto LABEL_248;
        }
      }

      else
      {
        if (v67 > 2)
        {
          goto LABEL_222;
        }

        if (v67 != 1)
        {
          if (v67 == 2)
          {
            goto LABEL_222;
          }

          goto LABEL_248;
        }
      }

LABEL_226:
      v167 = *(a2 + v14);
      *(a1 + v14) = v167;
      v168 = v167;
      swift_storeEnumTagMultiPayload();
      goto LABEL_249;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v31 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v32 = *(v16 + 48);
        v33 = v31;
        if (v32(a2 + v14, 1, v15))
        {
          goto LABEL_54;
        }

        v53 = swift_getEnumCaseMultiPayload();
        if (v53 > 4)
        {
          if (v53 <= 7)
          {
            if (v53 == 5 || v53 == 6)
            {
              goto LABEL_222;
            }

            goto LABEL_248;
          }

          if (v53 != 8 && v53 != 9)
          {
            goto LABEL_248;
          }

          goto LABEL_226;
        }

        if (v53 > 2)
        {
          goto LABEL_222;
        }

        if (v53 == 1)
        {
          goto LABEL_226;
        }

        if (v53 != 2)
        {
          goto LABEL_248;
        }
      }

      else
      {
        v19 = *a2;
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v20 = *(v16 + 48);
        v21 = v19;
        if (v20(a2 + v14, 1, v15))
        {
          goto LABEL_54;
        }

        v51 = swift_getEnumCaseMultiPayload();
        if (v51 > 4)
        {
          if (v51 <= 7)
          {
            if (v51 == 5 || v51 == 6)
            {
              goto LABEL_222;
            }

            goto LABEL_248;
          }

          if (v51 != 8 && v51 != 9)
          {
            goto LABEL_248;
          }

          goto LABEL_226;
        }

        if (v51 > 2)
        {
          goto LABEL_222;
        }

        if (v51 == 1)
        {
          goto LABEL_226;
        }

        if (v51 != 2)
        {
          goto LABEL_248;
        }
      }

      goto LABEL_222;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_67;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_125:
          v71 = sub_21DBF563C();
          (*(*(v71 - 8) + 16))(a1, a2, v71);
          swift_storeEnumTagMultiPayload();
          goto LABEL_184;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_125;
          }

          goto LABEL_183;
        }

LABEL_131:
        v74 = *a2;
        *a1 = *a2;
        v75 = v74;
        swift_storeEnumTagMultiPayload();
        goto LABEL_184;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_131;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_125;
      }

LABEL_183:
      memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_184:
      v82 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v100 = v82[5];
      v84 = a1 + v100;
      v85 = a2 + v100;
      if (*(a2 + v100 + 8))
      {
        *v84 = *v85;
        *(v84 + 1) = *(v85 + 1);
        v101 = *(v85 + 2);
        v102 = *(v85 + 3);
        v103 = *(v85 + 4);
        v104 = *(v85 + 5);
        v105 = *(v85 + 6);
        v172 = *(v85 + 7);
        v182 = v85[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v101, v102, v103, v104, v105, v172, v182);
        *(v84 + 2) = v101;
        *(v84 + 3) = v102;
        *(v84 + 4) = v103;
        *(v84 + 5) = v104;
        *(v84 + 6) = v105;
        *(v84 + 7) = v172;
        v84[64] = v182;
        v84[65] = v85[65];
        v84[66] = v85[66];
        v84[67] = v85[67];
        v84[68] = v85[68];
        v106 = v85[120];
        if (v106 == 255)
        {
          v118 = *(v85 + 72);
          v119 = *(v85 + 88);
          v120 = *(v85 + 104);
          v84[120] = v85[120];
          *(v84 + 104) = v120;
          *(v84 + 88) = v119;
          *(v84 + 72) = v118;
        }

        else
        {
          v173 = *(v85 + 10);
          v183 = *(v85 + 9);
          v107 = *(v85 + 11);
          v108 = *(v85 + 12);
          v109 = *(v85 + 13);
          v110 = *(v85 + 14);
          v111 = v106 & 1;
          sub_21D0FB960(v183, v173, v107, v108, v109, v110, v106 & 1);
          *(v84 + 9) = v183;
          *(v84 + 10) = v173;
          *(v84 + 11) = v107;
          *(v84 + 12) = v108;
          *(v84 + 13) = v109;
          *(v84 + 14) = v110;
          v84[120] = v111;
        }

        v84[121] = v85[121];
        goto LABEL_190;
      }

      goto LABEL_187;
    }

    v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 > 4)
    {
      if (v27 <= 7)
      {
        if (v27 == 5 || v27 == 6)
        {
          goto LABEL_133;
        }

        goto LABEL_198;
      }

      if (v27 != 8 && v27 != 9)
      {
        goto LABEL_198;
      }
    }

    else
    {
      if (v27 > 2)
      {
LABEL_133:
        v77 = sub_21DBF563C();
        (*(*(v77 - 8) + 16))(a1, a2, v77);
        swift_storeEnumTagMultiPayload();
LABEL_199:
        v139 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v140 = v139[5];
        v141 = a1 + v140;
        v142 = a2 + v140;
        if (*(a2 + v140 + 8))
        {
          *v141 = *v142;
          *(v141 + 1) = *(v142 + 1);
          v143 = *(v142 + 2);
          v144 = *(v142 + 3);
          v145 = *(v142 + 4);
          v146 = *(v142 + 5);
          v147 = *(v142 + 6);
          v186 = *(v142 + 7);
          v176 = v142[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v143, v144, v145, v146, v147, v186, v176);
          *(v141 + 2) = v143;
          *(v141 + 3) = v144;
          *(v141 + 4) = v145;
          *(v141 + 5) = v146;
          *(v141 + 6) = v147;
          *(v141 + 7) = v186;
          v141[64] = v176;
          v141[65] = v142[65];
          v141[66] = v142[66];
          v141[67] = v142[67];
          v141[68] = v142[68];
          v148 = v142[120];
          if (v148 == 255)
          {
            v160 = *(v142 + 72);
            v161 = *(v142 + 88);
            v162 = *(v142 + 104);
            v141[120] = v142[120];
            *(v141 + 104) = v162;
            *(v141 + 88) = v161;
            *(v141 + 72) = v160;
          }

          else
          {
            v177 = *(v142 + 10);
            v187 = *(v142 + 9);
            v149 = *(v142 + 11);
            v150 = *(v142 + 12);
            v151 = *(v142 + 13);
            v152 = *(v142 + 14);
            v153 = v148 & 1;
            sub_21D0FB960(v187, v177, v149, v150, v151, v152, v148 & 1);
            *(v141 + 9) = v187;
            *(v141 + 10) = v177;
            *(v141 + 11) = v149;
            *(v141 + 12) = v150;
            *(v141 + 13) = v151;
            *(v141 + 14) = v152;
            v141[120] = v153;
          }

          v141[121] = v142[121];
        }

        else
        {
          v154 = *v142;
          v155 = *(v142 + 1);
          v156 = *(v142 + 3);
          *(v141 + 2) = *(v142 + 2);
          *(v141 + 3) = v156;
          *v141 = v154;
          *(v141 + 1) = v155;
          v157 = *(v142 + 4);
          v158 = *(v142 + 5);
          v159 = *(v142 + 6);
          *(v141 + 106) = *(v142 + 106);
          *(v141 + 5) = v158;
          *(v141 + 6) = v159;
          *(v141 + 4) = v157;
        }

        *(a1 + v139[6]) = *(a2 + v139[6]);
        *(a1 + v139[7]) = *(a2 + v139[7]);
        *(a1 + v139[8]) = *(a2 + v139[8]);
        *(a1 + v139[9]) = *(a2 + v139[9]);
        *(a1 + v139[10]) = *(a2 + v139[10]);
        v163 = v139[11];
        v164 = *(a2 + v163);
        *(a1 + v163) = v164;
        v165 = v164;
        goto LABEL_250;
      }

      if (v27 != 1)
      {
        if (v27 == 2)
        {
          goto LABEL_133;
        }

LABEL_198:
        memcpy(a1, a2, *(*(v26 - 8) + 64));
        goto LABEL_199;
      }
    }

    v80 = *a2;
    *a1 = *a2;
    v81 = v80;
    swift_storeEnumTagMultiPayload();
    goto LABEL_199;
  }

  return a1;
}

void *initializeWithTake for TTRRemindersListSectionCreationLocation(void *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    if (v6 <= 3)
    {
      if (v6 <= 1)
      {
        if (!v6)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_19;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
            goto LABEL_19;
          }

          goto LABEL_123;
        }

        if (v6 == 1)
        {
          v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_19;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
            goto LABEL_19;
          }

          goto LABEL_123;
        }

        goto LABEL_64;
      }

      if (v6 == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
LABEL_59:
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, &a2[v14], *(*(v21 - 8) + 64));
          goto LABEL_165;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 <= 3)
        {
          if (v28 == 2 || v28 == 3)
          {
            goto LABEL_105;
          }
        }

        else if (v28 == 4 || v28 == 5 || v28 == 6)
        {
          goto LABEL_105;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_59;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 <= 3)
        {
          if (v38 == 2 || v38 == 3)
          {
            goto LABEL_105;
          }
        }

        else if (v38 == 4 || v38 == 5 || v38 == 6)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_163;
    }

    if (v6 <= 6)
    {
      if (v6 == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_59;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 <= 3)
        {
          if (v26 == 2 || v26 == 3)
          {
            goto LABEL_105;
          }
        }

        else if (v26 == 4 || v26 == 5 || v26 == 6)
        {
          goto LABEL_105;
        }

        goto LABEL_163;
      }

      if (v6 != 6)
      {
        goto LABEL_64;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2, 1, v11))
      {
LABEL_29:
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_100:
        v33 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v34 = a1 + v33;
        v35 = &a2[v33];
        *v34 = *v35;
        *(v34 + 2) = *(v35 + 2);
        goto LABEL_165;
      }

LABEL_99:
      *a1 = *a2;
      v31 = *(v11 + 20);
      v32 = sub_21DBF6C1C();
      (*(*(v32 - 8) + 32))(a1 + v31, &a2[v31], v32);
      (*(v12 + 56))(a1, 0, 1, v11);
      goto LABEL_100;
    }

    if (v6 != 7)
    {
      if (v6 != 8)
      {
        goto LABEL_64;
      }

LABEL_41:
      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(a1 + v17, &a2[v17], v18);
LABEL_165:
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(a2, 1, v22))
    {
      goto LABEL_63;
    }

    goto LABEL_97;
  }

  if (v6 > 3)
  {
    if (v6 <= 6)
    {
      if (v6 == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_59;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_105;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_105;
        }

        goto LABEL_163;
      }

      if (v6 != 6)
      {
        goto LABEL_64;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(a2, 1, v11))
      {
        goto LABEL_29;
      }

      goto LABEL_99;
    }

    if (v6 != 7)
    {
      if (v6 != 8)
      {
        goto LABEL_64;
      }

      goto LABEL_41;
    }

    v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(a2, 1, v22))
    {
LABEL_63:
      v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v24 - 8) + 64));
LABEL_98:
      v30 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v30 + 20)) = *&a2[*(v30 + 20)];
      goto LABEL_165;
    }

LABEL_97:
    v29 = sub_21DBF563C();
    (*(*(v29 - 8) + 32))(a1, a2, v29);
    *(a1 + *(v22 + 20)) = a2[*(v22 + 20)];
    (*(v23 + 56))(a1, 0, 1, v22);
    goto LABEL_98;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_59;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 <= 3)
      {
        if (v27 == 2 || v27 == 3)
        {
          goto LABEL_105;
        }
      }

      else if (v27 == 4 || v27 == 5 || v27 == 6)
      {
        goto LABEL_105;
      }
    }

    else
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_59;
      }

      v36 = swift_getEnumCaseMultiPayload();
      if (v36 <= 3)
      {
        if (v36 == 2 || v36 == 3)
        {
          goto LABEL_105;
        }
      }

      else if (v36 == 4 || v36 == 5 || v36 == 6)
      {
LABEL_105:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 32))(a1 + v14, &a2[v14], v37);
        swift_storeEnumTagMultiPayload();
LABEL_164:
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
        goto LABEL_165;
      }
    }

LABEL_163:
    memcpy(a1 + v14, &a2[v14], *(v16 + 64));
    goto LABEL_164;
  }

  if (!v6)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_19;
    }

    goto LABEL_123;
  }

  if (v6 == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_19:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_124:
      v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v40 = v39[5];
      v41 = (a1 + v40);
      v42 = &a2[v40];
      v43 = *(v42 + 3);
      v41[2] = *(v42 + 2);
      v41[3] = v43;
      v44 = *(v42 + 1);
      *v41 = *v42;
      v41[1] = v44;
      *(v41 + 106) = *(v42 + 106);
      v45 = *(v42 + 6);
      v41[5] = *(v42 + 5);
      v41[6] = v45;
      v41[4] = *(v42 + 4);
      *(a1 + v39[6]) = a2[v39[6]];
      *(a1 + v39[7]) = a2[v39[7]];
      *(a1 + v39[8]) = a2[v39[8]];
      *(a1 + v39[9]) = a2[v39[9]];
      *(a1 + v39[10]) = a2[v39[10]];
      *(a1 + v39[11]) = *&a2[v39[11]];
      goto LABEL_165;
    }

LABEL_123:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_124;
  }

LABEL_64:
  memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_166:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithTake for TTRRemindersListSectionCreationLocation(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListSectionCreationLocation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (v6 <= 3)
      {
        if (v6 <= 1)
        {
          if (!v6)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v19 = swift_getEnumCaseMultiPayload();
            if (v19 <= 3)
            {
              if (v19 == 2 || v19 == 3)
              {
                goto LABEL_20;
              }
            }

            else if (v19 == 4 || v19 == 5 || v19 == 6)
            {
              goto LABEL_20;
            }

            goto LABEL_124;
          }

          if (v6 == 1)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 <= 3)
            {
              if (v8 == 2 || v8 == 3)
              {
                goto LABEL_20;
              }
            }

            else if (v8 == 4 || v8 == 5 || v8 == 6)
            {
LABEL_20:
              v10 = sub_21DBF563C();
              (*(*(v10 - 8) + 32))(a1, a2, v10);
              swift_storeEnumTagMultiPayload();
LABEL_125:
              v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v40 = v39[5];
              v41 = (a1 + v40);
              v42 = (a2 + v40);
              v43 = v42[3];
              v41[2] = v42[2];
              v41[3] = v43;
              v44 = v42[1];
              *v41 = *v42;
              v41[1] = v44;
              *(v41 + 106) = *(v42 + 106);
              v45 = v42[6];
              v41[5] = v42[5];
              v41[6] = v45;
              v41[4] = v42[4];
              *(a1 + v39[6]) = *(a2 + v39[6]);
              *(a1 + v39[7]) = *(a2 + v39[7]);
              *(a1 + v39[8]) = *(a2 + v39[8]);
              *(a1 + v39[9]) = *(a2 + v39[9]);
              *(a1 + v39[10]) = *(a2 + v39[10]);
              *(a1 + v39[11]) = *(a2 + v39[11]);
              goto LABEL_166;
            }

LABEL_124:
            memcpy(a1, a2, *(*(v7 - 8) + 64));
            goto LABEL_125;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_167:
          swift_storeEnumTagMultiPayload();
          return a1;
        }

        if (v6 == 2)
        {
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(a2 + v14, 1, v15))
          {
            goto LABEL_60;
          }

          v27 = swift_getEnumCaseMultiPayload();
          if (v27 <= 3)
          {
            if (v27 == 2 || v27 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v27 == 4 || v27 == 5 || v27 == 6)
          {
            goto LABEL_106;
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
            goto LABEL_60;
          }

          v36 = swift_getEnumCaseMultiPayload();
          if (v36 <= 3)
          {
            if (v36 == 2 || v36 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v36 == 4 || v36 == 5 || v36 == 6)
          {
LABEL_106:
            v37 = sub_21DBF563C();
            (*(*(v37 - 8) + 32))(a1 + v14, a2 + v14, v37);
            swift_storeEnumTagMultiPayload();
LABEL_165:
            (*(v16 + 56))(a1 + v14, 0, 1, v15);
            goto LABEL_166;
          }
        }

LABEL_164:
        memcpy(a1 + v14, a2 + v14, *(v16 + 64));
        goto LABEL_165;
      }

      if (v6 <= 6)
      {
        if (v6 == 4)
        {
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(a2 + v14, 1, v15))
          {
            goto LABEL_60;
          }

          v25 = swift_getEnumCaseMultiPayload();
          if (v25 <= 3)
          {
            if (v25 == 2 || v25 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v25 == 4 || v25 == 5 || v25 == 6)
          {
            goto LABEL_106;
          }

          goto LABEL_164;
        }

        if (v6 != 6)
        {
          goto LABEL_65;
        }

        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          goto LABEL_30;
        }

        goto LABEL_100;
      }

      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_65;
        }

        goto LABEL_42;
      }

      v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2, 1, v22))
      {
LABEL_64:
        v24 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v24 - 8) + 64));
LABEL_99:
        v30 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v30 + 20)) = *(a2 + *(v30 + 20));
        goto LABEL_166;
      }
    }

    else
    {
      if (v6 <= 3)
      {
        if (v6 <= 1)
        {
          if (!v6)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v20 = swift_getEnumCaseMultiPayload();
            if (v20 <= 3)
            {
              if (v20 == 2 || v20 == 3)
              {
                goto LABEL_20;
              }
            }

            else if (v20 == 4 || v20 == 5 || v20 == 6)
            {
              goto LABEL_20;
            }

            goto LABEL_124;
          }

          if (v6 == 1)
          {
            v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v9 = swift_getEnumCaseMultiPayload();
            if (v9 <= 3)
            {
              if (v9 == 2 || v9 == 3)
              {
                goto LABEL_20;
              }
            }

            else if (v9 == 4 || v9 == 5 || v9 == 6)
            {
              goto LABEL_20;
            }

            goto LABEL_124;
          }

          goto LABEL_65;
        }

        if (v6 == 2)
        {
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(a2 + v14, 1, v15))
          {
LABEL_60:
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(a1 + v14, a2 + v14, *(*(v21 - 8) + 64));
            goto LABEL_166;
          }

          v28 = swift_getEnumCaseMultiPayload();
          if (v28 <= 3)
          {
            if (v28 == 2 || v28 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v28 == 4 || v28 == 5 || v28 == 6)
          {
            goto LABEL_106;
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
            goto LABEL_60;
          }

          v38 = swift_getEnumCaseMultiPayload();
          if (v38 <= 3)
          {
            if (v38 == 2 || v38 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v38 == 4 || v38 == 5 || v38 == 6)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_164;
      }

      if (v6 <= 6)
      {
        if (v6 == 4)
        {
          *a1 = *a2;
          v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v16 = *(v15 - 8);
          if ((*(v16 + 48))(a2 + v14, 1, v15))
          {
            goto LABEL_60;
          }

          v26 = swift_getEnumCaseMultiPayload();
          if (v26 <= 3)
          {
            if (v26 == 2 || v26 == 3)
            {
              goto LABEL_106;
            }
          }

          else if (v26 == 4 || v26 == 5 || v26 == 6)
          {
            goto LABEL_106;
          }

          goto LABEL_164;
        }

        if (v6 != 6)
        {
          goto LABEL_65;
        }

        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
LABEL_30:
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_101:
          v33 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v34 = a1 + v33;
          v35 = a2 + v33;
          *v34 = *v35;
          *(v34 + 2) = *(v35 + 2);
          goto LABEL_166;
        }

LABEL_100:
        *a1 = *a2;
        v31 = *(v11 + 20);
        v32 = sub_21DBF6C1C();
        (*(*(v32 - 8) + 32))(a1 + v31, a2 + v31, v32);
        (*(v12 + 56))(a1, 0, 1, v11);
        goto LABEL_101;
      }

      if (v6 != 7)
      {
        if (v6 != 8)
        {
          goto LABEL_65;
        }

LABEL_42:
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_166:
        swift_storeEnumTagMultiPayload();
        goto LABEL_167;
      }

      v22 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2, 1, v22))
      {
        goto LABEL_64;
      }
    }

    v29 = sub_21DBF563C();
    (*(*(v29 - 8) + 32))(a1, a2, v29);
    *(a1 + *(v22 + 20)) = *(a2 + *(v22 + 20));
    (*(v23 + 56))(a1, 0, 1, v22);
    goto LABEL_99;
  }

  return a1;
}

uint64_t sub_21D2E85E0()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRRemindersListTreeViewModel.AuxiliaryData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithTake for TTRRemindersListTreeViewModel.AuxiliaryData(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRDataViewMonitorEnvironmentInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListTreeViewModel.Section(void **a1, void **a2, uint64_t a3)
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
    v41 = v6;
    v42 = v3;
    v43 = a1;
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

    v6 = v41;
    v3 = v42;
    v15[121] = v16[121];
    a1 = v43;
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
  v38 = *(v6 + 24);
  *(a1 + *(v6 + 20)) = *(v3 + *(v6 + 20));
  *(a1 + v38) = *(v3 + v38);
  v39 = v37;
  sub_21DBF8E0C();
  return a1;
}

void **initializeWithCopy for TTRRemindersListTreeViewModel.Section(void **a1, void **a2, uint64_t a3)
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
    v39 = a3;
    v40 = a2;
    v41 = a1;
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

    a3 = v39;
    a2 = v40;
    v13[121] = v14[121];
    a1 = v41;
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
  v36 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v36) = *(a2 + v36);
  v37 = v35;
  sub_21DBF8E0C();
  return a1;
}

void **assignWithCopy for TTRRemindersListTreeViewModel.Section(void **a1, void **a2, uint64_t a3)
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

  *(a1 + *(a3 + 24)) = *(v4 + *(a3 + 24));
  return a1;
}