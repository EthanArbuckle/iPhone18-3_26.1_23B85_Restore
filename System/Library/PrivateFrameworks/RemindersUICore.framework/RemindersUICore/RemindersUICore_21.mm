void *assignWithCopy for TTRRemindersListUncommittedReminder(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  if (a1 != a2)
  {
    sub_21D0CF7E0(a1, &qword_27CE5A3A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v3, 1, v6);
    if (EnumCaseMultiPayload == 1)
    {
      if (v8)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(v4, v3, *(*(v9 - 8) + 64));
LABEL_263:
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *(v4 + *(v215 + 48)) = *(v3 + *(v215 + 48));
        goto LABEL_268;
      }

      v11 = swift_getEnumCaseMultiPayload();
      if (v11 > 3)
      {
        if (v11 > 5)
        {
          switch(v11)
          {
            case 6:
              v51 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v52 = *(v51 - 8);
              if ((*(v52 + 48))(v3, 1, v51))
              {
                v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(v4, v3, *(*(v53 - 8) + 64));
              }

              else
              {
                *v4 = *v3;
                v73 = *(v51 + 20);
                v74 = sub_21DBF6C1C();
                v75 = *(*(v74 - 8) + 16);
                sub_21DBF8E0C();
                v75(v4 + v73, v3 + v73, v74);
                (*(v52 + 56))(v4, 0, 1, v51);
              }

              v76 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v77 = (v4 + v76);
              v78 = (v3 + v76);
              if (v78[1])
              {
                *v77 = *v78;
                v77[1] = v78[1];
                v79 = v78[2];
                v77[2] = v79;
                sub_21DBF8E0C();
                v80 = v79;
              }

              else
              {
                v89 = *v78;
                v77[2] = v78[2];
                *v77 = v89;
              }

              goto LABEL_261;
            case 7:
              v63 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v64 = *(v63 - 8);
              if ((*(v64 + 48))(v3, 1, v63))
              {
                v65 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v4, v3, *(*(v65 - 8) + 64));
              }

              else
              {
                v93 = sub_21DBF563C();
                (*(*(v93 - 8) + 16))(v4, v3, v93);
                *(v4 + *(v63 + 20)) = *(v3 + *(v63 + 20));
                (*(v64 + 56))(v4, 0, 1, v63);
              }

              v94 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v4 + *(v94 + 20)) = *(v3 + *(v94 + 20));
              goto LABEL_261;
            case 8:
              *v4 = *v3;
              v12 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v13 = sub_21DBF8D7C();
              (*(*(v13 - 8) + 16))(v4 + v12, v3 + v12, v13);
LABEL_261:
              swift_storeEnumTagMultiPayload();
              goto LABEL_262;
          }

LABEL_71:
          memcpy(v4, v3, *(v7 + 64));
LABEL_262:
          (*(v7 + 56))(v4, 0, 1, v6);
          goto LABEL_263;
        }

        if (v11 != 4)
        {
          *v4 = *v3;
          *(v4 + 8) = *(v3 + 8);
          *(v4 + 9) = *(v3 + 9);
          *(v4 + 10) = *(v3 + 10);
          v35 = v3[2];
          v4[2] = v35;
          v36 = v35;
          goto LABEL_261;
        }

        v21 = v7;
        v57 = *v3;
        *v4 = *v3;
        v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v25 = *(v24 - 8);
        v58 = *(v25 + 48);
        v59 = v57;
        if (v58(v3 + v23, 1, v24))
        {
LABEL_56:
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v4 + v23, v3 + v23, *(*(v46 - 8) + 64));
          v7 = v21;
          goto LABEL_261;
        }

        v91 = swift_getEnumCaseMultiPayload();
        if (v91 > 4)
        {
          v7 = v21;
          if (v91 <= 7)
          {
            if (v91 == 5 || v91 == 6)
            {
              goto LABEL_229;
            }

            goto LABEL_259;
          }

          if (v91 != 8 && v91 != 9)
          {
            goto LABEL_259;
          }

LABEL_225:
          v209 = *(v3 + v23);
          *(v4 + v23) = v209;
          v210 = v209;
          swift_storeEnumTagMultiPayload();
LABEL_260:
          (*(v25 + 56))(v4 + v23, 0, 1, v24);
          goto LABEL_261;
        }

        v7 = v21;
        if (v91 <= 2)
        {
          if (v91 != 1)
          {
            if (v91 == 2)
            {
              goto LABEL_229;
            }

LABEL_259:
            memcpy(v4 + v23, v3 + v23, *(v25 + 64));
            goto LABEL_260;
          }

          goto LABEL_225;
        }

LABEL_229:
        v213 = sub_21DBF563C();
        (*(*(v213 - 8) + 16))(v4 + v23, v3 + v23, v213);
        swift_storeEnumTagMultiPayload();
        goto LABEL_260;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v21 = v7;
          v43 = *v3;
          *v4 = *v3;
          v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = *(v24 - 8);
          v44 = *(v25 + 48);
          v45 = v43;
          if (v44(v3 + v23, 1, v24))
          {
            goto LABEL_56;
          }

          v71 = swift_getEnumCaseMultiPayload();
          if (v71 > 4)
          {
            v7 = v21;
            if (v71 <= 7)
            {
              if (v71 == 5 || v71 == 6)
              {
                goto LABEL_229;
              }

              goto LABEL_259;
            }

            if (v71 != 8 && v71 != 9)
            {
              goto LABEL_259;
            }

            goto LABEL_225;
          }

          v7 = v21;
          if (v71 > 2)
          {
            goto LABEL_229;
          }

          if (v71 == 1)
          {
            goto LABEL_225;
          }

          if (v71 != 2)
          {
            goto LABEL_259;
          }
        }

        else
        {
          v21 = v7;
          v22 = *v3;
          *v4 = *v3;
          v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = *(v24 - 8);
          v26 = *(v25 + 48);
          v27 = v22;
          if (v26(v3 + v23, 1, v24))
          {
            goto LABEL_56;
          }

          v69 = swift_getEnumCaseMultiPayload();
          if (v69 > 4)
          {
            v7 = v21;
            if (v69 <= 7)
            {
              if (v69 == 5 || v69 == 6)
              {
                goto LABEL_229;
              }

              goto LABEL_259;
            }

            if (v69 != 8 && v69 != 9)
            {
              goto LABEL_259;
            }

            goto LABEL_225;
          }

          v7 = v21;
          if (v69 > 2)
          {
            goto LABEL_229;
          }

          if (v69 == 1)
          {
            goto LABEL_225;
          }

          if (v69 != 2)
          {
            goto LABEL_259;
          }
        }

        goto LABEL_229;
      }

      if (v11)
      {
        if (v11 != 1)
        {
          goto LABEL_71;
        }

        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = swift_getEnumCaseMultiPayload();
        v346 = v6;
        if (v18 <= 4)
        {
          if (v18 > 2)
          {
LABEL_131:
            v97 = sub_21DBF563C();
            (*(*(v97 - 8) + 16))(v4, v3, v97);
            swift_storeEnumTagMultiPayload();
            goto LABEL_184;
          }

          if (v18 != 1)
          {
            if (v18 == 2)
            {
              goto LABEL_131;
            }

            goto LABEL_183;
          }

LABEL_135:
          v99 = *v3;
          *v4 = *v3;
          v100 = v99;
          swift_storeEnumTagMultiPayload();
          goto LABEL_184;
        }

        if (v18 > 7)
        {
          if (v18 == 8 || v18 == 9)
          {
            goto LABEL_135;
          }
        }

        else if (v18 == 5 || v18 == 6)
        {
          goto LABEL_131;
        }

LABEL_183:
        memcpy(v4, v3, *(*(v17 - 8) + 64));
LABEL_184:
        v109 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v110 = v109[5];
        v111 = v4 + v110;
        v112 = v3 + v110;
        if (*(v3 + v110 + 8))
        {
          v334 = v7;
          v349 = v3;
          v341 = v4;
          *v111 = *v112;
          *(v111 + 1) = *(v112 + 1);
          v113 = *(v112 + 2);
          v114 = *(v112 + 3);
          v115 = *(v112 + 4);
          v116 = *(v112 + 5);
          v117 = *(v112 + 6);
          v118 = *(v112 + 7);
          v119 = v112[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v113, v114, v115, v116, v117, v118, v119);
          *(v111 + 2) = v113;
          *(v111 + 3) = v114;
          *(v111 + 4) = v115;
          *(v111 + 5) = v116;
          *(v111 + 6) = v117;
          *(v111 + 7) = v118;
          v111[64] = v119;
          v111[65] = v112[65];
          v111[66] = v112[66];
          v111[67] = v112[67];
          v111[68] = v112[68];
          v120 = v112[120];
          if (v120 == 255)
          {
            v128 = *(v112 + 72);
            v129 = *(v112 + 88);
            v130 = *(v112 + 104);
            v111[120] = v112[120];
            *(v111 + 104) = v130;
            *(v111 + 88) = v129;
            *(v111 + 72) = v128;
          }

          else
          {
            v121 = *(v112 + 9);
            v122 = *(v112 + 10);
            v123 = *(v112 + 11);
            v124 = *(v112 + 12);
            v125 = *(v112 + 13);
            v126 = *(v112 + 14);
            v127 = v120 & 1;
            sub_21D0FB960(v121, v122, v123, v124, v125, v126, v120 & 1);
            *(v111 + 9) = v121;
            *(v111 + 10) = v122;
            *(v111 + 11) = v123;
            *(v111 + 12) = v124;
            *(v111 + 13) = v125;
            *(v111 + 14) = v126;
            v111[120] = v127;
          }

          v4 = v341;
          v6 = v346;
          v7 = v334;
          v111[121] = v112[121];
          v3 = v349;
          goto LABEL_204;
        }

LABEL_201:
        v169 = *v112;
        v170 = *(v112 + 1);
        v171 = *(v112 + 3);
        *(v111 + 2) = *(v112 + 2);
        *(v111 + 3) = v171;
        *v111 = v169;
        *(v111 + 1) = v170;
        v172 = *(v112 + 4);
        v173 = *(v112 + 5);
        v174 = *(v112 + 6);
        *(v111 + 106) = *(v112 + 106);
        *(v111 + 5) = v173;
        *(v111 + 6) = v174;
        *(v111 + 4) = v172;
        v6 = v346;
LABEL_204:
        *(v4 + v109[6]) = *(v3 + v109[6]);
        *(v4 + v109[7]) = *(v3 + v109[7]);
        *(v4 + v109[8]) = *(v3 + v109[8]);
        *(v4 + v109[9]) = *(v3 + v109[9]);
        *(v4 + v109[10]) = *(v3 + v109[10]);
        v178 = v109[11];
        v179 = *(v3 + v178);
        *(v4 + v178) = v179;
        v180 = v179;
        goto LABEL_261;
      }

      v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v40 = swift_getEnumCaseMultiPayload();
      v346 = v6;
      if (v40 <= 4)
      {
        if (v40 > 2)
        {
LABEL_139:
          v103 = sub_21DBF563C();
          (*(*(v103 - 8) + 16))(v4, v3, v103);
          swift_storeEnumTagMultiPayload();
          goto LABEL_198;
        }

        if (v40 != 1)
        {
          if (v40 == 2)
          {
            goto LABEL_139;
          }

          goto LABEL_197;
        }

LABEL_143:
        v105 = *v3;
        *v4 = *v3;
        v106 = v105;
        swift_storeEnumTagMultiPayload();
        goto LABEL_198;
      }

      if (v40 > 7)
      {
        if (v40 == 8 || v40 == 9)
        {
          goto LABEL_143;
        }
      }

      else if (v40 == 5 || v40 == 6)
      {
        goto LABEL_139;
      }

LABEL_197:
      memcpy(v4, v3, *(*(v39 - 8) + 64));
LABEL_198:
      v109 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v153 = v109[5];
      v111 = v4 + v153;
      v112 = v3 + v153;
      if (*(v3 + v153 + 8))
      {
        v335 = v7;
        v351 = v3;
        v343 = v4;
        *v111 = *v112;
        *(v111 + 1) = *(v112 + 1);
        v154 = *(v112 + 2);
        v155 = *(v112 + 3);
        v156 = *(v112 + 4);
        v157 = *(v112 + 5);
        v158 = *(v112 + 6);
        v159 = *(v112 + 7);
        v160 = v112[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v154, v155, v156, v157, v158, v159, v160);
        *(v111 + 2) = v154;
        *(v111 + 3) = v155;
        *(v111 + 4) = v156;
        *(v111 + 5) = v157;
        *(v111 + 6) = v158;
        *(v111 + 7) = v159;
        v111[64] = v160;
        v111[65] = v112[65];
        v111[66] = v112[66];
        v111[67] = v112[67];
        v111[68] = v112[68];
        v161 = v112[120];
        if (v161 == 255)
        {
          v175 = *(v112 + 72);
          v176 = *(v112 + 88);
          v177 = *(v112 + 104);
          v111[120] = v112[120];
          *(v111 + 104) = v177;
          *(v111 + 88) = v176;
          *(v111 + 72) = v175;
        }

        else
        {
          v162 = *(v112 + 9);
          v163 = *(v112 + 10);
          v164 = *(v112 + 11);
          v165 = *(v112 + 12);
          v166 = *(v112 + 13);
          v167 = *(v112 + 14);
          v168 = v161 & 1;
          sub_21D0FB960(v162, v163, v164, v165, v166, v167, v161 & 1);
          *(v111 + 9) = v162;
          *(v111 + 10) = v163;
          *(v111 + 11) = v164;
          *(v111 + 12) = v165;
          *(v111 + 13) = v166;
          *(v111 + 14) = v167;
          v111[120] = v168;
        }

        v4 = v343;
        v6 = v346;
        v7 = v335;
        v111[121] = v112[121];
        v3 = v351;
        goto LABEL_204;
      }

      goto LABEL_201;
    }

    if (v8)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(v4, v3, *(*(v10 - 8) + 64));
      goto LABEL_268;
    }

    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 3)
    {
      if (v14 > 5)
      {
        switch(v14)
        {
          case 6:
            v54 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v55 = *(v54 - 8);
            if ((*(v55 + 48))(v3, 1, v54))
            {
              v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v4, v3, *(*(v56 - 8) + 64));
            }

            else
            {
              *v4 = *v3;
              v81 = *(v54 + 20);
              v82 = sub_21DBF6C1C();
              v83 = *(*(v82 - 8) + 16);
              sub_21DBF8E0C();
              v83(v4 + v81, v3 + v81, v82);
              (*(v55 + 56))(v4, 0, 1, v54);
            }

            v84 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v85 = (v4 + v84);
            v86 = (v3 + v84);
            if (v86[1])
            {
              *v85 = *v86;
              v85[1] = v86[1];
              v87 = v86[2];
              v85[2] = v87;
              sub_21DBF8E0C();
              v88 = v87;
            }

            else
            {
              v90 = *v86;
              v85[2] = v86[2];
              *v85 = v90;
            }

            goto LABEL_266;
          case 7:
            v66 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v67 = *(v66 - 8);
            if ((*(v67 + 48))(v3, 1, v66))
            {
              v68 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v4, v3, *(*(v68 - 8) + 64));
            }

            else
            {
              v95 = sub_21DBF563C();
              (*(*(v95 - 8) + 16))(v4, v3, v95);
              *(v4 + *(v66 + 20)) = *(v3 + *(v66 + 20));
              (*(v67 + 56))(v4, 0, 1, v66);
            }

            v96 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v4 + *(v96 + 20)) = *(v3 + *(v96 + 20));
            goto LABEL_266;
          case 8:
            *v4 = *v3;
            v15 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v16 = sub_21DBF8D7C();
            (*(*(v16 - 8) + 16))(v4 + v15, v3 + v15, v16);
LABEL_266:
            swift_storeEnumTagMultiPayload();
            goto LABEL_267;
        }

LABEL_72:
        memcpy(v4, v3, *(v7 + 64));
LABEL_267:
        (*(v7 + 56))(v4, 0, 1, v6);
LABEL_268:
        swift_storeEnumTagMultiPayload();
        v216 = *(a3 + 20);
        v217 = (v4 + v216);
        v218 = (v3 + v216);
        sub_21D106918(v4 + v216, type metadata accessor for TTRRemindersListViewModel.Item);
        v219 = swift_getEnumCaseMultiPayload();
        if (v219 > 3)
        {
          if (v219 > 5)
          {
            switch(v219)
            {
              case 6:
                v242 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                v243 = *(v242 - 8);
                if ((*(v243 + 48))(v218, 1, v242))
                {
                  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                  memcpy(v217, v218, *(*(v244 - 8) + 64));
                }

                else
                {
                  *v217 = *v218;
                  v254 = v218;
                  v255 = v217;
                  v256 = *(v242 + 20);
                  v257 = sub_21DBF6C1C();
                  v338 = *(*(v257 - 8) + 16);
                  sub_21DBF8E0C();
                  v258 = v255 + v256;
                  v259 = v254 + v256;
                  v217 = v255;
                  v218 = v254;
                  v338(v258, v259, v257);
                  (*(v243 + 56))(v217, 0, 1, v242);
                }

                v260 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                v261 = (v217 + v260);
                v262 = (v218 + v260);
                if (v262[1])
                {
                  *v261 = *v262;
                  v261[1] = v262[1];
                  v263 = v262[2];
                  v261[2] = v263;
                  sub_21DBF8E0C();
                  v264 = v263;
                }

                else
                {
                  v265 = *v262;
                  v261[2] = v262[2];
                  *v261 = v265;
                }

                goto LABEL_397;
              case 7:
                v249 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                v250 = *(v249 - 8);
                if ((*(v250 + 48))(v218, 1, v249))
                {
                  v251 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                  memcpy(v217, v218, *(*(v251 - 8) + 64));
                }

                else
                {
                  v267 = sub_21DBF563C();
                  (*(*(v267 - 8) + 16))(v217, v218, v267);
                  *(v217 + *(v249 + 20)) = *(v218 + *(v249 + 20));
                  (*(v250 + 56))(v217, 0, 1, v249);
                }

                v268 = type metadata accessor for TTRTemplatePublicLinkData(0);
                *(v217 + *(v268 + 20)) = *(v218 + *(v268 + 20));
                goto LABEL_397;
              case 8:
                *v217 = *v218;
                v220 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                v221 = sub_21DBF8D7C();
                (*(*(v221 - 8) + 16))(v217 + v220, v218 + v220, v221);
LABEL_397:
                swift_storeEnumTagMultiPayload();
                goto LABEL_398;
            }

            goto LABEL_300;
          }

          if (v219 != 4)
          {
            *v217 = *v218;
            *(v217 + 8) = *(v218 + 8);
            *(v217 + 9) = *(v218 + 9);
            *(v217 + 10) = *(v218 + 10);
            v230 = v218[2];
            v217[2] = v230;
            v231 = v230;
            goto LABEL_397;
          }

          v245 = *v218;
          *v217 = *v218;
          v225 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v226 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v227 = *(v226 - 8);
          v246 = *(v227 + 48);
          v247 = v245;
          if (v246(v218 + v225, 1, v226))
          {
LABEL_297:
            v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(v217 + v225, v218 + v225, *(*(v248 - 8) + 64));
            goto LABEL_397;
          }

          v266 = swift_getEnumCaseMultiPayload();
          if (v266 > 4)
          {
            if (v266 <= 7)
            {
              if (v266 == 5 || v266 == 6)
              {
                goto LABEL_379;
              }

              goto LABEL_395;
            }

            if (v266 != 8 && v266 != 9)
            {
              goto LABEL_395;
            }

LABEL_382:
            v329 = *(v218 + v225);
            *(v217 + v225) = v329;
            v330 = v329;
            swift_storeEnumTagMultiPayload();
            goto LABEL_396;
          }

          if (v266 <= 2)
          {
            if (v266 != 1)
            {
              if (v266 == 2)
              {
                goto LABEL_379;
              }

LABEL_395:
              memcpy(v217 + v225, v218 + v225, *(v227 + 64));
              goto LABEL_396;
            }

            goto LABEL_382;
          }

LABEL_379:
          v328 = sub_21DBF563C();
          (*(*(v328 - 8) + 16))(v217 + v225, v218 + v225, v328);
          swift_storeEnumTagMultiPayload();
LABEL_396:
          (*(v227 + 56))(v217 + v225, 0, 1, v226);
          goto LABEL_397;
        }

        if (v219 <= 1)
        {
          if (v219)
          {
            if (v219 != 1)
            {
LABEL_300:
              memcpy(v217, v218, *(v7 + 64));
              goto LABEL_398;
            }

            v222 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v223 = swift_getEnumCaseMultiPayload();
            v345 = v4;
            v353 = v3;
            if (v223 <= 4)
            {
              if (v223 > 2)
              {
LABEL_330:
                v269 = sub_21DBF563C();
                (*(*(v269 - 8) + 16))(v217, v218, v269);
                swift_storeEnumTagMultiPayload();
                goto LABEL_357;
              }

              if (v223 != 1)
              {
                if (v223 == 2)
                {
                  goto LABEL_330;
                }

                goto LABEL_356;
              }

LABEL_333:
              v270 = *v218;
              *v217 = *v218;
              v271 = v270;
              swift_storeEnumTagMultiPayload();
              goto LABEL_357;
            }

            if (v223 > 7)
            {
              if (v223 == 8 || v223 == 9)
              {
                goto LABEL_333;
              }
            }

            else if (v223 == 5 || v223 == 6)
            {
              goto LABEL_330;
            }

LABEL_356:
            memcpy(v217, v218, *(*(v222 - 8) + 64));
LABEL_357:
            v275 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v276 = v275[5];
            v277 = v217 + v276;
            v278 = v218 + v276;
            if (*(v218 + v276 + 8))
            {
              v336 = v218;
              v339 = v217;
              *v277 = *v278;
              *(v277 + 1) = *(v278 + 1);
              v279 = *(v278 + 2);
              v280 = *(v278 + 3);
              v281 = *(v278 + 4);
              v282 = *(v278 + 5);
              v283 = *(v278 + 6);
              v284 = *(v278 + 7);
              v285 = v278[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v279, v280, v281, v282, v283, v284, v285);
              *(v277 + 2) = v279;
              *(v277 + 3) = v280;
              *(v277 + 4) = v281;
              *(v277 + 5) = v282;
              *(v277 + 6) = v283;
              *(v277 + 7) = v284;
              v277[64] = v285;
              v277[65] = v278[65];
              v277[66] = v278[66];
              v277[67] = v278[67];
              v277[68] = v278[68];
              v286 = v278[120];
              if (v286 == 255)
              {
                v300 = *(v278 + 72);
                v301 = *(v278 + 88);
                v302 = *(v278 + 104);
                v277[120] = v278[120];
                *(v277 + 104) = v302;
                *(v277 + 88) = v301;
                *(v277 + 72) = v300;
              }

              else
              {
                v287 = *(v278 + 9);
                v288 = *(v278 + 10);
                v289 = *(v278 + 11);
                v290 = *(v278 + 12);
                v291 = *(v278 + 13);
                v292 = *(v278 + 14);
                v293 = v286 & 1;
                sub_21D0FB960(v287, v288, v289, v290, v291, v292, v286 & 1);
                *(v277 + 9) = v287;
                *(v277 + 10) = v288;
                *(v277 + 11) = v289;
                *(v277 + 12) = v290;
                *(v277 + 13) = v291;
                *(v277 + 14) = v292;
                v277[120] = v293;
              }

              v217 = v339;
              v4 = v345;
              v3 = v353;
              v277[121] = v278[121];
              v218 = v336;
              goto LABEL_363;
            }

LABEL_360:
            v294 = *v278;
            v295 = *(v278 + 1);
            v296 = *(v278 + 3);
            *(v277 + 2) = *(v278 + 2);
            *(v277 + 3) = v296;
            *v277 = v294;
            *(v277 + 1) = v295;
            v297 = *(v278 + 4);
            v298 = *(v278 + 5);
            v299 = *(v278 + 6);
            *(v277 + 106) = *(v278 + 106);
            *(v277 + 5) = v298;
            *(v277 + 6) = v299;
            *(v277 + 4) = v297;
            v4 = v345;
            v3 = v353;
LABEL_363:
            *(v217 + v275[6]) = *(v218 + v275[6]);
            *(v217 + v275[7]) = *(v218 + v275[7]);
            *(v217 + v275[8]) = *(v218 + v275[8]);
            *(v217 + v275[9]) = *(v218 + v275[9]);
            *(v217 + v275[10]) = *(v218 + v275[10]);
            v303 = v275[11];
            v304 = *(v218 + v303);
            *(v217 + v303) = v304;
            v305 = v304;
            goto LABEL_397;
          }

          v232 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v233 = swift_getEnumCaseMultiPayload();
          v345 = v4;
          v353 = v3;
          if (v233 <= 4)
          {
            if (v233 > 2)
            {
LABEL_334:
              v272 = sub_21DBF563C();
              (*(*(v272 - 8) + 16))(v217, v218, v272);
              swift_storeEnumTagMultiPayload();
              goto LABEL_365;
            }

            if (v233 != 1)
            {
              if (v233 == 2)
              {
                goto LABEL_334;
              }

              goto LABEL_364;
            }

LABEL_337:
            v273 = *v218;
            *v217 = *v218;
            v274 = v273;
            swift_storeEnumTagMultiPayload();
            goto LABEL_365;
          }

          if (v233 > 7)
          {
            if (v233 == 8 || v233 == 9)
            {
              goto LABEL_337;
            }
          }

          else if (v233 == 5 || v233 == 6)
          {
            goto LABEL_334;
          }

LABEL_364:
          memcpy(v217, v218, *(*(v232 - 8) + 64));
LABEL_365:
          v275 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v306 = v275[5];
          v277 = v217 + v306;
          v278 = v218 + v306;
          if (*(v218 + v306 + 8))
          {
            v337 = v218;
            v340 = v217;
            *v277 = *v278;
            *(v277 + 1) = *(v278 + 1);
            v307 = *(v278 + 2);
            v308 = *(v278 + 3);
            v309 = *(v278 + 4);
            v310 = *(v278 + 5);
            v312 = *(v278 + 6);
            v311 = *(v278 + 7);
            v313 = v278[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v307, v308, v309, v310, v312, v311, v313);
            *(v277 + 2) = v307;
            *(v277 + 3) = v308;
            *(v277 + 4) = v309;
            *(v277 + 5) = v310;
            *(v277 + 6) = v312;
            *(v277 + 7) = v311;
            v277[64] = v313;
            v277[65] = v278[65];
            v277[66] = v278[66];
            v277[67] = v278[67];
            v277[68] = v278[68];
            v314 = v278[120];
            if (v314 == 255)
            {
              v322 = *(v278 + 72);
              v323 = *(v278 + 88);
              v324 = *(v278 + 104);
              v277[120] = v278[120];
              *(v277 + 104) = v324;
              *(v277 + 88) = v323;
              *(v277 + 72) = v322;
            }

            else
            {
              v315 = *(v278 + 9);
              v316 = *(v278 + 10);
              v317 = *(v278 + 11);
              v318 = *(v278 + 12);
              v319 = *(v278 + 13);
              v320 = *(v278 + 14);
              v321 = v314 & 1;
              sub_21D0FB960(v315, v316, v317, v318, v319, v320, v314 & 1);
              *(v277 + 9) = v315;
              *(v277 + 10) = v316;
              *(v277 + 11) = v317;
              *(v277 + 12) = v318;
              *(v277 + 13) = v319;
              *(v277 + 14) = v320;
              v277[120] = v321;
            }

            v217 = v340;
            v4 = v345;
            v3 = v353;
            v277[121] = v278[121];
            v218 = v337;
            goto LABEL_363;
          }

          goto LABEL_360;
        }

        if (v219 != 2)
        {
          v224 = *v218;
          *v217 = *v218;
          v225 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v226 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v227 = *(v226 - 8);
          v228 = *(v227 + 48);
          v229 = v224;
          if (v228(v218 + v225, 1, v226))
          {
            goto LABEL_297;
          }

          v252 = swift_getEnumCaseMultiPayload();
          if (v252 > 4)
          {
            if (v252 <= 7)
            {
              if (v252 == 5 || v252 == 6)
              {
                goto LABEL_379;
              }

              goto LABEL_395;
            }

            if (v252 != 8 && v252 != 9)
            {
              goto LABEL_395;
            }

            goto LABEL_382;
          }

          if (v252 > 2)
          {
            goto LABEL_379;
          }

          if (v252 == 1)
          {
            goto LABEL_382;
          }

          if (v252 != 2)
          {
            goto LABEL_395;
          }

          goto LABEL_379;
        }

        v354 = v3;
        v234 = *v218;
        *v217 = *v218;
        v235 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v236 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v237 = *(v236 - 8);
        v238 = *(v237 + 48);
        v239 = v234;
        v240 = v235;
        if (v238(v218 + v235, 1, v236))
        {
          v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v217 + v235, v218 + v235, *(*(v241 - 8) + 64));
          v3 = v354;
          goto LABEL_397;
        }

        v253 = swift_getEnumCaseMultiPayload();
        v3 = v354;
        if (v253 > 4)
        {
          if (v253 <= 7)
          {
            if (v253 == 5 || v253 == 6)
            {
              goto LABEL_375;
            }

            goto LABEL_393;
          }

          if (v253 != 8 && v253 != 9)
          {
            goto LABEL_393;
          }
        }

        else
        {
          if (v253 > 2)
          {
LABEL_375:
            v325 = sub_21DBF563C();
            (*(*(v325 - 8) + 16))(v217 + v240, v218 + v240, v325);
            swift_storeEnumTagMultiPayload();
LABEL_394:
            (*(v237 + 56))(v217 + v240, 0, 1, v236);
            goto LABEL_397;
          }

          if (v253 != 1)
          {
            if (v253 == 2)
            {
              goto LABEL_375;
            }

LABEL_393:
            memcpy(v217 + v240, v218 + v240, *(v237 + 64));
            goto LABEL_394;
          }
        }

        v326 = *(v218 + v240);
        *(v217 + v240) = v326;
        v327 = v326;
        swift_storeEnumTagMultiPayload();
        goto LABEL_394;
      }

      if (v14 != 4)
      {
        *v4 = *v3;
        *(v4 + 8) = *(v3 + 8);
        *(v4 + 9) = *(v3 + 9);
        *(v4 + 10) = *(v3 + 10);
        v37 = v3[2];
        v4[2] = v37;
        v38 = v37;
        goto LABEL_266;
      }

      v28 = v7;
      v60 = *v3;
      *v4 = *v3;
      v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v32 = *(v31 - 8);
      v61 = *(v32 + 48);
      v62 = v60;
      if (v61(v3 + v30, 1, v31))
      {
LABEL_58:
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v4 + v30, v3 + v30, *(*(v50 - 8) + 64));
        v7 = v28;
        goto LABEL_266;
      }

      v92 = swift_getEnumCaseMultiPayload();
      if (v92 > 4)
      {
        v7 = v28;
        if (v92 <= 7)
        {
          if (v92 == 5 || v92 == 6)
          {
            goto LABEL_230;
          }

          goto LABEL_264;
        }

        if (v92 != 8 && v92 != 9)
        {
          goto LABEL_264;
        }

LABEL_228:
        v211 = *(v3 + v30);
        *(v4 + v30) = v211;
        v212 = v211;
        swift_storeEnumTagMultiPayload();
LABEL_265:
        (*(v32 + 56))(v4 + v30, 0, 1, v31);
        goto LABEL_266;
      }

      v7 = v28;
      if (v92 <= 2)
      {
        if (v92 != 1)
        {
          if (v92 == 2)
          {
            goto LABEL_230;
          }

LABEL_264:
          memcpy(v4 + v30, v3 + v30, *(v32 + 64));
          goto LABEL_265;
        }

        goto LABEL_228;
      }

