void *sub_21D7C5D94(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D0CF7E0(a1, &qword_27CE5E8F0);
      goto LABEL_11;
    }

    if (a1 == a2)
    {
LABEL_266:
      *(a1 + *(v4 + 48)) = *(a2 + *(v4 + 48));
      return a1;
    }

    sub_21D106E58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v69 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v70 = *(v69 - 8);
            if ((*(v70 + 48))(a2, 1, v69))
            {
              v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v71 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v97 = *(v69 + 20);
              v98 = sub_21DBF6C1C();
              v224 = *(*(v98 - 8) + 16);
              sub_21DBF8E0C();
              v224(a1 + v97, a2 + v97, v98);
              (*(v70 + 56))(a1, 0, 1, v69);
            }

            v99 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v100 = (a1 + v99);
            v101 = (a2 + v99);
            if (v101[1])
            {
              *v100 = *v101;
              v100[1] = v101[1];
              v102 = v101[2];
              v100[2] = v102;
              sub_21DBF8E0C();
              v103 = v102;
            }

            else
            {
              v104 = *v101;
              v100[2] = v101[2];
              *v100 = v104;
            }

            goto LABEL_265;
          case 7:
            v84 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v85 = *(v84 - 8);
            if ((*(v85 + 48))(a2, 1, v84))
            {
              v86 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v86 - 8) + 64));
            }

            else
            {
              v106 = sub_21DBF563C();
              (*(*(v106 - 8) + 16))(a1, a2, v106);
              *(a1 + *(v84 + 20)) = *(a2 + *(v84 + 20));
              (*(v85 + 56))(a1, 0, 1, v84);
            }

            v107 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v107 + 20)) = *(a2 + *(v107 + 20));
            goto LABEL_265;
          case 8:
            *a1 = *a2;
            v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v18 = sub_21DBF8D7C();
            (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
LABEL_265:
            swift_storeEnumTagMultiPayload();
            goto LABEL_266;
        }

        goto LABEL_103;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v57 = a2[2];
        a1[2] = v57;
        v58 = v57;
        goto LABEL_265;
      }

      v81 = *a2;
      *a1 = *a2;
      v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v54 = *(v53 - 8);
      v82 = *(v54 + 48);
      v83 = v81;
      if (v82(a2 + v52, 1, v53))
      {
LABEL_85:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v52, a2 + v52, *(*(v68 - 8) + 64));
        goto LABEL_265;
      }

      v105 = swift_getEnumCaseMultiPayload();
      if (v105 > 4)
      {
        if (v105 <= 7)
        {
          if (v105 == 5 || v105 == 6)
          {
            goto LABEL_250;
          }

          goto LABEL_263;
        }

        if (v105 != 8 && v105 != 9)
        {
          goto LABEL_263;
        }

LABEL_249:
        v202 = *(a2 + v52);
        *(a1 + v52) = v202;
        v203 = v202;
        swift_storeEnumTagMultiPayload();
LABEL_264:
        (*(v54 + 56))(a1 + v52, 0, 1, v53);
        goto LABEL_265;
      }

      if (v105 <= 2)
      {
        if (v105 != 1)
        {
          if (v105 == 2)
          {
            goto LABEL_250;
          }

LABEL_263:
          memcpy(a1 + v52, a2 + v52, *(v54 + 64));
          goto LABEL_264;
        }

        goto LABEL_249;
      }

LABEL_250:
      v204 = sub_21DBF563C();
      (*(*(v204 - 8) + 16))(a1 + v52, a2 + v52, v204);
      swift_storeEnumTagMultiPayload();
      goto LABEL_264;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v65 = *a2;
        *a1 = *a2;
        v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v54 = *(v53 - 8);
        v66 = *(v54 + 48);
        v67 = v65;
        if (v66(a2 + v52, 1, v53))
        {
          goto LABEL_85;
        }

        v96 = swift_getEnumCaseMultiPayload();
        if (v96 > 4)
        {
          if (v96 <= 7)
          {
            if (v96 == 5 || v96 == 6)
            {
              goto LABEL_250;
            }

            goto LABEL_263;
          }

          if (v96 != 8 && v96 != 9)
          {
            goto LABEL_263;
          }

          goto LABEL_249;
        }

        if (v96 > 2)
        {
          goto LABEL_250;
        }

        if (v96 == 1)
        {
          goto LABEL_249;
        }

        if (v96 != 2)
        {
          goto LABEL_263;
        }
      }

      else
      {
        v51 = *a2;
        *a1 = *a2;
        v52 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v53 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v54 = *(v53 - 8);
        v55 = *(v54 + 48);
        v56 = v51;
        if (v55(a2 + v52, 1, v53))
        {
          goto LABEL_85;
        }

        v95 = swift_getEnumCaseMultiPayload();
        if (v95 > 4)
        {
          if (v95 <= 7)
          {
            if (v95 == 5 || v95 == 6)
            {
              goto LABEL_250;
            }

            goto LABEL_263;
          }

          if (v95 != 8 && v95 != 9)
          {
            goto LABEL_263;
          }

          goto LABEL_249;
        }

        if (v95 > 2)
        {
          goto LABEL_250;
        }

        if (v95 == 1)
        {
          goto LABEL_249;
        }

        if (v95 != 2)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_250;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_103:
        memcpy(a1, a2, *(*(v15 - 8) + 64));
        goto LABEL_266;
      }

      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 4)
      {
        if (v31 > 2)
        {
LABEL_174:
          v152 = sub_21DBF563C();
          (*(*(v152 - 8) + 16))(a1, a2, v152);
          swift_storeEnumTagMultiPayload();
          goto LABEL_222;
        }

        if (v31 != 1)
        {
          if (v31 == 2)
          {
            goto LABEL_174;
          }

          goto LABEL_221;
        }

LABEL_178:
        v154 = *a2;
        *a1 = *a2;
        v155 = v154;
        swift_storeEnumTagMultiPayload();
        goto LABEL_222;
      }

      if (v31 > 7)
      {
        if (v31 == 8 || v31 == 9)
        {
          goto LABEL_178;
        }
      }

      else if (v31 == 5 || v31 == 6)
      {
        goto LABEL_174;
      }

LABEL_221:
      memcpy(a1, a2, *(*(v30 - 8) + 64));
LABEL_222:
      v164 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v165 = v164[5];
      v166 = a1 + v165;
      v167 = a2 + v165;
      if (*(a2 + v165 + 8))
      {
        *v166 = *v167;
        *(v166 + 1) = *(v167 + 1);
        v168 = *(v167 + 2);
        v169 = *(v167 + 3);
        v170 = *(v167 + 4);
        v171 = *(v167 + 5);
        v211 = *(v167 + 6);
        v225 = *(v167 + 7);
        v218 = v167[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v168, v169, v170, v171, v211, v225, v218);
        *(v166 + 2) = v168;
        *(v166 + 3) = v169;
        *(v166 + 4) = v170;
        *(v166 + 5) = v171;
        *(v166 + 6) = v211;
        *(v166 + 7) = v225;
        v166[64] = v218;
        v166[65] = v167[65];
        v166[66] = v167[66];
        v166[67] = v167[67];
        v166[68] = v167[68];
        v172 = v167[120];
        if (v172 == 255)
        {
          v183 = *(v167 + 72);
          v184 = *(v167 + 88);
          v185 = *(v167 + 104);
          v166[120] = v167[120];
          *(v166 + 104) = v185;
          *(v166 + 88) = v184;
          *(v166 + 72) = v183;
        }

        else
        {
          v219 = *(v167 + 10);
          v226 = *(v167 + 9);
          v173 = *(v167 + 12);
          v212 = *(v167 + 11);
          v174 = *(v167 + 13);
          v175 = *(v167 + 14);
          v176 = v172 & 1;
          sub_21D0FB960(v226, v219, v212, v173, v174, v175, v172 & 1);
          *(v166 + 9) = v226;
          *(v166 + 10) = v219;
          *(v166 + 11) = v212;
          *(v166 + 12) = v173;
          *(v166 + 13) = v174;
          *(v166 + 14) = v175;
          v166[120] = v176;
        }

        v166[121] = v167[121];
        goto LABEL_228;
      }

LABEL_225:
      v177 = *v167;
      v178 = *(v167 + 1);
      v179 = *(v167 + 3);
      *(v166 + 2) = *(v167 + 2);
      *(v166 + 3) = v179;
      *v166 = v177;
      *(v166 + 1) = v178;
      v180 = *(v167 + 4);
      v181 = *(v167 + 5);
      v182 = *(v167 + 6);
      *(v166 + 106) = *(v167 + 106);
      *(v166 + 5) = v181;
      *(v166 + 6) = v182;
      *(v166 + 4) = v180;
LABEL_228:
      *(a1 + v164[6]) = *(a2 + v164[6]);
      *(a1 + v164[7]) = *(a2 + v164[7]);
      *(a1 + v164[8]) = *(a2 + v164[8]);
      *(a1 + v164[9]) = *(a2 + v164[9]);
      *(a1 + v164[10]) = *(a2 + v164[10]);
      v186 = v164[11];
      v187 = *(a2 + v186);
      *(a1 + v186) = v187;
      v188 = v187;
      goto LABEL_265;
    }

    v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v61 = swift_getEnumCaseMultiPayload();
    if (v61 <= 4)
    {
      if (v61 > 2)
      {
LABEL_182:
        v158 = sub_21DBF563C();
        (*(*(v158 - 8) + 16))(a1, a2, v158);
        swift_storeEnumTagMultiPayload();
        goto LABEL_232;
      }

      if (v61 != 1)
      {
        if (v61 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_231;
      }

LABEL_186:
      v159 = *a2;
      *a1 = *a2;
      v160 = v159;
      swift_storeEnumTagMultiPayload();
      goto LABEL_232;
    }

    if (v61 > 7)
    {
      if (v61 == 8 || v61 == 9)
      {
        goto LABEL_186;
      }
    }

    else if (v61 == 5 || v61 == 6)
    {
      goto LABEL_182;
    }

LABEL_231:
    memcpy(a1, a2, *(*(v60 - 8) + 64));
LABEL_232:
    v164 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v189 = v164[5];
    v166 = a1 + v189;
    v167 = a2 + v189;
    if (*(a2 + v189 + 8))
    {
      *v166 = *v167;
      *(v166 + 1) = *(v167 + 1);
      v190 = *(v167 + 2);
      v191 = *(v167 + 3);
      v192 = *(v167 + 4);
      v193 = *(v167 + 5);
      v213 = *(v167 + 6);
      v227 = *(v167 + 7);
      v220 = v167[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v190, v191, v192, v193, v213, v227, v220);
      *(v166 + 2) = v190;
      *(v166 + 3) = v191;
      *(v166 + 4) = v192;
      *(v166 + 5) = v193;
      *(v166 + 6) = v213;
      *(v166 + 7) = v227;
      v166[64] = v220;
      v166[65] = v167[65];
      v166[66] = v167[66];
      v166[67] = v167[67];
      v166[68] = v167[68];
      v194 = v167[120];
      if (v194 == 255)
      {
        v199 = *(v167 + 72);
        v200 = *(v167 + 88);
        v201 = *(v167 + 104);
        v166[120] = v167[120];
        *(v166 + 104) = v201;
        *(v166 + 88) = v200;
        *(v166 + 72) = v199;
      }

      else
      {
        v221 = *(v167 + 10);
        v228 = *(v167 + 9);
        v195 = *(v167 + 12);
        v214 = *(v167 + 11);
        v196 = *(v167 + 13);
        v197 = *(v167 + 14);
        v198 = v194 & 1;
        sub_21D0FB960(v228, v221, v214, v195, v196, v197, v194 & 1);
        *(v166 + 9) = v228;
        *(v166 + 10) = v221;
        *(v166 + 11) = v214;
        *(v166 + 12) = v195;
        *(v166 + 13) = v196;
        *(v166 + 14) = v197;
        v166[120] = v198;
      }

      v166[121] = v167[121];
      goto LABEL_228;
    }

    goto LABEL_225;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        switch(v10)
        {
          case 6:
            v40 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v41 = *(v40 - 8);
            if ((*(v41 + 48))(a2, 1, v40))
            {
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v42 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v72 = *(v40 + 20);
              v73 = sub_21DBF6C1C();
              v215 = *(*(v73 - 8) + 16);
              sub_21DBF8E0C();
              v215(a1 + v72, a2 + v72, v73);
              (*(v41 + 56))(a1, 0, 1, v40);
            }

            v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v75 = (a1 + v74);
            v76 = (a2 + v74);
            if (v76[1])
            {
              *v75 = *v76;
              v75[1] = v76[1];
              v77 = v76[2];
              v75[2] = v77;
              sub_21DBF8E0C();
              v78 = v77;
            }

            else
            {
              v79 = *v76;
              v75[2] = v76[2];
              *v75 = v79;
            }

            goto LABEL_240;
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
              v87 = sub_21DBF563C();
              (*(*(v87 - 8) + 16))(a1, a2, v87);
              *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
              (*(v49 + 56))(a1, 0, 1, v48);
            }

            v88 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v88 + 20)) = *(a2 + *(v88 + 20));
            goto LABEL_240;
          case 8:
            *a1 = *a2;
            v11 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v12 = sub_21DBF8D7C();
            (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
LABEL_240:
            swift_storeEnumTagMultiPayload();
            goto LABEL_241;
        }

LABEL_55:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_241:
        *(a1 + *(v4 + 48)) = *(a2 + *(v4 + 48));
        (*(v5 + 56))(a1, 0, 1, v4);
        return a1;
      }

      if (v10 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v28 = a2[2];
        a1[2] = v28;
        v29 = v28;
        goto LABEL_240;
      }

      v230 = v4;
      v43 = *a2;
      *a1 = *a2;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v44 - 8);
      v45 = *(v37 + 48);
      v46 = v43;
      if (v45(a2 + v35, 1, v44))
      {
LABEL_52:
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v35, a2 + v35, *(*(v47 - 8) + 64));
        v4 = v230;
        goto LABEL_240;
      }

      v80 = swift_getEnumCaseMultiPayload();
      v63 = v44;
      v64 = v35;
      if (v80 > 4)
      {
        v4 = v230;
        if (v80 <= 7)
        {
          if (v80 == 5 || v80 == 6)
          {
            goto LABEL_190;
          }

          goto LABEL_238;
        }

        if (v80 != 8 && v80 != 9)
        {
          goto LABEL_238;
        }

LABEL_193:
        v162 = *(a2 + v64);
        *(a1 + v64) = v162;
        v163 = v162;
        swift_storeEnumTagMultiPayload();
        goto LABEL_239;
      }

      v4 = v230;
      if (v80 <= 2)
      {
        if (v80 != 1)
        {
          if (v80 == 2)
          {
            goto LABEL_190;
          }

LABEL_238:
          memcpy(a1 + v64, a2 + v64, *(v37 + 64));
          goto LABEL_239;
        }

        goto LABEL_193;
      }

LABEL_190:
      v161 = sub_21DBF563C();
      (*(*(v161 - 8) + 16))(a1 + v64, a2 + v64, v161);
      swift_storeEnumTagMultiPayload();
LABEL_239:
      (*(v37 + 56))(a1 + v64, 0, 1, v63);
      goto LABEL_240;
    }

    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_55;
        }

        v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v20 = swift_getEnumCaseMultiPayload();
        v222 = v5;
        v229 = v4;
        if (v20 <= 4)
        {
          if (v20 > 2)
          {
LABEL_104:
            v89 = sub_21DBF563C();
            (*(*(v89 - 8) + 16))(a1, a2, v89);
            swift_storeEnumTagMultiPayload();
            goto LABEL_160;
          }

          if (v20 != 1)
          {
            if (v20 == 2)
            {
              goto LABEL_104;
            }

            goto LABEL_159;
          }

LABEL_107:
          v90 = *a2;
          *a1 = *a2;
          v91 = v90;
          swift_storeEnumTagMultiPayload();
          goto LABEL_160;
        }

        if (v20 > 7)
        {
          if (v20 == 8 || v20 == 9)
          {
            goto LABEL_107;
          }
        }

        else if (v20 == 5 || v20 == 6)
        {
          goto LABEL_104;
        }

LABEL_159:
        memcpy(a1, a2, *(*(v19 - 8) + 64));
LABEL_160:
        v108 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v109 = v108[5];
        v110 = a1 + v109;
        v111 = a2 + v109;
        if (*(a2 + v109 + 8))
        {
          v216 = a2;
          *v110 = *v111;
          *(v110 + 1) = *(v111 + 1);
          v112 = *(v111 + 2);
          v113 = *(v111 + 3);
          v114 = *(v111 + 4);
          v115 = *(v111 + 5);
          v116 = *(v111 + 6);
          v117 = *(v111 + 7);
          v207 = v111[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v112, v113, v114, v115, v116, v117, v207);
          *(v110 + 2) = v112;
          *(v110 + 3) = v113;
          *(v110 + 4) = v114;
          *(v110 + 5) = v115;
          *(v110 + 6) = v116;
          *(v110 + 7) = v117;
          v110[64] = v207;
          v110[65] = v111[65];
          v110[66] = v111[66];
          v110[67] = v111[67];
          v110[68] = v111[68];
          v118 = v111[120];
          if (v118 == 255)
          {
            v131 = *(v111 + 72);
            v132 = *(v111 + 88);
            v133 = *(v111 + 104);
            v110[120] = v111[120];
            *(v110 + 104) = v133;
            *(v110 + 88) = v132;
            *(v110 + 72) = v131;
          }

          else
          {
            v119 = *(v111 + 9);
            v120 = *(v111 + 10);
            v121 = *(v111 + 12);
            v208 = *(v111 + 11);
            v122 = *(v111 + 13);
            v123 = *(v111 + 14);
            v124 = v118 & 1;
            sub_21D0FB960(v119, v120, v208, v121, v122, v123, v118 & 1);
            *(v110 + 9) = v119;
            *(v110 + 10) = v120;
            *(v110 + 11) = v208;
            *(v110 + 12) = v121;
            *(v110 + 13) = v122;
            *(v110 + 14) = v123;
            v110[120] = v124;
          }

          v5 = v222;
          v4 = v229;
          v110[121] = v111[121];
          a2 = v216;
          goto LABEL_166;
        }