LABEL_230:
      v214 = sub_21DBF563C();
      (*(*(v214 - 8) + 16))(v4 + v30, v3 + v30, v214);
      swift_storeEnumTagMultiPayload();
      goto LABEL_265;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v28 = v7;
        v47 = *v3;
        *v4 = *v3;
        v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v32 = *(v31 - 8);
        v48 = *(v32 + 48);
        v49 = v47;
        if (v48(v3 + v30, 1, v31))
        {
          goto LABEL_58;
        }

        v72 = swift_getEnumCaseMultiPayload();
        if (v72 > 4)
        {
          v7 = v28;
          if (v72 <= 7)
          {
            if (v72 == 5 || v72 == 6)
            {
              goto LABEL_230;
            }

            goto LABEL_264;
          }

          if (v72 != 8 && v72 != 9)
          {
            goto LABEL_264;
          }

          goto LABEL_228;
        }

        v7 = v28;
        if (v72 > 2)
        {
          goto LABEL_230;
        }

        if (v72 == 1)
        {
          goto LABEL_228;
        }

        if (v72 != 2)
        {
          goto LABEL_264;
        }
      }

      else
      {
        v28 = v7;
        v29 = *v3;
        *v4 = *v3;
        v30 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v32 = *(v31 - 8);
        v33 = *(v32 + 48);
        v34 = v29;
        if (v33(v3 + v30, 1, v31))
        {
          goto LABEL_58;
        }

        v70 = swift_getEnumCaseMultiPayload();
        if (v70 > 4)
        {
          v7 = v28;
          if (v70 <= 7)
          {
            if (v70 == 5 || v70 == 6)
            {
              goto LABEL_230;
            }

            goto LABEL_264;
          }

          if (v70 != 8 && v70 != 9)
          {
            goto LABEL_264;
          }

          goto LABEL_228;
        }

        v7 = v28;
        if (v70 > 2)
        {
          goto LABEL_230;
        }

        if (v70 == 1)
        {
          goto LABEL_228;
        }

        if (v70 != 2)
        {
          goto LABEL_264;
        }
      }

      goto LABEL_230;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_72;
      }

      v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v20 = swift_getEnumCaseMultiPayload();
      v332 = v7;
      if (v20 <= 4)
      {
        if (v20 > 2)
        {
LABEL_132:
          v98 = sub_21DBF563C();
          (*(*(v98 - 8) + 16))(v4, v3, v98);
          swift_storeEnumTagMultiPayload();
          goto LABEL_191;
        }

        if (v20 != 1)
        {
          if (v20 == 2)
          {
            goto LABEL_132;
          }

          goto LABEL_190;
        }

LABEL_138:
        v101 = *v3;
        *v4 = *v3;
        v102 = v101;
        swift_storeEnumTagMultiPayload();
        goto LABEL_191;
      }

      if (v20 > 7)
      {
        if (v20 == 8 || v20 == 9)
        {
          goto LABEL_138;
        }
      }

      else if (v20 == 5 || v20 == 6)
      {
        goto LABEL_132;
      }

LABEL_190:
      memcpy(v4, v3, *(*(v19 - 8) + 64));
LABEL_191:
      v131 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v132 = v131[5];
      v133 = v4 + v132;
      v134 = v3 + v132;
      if (*(v3 + v132 + 8))
      {
        v348 = v6;
        v350 = v3;
        v342 = v4;
        *v133 = *v134;
        *(v133 + 1) = *(v134 + 1);
        v135 = *(v134 + 2);
        v136 = *(v134 + 3);
        v137 = *(v134 + 4);
        v138 = *(v134 + 5);
        v139 = *(v134 + 6);
        v140 = *(v134 + 7);
        v141 = v134[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v135, v136, v137, v138, v139, v140, v141);
        *(v133 + 2) = v135;
        *(v133 + 3) = v136;
        *(v133 + 4) = v137;
        *(v133 + 5) = v138;
        *(v133 + 6) = v139;
        *(v133 + 7) = v140;
        v133[64] = v141;
        v133[65] = v134[65];
        v133[66] = v134[66];
        v133[67] = v134[67];
        v133[68] = v134[68];
        v142 = v134[120];
        if (v142 == 255)
        {
          v150 = *(v134 + 72);
          v151 = *(v134 + 88);
          v152 = *(v134 + 104);
          v133[120] = v134[120];
          *(v133 + 104) = v152;
          *(v133 + 88) = v151;
          *(v133 + 72) = v150;
        }

        else
        {
          v143 = *(v134 + 9);
          v144 = *(v134 + 10);
          v145 = *(v134 + 11);
          v146 = *(v134 + 12);
          v147 = *(v134 + 13);
          v148 = *(v134 + 14);
          v149 = v142 & 1;
          sub_21D0FB960(v143, v144, v145, v146, v147, v148, v142 & 1);
          *(v133 + 9) = v143;
          *(v133 + 10) = v144;
          *(v133 + 11) = v145;
          *(v133 + 12) = v146;
          *(v133 + 13) = v147;
          *(v133 + 14) = v148;
          v133[120] = v149;
        }

        v4 = v342;
        v6 = v348;
        v7 = v332;
        v133[121] = v134[121];
        v3 = v350;
        goto LABEL_212;
      }

LABEL_209:
      v197 = *v134;
      v198 = *(v134 + 1);
      v199 = *(v134 + 3);
      *(v133 + 2) = *(v134 + 2);
      *(v133 + 3) = v199;
      *v133 = v197;
      *(v133 + 1) = v198;
      v200 = *(v134 + 4);
      v201 = *(v134 + 5);
      v202 = *(v134 + 6);
      *(v133 + 106) = *(v134 + 106);
      *(v133 + 5) = v201;
      *(v133 + 6) = v202;
      *(v133 + 4) = v200;
LABEL_212:
      *(v4 + v131[6]) = *(v3 + v131[6]);
      *(v4 + v131[7]) = *(v3 + v131[7]);
      *(v4 + v131[8]) = *(v3 + v131[8]);
      *(v4 + v131[9]) = *(v3 + v131[9]);
      *(v4 + v131[10]) = *(v3 + v131[10]);
      v206 = v131[11];
      v207 = *(v3 + v206);
      *(v4 + v206) = v207;
      v208 = v207;
      goto LABEL_266;
    }

    v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v42 = swift_getEnumCaseMultiPayload();
    v347 = v6;
    v333 = v7;
    if (v42 <= 4)
    {
      if (v42 > 2)
      {
LABEL_140:
        v104 = sub_21DBF563C();
        (*(*(v104 - 8) + 16))(v4, v3, v104);
        swift_storeEnumTagMultiPayload();
        goto LABEL_206;
      }

      if (v42 != 1)
      {
        if (v42 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_205;
      }

LABEL_146:
      v107 = *v3;
      *v4 = *v3;
      v108 = v107;
      swift_storeEnumTagMultiPayload();
      goto LABEL_206;
    }

    if (v42 > 7)
    {
      if (v42 == 8 || v42 == 9)
      {
        goto LABEL_146;
      }
    }

    else if (v42 == 5 || v42 == 6)
    {
      goto LABEL_140;
    }

LABEL_205:
    memcpy(v4, v3, *(*(v41 - 8) + 64));
LABEL_206:
    v131 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v181 = v131[5];
    v133 = v4 + v181;
    v134 = v3 + v181;
    if (*(v3 + v181 + 8))
    {
      v352 = v3;
      v344 = v4;
      *v133 = *v134;
      *(v133 + 1) = *(v134 + 1);
      v182 = *(v134 + 2);
      v183 = *(v134 + 3);
      v185 = *(v134 + 4);
      v184 = *(v134 + 5);
      v186 = *(v134 + 6);
      v187 = *(v134 + 7);
      v188 = v134[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v182, v183, v185, v184, v186, v187, v188);
      *(v133 + 2) = v182;
      *(v133 + 3) = v183;
      *(v133 + 4) = v185;
      *(v133 + 5) = v184;
      *(v133 + 6) = v186;
      *(v133 + 7) = v187;
      v133[64] = v188;
      v133[65] = v134[65];
      v133[66] = v134[66];
      v133[67] = v134[67];
      v133[68] = v134[68];
      v189 = v134[120];
      if (v189 == 255)
      {
        v203 = *(v134 + 72);
        v204 = *(v134 + 88);
        v205 = *(v134 + 104);
        v133[120] = v134[120];
        *(v133 + 104) = v205;
        *(v133 + 88) = v204;
        *(v133 + 72) = v203;
      }

      else
      {
        v190 = *(v134 + 9);
        v191 = *(v134 + 10);
        v192 = *(v134 + 11);
        v193 = *(v134 + 12);
        v194 = *(v134 + 13);
        v195 = *(v134 + 14);
        v196 = v189 & 1;
        sub_21D0FB960(v190, v191, v192, v193, v194, v195, v189 & 1);
        *(v133 + 9) = v190;
        *(v133 + 10) = v191;
        *(v133 + 11) = v192;
        *(v133 + 12) = v193;
        *(v133 + 13) = v194;
        *(v133 + 14) = v195;
        v133[120] = v196;
      }

      v4 = v344;
      v6 = v347;
      v7 = v333;
      v133[121] = v134[121];
      v3 = v352;
      goto LABEL_212;
    }

    goto LABEL_209;
  }

LABEL_398:
  *(v4 + *(a3 + 24)) = *(v3 + *(a3 + 24));

  return v4;
}

_BYTE *initializeWithTake for TTRRemindersListUncommittedReminder(_BYTE *a1, _BYTE *a2, uint64_t a3)
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
      goto LABEL_274;
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
LABEL_274:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListUncommittedReminder(_BYTE *a1, _BYTE *a2, uint64_t a3)
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
            goto LABEL_275;
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
        goto LABEL_275;
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

LABEL_275:
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

void sub_21D2B7814()
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

void sub_21D2B78E4()
{
  if (!qword_280D10248)
  {
    type metadata accessor for TTRRemindersListViewModel.Item(255);
    sub_21D2F89FC(&qword_280D142C8, type metadata accessor for TTRRemindersListViewModel.Item);
    v0 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation();
    if (!v1)
    {
      atomic_store(v0, &qword_280D10248);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersListReminderCreationLocation(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
        v8 = *(v7 - 8);
        if ((*(v8 + 48))(a2, 1, v7))
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
          memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_411:
          v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
          *(a1 + *(v268 + 48)) = *(a2 + *(v268 + 48));
          goto LABEL_412;
        }

        v22 = swift_getEnumCaseMultiPayload();
        if (v22 > 3)
        {
          if (v22 > 5)
          {
            switch(v22)
            {
              case 6:
                v89 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                v90 = *(v89 - 8);
                if ((*(v90 + 48))(a2, 1, v89))
                {
                  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                  memcpy(a1, a2, *(*(v91 - 8) + 64));
                }

                else
                {
                  *a1 = *a2;
                  v131 = *(v89 + 20);
                  v301 = v8;
                  v132 = sub_21DBF6C1C();
                  v275 = *(*(v132 - 8) + 16);
                  sub_21DBF8E0C();
                  v133 = v132;
                  v8 = v301;
                  v275(a1 + v131, a2 + v131, v133);
                  (*(v90 + 56))(a1, 0, 1, v89);
                }

                v134 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                v135 = (a1 + v134);
                v136 = (a2 + v134);
                v137 = v136[1];
                if (v137)
                {
                  *v135 = *v136;
                  v135[1] = v137;
                  v138 = v136[2];
                  v135[2] = v138;
                  sub_21DBF8E0C();
                  v139 = v138;
                }

                else
                {
                  *v135 = *v136;
                  v135[2] = v136[2];
                }

                goto LABEL_409;
              case 7:
                v112 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                v113 = *(v112 - 8);
                if ((*(v113 + 48))(a2, 1, v112))
                {
                  v114 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                  memcpy(a1, a2, *(*(v114 - 8) + 64));
                }

                else
                {
                  v141 = sub_21DBF563C();
                  (*(*(v141 - 8) + 16))(a1, a2, v141);
                  *(a1 + *(v112 + 20)) = *(a2 + *(v112 + 20));
                  (*(v113 + 56))(a1, 0, 1, v112);
                }

                v142 = type metadata accessor for TTRTemplatePublicLinkData(0);
                *(a1 + *(v142 + 20)) = *(a2 + *(v142 + 20));
                goto LABEL_409;
              case 8:
                *a1 = *a2;
                v23 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                v24 = sub_21DBF8D7C();
                (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
LABEL_409:
                swift_storeEnumTagMultiPayload();
                goto LABEL_410;
            }

            goto LABEL_179;
          }

          if (v22 != 4)
          {
            *a1 = *a2;
            *(a1 + 8) = *(a2 + 8);
            *(a1 + 9) = *(a2 + 9);
            v74 = a2[2];
            a1[2] = v74;
            v75 = v74;
            goto LABEL_409;
          }

          v300 = v8;
          v105 = *a2;
          *a1 = *a2;
          v106 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v107 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v108 = *(v107 - 8);
          v109 = *(v108 + 48);
          v110 = v105;
          if (v109(a2 + v106, 1, v107))
          {
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(a1 + v106, a2 + v106, *(*(v111 - 8) + 64));
LABEL_408:
            v8 = v300;
            goto LABEL_409;
          }

          v140 = swift_getEnumCaseMultiPayload();
          if (v140 > 4)
          {
            if (v140 <= 7)
            {
              if (v140 == 5 || v140 == 6)
              {
                goto LABEL_387;
              }

              goto LABEL_406;
            }

            if (v140 != 8 && v140 != 9)
            {
              goto LABEL_406;
            }
          }

          else
          {
            if (v140 > 2)
            {
LABEL_387:
              v265 = sub_21DBF563C();
              (*(*(v265 - 8) + 16))(a1 + v106, a2 + v106, v265);
              swift_storeEnumTagMultiPayload();
LABEL_407:
              (*(v108 + 56))(a1 + v106, 0, 1, v107);
              goto LABEL_408;
            }

            if (v140 != 1)
            {
              if (v140 == 2)
              {
                goto LABEL_387;
              }

LABEL_406:
              memcpy(a1 + v106, a2 + v106, *(v108 + 64));
              goto LABEL_407;
            }
          }

          v266 = *(a2 + v106);
          *(a1 + v106) = v266;
          v267 = v266;
          swift_storeEnumTagMultiPayload();
          goto LABEL_407;
        }

        if (v22 <= 1)
        {
          if (v22)
          {
            if (v22 != 1)
            {
LABEL_179:
              memcpy(a1, a2, *(v8 + 64));
LABEL_410:
              (*(v8 + 56))(a1, 0, 1, v7);
              goto LABEL_411;
            }

            v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v40 = swift_getEnumCaseMultiPayload();
            v287 = v7;
            if (v40 <= 4)
            {
              if (v40 > 2)
              {
LABEL_291:
                v213 = sub_21DBF563C();
                (*(*(v213 - 8) + 16))(a1, a2, v213);
                swift_storeEnumTagMultiPayload();
                goto LABEL_360;
              }

              if (v40 != 1)
              {
                if (v40 == 2)
                {
                  goto LABEL_291;
                }

                goto LABEL_359;
              }

LABEL_296:
              v214 = *a2;
              *a1 = *a2;
              v215 = v214;
              swift_storeEnumTagMultiPayload();
              goto LABEL_360;
            }

            if (v40 > 7)
            {
              if (v40 == 8 || v40 == 9)
              {
                goto LABEL_296;
              }
            }

            else if (v40 == 5 || v40 == 6)
            {
              goto LABEL_291;
            }

LABEL_359:
            memcpy(a1, a2, *(*(v39 - 8) + 64));
LABEL_360:
            v222 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v223 = v222[5];
            v224 = a1 + v223;
            v225 = a2 + v223;
            v226 = *(a2 + v223 + 8);
            if (v226)
            {
              v284 = v222;
              v302 = v8;
              *v224 = *v225;
              *(v224 + 1) = v226;
              v227 = *(v225 + 2);
              v228 = *(v225 + 3);
              v229 = *(v225 + 4);
              v230 = *(v225 + 5);
              v231 = *(v225 + 6);
              v232 = *(v225 + 7);
              v272 = v225[64];
              sub_21DBF8E0C();
              sub_21D2A7DB4(v227, v228, v229, v230, v231, v232, v272);
              *(v224 + 2) = v227;
              *(v224 + 3) = v228;
              *(v224 + 4) = v229;
              *(v224 + 5) = v230;
              *(v224 + 6) = v231;
              *(v224 + 7) = v232;
              v224[64] = v272;
              *(v224 + 65) = *(v225 + 65);
              v233 = v225[120];
              if (v233 == 255)
              {
                *(v224 + 72) = *(v225 + 72);
                *(v224 + 88) = *(v225 + 88);
                *(v224 + 104) = *(v225 + 104);
                v224[120] = v225[120];
              }

              else
              {
                v234 = *(v225 + 9);
                v235 = *(v225 + 10);
                v236 = *(v225 + 11);
                v237 = *(v225 + 12);
                v238 = *(v225 + 13);
                v273 = *(v225 + 14);
                v239 = v233 & 1;
                sub_21D0FB960(v234, v235, v236, v237, v238, v273, v233 & 1);
                *(v224 + 9) = v234;
                *(v224 + 10) = v235;
                *(v224 + 11) = v236;
                *(v224 + 12) = v237;
                *(v224 + 13) = v238;
                *(v224 + 14) = v273;
                v224[120] = v239;
              }

              v8 = v302;
              v222 = v284;
              v7 = v287;
              v224[121] = v225[121];
              goto LABEL_366;
            }

LABEL_363:
            v240 = *(v225 + 5);
            *(v224 + 4) = *(v225 + 4);
            *(v224 + 5) = v240;
            *(v224 + 6) = *(v225 + 6);
            *(v224 + 106) = *(v225 + 106);
            v241 = *(v225 + 1);
            *v224 = *v225;
            *(v224 + 1) = v241;
            v242 = *(v225 + 3);
            *(v224 + 2) = *(v225 + 2);
            *(v224 + 3) = v242;
LABEL_366:
            *(a1 + v222[6]) = *(a2 + v222[6]);
            *(a1 + v222[7]) = *(a2 + v222[7]);
            *(a1 + v222[8]) = *(a2 + v222[8]);
            *(a1 + v222[9]) = *(a2 + v222[9]);
            *(a1 + v222[10]) = *(a2 + v222[10]);
            v243 = v222[11];
            v244 = *(a2 + v243);
            *(a1 + v243) = v244;
            v245 = v244;
            goto LABEL_409;
          }

          v78 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v79 = swift_getEnumCaseMultiPayload();
          if (v79 <= 4)
          {
            if (v79 > 2)
            {
LABEL_303:
              v216 = sub_21DBF563C();
              (*(*(v216 - 8) + 16))(a1, a2, v216);
              swift_storeEnumTagMultiPayload();
              goto LABEL_370;
            }

            if (v79 != 1)
            {
              if (v79 == 2)
              {
                goto LABEL_303;
              }

              goto LABEL_369;
            }

LABEL_308:
            v217 = *a2;
            *a1 = *a2;
            v218 = v217;
            swift_storeEnumTagMultiPayload();
            goto LABEL_370;
          }

          if (v79 > 7)
          {
            if (v79 == 8 || v79 == 9)
            {
              goto LABEL_308;
            }
          }

          else if (v79 == 5 || v79 == 6)
          {
            goto LABEL_303;
          }

LABEL_369:
          memcpy(a1, a2, *(*(v78 - 8) + 64));
LABEL_370:
          v222 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v246 = v222[5];
          v224 = a1 + v246;
          v225 = a2 + v246;
          v247 = *(a2 + v246 + 8);
          if (v247)
          {
            v303 = v8;
            *v224 = *v225;
            *(v224 + 1) = v247;
            v248 = *(v225 + 2);
            v249 = *(v225 + 3);
            v250 = *(v225 + 4);
            v251 = *(v225 + 5);
            v252 = *(v225 + 6);
            v270 = *(v225 + 7);
            v274 = v222;
            v285 = v225[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v248, v249, v250, v251, v252, v270, v285);
            *(v224 + 2) = v248;
            *(v224 + 3) = v249;
            *(v224 + 4) = v250;
            *(v224 + 5) = v251;
            *(v224 + 6) = v252;
            *(v224 + 7) = v270;
            v224[64] = v285;
            *(v224 + 65) = *(v225 + 65);
            v253 = v225[120];
            if (v253 == 255)
            {
              *(v224 + 72) = *(v225 + 72);
              *(v224 + 88) = *(v225 + 88);
              *(v224 + 104) = *(v225 + 104);
              v224[120] = v225[120];
            }

            else
            {
              v254 = *(v225 + 9);
              v286 = *(v225 + 10);
              v255 = *(v225 + 11);
              v256 = *(v225 + 12);
              v257 = *(v225 + 13);
              v271 = *(v225 + 14);
              v258 = v253 & 1;
              sub_21D0FB960(v254, v286, v255, v256, v257, v271, v253 & 1);
              *(v224 + 9) = v254;
              *(v224 + 10) = v286;
              *(v224 + 11) = v255;
              *(v224 + 12) = v256;
              *(v224 + 13) = v257;
              *(v224 + 14) = v271;
              v224[120] = v258;
            }

            v8 = v303;
            v224[121] = v225[121];
            v222 = v274;
            goto LABEL_366;
          }

          goto LABEL_363;
        }

        if (v22 != 2)
        {
          v298 = v8;
          v67 = *a2;
          *a1 = *a2;
          v68 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v69 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v70 = *(v69 - 8);
          v71 = *(v70 + 48);
          v72 = v67;
          if (v71(a2 + v68, 1, v69))
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(a1 + v68, a2 + v68, *(*(v73 - 8) + 64));
LABEL_402:
            swift_storeEnumTagMultiPayload();
            v8 = v298;
            goto LABEL_410;
          }

          v129 = swift_getEnumCaseMultiPayload();
          if (v129 > 4)
          {
            if (v129 <= 7)
            {
              if (v129 == 5 || v129 == 6)
              {
                goto LABEL_379;
              }

              goto LABEL_400;
            }

            if (v129 != 8 && v129 != 9)
            {
              goto LABEL_400;
            }
          }

          else
          {
            if (v129 > 2)
            {
LABEL_379:
              v259 = sub_21DBF563C();
              (*(*(v259 - 8) + 16))(a1 + v68, a2 + v68, v259);
              swift_storeEnumTagMultiPayload();
LABEL_401:
              (*(v70 + 56))(a1 + v68, 0, 1, v69);
              goto LABEL_402;
            }

            if (v129 != 1)
            {
              if (v129 == 2)
              {
                goto LABEL_379;
              }

LABEL_400:
              memcpy(a1 + v68, a2 + v68, *(v70 + 64));
              goto LABEL_401;
            }
          }

          v260 = *(a2 + v68);
          *(a1 + v68) = v260;
          v261 = v260;
          swift_storeEnumTagMultiPayload();
          goto LABEL_401;
        }

        v299 = v8;
        v82 = *a2;
        *a1 = *a2;
        v83 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v84 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v87 = v82;
        if (v86(a2 + v83, 1, v84))
        {
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v83, a2 + v83, *(*(v88 - 8) + 64));
LABEL_405:
          v8 = v299;
          goto LABEL_409;
        }

        v130 = swift_getEnumCaseMultiPayload();
        if (v130 > 4)
        {
          if (v130 <= 7)
          {
            if (v130 == 5 || v130 == 6)
            {
              goto LABEL_383;
            }

            goto LABEL_403;
          }

          if (v130 != 8 && v130 != 9)
          {
            goto LABEL_403;
          }
        }

        else
        {
          if (v130 > 2)
          {
LABEL_383:
            v262 = sub_21DBF563C();
            (*(*(v262 - 8) + 16))(a1 + v83, a2 + v83, v262);
            swift_storeEnumTagMultiPayload();
LABEL_404:
            (*(v85 + 56))(a1 + v83, 0, 1, v84);
            goto LABEL_405;
          }

          if (v130 != 1)
          {
            if (v130 == 2)
            {
              goto LABEL_383;
            }

LABEL_403:
            memcpy(a1 + v83, a2 + v83, *(v85 + 64));
            goto LABEL_404;
          }
        }

        v263 = *(a2 + v83);
        *(a1 + v83) = v263;
        v264 = v263;
        swift_storeEnumTagMultiPayload();
        goto LABEL_404;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 > 4)
      {
        if (v14 <= 7)
        {
          if (v14 == 5 || v14 == 6)
          {
            goto LABEL_51;
          }

          goto LABEL_76;
        }

        if (v14 != 8 && v14 != 9)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v14 > 2)
        {
LABEL_51:
          v25 = sub_21DBF563C();
          (*(*(v25 - 8) + 16))(a1, a2, v25);
          swift_storeEnumTagMultiPayload();
LABEL_412:
          swift_storeEnumTagMultiPayload();
          return a1;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_51;
          }

LABEL_76:
          memcpy(a1, a2, *(*(v13 - 8) + 64));
          goto LABEL_412;
        }
      }

      v26 = *a2;
      *a1 = *a2;
      v27 = v26;
      swift_storeEnumTagMultiPayload();
      goto LABEL_412;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          if (v12 != 6)
          {
            if (v12 != 7)
            {
              if (v12 == 8)
              {
                goto LABEL_24;
              }

              goto LABEL_103;
            }

            v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v65 = *(v64 - 8);
            if ((*(v65 + 48))(a2, 1, v64))
            {
LABEL_102:
              v66 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v66 - 8) + 64));