LABEL_163:
        v125 = *v111;
        v126 = *(v111 + 1);
        v127 = *(v111 + 3);
        *(v110 + 2) = *(v111 + 2);
        *(v110 + 3) = v127;
        *v110 = v125;
        *(v110 + 1) = v126;
        v128 = *(v111 + 4);
        v129 = *(v111 + 5);
        v130 = *(v111 + 6);
        *(v110 + 106) = *(v111 + 106);
        *(v110 + 5) = v129;
        *(v110 + 6) = v130;
        *(v110 + 4) = v128;
LABEL_166:
        *(a1 + v108[6]) = *(a2 + v108[6]);
        *(a1 + v108[7]) = *(a2 + v108[7]);
        *(a1 + v108[8]) = *(a2 + v108[8]);
        *(a1 + v108[9]) = *(a2 + v108[9]);
        *(a1 + v108[10]) = *(a2 + v108[10]);
        v134 = v108[11];
        v135 = *(a2 + v134);
        *(a1 + v134) = v135;
        v136 = v135;
        goto LABEL_240;
      }

      v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v33 = swift_getEnumCaseMultiPayload();
      v223 = v5;
      if (v33 <= 4)
      {
        if (v33 > 2)
        {
LABEL_108:
          v92 = sub_21DBF563C();
          (*(*(v92 - 8) + 16))(a1, a2, v92);
          swift_storeEnumTagMultiPayload();
          goto LABEL_168;
        }

        if (v33 != 1)
        {
          if (v33 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_167;
        }

LABEL_111:
        v93 = *a2;
        *a1 = *a2;
        v94 = v93;
        swift_storeEnumTagMultiPayload();
        goto LABEL_168;
      }

      if (v33 > 7)
      {
        if (v33 == 8 || v33 == 9)
        {
          goto LABEL_111;
        }
      }

      else if (v33 == 5 || v33 == 6)
      {
        goto LABEL_108;
      }

LABEL_167:
      memcpy(a1, a2, *(*(v32 - 8) + 64));
LABEL_168:
      v108 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v137 = v108[5];
      v110 = a1 + v137;
      v111 = a2 + v137;
      if (*(a2 + v137 + 8))
      {
        v217 = a2;
        *v110 = *v111;
        *(v110 + 1) = *(v111 + 1);
        v138 = *(v111 + 2);
        v139 = *(v111 + 3);
        v140 = *(v111 + 4);
        v141 = *(v111 + 5);
        v142 = *(v111 + 6);
        v205 = *(v111 + 7);
        v209 = v111[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v138, v139, v140, v141, v142, v205, v209);
        *(v110 + 2) = v138;
        *(v110 + 3) = v139;
        *(v110 + 4) = v140;
        *(v110 + 5) = v141;
        *(v110 + 6) = v142;
        *(v110 + 7) = v205;
        v110[64] = v209;
        v110[65] = v111[65];
        v110[66] = v111[66];
        v110[67] = v111[67];
        v110[68] = v111[68];
        v143 = v111[120];
        if (v143 == 255)
        {
          v149 = *(v111 + 72);
          v150 = *(v111 + 88);
          v151 = *(v111 + 104);
          v110[120] = v111[120];
          *(v110 + 104) = v151;
          *(v110 + 88) = v150;
          *(v110 + 72) = v149;
        }

        else
        {
          v144 = *(v111 + 9);
          v145 = *(v111 + 12);
          v206 = *(v111 + 11);
          v210 = *(v111 + 10);
          v146 = *(v111 + 13);
          v147 = *(v111 + 14);
          v148 = v143 & 1;
          sub_21D0FB960(v144, v210, v206, v145, v146, v147, v143 & 1);
          *(v110 + 9) = v144;
          *(v110 + 10) = v210;
          *(v110 + 11) = v206;
          *(v110 + 12) = v145;
          *(v110 + 13) = v146;
          *(v110 + 14) = v147;
          v110[120] = v148;
        }

        a2 = v217;
        v5 = v223;
        v110[121] = v111[121];
        goto LABEL_166;
      }

      goto LABEL_163;
    }

    if (v10 == 2)
    {
      v230 = v4;
      v34 = *a2;
      *a1 = *a2;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v36 - 8);
      v38 = *(v37 + 48);
      v39 = v34;
      if (v38(a2 + v35, 1, v36))
      {
        goto LABEL_52;
      }

      v62 = swift_getEnumCaseMultiPayload();
      v63 = v36;
      v64 = v35;
      if (v62 > 4)
      {
        v4 = v230;
        if (v62 <= 7)
        {
          if (v62 == 5 || v62 == 6)
          {
            goto LABEL_190;
          }

          goto LABEL_238;
        }

        if (v62 != 8 && v62 != 9)
        {
          goto LABEL_238;
        }

        goto LABEL_193;
      }

      v4 = v230;
      if (v62 > 2)
      {
        goto LABEL_190;
      }

      if (v62 == 1)
      {
        goto LABEL_193;
      }

      if (v62 != 2)
      {
        goto LABEL_238;
      }

      goto LABEL_190;
    }

    v21 = *a2;
    *a1 = *a2;
    v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v26 = v21;
    if (v25(a2 + v22, 1, v23))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v22, a2 + v22, *(*(v27 - 8) + 64));
      goto LABEL_240;
    }

    v59 = swift_getEnumCaseMultiPayload();
    if (v59 > 4)
    {
      if (v59 <= 7)
      {
        if (v59 == 5 || v59 == 6)
        {
          goto LABEL_175;
        }

        goto LABEL_229;
      }

      if (v59 != 8 && v59 != 9)
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v59 > 2)
      {
LABEL_175:
        v153 = sub_21DBF563C();
        (*(*(v153 - 8) + 16))(a1 + v22, a2 + v22, v153);
        swift_storeEnumTagMultiPayload();
LABEL_230:
        (*(v24 + 56))(a1 + v22, 0, 1, v23);
        goto LABEL_240;
      }

      if (v59 != 1)
      {
        if (v59 == 2)
        {
          goto LABEL_175;
        }

LABEL_229:
        memcpy(a1 + v22, a2 + v22, *(v24 + 64));
        goto LABEL_230;
      }
    }

    v156 = *(a2 + v22);
    *(a1 + v22) = v156;
    v157 = v156;
    swift_storeEnumTagMultiPayload();
    goto LABEL_230;
  }

LABEL_11:
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8) - 8) + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *sub_21D7C8BF8(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a2, 1, v4))
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v24 = *(v23 - 8);
          if ((*(v24 + 48))(a2, 1, v23))
          {
            v25 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v25 - 8) + 64));
          }

          else
          {
            v28 = sub_21DBF563C();
            (*(*(v28 - 8) + 32))(a1, a2, v28);
            a1[*(v23 + 20)] = a2[*(v23 + 20)];
            (*(v24 + 56))(a1, 0, 1, v23);
          }

          v29 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v29 + 20)] = *&a2[*(v29 + 20)];
          goto LABEL_91;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_36;
        }

        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v20 = sub_21DBF8D7C();
        (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
LABEL_91:
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v13 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v14 = *(v13 - 8);
          if ((*(v14 + 48))(a2, 1, v13))
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v15 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v30 = *(v13 + 20);
            v31 = sub_21DBF6C1C();
            (*(*(v31 - 8) + 32))(&a1[v30], &a2[v30], v31);
            (*(v14 + 56))(a1, 0, 1, v13);
          }

          v32 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v33 = &a1[v32];
          v34 = &a2[v32];
          *v33 = *v34;
          *(v33 + 2) = *(v34 + 2);
          goto LABEL_91;
        }

        goto LABEL_36;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(&a2[v16], 1, v17))
      {
        v26 = swift_getEnumCaseMultiPayload();
        if (v26 <= 3)
        {
          if (v26 == 2 || v26 == 3)
          {
            goto LABEL_61;
          }
        }

        else if (v26 == 4 || v26 == 5 || v26 == 6)
        {
          goto LABEL_61;
        }

        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = swift_getEnumCaseMultiPayload();
          if (v21 <= 3)
          {
            if (v21 == 2 || v21 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v21 == 4 || v21 == 5 || v21 == 6)
          {
            goto LABEL_13;
          }

          goto LABEL_68;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v11 = swift_getEnumCaseMultiPayload();
          if (v11 <= 3)
          {
            if (v11 == 2 || v11 == 3)
            {
              goto LABEL_13;
            }
          }

          else if (v11 == 4 || v11 == 5 || v11 == 6)
          {
LABEL_13:
            v12 = sub_21DBF563C();
            (*(*(v12 - 8) + 32))(a1, a2, v12);
            swift_storeEnumTagMultiPayload();
LABEL_69:
            v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v38 = v37[5];
            v39 = &a1[v38];
            v40 = &a2[v38];
            v41 = v40[3];
            v39[2] = v40[2];
            v39[3] = v41;
            v42 = v40[1];
            *v39 = *v40;
            v39[1] = v42;
            *(v39 + 106) = *(v40 + 106);
            v43 = v40[6];
            v39[5] = v40[5];
            v39[6] = v43;
            v39[4] = v40[4];
            a1[v37[6]] = a2[v37[6]];
            a1[v37[7]] = a2[v37[7]];
            a1[v37[8]] = a2[v37[8]];
            a1[v37[9]] = a2[v37[9]];
            a1[v37[10]] = a2[v37[10]];
            *&a1[v37[11]] = *&a2[v37[11]];
            goto LABEL_91;
          }

LABEL_68:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_69;
        }

LABEL_36:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_92:
        a1[*(v4 + 48)] = a2[*(v4 + 48)];
        (*(v5 + 56))(a1, 0, 1, v4);
        return a1;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        if ((*(v18 + 48))(&a2[v16], 1, v17))
        {
          goto LABEL_33;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 <= 3)
        {
          if (v35 == 2 || v35 == 3)
          {
            goto LABEL_61;
          }
        }

        else if (v35 == 4 || v35 == 5 || v35 == 6)
        {
LABEL_61:
          v36 = sub_21DBF563C();
          (*(*(v36 - 8) + 32))(&a1[v16], &a2[v16], v36);
          swift_storeEnumTagMultiPayload();
LABEL_90:
          (*(v18 + 56))(&a1[v16], 0, 1, v17);
          goto LABEL_91;
        }

LABEL_89:
        memcpy(&a1[v16], &a2[v16], *(v18 + 64));
        goto LABEL_90;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(&a2[v16], 1, v17))
      {
        v27 = swift_getEnumCaseMultiPayload();
        if (v27 <= 3)
        {
          if (v27 == 2 || v27 == 3)
          {
            goto LABEL_61;
          }
        }

        else if (v27 == 4 || v27 == 5 || v27 == 6)
        {
          goto LABEL_61;
        }

        goto LABEL_89;
      }
    }

LABEL_33:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v16], &a2[v16], *(*(v22 - 8) + 64));
    goto LABEL_91;
  }

  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8) - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *sub_21D7C9DBC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      sub_21D0CF7E0(a1, &qword_27CE5E8F0);
      goto LABEL_14;
    }

    if (a1 == a2)
    {
LABEL_186:
      *(a1 + *(v4 + 48)) = *(a2 + *(v4 + 48));
      return a1;
    }

    sub_21D106E58(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v42 = swift_getEnumCaseMultiPayload();
          if (v42 <= 3)
          {
            if (v42 == 2 || v42 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v42 == 4 || v42 == 5 || v42 == 6)
          {
            goto LABEL_26;
          }

          goto LABEL_156;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_26;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_26:
            v20 = sub_21DBF563C();
            (*(*(v20 - 8) + 32))(a1, a2, v20);
            swift_storeEnumTagMultiPayload();
LABEL_157:
            v76 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v77 = v76[5];
            v78 = (a1 + v77);
            v79 = (a2 + v77);
            v80 = v79[3];
            v78[2] = v79[2];
            v78[3] = v80;
            v81 = v79[1];
            *v78 = *v79;
            v78[1] = v81;
            *(v78 + 106) = *(v79 + 106);
            v82 = v79[6];
            v78[5] = v79[5];
            v78[6] = v82;
            v78[4] = v79[4];
            *(a1 + v76[6]) = *(a2 + v76[6]);
            *(a1 + v76[7]) = *(a2 + v76[7]);
            *(a1 + v76[8]) = *(a2 + v76[8]);
            *(a1 + v76[9]) = *(a2 + v76[9]);
            *(a1 + v76[10]) = *(a2 + v76[10]);
            *(a1 + v76[11]) = *(a2 + v76[11]);
            goto LABEL_185;
          }

LABEL_156:
          memcpy(a1, a2, *(*(v18 - 8) + 64));
          goto LABEL_157;
        }

        goto LABEL_97;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(a2 + v37, 1, v38))
        {
LABEL_87:
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v37, a2 + v37, *(*(v47 - 8) + 64));
          goto LABEL_185;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 <= 3)
        {
          if (v66 == 2 || v66 == 3)
          {
            goto LABEL_140;
          }
        }

        else if (v66 == 4 || v66 == 5 || v66 == 6)
        {
          goto LABEL_140;
        }
      }

      else
      {
        *a1 = *a2;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(a2 + v37, 1, v38))
        {
          goto LABEL_87;
        }

        v74 = swift_getEnumCaseMultiPayload();
        if (v74 <= 3)
        {
          if (v74 == 2 || v74 == 3)
          {
            goto LABEL_140;
          }
        }

        else if (v74 == 4 || v74 == 5 || v74 == 6)
        {
LABEL_140:
          v75 = sub_21DBF563C();
          (*(*(v75 - 8) + 32))(a1 + v37, a2 + v37, v75);
          swift_storeEnumTagMultiPayload();
LABEL_184:
          (*(v39 + 56))(a1 + v37, 0, 1, v38);
          goto LABEL_185;
        }
      }

LABEL_183:
      memcpy(a1 + v37, a2 + v37, *(v39 + 64));
      goto LABEL_184;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v48 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v49 = *(v48 - 8);
        if ((*(v49 + 48))(a2, 1, v48))
        {
          v50 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v50 - 8) + 64));
        }

        else
        {
          v67 = sub_21DBF563C();
          (*(*(v67 - 8) + 32))(a1, a2, v67);
          *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
          (*(v49 + 56))(a1, 0, 1, v48);
        }

        v68 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v68 + 20)) = *(a2 + *(v68 + 20));
        goto LABEL_185;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v40 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v41 = sub_21DBF8D7C();
        (*(*(v41 - 8) + 32))(a1 + v40, a2 + v40, v41);
LABEL_185:
        swift_storeEnumTagMultiPayload();
        goto LABEL_186;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v37 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(a2 + v37, 1, v38))
        {
          goto LABEL_87;
        }

        v65 = swift_getEnumCaseMultiPayload();
        if (v65 <= 3)
        {
          if (v65 == 2 || v65 == 3)
          {
            goto LABEL_140;
          }
        }

        else if (v65 == 4 || v65 == 5 || v65 == 6)
        {
          goto LABEL_140;
        }

        goto LABEL_183;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(a2, 1, v29))
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v31 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v69 = *(v29 + 20);
          v70 = sub_21DBF6C1C();
          (*(*(v70 - 8) + 32))(a1 + v69, a2 + v69, v70);
          (*(v30 + 56))(a1, 0, 1, v29);
        }

        v71 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v72 = a1 + v71;
        v73 = a2 + v71;
        *v72 = *v73;
        *(v72 + 2) = *(v73 + 2);
        goto LABEL_185;
      }
    }

LABEL_97:
    memcpy(a1, a2, *(*(v16 - 8) + 64));
    goto LABEL_186;
  }

  if (!v8)
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 > 6)
      {
        if (v10 == 7)
        {
          v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v35 = *(v34 - 8);
          if ((*(v35 + 48))(a2, 1, v34))
          {
            v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v36 - 8) + 64));
          }

          else
          {
            v45 = sub_21DBF563C();
            (*(*(v45 - 8) + 32))(a1, a2, v45);
            *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));
            (*(v35 + 56))(a1, 0, 1, v34);
          }

          v46 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v46 + 20)) = *(a2 + *(v46 + 20));
          goto LABEL_163;
        }

        if (v10 != 8)
        {
          goto LABEL_54;
        }

        *a1 = *a2;
        v27 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v28 = sub_21DBF8D7C();
        (*(*(v28 - 8) + 32))(a1 + v27, a2 + v27, v28);