LABEL_178:
              v116 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v116 + 20)) = *(a2 + *(v116 + 20));
              goto LABEL_378;
            }

LABEL_177:
            v115 = sub_21DBF563C();
            (*(*(v115 - 8) + 16))(a1, a2, v115);
            *(a1 + *(v64 + 20)) = *(a2 + *(v64 + 20));
            (*(v65 + 56))(a1, 0, 1, v64);
            goto LABEL_178;
          }

          v52 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v53 = *(v52 - 8);
          if ((*(v53 + 48))(a2, 1, v52))
          {
            v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v54 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v92 = *(v52 + 20);
            v93 = sub_21DBF6C1C();
            v288 = *(*(v93 - 8) + 16);
            sub_21DBF8E0C();
            v288(a1 + v92, a2 + v92, v93);
            (*(v53 + 56))(a1, 0, 1, v52);
          }

          v94 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v95 = a1 + v94;
          v96 = a2 + v94;
          v97 = *(v96 + 1);
          if (!v97)
          {
            *v95 = *v96;
            *(v95 + 2) = *(v96 + 2);
            goto LABEL_378;
          }

          goto LABEL_160;
        }

        if (v12 != 4)
        {
          goto LABEL_64;
        }

        v58 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v59 = *(v31 + 48);
        v60 = v58;
        if (v59(a2 + v29, 1, v30))
        {
          goto LABEL_90;
        }

        v103 = swift_getEnumCaseMultiPayload();
        if (v103 > 4)
        {
          if (v103 <= 7)
          {
            if (v103 == 5 || v103 == 6)
            {
              goto LABEL_315;
            }

            goto LABEL_376;
          }

          if (v103 != 8 && v103 != 9)
          {
            goto LABEL_376;
          }

          goto LABEL_319;
        }

        if (v103 <= 2)
        {
          if (v103 != 1)
          {
            if (v103 == 2)
            {
              goto LABEL_315;
            }

LABEL_376:
            memcpy(a1 + v29, a2 + v29, *(v31 + 64));
            goto LABEL_377;
          }

          goto LABEL_319;
        }

LABEL_315:
        v219 = sub_21DBF563C();
        (*(*(v219 - 8) + 16))(a1 + v29, a2 + v29, v219);
        swift_storeEnumTagMultiPayload();
LABEL_377:
        (*(v31 + 56))(a1 + v29, 0, 1, v30);
        goto LABEL_378;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v45 = *a2;
          *a1 = *a2;
          v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v31 = *(v30 - 8);
          v46 = *(v31 + 48);
          v47 = v45;
          if (v46(a2 + v29, 1, v30))
          {
            goto LABEL_90;
          }

          v80 = swift_getEnumCaseMultiPayload();
          if (v80 > 4)
          {
            if (v80 <= 7)
            {
              if (v80 == 5 || v80 == 6)
              {
                goto LABEL_315;
              }

              goto LABEL_376;
            }

            if (v80 != 8 && v80 != 9)
            {
              goto LABEL_376;
            }

            goto LABEL_319;
          }

          if (v80 > 2)
          {
            goto LABEL_315;
          }

          if (v80 == 1)
          {
            goto LABEL_319;
          }

          if (v80 != 2)
          {
            goto LABEL_376;
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
            goto LABEL_90;
          }

          v76 = swift_getEnumCaseMultiPayload();
          if (v76 > 4)
          {
            if (v76 <= 7)
            {
              if (v76 == 5 || v76 == 6)
              {
                goto LABEL_315;
              }

              goto LABEL_376;
            }

            if (v76 != 8 && v76 != 9)
            {
              goto LABEL_376;
            }

            goto LABEL_319;
          }

          if (v76 > 2)
          {
            goto LABEL_315;
          }

          if (v76 == 1)
          {
            goto LABEL_319;
          }

          if (v76 != 2)
          {
            goto LABEL_376;
          }
        }

        goto LABEL_315;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_103;
        }

        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 <= 4)
        {
          if (v19 > 2)
          {
LABEL_180:
            v117 = sub_21DBF563C();
            (*(*(v117 - 8) + 16))(a1, a2, v117);
            swift_storeEnumTagMultiPayload();
            goto LABEL_262;
          }

          if (v19 != 1)
          {
            if (v19 == 2)
            {
              goto LABEL_180;
            }

            goto LABEL_261;
          }

LABEL_184:
          v119 = *a2;
          *a1 = *a2;
          v120 = v119;
          swift_storeEnumTagMultiPayload();
          goto LABEL_262;
        }

        if (v19 > 7)
        {
          if (v19 == 8 || v19 == 9)
          {
            goto LABEL_184;
          }
        }

        else if (v19 == 5 || v19 == 6)
        {
          goto LABEL_180;
        }

LABEL_261:
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_262:
        v143 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v144 = v143[5];
        v145 = a1 + v144;
        v146 = a2 + v144;
        v147 = *(a2 + v144 + 8);
        if (v147)
        {
          *v145 = *v146;
          *(v145 + 1) = v147;
          v148 = *(v146 + 2);
          v149 = *(v146 + 3);
          v150 = *(v146 + 4);
          v151 = *(v146 + 5);
          v152 = *(v146 + 6);
          v276 = *(v146 + 7);
          v290 = v146[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v148, v149, v150, v151, v152, v276, v290);
          *(v145 + 2) = v148;
          *(v145 + 3) = v149;
          *(v145 + 4) = v150;
          *(v145 + 5) = v151;
          *(v145 + 6) = v152;
          *(v145 + 7) = v276;
          v145[64] = v290;
          *(v145 + 65) = *(v146 + 65);
          v153 = v146[120];
          if (v153 == 255)
          {
            *(v145 + 72) = *(v146 + 72);
            *(v145 + 88) = *(v146 + 88);
            *(v145 + 104) = *(v146 + 104);
            v145[120] = v146[120];
          }

          else
          {
            v277 = *(v146 + 10);
            v291 = *(v146 + 9);
            v154 = *(v146 + 11);
            v155 = *(v146 + 12);
            v156 = *(v146 + 13);
            v157 = *(v146 + 14);
            v158 = v153 & 1;
            sub_21D0FB960(v291, v277, v154, v155, v156, v157, v153 & 1);
            *(v145 + 9) = v291;
            *(v145 + 10) = v277;
            *(v145 + 11) = v154;
            *(v145 + 12) = v155;
            *(v145 + 13) = v156;
            *(v145 + 14) = v157;
            v145[120] = v158;
          }

          v145[121] = v146[121];
          goto LABEL_268;
        }

LABEL_288:
        v210 = *(v146 + 5);
        *(v145 + 4) = *(v146 + 4);
        *(v145 + 5) = v210;
        *(v145 + 6) = *(v146 + 6);
        *(v145 + 106) = *(v146 + 106);
        v211 = *(v146 + 1);
        *v145 = *v146;
        *(v145 + 1) = v211;
        v212 = *(v146 + 3);
        *(v145 + 2) = *(v146 + 2);
        *(v145 + 3) = v212;
LABEL_268:
        *(a1 + v143[6]) = *(a2 + v143[6]);
        *(a1 + v143[7]) = *(a2 + v143[7]);
        *(a1 + v143[8]) = *(a2 + v143[8]);
        *(a1 + v143[9]) = *(a2 + v143[9]);
        *(a1 + v143[10]) = *(a2 + v143[10]);
        v159 = v143[11];
        v160 = *(a2 + v159);
        *(a1 + v159) = v160;
        v161 = v160;
        goto LABEL_378;
      }

      v41 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v42 = swift_getEnumCaseMultiPayload();
      if (v42 > 4)
      {
        if (v42 <= 7)
        {
          if (v42 == 5 || v42 == 6)
          {
            goto LABEL_188;
          }

          goto LABEL_276;
        }

        if (v42 != 8 && v42 != 9)
        {
          goto LABEL_276;
        }
      }

      else
      {
        if (v42 > 2)
        {
LABEL_188:
          v123 = sub_21DBF563C();
          (*(*(v123 - 8) + 16))(a1, a2, v123);
          swift_storeEnumTagMultiPayload();
LABEL_277:
          v175 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v176 = v175[5];
          v177 = a1 + v176;
          v178 = a2 + v176;
          v179 = *(a2 + v176 + 8);
          if (v179)
          {
            *v177 = *v178;
            *(v177 + 1) = v179;
            v180 = *(v178 + 2);
            v181 = *(v178 + 3);
            v182 = *(v178 + 4);
            v183 = *(v178 + 5);
            v184 = *(v178 + 6);
            v294 = *(v178 + 7);
            v280 = v178[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v180, v181, v182, v183, v184, v294, v280);
            *(v177 + 2) = v180;
            *(v177 + 3) = v181;
            *(v177 + 4) = v182;
            *(v177 + 5) = v183;
            *(v177 + 6) = v184;
            *(v177 + 7) = v294;
            v177[64] = v280;
            *(v177 + 65) = *(v178 + 65);
            v185 = v178[120];
            if (v185 == 255)
            {
              *(v177 + 72) = *(v178 + 72);
              *(v177 + 88) = *(v178 + 88);
              *(v177 + 104) = *(v178 + 104);
              v177[120] = v178[120];
            }

            else
            {
              v281 = *(v178 + 10);
              v295 = *(v178 + 9);
              v186 = *(v178 + 11);
              v187 = *(v178 + 12);
              v188 = *(v178 + 13);
              v189 = *(v178 + 14);
              v190 = v185 & 1;
              sub_21D0FB960(v295, v281, v186, v187, v188, v189, v185 & 1);
              *(v177 + 9) = v295;
              *(v177 + 10) = v281;
              *(v177 + 11) = v186;
              *(v177 + 12) = v187;
              *(v177 + 13) = v188;
              *(v177 + 14) = v189;
              v177[120] = v190;
            }

            v177[121] = v178[121];
          }

          else
          {
            v191 = *(v178 + 5);
            *(v177 + 4) = *(v178 + 4);
            *(v177 + 5) = v191;
            *(v177 + 6) = *(v178 + 6);
            *(v177 + 106) = *(v178 + 106);
            v192 = *(v178 + 1);
            *v177 = *v178;
            *(v177 + 1) = v192;
            v193 = *(v178 + 3);
            *(v177 + 2) = *(v178 + 2);
            *(v177 + 3) = v193;
          }

          *(a1 + v175[6]) = *(a2 + v175[6]);
          *(a1 + v175[7]) = *(a2 + v175[7]);
          *(a1 + v175[8]) = *(a2 + v175[8]);
          *(a1 + v175[9]) = *(a2 + v175[9]);
          *(a1 + v175[10]) = *(a2 + v175[10]);
          v194 = v175[11];
          v195 = *(a2 + v194);
          *(a1 + v194) = v195;
          v196 = v195;
          goto LABEL_378;
        }

        if (v42 != 1)
        {
          if (v42 == 2)
          {
            goto LABEL_188;
          }

LABEL_276:
          memcpy(a1, a2, *(*(v41 - 8) + 64));
          goto LABEL_277;
        }
      }

      v125 = *a2;
      *a1 = *a2;
      v126 = v125;
      swift_storeEnumTagMultiPayload();
      goto LABEL_277;
    }

    v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 != 6)
        {
          if (v15 != 7)
          {
            if (v15 == 8)
            {
LABEL_24:
              *a1 = *a2;
              v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v17 = sub_21DBF8D7C();
              (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_378:
              swift_storeEnumTagMultiPayload();
              goto LABEL_412;
            }

LABEL_103:
            memcpy(a1, a2, *(*(v11 - 8) + 64));
            goto LABEL_412;
          }

          v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v65 = *(v64 - 8);
          if ((*(v65 + 48))(a2, 1, v64))
          {
            goto LABEL_102;
          }

          goto LABEL_177;
        }

        v55 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v56 = *(v55 - 8);
        if ((*(v56 + 48))(a2, 1, v55))
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v57 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v98 = *(v55 + 20);
          v99 = sub_21DBF6C1C();
          v289 = *(*(v99 - 8) + 16);
          sub_21DBF8E0C();
          v289(a1 + v98, a2 + v98, v99);
          (*(v56 + 56))(a1, 0, 1, v55);
        }

        v100 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v95 = a1 + v100;
        v96 = a2 + v100;
        v97 = *(v96 + 1);
        if (!v97)
        {
          *v95 = *v96;
          *(v95 + 2) = *(v96 + 2);
          goto LABEL_378;
        }

LABEL_160:
        *v95 = *v96;
        *(v95 + 1) = v97;
        v101 = *(v96 + 2);
        *(v95 + 2) = v101;
        sub_21DBF8E0C();
        v102 = v101;
        goto LABEL_378;
      }

      if (v15 != 4)
      {
LABEL_64:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v37 = a2[2];
        a1[2] = v37;
        v38 = v37;
        goto LABEL_378;
      }

      v61 = *a2;
      *a1 = *a2;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v31 = *(v30 - 8);
      v62 = *(v31 + 48);
      v63 = v61;
      if (v62(a2 + v29, 1, v30))
      {
LABEL_90:
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v29, a2 + v29, *(*(v51 - 8) + 64));
        goto LABEL_378;
      }

      v104 = swift_getEnumCaseMultiPayload();
      if (v104 > 4)
      {
        if (v104 <= 7)
        {
          if (v104 == 5 || v104 == 6)
          {
            goto LABEL_315;
          }

          goto LABEL_376;
        }

        if (v104 != 8 && v104 != 9)
        {
          goto LABEL_376;
        }
      }

      else
      {
        if (v104 > 2)
        {
          goto LABEL_315;
        }

        if (v104 != 1)
        {
          if (v104 == 2)
          {
            goto LABEL_315;
          }

          goto LABEL_376;
        }
      }

LABEL_319:
      v220 = *(a2 + v29);
      *(a1 + v29) = v220;
      v221 = v220;
      swift_storeEnumTagMultiPayload();
      goto LABEL_377;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v48 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v49 = *(v31 + 48);
        v50 = v48;
        if (v49(a2 + v29, 1, v30))
        {
          goto LABEL_90;
        }

        v81 = swift_getEnumCaseMultiPayload();
        if (v81 > 4)
        {
          if (v81 <= 7)
          {
            if (v81 == 5 || v81 == 6)
            {
              goto LABEL_315;
            }

            goto LABEL_376;
          }

          if (v81 != 8 && v81 != 9)
          {
            goto LABEL_376;
          }

          goto LABEL_319;
        }

        if (v81 > 2)
        {
          goto LABEL_315;
        }

        if (v81 == 1)
        {
          goto LABEL_319;
        }

        if (v81 != 2)
        {
          goto LABEL_376;
        }
      }

      else
      {
        v34 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v35 = *(v31 + 48);
        v36 = v34;
        if (v35(a2 + v29, 1, v30))
        {
          goto LABEL_90;
        }

        v77 = swift_getEnumCaseMultiPayload();
        if (v77 > 4)
        {
          if (v77 <= 7)
          {
            if (v77 == 5 || v77 == 6)
            {
              goto LABEL_315;
            }

            goto LABEL_376;
          }

          if (v77 != 8 && v77 != 9)
          {
            goto LABEL_376;
          }

          goto LABEL_319;
        }

        if (v77 > 2)
        {
          goto LABEL_315;
        }

        if (v77 == 1)
        {
          goto LABEL_319;
        }

        if (v77 != 2)
        {
          goto LABEL_376;
        }
      }

      goto LABEL_315;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_103;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_181:
          v118 = sub_21DBF563C();
          (*(*(v118 - 8) + 16))(a1, a2, v118);
          swift_storeEnumTagMultiPayload();
          goto LABEL_270;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_181;
          }

          goto LABEL_269;
        }

LABEL_187:
        v121 = *a2;
        *a1 = *a2;
        v122 = v121;
        swift_storeEnumTagMultiPayload();
        goto LABEL_270;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_187;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_181;
      }

LABEL_269:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_270:
      v143 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v162 = v143[5];
      v145 = a1 + v162;
      v146 = a2 + v162;
      v163 = *(a2 + v162 + 8);
      if (v163)
      {
        *v145 = *v146;
        *(v145 + 1) = v163;
        v164 = *(v146 + 2);
        v165 = *(v146 + 3);
        v166 = *(v146 + 4);
        v167 = *(v146 + 5);
        v168 = *(v146 + 6);
        v278 = *(v146 + 7);
        v292 = v146[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v164, v165, v166, v167, v168, v278, v292);
        *(v145 + 2) = v164;
        *(v145 + 3) = v165;
        *(v145 + 4) = v166;
        *(v145 + 5) = v167;
        *(v145 + 6) = v168;
        *(v145 + 7) = v278;
        v145[64] = v292;
        *(v145 + 65) = *(v146 + 65);
        v169 = v146[120];
        if (v169 == 255)
        {
          *(v145 + 72) = *(v146 + 72);
          *(v145 + 88) = *(v146 + 88);
          *(v145 + 104) = *(v146 + 104);
          v145[120] = v146[120];
        }

        else
        {
          v279 = *(v146 + 10);
          v293 = *(v146 + 9);
          v170 = *(v146 + 11);
          v171 = *(v146 + 12);
          v172 = *(v146 + 13);
          v173 = *(v146 + 14);
          v174 = v169 & 1;
          sub_21D0FB960(v293, v279, v170, v171, v172, v173, v169 & 1);
          *(v145 + 9) = v293;
          *(v145 + 10) = v279;
          *(v145 + 11) = v170;
          *(v145 + 12) = v171;
          *(v145 + 13) = v172;
          *(v145 + 14) = v173;
          v145[120] = v174;
        }

        v145[121] = v146[121];
        goto LABEL_268;
      }

      goto LABEL_288;
    }

    v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v44 = swift_getEnumCaseMultiPayload();
    if (v44 <= 4)
    {
      if (v44 > 2)
      {
LABEL_189:
        v124 = sub_21DBF563C();
        (*(*(v124 - 8) + 16))(a1, a2, v124);
        swift_storeEnumTagMultiPayload();
        goto LABEL_285;
      }

      if (v44 != 1)
      {
        if (v44 == 2)
        {
          goto LABEL_189;
        }

        goto LABEL_284;
      }

LABEL_195:
      v127 = *a2;
      *a1 = *a2;
      v128 = v127;
      swift_storeEnumTagMultiPayload();
      goto LABEL_285;
    }

    if (v44 > 7)
    {
      if (v44 == 8 || v44 == 9)
      {
        goto LABEL_195;
      }
    }

    else if (v44 == 5 || v44 == 6)
    {
      goto LABEL_189;
    }

LABEL_284:
    memcpy(a1, a2, *(*(v43 - 8) + 64));
LABEL_285:
    v143 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v197 = v143[5];
    v145 = a1 + v197;
    v146 = a2 + v197;
    v198 = *(a2 + v197 + 8);
    if (v198)
    {
      *v145 = *v146;
      *(v145 + 1) = v198;
      v199 = *(v146 + 2);
      v200 = *(v146 + 3);
      v201 = *(v146 + 4);
      v202 = *(v146 + 5);
      v203 = *(v146 + 6);
      v282 = *(v146 + 7);
      v296 = v146[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v199, v200, v201, v202, v203, v282, v296);
      *(v145 + 2) = v199;
      *(v145 + 3) = v200;
      *(v145 + 4) = v201;
      *(v145 + 5) = v202;
      *(v145 + 6) = v203;
      *(v145 + 7) = v282;
      v145[64] = v296;
      *(v145 + 65) = *(v146 + 65);
      v204 = v146[120];
      if (v204 == 255)
      {
        *(v145 + 72) = *(v146 + 72);
        *(v145 + 88) = *(v146 + 88);
        *(v145 + 104) = *(v146 + 104);
        v145[120] = v146[120];
      }

      else
      {
        v283 = *(v146 + 10);
        v297 = *(v146 + 9);
        v205 = *(v146 + 11);
        v206 = *(v146 + 12);
        v207 = *(v146 + 13);
        v208 = *(v146 + 14);
        v209 = v204 & 1;
        sub_21D0FB960(v297, v283, v205, v206, v207, v208, v204 & 1);
        *(v145 + 9) = v297;
        *(v145 + 10) = v283;
        *(v145 + 11) = v205;
        *(v145 + 12) = v206;
        *(v145 + 13) = v207;
        *(v145 + 14) = v208;
        v145[120] = v209;
      }

      v145[121] = v146[121];
      goto LABEL_268;
    }

    goto LABEL_288;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRRemindersListReminderCreationLocation(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.Item(0);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v3 = swift_getEnumCaseMultiPayload();
      if (v3 > 4)
      {
        if (v3 <= 7)
        {
          if (v3 != 5 && v3 != 6)
          {
            return;
          }

          goto LABEL_54;
        }

        if (v3 != 8 && v3 != 9)
        {
          return;
        }
      }

      else
      {
        if (v3 > 2)
        {
LABEL_54:
          v20 = sub_21DBF563C();
          v7 = *(*(v20 - 8) + 8);
          v6 = v20;
          v8 = a1;
LABEL_55:

          v7(v8, v6);
          return;
        }

        if (v3 != 1)
        {
          if (v3 != 2)
          {
            return;
          }

          goto LABEL_54;
        }
      }

      v11 = *a1;
      goto LABEL_70;
    }

    v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    if ((*(*(v10 - 8) + 48))(a1, 1, v10))
    {
      return;
    }
  }

  v4 = swift_getEnumCaseMultiPayload();
  if (v4 <= 3)
  {
    if (v4 > 1)
    {
      goto LABEL_30;
    }

    if (v4 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_66;
        }

        goto LABEL_62;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_62;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
LABEL_66:
          v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v23 = a1 + *(v22 + 20);
          if (*(v23 + 8))
          {

            sub_21D179EF0(*(v23 + 16), *(v23 + 24), *(v23 + 32), *(v23 + 40), *(v23 + 48), *(v23 + 56), *(v23 + 64));
            v24 = *(v23 + 120);
            if (v24 != 255)
            {
              sub_21D1078C0(*(v23 + 72), *(v23 + 80), *(v23 + 88), *(v23 + 96), *(v23 + 104), *(v23 + 112), v24 & 1);
            }
          }

          v11 = *(a1 + *(v22 + 44));
          goto LABEL_70;
        }

LABEL_62:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1, v21);
        goto LABEL_66;
      }
    }

    goto LABEL_66;
  }

  if (v4 <= 5)
  {
    if (v4 != 4)
    {
      v11 = *(a1 + 16);
LABEL_70:

      return;
    }

LABEL_30:

    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v13 - 8) + 48))(a1 + v12, 1, v13))
    {
      return;
    }

    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 4)
    {
      if (v14 <= 7)
      {
        if (v14 != 5 && v14 != 6)
        {
          return;
        }

        goto LABEL_73;
      }

      if (v14 != 8 && v14 != 9)
      {
        return;
      }
    }

    else
    {
      if (v14 > 2)
      {
LABEL_73:
        v6 = sub_21DBF563C();
        v7 = *(*(v6 - 8) + 8);
        v8 = a1 + v12;
        goto LABEL_55;
      }

      if (v14 != 1)
      {
        if (v14 != 2)
        {
          return;
        }

        goto LABEL_73;
      }
    }

    v11 = *(a1 + v12);
    goto LABEL_70;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
      if (v4 != 8)
      {
        return;
      }

      v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v6 = sub_21DBF8D7C();
      v7 = *(*(v6 - 8) + 8);
      v8 = a1 + v5;
      goto LABEL_55;
    }

    v19 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    if ((*(*(v19 - 8) + 48))(a1, 1, v19))
    {
      return;
    }

    goto LABEL_54;
  }

  v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
  {

    v16 = *(v15 + 20);
    v17 = sub_21DBF6C1C();
    (*(*(v17 - 8) + 8))(a1 + v16, v17);
  }

  v18 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v18 + 8))
  {

    v11 = *(v18 + 16);
    goto LABEL_70;
  }
}

void *initializeWithCopy for TTRRemindersListReminderCreationLocation(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v6 = *(v5 - 8);
      if ((*(v6 + 48))(a2, 1, v5))
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_328:
        v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *(a1 + *(v225 + 48)) = *(a2 + *(v225 + 48));
        goto LABEL_329;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          switch(v27)
          {
            case 6:
              v85 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v86 = *(v85 - 8);
              if ((*(v86 + 48))(a2, 1, v85))
              {
                v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, a2, *(*(v87 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v116 = *(v85 + 20);
                v117 = sub_21DBF6C1C();
                v233 = *(*(v117 - 8) + 16);
                sub_21DBF8E0C();
                v233(a1 + v116, a2 + v116, v117);
                (*(v86 + 56))(a1, 0, 1, v85);
              }

              v118 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v119 = (a1 + v118);
              v120 = (a2 + v118);
              v121 = v120[1];
              if (v121)
              {
                *v119 = *v120;
                v119[1] = v121;
                v122 = v120[2];
                v119[2] = v122;
                sub_21DBF8E0C();
                v123 = v122;
              }

              else
              {
                *v119 = *v120;
                v119[2] = v120[2];
              }

              goto LABEL_326;
            case 7:
              v92 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v93 = *(v92 - 8);
              if ((*(v93 + 48))(a2, 1, v92))
              {
                v94 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v94 - 8) + 64));
              }

              else
              {
                v125 = sub_21DBF563C();
                (*(*(v125 - 8) + 16))(a1, a2, v125);
                *(a1 + *(v92 + 20)) = *(a2 + *(v92 + 20));
                (*(v93 + 56))(a1, 0, 1, v92);
              }

              v126 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v126 + 20)) = *(a2 + *(v126 + 20));
              goto LABEL_326;
            case 8:
              *a1 = *a2;
              v28 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v29 = sub_21DBF8D7C();
              (*(*(v29 - 8) + 16))(a1 + v28, a2 + v28, v29);
LABEL_326:
              swift_storeEnumTagMultiPayload();
              goto LABEL_327;
          }

LABEL_152:
          memcpy(a1, a2, *(v6 + 64));
LABEL_327:
          (*(v6 + 56))(a1, 0, 1, v5);
          goto LABEL_328;
        }

        if (v27 != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          v63 = a2[2];
          a1[2] = v63;
          v64 = v63;
          goto LABEL_326;
        }

        v243 = v6;
        v88 = *a2;
        *a1 = *a2;
        v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v89 = *(v58 - 8);
        v90 = *(v89 + 48);
        v91 = v88;
        v62 = v57;
        if (v90(a2 + v57, 1, v58))
        {
LABEL_137:
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v57, a2 + v57, *(*(v84 - 8) + 64));
          v6 = v243;
          goto LABEL_326;
        }

        v114 = v89;
        v124 = swift_getEnumCaseMultiPayload();
        if (v124 > 4)
        {
          v6 = v243;
          if (v124 <= 7)
          {
            if (v124 == 5 || v124 == 6)
            {
              goto LABEL_303;
            }

            goto LABEL_324;
          }

          if (v124 != 8 && v124 != 9)
          {
            goto LABEL_324;
          }
        }

        else
        {
          v6 = v243;
          if (v124 > 2)
          {
            goto LABEL_303;
          }

          if (v124 != 1)
          {
            if (v124 == 2)
            {
              goto LABEL_303;
            }

LABEL_324:
            memcpy(a1 + v62, a2 + v62, *(v114 + 64));
            goto LABEL_325;
          }
        }

LABEL_310:
        v223 = *(a2 + v62);
        *(a1 + v62) = v223;
        v224 = v223;
        swift_storeEnumTagMultiPayload();
        goto LABEL_325;
      }

      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v243 = v6;
          v80 = *a2;
          *a1 = *a2;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v81 = *(v58 - 8);
          v82 = *(v81 + 48);
          v83 = v80;
          v62 = v57;
          if (v82(a2 + v57, 1, v58))
          {
            goto LABEL_137;
          }

          v114 = v81;
          v115 = swift_getEnumCaseMultiPayload();
          if (v115 > 4)
          {
            v6 = v243;
            if (v115 <= 7)
            {
              if (v115 == 5 || v115 == 6)
              {
                goto LABEL_303;
              }

              goto LABEL_324;
            }

            if (v115 != 8 && v115 != 9)
            {
              goto LABEL_324;
            }

            goto LABEL_310;
          }

          v6 = v243;
          if (v115 > 2)
          {
            goto LABEL_303;
          }

          if (v115 == 1)
          {
            goto LABEL_310;
          }

          if (v115 != 2)
          {
            goto LABEL_324;
          }
        }

        else
        {
          v243 = v6;
          v56 = *a2;
          *a1 = *a2;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v59 = *(v58 - 8);
          v60 = *(v59 + 48);
          v61 = v56;
          v62 = v57;
          if (v60(a2 + v57, 1, v58))
          {
            goto LABEL_137;
          }

          v113 = swift_getEnumCaseMultiPayload();
          if (v113 > 4)
          {
            v114 = v59;
            if (v113 <= 7)
            {
              v6 = v243;
              if (v113 == 5 || v113 == 6)
              {
                goto LABEL_303;
              }

              goto LABEL_324;
            }

            v6 = v243;
            if (v113 != 8 && v113 != 9)
            {
              goto LABEL_324;
            }

            goto LABEL_310;
          }

          v114 = v59;
          if (v113 > 2)
          {
            v6 = v243;
          }

          else
          {
            v6 = v243;
            if (v113 == 1)
            {
              goto LABEL_310;
            }

            if (v113 != 2)
            {
              goto LABEL_324;
            }
          }
        }

LABEL_303:
        v222 = sub_21DBF563C();
        (*(*(v222 - 8) + 16))(a1 + v62, a2 + v62, v222);
        swift_storeEnumTagMultiPayload();
LABEL_325:
        (*(v114 + 56))(a1 + v62, 0, 1, v58);
        goto LABEL_326;
      }

      if (v27)
      {
        if (v27 != 1)
        {
          goto LABEL_152;
        }

        v50 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v51 = swift_getEnumCaseMultiPayload();
        v238 = v5;
        v242 = v6;
        if (v51 <= 4)
        {
          if (v51 > 2)
          {
LABEL_246:
            v179 = sub_21DBF563C();
            (*(*(v179 - 8) + 16))(a1, a2, v179);
            swift_storeEnumTagMultiPayload();
            goto LABEL_288;
          }

          if (v51 != 1)
          {
            if (v51 == 2)
            {
              goto LABEL_246;
            }

            goto LABEL_287;
          }

LABEL_249:
          v180 = *a2;
          *a1 = *a2;
          v181 = v180;
          swift_storeEnumTagMultiPayload();
          goto LABEL_288;
        }

        if (v51 > 7)
        {
          if (v51 == 8 || v51 == 9)
          {
            goto LABEL_249;
          }
        }

        else if (v51 == 5 || v51 == 6)
        {
          goto LABEL_246;
        }

LABEL_287:
        memcpy(a1, a2, *(*(v50 - 8) + 64));
LABEL_288:
        v185 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v186 = v185[5];
        v187 = a1 + v186;
        v188 = a2 + v186;
        v189 = *(a2 + v186 + 8);
        if (v189)
        {
          *v187 = *v188;
          *(v187 + 1) = v189;
          v190 = *(v188 + 2);
          v191 = *(v188 + 3);
          v193 = *(v188 + 4);
          v192 = *(v188 + 5);
          v194 = *(v188 + 6);
          v229 = *(v188 + 7);
          v236 = v185;
          v195 = v188[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v190, v191, v193, v192, v194, v229, v195);
          *(v187 + 2) = v190;
          *(v187 + 3) = v191;
          *(v187 + 4) = v193;
          *(v187 + 5) = v192;
          *(v187 + 6) = v194;
          *(v187 + 7) = v229;
          v187[64] = v195;
          *(v187 + 65) = *(v188 + 65);
          v196 = v188[120];
          if (v196 == 255)
          {
            *(v187 + 72) = *(v188 + 72);
            *(v187 + 88) = *(v188 + 88);
            *(v187 + 104) = *(v188 + 104);
            v187[120] = v188[120];
          }

          else
          {
            v198 = *(v188 + 9);
            v197 = *(v188 + 10);
            v199 = *(v188 + 11);
            v200 = *(v188 + 12);
            v201 = *(v188 + 13);
            v230 = *(v188 + 14);
            v202 = v196 & 1;
            sub_21D0FB960(v198, v197, v199, v200, v201, v230, v196 & 1);
            *(v187 + 9) = v198;
            *(v187 + 10) = v197;
            *(v187 + 11) = v199;
            *(v187 + 12) = v200;
            *(v187 + 13) = v201;
            *(v187 + 14) = v230;
            v187[120] = v202;
          }

          v5 = v238;
          v6 = v242;
          v187[121] = v188[121];
          v185 = v236;
          goto LABEL_294;
        }

LABEL_291:
        v203 = *(v188 + 5);
        *(v187 + 4) = *(v188 + 4);
        *(v187 + 5) = v203;
        *(v187 + 6) = *(v188 + 6);
        *(v187 + 106) = *(v188 + 106);
        v204 = *(v188 + 1);
        *v187 = *v188;
        *(v187 + 1) = v204;
        v205 = *(v188 + 3);
        *(v187 + 2) = *(v188 + 2);
        *(v187 + 3) = v205;
LABEL_294:
        *(a1 + v185[6]) = *(a2 + v185[6]);
        *(a1 + v185[7]) = *(a2 + v185[7]);
        *(a1 + v185[8]) = *(a2 + v185[8]);
        *(a1 + v185[9]) = *(a2 + v185[9]);
        *(a1 + v185[10]) = *(a2 + v185[10]);
        v206 = v185[11];
        v207 = *(a2 + v206);
        *(a1 + v206) = v207;
        v208 = v207;
        goto LABEL_326;
      }

      v78 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v79 = swift_getEnumCaseMultiPayload();
      v244 = v6;
      if (v79 <= 4)
      {
        if (v79 > 2)
        {
LABEL_250:
          v182 = sub_21DBF563C();
          (*(*(v182 - 8) + 16))(a1, a2, v182);
          swift_storeEnumTagMultiPayload();
          goto LABEL_296;
        }

        if (v79 != 1)
        {
          if (v79 == 2)
          {
            goto LABEL_250;
          }

          goto LABEL_295;
        }

LABEL_253:
        v183 = *a2;
        *a1 = *a2;
        v184 = v183;
        swift_storeEnumTagMultiPayload();
        goto LABEL_296;
      }

      if (v79 > 7)
      {
        if (v79 == 8 || v79 == 9)
        {
          goto LABEL_253;
        }
      }

      else if (v79 == 5 || v79 == 6)
      {
        goto LABEL_250;
      }

LABEL_295:
      memcpy(a1, a2, *(*(v78 - 8) + 64));
LABEL_296:
      v185 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v209 = v185[5];
      v187 = a1 + v209;
      v188 = a2 + v209;
      v210 = *(a2 + v209 + 8);
      if (v210)
      {
        *v187 = *v188;
        *(v187 + 1) = v210;
        v211 = *(v188 + 2);
        v212 = *(v188 + 3);
        v213 = *(v188 + 4);
        v231 = *(v188 + 5);
        v237 = v185;
        v214 = *(v188 + 6);
        v215 = *(v188 + 7);
        v227 = v188[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v211, v212, v213, v231, v214, v215, v227);
        *(v187 + 2) = v211;
        *(v187 + 3) = v212;
        *(v187 + 4) = v213;
        *(v187 + 5) = v231;
        *(v187 + 6) = v214;
        *(v187 + 7) = v215;
        v187[64] = v227;
        *(v187 + 65) = *(v188 + 65);
        v216 = v188[120];
        if (v216 == 255)
        {
          *(v187 + 72) = *(v188 + 72);
          *(v187 + 88) = *(v188 + 88);
          *(v187 + 104) = *(v188 + 104);
          v187[120] = v188[120];
        }

        else
        {
          v218 = *(v188 + 9);
          v217 = *(v188 + 10);
          v219 = *(v188 + 11);
          v220 = *(v188 + 12);
          v228 = *(v188 + 14);
          v232 = *(v188 + 13);
          v221 = v216 & 1;
          sub_21D0FB960(v218, v217, v219, v220, v232, v228, v216 & 1);
          *(v187 + 9) = v218;
          *(v187 + 10) = v217;
          *(v187 + 11) = v219;
          *(v187 + 12) = v220;
          *(v187 + 13) = v232;
          *(v187 + 14) = v228;
          v187[120] = v221;
        }

        v6 = v244;
        v187[121] = v188[121];
        v185 = v237;
        goto LABEL_294;
      }

      goto LABEL_291;
    }

    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 <= 4)
    {
      if (v13 > 2)
      {
LABEL_49:
        v30 = sub_21DBF563C();
        (*(*(v30 - 8) + 16))(a1, a2, v30);
        goto LABEL_268;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }

LABEL_52:
      v31 = *a2;
      *a1 = *a2;
      v32 = v31;
      goto LABEL_268;
    }

    if (v13 > 7)
    {
      if (v13 == 8 || v13 == 9)
      {
        goto LABEL_52;
      }
    }

    else if (v13 == 5 || v13 == 6)
    {
      goto LABEL_49;
    }

LABEL_73:
    v49 = *(*(v12 - 8) + 64);
    goto LABEL_74;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 3)
    {
LABEL_21:
      if (v9 > 5)
      {
        if (v9 == 6)
        {
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
            v67 = *(v40 + 20);
            v68 = sub_21DBF6C1C();
            v239 = *(*(v68 - 8) + 16);
            sub_21DBF8E0C();
            v239(a1 + v67, a2 + v67, v68);
            (*(v41 + 56))(a1, 0, 1, v40);
          }

          v69 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v70 = (a1 + v69);
          v71 = (a2 + v69);
          v72 = v71[1];
          if (v72)
          {
            *v70 = *v71;
            v70[1] = v72;
            v73 = v71[2];
            v70[2] = v73;
            sub_21DBF8E0C();
            v74 = v73;
          }

          else
          {
            *v70 = *v71;
            v70[2] = v71[2];
          }

          goto LABEL_268;
        }

        if (v9 == 7)
        {
          v46 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(a2, 1, v46))
          {
            v48 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v48 - 8) + 64));
          }

          else
          {
            v76 = sub_21DBF563C();
            (*(*(v76 - 8) + 16))(a1, a2, v76);
            *(a1 + *(v46 + 20)) = *(a2 + *(v46 + 20));
            (*(v47 + 56))(a1, 0, 1, v46);
          }

          v77 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v77 + 20)) = *(a2 + *(v77 + 20));
          goto LABEL_268;
        }

        if (v9 != 8)
        {
          goto LABEL_61;
        }

        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v15 = sub_21DBF8D7C();
        (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
LABEL_268:
        swift_storeEnumTagMultiPayload();
        goto LABEL_329;
      }

      if (v9 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v25 = a2[2];
        a1[2] = v25;
        v26 = v25;
        goto LABEL_268;
      }

      v43 = *a2;
      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      v44 = *(v36 + 48);
      v45 = v43;
      if (v44(a2 + v34, 1, v35))
      {
        goto LABEL_54;
      }

      v75 = swift_getEnumCaseMultiPayload();
      if (v75 > 4)
      {
        if (v75 <= 7)
        {
          if (v75 == 5 || v75 == 6)
          {
            goto LABEL_177;
          }

          goto LABEL_263;
        }

        if (v75 != 8 && v75 != 9)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if (v75 > 2)
        {
          goto LABEL_177;
        }

        if (v75 != 1)
        {
          if (v75 == 2)
          {
            goto LABEL_177;
          }

          goto LABEL_263;
        }
      }

LABEL_184:
      v111 = *(a2 + v34);
      *(a1 + v34) = v111;
      v112 = v111;
      swift_storeEnumTagMultiPayload();
      goto LABEL_264;
    }

    if (v9 > 1)
    {
LABEL_38:
      if (v9 != 2)
      {
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
          memcpy(a1 + v19, a2 + v19, *(*(v24 - 8) + 64));
          goto LABEL_268;
        }

        v65 = swift_getEnumCaseMultiPayload();
        if (v65 > 4)
        {
          if (v65 <= 7)
          {
            if (v65 == 5 || v65 == 6)
            {
              goto LABEL_173;
            }

            goto LABEL_266;
          }

          if (v65 != 8 && v65 != 9)
          {
            goto LABEL_266;
          }
        }

        else
        {
          if (v65 > 2)
          {
LABEL_173:
            v107 = sub_21DBF563C();
            (*(*(v107 - 8) + 16))(a1 + v19, a2 + v19, v107);
            swift_storeEnumTagMultiPayload();
LABEL_267:
            (*(v21 + 56))(a1 + v19, 0, 1, v20);
            goto LABEL_268;
          }

          if (v65 != 1)
          {
            if (v65 == 2)
            {
              goto LABEL_173;
            }

LABEL_266:
            memcpy(a1 + v19, a2 + v19, *(v21 + 64));
            goto LABEL_267;
          }
        }

        v108 = *(a2 + v19);
        *(a1 + v19) = v108;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_267;
      }

      v33 = *a2;
      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      v37 = *(v36 + 48);
      v38 = v33;
      if (v37(a2 + v34, 1, v35))
      {
LABEL_54:
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v34, a2 + v34, *(*(v39 - 8) + 64));
        goto LABEL_268;
      }

      v66 = swift_getEnumCaseMultiPayload();
      if (v66 > 4)
      {
        if (v66 <= 7)
        {
          if (v66 == 5 || v66 == 6)
          {
            goto LABEL_177;
          }

          goto LABEL_263;
        }

        if (v66 != 8 && v66 != 9)
        {
          goto LABEL_263;
        }
      }

      else
      {
        if (v66 > 2)
        {
LABEL_177:
          v110 = sub_21DBF563C();
          (*(*(v110 - 8) + 16))(a1 + v34, a2 + v34, v110);
          swift_storeEnumTagMultiPayload();
LABEL_264:
          (*(v36 + 56))(a1 + v34, 0, 1, v35);
          goto LABEL_268;
        }

        if (v66 != 1)
        {
          if (v66 == 2)
          {
            goto LABEL_177;
          }

LABEL_263:
          memcpy(a1 + v34, a2 + v34, *(v36 + 64));
          goto LABEL_264;
        }
      }

      goto LABEL_184;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_61;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      if (v17 <= 4)
      {
        if (v17 > 2)
        {
LABEL_154:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(a1, a2, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_227;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_154;
          }

          goto LABEL_226;
        }

LABEL_160:
        v99 = *a2;
        *a1 = *a2;
        v100 = v99;
        swift_storeEnumTagMultiPayload();
        goto LABEL_227;
      }

      if (v17 > 7)
      {
        if (v17 == 8 || v17 == 9)
        {
          goto LABEL_160;
        }
      }

      else if (v17 == 5 || v17 == 6)
      {
        goto LABEL_154;
      }

LABEL_226:
      memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_227:
      v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v135 = v127[5];
      v129 = a1 + v135;
      v130 = a2 + v135;
      v131 = *(a2 + v135 + 8);
      if (v131)
      {
        v234 = a2;
        v240 = a1;
        goto LABEL_229;
      }