LABEL_163:
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      if (v10 != 4)
      {
        if (v10 == 6)
        {
          v21 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(a2, 1, v21))
          {
            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v23 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v51 = *(v21 + 20);
            v52 = sub_21DBF6C1C();
            (*(*(v52 - 8) + 32))(a1 + v51, a2 + v51, v52);
            (*(v22 + 56))(a1, 0, 1, v21);
          }

          v53 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v54 = a1 + v53;
          v55 = a2 + v53;
          *v54 = *v55;
          *(v54 + 2) = *(v55 + 2);
          goto LABEL_163;
        }

        goto LABEL_54;
      }

      *a1 = *a2;
      v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(a2 + v24, 1, v25))
      {
        v43 = swift_getEnumCaseMultiPayload();
        if (v43 <= 3)
        {
          if (v43 == 2 || v43 == 3)
          {
            goto LABEL_96;
          }
        }

        else if (v43 == 4 || v43 == 5 || v43 == 6)
        {
          goto LABEL_96;
        }

        goto LABEL_161;
      }
    }

    else
    {
      if (v10 <= 1)
      {
        if (!v10)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v32 = swift_getEnumCaseMultiPayload();
          if (v32 <= 3)
          {
            if (v32 == 2 || v32 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v32 == 4 || v32 == 5 || v32 == 6)
          {
            goto LABEL_11;
          }

          goto LABEL_104;
        }

        if (v10 == 1)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v12 = swift_getEnumCaseMultiPayload();
          if (v12 <= 3)
          {
            if (v12 == 2 || v12 == 3)
            {
              goto LABEL_11;
            }
          }

          else if (v12 == 4 || v12 == 5 || v12 == 6)
          {
LABEL_11:
            v13 = sub_21DBF563C();
            (*(*(v13 - 8) + 32))(a1, a2, v13);
            swift_storeEnumTagMultiPayload();
LABEL_105:
            v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v59 = v58[5];
            v60 = (a1 + v59);
            v61 = (a2 + v59);
            v62 = v61[3];
            v60[2] = v61[2];
            v60[3] = v62;
            v63 = v61[1];
            *v60 = *v61;
            v60[1] = v63;
            *(v60 + 106) = *(v61 + 106);
            v64 = v61[6];
            v60[5] = v61[5];
            v60[6] = v64;
            v60[4] = v61[4];
            *(a1 + v58[6]) = *(a2 + v58[6]);
            *(a1 + v58[7]) = *(a2 + v58[7]);
            *(a1 + v58[8]) = *(a2 + v58[8]);
            *(a1 + v58[9]) = *(a2 + v58[9]);
            *(a1 + v58[10]) = *(a2 + v58[10]);
            *(a1 + v58[11]) = *(a2 + v58[11]);
            goto LABEL_163;
          }

LABEL_104:
          memcpy(a1, a2, *(*(v11 - 8) + 64));
          goto LABEL_105;
        }

LABEL_54:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_164:
        *(a1 + *(v4 + 48)) = *(a2 + *(v4 + 48));
        (*(v5 + 56))(a1, 0, 1, v4);
        return a1;
      }

      if (v10 != 2)
      {
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        if ((*(v26 + 48))(a2 + v24, 1, v25))
        {
          goto LABEL_51;
        }

        v56 = swift_getEnumCaseMultiPayload();
        if (v56 <= 3)
        {
          if (v56 == 2 || v56 == 3)
          {
            goto LABEL_96;
          }
        }

        else if (v56 == 4 || v56 == 5 || v56 == 6)
        {
LABEL_96:
          v57 = sub_21DBF563C();
          (*(*(v57 - 8) + 32))(a1 + v24, a2 + v24, v57);
          swift_storeEnumTagMultiPayload();
LABEL_162:
          (*(v26 + 56))(a1 + v24, 0, 1, v25);
          goto LABEL_163;
        }

LABEL_161:
        memcpy(a1 + v24, a2 + v24, *(v26 + 64));
        goto LABEL_162;
      }

      *a1 = *a2;
      v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(a2 + v24, 1, v25))
      {
        v44 = swift_getEnumCaseMultiPayload();
        if (v44 <= 3)
        {
          if (v44 == 2 || v44 == 3)
          {
            goto LABEL_96;
          }
        }

        else if (v44 == 4 || v44 == 5 || v44 == 6)
        {
          goto LABEL_96;
        }

        goto LABEL_161;
      }
    }

LABEL_51:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(a1 + v24, a2 + v24, *(*(v33 - 8) + 64));
    goto LABEL_163;
  }

LABEL_14:
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8) - 8) + 64);

  return memcpy(a1, a2, v14);
}

void sub_21D7CC0BC()
{
  sub_21D7C299C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_21D7CC148(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  v41 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v41);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v4 + 96);
    v50 = *(v12 + 72);
    v51 = v19;
    v13.n128_u64[0] = 136315138;
    v42 = v13;
    v43 = v4;
    while (1)
    {
      sub_21D7CE5D8(v18, v15, type metadata accessor for TTRRemindersListViewModel.Item);
      v54 = sub_21DBFC8EC();
      v55 = v21;
      MEMORY[0x223D42AA0](0x746964652DLL, 0xE500000000000000);
      v22 = sub_21D5F2108(v15, v54, v55);
      v24 = v23;

      if (v22)
      {
        if (__OFADD__(v17++, 1))
        {
          __break(1u);
          return result;
        }

        ObjectType = swift_getObjectType();
        v24[9](&v54, ObjectType, v24);
        v48(&v54);
        __swift_destroy_boxed_opaque_existential_0(&v54);
        v54 = 3;
        v24[13](&v54, ObjectType, v24);
        v54 = 0;
        v24[14](&v54, ObjectType, v24);
        swift_unknownObjectRelease();
        v20 = v15;
      }

      else
      {
        if (qword_27CE56CB8 != -1)
        {
          swift_once();
        }

        v28 = sub_21DBF84BC();
        __swift_project_value_buffer(v28, qword_27CE61A20);
        sub_21D7CE5D8(v15, v10, type metadata accessor for TTRRemindersListViewModel.Item);
        v29 = sub_21DBF84AC();
        v30 = sub_21DBFAEBC();
        if (os_log_type_enabled(v29, v30))
        {
          v46 = v30;
          v31 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v57 = v47;
          v32 = v31;
          *v31 = v42.n128_u32[0];
          v33 = v10;
          sub_21D7CE5D8(v10, v44, type metadata accessor for TTRRemindersListViewModel.Item);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A380);
          if (swift_dynamicCast())
          {
            sub_21D0D0FD0(v52, &v54);
            __swift_project_boxed_opaque_existential_1(&v54, v56);
            v34 = sub_21DBFC5BC();
            v36 = v35;
            __swift_destroy_boxed_opaque_existential_0(&v54);
          }

          else
          {
            v53 = 0;
            memset(v52, 0, sizeof(v52));
            sub_21D0CF7E0(v52, &qword_27CE5A388);
            v54 = 0;
            v55 = 0xE000000000000000;
            v37 = v40;
            TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v40);
            sub_21DBFC14C();
            sub_21D106E58(v37, type metadata accessor for TTRRemindersListViewModel.ItemID);
            v34 = v54;
            v36 = v55;
          }

          sub_21D106E58(v33, type metadata accessor for TTRRemindersListViewModel.Item);
          v38 = sub_21D0CDFB4(v34, v36, &v57);

          *(v32 + 1) = v38;
          _os_log_impl(&dword_21D0C9000, v29, v46, "TTRSECreateRemindersEditingPresenter: skip edit; failed to create editing session {item: %s}", v32, 0xCu);
          v39 = v47;
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x223D46520](v39, -1, -1);
          MEMORY[0x223D46520](v32, -1, -1);

          sub_21D106E58(v15, type metadata accessor for TTRRemindersListViewModel.Item);
          v10 = v33;
          goto LABEL_5;
        }

        sub_21D106E58(v10, type metadata accessor for TTRRemindersListViewModel.Item);
        v20 = v15;
      }

      sub_21D106E58(v20, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_5:
      v18 += v50;
      if (!--v16)
      {
        return v17;
      }
    }
  }

  return 0;
}

uint64_t sub_21D7CC720(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF4CAC();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &v77 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v20 = *(*(v1 + 48) + 16);

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
  v21 = sub_21D291698(v19);

  sub_21D106E58(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (!v21 || (v22 = *(*v21 + 128), swift_beginAccess(), v23 = *(v21 + v22), , , (v81 = v23) == 0))
  {

    if (qword_27CE56CB8 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE61A20);
    sub_21D7CE5D8(a1, v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAEBC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v88 = v35;
      *v34 = 136315138;
      v36 = sub_21D25D250();
      v38 = v37;
      sub_21D106E58(v8, type metadata accessor for TTRRemindersListViewModel.Item);
      v39 = sub_21D0CDFB4(v36, v38, &v88);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_21D0C9000, v32, v33, "TTRSECreateRemindersEditingPresenter#requestCommitForShowingReminderDetail: missing editingSessionState {item: %s}", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);

      return 0;
    }

    v40 = v8;
LABEL_11:
    sub_21D106E58(v40, type metadata accessor for TTRRemindersListViewModel.Item);
    return 0;
  }

  v24 = *(v2 + 112);
  swift_beginAccess();
  if (*(v24 + 40))
  {
    v79 = v2;
    v80 = v20;
    v25 = *(v24 + 48);
    v26 = a1;
    ObjectType = swift_getObjectType();
    v28 = *(v25 + 16);
    swift_unknownObjectRetain();
    v78 = ObjectType;
    v29 = ObjectType;
    a1 = v26;
    v28(v29, v25);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
    sub_21D106E58(v13, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
    v30 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v19, v16);
    sub_21D106E58(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106E58(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v30)
    {
      (*(v25 + 40))(v78, v25);
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v43 = Strong;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 24);
    v45 = swift_getObjectType();
    (*(v44 + 40))(v43, a1, v45, v44);
    swift_unknownObjectRelease();
  }

LABEL_17:
  swift_unknownObjectRelease();
LABEL_18:
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_21DBFBEEC();
  v46 = sub_21DBFC8EC();
  v48 = v47;

  v88 = v46;
  v89 = v48;
  MEMORY[0x223D42AA0](0xD00000000000001FLL, 0x800000021DC6B510);
  v49 = sub_21D5F2108(a1, v88, v89);
  v51 = v50;

  if (!v49)
  {
    if (qword_27CE56CB8 != -1)
    {
      swift_once();
    }

    v63 = sub_21DBF84BC();
    __swift_project_value_buffer(v63, qword_27CE61A20);
    v64 = v82;
    sub_21D7CE5D8(a1, v82, type metadata accessor for TTRRemindersListViewModel.Item);
    v65 = sub_21DBF84AC();
    v66 = sub_21DBFAEBC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v88 = v68;
      *v67 = 136315138;
      v69 = sub_21D25D250();
      v71 = v70;
      sub_21D106E58(v64, type metadata accessor for TTRRemindersListViewModel.Item);
      v72 = sub_21D0CDFB4(v69, v71, &v88);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_21D0C9000, v65, v66, "commitForShowingReminderDetail: failed to acquire editing session {item: %s}", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x223D46520](v68, -1, -1);
      MEMORY[0x223D46520](v67, -1, -1);

      return 0;
    }

    v40 = v64;
    goto LABEL_11;
  }

  v52 = swift_getObjectType();
  v53 = *(v51 + 32);
  swift_unknownObjectRetain();
  v53(&v88, v52, v51);
  v54 = v90;
  v55 = v91;
  __swift_project_boxed_opaque_existential_1(&v88, v90);
  v56 = (*(v55 + 48))(v54, v55);
  if (v57)
  {
    v86 = v56;
    v87 = v57;
    v58 = v83;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v59 = sub_21DBFBB3C();
    v61 = v60;
    (*(v84 + 8))(v58, v85);

    if ((v61 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v61) & 0xF;
    }

    else
    {
      v62 = v59 & 0xFFFFFFFFFFFFLL;
    }

    __swift_destroy_boxed_opaque_existential_0(&v88);
    if (v62)
    {
      goto LABEL_31;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v88);
  }

  TTRRemindersListEditingSession.effectiveParentList.getter(v52, v51, &v88);
  _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(&v88);
  sub_21D0CF7E0(&v88, &qword_27CE59DC0);
  v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v74 = sub_21DBFA12C();

  v75 = [v73 initWithString_];

  LOBYTE(v88) = 2;
  TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)(v75, 0, 0, &v88, 1, v52, v51);

  v88 = 1;
  (*(v51 + 104))(&v88, v52, v51);
LABEL_31:
  v88 = 0;
  (*(v51 + 112))(&v88, v52, v51);
  v76 = (*(v51 + 40))(v52, v51);

  swift_unknownObjectRelease_n();
  return v76;
}

uint64_t sub_21D7CD128(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(v1 + 112);
  result = swift_beginAccess();
  if (*(v15 + 40))
  {
    v17 = *(v15 + 48);
    v22 = a1;
    v23 = v17;
    v24 = *(a1 + 16);
    v21 = v17 + 16;
    swift_unknownObjectRetain();
    v18 = 0;
    while (v24 != v18)
    {
      sub_21D7CE5D8(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18++, v14, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
      ObjectType = swift_getObjectType();
      (*(v23 + 16))();
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
      sub_21D106E58(v11, type metadata accessor for TTRRemindersListViewModel.Item);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, v5);
      sub_21D106E58(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106E58(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106E58(v14, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v20)
      {
        (*(v23 + 32))(ObjectType);
        return swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7CD3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - v13;
  v14 = type metadata accessor for TTRRemindersListReminderCreationLocation(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 17);
  if (qword_27CE56CB8 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE61A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v19 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v19;
  *(inited + 56) = v20;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  sub_21D7CE5D8(a1, v16, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_storeEnumTagMultiPayload();
  v21 = v42;
  v22 = *(v42 + 48);
  sub_21D6479D8(v16, v9);
  v23 = v41;
  v24 = *(v41 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &unk_27CE5CD80);

    v25 = v40;
    sub_21D647CA8(v16, 1, v38, v22, v21, v40);
    sub_21D106E58(v16, type metadata accessor for TTRRemindersListReminderCreationLocation);
    if (v24(v25, 1, v10) == 1)
    {
      sub_21D0CF7E0(v25, &unk_27CE5CD80);
      return (*(v23 + 56))(v43, 1, 1, v10);
    }

    else
    {
      v33 = v37;
      sub_21D1056FC(v25, v37, type metadata accessor for TTRRemindersListViewModel.Item);
      v34 = v33;
      v35 = v43;
      sub_21D1056FC(v34, v43, type metadata accessor for TTRRemindersListViewModel.Item);
      return (*(v23 + 56))(v35, 0, 1, v10);
    }
  }

  else
  {
    v27 = v39;
    sub_21D1056FC(v9, v39, type metadata accessor for TTRRemindersListViewModel.Item);
    v28 = v43;
    sub_21D7CE5D8(v27, v43, type metadata accessor for TTRRemindersListViewModel.Item);
    (*(v23 + 56))(v28, 0, 1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v30 + 24);
        ObjectType = swift_getObjectType();
        (*(v31 + 24))(v30, v27, ObjectType, v31);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_21D106E58(v27, type metadata accessor for TTRRemindersListViewModel.Item);
    return sub_21D106E58(v16, type metadata accessor for TTRRemindersListReminderCreationLocation);
  }
}

uint64_t sub_21D7CD904()
{
  v1 = (*(v0 + 112) + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
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

uint64_t sub_21D7CD9EC(uint64_t a1, uint64_t a2)
{
  sub_21DBCCF04(a1, a2, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D7CDA54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRAutoCompleteReminderListScope();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21D7CDAC0()
{
  sub_21DBFA84C();
  *(v0 + 16) = sub_21DBFA83C();
  v2 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D7CDB54, v2, v1);
}

uint64_t sub_21D7CDB54()
{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t sub_21D7CDC5C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v60);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v55 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v24 - 8);
  v59 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v55 - v30;
  v57 = a1;
  sub_21D0D3954(a1, v17, &qword_27CE5E8E8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8F0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v61 = v32;
  v63 = v33 + 48;
  v64 = v34;
  if ((v34)(v17, 1) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5E8E8);
    v35 = 1;
  }

  else
  {
    sub_21D1056FC(v17, v23, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v31);
    sub_21D106E58(v23, type metadata accessor for TTRRemindersListViewModel.Item);
    v35 = 0;
  }

  v36 = *(v4 + 56);
  v36(v31, v35, 1, v3);
  sub_21D0D3954(v62, v14, &qword_27CE5E8E8);
  if (v64(v14, 1, v61) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5E8E8);
    v37 = 1;
  }

  else
  {
    sub_21D1056FC(v14, v20, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v28);
    sub_21D106E58(v20, type metadata accessor for TTRRemindersListViewModel.Item);
    v37 = 0;
  }

  v36(v28, v37, 1, v3);
  v38 = *(v60 + 48);
  sub_21D0D3954(v31, v7, &qword_27CE5FB90);
  sub_21D0D3954(v28, &v7[v38], &qword_27CE5FB90);
  v39 = *(v4 + 48);
  if (v39(v7, 1, v3) != 1)
  {
    v40 = v59;
    sub_21D0D3954(v7, v59, &qword_27CE5FB90);
    if (v39(&v7[v38], 1, v3) != 1)
    {
      v42 = &v7[v38];
      v43 = v55;
      sub_21D1056FC(v42, v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v44 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v40, v43);
      sub_21D106E58(v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v28, &qword_27CE5FB90);
      sub_21D0CF7E0(v31, &qword_27CE5FB90);
      sub_21D106E58(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v7, &qword_27CE5FB90);
      if ((v44 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    sub_21D0CF7E0(v28, &qword_27CE5FB90);
    sub_21D0CF7E0(v31, &qword_27CE5FB90);
    sub_21D106E58(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    sub_21D0CF7E0(v7, &qword_27CE5F2E0);
    v41 = 0;
    return v41 & 1;
  }

  sub_21D0CF7E0(v28, &qword_27CE5FB90);
  sub_21D0CF7E0(v31, &qword_27CE5FB90);
  if (v39(&v7[v38], 1, v3) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v7, &qword_27CE5FB90);
LABEL_14:
  v45 = v56;
  sub_21D0D3954(v57, v56, &qword_27CE5E8E8);
  v46 = v61;
  if (v64(v45, 1, v61) == 1)
  {
    sub_21D0CF7E0(v45, &qword_27CE5E8E8);
    v47 = 3;
  }

  else
  {
    v47 = *(v45 + *(v46 + 48));
    sub_21D106E58(v45, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v48 = v58;
  sub_21D0D3954(v62, v58, &qword_27CE5E8E8);
  if (v64(v48, 1, v46) == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE5E8E8);
    if (v47 == 3)
    {
      v49 = 3;
LABEL_21:
      v41 = v49 == 3;
      return v41 & 1;
    }

    goto LABEL_23;
  }

  v49 = *(v48 + *(v46 + 48));
  sub_21D106E58(v48, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v47 == 3)
  {
    goto LABEL_21;
  }

  if (v49 == 3)
  {
LABEL_23:
    v41 = 0;
    return v41 & 1;
  }

  v51 = 0x656C746974;
  if (v47)
  {
    if (v47 == 1)
    {
      v52 = 0xE500000000000000;
      v53 = 0x7365746F6ELL;
    }

    else
    {
      v52 = 0xE800000000000000;
      v53 = 0x7367617468736168;
    }
  }

  else
  {
    v52 = 0xE500000000000000;
    v53 = 0x656C746974;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      v54 = 0xE500000000000000;
      v51 = 0x7365746F6ELL;
    }

    else
    {
      v54 = 0xE800000000000000;
      v51 = 0x7367617468736168;
    }
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  if (v53 == v51 && v52 == v54)
  {

    v41 = 1;
  }

  else
  {
    v41 = sub_21DBFC64C();
  }

  return v41 & 1;
}

uint64_t sub_21D7CE504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersEditingPresenter.EditingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7CE568(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E8E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7CE5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id TTRListOrCustomSmartList.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

id TTRListOrCustomSmartList.listProtocol.getter@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  if (*(v1 + 8))
  {
    v3 = sub_21D0D8CF0(0, &qword_280D0C320);
    v4 = &protocol witness table for REMSmartList;
  }

  else
  {
    v3 = sub_21D0D8CF0(0, &qword_280D17690);
    v4 = &protocol witness table for REMList;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = v6;

  return v6;
}

id TTRListOrCustomSmartListChangeItem.listProtocol.getter@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  if (*(v1 + 8))
  {
    v3 = sub_21D0D8CF0(0, &qword_27CE592C8);
    v4 = &protocol witness table for REMSmartListChangeItem;
  }

  else
  {
    v3 = sub_21D0D8CF0(0, &unk_280D177F0);
    v4 = &protocol witness table for REMListChangeItem;
  }

  a1[3] = v3;
  a1[4] = v4;
  *a1 = v6;

  return v6;
}

uint64_t TTRListOrCustomSmartList.init(listOrCustomSmartList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF648C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D45028] || v9 == *MEMORY[0x277D45020])
  {
    v11 = v9 != *MEMORY[0x277D45028];
    (*(v5 + 8))(a1, v4);
    result = (*(v5 + 96))(v8, v4);
    *a2 = *v8;
    *(a2 + 8) = v11;
  }

  else
  {
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

id TTRListOrCustomSmartList.accountCapabilities.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = [v1 accountCapabilities];

    return v2;
  }

  else
  {
    v4 = [v1 account];
    v5 = [v4 capabilities];

    return v5;
  }
}

id TTRListOrCustomSmartListChangeItem.accountCapabilities.getter()
{
  v1 = [*v0 accountCapabilities];

  return v1;
}

id TTRListOrCustomSmartList.store.getter()
{
  v1 = [*v0 store];

  return v1;
}

id TTRListOrCustomSmartList.groceryContext.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return [*v0 groceryContext];
  }
}

uint64_t TTRListOrCustomSmartList.autoCategorizationContext.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return sub_21DBFB5FC();
  }
}

id TTRListOrCustomSmartList.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

id sub_21D7CEAB8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TTRListOrCustomSmartListChangeItem.displayName.getter()
{
  v1 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = [v1 displayName];
    goto LABEL_5;
  }

  v2 = [v1 name];
  if (v2)
  {
LABEL_5:
    v3 = sub_21DBFA16C();

    return v3;
  }

  return 0;
}

uint64_t TTRListOrCustomSmartListSection.displayName.getter()
{
  v1 = [*v0 displayName];
  v2 = sub_21DBFA16C();

  return v2;
}

id TTRListOrCustomSmartListSection.canonicalName.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  result = [*v0 canonicalName];
  if (result)
  {
    v2 = result;
    v3 = sub_21DBFA16C();

    return v3;
  }

  return result;
}

id TTRListOrCustomSmartListSectionChangeItem.saveRequest.getter()
{
  v1 = [*v0 saveRequest];

  return v1;
}

uint64_t _s15RemindersUICore24TTRListOrCustomSmartListO9hashValueSivg_0()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t sub_21D7CED08()
{
  v1 = *(v0 + 8);
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  sub_21DBFB64C();
  return sub_21DBFC82C();
}

uint64_t TTRListOrCustomSmartList.displayName.getter()
{
  v1 = &selRef_name;
  if (!*(v0 + 8))
  {
    v1 = &selRef_displayName;
  }

  v2 = [*v0 *v1];
  v3 = sub_21DBFA16C();

  return v3;
}

id TTRListOrCustomSmartList.isGroup.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return [*v0 isGroup];
  }
}

uint64_t TTRListOrCustomSmartList.canBeIncludedInGroup.getter()
{
  if (*(v0 + 8))
  {
    return 1;
  }

  else
  {
    return [*v0 canBeIncludedInGroup];
  }
}

id TTRListOrCustomSmartList.accountID.getter()
{
  v1 = [*v0 accountID];

  return v1;
}

id TTRListOrCustomSmartList.parentListID.getter()
{
  v1 = [*v0 parentListID];

  return v1;
}

uint64_t sub_21D7CEEB4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v5 = v3;
  v6 = v2;
  v7 = sub_21DBFB63C();

  return v7 & 1;
}

unint64_t sub_21D7CEF44()
{
  result = qword_27CE61A60;
  if (!qword_27CE61A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61A60);
  }

  return result;
}

unint64_t sub_21D7CEF9C()
{
  result = qword_27CE61A68;
  if (!qword_27CE61A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61A68);
  }

  return result;
}

unint64_t sub_21D7CEFF4()
{
  result = qword_27CE61A70;
  if (!qword_27CE61A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61A70);
  }

  return result;
}

unint64_t sub_21D7CF04C()
{
  result = qword_27CE61A78;
  if (!qword_27CE61A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61A78);
  }

  return result;
}

unint64_t sub_21D7CF0A4()
{
  result = qword_27CE61A80;
  if (!qword_27CE61A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61A80);
  }

  return result;
}

uint64_t sub_21D7CF18C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61A88);
  v1 = __swift_project_value_buffer(v0, qword_27CE61A88);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTemplateSectionEditor.unitTest_oneShotSyncSaveForUndo.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t TTRTemplateSectionEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v6 + 64) = a3;
  return v6;
}

uint64_t TTRTemplateSectionEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 64) = 0;
  *(v3 + 16) = a1;
  v5 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v5;
  *(v3 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v3 + 64) = a3;
  return v3;
}

Swift::Void __swiftcall TTRTemplateSectionEditor.edit(displayName:)(Swift::String displayName)
{
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 displayName];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    if (qword_27CE56CC0 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE61A88);

    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAE9C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v4 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_21D0C9000, v11, v12, "Updating template section's display name {templateSectionID: %@}", v13, 0xCu);
      sub_21D0CF7E0(v14, &unk_27CE60070);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    v16 = sub_21DBFA12C();
    [v4 setDisplayName_];

    v17 = swift_allocObject();
    *(v17 + 16) = v6;
    *(v17 + 24) = v8;
    sub_21D18308C(sub_21D7CF698, v17);
  }
}

uint64_t TTRTemplateSectionEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRTemplateSectionEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

uint64_t TTRTemplateSectionEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateTemplateSection_];

  v9 = swift_allocObject();
  *(v9 + 64) = 0;
  *(v9 + 16) = v8;
  v10 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a3 + 32);
  swift_beginAccess();
  *(v9 + 64) = a4;
  return v9;
}

uint64_t sub_21D7CF83C@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateTemplateSection_];

  v11 = swift_allocObject();
  *(v11 + 64) = 0;
  *(v11 + 16) = v10;
  v12 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a3 + 32);
  result = swift_beginAccess();
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id static TTRTemplateSectionEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedTemplateSectionChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateTemplateSection_];

  return v2;
}

id static TTRTemplateSectionEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRTemplateSectionEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id TTRTemplateSectionEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

uint64_t TTRTemplateSectionEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 16) = a1;
  v5 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  *(v4 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v4 + 64) = 0;
  return v4;
}

id sub_21D7CFAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D7CFC28(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D7CFB18(void *a1, id a2)
{
  v2 = [a2 _trackedTemplateSectionChangeItemForObjectID_];

  return v2;
}

id sub_21D7CFB58(void *a1, id a2)
{
  v2 = [a2 updateTemplateSection_];

  return v2;
}

uint64_t sub_21D7CFB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  result = swift_beginAccess();
  *(v6 + 64) = 0;
  *a3 = v6;
  return result;
}

id sub_21D7CFC28(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchTemplateSectionWithObjectID:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21D7CFCE8(uint64_t a1, uint64_t a2)
{
  result = sub_21D7CFDB0(&qword_27CE61AA0, a2, type metadata accessor for TTRTemplateSectionEditor);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_21D7CFDB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TTRListContentsPrefetchExtender.__allocating_init(prefetchCountNeeded:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_21D179350(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)(uint64_t a1)
{
  v3 = sub_21D179350(MEMORY[0x277D84F90]);
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t TTRListContentsPrefetchExtender.extendFetchIndexPaths(_:sectionCountProvider:rowCountProvider:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v62 - v8;
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_21DBF8E0C();
  v19 = sub_21D19F67C(v18);

  v75 = v19;
  sub_21D7D04FC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_21D31DD48(v9);
    return MEMORY[0x277D84F90];
  }

  (*(v11 + 32))(v17, v9, v10);
  v21 = v17;
  v22 = sub_21DBF5D0C();
  v68 = v21;
  result = sub_21DBF5CFC();
  v24 = (result + 1);
  if (__OFADD__(result, 1))
  {
    goto LABEL_61;
  }

  v65 = *(v72 + 16);
  result = a2();
  if (result < v22)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v26 = result;
  v66 = v24;
  v67 = v11;
  v69 = v10;
  if (v22 == result)
  {
    goto LABEL_6;
  }

  while (2)
  {
    v31 = 0;
    v64 = v26 - 1;
    v32 = v22;
    do
    {
      v33 = v32;
      while (1)
      {
        if (v32 < v22 || v33 >= v26)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v34 = v33 + 1;
        result = a4(v33, v25);
        if (result)
        {
          break;
        }

        ++v33;
        if (v26 == v34)
        {
          goto LABEL_6;
        }
      }

      v35 = result;
      v36 = v72;
      swift_beginAccess();
      v37 = *(v36 + 24);
      if (*(v37 + 16))
      {
        v38 = sub_21D17E780(v33);
        v39 = v66;
        if (v40)
        {
          v41 = *(*(v37 + 56) + 8 * v38);
        }

        else
        {
          v41 = -1;
        }
      }

      else
      {
        v41 = -1;
        v39 = v66;
      }

      result = swift_endAccess();
      if (__OFSUB__(v35, 1))
      {
        goto LABEL_63;
      }

      if (v41 < v35 - 1)
      {
        v44 = v41 + 1 - v39;
        if (!__OFSUB__(v41 + 1, v39))
        {
          v43 = __OFADD__(v31, v44);
          v45 = v31 + v44;
          if (!v43)
          {
            if (v45 >= v65)
            {
              break;
            }

            result = sub_21DBF5CFC();
            v46 = result;
            v66 = (v67 + 8);
            while (1)
            {
              if (v22 >= v26)
              {
                goto LABEL_69;
              }

              v47 = (a4)(v22);
              v48 = v72;
              swift_beginAccess();
              v49 = *(v48 + 24);
              if (*(v49 + 16))
              {
                v50 = sub_21D17E780(v22);
                if (v51)
                {
                  break;
                }
              }

              result = swift_endAccess();
              if (v46 && (v46 & 0x8000000000000000) == 0)
              {
                goto LABEL_44;
              }

              if (v47 < 0)
              {
                goto LABEL_49;
              }

              v46 = -1;
LABEL_52:
              v55 = v46 + 1;
              v63 = v55 + v65 - v47;
              v64 = v22 + 1;
              v56 = v65 + 1;
              while (v47 != v55)
              {
                if (v55 >= v47)
                {
                  goto LABEL_66;
                }

                v57 = v47;
                v58 = v71;
                MEMORY[0x223D3E490](v55, v22);
                v59 = v70;
                sub_21D29E50C(v70, v58);
                (*v66)(v59, v69);
                v60 = v72;
                swift_beginAccess();
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v73 = *(v60 + 24);
                *(v60 + 24) = 0x8000000000000000;
                sub_21D4777E4(v55, v22, isUniquelyReferenced_nonNull_native);
                *(v60 + 24) = v73;
                result = swift_endAccess();
                --v56;
                ++v55;
                v47 = v57;
                if (v56 <= 1)
                {
                  goto LABEL_6;
                }
              }

              if (v64 != v26)
              {
                v46 = 0;
                v22 = v64;
                v65 = v63;
                if (v63 > 0)
                {
                  continue;
                }
              }

              goto LABEL_6;
            }

            v52 = *(*(v49 + 56) + 8 * v50);
            result = swift_endAccess();
            if (v46)
            {
              if (v52 > v46)
              {
                v46 = v52;
              }

LABEL_44:
              if (v46 < v47)
              {
LABEL_51:
                if (v47 <= v46)
                {
                  goto LABEL_70;
                }

                goto LABEL_52;
              }
            }

            else
            {
              v46 = v52;
              if (v52 < v47)
              {
                goto LABEL_51;
              }
            }

LABEL_49:
            v46 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              goto LABEL_71;
            }

            v53 = v72;
            swift_beginAccess();
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v73 = *(v53 + 24);
            *(v53 + 24) = 0x8000000000000000;
            sub_21D4777E4(v47 - 1, v22, v54);
            *(v53 + 24) = v73;
            result = swift_endAccess();
            goto LABEL_51;
          }

LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          return result;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v42 = v35 - v39;
      if (__OFSUB__(v35, v39))
      {
        goto LABEL_64;
      }

      v43 = __OFADD__(v31, v42);
      v31 += v42;
      if (v43)
      {
        goto LABEL_65;
      }

      if (v64 == v33)
      {
        break;
      }

      v66 = 0;
      v32 = v33 + 1;
    }

    while (v31 < v65);
LABEL_6:
    v27 = v75;
    v22 = *(v75 + 16);
    if (v22)
    {
      v20 = sub_21D9D6458(*(v75 + 16), 0);
      v28 = v67;
      sub_21D9D5ADC(&v74, (v20 + ((*(v67 + 80) + 32) & ~*(v67 + 80))), v22, v27);
      v30 = v29;
      result = sub_21D0CFAF8();
      v25 = v69;
      if (v30 != v22)
      {
        __break(1u);
        continue;
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
      v25 = v69;
      v28 = v67;
    }

    break;
  }

  (*(v28 + 8))(v68, v25);
  return v20;
}

uint64_t sub_21D7D04FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF5D5C();
  MEMORY[0x28223BE20](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_21D7D08D8();
        v21 = sub_21DBFA08C();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

int64_t sub_21D7D077C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t TTRListContentsPrefetchExtender.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21D7D08D8()
{
  result = qword_280D17158;
  if (!qword_280D17158)
  {
    sub_21DBF5D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17158);
  }

  return result;
}

uint64_t sub_21D7D0930()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61AA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE61AA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRPublicTemplateFallbackProperties.listName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRPublicTemplateFallbackProperties.listColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRPublicTemplateFallbackProperties.init(listName:listColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_21D7D0AAC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D7D0B18(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void sub_21D7D0BB8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D7D0C18()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowPublicTemplateDataModelSource.fallbackProperties.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties);
  a1[1] = v2;
  a1[2] = v3;
  v4 = v3;

  return sub_21DBF8E0C();
}

uint64_t TTRShowPublicTemplateDataModelSource.__allocating_init(store:publicTemplateObjectID:fallbackProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)(a1, a2, a3);
  return v6;
}

uint64_t TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v12 = *a3;
  v6 = *(a3 + 2);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_store) = a1;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_publicTemplateObjectID) = a2;
  v7 = v3 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties;
  *v7 = v12;
  *(v7 + 16) = v6;
  v8 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v9 = *MEMORY[0x277D45420];
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_21D7D0E18()
{
  if (qword_27CE56CC8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE61AA8);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "TTRShowPublicTemplateDataModelSource start asynchronously", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  v5 = 10;
  return sub_21D7D0F10(&v5);
}

uint64_t sub_21D7D0F10(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D428);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32[-v12];
  v14 = *a1;
  v15 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (*(v2 + v15))
  {
    v16 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v33[0] = v14;
      (*(*(v17 + 8) + 16))(v33, ObjectType);
      swift_unknownObjectRelease();
    }

    v19 = *(v2 + v15);
    if (v19)
    {
      v20 = *(*v19 + 104);
      swift_beginAccess();
      sub_21D0D3954(v19 + v20, v13, &qword_27CE5D428);
      if ((*(v5 + 48))(v13, 1, v4) != 1)
      {
        v21 = *&v13[*(v4 + 48)];
        sub_21D0CF7E0(v13, &qword_27CE5DAE0);
        goto LABEL_8;
      }

      sub_21D0CF7E0(v13, &qword_27CE5D428);
    }
  }

  v21 = 0;
LABEL_8:
  v22 = *(v4 + 48);
  v23 = sub_21DBF6DBC();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  *&v10[v22] = v21;
  v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_store);
  v25 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_publicTemplateObjectID);
  type metadata accessor for TTRShowPublicTemplateMonitorableDataView();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  v27 = *(v4 + 48);
  sub_21D0D3954(v10, v7, &qword_27CE5DAE0);
  *&v7[v27] = v21;
  swift_beginAccess();
  v28 = v21;
  v29 = v24;
  v30 = v25;
  sub_21D502F94((v2 + v15), v7, v26, v2, v14);
  sub_21D0CF7E0(v7, &qword_27CE5C2F8);
  swift_endAccess();

  return sub_21D0CF7E0(v10, &qword_27CE5C2F8);
}

uint64_t TTRShowPublicTemplateMonitorableDataView.__allocating_init(store:publicTemplateObjectID:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_21D7D130C()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 16);
}

uint64_t TTRShowPublicTemplateDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate);

  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 16);

  return v0;
}

uint64_t TTRShowPublicTemplateDataModelSource.__deallocating_deinit()
{
  TTRShowPublicTemplateDataModelSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D7D14D4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_fallbackProperties);
  a1[1] = v2;
  a1[2] = v3;
  v4 = v3;

  return sub_21DBF8E0C();
}