LABEL_225:
      v132 = *(v130 + 5);
      *(v129 + 4) = *(v130 + 4);
      *(v129 + 5) = v132;
      *(v129 + 6) = *(v130 + 6);
      *(v129 + 106) = *(v130 + 106);
      v133 = *(v130 + 1);
      *v129 = *v130;
      *(v129 + 1) = v133;
      v134 = *(v130 + 3);
      *(v129 + 2) = *(v130 + 2);
      *(v129 + 3) = v134;
LABEL_245:
      *(a1 + v127[6]) = *(a2 + v127[6]);
      *(a1 + v127[7]) = *(a2 + v127[7]);
      *(a1 + v127[8]) = *(a2 + v127[8]);
      *(a1 + v127[9]) = *(a2 + v127[9]);
      *(a1 + v127[10]) = *(a2 + v127[10]);
      v176 = v127[11];
      v177 = *(a2 + v176);
      *(a1 + v176) = v177;
      v178 = v177;
      goto LABEL_268;
    }

    v54 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 > 4)
    {
      if (v55 <= 7)
      {
        if (v55 == 5 || v55 == 6)
        {
          goto LABEL_162;
        }

        goto LABEL_237;
      }

      if (v55 != 8 && v55 != 9)
      {
        goto LABEL_237;
      }
    }

    else
    {
      if (v55 > 2)
      {
LABEL_162:
        v102 = sub_21DBF563C();
        (*(*(v102 - 8) + 16))(a1, a2, v102);
        swift_storeEnumTagMultiPayload();
LABEL_238:
        v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v160 = v127[5];
        v129 = a1 + v160;
        v130 = a2 + v160;
        v161 = *(a2 + v160 + 8);
        if (!v161)
        {
          goto LABEL_225;
        }

        v235 = a2;
        v241 = a1;
        *v129 = *v130;
        *(v129 + 1) = v161;
        v162 = *(v130 + 2);
        v163 = *(v130 + 3);
        v164 = *(v130 + 4);
        v165 = *(v130 + 5);
        v167 = *(v130 + 6);
        v166 = *(v130 + 7);
        v159 = v130[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v162, v163, v164, v165, v167, v166, v159);
        *(v129 + 2) = v162;
        *(v129 + 3) = v163;
        *(v129 + 4) = v164;
        *(v129 + 5) = v165;
        *(v129 + 6) = v167;
        *(v129 + 7) = v166;
        goto LABEL_240;
      }

      if (v55 != 1)
      {
        if (v55 == 2)
        {
          goto LABEL_162;
        }

LABEL_237:
        memcpy(a1, a2, *(*(v54 - 8) + 64));
        goto LABEL_238;
      }
    }

    v105 = *a2;
    *a1 = *a2;
    v106 = v105;
    swift_storeEnumTagMultiPayload();
    goto LABEL_238;
  }

  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 > 3)
  {
    goto LABEL_21;
  }

  if (v9 > 1)
  {
    goto LABEL_38;
  }

  if (!v9)
  {
    v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v53 = swift_getEnumCaseMultiPayload();
    if (v53 > 4)
    {
      if (v53 <= 7)
      {
        if (v53 == 5 || v53 == 6)
        {
          goto LABEL_161;
        }

        goto LABEL_234;
      }

      if (v53 != 8 && v53 != 9)
      {
        goto LABEL_234;
      }
    }

    else
    {
      if (v53 > 2)
      {
LABEL_161:
        v101 = sub_21DBF563C();
        (*(*(v101 - 8) + 16))(a1, a2, v101);
        swift_storeEnumTagMultiPayload();
LABEL_235:
        v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v151 = v127[5];
        v129 = a1 + v151;
        v130 = a2 + v151;
        v152 = *(a2 + v151 + 8);
        if (!v152)
        {
          goto LABEL_225;
        }

        v235 = a2;
        v241 = a1;
        *v129 = *v130;
        *(v129 + 1) = v152;
        v153 = *(v130 + 2);
        v154 = *(v130 + 3);
        v156 = *(v130 + 4);
        v155 = *(v130 + 5);
        v158 = *(v130 + 6);
        v157 = *(v130 + 7);
        v159 = v130[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v153, v154, v156, v155, v158, v157, v159);
        *(v129 + 2) = v153;
        *(v129 + 3) = v154;
        *(v129 + 4) = v156;
        *(v129 + 5) = v155;
        *(v129 + 6) = v158;
        *(v129 + 7) = v157;
LABEL_240:
        v129[64] = v159;
        *(v129 + 65) = *(v130 + 65);
        v168 = v130[120];
        if (v168 == 255)
        {
          *(v129 + 72) = *(v130 + 72);
          *(v129 + 88) = *(v130 + 88);
          *(v129 + 104) = *(v130 + 104);
          v129[120] = v130[120];
        }

        else
        {
          v169 = *(v130 + 9);
          v170 = *(v130 + 10);
          v171 = *(v130 + 11);
          v172 = *(v130 + 12);
          v173 = *(v130 + 13);
          v174 = *(v130 + 14);
          v175 = v168 & 1;
          sub_21D0FB960(v169, v170, v171, v172, v173, v174, v168 & 1);
          *(v129 + 9) = v169;
          *(v129 + 10) = v170;
          *(v129 + 11) = v171;
          *(v129 + 12) = v172;
          *(v129 + 13) = v173;
          *(v129 + 14) = v174;
          v129[120] = v175;
        }

        a1 = v241;
        v129[121] = v130[121];
        a2 = v235;
        goto LABEL_245;
      }

      if (v53 != 1)
      {
        if (v53 == 2)
        {
          goto LABEL_161;
        }

LABEL_234:
        memcpy(a1, a2, *(*(v52 - 8) + 64));
        goto LABEL_235;
      }
    }

    v103 = *a2;
    *a1 = *a2;
    v104 = v103;
    swift_storeEnumTagMultiPayload();
    goto LABEL_235;
  }

  if (v9 == 1)
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 <= 4)
    {
      if (v11 > 2)
      {
LABEL_153:
        v95 = sub_21DBF563C();
        (*(*(v95 - 8) + 16))(a1, a2, v95);
        swift_storeEnumTagMultiPayload();
        goto LABEL_223;
      }

      if (v11 != 1)
      {
        if (v11 == 2)
        {
          goto LABEL_153;
        }

        goto LABEL_222;
      }

LABEL_157:
      v97 = *a2;
      *a1 = *a2;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
      goto LABEL_223;
    }

    if (v11 > 7)
    {
      if (v11 == 8 || v11 == 9)
      {
        goto LABEL_157;
      }
    }

    else if (v11 == 5 || v11 == 6)
    {
      goto LABEL_153;
    }

LABEL_222:
    memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_223:
    v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v128 = v127[5];
    v129 = a1 + v128;
    v130 = a2 + v128;
    v131 = *(a2 + v128 + 8);
    if (v131)
    {
      v234 = a2;
      v240 = a1;
LABEL_229:
      *v129 = *v130;
      *(v129 + 1) = v131;
      v136 = *(v130 + 2);
      v137 = *(v130 + 3);
      v138 = *(v130 + 4);
      v139 = *(v130 + 5);
      v141 = *(v130 + 6);
      v140 = *(v130 + 7);
      v142 = v130[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v136, v137, v138, v139, v141, v140, v142);
      *(v129 + 2) = v136;
      *(v129 + 3) = v137;
      *(v129 + 4) = v138;
      *(v129 + 5) = v139;
      *(v129 + 6) = v141;
      *(v129 + 7) = v140;
      v129[64] = v142;
      *(v129 + 65) = *(v130 + 65);
      v143 = v130[120];
      if (v143 == 255)
      {
        *(v129 + 72) = *(v130 + 72);
        *(v129 + 88) = *(v130 + 88);
        *(v129 + 104) = *(v130 + 104);
        v129[120] = v130[120];
      }

      else
      {
        v144 = *(v130 + 9);
        v145 = *(v130 + 10);
        v146 = *(v130 + 11);
        v147 = *(v130 + 12);
        v148 = *(v130 + 13);
        v149 = *(v130 + 14);
        v150 = v143 & 1;
        sub_21D0FB960(v144, v145, v146, v147, v148, v149, v143 & 1);
        *(v129 + 9) = v144;
        *(v129 + 10) = v145;
        *(v129 + 11) = v146;
        *(v129 + 12) = v147;
        *(v129 + 13) = v148;
        *(v129 + 14) = v149;
        v129[120] = v150;
      }

      a1 = v240;
      v129[121] = v130[121];
      a2 = v234;
      goto LABEL_245;
    }

    goto LABEL_225;
  }

LABEL_61:
  v49 = *(*(v8 - 8) + 64);
LABEL_74:
  memcpy(a1, a2, v49);
LABEL_329:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRRemindersListReminderCreationLocation(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListReminderCreationLocation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
        v6 = *(v5 - 8);
        if ((*(v6 + 48))(a2, 1, v5))
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
          memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_332:
          v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
          *(a1 + *(v259 + 48)) = *(a2 + *(v259 + 48));
          goto LABEL_333;
        }

        v27 = swift_getEnumCaseMultiPayload();
        if (v27 > 3)
        {
          if (v27 > 5)
          {
            switch(v27)
            {
              case 6:
                v85 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                v86 = *(v85 - 8);
                if ((*(v86 + 48))(a2, 1, v85))
                {
                  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                  memcpy(a1, a2, *(*(v87 - 8) + 64));
                }

                else
                {
                  *a1 = *a2;
                  v116 = *(v85 + 20);
                  v117 = sub_21DBF6C1C();
                  v267 = *(*(v117 - 8) + 16);
                  sub_21DBF8E0C();
                  v267(a1 + v116, a2 + v116, v117);
                  (*(v86 + 56))(a1, 0, 1, v85);
                }

                v118 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                v119 = (a1 + v118);
                v120 = (a2 + v118);
                if (v120[1])
                {
                  *v119 = *v120;
                  v119[1] = v120[1];
                  v121 = v120[2];
                  v119[2] = v121;
                  sub_21DBF8E0C();
                  v122 = v121;
                }

                else
                {
                  v123 = *v120;
                  v119[2] = v120[2];
                  *v119 = v123;
                }

                goto LABEL_330;
              case 7:
                v92 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                v93 = *(v92 - 8);
                if ((*(v93 + 48))(a2, 1, v92))
                {
                  v94 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                  memcpy(a1, a2, *(*(v94 - 8) + 64));
                }

                else
                {
                  v125 = sub_21DBF563C();
                  (*(*(v125 - 8) + 16))(a1, a2, v125);
                  *(a1 + *(v92 + 20)) = *(a2 + *(v92 + 20));
                  (*(v93 + 56))(a1, 0, 1, v92);
                }

                v126 = type metadata accessor for TTRTemplatePublicLinkData(0);
                *(a1 + *(v126 + 20)) = *(a2 + *(v126 + 20));
                goto LABEL_330;
              case 8:
                *a1 = *a2;
                v28 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                v29 = sub_21DBF8D7C();
                (*(*(v29 - 8) + 16))(a1 + v28, a2 + v28, v29);
LABEL_330:
                swift_storeEnumTagMultiPayload();
                goto LABEL_331;
            }

LABEL_153:
            memcpy(a1, a2, *(v6 + 64));
LABEL_331:
            (*(v6 + 56))(a1, 0, 1, v5);
            goto LABEL_332;
          }

          if (v27 != 4)
          {
            *a1 = *a2;
            *(a1 + 8) = *(a2 + 8);
            *(a1 + 9) = *(a2 + 9);
            *(a1 + 10) = *(a2 + 10);
            v63 = a2[2];
            a1[2] = v63;
            v64 = v63;
            goto LABEL_330;
          }

          v285 = v6;
          v88 = *a2;
          *a1 = *a2;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v89 = *(v58 - 8);
          v90 = *(v89 + 48);
          v91 = v88;
          v62 = v57;
          if (v90(a2 + v57, 1, v58))
          {
LABEL_138:
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(a1 + v57, a2 + v57, *(*(v84 - 8) + 64));
            v6 = v285;
            goto LABEL_330;
          }

          v114 = v89;
          v124 = swift_getEnumCaseMultiPayload();
          if (v124 > 4)
          {
            v6 = v285;
            if (v124 <= 7)
            {
              if (v124 == 5 || v124 == 6)
              {
                goto LABEL_307;
              }

              goto LABEL_328;
            }

            if (v124 != 8 && v124 != 9)
            {
              goto LABEL_328;
            }
          }

          else
          {
            v6 = v285;
            if (v124 > 2)
            {
              goto LABEL_307;
            }

            if (v124 != 1)
            {
              if (v124 == 2)
              {
                goto LABEL_307;
              }

LABEL_328:
              memcpy(a1 + v62, a2 + v62, *(v114 + 64));
              goto LABEL_329;
            }
          }

LABEL_314:
          v257 = *(a2 + v62);
          *(a1 + v62) = v257;
          v258 = v257;
          swift_storeEnumTagMultiPayload();
          goto LABEL_329;
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v285 = v6;
            v80 = *a2;
            *a1 = *a2;
            v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v81 = *(v58 - 8);
            v82 = *(v81 + 48);
            v83 = v80;
            v62 = v57;
            if (v82(a2 + v57, 1, v58))
            {
              goto LABEL_138;
            }

            v114 = v81;
            v115 = swift_getEnumCaseMultiPayload();
            if (v115 > 4)
            {
              v6 = v285;
              if (v115 <= 7)
              {
                if (v115 == 5 || v115 == 6)
                {
                  goto LABEL_307;
                }

                goto LABEL_328;
              }

              if (v115 != 8 && v115 != 9)
              {
                goto LABEL_328;
              }

              goto LABEL_314;
            }

            v6 = v285;
            if (v115 > 2)
            {
              goto LABEL_307;
            }

            if (v115 == 1)
            {
              goto LABEL_314;
            }

            if (v115 != 2)
            {
              goto LABEL_328;
            }
          }

          else
          {
            v285 = v6;
            v56 = *a2;
            *a1 = *a2;
            v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v59 = *(v58 - 8);
            v60 = *(v59 + 48);
            v61 = v56;
            v62 = v57;
            if (v60(a2 + v57, 1, v58))
            {
              goto LABEL_138;
            }

            v113 = swift_getEnumCaseMultiPayload();
            if (v113 > 4)
            {
              v114 = v59;
              if (v113 <= 7)
              {
                v6 = v285;
                if (v113 == 5 || v113 == 6)
                {
                  goto LABEL_307;
                }

                goto LABEL_328;
              }

              v6 = v285;
              if (v113 != 8 && v113 != 9)
              {
                goto LABEL_328;
              }

              goto LABEL_314;
            }

            v114 = v59;
            if (v113 > 2)
            {
              v6 = v285;
            }

            else
            {
              v6 = v285;
              if (v113 == 1)
              {
                goto LABEL_314;
              }

              if (v113 != 2)
              {
                goto LABEL_328;
              }
            }
          }

LABEL_307:
          v256 = sub_21DBF563C();
          (*(*(v256 - 8) + 16))(a1 + v62, a2 + v62, v256);
          swift_storeEnumTagMultiPayload();
LABEL_329:
          (*(v114 + 56))(a1 + v62, 0, 1, v58);
          goto LABEL_330;
        }

        if (v27)
        {
          if (v27 != 1)
          {
            goto LABEL_153;
          }

          v50 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v51 = swift_getEnumCaseMultiPayload();
          v276 = v5;
          v284 = v6;
          if (v51 <= 4)
          {
            if (v51 > 2)
            {
LABEL_251:
              v206 = sub_21DBF563C();
              (*(*(v206 - 8) + 16))(a1, a2, v206);
              swift_storeEnumTagMultiPayload();
              goto LABEL_292;
            }

            if (v51 != 1)
            {
              if (v51 == 2)
              {
                goto LABEL_251;
              }

              goto LABEL_291;
            }

LABEL_254:
            v207 = *a2;
            *a1 = *a2;
            v208 = v207;
            swift_storeEnumTagMultiPayload();
            goto LABEL_292;
          }

          if (v51 > 7)
          {
            if (v51 == 8 || v51 == 9)
            {
              goto LABEL_254;
            }
          }

          else if (v51 == 5 || v51 == 6)
          {
            goto LABEL_251;
          }

LABEL_291:
          memcpy(a1, a2, *(*(v50 - 8) + 64));
LABEL_292:
          v212 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v213 = v212[5];
          v214 = a1 + v213;
          v215 = a2 + v213;
          if (*(a2 + v213 + 8))
          {
            v274 = v212;
            *v214 = *v215;
            *(v214 + 1) = *(v215 + 1);
            v216 = *(v215 + 2);
            v217 = *(v215 + 3);
            v219 = *(v215 + 4);
            v218 = *(v215 + 5);
            v220 = *(v215 + 6);
            v263 = *(v215 + 7);
            v221 = v215[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v216, v217, v219, v218, v220, v263, v221);
            *(v214 + 2) = v216;
            *(v214 + 3) = v217;
            *(v214 + 4) = v219;
            *(v214 + 5) = v218;
            *(v214 + 6) = v220;
            *(v214 + 7) = v263;
            v214[64] = v221;
            v214[65] = v215[65];
            v214[66] = v215[66];
            v214[67] = v215[67];
            v214[68] = v215[68];
            v222 = v215[120];
            if (v222 == 255)
            {
              v235 = *(v215 + 72);
              v236 = *(v215 + 88);
              v237 = *(v215 + 104);
              v214[120] = v215[120];
              *(v214 + 104) = v237;
              *(v214 + 88) = v236;
              *(v214 + 72) = v235;
            }

            else
            {
              v224 = *(v215 + 9);
              v223 = *(v215 + 10);
              v225 = *(v215 + 11);
              v226 = *(v215 + 12);
              v227 = *(v215 + 13);
              v264 = *(v215 + 14);
              v228 = v222 & 1;
              sub_21D0FB960(v224, v223, v225, v226, v227, v264, v222 & 1);
              *(v214 + 9) = v224;
              *(v214 + 10) = v223;
              *(v214 + 11) = v225;
              *(v214 + 12) = v226;
              *(v214 + 13) = v227;
              *(v214 + 14) = v264;
              v214[120] = v228;
            }

            v5 = v276;
            v6 = v284;
            v214[121] = v215[121];
            v212 = v274;
            goto LABEL_298;
          }

LABEL_295:
          v229 = *v215;
          v230 = *(v215 + 1);
          v231 = *(v215 + 3);
          *(v214 + 2) = *(v215 + 2);
          *(v214 + 3) = v231;
          *v214 = v229;
          *(v214 + 1) = v230;
          v232 = *(v215 + 4);
          v233 = *(v215 + 5);
          v234 = *(v215 + 6);
          *(v214 + 106) = *(v215 + 106);
          *(v214 + 5) = v233;
          *(v214 + 6) = v234;
          *(v214 + 4) = v232;
LABEL_298:
          *(a1 + v212[6]) = *(a2 + v212[6]);
          *(a1 + v212[7]) = *(a2 + v212[7]);
          *(a1 + v212[8]) = *(a2 + v212[8]);
          *(a1 + v212[9]) = *(a2 + v212[9]);
          *(a1 + v212[10]) = *(a2 + v212[10]);
          v238 = v212[11];
          v239 = *(a2 + v238);
          *(a1 + v238) = v239;
          v240 = v239;
          goto LABEL_330;
        }

        v78 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v79 = swift_getEnumCaseMultiPayload();
        v286 = v6;
        if (v79 <= 4)
        {
          if (v79 > 2)
          {
LABEL_255:
            v209 = sub_21DBF563C();
            (*(*(v209 - 8) + 16))(a1, a2, v209);
            swift_storeEnumTagMultiPayload();
            goto LABEL_300;
          }

          if (v79 != 1)
          {
            if (v79 == 2)
            {
              goto LABEL_255;
            }

            goto LABEL_299;
          }

LABEL_258:
          v210 = *a2;
          *a1 = *a2;
          v211 = v210;
          swift_storeEnumTagMultiPayload();
          goto LABEL_300;
        }

        if (v79 > 7)
        {
          if (v79 == 8 || v79 == 9)
          {
            goto LABEL_258;
          }
        }

        else if (v79 == 5 || v79 == 6)
        {
          goto LABEL_255;
        }

LABEL_299:
        memcpy(a1, a2, *(*(v78 - 8) + 64));
LABEL_300:
        v212 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v241 = v212[5];
        v214 = a1 + v241;
        v215 = a2 + v241;
        if (*(a2 + v241 + 8))
        {
          v275 = v212;
          *v214 = *v215;
          *(v214 + 1) = *(v215 + 1);
          v242 = *(v215 + 2);
          v243 = *(v215 + 3);
          v244 = *(v215 + 4);
          v265 = *(v215 + 5);
          v245 = *(v215 + 6);
          v246 = *(v215 + 7);
          v261 = v215[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v242, v243, v244, v265, v245, v246, v261);
          *(v214 + 2) = v242;
          *(v214 + 3) = v243;
          *(v214 + 4) = v244;
          *(v214 + 5) = v265;
          *(v214 + 6) = v245;
          *(v214 + 7) = v246;
          v214[64] = v261;
          v214[65] = v215[65];
          v214[66] = v215[66];
          v214[67] = v215[67];
          v214[68] = v215[68];
          v247 = v215[120];
          if (v247 == 255)
          {
            v253 = *(v215 + 72);
            v254 = *(v215 + 88);
            v255 = *(v215 + 104);
            v214[120] = v215[120];
            *(v214 + 104) = v255;
            *(v214 + 88) = v254;
            *(v214 + 72) = v253;
          }

          else
          {
            v249 = *(v215 + 9);
            v248 = *(v215 + 10);
            v250 = *(v215 + 11);
            v251 = *(v215 + 12);
            v262 = *(v215 + 14);
            v266 = *(v215 + 13);
            v252 = v247 & 1;
            sub_21D0FB960(v249, v248, v250, v251, v266, v262, v247 & 1);
            *(v214 + 9) = v249;
            *(v214 + 10) = v248;
            *(v214 + 11) = v250;
            *(v214 + 12) = v251;
            *(v214 + 13) = v266;
            *(v214 + 14) = v262;
            v214[120] = v252;
          }

          v6 = v286;
          v214[121] = v215[121];
          v212 = v275;
          goto LABEL_298;
        }

        goto LABEL_295;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_50:
          v30 = sub_21DBF563C();
          (*(*(v30 - 8) + 16))(a1, a2, v30);
          goto LABEL_272;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_50;
          }

          goto LABEL_74;
        }

LABEL_53:
        v31 = *a2;
        *a1 = *a2;
        v32 = v31;
        goto LABEL_272;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_53;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_50;
      }

LABEL_74:
      v49 = *(*(v12 - 8) + 64);
      goto LABEL_75;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 <= 3)
      {
        if (v9 <= 1)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v11 = swift_getEnumCaseMultiPayload();
              if (v11 <= 4)
              {
                if (v11 > 2)
                {
LABEL_154:
                  v95 = sub_21DBF563C();
                  (*(*(v95 - 8) + 16))(a1, a2, v95);
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_224;
                }

                if (v11 != 1)
                {
                  if (v11 == 2)
                  {
                    goto LABEL_154;
                  }

                  goto LABEL_223;
                }

LABEL_158:
                v97 = *a2;
                *a1 = *a2;
                v98 = v97;
                swift_storeEnumTagMultiPayload();
                goto LABEL_224;
              }

              if (v11 > 7)
              {
                if (v11 == 8 || v11 == 9)
                {
                  goto LABEL_158;
                }
              }

              else if (v11 == 5 || v11 == 6)
              {
                goto LABEL_154;
              }

LABEL_223:
              memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_224:
              v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v128 = v127[5];
              v129 = a1 + v128;
              v130 = a2 + v128;
              if (!*(a2 + v128 + 8))
              {
                goto LABEL_232;
              }

              goto LABEL_228;
            }

LABEL_62:
            v49 = *(*(v8 - 8) + 64);
LABEL_75:
            memcpy(a1, a2, v49);