uint64_t sub_21D7D152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3F550]();
    (*(v13 + 16))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t TTRShowPublicTemplateDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowPublicTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v71 = a4;
  v8 = sub_21DBF719C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF6DBC();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  sub_21D0D3954(a2, &v68 - v18, &qword_27CE5DAE0);
  *&v19[*(v14 + 48)] = a3;
  v20 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (!v21 || v21 != a1)
  {
    v22 = a3;
    return sub_21D0CF7E0(v19, &qword_27CE5C2F8);
  }

  v70 = v19;
  sub_21D0D3954(v19, v16, &qword_27CE5C2F8);
  v23 = *&v16[*(v14 + 48)];
  v24 = a3;

  v26 = v73;
  v25 = v74;
  if ((*(v73 + 48))(v16, 1, v74) == 1)
  {
    sub_21D0CF7E0(v16, &qword_27CE5DAE0);
LABEL_32:
    v19 = v70;
    return sub_21D0CF7E0(v19, &qword_27CE5C2F8);
  }

  v69 = v4;
  (*(v26 + 32))(v72, v16, v25);
  v27 = sub_21DBF6E3C();
  sub_21D4F5F28(v27);
  v29 = v28;

  if (a3)
  {
    v30 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v31 = v69;
    swift_beginAccess();
    if (*(v31 + v30))
    {
      v32 = v24;

      sub_21D4F9F64(v32, v29);
    }

    else
    {
      v68 = *(v31 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v34 = v24;
      v35 = sub_21DBFB12C();
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      v37 = sub_21D87E81C(v68, sub_21D1947D8, v36, v34, v35);
      *(v31 + v30) = v37;

      swift_beginAccess();
      v37[3] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }

  MEMORY[0x223D3F550](v33);
  v38 = sub_21DBF716C();
  (*(v9 + 8))(v11, v8);
  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_13;
    }

LABEL_29:

LABEL_31:
    v56 = v72;
    v57 = sub_21DBF6DAC();
    v58 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
    v59 = v69;
    swift_beginAccess();
    v60 = *(v59 + v58);
    *(v59 + v58) = v57;
    v61 = v57;

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_21DBFBEEC();
    v75 = *v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE8);
    v62 = sub_21DBFA1AC();
    v64 = v63;

    v75 = v62;
    v76 = v64;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v65 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v65);
    *(&v68 - 4) = v59;
    *(&v68 - 3) = v61;
    v66 = v71;
    *(&v68 - 2) = v56;
    *(&v68 - 1) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    (*(v73 + 8))(v56, v74);
    goto LABEL_32;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_29;
  }

  v39 = sub_21DBFBD7C();
  if (!v39)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v49 = sub_21DBFC40C();
      goto LABEL_27;
    }

LABEL_26:
    v49 = MEMORY[0x277D84F98];
LABEL_27:
    v50 = v69;
    v77[0] = v49;
    v51 = sub_21DBF8E0C();
    sub_21D1931C0(v51, 1, v77);

    v52 = v77[0];
    v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v50 + v53))
    {

      sub_21D188810(v52);
      v55 = v54;

      TTRBatchFetchManager<A>.override(objects:)(v55);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_13:
  v77[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v77[0];
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x223D44740](v40, v38);
      }

      else
      {
        v42 = *(v38 + 8 * v40 + 32);
      }

      v43 = v42;
      v44 = [v42 objectID];
      v77[0] = v41;
      v46 = *(v41 + 16);
      v45 = *(v41 + 24);
      if (v46 >= v45 >> 1)
      {
        v48 = v44;
        sub_21D18E6B8((v45 > 1), v46 + 1, 1);
        v44 = v48;
        v41 = v77[0];
      }

      ++v40;
      *(v41 + 16) = v46 + 1;
      v47 = v41 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
    }

    while (v39 != v40);

    if (*(v41 + 16))
    {
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D7D1F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v18 = a2;
  v7 = sub_21DBF719C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v13 = result;
  if (result)
  {
    v14 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v17 = v7;
    v16 = ObjectType;
    MEMORY[0x223D3F550]();
    (*(v14 + 16))(v18, v10, a3, v16, v14);
    swift_unknownObjectRelease();
    result = (*(v8 + 8))(v10, v17);
  }

  *a4 = v13 == 0;
  return result;
}

uint64_t sub_21D7D2100()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7D217C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8) + 48));

  return TTRShowPublicTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowPublicTemplateDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE8);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D7D2320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowPublicTemplateDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE61AA8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    sub_21DBFBEEC();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61AD8);
    v10 = sub_21DBFBA5C();
    MEMORY[0x223D42AA0](v10);

    v11 = sub_21D0CDFB4(0xD000000000000014, 0x800000021DC6B630, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowPublicTemplateDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowPublicTemplateMonitorableDataView.init(store:publicTemplateObjectID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void TTRShowPublicTemplateMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C300);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v28 = *(v15 - 8);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = v27 - v17;
  v19 = *(v6 + 16);
  if (a4)
  {
    v20 = v19;
  }

  else
  {
    v20 = [v19 nonUserInteractiveStore];
  }

  v21 = v20;
  sub_21DBF6CFC();
  if (v5)
  {
  }

  else
  {
    v22 = *(v9 + 48);
    sub_21DBF76DC();
    *&v14[v22] = sub_21DBF76BC();
    sub_21D0D3954(v14, v11, &qword_27CE5C300);
    v27[2] = *&v11[*(v9 + 48)];
    v23 = sub_21DBF6DBC();
    v24 = *(v23 - 8);
    v27[1] = a2;
    v25 = v24;
    v26 = v29;
    (*(v24 + 32))(v29, v11, v23);
    (*(v25 + 56))(v26, 0, 1, v23);
    sub_21DBF76CC();

    sub_21D0CF7E0(v14, &qword_27CE5C300);
    (*(v28 + 8))(v18, v15);
  }
}

uint64_t TTRShowPublicTemplateMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_21D7D296C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  TTRShowPublicTemplateMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8) + 48)) = v6;
  }
}

uint64_t sub_21D7D29C8(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_21DBF76AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D428);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v37 = sub_21DBF6DBC();
  v15 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (!v18)
  {
    goto LABEL_4;
  }

  v32 = v4;
  v33 = v3;
  v19 = *(*v18 + 96);
  swift_beginAccess();
  sub_21D0D3954(v18 + v19, v8, &qword_27CE5C2F0);
  sub_21DBFC83C();
  sub_21D0CF7E0(v8, &qword_27CE5C2F0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5D428);
LABEL_4:
    (*(v15 + 56))(v14, 1, 1, v37);
    return sub_21D0CF7E0(v14, &qword_27CE5DAE0);
  }

  sub_21D7D37F0(v11, v14);
  v22 = v37;
  if ((*(v15 + 48))(v14, 1, v37) == 1)
  {
    return sub_21D0CF7E0(v14, &qword_27CE5DAE0);
  }

  (*(v15 + 32))(v36, v14, v22);
  v40 = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
  sub_21D5DE94C();
  sub_21D183A0C();
  v23 = sub_21DBFA46C();

  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  if (*(v2 + v24))
  {

    TTRBatchFetchManager<A>.override(objects:)(v23);
  }

  v25 = sub_21D183AA0(v23);

  sub_21D19ED38(v25);

  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_21DBFBD7C())
    {
      sub_21D1CDECC(MEMORY[0x277D84F90]);
    }

    if (sub_21DBFBD7C())
    {
      sub_21D1CDECC(MEMORY[0x277D84F90]);
    }

    if (sub_21DBFBD7C())
    {
      sub_21D1CDECC(MEMORY[0x277D84F90]);
    }

    v22 = v37;
  }

  v26 = v35;
  sub_21DBF767C();
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_21DBFBEEC();
  v38 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE8);
  v27 = sub_21DBFA1AC();
  v29 = v28;

  v38 = v27;
  v39 = v29;
  MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
  v30 = sub_21DBFAEDC();
  MEMORY[0x28223BE20](v30);
  *(&v32 - 4) = v2;
  v31 = v36;
  *(&v32 - 3) = v36;
  *(&v32 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();

  (*(v32 + 8))(v26, v33);
  return (*(v15 + 8))(v31, v22);
}

void sub_21D7D309C(void *a1)
{
  v2 = v1;
  if (qword_27CE56CC8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE61AA8);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_21DBFBEEC();

    v31 = 0xD000000000000014;
    v32 = 0x800000021DC6B630;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61AD8);
    v13 = sub_21DBFBA5C();
    MEMORY[0x223D42AA0](v13);

    v14 = sub_21D0CDFB4(v31, v32, v30);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowPublicTemplateDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v15 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16)
  {
    v17 = [v16 objectID];
    if (v17)
    {
      v18 = v17;
      v19 = objc_opt_self();
      v20 = sub_21DBF52CC();
      LODWORD(v19) = [v19 isNoSuchObjectError:v20 forObjectID:v18];

      if (v19)
      {
        v21 = v18;
        v22 = sub_21DBF84AC();
        v23 = sub_21DBFAEBC();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          *(v24 + 4) = v21;
          *v25 = v18;
          v26 = v21;
          _os_log_impl(&dword_21D0C9000, v22, v23, "TTRShowPublicTemplateDataModelSource: list got deleted {objectID: %{public}@}", v24, 0xCu);
          sub_21D0CF7E0(v25, &unk_27CE60070);
          MEMORY[0x223D46520](v25, -1, -1);
          MEMORY[0x223D46520](v24, -1, -1);
        }

        v27 = v2 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v27 + 8);
          ObjectType = swift_getObjectType();
          (*(v28 + 32))(ObjectType, v28);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRPublicTemplateFallbackProperties(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRPublicTemplateFallbackProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRShowPublicTemplateDataModelSource()
{
  result = qword_27CE61AE0;
  if (!qword_27CE61AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D7D37F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CGPath *static CGPathRef.ttr_roundedRect(in:radius:continuous:)(char a1, CGFloat a2, CGFloat a3, double a4, double a5, CGFloat a6)
{
  Mutable = CGPathCreateMutable();
  TTR_CGPathAddRoundRect(Mutable, a1 & 1, a2, a3, a4, a5, a6);
  return Mutable;
}

id TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = type metadata accessor for TTRRecurrenceEndModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  sub_21D3139B4(v1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &unk_27CE62610);
    v16 = 0;
  }

  else
  {
    sub_21D7DA7B4(v8, v15, type metadata accessor for TTRRecurrenceEndModel);
    sub_21D7DB218(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v17 = sub_21DBF55BC();
      v16 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v3 + 8))(v5, v2);
    }

    sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
  }

  v76 = [objc_opt_self() newObjectID];
  v75 = [objc_opt_self() newObjectID];
  v74 = [objc_opt_self() newObjectID];
  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v19 = *(v1 + v18[5]);
  v72 = *(v1 + v18[6]);
  v73 = v19;
  v20 = v18[8];
  v71 = *(v1 + v18[7]);
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v24 = objc_opt_self();
      v25 = (v21 + 40);
      do
      {
        v26 = [v24 dayOfWeek:*(v25 - 1) weekNumber:*v25];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v25 += 2;
        --v22;
      }

      while (v22);
      v23 = v78;
    }

    v70 = v23;
  }

  else
  {
    v70 = 0;
  }

  v27 = *(v1 + v18[9]);
  if (v27)
  {
    v28 = *(v27 + 16);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v30 = (v27 + 32);
      do
      {
        v31 = *v30++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v28;
      }

      while (v28);
      v29 = v78;
    }
  }

  else
  {
    v29 = 0;
  }

  v32 = *(v1 + v18[12]);
  v69 = v29;
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v35 = (v32 + 32);
      do
      {
        v36 = *v35++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v33;
      }

      while (v33);
      v34 = v78;
    }

    v68 = v34;
  }

  else
  {
    v68 = 0;
  }

  v37 = *(v1 + v18[11]);
  if (v37)
  {
    v38 = *(v37 + 16);
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v40 = (v37 + 32);
      do
      {
        v41 = *v40++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v38;
      }

      while (v38);
      v39 = v78;
    }
  }

  else
  {
    v39 = 0;
  }

  v42 = *(v1 + v18[10]);
  v77 = v16;
  if (v42)
  {
    v43 = *(v42 + 16);
    v44 = MEMORY[0x277D84F90];
    if (v43)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v45 = (v42 + 32);
      do
      {
        v46 = *v45++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v43;
      }

      while (v43);
      v16 = v77;
      v44 = v78;
    }
  }

  else
  {
    v44 = 0;
  }

  v47 = *(v1 + v18[13]);
  if (v47)
  {
    v48 = *(v47 + 16);
    v49 = MEMORY[0x277D84F90];
    if (v48)
    {
      v78 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v50 = (v47 + 32);
      do
      {
        v51 = *v50++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v48;
      }

      while (v48);
      v49 = v78;
    }

    if (v70)
    {
LABEL_45:
      sub_21D0D8CF0(0, &qword_27CE5A8F8);
      v52 = sub_21DBFA5DC();

      if (v69)
      {
        goto LABEL_46;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v49 = 0;
    if (v70)
    {
      goto LABEL_45;
    }
  }

  v52 = 0;
  if (v69)
  {
LABEL_46:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v53 = sub_21DBFA5DC();

    if (v68)
    {
      goto LABEL_47;
    }

    goto LABEL_54;
  }

LABEL_53:
  v53 = 0;
  if (v68)
  {
LABEL_47:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v54 = sub_21DBFA5DC();

    if (v39)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

LABEL_54:
  v54 = 0;
  if (v39)
  {
LABEL_48:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v55 = sub_21DBFA5DC();

    if (v44)
    {
      goto LABEL_49;
    }

LABEL_56:
    v56 = 0;
    if (v49)
    {
      goto LABEL_50;
    }

LABEL_57:
    v57 = 0;
    goto LABEL_58;
  }

LABEL_55:
  v55 = 0;
  if (!v44)
  {
    goto LABEL_56;
  }

LABEL_49:
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v56 = sub_21DBFA5DC();

  if (!v49)
  {
    goto LABEL_57;
  }

LABEL_50:
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v57 = sub_21DBFA5DC();

LABEL_58:
  v58 = objc_allocWithZone(MEMORY[0x277D44740]);
  v66 = v16;
  v65 = v53;
  v59 = v53;
  v61 = v75;
  v60 = v76;
  v62 = v74;
  v63 = [v58 initRecurrenceRuleWithObjectID:v76 accountID:v75 reminderID:v74 frequency:v73 interval:v72 firstDayOfTheWeek:v71 daysOfTheWeek:v52 daysOfTheMonth:v65 monthsOfTheYear:v54 weeksOfTheYear:v55 daysOfTheYear:v56 setPositions:v57 end:v66];

  return v63;
}

void TTRRecurrenceRuleModel.init(repeatType:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 5)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        v40 = v5;
        if (a1 == 1)
        {
          v9 = type metadata accessor for TTRRecurrenceEndModel(0);
          (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
          v10 = v4[5];
          v11 = v4[6];
          *&v8[v4[7]] = 0;
          *&v8[v4[8]] = 0;
          *&v8[v4[9]] = 0;
          *&v8[v4[10]] = 0;
          *&v8[v4[11]] = 0;
          *&v8[v4[12]] = 0;
          *&v8[v4[13]] = 0;
          v12 = 4;
LABEL_16:
          *&v8[v10] = v12;
LABEL_24:
          *&v8[v11] = 1;
          goto LABEL_25;
        }

        if (a1 == 2)
        {
          v30 = type metadata accessor for TTRRecurrenceEndModel(0);
          (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
          v31 = v4[5];
          v11 = v4[6];
          *&v8[v4[7]] = 0;
          *&v8[v4[8]] = 0;
          *&v8[v4[9]] = 0;
          *&v8[v4[10]] = 0;
          *&v8[v4[11]] = 0;
          *&v8[v4[12]] = 0;
          *&v8[v4[13]] = 0;
          *&v8[v31] = 0;
          goto LABEL_24;
        }

        goto LABEL_30;
      }

      goto LABEL_27;
    }

    v40 = v5;
    if (a1 == 3)
    {
      v24 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
      v25 = v4[5];
      v26 = v4[6];
      *&v8[v4[7]] = 0;
      *&v8[v4[8]] = 0;
      *&v8[v4[9]] = 0;
      *&v8[v4[10]] = 0;
      *&v8[v4[11]] = 0;
      *&v8[v4[12]] = 0;
      *&v8[v4[13]] = 0;
      *&v8[v25] = 1;
      *&v8[v26] = 1;
      v41 = 8;
      v43.value = 0;
      v43.is_nil = 1;
      TTRRecurrenceRuleModel.setDay(_:setPosition:)(&v41, v43);
    }

    else
    {
      if (a1 != 4)
      {
        v35 = type metadata accessor for TTRRecurrenceEndModel(0);
        (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
        v36 = v4[5];
        v11 = v4[6];
        *&v8[v4[7]] = 0;
        *&v8[v4[8]] = 0;
        *&v8[v4[9]] = 0;
        *&v8[v4[10]] = 0;
        *&v8[v4[11]] = 0;
        *&v8[v4[12]] = 0;
        *&v8[v4[13]] = 0;
        *&v8[v36] = 1;
        goto LABEL_24;
      }

      v14 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
      v15 = v4[5];
      v16 = v4[6];
      *&v8[v4[7]] = 0;
      v17 = v4[8];
      *&v8[v17] = 0;
      *&v8[v4[9]] = 0;
      *&v8[v4[10]] = 0;
      *&v8[v4[11]] = 0;
      *&v8[v4[12]] = 0;
      v18 = v4[13];
      *&v8[v18] = 0;
      *&v8[v15] = 1;
      *&v8[v16] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
      v19 = swift_allocObject();
      v19[1] = xmmword_21DC08D20;
      v19[2] = xmmword_21DC11550;
      v19[3] = xmmword_21DC292D0;
      *&v8[v18] = 0;
      *&v8[v17] = v19;
    }

LABEL_25:
    sub_21D7DA7B4(v8, a2, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v40 + 56))(a2, 0, 1, v4);
    return;
  }

  if (a1 <= 8)
  {
    v40 = v5;
    if (a1 == 6)
    {
      v21 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      v22 = v4[5];
      v23 = v4[6];
      *&v8[v4[7]] = 0;
      *&v8[v4[8]] = 0;
      *&v8[v4[9]] = 0;
      *&v8[v4[10]] = 0;
      *&v8[v4[11]] = 0;
      *&v8[v4[12]] = 0;
      *&v8[v4[13]] = 0;
      *&v8[v22] = 1;
      *&v8[v23] = 2;
    }

    else
    {
      if (a1 == 7)
      {
        v13 = type metadata accessor for TTRRecurrenceEndModel(0);
        (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
        v10 = v4[5];
        v11 = v4[6];
        *&v8[v4[7]] = 0;
        *&v8[v4[8]] = 0;
        *&v8[v4[9]] = 0;
        *&v8[v4[10]] = 0;
        *&v8[v4[11]] = 0;
        *&v8[v4[12]] = 0;
        *&v8[v4[13]] = 0;
        v12 = 2;
        goto LABEL_16;
      }

      v32 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
      v33 = v4[5];
      v34 = v4[6];
      *&v8[v4[7]] = 0;
      *&v8[v4[8]] = 0;
      *&v8[v4[9]] = 0;
      *&v8[v4[10]] = 0;
      *&v8[v4[11]] = 0;
      *&v8[v4[12]] = 0;
      *&v8[v4[13]] = 0;
      *&v8[v33] = 2;
      *&v8[v34] = 3;
    }

    goto LABEL_25;
  }

  if (a1 == 9)
  {
    v40 = v5;
    v27 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = v4[5];
    v29 = v4[6];
    *&v8[v4[7]] = 0;
    *&v8[v4[8]] = 0;
    *&v8[v4[9]] = 0;
    *&v8[v4[10]] = 0;
    *&v8[v4[11]] = 0;
    *&v8[v4[12]] = 0;
    *&v8[v4[13]] = 0;
    *&v8[v28] = 2;
    *&v8[v29] = 6;
    goto LABEL_25;
  }

  if (a1 == 10)
  {
    v40 = v5;
    v20 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v10 = v4[5];
    v11 = v4[6];
    *&v8[v4[7]] = 0;
    *&v8[v4[8]] = 0;
    *&v8[v4[9]] = 0;
    *&v8[v4[10]] = 0;
    *&v8[v4[11]] = 0;
    *&v8[v4[12]] = 0;
    *&v8[v4[13]] = 0;
    v12 = 3;
    goto LABEL_16;
  }

  if (a1 != 11)
  {
LABEL_30:
    if (qword_27CE56CD0 != -1)
    {
      swift_once();
    }

    v38 = sub_21DBF84BC();
    __swift_project_value_buffer(v38, qword_27CE61AF0);
    v39 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v39);
    sub_21DAEAB00("Unknown REMRepeatType", 21, 2);
    __break(1u);
    return;
  }

LABEL_27:
  v37 = *(v5 + 56);

  v37(a2, 1, 1, v4, v6);
}

void TTRRecurrenceRuleModel.init(sourceRule:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v91 - v5);
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRecurrenceEndModel(0);
  v12 = *(*(v11 - 8) + 56);
  v12(a2, 1, 1, v11);
  v92 = a1;
  v13 = [a1 recurrenceEnd];
  v91 = a2;
  if (v13)
  {
    v14 = v13;
    v15 = [v13 endDate];
    if (v15)
    {
      v16 = v15;
      sub_21DBF55FC();

      a2 = v91;
      sub_21D0CF7E0(v91, &unk_27CE62610);
      (*(v8 + 32))(a2, v10, v7);
      swift_storeEnumTagMultiPayload();
      v12(a2, 0, 1, v11);
    }

    else
    {
      v17 = [v14 occurrenceCount];

      *v6 = v17;
      swift_storeEnumTagMultiPayload();
      v12(v6, 0, 1, v11);
      a2 = v91;
      sub_21D7DA81C(v6, v91);
    }
  }

  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v19 = v18[5];
  v20 = v18[6];
  v93 = v18;
  v21 = v18[7];
  v22 = v92;
  *(a2 + v19) = [v92 frequency];
  *(a2 + v20) = [v22 interval];
  *(a2 + v21) = [v22 firstDayOfTheWeek];
  v23 = [v22 daysOfTheWeek];
  if (!v23)
  {
    v28 = 0;
    goto LABEL_20;
  }

  v24 = v23;
  sub_21D0D8CF0(0, &qword_27CE5A8F8);
  v25 = sub_21DBFA5EC();

  if (v25 >> 62)
  {
    v26 = sub_21DBFBD7C();
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_19:

    v28 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_8:
  v94 = MEMORY[0x277D84F90];
  sub_21D18EAC4(0, v26 & ~(v26 >> 63), 0);
  if (v26 < 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v27 = 0;
  v28 = v94;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223D44740](v27, v25);
    }

    else
    {
      v29 = *(v25 + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = [v29 dayOfTheWeek];
    v32 = [v30 weekNumber];

    v94 = v28;
    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_21D18EAC4((v33 > 1), v34 + 1, 1);
      v28 = v94;
    }

    ++v27;
    *(v28 + 16) = v34 + 1;
    v35 = v28 + 16 * v34;
    *(v35 + 32) = v31;
    *(v35 + 40) = v32;
  }

  while (v26 != v27);

  a2 = v91;
  v22 = v92;
LABEL_20:
  *(a2 + v93[8]) = v28;
  v36 = [v22 daysOfTheMonth];
  if (!v36)
  {
    v41 = 0;
    goto LABEL_35;
  }

  v37 = v36;
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v38 = sub_21DBFA5EC();

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_23;
    }

LABEL_34:

    v41 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v39 = sub_21DBFBD7C();
  if (!v39)
  {
    goto LABEL_34;
  }

LABEL_23:
  v94 = MEMORY[0x277D84F90];
  sub_21D18E658(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v40 = 0;
  v41 = v94;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x223D44740](v40, v38);
    }

    else
    {
      v42 = *(v38 + 8 * v40 + 32);
    }

    v43 = v42;
    v44 = [v42 integerValue];

    v94 = v41;
    v46 = *(v41 + 16);
    v45 = *(v41 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_21D18E658((v45 > 1), v46 + 1, 1);
      v41 = v94;
    }

    ++v40;
    *(v41 + 16) = v46 + 1;
    *(v41 + 8 * v46 + 32) = v44;
  }

  while (v39 != v40);

  a2 = v91;
  v22 = v92;
LABEL_35:
  *(a2 + v93[9]) = v41;
  v47 = [v22 daysOfTheYear];
  if (!v47)
  {
    v52 = 0;
    goto LABEL_50;
  }

  v48 = v47;
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v49 = sub_21DBFA5EC();

  if (!(v49 >> 62))
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_38;
    }

LABEL_49:

    v52 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v50 = sub_21DBFBD7C();
  if (!v50)
  {
    goto LABEL_49;
  }

LABEL_38:
  v94 = MEMORY[0x277D84F90];
  sub_21D18E658(0, v50 & ~(v50 >> 63), 0);
  if (v50 < 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v51 = 0;
  v52 = v94;
  do
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x223D44740](v51, v49);
    }

    else
    {
      v53 = *(v49 + 8 * v51 + 32);
    }

    v54 = v53;
    v55 = [v53 integerValue];

    v94 = v52;
    v57 = *(v52 + 16);
    v56 = *(v52 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_21D18E658((v56 > 1), v57 + 1, 1);
      v52 = v94;
    }

    ++v51;
    *(v52 + 16) = v57 + 1;
    *(v52 + 8 * v57 + 32) = v55;
  }

  while (v50 != v51);

  a2 = v91;
  v22 = v92;
LABEL_50:
  *(a2 + v93[10]) = v52;
  v58 = [v22 weeksOfTheYear];
  if (!v58)
  {
    v63 = 0;
    goto LABEL_65;
  }

  v59 = v58;
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v60 = sub_21DBFA5EC();

  if (!(v60 >> 62))
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_53;
    }

LABEL_64:

    v63 = MEMORY[0x277D84F90];
    goto LABEL_65;
  }

  v61 = sub_21DBFBD7C();
  if (!v61)
  {
    goto LABEL_64;
  }

LABEL_53:
  v94 = MEMORY[0x277D84F90];
  sub_21D18E658(0, v61 & ~(v61 >> 63), 0);
  if (v61 < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v62 = 0;
  v63 = v94;
  do
  {
    if ((v60 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x223D44740](v62, v60);
    }

    else
    {
      v64 = *(v60 + 8 * v62 + 32);
    }

    v65 = v64;
    v66 = [v64 integerValue];

    v94 = v63;
    v68 = *(v63 + 16);
    v67 = *(v63 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_21D18E658((v67 > 1), v68 + 1, 1);
      v63 = v94;
    }

    ++v62;
    *(v63 + 16) = v68 + 1;
    *(v63 + 8 * v68 + 32) = v66;
  }

  while (v61 != v62);

  a2 = v91;
  v22 = v92;
LABEL_65:
  *(a2 + v93[11]) = v63;
  v69 = [v22 monthsOfTheYear];
  if (!v69)
  {
    v74 = 0;
    goto LABEL_80;
  }

  v70 = v69;
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v71 = sub_21DBFA5EC();

  if (!(v71 >> 62))
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_68;
    }

LABEL_79:

    v74 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  v72 = sub_21DBFBD7C();
  if (!v72)
  {
    goto LABEL_79;
  }

LABEL_68:
  v94 = MEMORY[0x277D84F90];
  sub_21D18E658(0, v72 & ~(v72 >> 63), 0);
  if (v72 < 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v73 = 0;
  v74 = v94;
  do
  {
    if ((v71 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x223D44740](v73, v71);
    }

    else
    {
      v75 = *(v71 + 8 * v73 + 32);
    }

    v76 = v75;
    v77 = [v75 integerValue];

    v94 = v74;
    v79 = *(v74 + 16);
    v78 = *(v74 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_21D18E658((v78 > 1), v79 + 1, 1);
      v74 = v94;
    }

    ++v73;
    *(v74 + 16) = v79 + 1;
    *(v74 + 8 * v79 + 32) = v77;
  }

  while (v72 != v73);

  a2 = v91;
  v22 = v92;
LABEL_80:
  *(a2 + v93[12]) = v74;
  v80 = [v22 setPositions];
  if (!v80)
  {

    v85 = 0;
LABEL_95:
    *(a2 + v93[13]) = v85;
    return;
  }

  v81 = v80;
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v82 = sub_21DBFA5EC();

  if (!(v82 >> 62))
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v83)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

  v83 = sub_21DBFBD7C();
  if (!v83)
  {
LABEL_94:

    v85 = MEMORY[0x277D84F90];
    goto LABEL_95;
  }

LABEL_83:
  v94 = MEMORY[0x277D84F90];
  sub_21D18E658(0, v83 & ~(v83 >> 63), 0);
  if ((v83 & 0x8000000000000000) == 0)
  {
    v84 = 0;
    v85 = v94;
    do
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x223D44740](v84, v82);
      }

      else
      {
        v86 = *(v82 + 8 * v84 + 32);
      }

      v87 = v86;
      v88 = [v86 integerValue];

      v94 = v85;
      v90 = *(v85 + 16);
      v89 = *(v85 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_21D18E658((v89 > 1), v90 + 1, 1);
        v85 = v94;
      }

      ++v84;
      *(v85 + 16) = v90 + 1;
      *(v85 + 8 * v90 + 32) = v88;
    }

    while (v83 != v84);

    a2 = v91;
    goto LABEL_95;
  }

LABEL_101:
  __break(1u);
}

int *TTRRecurrenceRuleModel.init(frequency:interval:daysOfWeekOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  v10 = result[5];
  v11 = result[6];
  *(a4 + result[7]) = 0;
  v12 = result[8];
  *(a4 + v12) = 0;
  *(a4 + result[9]) = 0;
  *(a4 + result[10]) = 0;
  *(a4 + result[11]) = 0;
  *(a4 + result[12]) = 0;
  *(a4 + result[13]) = 0;
  *(a4 + v10) = a1;
  *(a4 + v11) = a2;
  if (a1 == 1)
  {
    if (a3)
    {
      result = sub_21D7D7330(a3);
      *(a4 + v12) = result;
    }
  }

  return result;
}

id TTRRecurrenceDayOfWeekModel.remRecurrenceDayOfWeek.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(MEMORY[0x277D44718]);

  return [v3 initWithDayOfTheWeek:v1 weekNumber:v2];
}

uint64_t TTRRecurrenceEndModel.init(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v17 - v10;
  v12 = [a1 endDate];
  if (v12)
  {
    v13 = v12;
    sub_21DBF55FC();

    v14 = *(v5 + 32);
    v14(v11, v7, v4);
    v14(a2, v11, v4);
    type metadata accessor for TTRRecurrenceEndModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = [a1 occurrenceCount];

    *a2 = v16;
    type metadata accessor for TTRRecurrenceEndModel(0);

    return swift_storeEnumTagMultiPayload();
  }
}

int *TTRRecurrenceRuleModel.init(frequency:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  v8 = result[5];
  v9 = result[6];
  *(a3 + result[7]) = 0;
  *(a3 + result[8]) = 0;
  *(a3 + result[9]) = 0;
  *(a3 + result[10]) = 0;
  *(a3 + result[11]) = 0;
  *(a3 + result[12]) = 0;
  *(a3 + result[13]) = 0;
  *(a3 + v8) = a1;
  *(a3 + v9) = a2;
  return result;
}

uint64_t TTRRecurrenceDayOfWeekModel.init(dayOfTheWeek:weekNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TTRRecurrenceRuleModel.shortNaturalLanguageDescription(date:timeZone:lowercase:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v31 = *(v3 + v4[6]);
  v32 = *(v3 + v4[5]);
  v5 = *(v3 + v4[8]);
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      sub_21DBFC01C();
      v7 = (v5 + 40);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D44718]) initWithDayOfTheWeek:*(v7 - 1) weekNumber:*v7];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v7 += 2;
        --v6;
      }

      while (v6);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8);
    v8 = sub_21DBFA5DC();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + v4[9]);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      sub_21DBFC01C();
      v11 = (v9 + 32);
      do
      {
        v12 = *v11++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v10;
      }

      while (v10);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v13 = sub_21DBFA5DC();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v3 + v4[12]);
  if (v14)
  {
    v15 = *(v14 + 16);
    if (v15)
    {
      sub_21DBFC01C();
      v16 = (v14 + 32);
      do
      {
        v17 = *v16++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v15;
      }

      while (v15);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v18 = sub_21DBFA5DC();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v3 + v4[13]);
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      sub_21DBFC01C();
      v21 = (v19 + 32);
      do
      {
        v22 = *v21++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v20;
      }

      while (v20);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v23 = sub_21DBFA5DC();
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_opt_self();
  v25 = sub_21DBF55BC();
  v26 = sub_21DBF5C0C();
  LOBYTE(v30) = a3 & 1;
  v27 = [v24 shortNaturalLanguageDescriptionForFrequency:v32 interval:v31 daysOfTheWeek:v8 daysOfTheMonth:v13 monthsOfTheYear:v18 setPositions:v23 date:v25 timeZone:v26 lowercase:v30];

  v28 = sub_21DBFA16C();
  return v28;
}

uint64_t TTRRecurrenceRuleModel.fixedUp(displayDate:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D7DAFA0(a1);
  v11 = v10;
  v13 = v12;
  sub_21D7DB218(v3, v8, type metadata accessor for TTRRecurrenceRuleModel);
  v14 = v6[5];
  if (*(v3 + v14) == 3)
  {
    v15 = *(v3 + v6[13]);
    if (v15)
    {
      if (*(v15 + 16))
      {
        v16 = *(v3 + v6[12]);
        if (v16)
        {
          if (*(v16 + 16))
          {
            *&v8[v14] = 2;
          }
        }
      }
    }
  }

  sub_21D7D8908(v9, v11, v13 & 1, a2);
  return sub_21D23D650(v8, type metadata accessor for TTRRecurrenceRuleModel);
}

id TTRRecurrenceRuleModel.repeatTypeAndEndDate(recurrenceDate:recurrenceTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v58 = a1;
  v59[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v49 - v5;
  v6 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v7 = *(v3 + v6[5]);
  v53 = *(v3 + v6[6]);
  v54 = v7;
  v8 = *(v3 + v6[8]);
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v10 = objc_opt_self();
      v11 = (v8 + 40);
      do
      {
        v12 = [v10 dayOfWeek:*(v11 - 1) weekNumber:*v11];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v11 += 2;
        --v9;
      }

      while (v9);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8);
    v52 = sub_21DBFA5DC();
  }

  else
  {
    v52 = 0;
  }

  v13 = *(v3 + v6[9]);
  if (v13)
  {
    v14 = *(v13 + 16);
    if (v14)
    {
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v15 = (v13 + 32);
      do
      {
        v16 = *v15++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v14;
      }

      while (v14);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v51 = sub_21DBFA5DC();
  }

  else
  {
    v51 = 0;
  }

  v17 = *(v3 + v6[12]);
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v19 = (v17 + 32);
      do
      {
        v20 = *v19++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v18;
      }

      while (v18);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v21 = sub_21DBFA5DC();
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v3 + v6[11]);
  if (v22)
  {
    v23 = *(v22 + 16);
    if (v23)
    {
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v24 = (v22 + 32);
      do
      {
        v25 = *v24++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v23;
      }

      while (v23);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v26 = sub_21DBFA5DC();
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v3 + v6[10]);
  if (v27)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      v50 = v21;
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v29 = (v27 + 32);
      do
      {
        v30 = *v29++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v28;
      }

      while (v28);
      v21 = v50;
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v31 = sub_21DBFA5DC();
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v3 + v6[13]);
  if (v32)
  {
    v33 = *(v32 + 16);
    if (v33)
    {
      v50 = v21;
      v59[0] = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v34 = (v32 + 32);
      do
      {
        v35 = *v34++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v33;
      }

      while (v33);
      v21 = v50;
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v36 = sub_21DBFA5DC();
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_opt_self();
  v38 = sub_21D7D789C();
  v39 = sub_21DBF55BC();
  v40 = sub_21DBF5C0C();
  v59[0] = 0;
  v41 = v37;
  v43 = v51;
  v42 = v52;
  v44 = [v41 repeatTypeForFrequency:v54 interval:v53 daysOfTheWeek:v52 daysOfTheMonth:v51 monthsOfTheYear:v21 weeksOfTheYear:v26 daysOfTheYear:v31 setPositions:v36 end:v38 recurrenceDate:v39 recurrenceTimeZone:v40 getRepeatEnd:v59];

  if (v59[0])
  {
    v45 = v57;
    sub_21DBF55FC();
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v57;
  }

  v47 = sub_21DBF563C();
  (*(*(v47 - 8) + 56))(v45, v46, 1, v47);
  sub_21D46CA8C(v45, v58);
  return v44;
}

uint64_t TTRRecurrenceRuleModel.naturalLanguageString(startDate:)()
{
  v1 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v39 = *(v0 + v1[6]);
  v40 = *(v0 + v1[5]);
  v2 = *(v0 + v1[8]);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_21DBFC01C();
      v4 = objc_opt_self();
      v5 = (v2 + 40);
      do
      {
        v6 = [v4 dayOfWeek:*(v5 - 1) weekNumber:*v5];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    sub_21D0D8CF0(0, &qword_27CE5A8F8);
    v38 = sub_21DBFA5DC();
  }

  else
  {
    v38 = 0;
  }

  v7 = *(v0 + v1[9]);
  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      sub_21DBFC01C();
      v9 = (v7 + 32);
      do
      {
        v10 = *v9++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v8;
      }

      while (v8);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v37 = sub_21DBFA5DC();
  }

  else
  {
    v37 = 0;
  }

  v11 = *(v0 + v1[12]);
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      sub_21DBFC01C();
      v13 = (v11 + 32);
      do
      {
        v14 = *v13++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v12;
      }

      while (v12);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v15 = sub_21DBFA5DC();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v0 + v1[11]);
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_21DBFC01C();
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v17;
      }

      while (v17);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v20 = sub_21DBFA5DC();
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + v1[10]);
  if (v21)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      sub_21DBFC01C();
      v23 = (v21 + 32);
      do
      {
        v24 = *v23++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v22;
      }

      while (v22);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v25 = sub_21DBFA5DC();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v0 + v1[13]);
  if (v26)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      sub_21DBFC01C();
      v28 = (v26 + 32);
      do
      {
        v29 = *v28++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v27;
      }

      while (v27);
    }

    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v30 = sub_21DBFA5DC();
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_self();
  v32 = sub_21D7D789C();
  v33 = sub_21DBF55BC();
  v34 = [v31 naturalLanguageDescriptionForFrequency:v40 interval:v39 daysOfTheWeek:v38 daysOfTheMonth:v37 monthsOfTheYear:v15 weeksOfTheYear:v20 daysOfTheYear:v25 setPositions:v30 end:v32 withStartDate:v33];

  v35 = sub_21DBFA16C();
  return v35;
}