LABEL_333:
            swift_storeEnumTagMultiPayload();
            return a1;
          }

          v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v53 = swift_getEnumCaseMultiPayload();
          if (v53 > 4)
          {
            if (v53 <= 7)
            {
              if (v53 == 5 || v53 == 6)
              {
                goto LABEL_162;
              }

              goto LABEL_234;
            }

            if (v53 != 8 && v53 != 9)
            {
              goto LABEL_234;
            }
          }

          else
          {
            if (v53 > 2)
            {
LABEL_162:
              v101 = sub_21DBF563C();
              (*(*(v101 - 8) + 16))(a1, a2, v101);
              swift_storeEnumTagMultiPayload();
LABEL_235:
              v155 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v156 = v155[5];
              v157 = a1 + v156;
              v158 = a2 + v156;
              if (*(a2 + v156 + 8))
              {
                *v157 = *v158;
                *(v157 + 1) = *(v158 + 1);
                v159 = *(v158 + 2);
                v160 = *(v158 + 3);
                v162 = *(v158 + 4);
                v161 = *(v158 + 5);
                v163 = *(v158 + 6);
                v280 = *(v158 + 7);
                v270 = v158[64];
                sub_21DBF8E0C();
                sub_21D2A7DB4(v159, v160, v162, v161, v163, v280, v270);
                *(v157 + 2) = v159;
                *(v157 + 3) = v160;
                *(v157 + 4) = v162;
                *(v157 + 5) = v161;
                *(v157 + 6) = v163;
                *(v157 + 7) = v280;
                v157[64] = v270;
                v157[65] = v158[65];
                v157[66] = v158[66];
                v157[67] = v158[67];
                v157[68] = v158[68];
                v164 = v158[120];
                if (v164 == 255)
                {
                  v176 = *(v158 + 72);
                  v177 = *(v158 + 88);
                  v178 = *(v158 + 104);
                  v157[120] = v158[120];
                  *(v157 + 104) = v178;
                  *(v157 + 88) = v177;
                  *(v157 + 72) = v176;
                }

                else
                {
                  v271 = *(v158 + 10);
                  v281 = *(v158 + 9);
                  v166 = *(v158 + 11);
                  v165 = *(v158 + 12);
                  v167 = *(v158 + 13);
                  v168 = *(v158 + 14);
                  v169 = v164 & 1;
                  sub_21D0FB960(v281, v271, v166, v165, v167, v168, v164 & 1);
                  *(v157 + 9) = v281;
                  *(v157 + 10) = v271;
                  *(v157 + 11) = v166;
                  *(v157 + 12) = v165;
                  *(v157 + 13) = v167;
                  *(v157 + 14) = v168;
                  v157[120] = v169;
                }

                v157[121] = v158[121];
              }

              else
              {
                v170 = *v158;
                v171 = *(v158 + 1);
                v172 = *(v158 + 3);
                *(v157 + 2) = *(v158 + 2);
                *(v157 + 3) = v172;
                *v157 = v170;
                *(v157 + 1) = v171;
                v173 = *(v158 + 4);
                v174 = *(v158 + 5);
                v175 = *(v158 + 6);
                *(v157 + 106) = *(v158 + 106);
                *(v157 + 5) = v174;
                *(v157 + 6) = v175;
                *(v157 + 4) = v173;
              }

              *(a1 + v155[6]) = *(a2 + v155[6]);
              *(a1 + v155[7]) = *(a2 + v155[7]);
              *(a1 + v155[8]) = *(a2 + v155[8]);
              *(a1 + v155[9]) = *(a2 + v155[9]);
              *(a1 + v155[10]) = *(a2 + v155[10]);
              v179 = v155[11];
LABEL_250:
              v204 = *(a2 + v179);
              *(a1 + v179) = v204;
              v205 = v204;
              goto LABEL_272;
            }

            if (v53 != 1)
            {
              if (v53 == 2)
              {
                goto LABEL_162;
              }

LABEL_234:
              memcpy(a1, a2, *(*(v52 - 8) + 64));
              goto LABEL_235;
            }
          }

          v103 = *a2;
          *a1 = *a2;
          v104 = v103;
          swift_storeEnumTagMultiPayload();
          goto LABEL_235;
        }

LABEL_39:
        if (v9 != 2)
        {
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
            memcpy(a1 + v19, a2 + v19, *(*(v24 - 8) + 64));
            goto LABEL_272;
          }

          v65 = swift_getEnumCaseMultiPayload();
          if (v65 > 4)
          {
            if (v65 <= 7)
            {
              if (v65 == 5 || v65 == 6)
              {
                goto LABEL_174;
              }

              goto LABEL_268;
            }

            if (v65 != 8 && v65 != 9)
            {
              goto LABEL_268;
            }
          }

          else
          {
            if (v65 > 2)
            {
LABEL_174:
              v107 = sub_21DBF563C();
              (*(*(v107 - 8) + 16))(a1 + v19, a2 + v19, v107);
              swift_storeEnumTagMultiPayload();
LABEL_269:
              (*(v21 + 56))(a1 + v19, 0, 1, v20);
              goto LABEL_272;
            }

            if (v65 != 1)
            {
              if (v65 == 2)
              {
                goto LABEL_174;
              }

LABEL_268:
              memcpy(a1 + v19, a2 + v19, *(v21 + 64));
              goto LABEL_269;
            }
          }

          v108 = *(a2 + v19);
          *(a1 + v19) = v108;
          v109 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_269;
        }

        v33 = *a2;
        *a1 = *a2;
        v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v36 = *(v35 - 8);
        v37 = *(v36 + 48);
        v38 = v33;
        if (v37(a2 + v34, 1, v35))
        {
LABEL_61:
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v34, a2 + v34, *(*(v48 - 8) + 64));
          goto LABEL_272;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 > 4)
        {
          if (v66 <= 7)
          {
            if (v66 == 5 || v66 == 6)
            {
              goto LABEL_186;
            }

            goto LABEL_270;
          }

          if (v66 != 8 && v66 != 9)
          {
            goto LABEL_270;
          }
        }

        else
        {
          if (v66 > 2)
          {
            goto LABEL_186;
          }

          if (v66 != 1)
          {
            if (v66 == 2)
            {
              goto LABEL_186;
            }

LABEL_270:
            memcpy(a1 + v34, a2 + v34, *(v36 + 64));
            goto LABEL_271;
          }
        }

        goto LABEL_189;
      }

LABEL_22:
      if (v9 > 5)
      {
        if (v9 == 6)
        {
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
            v67 = *(v39 + 20);
            v68 = sub_21DBF6C1C();
            v277 = *(*(v68 - 8) + 16);
            sub_21DBF8E0C();
            v277(a1 + v67, a2 + v67, v68);
            (*(v40 + 56))(a1, 0, 1, v39);
          }

          v69 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v70 = (a1 + v69);
          v71 = (a2 + v69);
          if (v71[1])
          {
            *v70 = *v71;
            v70[1] = v71[1];
            v72 = v71[2];
            v70[2] = v72;
            sub_21DBF8E0C();
            v73 = v72;
          }

          else
          {
            v74 = *v71;
            v70[2] = v71[2];
            *v70 = v74;
          }

          goto LABEL_272;
        }

        if (v9 == 7)
        {
          v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v43 = *(v42 - 8);
          if ((*(v43 + 48))(a2, 1, v42))
          {
            v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v44 - 8) + 64));
          }

          else
          {
            v75 = sub_21DBF563C();
            (*(*(v75 - 8) + 16))(a1, a2, v75);
            *(a1 + *(v42 + 20)) = *(a2 + *(v42 + 20));
            (*(v43 + 56))(a1, 0, 1, v42);
          }

          v76 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *(a1 + *(v76 + 20)) = *(a2 + *(v76 + 20));
          goto LABEL_272;
        }

        if (v9 != 8)
        {
          goto LABEL_62;
        }

        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v15 = sub_21DBF8D7C();
        (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
LABEL_272:
        swift_storeEnumTagMultiPayload();
        goto LABEL_333;
      }

      if (v9 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v25 = a2[2];
        a1[2] = v25;
        v26 = v25;
        goto LABEL_272;
      }

      v45 = *a2;
      *a1 = *a2;
      v34 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v36 = *(v35 - 8);
      v46 = *(v36 + 48);
      v47 = v45;
      if (v46(a2 + v34, 1, v35))
      {
        goto LABEL_61;
      }

      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 4)
      {
        if (v77 <= 7)
        {
          if (v77 == 5 || v77 == 6)
          {
            goto LABEL_186;
          }

          goto LABEL_270;
        }

        if (v77 != 8 && v77 != 9)
        {
          goto LABEL_270;
        }
      }

      else
      {
        if (v77 > 2)
        {
LABEL_186:
          v110 = sub_21DBF563C();
          (*(*(v110 - 8) + 16))(a1 + v34, a2 + v34, v110);
          swift_storeEnumTagMultiPayload();
LABEL_271:
          (*(v36 + 56))(a1 + v34, 0, 1, v35);
          goto LABEL_272;
        }

        if (v77 != 1)
        {
          if (v77 == 2)
          {
            goto LABEL_186;
          }

          goto LABEL_270;
        }
      }

LABEL_189:
      v111 = *(a2 + v34);
      *(a1 + v34) = v111;
      v112 = v111;
      swift_storeEnumTagMultiPayload();
      goto LABEL_271;
    }

    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 3)
    {
      goto LABEL_22;
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_62;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      if (v17 <= 4)
      {
        if (v17 > 2)
        {
LABEL_155:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(a1, a2, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_227;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_155;
          }

          goto LABEL_226;
        }

LABEL_161:
        v99 = *a2;
        *a1 = *a2;
        v100 = v99;
        swift_storeEnumTagMultiPayload();
        goto LABEL_227;
      }

      if (v17 > 7)
      {
        if (v17 == 8 || v17 == 9)
        {
          goto LABEL_161;
        }
      }

      else if (v17 == 5 || v17 == 6)
      {
        goto LABEL_155;
      }

LABEL_226:
      memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_227:
      v127 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v131 = v127[5];
      v129 = a1 + v131;
      v130 = a2 + v131;
      if (!*(a2 + v131 + 8))
      {
LABEL_232:
        v146 = *v130;
        v147 = *(v130 + 1);
        v148 = *(v130 + 3);
        *(v129 + 2) = *(v130 + 2);
        *(v129 + 3) = v148;
        *v129 = v146;
        *(v129 + 1) = v147;
        v149 = *(v130 + 4);
        v150 = *(v130 + 5);
        v151 = *(v130 + 6);
        *(v129 + 106) = *(v130 + 106);
        *(v129 + 5) = v150;
        *(v129 + 6) = v151;
        *(v129 + 4) = v149;
LABEL_233:
        *(a1 + v127[6]) = *(a2 + v127[6]);
        *(a1 + v127[7]) = *(a2 + v127[7]);
        *(a1 + v127[8]) = *(a2 + v127[8]);
        *(a1 + v127[9]) = *(a2 + v127[9]);
        *(a1 + v127[10]) = *(a2 + v127[10]);
        v152 = v127[11];
        v153 = *(a2 + v152);
        *(a1 + v152) = v153;
        v154 = v153;
        goto LABEL_272;
      }

LABEL_228:
      *v129 = *v130;
      *(v129 + 1) = *(v130 + 1);
      v132 = *(v130 + 2);
      v133 = *(v130 + 3);
      v134 = *(v130 + 4);
      v135 = *(v130 + 5);
      v136 = *(v130 + 6);
      v268 = *(v130 + 7);
      v278 = v130[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v132, v133, v134, v135, v136, v268, v278);
      *(v129 + 2) = v132;
      *(v129 + 3) = v133;
      *(v129 + 4) = v134;
      *(v129 + 5) = v135;
      *(v129 + 6) = v136;
      *(v129 + 7) = v268;
      v129[64] = v278;
      v129[65] = v130[65];
      v129[66] = v130[66];
      v129[67] = v130[67];
      v129[68] = v130[68];
      v137 = v130[120];
      if (v137 == 255)
      {
        v143 = *(v130 + 72);
        v144 = *(v130 + 88);
        v145 = *(v130 + 104);
        v129[120] = v130[120];
        *(v129 + 104) = v145;
        *(v129 + 88) = v144;
        *(v129 + 72) = v143;
      }

      else
      {
        v269 = *(v130 + 10);
        v279 = *(v130 + 9);
        v138 = *(v130 + 11);
        v139 = *(v130 + 12);
        v140 = *(v130 + 13);
        v141 = *(v130 + 14);
        v142 = v137 & 1;
        sub_21D0FB960(v279, v269, v138, v139, v140, v141, v137 & 1);
        *(v129 + 9) = v279;
        *(v129 + 10) = v269;
        *(v129 + 11) = v138;
        *(v129 + 12) = v139;
        *(v129 + 13) = v140;
        *(v129 + 14) = v141;
        v129[120] = v142;
      }

      v129[121] = v130[121];
      goto LABEL_233;
    }

    v54 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 > 4)
    {
      if (v55 <= 7)
      {
        if (v55 == 5 || v55 == 6)
        {
          goto LABEL_163;
        }

        goto LABEL_242;
      }

      if (v55 != 8 && v55 != 9)
      {
        goto LABEL_242;
      }
    }

    else
    {
      if (v55 > 2)
      {
LABEL_163:
        v102 = sub_21DBF563C();
        (*(*(v102 - 8) + 16))(a1, a2, v102);
        swift_storeEnumTagMultiPayload();
LABEL_243:
        v180 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v181 = v180[5];
        v182 = a1 + v181;
        v183 = a2 + v181;
        if (*(a2 + v181 + 8))
        {
          *v182 = *v183;
          *(v182 + 1) = *(v183 + 1);
          v184 = *(v183 + 2);
          v185 = *(v183 + 3);
          v186 = *(v183 + 4);
          v187 = *(v183 + 5);
          v188 = *(v183 + 6);
          v272 = *(v183 + 7);
          v282 = v183[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v184, v185, v186, v187, v188, v272, v282);
          *(v182 + 2) = v184;
          *(v182 + 3) = v185;
          *(v182 + 4) = v186;
          *(v182 + 5) = v187;
          *(v182 + 6) = v188;
          *(v182 + 7) = v272;
          v182[64] = v282;
          v182[65] = v183[65];
          v182[66] = v183[66];
          v182[67] = v183[67];
          v182[68] = v183[68];
          v189 = v183[120];
          if (v189 == 255)
          {
            v201 = *(v183 + 72);
            v202 = *(v183 + 88);
            v203 = *(v183 + 104);
            v182[120] = v183[120];
            *(v182 + 104) = v203;
            *(v182 + 88) = v202;
            *(v182 + 72) = v201;
          }

          else
          {
            v273 = *(v183 + 10);
            v283 = *(v183 + 9);
            v190 = *(v183 + 11);
            v191 = *(v183 + 12);
            v192 = *(v183 + 13);
            v193 = *(v183 + 14);
            v194 = v189 & 1;
            sub_21D0FB960(v283, v273, v190, v191, v192, v193, v189 & 1);
            *(v182 + 9) = v283;
            *(v182 + 10) = v273;
            *(v182 + 11) = v190;
            *(v182 + 12) = v191;
            *(v182 + 13) = v192;
            *(v182 + 14) = v193;
            v182[120] = v194;
          }

          v182[121] = v183[121];
        }

        else
        {
          v195 = *v183;
          v196 = *(v183 + 1);
          v197 = *(v183 + 3);
          *(v182 + 2) = *(v183 + 2);
          *(v182 + 3) = v197;
          *v182 = v195;
          *(v182 + 1) = v196;
          v198 = *(v183 + 4);
          v199 = *(v183 + 5);
          v200 = *(v183 + 6);
          *(v182 + 106) = *(v183 + 106);
          *(v182 + 5) = v199;
          *(v182 + 6) = v200;
          *(v182 + 4) = v198;
        }

        *(a1 + v180[6]) = *(a2 + v180[6]);
        *(a1 + v180[7]) = *(a2 + v180[7]);
        *(a1 + v180[8]) = *(a2 + v180[8]);
        *(a1 + v180[9]) = *(a2 + v180[9]);
        *(a1 + v180[10]) = *(a2 + v180[10]);
        v179 = v180[11];
        goto LABEL_250;
      }

      if (v55 != 1)
      {
        if (v55 == 2)
        {
          goto LABEL_163;
        }

LABEL_242:
        memcpy(a1, a2, *(*(v54 - 8) + 64));
        goto LABEL_243;
      }
    }

    v105 = *a2;
    *a1 = *a2;
    v106 = v105;
    swift_storeEnumTagMultiPayload();
    goto LABEL_243;
  }

  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListReminderCreationLocation(_BYTE *a1, _BYTE *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v6 = *(v5 - 8);
      if ((*(v6 + 48))(a2, 1, v5))
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_194:
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *&a1[*(v82 + 48)] = *&a2[*(v82 + 48)];
        goto LABEL_195;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 3)
      {
        if (v24 > 6)
        {
          if (v24 == 7)
          {
            v54 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v55 = *(v54 - 8);
            if ((*(v55 + 48))(a2, 1, v54))
            {
              v56 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v56 - 8) + 64));
            }

            else
            {
              v66 = sub_21DBF563C();
              (*(*(v66 - 8) + 32))(a1, a2, v66);
              a1[*(v54 + 20)] = a2[*(v54 + 20)];
              (*(v55 + 56))(a1, 0, 1, v54);
            }

            v67 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v67 + 20)] = *&a2[*(v67 + 20)];
            goto LABEL_192;
          }

          if (v24 != 8)
          {
            goto LABEL_107;
          }

          *a1 = *a2;
          v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v40 = sub_21DBF8D7C();
          (*(*(v40 - 8) + 32))(&a1[v39], &a2[v39], v40);
LABEL_192:
          swift_storeEnumTagMultiPayload();
          goto LABEL_193;
        }

        if (v24 != 4)
        {
          if (v24 == 6)
          {
            v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v68 = *(v32 + 20);
              v69 = sub_21DBF6C1C();
              (*(*(v69 - 8) + 32))(&a1[v68], &a2[v68], v69);
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v70 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v71 = &a1[v70];
            v72 = &a2[v70];
            *v71 = *v72;
            *(v71 + 2) = *(v72 + 2);
            goto LABEL_192;
          }

          goto LABEL_107;
        }

        *a1 = *a2;
        v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(&a2[v36], 1, v37))
        {
          v64 = swift_getEnumCaseMultiPayload();
          if (v64 <= 3)
          {
            if (v64 == 2 || v64 == 3)
            {
              goto LABEL_150;
            }
          }

          else if (v64 == 4 || v64 == 5 || v64 == 6)
          {
            goto LABEL_150;
          }

          goto LABEL_190;
        }
      }

      else
      {
        if (v24 <= 1)
        {
          if (!v24)
          {
            v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v52 = swift_getEnumCaseMultiPayload();
            if (v52 <= 3)
            {
              if (v52 == 2 || v52 == 3)
              {
                goto LABEL_50;
              }
            }

            else if (v52 == 4 || v52 == 5 || v52 == 6)
            {
              goto LABEL_50;
            }

            goto LABEL_169;
          }

          if (v24 == 1)
          {
            v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v26 = swift_getEnumCaseMultiPayload();
            if (v26 <= 3)
            {
              if (v26 == 2 || v26 == 3)
              {
                goto LABEL_50;
              }
            }

            else if (v26 == 4 || v26 == 5 || v26 == 6)
            {
LABEL_50:
              v27 = sub_21DBF563C();
              (*(*(v27 - 8) + 32))(a1, a2, v27);
              swift_storeEnumTagMultiPayload();
LABEL_170:
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
              goto LABEL_192;
            }

LABEL_169:
            memcpy(a1, a2, *(*(v25 - 8) + 64));
            goto LABEL_170;
          }

LABEL_107:
          memcpy(a1, a2, *(v6 + 64));
LABEL_193:
          (*(v6 + 56))(a1, 0, 1, v5);
          goto LABEL_194;
        }

        if (v24 != 2)
        {
          *a1 = *a2;
          v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v37 - 8);
          if ((*(v38 + 48))(&a2[v36], 1, v37))
          {
            goto LABEL_104;
          }

          v73 = swift_getEnumCaseMultiPayload();
          if (v73 <= 3)
          {
            if (v73 == 2 || v73 == 3)
            {
              goto LABEL_150;
            }
          }

          else if (v73 == 4 || v73 == 5 || v73 == 6)
          {
LABEL_150:
            v74 = sub_21DBF563C();
            (*(*(v74 - 8) + 32))(&a1[v36], &a2[v36], v74);
            swift_storeEnumTagMultiPayload();
LABEL_191:
            (*(v38 + 56))(&a1[v36], 0, 1, v37);
            goto LABEL_192;
          }

LABEL_190:
          memcpy(&a1[v36], &a2[v36], *(v38 + 64));
          goto LABEL_191;
        }

        *a1 = *a2;
        v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(&a2[v36], 1, v37))
        {
          v65 = swift_getEnumCaseMultiPayload();
          if (v65 <= 3)
          {
            if (v65 == 2 || v65 == 3)
            {
              goto LABEL_150;
            }
          }

          else if (v65 == 4 || v65 == 5 || v65 == 6)
          {
            goto LABEL_150;
          }

          goto LABEL_190;
        }
      }

LABEL_104:
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v36], &a2[v36], *(*(v53 - 8) + 64));
      goto LABEL_192;
    }

    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 <= 3)
    {
      if (v12 == 2 || v12 == 3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      switch(v12)
      {
        case 4:
          goto LABEL_18;
        case 5:
          v35 = sub_21DBF563C();
          (*(*(v35 - 8) + 32))(a1, a2, v35);
          swift_storeEnumTagMultiPayload();
          goto LABEL_195;
        case 6:
LABEL_18:
          v13 = sub_21DBF563C();
          (*(*(v13 - 8) + 32))(a1, a2, v13);
LABEL_162:
          swift_storeEnumTagMultiPayload();
          goto LABEL_195;
      }
    }

    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 <= 1)
      {
        if (!v9)
        {
          goto LABEL_9;
        }

LABEL_22:
        if (v9 == 1)
        {
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 <= 3)
          {
            if (v14 == 2 || v14 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v14 == 4 || v14 == 5 || v14 == 6)
          {
            goto LABEL_27;
          }

          goto LABEL_114;
        }

LABEL_41:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_195;
      }

LABEL_33:
      if (v9 != 2)
      {
        *a1 = *a2;
        v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(&a2[v19], 1, v20))
        {
          goto LABEL_54;
        }

        v50 = swift_getEnumCaseMultiPayload();
        if (v50 <= 3)
        {
          if (v50 == 2 || v50 == 3)
          {
            goto LABEL_95;
          }
        }

        else if (v50 == 4 || v50 == 5 || v50 == 6)
        {
LABEL_95:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 32))(&a1[v19], &a2[v19], v51);
          swift_storeEnumTagMultiPayload();
LABEL_161:
          (*(v21 + 56))(&a1[v19], 0, 1, v20);
          goto LABEL_162;
        }

LABEL_160:
        memcpy(&a1[v19], &a2[v19], *(v21 + 64));
        goto LABEL_161;
      }

      *a1 = *a2;
      v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(&a2[v19], 1, v20))
      {
        v42 = swift_getEnumCaseMultiPayload();
        if (v42 <= 3)
        {
          if (v42 == 2 || v42 == 3)
          {
            goto LABEL_95;
          }
        }

        else if (v42 == 4 || v42 == 5 || v42 == 6)
        {
          goto LABEL_95;
        }

        goto LABEL_160;
      }

LABEL_54:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v19], &a2[v19], *(*(v28 - 8) + 64));
      goto LABEL_162;
    }
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 <= 1)
      {
        if (!v9)
        {
LABEL_9:
          v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v11 = swift_getEnumCaseMultiPayload();
          if (v11 <= 3)
          {
            if (v11 == 2 || v11 == 3)
            {
              goto LABEL_27;
            }
          }

          else if (v11 == 4 || v11 == 5 || v11 == 6)
          {
LABEL_27:
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 32))(a1, a2, v15);
            swift_storeEnumTagMultiPayload();
LABEL_115:
            v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v58 = v57[5];
            v59 = &a1[v58];
            v60 = &a2[v58];
            v61 = v60[3];
            v59[2] = v60[2];
            v59[3] = v61;
            v62 = v60[1];
            *v59 = *v60;
            v59[1] = v62;
            *(v59 + 106) = *(v60 + 106);
            v63 = v60[6];
            v59[5] = v60[5];
            v59[6] = v63;
            v59[4] = v60[4];
            a1[v57[6]] = a2[v57[6]];
            a1[v57[7]] = a2[v57[7]];
            a1[v57[8]] = a2[v57[8]];
            a1[v57[9]] = a2[v57[9]];
            a1[v57[10]] = a2[v57[10]];
            *&a1[v57[11]] = *&a2[v57[11]];
            swift_storeEnumTagMultiPayload();
            goto LABEL_195;
          }