uint64_t sub_21D7D6B48()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61AF0);
  v1 = __swift_project_value_buffer(v0, qword_27CE61AF0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRecurrenceRuleModel.frequency.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.interval.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.firstDayOfTheWeek.setter(uint64_t a1)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.daysOfTheWeek.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.daysOfTheMonth.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.daysOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.weeksOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.weeksOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.monthsOfTheYear.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.monthsOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRRecurrenceRuleModel.setPositions.getter()
{
  type metadata accessor for TTRRecurrenceRuleModel(0);

  return sub_21DBF8E0C();
}

uint64_t TTRRecurrenceRuleModel.setPositions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRecurrenceRuleModel(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

int *TTRRecurrenceRuleModel.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  *(a1 + result[5]) = 0;
  *(a1 + result[6]) = 0;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  *(a1 + result[9]) = 0;
  *(a1 + result[10]) = 0;
  *(a1 + result[11]) = 0;
  *(a1 + result[12]) = 0;
  *(a1 + result[13]) = 0;
  return result;
}

char *sub_21D7D7330(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_21D212558(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_21D212558((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  *&v2[16 * v4 + 32] = xmmword_21DC241F0;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_21D212558((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[16 * v6 + 32] = xmmword_21DC292E0;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_21D212558((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    *&v2[16 * v8 + 32] = xmmword_21DC292F0;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_21D212558((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  *&v2[16 * v10 + 32] = xmmword_21DC29300;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v11 = *(v2 + 3);
  if (v12 >= v11 >> 1)
  {
    v2 = sub_21D212558((v11 > 1), v12 + 1, 1, v2);
  }

  *(v2 + 2) = v12 + 1;
  *&v2[16 * v12 + 32] = xmmword_21DC18630;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
  }

  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  if (v14 >= v13 >> 1)
  {
    v2 = sub_21D212558((v13 > 1), v14 + 1, 1, v2);
  }

  *(v2 + 2) = v14 + 1;
  *&v2[16 * v14 + 32] = xmmword_21DC292D0;
  if ((a1 & 0x40) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_21D212558(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_21D212558((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    *&v2[16 * v16 + 32] = xmmword_21DC11550;
  }

  return v2;
}

Swift::Void __swiftcall TTRRecurrenceRuleModel.setDay(_:setPosition:)(RemindersUICore::TTRRecurrenceRuleModel::Day _, Swift::Int_optional setPosition)
{
  is_nil = setPosition.is_nil;
  value = setPosition.value;
  v5 = *_;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58960);
  switch(v5)
  {
    case 9:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC08D20;
      *(v6 + 32) = xmmword_21DC11550;
      *(v6 + 48) = 7;
      *(v6 + 56) = 0;
      if (is_nil)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 8:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC1C120;
      *(v6 + 32) = xmmword_21DC241F0;
      *(v6 + 48) = xmmword_21DC292E0;
      *(v6 + 64) = xmmword_21DC292F0;
      *(v6 + 80) = xmmword_21DC29300;
      *(v6 + 96) = 6;
      *(v6 + 104) = 0;
      if (is_nil)
      {
LABEL_7:
        v7 = 0;
        goto LABEL_14;
      }

LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC08D00;
      *(v7 + 32) = value;
      goto LABEL_14;
    case 7:
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_21DC0B380;
      *(v6 + 32) = xmmword_21DC11550;
      *(v6 + 48) = xmmword_21DC241F0;
      *(v6 + 64) = xmmword_21DC292E0;
      *(v6 + 80) = xmmword_21DC292F0;
      *(v6 + 96) = xmmword_21DC29300;
      *(v6 + 112) = xmmword_21DC18630;
      *(v6 + 128) = 7;
      *(v6 + 136) = 0;
      if (!is_nil)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
  }

  v8 = swift_allocObject();
  v6 = v8;
  v7 = 0;
  *(v8 + 16) = xmmword_21DC08D00;
  if (is_nil)
  {
    v9 = 0;
  }

  else
  {
    v9 = value;
  }

  *(v8 + 32) = v5 + 1;
  *(v8 + 40) = v9;
LABEL_14:
  v10 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v11 = *(v10 + 52);

  *(v2 + v11) = v7;
  v12 = *(v10 + 32);

  *(v2 + v12) = v6;
}

id sub_21D7D789C()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TTRRecurrenceEndModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_21D3139B4(v1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &unk_27CE62610);
    return 0;
  }

  else
  {
    sub_21D7DA7B4(v8, v15, type metadata accessor for TTRRecurrenceEndModel);
    sub_21D7DB218(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v17;
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v18 = sub_21DBF55BC();
      v19 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v3 + 8))(v5, v2);
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v19;
    }
  }
}

uint64_t TTRRecurrenceRuleModel.hash(into:)()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  sub_21D3139B4(v1, &v43 - v14);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D7DA7B4(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    sub_21DBFC7FC();
    sub_21D7DB218(v12, v9, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *v9;
      MEMORY[0x223D44FA0](1);
      MEMORY[0x223D44FA0](v16);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      MEMORY[0x223D44FA0](0);
      sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578]);
      sub_21DBFA00C();
      (*(v3 + 8))(v5, v2);
    }

    sub_21D23D650(v12, type metadata accessor for TTRRecurrenceEndModel);
  }

  v17 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x223D44FA0](*(v1 + v17[5]));
  MEMORY[0x223D44FA0](*(v1 + v17[6]));
  MEMORY[0x223D44FA0](*(v1 + v17[7]));
  v18 = *(v1 + v17[8]);
  if (v18)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 40);
      do
      {
        v21 = *v20;
        MEMORY[0x223D44FA0](*(v20 - 1));
        MEMORY[0x223D44FA0](v21);
        v20 += 2;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v22 = *(v1 + v17[9]);
  if (v22)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v22 + 16));
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 32);
      do
      {
        v25 = *v24++;
        MEMORY[0x223D44FA0](v25);
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v26 = *(v1 + v17[10]);
  if (v26)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v26 + 16));
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 32);
      do
      {
        v29 = *v28++;
        MEMORY[0x223D44FA0](v29);
        --v27;
      }

      while (v27);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v30 = *(v1 + v17[11]);
  if (v30)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v30 + 16));
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v30 + 32);
      do
      {
        v33 = *v32++;
        MEMORY[0x223D44FA0](v33);
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v34 = *(v1 + v17[12]);
  if (v34)
  {
    sub_21DBFC7FC();
    MEMORY[0x223D44FA0](*(v34 + 16));
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (v34 + 32);
      do
      {
        v37 = *v36++;
        MEMORY[0x223D44FA0](v37);
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    sub_21DBFC7FC();
  }

  v38 = *(v1 + v17[13]);
  if (!v38)
  {
    return sub_21DBFC7FC();
  }

  sub_21DBFC7FC();
  result = MEMORY[0x223D44FA0](*(v38 + 16));
  v40 = *(v38 + 16);
  if (v40)
  {
    v41 = (v38 + 32);
    do
    {
      v42 = *v41++;
      result = MEMORY[0x223D44FA0](v42);
      --v40;
    }

    while (v40);
  }

  return result;
}

uint64_t TTRRecurrenceRuleModel.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D7D810C()
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D7D8150()
{
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  return sub_21DBFC82C();
}

RemindersUICore::TTRRecurrenceRuleModel::Week_optional __swiftcall TTRRecurrenceRuleModel.Week.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RemindersUICore::TTRRecurrenceRuleModel::Day_optional __swiftcall TTRRecurrenceRuleModel.Day.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0xA)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21D7D81D4()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1 + 1);
  return sub_21DBFC82C();
}

uint64_t sub_21D7D824C()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1 + 1);
  return sub_21DBFC82C();
}

uint64_t TTRRecurrenceRuleModel.DaysType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

Swift::tuple_RemindersUICore_TTRRecurrenceRuleModel_Week_RemindersUICore_TTRRecurrenceRuleModel_Day_optional __swiftcall TTRRecurrenceRuleModel.weekAndDay()()
{
  v2 = v0;
  v3 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v5 = *(v1 + *(v3 + 32));
  if (v5 && v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];
    if (v6 != -1)
    {
      v8 = __OFSUB__(v6, 1);
      v9 = v6 - 1;
      if (v8)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 != -1)
      {
        goto LABEL_6;
      }

      v12 = *(v1 + *(v3 + 52));
      if (!v12 || *(v12 + 16) != 1)
      {
        v10 = 0;
        goto LABEL_18;
      }

      v13 = *(v12 + 32);
      if (v13 != -1)
      {
        v8 = __OFSUB__(v13, 1);
        v9 = v13 - 1;
        if (!v8)
        {
LABEL_6:
          if (v9 <= 5)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_18;
        }

        __break(1u);
      }
    }

    v10 = 5;
LABEL_18:
    LOBYTE(v3) = sub_21D7D8444(&v17);
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        v14 = 8;
      }

      else
      {
        v14 = 9;
      }
    }

    else if (v17)
    {
      v14 = 7;
    }

    else
    {
      LOBYTE(v3) = TTRRecurrenceRuleModel.Day.init(rawValue:)(v7);
      v14 = v16;
      if (v16 == 10)
      {
        v14 = 0;
      }
    }

    v11 = v10 | (v14 << 8);
    goto LABEL_28;
  }

  v11 = 6;
LABEL_28:
  *v2 = v11;
LABEL_30:
  result.value._0 = v3;
  result.value._1 = v4;
  return result;
}

uint64_t sub_21D7D8444@<X0>(char *a1@<X8>)
{
  result = type metadata accessor for TTRRecurrenceRuleModel(0);
  v4 = *(v1 + *(result + 32));
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v43 = MEMORY[0x277D84F90];
      sub_21D18E658(0, v5, 0);
      v6 = v43;
      v7 = (v4 + 32);
      v8 = *(v43 + 16);
      v9 = v5;
      do
      {
        v11 = *v7;
        v7 += 2;
        v10 = v11;
        v44 = v6;
        v12 = *(v6 + 24);
        v13 = v8 + 1;
        if (v8 >= v12 >> 1)
        {
          sub_21D18E658((v12 > 1), v8 + 1, 1);
          v6 = v44;
        }

        *(v6 + 16) = v13;
        *(v6 + 8 * v8++ + 32) = v10;
        --v9;
      }

      while (v9);
      switch(v5)
      {
        case 7:
          v29 = 0;
          while (v13 != v29)
          {
            v30 = v6 + 8 * v29++;
            if (*(v30 + 32) == 1)
            {
              v31 = 0;
              while (v13 != v31)
              {
                v32 = v6 + 8 * v31++;
                if (*(v32 + 32) == 2)
                {
                  v33 = 0;
                  while (v13 != v33)
                  {
                    v34 = v6 + 8 * v33++;
                    if (*(v34 + 32) == 3)
                    {
                      v35 = 0;
                      while (v13 != v35)
                      {
                        v36 = v6 + 8 * v35++;
                        if (*(v36 + 32) == 4)
                        {
                          v37 = 0;
                          while (v13 != v37)
                          {
                            v38 = v6 + 8 * v37++;
                            if (*(v38 + 32) == 5)
                            {
                              v39 = 0;
                              while (v13 != v39)
                              {
                                v40 = v6 + 8 * v39++;
                                if (*(v40 + 32) == 6)
                                {
                                  v41 = 0;
                                  while (v13 != v41)
                                  {
                                    v42 = v6 + 8 * v41++;
                                    if (*(v42 + 32) == 7)
                                    {

                                      v18 = 1;
                                      goto LABEL_57;
                                    }
                                  }

                                  goto LABEL_55;
                                }
                              }

                              goto LABEL_55;
                            }
                          }

                          goto LABEL_55;
                        }
                      }

                      goto LABEL_55;
                    }
                  }

                  goto LABEL_55;
                }
              }

              goto LABEL_55;
            }
          }

          break;
        case 5:
          v19 = 0;
          while (v13 != v19)
          {
            v20 = v6 + 8 * v19++;
            if (*(v20 + 32) == 2)
            {
              v21 = 0;
              while (v13 != v21)
              {
                v22 = v6 + 8 * v21++;
                if (*(v22 + 32) == 3)
                {
                  v23 = 0;
                  while (v13 != v23)
                  {
                    v24 = v6 + 8 * v23++;
                    if (*(v24 + 32) == 4)
                    {
                      v25 = 0;
                      while (v13 != v25)
                      {
                        v26 = v6 + 8 * v25++;
                        if (*(v26 + 32) == 5)
                        {
                          v27 = 0;
                          while (v13 != v27)
                          {
                            v28 = v6 + 8 * v27++;
                            if (*(v28 + 32) == 6)
                            {

                              v18 = 2;
                              goto LABEL_57;
                            }
                          }

                          goto LABEL_55;
                        }
                      }

                      goto LABEL_55;
                    }
                  }

                  goto LABEL_55;
                }
              }

              goto LABEL_55;
            }
          }

          break;
        case 2:
          v14 = 0;
          while (v13 != v14)
          {
            v15 = v6 + 8 * v14++;
            if (*(v15 + 32) == 1)
            {
              v16 = 0;
              while (v13 != v16)
              {
                v17 = v6 + 8 * v16++;
                if (*(v17 + 32) == 7)
                {

                  v18 = 3;
                  goto LABEL_57;
                }
              }

              goto LABEL_55;
            }
          }

          break;
      }
    }

LABEL_55:
  }

  v18 = 0;
LABEL_57:
  *a1 = v18;
  return result;
}

Swift::Void __swiftcall TTRRecurrenceRuleModel.setWeekAndDay(weeks:days:)(RemindersUICore::TTRRecurrenceRuleModel::Week weeks, RemindersUICore::TTRRecurrenceRuleModel::Day days)
{
  v3 = days;
  v4 = weeks;
  v5 = *(v2 + *(type metadata accessor for TTRRecurrenceRuleModel(0) + 20));
  if (v5 > 4)
  {
    if (qword_27CE56CD0 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE61AF0);
    v10 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v10);
    sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
    __break(1u);
  }

  else if (((1 << v5) & 0x13) != 0)
  {
    if (qword_27CE56CD0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61AF0);
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v7, "setWeekAndDay called for frequencies other .monthly or .yearly", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }
  }

  else
  {
    v14.value = qword_21DC29748[*v4];
    v12 = *v3;
    v14.is_nil = 0;
    TTRRecurrenceRuleModel.setDay(_:setPosition:)(&v12, v14);
  }
}

uint64_t sub_21D7D8908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(v5 + v10[5]) != 2)
  {
    return sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
  }

  v11 = *(v5 + v10[13]);
  if (v11)
  {
    if (*(v11 + 16))
    {
      return sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
    }
  }

  v12 = *(v5 + v10[8]);
  if (v12)
  {
    if (*(v12 + 16))
    {
      return sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
    }
  }

  v13 = *(v5 + v10[9]);
  if (v13)
  {
    if (*(v13 + 16))
    {
      return sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
    }
  }

  v15 = v10;
  result = sub_21D7DB218(v5, a4, type metadata accessor for TTRRecurrenceRuleModel);
  if ((a3 & 1) == 0)
  {
    v16 = v15[13];

    *(a4 + v16) = &unk_282EA6CF8;
    v17 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      v18 = v17 + 1;
      if (!__OFADD__(v17, 1))
      {
        if (v17 != -1)
        {
          v19 = sub_21D9D6588(v17 + 1, 0);
          if (sub_21D1985F4(&v21, (v19 + 4), v18, a1, a2) == v18)
          {
LABEL_17:
            v20 = v15[9];

            *(a4 + v20) = v19;
            return result;
          }

          __break(1u);
        }

        v19 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t TTRRecurrenceRuleModel.adjustingFixUp(from:to:)(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D7DAFA0(a2);
  v12 = v11;
  v14 = v13;
  if ((sub_21D7D8BE8(v10, v11, v13 & 1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = sub_21D7DAFA0(a3);
  v18 = v17;
  if ((v14 & 1) == 0)
  {
    if ((v17 & 1) != 0 || v10 != v15 || v12 != v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21D7DB218(v3, a1, type metadata accessor for TTRRecurrenceRuleModel);
    return 0;
  }

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_9:
  v20 = v15;
  v21 = v3;
  v22 = v16;
  sub_21D7DB218(v21, v9, type metadata accessor for TTRRecurrenceRuleModel);
  v23 = *(v7 + 52);

  *&v9[v23] = 0;
  v24 = *(v7 + 36);

  *&v9[v24] = 0;
  sub_21D7D8908(v20, v22, v18 & 1, a1);
  sub_21D23D650(v9, type metadata accessor for TTRRecurrenceRuleModel);
  return 1;
}

uint64_t sub_21D7D8BE8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(v3 + v7[5]) != 2)
  {
    return 0;
  }

  v8 = *(v3 + v7[8]);
  if (v8)
  {
    if (*(v8 + 16))
    {
      return 0;
    }
  }

  v9 = *(v3 + v7[13]);
  if ((a3 & 1) == 0)
  {
    if (!v9)
    {
      return 0;
    }

    v12 = v7;
    result = sub_21D1D76BC(*(v3 + v7[13]), &unk_282EA7AA0);
    if ((result & 1) == 0)
    {
      return 0;
    }

    v13 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v15 = *(v3 + v12[9]);
        if (v13 == -1)
        {
          v16 = MEMORY[0x277D84F90];
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_19;
        }

        v16 = sub_21D9D6588(v14, 0);
        result = sub_21D1985F4(&v18, (v16 + 4), v14, a1, a2);
        if (result == v14)
        {
          if (v15)
          {
LABEL_16:
            v17 = sub_21D1D76BC(v15, v16);

            return v17 & 1;
          }

LABEL_19:

          return 0;
        }

LABEL_24:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v9 && *(v9 + 16))
  {
    return 0;
  }

  v10 = *(v3 + v7[9]);
  return !v10 || *(v10 + 16) == 0;
}

void TTRRecurrenceEndModel.init(_:recurrenceRule:)(_BYTE *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v96 = a1;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v85[-v7];
  v102 = sub_21DBF563C();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v10 = &v85[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v93 = &v85[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v85[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v85[-v17];
  v97 = sub_21DBF509C();
  isa = v97[-1].isa;
  MEMORY[0x28223BE20](v97);
  v87 = &v85[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v88 = &v85[-v21];
  MEMORY[0x28223BE20](v22);
  v24 = &v85[-v23];
  MEMORY[0x28223BE20](v25);
  v101 = &v85[-v26];
  v27 = sub_21DBF5A2C();
  v99 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v85[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  v31 = [a2 frequency];
  v90 = v27;
  v91 = a2;
  if (v31 <= 1)
  {
    v32 = v96;
    if (!v31)
    {
LABEL_10:
      (*(v99 + 56))(v18, 1, 1, v27);
      v34 = sub_21DBF5C4C();
      (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
      sub_21DBF504C();
      goto LABEL_11;
    }

    if (v31 == 1)
    {
      [a2 interval];
      (*(v99 + 56))(v18, 1, 1, v27);
      v33 = sub_21DBF5C4C();
      (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
      sub_21DBF504C();
      v32 = v96;
LABEL_11:
      sub_21DBF597C();
      v35 = *(v100 + 48);
      v36 = v35(v8, 1, v102);
      v37 = v97;
      v95 = v29;
      v92 = v10;
      if (v36 == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE58D68);
        if (qword_27CE56CD0 != -1)
        {
          swift_once();
        }

        v38 = sub_21DBF84BC();
        __swift_project_value_buffer(v38, qword_27CE61AF0);
        v39 = isa;
        (*(isa + 2))(v24, v32, v37);
        v40 = sub_21DBF84AC();
        v41 = sub_21DBFAECC();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v103 = v43;
          *v42 = 136315138;
          sub_21D7DB280(&qword_27CE5A8F0, MEMORY[0x277CC8990]);
          v44 = sub_21DBFC5BC();
          v45 = v39;
          v47 = v46;
          (*(v45 + 1))(v24, v97);
          v48 = sub_21D0CDFB4(v44, v47, &v103);
          v32 = v96;

          *(v42 + 4) = v48;
          _os_log_impl(&dword_21D0C9000, v40, v41, "Unable to create dueDate from components -- Falling back to now() {dueDateComponents: %s}", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x223D46520](v43, -1, -1);
          v49 = v42;
          v37 = v97;
          MEMORY[0x223D46520](v49, -1, -1);
        }

        else
        {

          (*(v39 + 1))(v24, v37);
        }

        v10 = v92;
        v50 = v93;
        v51 = v101;
        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      }

      else
      {
        v50 = v93;
        (*(v100 + 32))();
        v51 = v101;
      }

      v52 = v98;
      v53 = v95;
      sub_21DBF598C();
      if (v35(v52, 1, v102) == 1)
      {
        v54 = v32;
        sub_21D0CF7E0(v98, &qword_27CE58D68);
        if (qword_27CE56CD0 != -1)
        {
          swift_once();
        }

        v55 = sub_21DBF84BC();
        __swift_project_value_buffer(v55, qword_27CE61AF0);
        v56 = isa;
        v57 = *(isa + 2);
        v58 = v88;
        v57(v88, v54, v37);
        v59 = v87;
        v57(v87, v101, v37);
        v60 = sub_21DBF84AC();
        v61 = sub_21DBFAECC();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v103 = v98;
          *v62 = 136315394;
          sub_21D7DB280(&qword_27CE5A8F0, MEMORY[0x277CC8990]);
          v97 = v60;
          v63 = sub_21DBFC5BC();
          v64 = v56;
          v66 = v65;
          v86 = v61;
          v67 = *(v64 + 1);
          v67(v58, v37);
          v68 = sub_21D0CDFB4(v63, v66, &v103);
          v69 = v96;

          *(v62 + 4) = v68;
          *(v62 + 12) = 2080;
          v70 = sub_21DBFC5BC();
          v72 = v71;
          v67(v59, v37);
          v73 = sub_21D0CDFB4(v70, v72, &v103);
          v10 = v92;

          *(v62 + 14) = v73;
          v74 = v97;
          _os_log_impl(&dword_21D0C9000, v97, v86, "Unable to calculate date by adding dateComponents -- Falling back to now() {dueDateComponents: %s, dateComponentsToAdd: %s}", v62, 0x16u);
          v75 = v98;
          swift_arrayDestroy();
          MEMORY[0x223D46520](v75, -1, -1);
          v76 = v62;
          v50 = v93;
          MEMORY[0x223D46520](v76, -1, -1);

          v77 = v95;
        }

        else
        {

          v67 = *(v56 + 1);
          v67(v59, v37);
          v67(v58, v37);
          v77 = v95;
          v69 = v54;
          v10 = v92;
        }

        _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();

        v67(v69, v37);
        v82 = v100;
        (*(v100 + 8))(v50, v102);
        v67(v101, v37);
        (*(v99 + 8))(v77, v90);
        v81 = *(v82 + 32);
      }

      else
      {

        v78 = *(isa + 1);
        v78(v32, v37);
        v79 = v100;
        v80 = v102;
        (*(v100 + 8))(v50, v102);
        v78(v51, v37);
        (*(v99 + 8))(v53, v90);
        v81 = *(v79 + 32);
        v81(v10, v98, v80);
      }

      v81(v89, v10, v102);
      type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      return;
    }
  }

  else
  {
    v32 = v96;
    if (v31 == 2 || v31 == 3 || v31 == 4)
    {
      goto LABEL_10;
    }
  }

  if (qword_27CE56CD0 != -1)
  {
    swift_once();
  }

  v83 = sub_21DBF84BC();
  __swift_project_value_buffer(v83, qword_27CE61AF0);
  v84 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v84);
  sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
  __break(1u);
}

uint64_t TTRRecurrenceEndModel.normalizingEndDate()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D7DB218(v1, v9, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D7DB218(v1, a1, type metadata accessor for TTRRecurrenceEndModel);
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_21DBF554C();
  sub_21DBF553C();
  (*(v4 + 8))(v6, v3);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRecurrenceEndModel.hash(into:)()
{
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D7DB218(v0, v7, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    MEMORY[0x223D44FA0](1);
    return MEMORY[0x223D44FA0](v8);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578]);
    sub_21DBFA00C();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t TTRRecurrenceEndModel.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBFC7DC();
  sub_21D7DB218(v1, v8, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x223D44FA0](1);
    MEMORY[0x223D44FA0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578]);
    sub_21DBFA00C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21DBFC82C();
}

uint64_t sub_21D7DA1DC()
{
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D7DB218(v0, v7, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    MEMORY[0x223D44FA0](1);
    return MEMORY[0x223D44FA0](v8);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578]);
    sub_21DBFA00C();
    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_21D7DA3AC()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBFC7DC();
  sub_21D7DB218(v1, v8, type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    MEMORY[0x223D44FA0](1);
    MEMORY[0x223D44FA0](v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x223D44FA0](0);
    sub_21D7DB280(&unk_280D171A8, MEMORY[0x277CC9578]);
    sub_21DBFA00C();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21DBFC82C();
}

uint64_t TTRRecurrenceDayOfWeekModel.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  return MEMORY[0x223D44FA0](v1);
}

uint64_t TTRRecurrenceDayOfWeekModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA6C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA720()
{
  v1 = v0[1];
  MEMORY[0x223D44FA0](*v0);
  return MEMORY[0x223D44FA0](v1);
}

uint64_t sub_21D7DA75C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D7DA7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7DA81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s15RemindersUICore21TTRRecurrenceEndModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v23 = sub_21DBF563C();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRecurrenceEndModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B38);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_21D7DB218(a1, &v22 - v14, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D7DB218(a2, &v15[v17], type metadata accessor for TTRRecurrenceEndModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D7DB218(v15, v9, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v9 == *&v15[v17];
LABEL_8:
      sub_21D23D650(v15, type metadata accessor for TTRRecurrenceEndModel);
      return v18 & 1;
    }
  }

  else
  {
    sub_21D7DB218(v15, v12, type metadata accessor for TTRRecurrenceEndModel);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v19 = v23;
      (*(v4 + 32))(v6, &v15[v17], v23);
      v18 = sub_21DBF55EC();
      v20 = *(v4 + 8);
      v20(v6, v19);
      v20(v12, v19);
      goto LABEL_8;
    }

    (*(v4 + 8))(v12, v23);
  }

  sub_21D0CF7E0(v15, &qword_27CE61B38);
  v18 = 0;
  return v18 & 1;
}

uint64_t _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceEndModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v44 - v12;
  v15 = *(v14 + 56);
  sub_21D3139B4(a1, &v44 - v12);
  sub_21D3139B4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE62610);
      goto LABEL_8;
    }

LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE61B40);
    goto LABEL_38;
  }

  sub_21D3139B4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_21D23D650(v10, type metadata accessor for TTRRecurrenceEndModel);
    goto LABEL_6;
  }

  sub_21D7DA7B4(&v13[v15], v7, type metadata accessor for TTRRecurrenceEndModel);
  v17 = _s15RemindersUICore21TTRRecurrenceEndModelO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_21D23D650(v7, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D23D650(v10, type metadata accessor for TTRRecurrenceEndModel);
  sub_21D0CF7E0(v13, &unk_27CE62610);
  if ((v17 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_8:
  v18 = type metadata accessor for TTRRecurrenceRuleModel(0);
  if (*(a1 + v18[5]) != *(a2 + v18[5]) || *(a1 + v18[6]) != *(a2 + v18[6]) || *(a1 + v18[7]) != *(a2 + v18[7]))
  {
    goto LABEL_38;
  }

  v19 = v18[8];
  v20 = *(a2 + v19);
  if (*(a1 + v19))
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = v18;
    v22 = sub_21D1D7644(*(a1 + v19), v20);
    v18 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v20)
  {
    goto LABEL_38;
  }

  v23 = v18[9];
  v24 = *(a2 + v23);
  if (*(a1 + v23))
  {
    if (!v24)
    {
      goto LABEL_38;
    }

    v25 = v18;
    v26 = sub_21D1D76BC(*(a1 + v23), v24);
    v18 = v25;
    if ((v26 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v24)
  {
    goto LABEL_38;
  }

  v27 = v18[10];
  v28 = *(a2 + v27);
  if (*(a1 + v27))
  {
    if (!v28)
    {
      goto LABEL_38;
    }

    v29 = v18;
    v30 = sub_21D1D76BC(*(a1 + v27), v28);
    v18 = v29;
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v28)
  {
    goto LABEL_38;
  }

  v31 = v18[11];
  v32 = *(a2 + v31);
  if (*(a1 + v31))
  {
    if (!v32)
    {
      goto LABEL_38;
    }

    v33 = v18;
    v34 = sub_21D1D76BC(*(a1 + v31), v32);
    v18 = v33;
    if ((v34 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v32)
  {
    goto LABEL_38;
  }

  v35 = v18[12];
  v36 = *(a2 + v35);
  if (!*(a1 + v35))
  {
    if (!v36)
    {
      goto LABEL_34;
    }

LABEL_38:
    v42 = 0;
    return v42 & 1;
  }

  if (!v36)
  {
    goto LABEL_38;
  }

  v37 = v18;
  v38 = sub_21D1D76BC(*(a1 + v35), v36);
  v18 = v37;
  if ((v38 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  v39 = v18[13];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  v42 = (v40 | v41) == 0;
  if (v40 && v41)
  {
    v42 = sub_21D1D76BC(v40, v41);
  }

  return v42 & 1;
}

uint64_t sub_21D7DAFA0(void *a1)
{
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF5A2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9968], v6);
  v14 = [a1 date];
  sub_21DBF55FC();

  v15 = sub_21DBF5A1C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  if ((v15 - 32) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    return 28;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D7DB218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7DB280(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21D7DB314()
{
  result = qword_27CE61B10;
  if (!qword_27CE61B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61B10);
  }

  return result;
}

unint64_t sub_21D7DB36C()
{
  result = qword_27CE61B18;
  if (!qword_27CE61B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61B18);
  }

  return result;
}

unint64_t sub_21D7DB3C4()
{
  result = qword_27CE61B20;
  if (!qword_27CE61B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61B20);
  }

  return result;
}

unint64_t sub_21D7DB464()
{
  result = qword_27CE61B30;
  if (!qword_27CE61B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61B30);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRecurrenceRuleModel(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRecurrenceEndModel(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a1, a2, *(v8 + 64));
      }

      else
      {
        v11 = sub_21DBF563C();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        swift_storeEnumTagMultiPayload();
      }

      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    *(a1 + v12) = *(a2 + v12);
    v13 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    *(a1 + v13) = *(a2 + v13);
    v14 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v14) = *(a2 + v14);
    v15 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v15) = *(a2 + v15);
    *(a1 + a3[13]) = *(a2 + a3[13]);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTRRecurrenceRuleModel(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v2 - 8) + 48))(a1, 1, v2) && !swift_getEnumCaseMultiPayload())
  {
    v3 = sub_21DBF563C();
    (*(*(v3 - 8) + 8))(a1, v3);
  }
}

char *initializeWithCopy for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v13] = *&a2[v13];
  *&a1[a3[13]] = *&a2[a3[13]];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v14 = sub_21DBF563C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  sub_21DBF8E0C();

  *&a1[a3[9]] = *&a2[a3[9]];
  sub_21DBF8E0C();

  *&a1[a3[10]] = *&a2[a3[10]];
  sub_21DBF8E0C();

  *&a1[a3[11]] = *&a2[a3[11]];
  sub_21DBF8E0C();

  *&a1[a3[12]] = *&a2[a3[12]];
  sub_21DBF8E0C();

  *&a1[a3[13]] = *&a2[a3[13]];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(v7 + 64));
    }

    else
    {
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
    }

    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[12];
  *&a1[a3[11]] = *&a2[a3[11]];
  *&a1[v13] = *&a2[v13];
  *&a1[a3[13]] = *&a2[a3[13]];
  return a1;
}

char *assignWithTake for TTRRecurrenceRuleModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRecurrenceEndModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      if (a1 == a2)
      {
        goto LABEL_14;
      }

      sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
      if (!swift_getEnumCaseMultiPayload())
      {
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      v11 = *(v7 + 64);
      goto LABEL_8;
    }

    sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
LABEL_7:
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8) + 64);
LABEL_8:
    memcpy(a1, a2, v11);
    goto LABEL_14;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a1, a2, *(v7 + 64));
  }

  else
  {
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 32))(a1, a2, v12);
    swift_storeEnumTagMultiPayload();
  }

  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_14:
  v13 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v14] = *&a2[v14];

  *&a1[a3[9]] = *&a2[a3[9]];

  *&a1[a3[10]] = *&a2[a3[10]];

  *&a1[a3[11]] = *&a2[a3[11]];

  *&a1[a3[12]] = *&a2[a3[12]];

  *&a1[a3[13]] = *&a2[a3[13]];

  return a1;
}

void sub_21D7DC200()
{
  sub_21D31395C();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for TTRRecurrenceRuleModel.Day(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRecurrenceRuleModel.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRRecurrenceEndModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(v5 + 64);

  return memcpy(a1, a2, v7);
}

uint64_t destroy for TTRRecurrenceEndModel(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v3 = sub_21DBF563C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *initializeWithTake for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRRecurrenceEndModel(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D23D650(a1, type metadata accessor for TTRRecurrenceEndModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF563C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7DC91C()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D7DC9C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v3 = a1;
    v5 = a3 >> 62;
    if (!(a3 >> 62))
    {
      v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 < v6)
      {
        v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6 < v3)
      {
        goto LABEL_38;
      }

      if (v7 >= v3)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v19 = sub_21DBFBD7C();
  if (v19 < v6)
  {
    v6 = v19;
  }

  if (v6 < v3)
  {
    goto LABEL_38;
  }

  if (sub_21DBFBD7C() < v3)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v3 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < v6)
  {
    goto LABEL_40;
  }

  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v4 & 0xC000000000000001) == 0 || v6 == v3)
  {
    sub_21DBF8E0C();
    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_22:

    v4 = sub_21DBFC3BC();
    v3 = v12;
    v6 = v13;
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_21D198B38(v4, v11, v3, v6);
    v15 = v14;
LABEL_30:
    swift_unknownObjectRelease();
    return v15;
  }

  if (v6 <= v3)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21DBF8E0C();
  v9 = v3;
  do
  {
    v10 = v9 + 1;
    sub_21DBFBF6C();
    v9 = v10;
  }

  while (v6 != v10);
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_19:
  v4 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = v4 + 32;
  v6 = (2 * v6) | 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v5 = v11;
  sub_21DBFC66C();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v6 >> 1, v3))
  {
    goto LABEL_43;
  }

  if (v17 != (v6 >> 1) - v3)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v11 = v5;
    goto LABEL_23;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  return v15;
}

uint64_t sub_21D7DCC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21DBFA1EC() + 32;
      sub_21D0D8CF0(0, &qword_27CE5DDD0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21D0D8CF0(0, &qword_27CE5DDD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21D7DCEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21DBFA1EC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21D7DD108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21D0D3954(a3, v22 - v9, &unk_27CE5F150);
  v11 = sub_21DBFA89C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21DBFA7CC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21DBFA1EC() + 32;
      sub_21DBF78CC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21DBF78CC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}