LABEL_114:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_115;
        }

        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  if (v9 <= 6)
  {
    if (v9 != 4)
    {
      if (v9 == 6)
      {
        v16 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(a2, 1, v16))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v18 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v45 = *(v16 + 20);
          v46 = sub_21DBF6C1C();
          (*(*(v46 - 8) + 32))(&a1[v45], &a2[v45], v46);
          (*(v17 + 56))(a1, 0, 1, v16);
        }

        v47 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v48 = &a1[v47];
        v49 = &a2[v47];
        *v48 = *v49;
        *(v48 + 2) = *(v49 + 2);
        goto LABEL_162;
      }

      goto LABEL_41;
    }

    *a1 = *a2;
    v19 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&a2[v19], 1, v20))
    {
      v41 = swift_getEnumCaseMultiPayload();
      if (v41 <= 3)
      {
        if (v41 == 2 || v41 == 3)
        {
          goto LABEL_95;
        }
      }

      else if (v41 == 4 || v41 == 5 || v41 == 6)
      {
        goto LABEL_95;
      }

      goto LABEL_160;
    }

    goto LABEL_54;
  }

  if (v9 == 7)
  {
    v29 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(a2, 1, v29))
    {
      v31 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v31 - 8) + 64));
    }

    else
    {
      v43 = sub_21DBF563C();
      (*(*(v43 - 8) + 32))(a1, a2, v43);
      a1[*(v29 + 20)] = a2[*(v29 + 20)];
      (*(v30 + 56))(a1, 0, 1, v29);
    }

    v44 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *&a1[*(v44 + 20)] = *&a2[*(v44 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v9 != 8)
    {
      goto LABEL_41;
    }

    *a1 = *a2;
    v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
    v23 = sub_21DBF8D7C();
    (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
    swift_storeEnumTagMultiPayload();
  }

LABEL_195:
  swift_storeEnumTagMultiPayload();
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListReminderCreationLocation(_BYTE *a1, _BYTE *a2)
{
  if (a1 != a2)
  {
    sub_21D106918(a1, type metadata accessor for TTRRemindersListReminderCreationLocation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
        v6 = *(v5 - 8);
        if ((*(v6 + 48))(a2, 1, v5))
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
          memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_196:
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
          *&a1[*(v82 + 48)] = *&a2[*(v82 + 48)];
          goto LABEL_197;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 > 3)
        {
          if (v25 > 6)
          {
            if (v25 == 7)
            {
              v54 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v55 = *(v54 - 8);
              if ((*(v55 + 48))(a2, 1, v54))
              {
                v56 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v56 - 8) + 64));
              }

              else
              {
                v66 = sub_21DBF563C();
                (*(*(v66 - 8) + 32))(a1, a2, v66);
                a1[*(v54 + 20)] = a2[*(v54 + 20)];
                (*(v55 + 56))(a1, 0, 1, v54);
              }

              v67 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *&a1[*(v67 + 20)] = *&a2[*(v67 + 20)];
              goto LABEL_194;
            }

            if (v25 != 8)
            {
              goto LABEL_109;
            }

            *a1 = *a2;
            v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v40 = sub_21DBF8D7C();
            (*(*(v40 - 8) + 32))(&a1[v39], &a2[v39], v40);
LABEL_194:
            swift_storeEnumTagMultiPayload();
            goto LABEL_195;
          }

          if (v25 != 4)
          {
            if (v25 == 6)
            {
              v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v33 = *(v32 - 8);
              if ((*(v33 + 48))(a2, 1, v32))
              {
                v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, a2, *(*(v34 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v68 = *(v32 + 20);
                v69 = sub_21DBF6C1C();
                (*(*(v69 - 8) + 32))(&a1[v68], &a2[v68], v69);
                (*(v33 + 56))(a1, 0, 1, v32);
              }

              v70 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v71 = &a1[v70];
              v72 = &a2[v70];
              *v71 = *v72;
              *(v71 + 2) = *(v72 + 2);
              goto LABEL_194;
            }

            goto LABEL_109;
          }

          *a1 = *a2;
          v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v37 - 8);
          if (!(*(v38 + 48))(&a2[v36], 1, v37))
          {
            v64 = swift_getEnumCaseMultiPayload();
            if (v64 <= 3)
            {
              if (v64 == 2 || v64 == 3)
              {
                goto LABEL_152;
              }
            }

            else if (v64 == 4 || v64 == 5 || v64 == 6)
            {
              goto LABEL_152;
            }

            goto LABEL_192;
          }
        }

        else
        {
          if (v25 <= 1)
          {
            if (!v25)
            {
              v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v52 = swift_getEnumCaseMultiPayload();
              if (v52 <= 3)
              {
                if (v52 == 2 || v52 == 3)
                {
                  goto LABEL_52;
                }
              }

              else if (v52 == 4 || v52 == 5 || v52 == 6)
              {
                goto LABEL_52;
              }

              goto LABEL_171;
            }

            if (v25 == 1)
            {
              v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 <= 3)
              {
                if (v27 == 2 || v27 == 3)
                {
                  goto LABEL_52;
                }
              }

              else if (v27 == 4 || v27 == 5 || v27 == 6)
              {
LABEL_52:
                v28 = sub_21DBF563C();
                (*(*(v28 - 8) + 32))(a1, a2, v28);
                swift_storeEnumTagMultiPayload();
LABEL_172:
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
                goto LABEL_194;
              }

LABEL_171:
              memcpy(a1, a2, *(*(v26 - 8) + 64));
              goto LABEL_172;
            }

LABEL_109:
            memcpy(a1, a2, *(v6 + 64));
LABEL_195:
            (*(v6 + 56))(a1, 0, 1, v5);
            goto LABEL_196;
          }

          if (v25 != 2)
          {
            *a1 = *a2;
            v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v38 = *(v37 - 8);
            if ((*(v38 + 48))(&a2[v36], 1, v37))
            {
              goto LABEL_106;
            }

            v73 = swift_getEnumCaseMultiPayload();
            if (v73 <= 3)
            {
              if (v73 == 2 || v73 == 3)
              {
                goto LABEL_152;
              }
            }

            else if (v73 == 4 || v73 == 5 || v73 == 6)
            {
LABEL_152:
              v74 = sub_21DBF563C();
              (*(*(v74 - 8) + 32))(&a1[v36], &a2[v36], v74);
              swift_storeEnumTagMultiPayload();
LABEL_193:
              (*(v38 + 56))(&a1[v36], 0, 1, v37);
              goto LABEL_194;
            }

LABEL_192:
            memcpy(&a1[v36], &a2[v36], *(v38 + 64));
            goto LABEL_193;
          }

          *a1 = *a2;
          v36 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v37 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v37 - 8);
          if (!(*(v38 + 48))(&a2[v36], 1, v37))
          {
            v65 = swift_getEnumCaseMultiPayload();
            if (v65 <= 3)
            {
              if (v65 == 2 || v65 == 3)
              {
                goto LABEL_152;
              }
            }

            else if (v65 == 4 || v65 == 5 || v65 == 6)
            {
              goto LABEL_152;
            }

            goto LABEL_192;
          }
        }

LABEL_106:
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v36], &a2[v36], *(*(v53 - 8) + 64));
        goto LABEL_194;
      }

      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 3)
      {
        if (v12 == 2 || v12 == 3)
        {
          goto LABEL_42;
        }
      }

      else
      {
        switch(v12)
        {
          case 4:
            goto LABEL_42;
          case 5:
            v35 = sub_21DBF563C();
            (*(*(v35 - 8) + 32))(a1, a2, v35);
            swift_storeEnumTagMultiPayload();
            goto LABEL_197;
          case 6:
LABEL_42:
            v24 = sub_21DBF563C();
            (*(*(v24 - 8) + 32))(a1, a2, v24);
            goto LABEL_164;
        }
      }

      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 <= 3)
      {
        if (v9 <= 1)
        {
          if (!v9)
          {
            goto LABEL_10;
          }

LABEL_23:
          if (v9 == 1)
          {
            v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v13 = swift_getEnumCaseMultiPayload();
            if (v13 <= 3)
            {
              if (v13 == 2 || v13 == 3)
              {
                goto LABEL_28;
              }
            }

            else if (v13 == 4 || v13 == 5 || v13 == 6)
            {
              goto LABEL_28;
            }

            goto LABEL_116;
          }

LABEL_43:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_197;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 <= 3)
      {
        if (v9 <= 1)
        {
          if (!v9)
          {
LABEL_10:
            v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v11 = swift_getEnumCaseMultiPayload();
            if (v11 <= 3)
            {
              if (v11 == 2 || v11 == 3)
              {
                goto LABEL_28;
              }
            }

            else if (v11 == 4 || v11 == 5 || v11 == 6)
            {
LABEL_28:
              v14 = sub_21DBF563C();
              (*(*(v14 - 8) + 32))(a1, a2, v14);
              swift_storeEnumTagMultiPayload();
LABEL_117:
              v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v58 = v57[5];
              v59 = &a1[v58];
              v60 = &a2[v58];
              v61 = v60[3];
              v59[2] = v60[2];
              v59[3] = v61;
              v62 = v60[1];
              *v59 = *v60;
              v59[1] = v62;
              *(v59 + 106) = *(v60 + 106);
              v63 = v60[6];
              v59[5] = v60[5];
              v59[6] = v63;
              v59[4] = v60[4];
              a1[v57[6]] = a2[v57[6]];
              a1[v57[7]] = a2[v57[7]];
              a1[v57[8]] = a2[v57[8]];
              a1[v57[9]] = a2[v57[9]];
              a1[v57[10]] = a2[v57[10]];
              *&a1[v57[11]] = *&a2[v57[11]];
              swift_storeEnumTagMultiPayload();
              goto LABEL_197;
            }

LABEL_116:
            memcpy(a1, a2, *(*(v10 - 8) + 64));
            goto LABEL_117;
          }

          goto LABEL_23;
        }

LABEL_34:
        if (v9 == 2)
        {
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(&a2[v18], 1, v19))
          {
            goto LABEL_36;
          }

          v43 = swift_getEnumCaseMultiPayload();
          if (v43 <= 3)
          {
            if (v43 == 2 || v43 == 3)
            {
              goto LABEL_83;
            }
          }

          else if (v43 == 4 || v43 == 5 || v43 == 6)
          {
            goto LABEL_83;
          }
        }

        else
        {
          *a1 = *a2;
          v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = *(v19 - 8);
          if ((*(v20 + 48))(&a2[v18], 1, v19))
          {
            goto LABEL_36;
          }

          v51 = swift_getEnumCaseMultiPayload();
          if (v51 <= 3)
          {
            if (v51 == 2 || v51 == 3)
            {
              goto LABEL_83;
            }
          }

          else if (v51 == 4 || v51 == 5 || v51 == 6)
          {
LABEL_83:
            v42 = sub_21DBF563C();
            (*(*(v42 - 8) + 32))(&a1[v18], &a2[v18], v42);
            swift_storeEnumTagMultiPayload();
LABEL_163:
            (*(v20 + 56))(&a1[v18], 0, 1, v19);
            goto LABEL_164;
          }
        }

LABEL_162:
        memcpy(&a1[v18], &a2[v18], *(v20 + 64));
        goto LABEL_163;
      }
    }

    if (v9 > 6)
    {
      if (v9 == 7)
      {
        v29 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(a2, 1, v29))
        {
          v31 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v31 - 8) + 64));
        }

        else
        {
          v44 = sub_21DBF563C();
          (*(*(v44 - 8) + 32))(a1, a2, v44);
          a1[*(v29 + 20)] = a2[*(v29 + 20)];
          (*(v30 + 56))(a1, 0, 1, v29);
        }

        v45 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v45 + 20)] = *&a2[*(v45 + 20)];
        swift_storeEnumTagMultiPayload();
        goto LABEL_197;
      }

      if (v9 == 8)
      {
        *a1 = *a2;
        v22 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v23 = sub_21DBF8D7C();
        (*(*(v23 - 8) + 32))(&a1[v22], &a2[v22], v23);
        swift_storeEnumTagMultiPayload();
LABEL_197:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_43;
    }

    if (v9 != 4)
    {
      if (v9 == 6)
      {
        v15 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2, 1, v15))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v17 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v46 = *(v15 + 20);
          v47 = sub_21DBF6C1C();
          (*(*(v47 - 8) + 32))(&a1[v46], &a2[v46], v47);
          (*(v16 + 56))(a1, 0, 1, v15);
        }

        v48 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v49 = &a1[v48];
        v50 = &a2[v48];
        *v49 = *v50;
        *(v49 + 2) = *(v50 + 2);
        goto LABEL_164;
      }

      goto LABEL_43;
    }

    *a1 = *a2;
    v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&a2[v18], 1, v19))
    {
LABEL_36:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v18], &a2[v18], *(*(v21 - 8) + 64));
LABEL_164:
      swift_storeEnumTagMultiPayload();
      goto LABEL_197;
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
      goto LABEL_83;
    }

    goto LABEL_162;
  }

  return a1;
}

void sub_21D2C7BC0()
{
  sub_21D2C7CD8();
  if (v0 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5[4] = v5;
    v1 = type metadata accessor for TTRRemindersListViewModel.SectionID(319);
    if (v2 <= 0x3F)
    {
      v5[5] = *(v1 - 8) + 64;
      v3 = type metadata accessor for TTRRemindersListViewModel.Item(319);
      if (v4 <= 0x3F)
      {
        v6 = *(v3 - 8) + 64;
        v7 = v6;
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

void sub_21D2C7CD8()
{
  if (!qword_280D14298[0])
  {
    type metadata accessor for TTRRemindersListViewModel.Item(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, qword_280D14298);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListUncommittedSection(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = &v12[(v5 + 16) & ~v5];

    return a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(a2, 1, v8);
  if (EnumCaseMultiPayload == 1)
  {
    if (v10)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
LABEL_267:
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
      *&a1[*(v207 + 48)] = *(a2 + *(v207 + 48));
      goto LABEL_272;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v59 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v60 = *(v59 - 8);
            if ((*(v60 + 48))(a2, 1, v59))
            {
              v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v61 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v83 = *(v59 + 20);
              v84 = sub_21DBF6C1C();
              v309 = *(*(v84 - 8) + 16);
              sub_21DBF8E0C();
              v309(&a1[v83], a2 + v83, v84);
              (*(v60 + 56))(a1, 0, 1, v59);
            }

            v85 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v86 = &a1[v85];
            v87 = (a2 + v85);
            v88 = v87[1];
            if (v88)
            {
              *v86 = *v87;
              *(v86 + 1) = v88;
              v89 = v87[2];
              *(v86 + 2) = v89;
              sub_21DBF8E0C();
              v90 = v89;
            }

            else
            {
              *v86 = *v87;
              *(v86 + 2) = v87[2];
            }

            goto LABEL_265;
          case 7:
            v73 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v74 = *(v73 - 8);
            if ((*(v74 + 48))(a2, 1, v73))
            {
              v75 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v75 - 8) + 64));
            }

            else
            {
              v101 = sub_21DBF563C();
              (*(*(v101 - 8) + 16))(a1, a2, v101);
              a1[*(v73 + 20)] = *(a2 + *(v73 + 20));
              (*(v74 + 56))(a1, 0, 1, v73);
            }

            v102 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&a1[*(v102 + 20)] = *(a2 + *(v102 + 20));
            goto LABEL_265;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(&a1[v16], a2 + v16, v17);
LABEL_265:
            swift_storeEnumTagMultiPayload();
            goto LABEL_266;
        }

LABEL_73:
        memcpy(a1, a2, *(v9 + 64));
LABEL_266:
        (*(v9 + 56))(a1, 0, 1, v8);
        goto LABEL_267;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        a1[8] = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v39 = a2[2];
        *(a1 + 2) = v39;
        v40 = v39;
        goto LABEL_265;
      }

      v322 = v9;
      v65 = *a2;
      *a1 = *a2;
      v48 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v66 = *(v50 + 48);
      v67 = v65;
      if (v66(a2 + v48, 1, v49))
      {
LABEL_66:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v48], a2 + v48, *(*(v68 - 8) + 64));
        v9 = v322;
        goto LABEL_265;
      }

      v99 = swift_getEnumCaseMultiPayload();
      if (v99 > 4)
      {
        v9 = v322;
        if (v99 <= 7)
        {
          if (v99 == 5 || v99 == 6)
          {
            goto LABEL_231;
          }

          goto LABEL_263;
        }

        if (v99 != 8 && v99 != 9)
        {
          goto LABEL_263;
        }

LABEL_235:
        v203 = *(a2 + v48);
        *&a1[v48] = v203;
        v204 = v203;
        swift_storeEnumTagMultiPayload();
        goto LABEL_264;
      }

      v9 = v322;
      if (v99 <= 2)
      {
        if (v99 != 1)
        {
          if (v99 == 2)
          {
            goto LABEL_231;
          }

LABEL_263:
          memcpy(&a1[v48], a2 + v48, *(v50 + 64));
          goto LABEL_264;
        }

        goto LABEL_235;
      }

LABEL_231:
      v201 = sub_21DBF563C();
      (*(*(v201 - 8) + 16))(&a1[v48], a2 + v48, v201);
      swift_storeEnumTagMultiPayload();
LABEL_264:
      (*(v50 + 56))(&a1[v48], 0, 1, v49);
      goto LABEL_265;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_73;
        }

        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = swift_getEnumCaseMultiPayload();
        v337 = v8;
        if (v22 <= 4)
        {
          if (v22 > 2)
          {
LABEL_133:
            v105 = sub_21DBF563C();
            (*(*(v105 - 8) + 16))(a1, a2, v105);
            swift_storeEnumTagMultiPayload();
            goto LABEL_186;
          }

          if (v22 != 1)
          {
            if (v22 == 2)
            {
              goto LABEL_133;
            }

            goto LABEL_185;
          }

LABEL_137:
          v107 = *a2;
          *a1 = *a2;
          v108 = v107;
          swift_storeEnumTagMultiPayload();
          goto LABEL_186;
        }

        if (v22 > 7)
        {
          if (v22 == 8 || v22 == 9)
          {
            goto LABEL_137;
          }
        }

        else if (v22 == 5 || v22 == 6)
        {
          goto LABEL_133;
        }

LABEL_185:
        memcpy(a1, a2, *(*(v21 - 8) + 64));
LABEL_186:
        v117 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v118 = v117[5];
        v119 = &a1[v118];
        v120 = a2 + v118;
        v121 = *(a2 + v118 + 8);
        if (v121)
        {
          v324 = v9;
          v331 = a1;
          *v119 = *v120;
          *(v119 + 1) = v121;
          v122 = *(v120 + 2);
          v123 = *(v120 + 3);
          v124 = *(v120 + 4);
          v125 = *(v120 + 5);
          v126 = *(v120 + 6);
          v304 = v117;
          v311 = *(v120 + 7);
          v127 = v120[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v122, v123, v124, v125, v126, v311, v127);
          *(v119 + 2) = v122;
          *(v119 + 3) = v123;
          *(v119 + 4) = v124;
          *(v119 + 5) = v125;
          *(v119 + 6) = v126;
          *(v119 + 7) = v311;
          v119[64] = v127;
          *(v119 + 65) = *(v120 + 65);
          v128 = v120[120];
          if (v128 == 255)
          {
            *(v119 + 72) = *(v120 + 72);
            *(v119 + 88) = *(v120 + 88);
            *(v119 + 104) = *(v120 + 104);
            v119[120] = v120[120];
          }

          else
          {
            v129 = *(v120 + 9);
            v130 = *(v120 + 10);
            v131 = *(v120 + 11);
            v132 = *(v120 + 12);
            v133 = *(v120 + 13);
            v312 = *(v120 + 14);
            v134 = v128 & 1;
            sub_21D0FB960(v129, v130, v131, v132, v133, v312, v128 & 1);
            *(v119 + 9) = v129;
            *(v119 + 10) = v130;
            *(v119 + 11) = v131;
            *(v119 + 12) = v132;
            *(v119 + 13) = v133;
            *(v119 + 14) = v312;
            v119[120] = v134;
          }

          a1 = v331;
          v8 = v337;
          v9 = v324;
          v119[121] = v120[121];
          v117 = v304;
          goto LABEL_192;
        }

LABEL_189:
        v135 = *(v120 + 5);
        *(v119 + 4) = *(v120 + 4);
        *(v119 + 5) = v135;
        *(v119 + 6) = *(v120 + 6);
        *(v119 + 106) = *(v120 + 106);
        v136 = *(v120 + 1);
        *v119 = *v120;
        *(v119 + 1) = v136;
        v137 = *(v120 + 3);
        *(v119 + 2) = *(v120 + 2);
        *(v119 + 3) = v137;
LABEL_192:
        a1[v117[6]] = *(a2 + v117[6]);
        a1[v117[7]] = *(a2 + v117[7]);
        a1[v117[8]] = *(a2 + v117[8]);
        a1[v117[9]] = *(a2 + v117[9]);
        a1[v117[10]] = *(a2 + v117[10]);
        v138 = v117[11];
        v139 = *(a2 + v138);
        *&a1[v138] = v139;
        v140 = v139;
        goto LABEL_265;
      }

      v43 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v44 = swift_getEnumCaseMultiPayload();
      if (v44 <= 4)
      {
        if (v44 > 2)
        {
LABEL_141:
          v111 = sub_21DBF563C();
          (*(*(v111 - 8) + 16))(a1, a2, v111);
          swift_storeEnumTagMultiPayload();
          goto LABEL_202;
        }

        if (v44 != 1)
        {
          if (v44 == 2)
          {
            goto LABEL_141;
          }

          goto LABEL_201;
        }

LABEL_145:
        v113 = *a2;
        *a1 = *a2;
        v114 = v113;
        swift_storeEnumTagMultiPayload();
        goto LABEL_202;
      }

      if (v44 > 7)
      {
        if (v44 == 8 || v44 == 9)
        {
          goto LABEL_145;
        }
      }

      else if (v44 == 5 || v44 == 6)
      {
        goto LABEL_141;
      }

LABEL_201:
      memcpy(a1, a2, *(*(v43 - 8) + 64));
LABEL_202:
      v117 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v165 = v117[5];
      v119 = &a1[v165];
      v120 = a2 + v165;
      v166 = *(a2 + v165 + 8);
      if (v166)
      {
        v315 = v117;
        v325 = v9;
        v333 = a1;
        v340 = v8;
        *v119 = *v120;
        *(v119 + 1) = v166;
        v167 = *(v120 + 2);
        v168 = *(v120 + 3);
        v169 = *(v120 + 4);
        v170 = *(v120 + 5);
        v172 = *(v120 + 6);
        v171 = *(v120 + 7);
        v306 = v120[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v167, v168, v169, v170, v172, v171, v306);
        *(v119 + 2) = v167;
        *(v119 + 3) = v168;
        *(v119 + 4) = v169;
        *(v119 + 5) = v170;
        *(v119 + 6) = v172;
        *(v119 + 7) = v171;
        v119[64] = v306;
        *(v119 + 65) = *(v120 + 65);
        v173 = v120[120];
        if (v173 == 255)
        {
          *(v119 + 72) = *(v120 + 72);
          *(v119 + 88) = *(v120 + 88);
          *(v119 + 104) = *(v120 + 104);
          v119[120] = v120[120];
        }

        else
        {
          v175 = *(v120 + 9);
          v174 = *(v120 + 10);
          v176 = *(v120 + 11);
          v177 = *(v120 + 12);
          v178 = *(v120 + 13);
          v307 = *(v120 + 14);
          v179 = v173 & 1;
          sub_21D0FB960(v175, v174, v176, v177, v178, v307, v173 & 1);
          *(v119 + 9) = v175;
          *(v119 + 10) = v174;
          *(v119 + 11) = v176;
          *(v119 + 12) = v177;
          *(v119 + 13) = v178;
          *(v119 + 14) = v307;
          v119[120] = v179;
        }

        a1 = v333;
        v8 = v340;
        v9 = v325;
        v119[121] = v120[121];
        v117 = v315;
        goto LABEL_192;
      }

      goto LABEL_189;
    }

    if (v15 == 2)
    {
      v322 = v9;
      v47 = *a2;
      *a1 = *a2;
      v48 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v52 = v47;
      if (v51(a2 + v48, 1, v49))
      {
        goto LABEL_66;
      }

      v81 = swift_getEnumCaseMultiPayload();
      if (v81 > 4)
      {
        v9 = v322;
        if (v81 <= 7)
        {
          if (v81 == 5 || v81 == 6)
          {
            goto LABEL_231;
          }

          goto LABEL_263;
        }

        if (v81 != 8 && v81 != 9)
        {
          goto LABEL_263;
        }

        goto LABEL_235;
      }

      v9 = v322;
      if (v81 > 2)
      {
        goto LABEL_231;
      }

      if (v81 == 1)
      {
        goto LABEL_235;
      }

      if (v81 != 2)
      {
        goto LABEL_263;
      }

      goto LABEL_231;
    }

    v319 = v9;
    v25 = *a2;
    *a1 = *a2;
    v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v25;
    if (v29(a2 + v26, 1, v27))
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v26], a2 + v26, *(*(v31 - 8) + 64));
      v9 = v319;
      goto LABEL_265;
    }

    v79 = swift_getEnumCaseMultiPayload();
    if (v79 > 4)
    {
      v9 = v319;
      if (v79 <= 7)
      {
        if (v79 == 5 || v79 == 6)
        {
          goto LABEL_215;
        }

        goto LABEL_257;
      }

      if (v79 != 8 && v79 != 9)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v9 = v319;
      if (v79 > 2)
      {
LABEL_215:
        v195 = sub_21DBF563C();
        (*(*(v195 - 8) + 16))(&a1[v26], a2 + v26, v195);
        swift_storeEnumTagMultiPayload();
LABEL_258:
        (*(v28 + 56))(&a1[v26], 0, 1, v27);
        goto LABEL_265;
      }

      if (v79 != 1)
      {
        if (v79 == 2)
        {
          goto LABEL_215;
        }

LABEL_257:
        memcpy(&a1[v26], a2 + v26, *(v28 + 64));
        goto LABEL_258;
      }
    }

    v197 = *(a2 + v26);
    *&a1[v26] = v197;
    v198 = v197;
    swift_storeEnumTagMultiPayload();
    goto LABEL_258;
  }

  if (v10)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_272;
  }

  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 3)
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_74;
        }

        v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v24 = swift_getEnumCaseMultiPayload();
        v338 = v8;
        v318 = v9;
        if (v24 <= 4)
        {
          if (v24 > 2)
          {
LABEL_134:
            v106 = sub_21DBF563C();
            (*(*(v106 - 8) + 16))(a1, a2, v106);
            swift_storeEnumTagMultiPayload();
            goto LABEL_194;
          }

          if (v24 != 1)
          {
            if (v24 == 2)
            {
              goto LABEL_134;
            }

            goto LABEL_193;
          }

LABEL_140:
          v109 = *a2;
          *a1 = *a2;
          v110 = v109;
          swift_storeEnumTagMultiPayload();
          goto LABEL_194;
        }

        if (v24 > 7)
        {
          if (v24 == 8 || v24 == 9)
          {
            goto LABEL_140;
          }
        }

        else if (v24 == 5 || v24 == 6)
        {
          goto LABEL_134;
        }

LABEL_193:
        memcpy(a1, a2, *(*(v23 - 8) + 64));
LABEL_194:
        v141 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v142 = v141[5];
        v143 = &a1[v142];
        v144 = a2 + v142;
        v145 = *(a2 + v142 + 8);
        if (v145)
        {
          v332 = a1;
          *v143 = *v144;
          *(v143 + 1) = v145;
          v146 = *(v144 + 2);
          v147 = *(v144 + 3);
          v148 = *(v144 + 4);
          v149 = *(v144 + 5);
          v150 = *(v144 + 6);
          v305 = v141;
          v313 = *(v144 + 7);
          v151 = v144[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v146, v147, v148, v149, v150, v313, v151);
          *(v143 + 2) = v146;
          *(v143 + 3) = v147;
          *(v143 + 4) = v148;
          *(v143 + 5) = v149;
          *(v143 + 6) = v150;
          *(v143 + 7) = v313;
          v143[64] = v151;
          *(v143 + 65) = *(v144 + 65);
          v152 = v144[120];
          if (v152 == 255)
          {
            *(v143 + 72) = *(v144 + 72);
            *(v143 + 88) = *(v144 + 88);
            *(v143 + 104) = *(v144 + 104);
            v143[120] = v144[120];
          }

          else
          {
            v153 = *(v144 + 9);
            v154 = *(v144 + 10);
            v155 = *(v144 + 11);
            v156 = *(v144 + 12);
            v157 = *(v144 + 13);
            v314 = *(v144 + 14);
            v158 = v152 & 1;
            sub_21D0FB960(v153, v154, v155, v156, v157, v314, v152 & 1);
            *(v143 + 9) = v153;
            *(v143 + 10) = v154;
            *(v143 + 11) = v155;
            *(v143 + 12) = v156;
            *(v143 + 13) = v157;
            *(v143 + 14) = v314;
            v143[120] = v158;
          }

          a1 = v332;
          v8 = v338;
          v9 = v318;
          v143[121] = v144[121];
          v141 = v305;
          goto LABEL_200;
        }

LABEL_197:
        v159 = *(v144 + 5);
        *(v143 + 4) = *(v144 + 4);
        *(v143 + 5) = v159;
        *(v143 + 6) = *(v144 + 6);
        *(v143 + 106) = *(v144 + 106);
        v160 = *(v144 + 1);
        *v143 = *v144;
        *(v143 + 1) = v160;
        v161 = *(v144 + 3);
        *(v143 + 2) = *(v144 + 2);
        *(v143 + 3) = v161;
LABEL_200:
        a1[v141[6]] = *(a2 + v141[6]);
        a1[v141[7]] = *(a2 + v141[7]);
        a1[v141[8]] = *(a2 + v141[8]);
        a1[v141[9]] = *(a2 + v141[9]);
        a1[v141[10]] = *(a2 + v141[10]);
        v162 = v141[11];
        v163 = *(a2 + v162);
        *&a1[v162] = v163;
        v164 = v163;
        goto LABEL_270;
      }

      v45 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v46 = swift_getEnumCaseMultiPayload();
      v339 = v8;
      v321 = v9;
      if (v46 <= 4)
      {
        if (v46 > 2)
        {
LABEL_142:
          v112 = sub_21DBF563C();
          (*(*(v112 - 8) + 16))(a1, a2, v112);
          swift_storeEnumTagMultiPayload();
          goto LABEL_209;
        }

        if (v46 != 1)
        {
          if (v46 == 2)
          {
            goto LABEL_142;
          }

          goto LABEL_208;
        }

LABEL_148:
        v115 = *a2;
        *a1 = *a2;
        v116 = v115;
        swift_storeEnumTagMultiPayload();
        goto LABEL_209;
      }

      if (v46 > 7)
      {
        if (v46 == 8 || v46 == 9)
        {
          goto LABEL_148;
        }
      }

      else if (v46 == 5 || v46 == 6)
      {
        goto LABEL_142;
      }

LABEL_208:
      memcpy(a1, a2, *(*(v45 - 8) + 64));
LABEL_209:
      v141 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v180 = v141[5];
      v143 = &a1[v180];
      v144 = a2 + v180;
      v181 = *(a2 + v180 + 8);
      if (v181)
      {
        v334 = a1;
        *v143 = *v144;
        *(v143 + 1) = v181;
        v182 = *(v144 + 2);
        v183 = *(v144 + 3);
        v185 = *(v144 + 4);
        v184 = *(v144 + 5);
        v186 = *(v144 + 6);
        v308 = v141;
        v316 = *(v144 + 7);
        v187 = v144[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v182, v183, v185, v184, v186, v316, v187);
        *(v143 + 2) = v182;
        *(v143 + 3) = v183;
        *(v143 + 4) = v185;
        *(v143 + 5) = v184;
        *(v143 + 6) = v186;
        *(v143 + 7) = v316;
        v143[64] = v187;
        *(v143 + 65) = *(v144 + 65);
        v188 = v144[120];
        if (v188 == 255)
        {
          *(v143 + 72) = *(v144 + 72);
          *(v143 + 88) = *(v144 + 88);
          *(v143 + 104) = *(v144 + 104);
          v143[120] = v144[120];
        }

        else
        {
          v189 = *(v144 + 9);
          v190 = *(v144 + 10);
          v191 = *(v144 + 11);
          v192 = *(v144 + 12);
          v193 = *(v144 + 13);
          v317 = *(v144 + 14);
          v194 = v188 & 1;
          sub_21D0FB960(v189, v190, v191, v192, v193, v317, v188 & 1);
          *(v143 + 9) = v189;
          *(v143 + 10) = v190;
          *(v143 + 11) = v191;
          *(v143 + 12) = v192;
          *(v143 + 13) = v193;
          *(v143 + 14) = v317;
          v143[120] = v194;
        }

        a1 = v334;
        v8 = v339;
        v9 = v321;
        v143[121] = v144[121];
        v141 = v308;
        goto LABEL_200;
      }

      goto LABEL_197;
    }

    if (v18 == 2)
    {
      v323 = v9;
      v53 = *a2;
      *a1 = *a2;
      v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v56 = *(v55 - 8);
      v57 = *(v56 + 48);
      v58 = v53;
      if (v57(a2 + v54, 1, v55))
      {
        goto LABEL_68;
      }

      v82 = swift_getEnumCaseMultiPayload();
      if (v82 > 4)
      {
        v9 = v323;
        if (v82 <= 7)
        {
          if (v82 == 5 || v82 == 6)
          {
            goto LABEL_232;
          }

          goto LABEL_268;
        }

        if (v82 != 8 && v82 != 9)
        {
          goto LABEL_268;
        }

        goto LABEL_238;
      }

      v9 = v323;
      if (v82 > 2)
      {
        goto LABEL_232;
      }

      if (v82 == 1)
      {
        goto LABEL_238;
      }

      if (v82 != 2)
      {
        goto LABEL_268;
      }

      goto LABEL_232;
    }

    v320 = v9;
    v32 = *a2;
    *a1 = *a2;
    v33 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v34 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v37 = v32;
    if (v36(a2 + v33, 1, v34))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v33], a2 + v33, *(*(v38 - 8) + 64));
      v9 = v320;
      goto LABEL_270;
    }

    v80 = swift_getEnumCaseMultiPayload();
    if (v80 > 4)
    {
      v9 = v320;
      if (v80 <= 7)
      {
        if (v80 == 5 || v80 == 6)
        {
          goto LABEL_216;
        }

        goto LABEL_259;
      }

      if (v80 != 8 && v80 != 9)
      {
        goto LABEL_259;
      }
    }

    else
    {
      v9 = v320;
      if (v80 > 2)
      {
LABEL_216:
        v196 = sub_21DBF563C();
        (*(*(v196 - 8) + 16))(&a1[v33], a2 + v33, v196);
        swift_storeEnumTagMultiPayload();
LABEL_260:
        (*(v35 + 56))(&a1[v33], 0, 1, v34);
        goto LABEL_270;
      }

      if (v80 != 1)
      {
        if (v80 == 2)
        {
          goto LABEL_216;
        }

LABEL_259:
        memcpy(&a1[v33], a2 + v33, *(v35 + 64));
        goto LABEL_260;
      }
    }

    v199 = *(a2 + v33);
    *&a1[v33] = v199;
    v200 = v199;
    swift_storeEnumTagMultiPayload();
    goto LABEL_260;
  }

  if (v18 <= 5)
  {
    if (v18 != 4)
    {
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v41 = a2[2];
      *(a1 + 2) = v41;
      v42 = v41;
      goto LABEL_270;
    }

    v323 = v9;
    v69 = *a2;
    *a1 = *a2;
    v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v56 = *(v55 - 8);
    v70 = *(v56 + 48);
    v71 = v69;
    if (v70(a2 + v54, 1, v55))
    {
LABEL_68:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v54], a2 + v54, *(*(v72 - 8) + 64));
      v9 = v323;
      goto LABEL_270;
    }

    v100 = swift_getEnumCaseMultiPayload();
    if (v100 > 4)
    {
      v9 = v323;
      if (v100 <= 7)
      {
        if (v100 == 5 || v100 == 6)
        {
          goto LABEL_232;
        }

        goto LABEL_268;
      }

      if (v100 != 8 && v100 != 9)
      {
        goto LABEL_268;
      }

LABEL_238:
      v205 = *(a2 + v54);
      *&a1[v54] = v205;
      v206 = v205;
      swift_storeEnumTagMultiPayload();
      goto LABEL_269;
    }

    v9 = v323;
    if (v100 <= 2)
    {
      if (v100 != 1)
      {
        if (v100 == 2)
        {
          goto LABEL_232;
        }

LABEL_268:
        memcpy(&a1[v54], a2 + v54, *(v56 + 64));
        goto LABEL_269;
      }

      goto LABEL_238;
    }

LABEL_232:
    v202 = sub_21DBF563C();
    (*(*(v202 - 8) + 16))(&a1[v54], a2 + v54, v202);
    swift_storeEnumTagMultiPayload();
LABEL_269:
    (*(v56 + 56))(&a1[v54], 0, 1, v55);
    goto LABEL_270;
  }

  switch(v18)
  {
    case 6:
      v62 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v63 = *(v62 - 8);
      if ((*(v63 + 48))(a2, 1, v62))
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v64 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v91 = *(v62 + 20);
        v92 = sub_21DBF6C1C();
        v310 = *(*(v92 - 8) + 16);
        sub_21DBF8E0C();
        v310(&a1[v91], a2 + v91, v92);
        (*(v63 + 56))(a1, 0, 1, v62);
      }

      v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v94 = &a1[v93];
      v95 = (a2 + v93);
      v96 = v95[1];
      if (v96)
      {
        *v94 = *v95;
        *(v94 + 1) = v96;
        v97 = v95[2];
        *(v94 + 2) = v97;
        sub_21DBF8E0C();
        v98 = v97;
      }

      else
      {
        *v94 = *v95;
        *(v94 + 2) = v95[2];
      }

      goto LABEL_270;
    case 7:
      v76 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v77 = *(v76 - 8);
      if ((*(v77 + 48))(a2, 1, v76))
      {
        v78 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v78 - 8) + 64));
      }

      else
      {
        v103 = sub_21DBF563C();
        (*(*(v103 - 8) + 16))(a1, a2, v103);
        a1[*(v76 + 20)] = *(a2 + *(v76 + 20));
        (*(v77 + 56))(a1, 0, 1, v76);
      }

      v104 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *&a1[*(v104 + 20)] = *(a2 + *(v104 + 20));
      goto LABEL_270;
    case 8:
      *a1 = *a2;
      v19 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v20 = sub_21DBF8D7C();
      (*(*(v20 - 8) + 16))(&a1[v19], a2 + v19, v20);
LABEL_270:
      swift_storeEnumTagMultiPayload();
      goto LABEL_271;
  }

LABEL_74:
  memcpy(a1, a2, *(v9 + 64));
LABEL_271:
  (*(v9 + 56))(a1, 0, 1, v8);
LABEL_272:
  swift_storeEnumTagMultiPayload();
  v208 = *(a3 + 20);
  v209 = &a1[v208];
  v210 = (a2 + v208);
  v211 = swift_getEnumCaseMultiPayload();
  if (v211 <= 3)
  {
    if (v211 <= 1)
    {
      if (v211)
      {
        if (v211 != 1)
        {
          goto LABEL_304;
        }

        v214 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v215 = swift_getEnumCaseMultiPayload();
        v335 = a1;
        if (v215 <= 4)
        {
          if (v215 > 2)
          {
LABEL_334:
            v252 = sub_21DBF563C();
            (*(*(v252 - 8) + 16))(v209, v210, v252);
            swift_storeEnumTagMultiPayload();
            goto LABEL_361;
          }

          if (v215 != 1)
          {
            if (v215 == 2)
            {
              goto LABEL_334;
            }

            goto LABEL_360;
          }

LABEL_337:
          v253 = *v210;
          *v209 = *v210;
          v254 = v253;
          swift_storeEnumTagMultiPayload();
          goto LABEL_361;
        }

        if (v215 > 7)
        {
          if (v215 == 8 || v215 == 9)
          {
            goto LABEL_337;
          }
        }

        else if (v215 == 5 || v215 == 6)
        {
          goto LABEL_334;
        }

LABEL_360:
        memcpy(v209, v210, *(*(v214 - 8) + 64));
LABEL_361:
        v258 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v259 = v258[5];
        v260 = v209 + v259;
        v261 = v210 + v259;
        v262 = *(v210 + v259 + 8);
        if (v262)
        {
          v326 = v210;
          v329 = v209;
          *v260 = *v261;
          *(v260 + 1) = v262;
          v263 = *(v261 + 2);
          v264 = *(v261 + 3);
          v265 = *(v261 + 4);
          v266 = *(v261 + 5);
          v267 = *(v261 + 6);
          v268 = *(v261 + 7);
          v269 = v261[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v263, v264, v265, v266, v267, v268, v269);
          *(v260 + 2) = v263;
          *(v260 + 3) = v264;
          *(v260 + 4) = v265;
          *(v260 + 5) = v266;
          *(v260 + 6) = v267;
          *(v260 + 7) = v268;
          v260[64] = v269;
          *(v260 + 65) = *(v261 + 65);
          v270 = v261[120];
          if (v270 == 255)
          {
            *(v260 + 72) = *(v261 + 72);
            *(v260 + 88) = *(v261 + 88);
            *(v260 + 104) = *(v261 + 104);
            v260[120] = v261[120];
          }

          else
          {
            v271 = *(v261 + 9);
            v272 = *(v261 + 10);
            v273 = *(v261 + 11);
            v274 = *(v261 + 12);
            v275 = *(v261 + 13);
            v276 = *(v261 + 14);
            v277 = v270 & 1;
            sub_21D0FB960(v271, v272, v273, v274, v275, v276, v270 & 1);
            *(v260 + 9) = v271;
            *(v260 + 10) = v272;
            *(v260 + 11) = v273;
            *(v260 + 12) = v274;
            *(v260 + 13) = v275;
            *(v260 + 14) = v276;
            v260[120] = v277;
          }

          a1 = v335;
          v260[121] = v261[121];
          v210 = v326;
          v209 = v329;
          goto LABEL_367;
        }

LABEL_364:
        v278 = *(v261 + 5);
        *(v260 + 4) = *(v261 + 4);
        *(v260 + 5) = v278;
        *(v260 + 6) = *(v261 + 6);
        *(v260 + 106) = *(v261 + 106);
        v279 = *(v261 + 1);
        *v260 = *v261;
        *(v260 + 1) = v279;
        v280 = *(v261 + 3);
        *(v260 + 2) = *(v261 + 2);
        *(v260 + 3) = v280;
LABEL_367:
        *(v209 + v258[6]) = *(v210 + v258[6]);
        *(v209 + v258[7]) = *(v210 + v258[7]);
        *(v209 + v258[8]) = *(v210 + v258[8]);
        *(v209 + v258[9]) = *(v210 + v258[9]);
        *(v209 + v258[10]) = *(v210 + v258[10]);
        v281 = v258[11];
        v282 = *(v210 + v281);
        *(v209 + v281) = v282;
        v283 = v282;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v224 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v225 = swift_getEnumCaseMultiPayload();
      v336 = a1;
      if (v225 <= 4)
      {
        if (v225 > 2)
        {
LABEL_338:
          v255 = sub_21DBF563C();
          (*(*(v255 - 8) + 16))(v209, v210, v255);
          swift_storeEnumTagMultiPayload();
          goto LABEL_369;
        }

        if (v225 != 1)
        {
          if (v225 == 2)
          {
            goto LABEL_338;
          }

          goto LABEL_368;
        }

LABEL_341:
        v256 = *v210;
        *v209 = *v210;
        v257 = v256;
        swift_storeEnumTagMultiPayload();
        goto LABEL_369;
      }

      if (v225 > 7)
      {
        if (v225 == 8 || v225 == 9)
        {
          goto LABEL_341;
        }
      }

      else if (v225 == 5 || v225 == 6)
      {
        goto LABEL_338;
      }

LABEL_368:
      memcpy(v209, v210, *(*(v224 - 8) + 64));
LABEL_369:
      v258 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v284 = v258[5];
      v260 = v209 + v284;
      v261 = v210 + v284;
      v285 = *(v210 + v284 + 8);
      if (v285)
      {
        v327 = v210;
        v330 = v209;
        *v260 = *v261;
        *(v260 + 1) = v285;
        v286 = *(v261 + 2);
        v287 = *(v261 + 3);
        v288 = *(v261 + 4);
        v289 = *(v261 + 5);
        v291 = *(v261 + 6);
        v290 = *(v261 + 7);
        v292 = v261[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v286, v287, v288, v289, v291, v290, v292);
        *(v260 + 2) = v286;
        *(v260 + 3) = v287;
        *(v260 + 4) = v288;
        *(v260 + 5) = v289;
        *(v260 + 6) = v291;
        *(v260 + 7) = v290;
        v260[64] = v292;
        *(v260 + 65) = *(v261 + 65);
        v293 = v261[120];
        if (v293 == 255)
        {
          *(v260 + 72) = *(v261 + 72);
          *(v260 + 88) = *(v261 + 88);
          *(v260 + 104) = *(v261 + 104);
          v260[120] = v261[120];
        }

        else
        {
          v294 = *(v261 + 9);
          v295 = *(v261 + 10);
          v296 = *(v261 + 11);
          v297 = *(v261 + 12);
          v298 = *(v261 + 13);
          v299 = *(v261 + 14);
          v300 = v293 & 1;
          sub_21D0FB960(v294, v295, v296, v297, v298, v299, v293 & 1);
          *(v260 + 9) = v294;
          *(v260 + 10) = v295;
          *(v260 + 11) = v296;
          *(v260 + 12) = v297;
          *(v260 + 13) = v298;
          *(v260 + 14) = v299;
          v260[120] = v300;
        }

        a1 = v336;
        v260[121] = v261[121];
        v210 = v327;
        v209 = v330;
        goto LABEL_367;
      }

      goto LABEL_364;
    }

    if (v211 == 2)
    {
      v226 = *v210;
      *v209 = *v210;
      v217 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v218 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v219 = *(v218 - 8);
      v227 = *(v219 + 48);
      v228 = v226;
      if (v227(v210 + v217, 1, v218))
      {
        goto LABEL_301;
      }

      v240 = swift_getEnumCaseMultiPayload();
      if (v240 > 4)
      {
        if (v240 <= 7)
        {
          if (v240 == 5 || v240 == 6)
          {
            goto LABEL_375;
          }

          goto LABEL_396;
        }

        if (v240 != 8 && v240 != 9)
        {
          goto LABEL_396;
        }

        goto LABEL_378;
      }

      if (v240 > 2)
      {
        goto LABEL_375;
      }

      if (v240 == 1)
      {
        goto LABEL_378;
      }

      if (v240 != 2)
      {
        goto LABEL_396;
      }
    }

    else
    {
      v216 = *v210;
      *v209 = *v210;
      v217 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v218 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v219 = *(v218 - 8);
      v220 = *(v219 + 48);
      v221 = v216;
      if (v220(v210 + v217, 1, v218))
      {
LABEL_301:
        v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v209 + v217, v210 + v217, *(*(v235 - 8) + 64));
LABEL_398:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v239 = swift_getEnumCaseMultiPayload();
      if (v239 > 4)
      {
        if (v239 <= 7)
        {
          if (v239 == 5 || v239 == 6)
          {
            goto LABEL_375;
          }

          goto LABEL_396;
        }

        if (v239 != 8 && v239 != 9)
        {
          goto LABEL_396;
        }

        goto LABEL_378;
      }

      if (v239 <= 2)
      {
        if (v239 == 1)
        {
          goto LABEL_378;
        }

        if (v239 != 2)
        {
          goto LABEL_396;
        }
      }
    }

LABEL_375:
    v301 = sub_21DBF563C();
    (*(*(v301 - 8) + 16))(v209 + v217, v210 + v217, v301);
    swift_storeEnumTagMultiPayload();
LABEL_397:
    (*(v219 + 56))(v209 + v217, 0, 1, v218);
    goto LABEL_398;
  }

  if (v211 <= 5)
  {
    if (v211 != 4)
    {
      *v209 = *v210;
      *(v209 + 8) = *(v210 + 8);
      *(v209 + 9) = *(v210 + 9);
      v222 = v210[2];
      v209[2] = v222;
      v223 = v222;
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v232 = *v210;
    *v209 = *v210;
    v217 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v218 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v219 = *(v218 - 8);
    v233 = *(v219 + 48);
    v234 = v232;
    if (v233(v210 + v217, 1, v218))
    {
      goto LABEL_301;
    }

    v249 = swift_getEnumCaseMultiPayload();
    if (v249 > 4)
    {
      if (v249 <= 7)
      {
        if (v249 == 5 || v249 == 6)
        {
          goto LABEL_375;
        }

        goto LABEL_396;
      }

      if (v249 != 8 && v249 != 9)
      {
        goto LABEL_396;
      }
    }

    else
    {
      if (v249 > 2)
      {
        goto LABEL_375;
      }

      if (v249 != 1)
      {
        if (v249 == 2)
        {
          goto LABEL_375;
        }

LABEL_396:
        memcpy(v209 + v217, v210 + v217, *(v219 + 64));
        goto LABEL_397;
      }
    }

LABEL_378:
    v302 = *(v210 + v217);
    *(v209 + v217) = v302;
    v303 = v302;
    swift_storeEnumTagMultiPayload();
    goto LABEL_397;
  }

  if (v211 == 6)
  {
    v229 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v230 = *(v229 - 8);
    if ((*(v230 + 48))(v210, 1, v229))
    {
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v209, v210, *(*(v231 - 8) + 64));
    }

    else
    {
      *v209 = *v210;
      v241 = *(v229 + 20);
      v242 = sub_21DBF6C1C();
      v328 = *(*(v242 - 8) + 16);
      sub_21DBF8E0C();
      v328(v209 + v241, v210 + v241, v242);
      (*(v230 + 56))(v209, 0, 1, v229);
    }

    v243 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v244 = (v209 + v243);
    v245 = (v210 + v243);
    v246 = v245[1];
    if (v246)
    {
      *v244 = *v245;
      v244[1] = v246;
      v247 = v245[2];
      v244[2] = v247;
      sub_21DBF8E0C();
      v248 = v247;
    }

    else
    {
      *v244 = *v245;
      v244[2] = v245[2];
    }

    goto LABEL_398;
  }

  if (v211 != 7)
  {
    if (v211 == 8)
    {
      *v209 = *v210;
      v212 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v213 = sub_21DBF8D7C();
      (*(*(v213 - 8) + 16))(v209 + v212, v210 + v212, v213);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

LABEL_304:
    memcpy(v209, v210, *(v9 + 64));
    return a1;
  }

  v236 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v237 = *(v236 - 8);
  if ((*(v237 + 48))(v210, 1, v236))
  {
    v238 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v209, v210, *(*(v238 - 8) + 64));
  }

  else
  {
    v250 = sub_21DBF563C();
    (*(*(v250 - 8) + 16))(v209, v210, v250);
    *(v209 + *(v236 + 20)) = *(v210 + *(v236 + 20));
    (*(v237 + 56))(v209, 0, 1, v236);
  }

  v251 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(v209 + *(v251 + 20)) = *(v210 + *(v251 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}