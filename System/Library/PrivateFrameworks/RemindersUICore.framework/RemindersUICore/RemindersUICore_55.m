BOOL _s15RemindersUICore42TTRIRemindersListItemIntermediateViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EFC8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if ((_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = 0;
  v19 = v14[6];
  v20 = a1 + v19;
  v21 = *(a1 + v19);
  v22 = (a2 + v19);
  if (v21 == *v22 && ((*(v20 + 1) ^ v22[1]) & 1) == 0)
  {
    if (*(a1 + v14[7]) != *(a2 + v14[7]) || *(a1 + v14[8]) != *(a2 + v14[8]) || *(a1 + v14[9]) != *(a2 + v14[9]) || *(a1 + v14[10]) != *(a2 + v14[10]) || *(a1 + v14[11]) != *(a2 + v14[11]) || *(a1 + v14[12]) != *(a2 + v14[12]))
    {
      return 0;
    }

    v23 = v14[13];
    v24 = *(v11 + 48);
    sub_21D60F1D0(a1 + v23, v13);
    sub_21D60F1D0(a2 + v23, &v13[v24]);
    v25 = *(v5 + 48);
    if (v25(v13, 1, v4) == 1)
    {
      if (v25(&v13[v24], 1, v4) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE5A0C0);
        return 1;
      }

      goto LABEL_19;
    }

    sub_21D60F1D0(v13, v10);
    if (v25(&v13[v24], 1, v4) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5A0C8);
LABEL_19:
      sub_21D0CF7E0(v13, &qword_27CE5EFC8);
      return 0;
    }

    sub_21D0D523C(&v13[v24], v7, &qword_27CE5A0C8);
    v27 = _s15RemindersUICore25TTRRemindersListViewModelC4ItemO13contentsEqualySbAE_AEtFZ_0(v10, v7);
    sub_21D0CF7E0(v7, &qword_27CE5A0C8);
    sub_21D0CF7E0(v10, &qword_27CE5A0C8);
    sub_21D0CF7E0(v13, &qword_27CE5A0C0);
    return (v27 & 1) != 0;
  }

  return v18;
}

unint64_t sub_21D60FBDC()
{
  result = qword_27CE5EFC0;
  if (!qword_27CE5EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5EFC0);
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRIRemindersListItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        goto LABEL_46;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
LABEL_46:
      v28 = a3[6];
      *(a1 + a3[5]) = *(a2 + a3[5]);
      *(a1 + v28) = *(a2 + v28);
      v29 = a3[8];
      *(a1 + a3[7]) = *(a2 + a3[7]);
      *(a1 + v29) = *(a2 + v29);
      v30 = a3[10];
      *(a1 + a3[9]) = *(a2 + a3[9]);
      *(a1 + v30) = *(a2 + v30);
      v31 = a3[12];
      *(a1 + a3[11]) = *(a2 + a3[11]);
      v32 = a3[13];
      v33 = (a1 + v32);
      v34 = (a2 + v32);
      *(a1 + v31) = *(a2 + v31);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v34, 1, v35))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
        memcpy(v33, v34, *(*(v37 - 8) + 64));
        return a1;
      }

      v38 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v39 = swift_getEnumCaseMultiPayload();
      if (v39 > 3)
      {
        if (v39 > 5)
        {
          switch(v39)
          {
            case 6:
              v58 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v59 = *(v58 - 8);
              if ((*(v59 + 48))(v34, 1, v58))
              {
                v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(v33, v34, *(*(v60 - 8) + 64));
              }

              else
              {
                *v33 = *v34;
                v143 = v36;
                v69 = *(v58 + 20);
                v70 = sub_21DBF6C1C();
                v135 = *(*(v70 - 8) + 16);
                sub_21DBF8E0C();
                v71 = v33 + v69;
                v72 = v34 + v69;
                v36 = v143;
                v135(v71, v72, v70);
                (*(v59 + 56))(v33, 0, 1, v58);
              }

              v73 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v74 = (v33 + v73);
              v75 = (v34 + v73);
              v76 = v75[1];
              if (v76)
              {
                *v74 = *v75;
                v74[1] = v76;
                v77 = v75[2];
                v74[2] = v77;
                sub_21DBF8E0C();
                v78 = v77;
              }

              else
              {
                *v74 = *v75;
                v74[2] = v75[2];
              }

              goto LABEL_174;
            case 7:
              v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v65 = *(v64 - 8);
              if ((*(v65 + 48))(v34, 1, v64))
              {
                v66 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v33, v34, *(*(v66 - 8) + 64));
              }

              else
              {
                v80 = sub_21DBF563C();
                (*(*(v80 - 8) + 16))(v33, v34, v80);
                *(v33 + *(v64 + 20)) = *(v34 + *(v64 + 20));
                (*(v65 + 56))(v33, 0, 1, v64);
              }

              v81 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v33 + *(v81 + 20)) = *(v34 + *(v81 + 20));
              goto LABEL_174;
            case 8:
              *v33 = *v34;
              v40 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v41 = sub_21DBF8D7C();
              (*(*(v41 - 8) + 16))(v33 + v40, v34 + v40, v41);
LABEL_174:
              swift_storeEnumTagMultiPayload();
              goto LABEL_175;
          }

LABEL_80:
          memcpy(v33, v34, *(*(v38 - 8) + 64));
LABEL_175:
          (*(v36 + 56))(v33, 0, 1, v35);
          return a1;
        }

        if (v39 != 4)
        {
          *v33 = *v34;
          *(v33 + 8) = *(v34 + 8);
          *(v33 + 9) = *(v34 + 9);
          v50 = v34[2];
          v33[2] = v50;
          v51 = v50;
          goto LABEL_174;
        }

        v141 = v36;
        v61 = *v34;
        *v33 = *v34;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        v62 = *(v47 + 48);
        v63 = v61;
        if (v62(v34 + v45, 1, v46))
        {
LABEL_73:
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v33 + v45, v34 + v45, *(*(v57 - 8) + 64));
          v36 = v141;
          goto LABEL_174;
        }

        v79 = swift_getEnumCaseMultiPayload();
        if (v79 > 4)
        {
          if (v79 <= 7)
          {
            if (v79 == 5 || v79 == 6)
            {
              goto LABEL_159;
            }

            goto LABEL_172;
          }

          if (v79 != 8 && v79 != 9)
          {
            goto LABEL_172;
          }

LABEL_158:
          v123 = *(v34 + v45);
          *(v33 + v45) = v123;
          v124 = v123;
          swift_storeEnumTagMultiPayload();
LABEL_173:
          (*(v47 + 56))(v33 + v45, 0, 1, v46);
          goto LABEL_174;
        }

        if (v79 <= 2)
        {
          if (v79 != 1)
          {
            if (v79 == 2)
            {
              goto LABEL_159;
            }

LABEL_172:
            memcpy(v33 + v45, v34 + v45, *(v47 + 64));
            goto LABEL_173;
          }

          goto LABEL_158;
        }

LABEL_159:
        v125 = sub_21DBF563C();
        (*(*(v125 - 8) + 16))(v33 + v45, v34 + v45, v125);
        swift_storeEnumTagMultiPayload();
        goto LABEL_173;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v141 = v36;
          v54 = *v34;
          *v33 = *v34;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          v55 = *(v47 + 48);
          v56 = v54;
          if (v55(v34 + v45, 1, v46))
          {
            goto LABEL_73;
          }

          v68 = swift_getEnumCaseMultiPayload();
          if (v68 > 4)
          {
            if (v68 <= 7)
            {
              if (v68 == 5 || v68 == 6)
              {
                goto LABEL_159;
              }

              goto LABEL_172;
            }

            if (v68 != 8 && v68 != 9)
            {
              goto LABEL_172;
            }

            goto LABEL_158;
          }

          if (v68 > 2)
          {
            goto LABEL_159;
          }

          if (v68 == 1)
          {
            goto LABEL_158;
          }

          if (v68 != 2)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v141 = v36;
          v44 = *v34;
          *v33 = *v34;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          v48 = *(v47 + 48);
          v49 = v44;
          if (v48(v34 + v45, 1, v46))
          {
            goto LABEL_73;
          }

          v67 = swift_getEnumCaseMultiPayload();
          if (v67 > 4)
          {
            if (v67 <= 7)
            {
              if (v67 == 5 || v67 == 6)
              {
                goto LABEL_159;
              }

              goto LABEL_172;
            }

            if (v67 != 8 && v67 != 9)
            {
              goto LABEL_172;
            }

            goto LABEL_158;
          }

          if (v67 > 2)
          {
            goto LABEL_159;
          }

          if (v67 == 1)
          {
            goto LABEL_158;
          }

          if (v67 != 2)
          {
            goto LABEL_172;
          }
        }

        goto LABEL_159;
      }

      if (v39)
      {
        if (v39 != 1)
        {
          goto LABEL_80;
        }

        v42 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v43 = swift_getEnumCaseMultiPayload();
        v140 = v36;
        v138 = v35;
        if (v43 <= 4)
        {
          if (v43 > 2)
          {
LABEL_110:
            v82 = sub_21DBF563C();
            (*(*(v82 - 8) + 16))(v33, v34, v82);
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          if (v43 != 1)
          {
            if (v43 == 2)
            {
              goto LABEL_110;
            }

            goto LABEL_136;
          }

LABEL_113:
          v83 = *v34;
          *v33 = *v34;
          v84 = v83;
          swift_storeEnumTagMultiPayload();
          goto LABEL_137;
        }

        if (v43 > 7)
        {
          if (v43 == 8 || v43 == 9)
          {
            goto LABEL_113;
          }
        }

        else if (v43 == 5 || v43 == 6)
        {
          goto LABEL_110;
        }

LABEL_136:
        memcpy(v33, v34, *(*(v42 - 8) + 64));
LABEL_137:
        v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v89 = v88[5];
        v90 = v33 + v89;
        v91 = v34 + v89;
        v92 = *(v34 + v89 + 8);
        if (v92)
        {
          v136 = v33;
          *v90 = *v91;
          *(v90 + 1) = v92;
          v93 = *(v91 + 2);
          v94 = *(v91 + 3);
          v96 = *(v91 + 4);
          v95 = *(v91 + 5);
          v97 = *(v91 + 6);
          v127 = *(v91 + 7);
          v131 = v91[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v93, v94, v96, v95, v97, v127, v131);
          *(v90 + 2) = v93;
          *(v90 + 3) = v94;
          *(v90 + 4) = v96;
          *(v90 + 5) = v95;
          *(v90 + 6) = v97;
          *(v90 + 7) = v127;
          v90[64] = v131;
          *(v90 + 65) = *(v91 + 65);
          v98 = v91[120];
          if (v98 == 255)
          {
            *(v90 + 72) = *(v91 + 72);
            *(v90 + 88) = *(v91 + 88);
            *(v90 + 104) = *(v91 + 104);
            v90[120] = v91[120];
          }

          else
          {
            v99 = *(v91 + 9);
            v100 = *(v91 + 10);
            v101 = *(v91 + 12);
            v102 = *(v91 + 13);
            v128 = *(v91 + 14);
            v132 = *(v91 + 11);
            v103 = v98 & 1;
            sub_21D0FB960(v99, v100, v132, v101, v102, v128, v98 & 1);
            *(v90 + 9) = v99;
            *(v90 + 10) = v100;
            *(v90 + 11) = v132;
            *(v90 + 12) = v101;
            *(v90 + 13) = v102;
            *(v90 + 14) = v128;
            v90[120] = v103;
          }

          v35 = v138;
          v36 = v140;
          v90[121] = v91[121];
          v33 = v136;
          goto LABEL_143;
        }

LABEL_140:
        v104 = *(v91 + 5);
        *(v90 + 4) = *(v91 + 4);
        *(v90 + 5) = v104;
        *(v90 + 6) = *(v91 + 6);
        *(v90 + 106) = *(v91 + 106);
        v105 = *(v91 + 1);
        *v90 = *v91;
        *(v90 + 1) = v105;
        v106 = *(v91 + 3);
        *(v90 + 2) = *(v91 + 2);
        *(v90 + 3) = v106;
LABEL_143:
        *(v33 + v88[6]) = *(v34 + v88[6]);
        *(v33 + v88[7]) = *(v34 + v88[7]);
        *(v33 + v88[8]) = *(v34 + v88[8]);
        *(v33 + v88[9]) = *(v34 + v88[9]);
        *(v33 + v88[10]) = *(v34 + v88[10]);
        v107 = v88[11];
        v108 = *(v34 + v107);
        *(v33 + v107) = v108;
        v109 = v108;
        goto LABEL_174;
      }

      v52 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v53 = swift_getEnumCaseMultiPayload();
      v142 = v36;
      v139 = v35;
      if (v53 <= 4)
      {
        if (v53 > 2)
        {
LABEL_114:
          v85 = sub_21DBF563C();
          (*(*(v85 - 8) + 16))(v33, v34, v85);
          swift_storeEnumTagMultiPayload();
          goto LABEL_145;
        }

        if (v53 != 1)
        {
          if (v53 == 2)
          {
            goto LABEL_114;
          }

          goto LABEL_144;
        }

LABEL_117:
        v86 = *v34;
        *v33 = *v34;
        v87 = v86;
        swift_storeEnumTagMultiPayload();
        goto LABEL_145;
      }

      if (v53 > 7)
      {
        if (v53 == 8 || v53 == 9)
        {
          goto LABEL_117;
        }
      }

      else if (v53 == 5 || v53 == 6)
      {
        goto LABEL_114;
      }

LABEL_144:
      memcpy(v33, v34, *(*(v52 - 8) + 64));
LABEL_145:
      v88 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v110 = v88[5];
      v90 = v33 + v110;
      v91 = v34 + v110;
      v111 = *(v34 + v110 + 8);
      if (v111)
      {
        v137 = v33;
        *v90 = *v91;
        *(v90 + 1) = v111;
        v112 = *(v91 + 2);
        v113 = *(v91 + 3);
        v115 = *(v91 + 4);
        v114 = *(v91 + 5);
        v116 = *(v91 + 6);
        v129 = *(v91 + 7);
        v133 = v91[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v112, v113, v115, v114, v116, v129, v133);
        *(v90 + 2) = v112;
        *(v90 + 3) = v113;
        *(v90 + 4) = v115;
        *(v90 + 5) = v114;
        *(v90 + 6) = v116;
        *(v90 + 7) = v129;
        v90[64] = v133;
        *(v90 + 65) = *(v91 + 65);
        v117 = v91[120];
        if (v117 == 255)
        {
          *(v90 + 72) = *(v91 + 72);
          *(v90 + 88) = *(v91 + 88);
          *(v90 + 104) = *(v91 + 104);
          v90[120] = v91[120];
        }

        else
        {
          v118 = *(v91 + 9);
          v119 = *(v91 + 10);
          v120 = *(v91 + 12);
          v121 = *(v91 + 13);
          v130 = *(v91 + 14);
          v134 = *(v91 + 11);
          v122 = v117 & 1;
          sub_21D0FB960(v118, v119, v134, v120, v121, v130, v117 & 1);
          *(v90 + 9) = v118;
          *(v90 + 10) = v119;
          *(v90 + 11) = v134;
          *(v90 + 12) = v120;
          *(v90 + 13) = v121;
          *(v90 + 14) = v130;
          v90[120] = v122;
        }

        v35 = v139;
        v36 = v142;
        v90[121] = v91[121];
        v33 = v137;
        goto LABEL_143;
      }

      goto LABEL_140;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRIRemindersListItemIntermediateViewModel(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v7 - 8) + 48))(a1 + v6, 1, v7))
    {
      goto LABEL_23;
    }

    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 4)
    {
      if (v8 <= 7)
      {
        if (v8 != 5 && v8 != 6)
        {
          goto LABEL_23;
        }

LABEL_61:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 8))(a1 + v6, v29);
        goto LABEL_23;
      }

      if (v8 != 8 && v8 != 9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v8 > 2)
      {
        goto LABEL_61;
      }

      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        goto LABEL_61;
      }
    }

    v10 = *(a1 + v6);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_23;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v5 = swift_getEnumCaseMultiPayload();
  if (v5 <= 4)
  {
    if (v5 > 2)
    {
      goto LABEL_18;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_23;
      }

LABEL_18:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 8))(a1, v9);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v5 > 7)
  {
    if (v5 != 8 && v5 != 9)
    {
      goto LABEL_23;
    }

LABEL_21:
    v10 = *a1;
LABEL_22:

    goto LABEL_23;
  }

  if (v5 == 5 || v5 == 6)
  {
    goto LABEL_18;
  }

LABEL_23:
  v11 = a1 + *(a2 + 52);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    return;
  }

  type metadata accessor for TTRRemindersListViewModel.Item(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 3)
  {
    if (v13 > 1)
    {
      goto LABEL_41;
    }

    if (v13 > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 4)
    {
      if (v18 <= 7)
      {
        if (v18 != 5 && v18 != 6)
        {
          goto LABEL_73;
        }

        goto LABEL_69;
      }

      if (v18 != 8 && v18 != 9)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v18 > 2)
      {
        goto LABEL_69;
      }

      if (v18 != 1)
      {
        if (v18 != 2)
        {
LABEL_73:
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v32 = &v11[*(v31 + 20)];
          if (*(v32 + 1))
          {

            sub_21D179EF0(*(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5), *(v32 + 6), *(v32 + 7), v32[64]);
            v33 = v32[120];
            if (v33 != 255)
            {
              sub_21D1078C0(*(v32 + 9), *(v32 + 10), *(v32 + 11), *(v32 + 12), *(v32 + 13), *(v32 + 14), v33 & 1);
            }
          }

          v19 = *&v11[*(v31 + 44)];
          goto LABEL_77;
        }

LABEL_69:
        v30 = sub_21DBF563C();
        (*(*(v30 - 8) + 8))(v11, v30);
        goto LABEL_73;
      }
    }

    goto LABEL_73;
  }

  if (v13 <= 5)
  {
    if (v13 != 4)
    {
      v19 = *(v11 + 2);
LABEL_77:

      return;
    }

LABEL_41:

    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v21 - 8) + 48))(&v11[v20], 1, v21))
    {
      return;
    }

    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 != 5 && v22 != 6)
        {
          return;
        }

        goto LABEL_80;
      }

      if (v22 != 8 && v22 != 9)
      {
        return;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_80:
        v15 = sub_21DBF563C();
        v16 = *(*(v15 - 8) + 8);
        v17 = &v11[v20];
LABEL_81:

        v16(v17, v15);
        return;
      }

      if (v22 != 1)
      {
        if (v22 != 2)
        {
          return;
        }

        goto LABEL_80;
      }
    }

    v19 = *&v11[v20];
    goto LABEL_77;
  }

  if (v13 != 6)
  {
    if (v13 == 7)
    {
      v27 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27))
      {
        return;
      }

      v28 = sub_21DBF563C();
      v16 = *(*(v28 - 8) + 8);
      v15 = v28;
      v17 = v11;
    }

    else
    {
      if (v13 != 8)
      {
        return;
      }

      v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v15 = sub_21DBF8D7C();
      v16 = *(*(v15 - 8) + 8);
      v17 = &v11[v14];
    }

    goto LABEL_81;
  }

  v23 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v23 - 8) + 48))(v11, 1, v23))
  {

    v24 = *(v23 + 20);
    v25 = sub_21DBF6C1C();
    (*(*(v25 - 8) + 8))(&v11[v24], v25);
  }

  v26 = &v11[*(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20)];
  if (*(v26 + 1))
  {

    v19 = *(v26 + 2);
    goto LABEL_77;
  }
}

void **initializeWithCopy for TTRIRemindersListItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = *a2;
    *a1 = *a2;
    v18 = v17;
    goto LABEL_43;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      goto LABEL_44;
    }

    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 == 5 || v9 == 6)
        {
          goto LABEL_22;
        }

        goto LABEL_33;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v9 > 2)
      {
LABEL_22:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 16))(a1, a2, v20);
        swift_storeEnumTagMultiPayload();
        goto LABEL_43;
      }

      if (v9 != 1)
      {
        if (v9 == 2)
        {
          goto LABEL_22;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v8 - 8) + 64));
        goto LABEL_43;
      }
    }

    v21 = *a2;
    *a1 = *a2;
    v22 = v21;
    swift_storeEnumTagMultiPayload();
    goto LABEL_43;
  }

  v10 = *a2;
  *a1 = *a2;
  v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v10;
  if (!v14(a2 + v11, 1, v12))
  {
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 == 5 || v19 == 6)
        {
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v19 > 2)
      {
LABEL_34:
        v23 = sub_21DBF563C();
        (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
        swift_storeEnumTagMultiPayload();
LABEL_42:
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
        goto LABEL_43;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          goto LABEL_34;
        }

LABEL_41:
        memcpy(a1 + v11, a2 + v11, *(v13 + 64));
        goto LABEL_42;
      }
    }

    v24 = *(a2 + v11);
    *(a1 + v11) = v24;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_42;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
  swift_storeEnumTagMultiPayload();
LABEL_44:
  v26 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v30 = a3[13];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  *(a1 + v29) = *(a2 + v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  v34 = *(v33 - 8);
  if (!(*(v34 + 48))(v32, 1, v33))
  {
    v36 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v37 = swift_getEnumCaseMultiPayload();
    if (v37 > 3)
    {
      if (v37 > 5)
      {
        switch(v37)
        {
          case 6:
            v56 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v57 = *(v56 - 8);
            if ((*(v57 + 48))(v32, 1, v56))
            {
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v31, v32, *(*(v58 - 8) + 64));
            }

            else
            {
              *v31 = *v32;
              v141 = v34;
              v67 = *(v56 + 20);
              v68 = sub_21DBF6C1C();
              v133 = *(*(v68 - 8) + 16);
              sub_21DBF8E0C();
              v69 = v31 + v67;
              v70 = v32 + v67;
              v34 = v141;
              v133(v69, v70, v68);
              (*(v57 + 56))(v31, 0, 1, v56);
            }

            v71 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v72 = (v31 + v71);
            v73 = (v32 + v71);
            v74 = v73[1];
            if (v74)
            {
              *v72 = *v73;
              v72[1] = v74;
              v75 = v73[2];
              v72[2] = v75;
              sub_21DBF8E0C();
              v76 = v75;
            }

            else
            {
              *v72 = *v73;
              v72[2] = v73[2];
            }

            goto LABEL_172;
          case 7:
            v62 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v63 = *(v62 - 8);
            if ((*(v63 + 48))(v32, 1, v62))
            {
              v64 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v31, v32, *(*(v64 - 8) + 64));
            }

            else
            {
              v78 = sub_21DBF563C();
              (*(*(v78 - 8) + 16))(v31, v32, v78);
              *(v31 + *(v62 + 20)) = *(v32 + *(v62 + 20));
              (*(v63 + 56))(v31, 0, 1, v62);
            }

            v79 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(v31 + *(v79 + 20)) = *(v32 + *(v79 + 20));
            goto LABEL_172;
          case 8:
            *v31 = *v32;
            v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v39 = sub_21DBF8D7C();
            (*(*(v39 - 8) + 16))(v31 + v38, v32 + v38, v39);
LABEL_172:
            swift_storeEnumTagMultiPayload();
            goto LABEL_173;
        }

LABEL_78:
        memcpy(v31, v32, *(*(v36 - 8) + 64));
LABEL_173:
        (*(v34 + 56))(v31, 0, 1, v33);
        return a1;
      }

      if (v37 != 4)
      {
        *v31 = *v32;
        *(v31 + 8) = *(v32 + 8);
        *(v31 + 9) = *(v32 + 9);
        v48 = v32[2];
        v31[2] = v48;
        v49 = v48;
        goto LABEL_172;
      }

      v139 = v34;
      v59 = *v32;
      *v31 = *v32;
      v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v45 = *(v44 - 8);
      v60 = *(v45 + 48);
      v61 = v59;
      if (v60(v32 + v43, 1, v44))
      {
LABEL_71:
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v31 + v43, v32 + v43, *(*(v55 - 8) + 64));
        v34 = v139;
        goto LABEL_172;
      }

      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 4)
      {
        if (v77 <= 7)
        {
          if (v77 == 5 || v77 == 6)
          {
            goto LABEL_157;
          }

          goto LABEL_170;
        }

        if (v77 != 8 && v77 != 9)
        {
          goto LABEL_170;
        }

LABEL_156:
        v121 = *(v32 + v43);
        *(v31 + v43) = v121;
        v122 = v121;
        swift_storeEnumTagMultiPayload();
LABEL_171:
        (*(v45 + 56))(v31 + v43, 0, 1, v44);
        goto LABEL_172;
      }

      if (v77 <= 2)
      {
        if (v77 != 1)
        {
          if (v77 == 2)
          {
            goto LABEL_157;
          }

LABEL_170:
          memcpy(v31 + v43, v32 + v43, *(v45 + 64));
          goto LABEL_171;
        }

        goto LABEL_156;
      }

LABEL_157:
      v123 = sub_21DBF563C();
      (*(*(v123 - 8) + 16))(v31 + v43, v32 + v43, v123);
      swift_storeEnumTagMultiPayload();
      goto LABEL_171;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v139 = v34;
        v52 = *v32;
        *v31 = *v32;
        v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v45 = *(v44 - 8);
        v53 = *(v45 + 48);
        v54 = v52;
        if (v53(v32 + v43, 1, v44))
        {
          goto LABEL_71;
        }

        v66 = swift_getEnumCaseMultiPayload();
        if (v66 > 4)
        {
          if (v66 <= 7)
          {
            if (v66 == 5 || v66 == 6)
            {
              goto LABEL_157;
            }

            goto LABEL_170;
          }

          if (v66 != 8 && v66 != 9)
          {
            goto LABEL_170;
          }

          goto LABEL_156;
        }

        if (v66 > 2)
        {
          goto LABEL_157;
        }

        if (v66 == 1)
        {
          goto LABEL_156;
        }

        if (v66 != 2)
        {
          goto LABEL_170;
        }
      }

      else
      {
        v139 = v34;
        v42 = *v32;
        *v31 = *v32;
        v43 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v44 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v45 = *(v44 - 8);
        v46 = *(v45 + 48);
        v47 = v42;
        if (v46(v32 + v43, 1, v44))
        {
          goto LABEL_71;
        }

        v65 = swift_getEnumCaseMultiPayload();
        if (v65 > 4)
        {
          if (v65 <= 7)
          {
            if (v65 == 5 || v65 == 6)
            {
              goto LABEL_157;
            }

            goto LABEL_170;
          }

          if (v65 != 8 && v65 != 9)
          {
            goto LABEL_170;
          }

          goto LABEL_156;
        }

        if (v65 > 2)
        {
          goto LABEL_157;
        }

        if (v65 == 1)
        {
          goto LABEL_156;
        }

        if (v65 != 2)
        {
          goto LABEL_170;
        }
      }

      goto LABEL_157;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_78;
      }

      v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v41 = swift_getEnumCaseMultiPayload();
      v138 = v34;
      v136 = v33;
      if (v41 <= 4)
      {
        if (v41 > 2)
        {
LABEL_108:
          v80 = sub_21DBF563C();
          (*(*(v80 - 8) + 16))(v31, v32, v80);
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }

        if (v41 != 1)
        {
          if (v41 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_134;
        }

LABEL_111:
        v81 = *v32;
        *v31 = *v32;
        v82 = v81;
        swift_storeEnumTagMultiPayload();
        goto LABEL_135;
      }

      if (v41 > 7)
      {
        if (v41 == 8 || v41 == 9)
        {
          goto LABEL_111;
        }
      }

      else if (v41 == 5 || v41 == 6)
      {
        goto LABEL_108;
      }

LABEL_134:
      memcpy(v31, v32, *(*(v40 - 8) + 64));
LABEL_135:
      v86 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v87 = v86[5];
      v88 = v31 + v87;
      v89 = v32 + v87;
      v90 = *(v32 + v87 + 8);
      if (v90)
      {
        v134 = v31;
        *v88 = *v89;
        *(v88 + 1) = v90;
        v91 = *(v89 + 2);
        v92 = *(v89 + 3);
        v94 = *(v89 + 4);
        v93 = *(v89 + 5);
        v95 = *(v89 + 6);
        v125 = *(v89 + 7);
        v129 = v89[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v91, v92, v94, v93, v95, v125, v129);
        *(v88 + 2) = v91;
        *(v88 + 3) = v92;
        *(v88 + 4) = v94;
        *(v88 + 5) = v93;
        *(v88 + 6) = v95;
        *(v88 + 7) = v125;
        v88[64] = v129;
        *(v88 + 65) = *(v89 + 65);
        v96 = v89[120];
        if (v96 == 255)
        {
          *(v88 + 72) = *(v89 + 72);
          *(v88 + 88) = *(v89 + 88);
          *(v88 + 104) = *(v89 + 104);
          v88[120] = v89[120];
        }

        else
        {
          v97 = *(v89 + 9);
          v98 = *(v89 + 10);
          v99 = *(v89 + 12);
          v100 = *(v89 + 13);
          v126 = *(v89 + 14);
          v130 = *(v89 + 11);
          v101 = v96 & 1;
          sub_21D0FB960(v97, v98, v130, v99, v100, v126, v96 & 1);
          *(v88 + 9) = v97;
          *(v88 + 10) = v98;
          *(v88 + 11) = v130;
          *(v88 + 12) = v99;
          *(v88 + 13) = v100;
          *(v88 + 14) = v126;
          v88[120] = v101;
        }

        v33 = v136;
        v34 = v138;
        v88[121] = v89[121];
        v31 = v134;
        goto LABEL_141;
      }

LABEL_138:
      v102 = *(v89 + 5);
      *(v88 + 4) = *(v89 + 4);
      *(v88 + 5) = v102;
      *(v88 + 6) = *(v89 + 6);
      *(v88 + 106) = *(v89 + 106);
      v103 = *(v89 + 1);
      *v88 = *v89;
      *(v88 + 1) = v103;
      v104 = *(v89 + 3);
      *(v88 + 2) = *(v89 + 2);
      *(v88 + 3) = v104;
LABEL_141:
      *(v31 + v86[6]) = *(v32 + v86[6]);
      *(v31 + v86[7]) = *(v32 + v86[7]);
      *(v31 + v86[8]) = *(v32 + v86[8]);
      *(v31 + v86[9]) = *(v32 + v86[9]);
      *(v31 + v86[10]) = *(v32 + v86[10]);
      v105 = v86[11];
      v106 = *(v32 + v105);
      *(v31 + v105) = v106;
      v107 = v106;
      goto LABEL_172;
    }

    v50 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v51 = swift_getEnumCaseMultiPayload();
    v140 = v34;
    v137 = v33;
    if (v51 <= 4)
    {
      if (v51 > 2)
      {
LABEL_112:
        v83 = sub_21DBF563C();
        (*(*(v83 - 8) + 16))(v31, v32, v83);
        swift_storeEnumTagMultiPayload();
        goto LABEL_143;
      }

      if (v51 != 1)
      {
        if (v51 == 2)
        {
          goto LABEL_112;
        }

        goto LABEL_142;
      }

LABEL_115:
      v84 = *v32;
      *v31 = *v32;
      v85 = v84;
      swift_storeEnumTagMultiPayload();
      goto LABEL_143;
    }

    if (v51 > 7)
    {
      if (v51 == 8 || v51 == 9)
      {
        goto LABEL_115;
      }
    }

    else if (v51 == 5 || v51 == 6)
    {
      goto LABEL_112;
    }

LABEL_142:
    memcpy(v31, v32, *(*(v50 - 8) + 64));
LABEL_143:
    v86 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v108 = v86[5];
    v88 = v31 + v108;
    v89 = v32 + v108;
    v109 = *(v32 + v108 + 8);
    if (v109)
    {
      v135 = v31;
      *v88 = *v89;
      *(v88 + 1) = v109;
      v110 = *(v89 + 2);
      v111 = *(v89 + 3);
      v113 = *(v89 + 4);
      v112 = *(v89 + 5);
      v114 = *(v89 + 6);
      v127 = *(v89 + 7);
      v131 = v89[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v110, v111, v113, v112, v114, v127, v131);
      *(v88 + 2) = v110;
      *(v88 + 3) = v111;
      *(v88 + 4) = v113;
      *(v88 + 5) = v112;
      *(v88 + 6) = v114;
      *(v88 + 7) = v127;
      v88[64] = v131;
      *(v88 + 65) = *(v89 + 65);
      v115 = v89[120];
      if (v115 == 255)
      {
        *(v88 + 72) = *(v89 + 72);
        *(v88 + 88) = *(v89 + 88);
        *(v88 + 104) = *(v89 + 104);
        v88[120] = v89[120];
      }

      else
      {
        v116 = *(v89 + 9);
        v117 = *(v89 + 10);
        v118 = *(v89 + 12);
        v119 = *(v89 + 13);
        v128 = *(v89 + 14);
        v132 = *(v89 + 11);
        v120 = v115 & 1;
        sub_21D0FB960(v116, v117, v132, v118, v119, v128, v115 & 1);
        *(v88 + 9) = v116;
        *(v88 + 10) = v117;
        *(v88 + 11) = v132;
        *(v88 + 12) = v118;
        *(v88 + 13) = v119;
        *(v88 + 14) = v128;
        v88[120] = v120;
      }

      v33 = v137;
      v34 = v140;
      v88[121] = v89[121];
      v31 = v135;
      goto LABEL_141;
    }

    goto LABEL_138;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
  memcpy(v31, v32, *(*(v35 - 8) + 64));
  return a1;
}

void **assignWithCopy for TTRIRemindersListItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D61738C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_45;
      }

      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
    }

    v10 = *a2;
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    v15 = v10;
    if (v14(a2 + v11, 1, v12))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v19 = swift_getEnumCaseMultiPayload();
    if (v19 > 4)
    {
      if (v19 <= 7)
      {
        if (v19 == 5 || v19 == 6)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

      if (v19 != 8 && v19 != 9)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v19 > 2)
      {
LABEL_35:
        v23 = sub_21DBF563C();
        (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
        swift_storeEnumTagMultiPayload();
LABEL_43:
        (*(v13 + 56))(a1 + v11, 0, 1, v12);
        goto LABEL_44;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          goto LABEL_35;
        }

LABEL_42:
        memcpy(a1 + v11, a2 + v11, *(v13 + 64));
        goto LABEL_43;
      }
    }

    v24 = *(a2 + v11);
    *(a1 + v11) = v24;
    v25 = v24;
    swift_storeEnumTagMultiPayload();
    goto LABEL_43;
  }

LABEL_45:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = a1 + v26;
  v28 = a2 + v26;
  *v27 = *v28;
  v27[1] = v28[1];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v29 = a3[13];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v30, 1, v32);
  v36 = v34(v31, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v38 = swift_getEnumCaseMultiPayload();
      if (v38 > 3)
      {
        if (v38 > 5)
        {
          switch(v38)
          {
            case 6:
              v64 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v65 = *(v64 - 8);
              if ((*(v65 + 48))(v31, 1, v64))
              {
                v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(v30, v31, *(*(v66 - 8) + 64));
              }

              else
              {
                *v30 = *v31;
                v91 = *(v64 + 20);
                v92 = sub_21DBF6C1C();
                v238 = *(*(v92 - 8) + 16);
                sub_21DBF8E0C();
                v238(v30 + v91, v31 + v91, v92);
                (*(v65 + 56))(v30, 0, 1, v64);
              }

              v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v94 = (v30 + v93);
              v95 = (v31 + v93);
              if (v95[1])
              {
                *v94 = *v95;
                v94[1] = v95[1];
                v96 = v95[2];
                v94[2] = v96;
                sub_21DBF8E0C();
                v97 = v96;
              }

              else
              {
                v98 = *v95;
                v94[2] = v95[2];
                *v94 = v98;
              }

              goto LABEL_282;
            case 7:
              v70 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v71 = *(v70 - 8);
              if ((*(v71 + 48))(v31, 1, v70))
              {
                v72 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(v30, v31, *(*(v72 - 8) + 64));
              }

              else
              {
                v107 = sub_21DBF563C();
                (*(*(v107 - 8) + 16))(v30, v31, v107);
                *(v30 + *(v70 + 20)) = *(v31 + *(v70 + 20));
                (*(v71 + 56))(v30, 0, 1, v70);
              }

              v108 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(v30 + *(v108 + 20)) = *(v31 + *(v108 + 20));
              goto LABEL_282;
            case 8:
              *v30 = *v31;
              v39 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v40 = sub_21DBF8D7C();
              (*(*(v40 - 8) + 16))(v30 + v39, v31 + v39, v40);
LABEL_282:
              swift_storeEnumTagMultiPayload();
              goto LABEL_283;
          }

LABEL_98:
          memcpy(v30, v31, *(*(v37 - 8) + 64));
LABEL_283:
          (*(v33 + 56))(v30, 0, 1, v32);
          return a1;
        }

        if (v38 != 4)
        {
          *v30 = *v31;
          *(v30 + 8) = *(v31 + 8);
          *(v30 + 9) = *(v31 + 9);
          *(v30 + 10) = *(v31 + 10);
          v54 = v31[2];
          v30[2] = v54;
          v55 = v54;
          goto LABEL_282;
        }

        v67 = *v31;
        *v30 = *v31;
        v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v50 = *(v49 - 8);
        v68 = *(v50 + 48);
        v69 = v67;
        v53 = v237;
        if (v68(v31 + v237, 1, v49))
        {
LABEL_91:
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(v30 + v53, v31 + v53, *(*(v63 - 8) + 64));
          goto LABEL_282;
        }

        v99 = swift_getEnumCaseMultiPayload();
        if (v99 > 4)
        {
          if (v99 <= 7)
          {
            if (v99 == 5 || v99 == 6)
            {
              goto LABEL_233;
            }

            goto LABEL_280;
          }

          if (v99 != 8 && v99 != 9)
          {
            goto LABEL_280;
          }

LABEL_232:
          v168 = *(v31 + v237);
          *(v30 + v237) = v168;
          v169 = v168;
          swift_storeEnumTagMultiPayload();
LABEL_281:
          (*(v50 + 56))(v30 + v237, 0, 1, v49);
          goto LABEL_282;
        }

        if (v99 <= 2)
        {
          if (v99 != 1)
          {
            if (v99 == 2)
            {
              goto LABEL_233;
            }

LABEL_280:
            memcpy(v30 + v237, v31 + v237, *(v50 + 64));
            goto LABEL_281;
          }

          goto LABEL_232;
        }

LABEL_233:
        v170 = sub_21DBF563C();
        (*(*(v170 - 8) + 16))(v30 + v237, v31 + v237, v170);
        swift_storeEnumTagMultiPayload();
        goto LABEL_281;
      }

      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v60 = *v31;
          *v30 = *v31;
          v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v50 = *(v49 - 8);
          v61 = *(v50 + 48);
          v62 = v60;
          v53 = v237;
          if (v61(v31 + v237, 1, v49))
          {
            goto LABEL_91;
          }

          v84 = swift_getEnumCaseMultiPayload();
          if (v84 > 4)
          {
            if (v84 <= 7)
            {
              if (v84 == 5 || v84 == 6)
              {
                goto LABEL_233;
              }

              goto LABEL_280;
            }

            if (v84 != 8 && v84 != 9)
            {
              goto LABEL_280;
            }

            goto LABEL_232;
          }

          if (v84 > 2)
          {
            goto LABEL_233;
          }

          if (v84 == 1)
          {
            goto LABEL_232;
          }

          if (v84 != 2)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v48 = *v31;
          *v30 = *v31;
          v237 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v49 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v50 = *(v49 - 8);
          v51 = *(v50 + 48);
          v52 = v48;
          v53 = v237;
          if (v51(v31 + v237, 1, v49))
          {
            goto LABEL_91;
          }

          v81 = swift_getEnumCaseMultiPayload();
          if (v81 > 4)
          {
            if (v81 <= 7)
            {
              if (v81 == 5 || v81 == 6)
              {
                goto LABEL_233;
              }

              goto LABEL_280;
            }

            if (v81 != 8 && v81 != 9)
            {
              goto LABEL_280;
            }

            goto LABEL_232;
          }

          if (v81 > 2)
          {
            goto LABEL_233;
          }

          if (v81 == 1)
          {
            goto LABEL_232;
          }

          if (v81 != 2)
          {
            goto LABEL_280;
          }
        }

        goto LABEL_233;
      }

      if (v38)
      {
        if (v38 != 1)
        {
          goto LABEL_98;
        }

        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 <= 4)
        {
          if (v47 > 2)
          {
LABEL_147:
            v109 = sub_21DBF563C();
            (*(*(v109 - 8) + 16))(v30, v31, v109);
            swift_storeEnumTagMultiPayload();
            goto LABEL_203;
          }

          if (v47 != 1)
          {
            if (v47 == 2)
            {
              goto LABEL_147;
            }

            goto LABEL_202;
          }

LABEL_150:
          v110 = *v31;
          *v30 = *v31;
          v111 = v110;
          swift_storeEnumTagMultiPayload();
          goto LABEL_203;
        }

        if (v47 > 7)
        {
          if (v47 == 8 || v47 == 9)
          {
            goto LABEL_150;
          }
        }

        else if (v47 == 5 || v47 == 6)
        {
          goto LABEL_147;
        }

LABEL_202:
        memcpy(v30, v31, *(*(v46 - 8) + 64));
LABEL_203:
        v128 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v129 = v128[5];
        v130 = v30 + v129;
        v131 = v31 + v129;
        if (*(v31 + v129 + 8))
        {
          v240 = v30;
          *v130 = *v131;
          *(v130 + 1) = *(v131 + 1);
          v132 = *(v131 + 2);
          v133 = *(v131 + 3);
          v134 = *(v131 + 4);
          v213 = *(v131 + 5);
          v221 = *(v131 + 7);
          v229 = *(v131 + 6);
          v217 = v131[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v132, v133, v134, v213, v229, v221, v217);
          *(v130 + 2) = v132;
          *(v130 + 3) = v133;
          *(v130 + 4) = v134;
          *(v130 + 5) = v213;
          *(v130 + 6) = v229;
          *(v130 + 7) = v221;
          v130[64] = v217;
          v130[65] = v131[65];
          v130[66] = v131[66];
          v130[67] = v131[67];
          v130[68] = v131[68];
          v135 = v131[120];
          if (v135 == 255)
          {
            v145 = *(v131 + 72);
            v146 = *(v131 + 88);
            v147 = *(v131 + 104);
            v130[120] = v131[120];
            *(v130 + 104) = v147;
            *(v130 + 88) = v146;
            *(v130 + 72) = v145;
          }

          else
          {
            v136 = *(v131 + 9);
            v222 = *(v131 + 11);
            v230 = *(v131 + 10);
            v137 = *(v131 + 13);
            v214 = *(v131 + 14);
            v218 = *(v131 + 12);
            v138 = v135 & 1;
            sub_21D0FB960(v136, v230, v222, v218, v137, v214, v135 & 1);
            *(v130 + 9) = v136;
            *(v130 + 10) = v230;
            *(v130 + 11) = v222;
            *(v130 + 12) = v218;
            *(v130 + 13) = v137;
            *(v130 + 14) = v214;
            v130[120] = v138;
          }

          v30 = v240;
          v130[121] = v131[121];
          goto LABEL_209;
        }

LABEL_206:
        v139 = *v131;
        v140 = *(v131 + 1);
        v141 = *(v131 + 3);
        *(v130 + 2) = *(v131 + 2);
        *(v130 + 3) = v141;
        *v130 = v139;
        *(v130 + 1) = v140;
        v142 = *(v131 + 4);
        v143 = *(v131 + 5);
        v144 = *(v131 + 6);
        *(v130 + 106) = *(v131 + 106);
        *(v130 + 5) = v143;
        *(v130 + 6) = v144;
        *(v130 + 4) = v142;
LABEL_209:
        *(v30 + v128[6]) = *(v31 + v128[6]);
        *(v30 + v128[7]) = *(v31 + v128[7]);
        *(v30 + v128[8]) = *(v31 + v128[8]);
        *(v30 + v128[9]) = *(v31 + v128[9]);
        *(v30 + v128[10]) = *(v31 + v128[10]);
        v148 = v128[11];
        v149 = *(v31 + v148);
        *(v30 + v148) = v149;
        v150 = v149;
        goto LABEL_282;
      }

      v58 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v59 = swift_getEnumCaseMultiPayload();
      if (v59 <= 4)
      {
        if (v59 > 2)
        {
LABEL_151:
          v112 = sub_21DBF563C();
          (*(*(v112 - 8) + 16))(v30, v31, v112);
          swift_storeEnumTagMultiPayload();
          goto LABEL_211;
        }

        if (v59 != 1)
        {
          if (v59 == 2)
          {
            goto LABEL_151;
          }

          goto LABEL_210;
        }

LABEL_154:
        v113 = *v31;
        *v30 = *v31;
        v114 = v113;
        swift_storeEnumTagMultiPayload();
        goto LABEL_211;
      }

      if (v59 > 7)
      {
        if (v59 == 8 || v59 == 9)
        {
          goto LABEL_154;
        }
      }

      else if (v59 == 5 || v59 == 6)
      {
        goto LABEL_151;
      }

LABEL_210:
      memcpy(v30, v31, *(*(v58 - 8) + 64));
LABEL_211:
      v128 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v151 = v128[5];
      v130 = v30 + v151;
      v131 = v31 + v151;
      if (*(v31 + v151 + 8))
      {
        v241 = v30;
        *v130 = *v131;
        *(v130 + 1) = *(v131 + 1);
        v152 = *(v131 + 2);
        v153 = *(v131 + 3);
        v154 = *(v131 + 4);
        v215 = *(v131 + 5);
        v223 = *(v131 + 7);
        v231 = *(v131 + 6);
        v219 = v131[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v152, v153, v154, v215, v231, v223, v219);
        *(v130 + 2) = v152;
        *(v130 + 3) = v153;
        *(v130 + 4) = v154;
        *(v130 + 5) = v215;
        *(v130 + 6) = v231;
        *(v130 + 7) = v223;
        v130[64] = v219;
        v130[65] = v131[65];
        v130[66] = v131[66];
        v130[67] = v131[67];
        v130[68] = v131[68];
        v155 = v131[120];
        if (v155 == 255)
        {
          v159 = *(v131 + 72);
          v160 = *(v131 + 88);
          v161 = *(v131 + 104);
          v130[120] = v131[120];
          *(v130 + 104) = v161;
          *(v130 + 88) = v160;
          *(v130 + 72) = v159;
        }

        else
        {
          v156 = *(v131 + 9);
          v224 = *(v131 + 11);
          v232 = *(v131 + 10);
          v157 = *(v131 + 13);
          v216 = *(v131 + 14);
          v220 = *(v131 + 12);
          v158 = v155 & 1;
          sub_21D0FB960(v156, v232, v224, v220, v157, v216, v155 & 1);
          *(v130 + 9) = v156;
          *(v130 + 10) = v232;
          *(v130 + 11) = v224;
          *(v130 + 12) = v220;
          *(v130 + 13) = v157;
          *(v130 + 14) = v216;
          v130[120] = v158;
        }

        v30 = v241;
        v130[121] = v131[121];
        goto LABEL_209;
      }

      goto LABEL_206;
    }

    goto LABEL_55;
  }

  if (v36)
  {
    sub_21D0CF7E0(v30, &qword_27CE5A0C8);
LABEL_55:
    v41 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0) - 8) + 64);
LABEL_56:
    memcpy(v30, v31, v41);
    return a1;
  }

  if (a1 == a2)
  {
    return a1;
  }

  sub_21D61738C(v30, type metadata accessor for TTRRemindersListViewModel.Item);
  v42 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 <= 3)
  {
    if (v43 <= 1)
    {
      if (v43)
      {
        if (v43 != 1)
        {
LABEL_146:
          v41 = *(*(v42 - 8) + 64);
          goto LABEL_56;
        }

        v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v57 = swift_getEnumCaseMultiPayload();
        if (v57 <= 4)
        {
          if (v57 > 2)
          {
LABEL_217:
            v162 = sub_21DBF563C();
            (*(*(v162 - 8) + 16))(v30, v31, v162);
            swift_storeEnumTagMultiPayload();
            goto LABEL_265;
          }

          if (v57 != 1)
          {
            if (v57 == 2)
            {
              goto LABEL_217;
            }

            goto LABEL_264;
          }

LABEL_221:
          v163 = *v31;
          *v30 = *v31;
          v164 = v163;
          swift_storeEnumTagMultiPayload();
          goto LABEL_265;
        }

        if (v57 > 7)
        {
          if (v57 == 8 || v57 == 9)
          {
            goto LABEL_221;
          }
        }

        else if (v57 == 5 || v57 == 6)
        {
          goto LABEL_217;
        }

LABEL_264:
        memcpy(v30, v31, *(*(v56 - 8) + 64));
LABEL_265:
        v171 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v172 = v171[5];
        v173 = v30 + v172;
        v174 = v31 + v172;
        if (*(v31 + v172 + 8))
        {
          *v173 = *v174;
          *(v173 + 1) = *(v174 + 1);
          v175 = *(v174 + 2);
          v176 = *(v174 + 3);
          v177 = *(v174 + 4);
          v178 = *(v174 + 5);
          v225 = *(v174 + 6);
          v242 = *(v174 + 7);
          v233 = v174[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v175, v176, v177, v178, v225, v242, v233);
          *(v173 + 2) = v175;
          *(v173 + 3) = v176;
          *(v173 + 4) = v177;
          *(v173 + 5) = v178;
          *(v173 + 6) = v225;
          *(v173 + 7) = v242;
          v173[64] = v233;
          v173[65] = v174[65];
          v173[66] = v174[66];
          v173[67] = v174[67];
          v173[68] = v174[68];
          v179 = v174[120];
          if (v179 == 255)
          {
            v190 = *(v174 + 72);
            v191 = *(v174 + 88);
            v192 = *(v174 + 104);
            v173[120] = v174[120];
            *(v173 + 104) = v192;
            *(v173 + 88) = v191;
            *(v173 + 72) = v190;
          }

          else
          {
            v234 = *(v174 + 10);
            v243 = *(v174 + 9);
            v180 = *(v174 + 12);
            v226 = *(v174 + 11);
            v181 = *(v174 + 13);
            v182 = *(v174 + 14);
            v183 = v179 & 1;
            sub_21D0FB960(v243, v234, v226, v180, v181, v182, v179 & 1);
            *(v173 + 9) = v243;
            *(v173 + 10) = v234;
            *(v173 + 11) = v226;
            *(v173 + 12) = v180;
            *(v173 + 13) = v181;
            *(v173 + 14) = v182;
            v173[120] = v183;
          }

          v173[121] = v174[121];
          goto LABEL_271;
        }

LABEL_268:
        v184 = *v174;
        v185 = *(v174 + 1);
        v186 = *(v174 + 3);
        *(v173 + 2) = *(v174 + 2);
        *(v173 + 3) = v186;
        *v173 = v184;
        *(v173 + 1) = v185;
        v187 = *(v174 + 4);
        v188 = *(v174 + 5);
        v189 = *(v174 + 6);
        *(v173 + 106) = *(v174 + 106);
        *(v173 + 5) = v188;
        *(v173 + 6) = v189;
        *(v173 + 4) = v187;
LABEL_271:
        *(v30 + v171[6]) = *(v31 + v171[6]);
        *(v30 + v171[7]) = *(v31 + v171[7]);
        *(v30 + v171[8]) = *(v31 + v171[8]);
        *(v30 + v171[9]) = *(v31 + v171[9]);
        *(v30 + v171[10]) = *(v31 + v171[10]);
        v193 = v171[11];
        v194 = *(v31 + v193);
        *(v30 + v193) = v194;
        v195 = v194;
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v82 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v83 = swift_getEnumCaseMultiPayload();
      if (v83 <= 4)
      {
        if (v83 > 2)
        {
LABEL_225:
          v165 = sub_21DBF563C();
          (*(*(v165 - 8) + 16))(v30, v31, v165);
          swift_storeEnumTagMultiPayload();
          goto LABEL_274;
        }

        if (v83 != 1)
        {
          if (v83 == 2)
          {
            goto LABEL_225;
          }

          goto LABEL_273;
        }

LABEL_229:
        v166 = *v31;
        *v30 = *v31;
        v167 = v166;
        swift_storeEnumTagMultiPayload();
        goto LABEL_274;
      }

      if (v83 > 7)
      {
        if (v83 == 8 || v83 == 9)
        {
          goto LABEL_229;
        }
      }

      else if (v83 == 5 || v83 == 6)
      {
        goto LABEL_225;
      }

LABEL_273:
      memcpy(v30, v31, *(*(v82 - 8) + 64));
LABEL_274:
      v171 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v196 = v171[5];
      v173 = v30 + v196;
      v174 = v31 + v196;
      if (*(v31 + v196 + 8))
      {
        *v173 = *v174;
        *(v173 + 1) = *(v174 + 1);
        v197 = *(v174 + 2);
        v198 = *(v174 + 3);
        v199 = *(v174 + 4);
        v200 = *(v174 + 5);
        v227 = *(v174 + 6);
        v244 = *(v174 + 7);
        v235 = v174[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v197, v198, v199, v200, v227, v244, v235);
        *(v173 + 2) = v197;
        *(v173 + 3) = v198;
        *(v173 + 4) = v199;
        *(v173 + 5) = v200;
        *(v173 + 6) = v227;
        *(v173 + 7) = v244;
        v173[64] = v235;
        v173[65] = v174[65];
        v173[66] = v174[66];
        v173[67] = v174[67];
        v173[68] = v174[68];
        v201 = v174[120];
        if (v201 == 255)
        {
          v206 = *(v174 + 72);
          v207 = *(v174 + 88);
          v208 = *(v174 + 104);
          v173[120] = v174[120];
          *(v173 + 104) = v208;
          *(v173 + 88) = v207;
          *(v173 + 72) = v206;
        }

        else
        {
          v236 = *(v174 + 10);
          v245 = *(v174 + 9);
          v202 = *(v174 + 12);
          v228 = *(v174 + 11);
          v203 = *(v174 + 13);
          v204 = *(v174 + 14);
          v205 = v201 & 1;
          sub_21D0FB960(v245, v236, v228, v202, v203, v204, v201 & 1);
          *(v173 + 9) = v245;
          *(v173 + 10) = v236;
          *(v173 + 11) = v228;
          *(v173 + 12) = v202;
          *(v173 + 13) = v203;
          *(v173 + 14) = v204;
          v173[120] = v205;
        }

        v173[121] = v174[121];
        goto LABEL_271;
      }

      goto LABEL_268;
    }

    if (v43 == 2)
    {
      v85 = *v31;
      *v30 = *v31;
      v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v76 = *(v75 - 8);
      v86 = *(v76 + 48);
      v87 = v85;
      if (v86(v31 + v74, 1, v75))
      {
        goto LABEL_141;
      }

      v116 = swift_getEnumCaseMultiPayload();
      if (v116 > 4)
      {
        if (v116 <= 7)
        {
          if (v116 == 5 || v116 == 6)
          {
            goto LABEL_285;
          }

          goto LABEL_306;
        }

        if (v116 != 8 && v116 != 9)
        {
          goto LABEL_306;
        }

        goto LABEL_288;
      }

      if (v116 > 2)
      {
        goto LABEL_285;
      }

      if (v116 == 1)
      {
        goto LABEL_288;
      }

      if (v116 != 2)
      {
        goto LABEL_306;
      }
    }

    else
    {
      v73 = *v31;
      *v30 = *v31;
      v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v76 = *(v75 - 8);
      v77 = *(v76 + 48);
      v78 = v73;
      if (v77(v31 + v74, 1, v75))
      {
LABEL_141:
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v30 + v74, v31 + v74, *(*(v103 - 8) + 64));
LABEL_308:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v115 = swift_getEnumCaseMultiPayload();
      if (v115 > 4)
      {
        if (v115 <= 7)
        {
          if (v115 == 5 || v115 == 6)
          {
            goto LABEL_285;
          }

          goto LABEL_306;
        }

        if (v115 != 8 && v115 != 9)
        {
          goto LABEL_306;
        }

        goto LABEL_288;
      }

      if (v115 <= 2)
      {
        if (v115 == 1)
        {
          goto LABEL_288;
        }

        if (v115 != 2)
        {
          goto LABEL_306;
        }
      }
    }

LABEL_285:
    v210 = sub_21DBF563C();
    (*(*(v210 - 8) + 16))(v30 + v74, v31 + v74, v210);
    swift_storeEnumTagMultiPayload();
LABEL_307:
    (*(v76 + 56))(v30 + v74, 0, 1, v75);
    goto LABEL_308;
  }

  if (v43 <= 5)
  {
    if (v43 != 4)
    {
      *v30 = *v31;
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = *(v31 + 9);
      *(v30 + 10) = *(v31 + 10);
      v79 = v31[2];
      v30[2] = v79;
      v80 = v79;
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v100 = *v31;
    *v30 = *v31;
    v74 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v75 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v76 = *(v75 - 8);
    v101 = *(v76 + 48);
    v102 = v100;
    if (v101(v31 + v74, 1, v75))
    {
      goto LABEL_141;
    }

    v125 = swift_getEnumCaseMultiPayload();
    if (v125 > 4)
    {
      if (v125 <= 7)
      {
        if (v125 == 5 || v125 == 6)
        {
          goto LABEL_285;
        }

        goto LABEL_306;
      }

      if (v125 != 8 && v125 != 9)
      {
        goto LABEL_306;
      }
    }

    else
    {
      if (v125 > 2)
      {
        goto LABEL_285;
      }

      if (v125 != 1)
      {
        if (v125 == 2)
        {
          goto LABEL_285;
        }

LABEL_306:
        memcpy(v30 + v74, v31 + v74, *(v76 + 64));
        goto LABEL_307;
      }
    }

LABEL_288:
    v211 = *(v31 + v74);
    *(v30 + v74) = v211;
    v212 = v211;
    swift_storeEnumTagMultiPayload();
    goto LABEL_307;
  }

  if (v43 == 6)
  {
    v88 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v31, 1, v88))
    {
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v30, v31, *(*(v90 - 8) + 64));
    }

    else
    {
      *v30 = *v31;
      v117 = *(v88 + 20);
      v118 = sub_21DBF6C1C();
      v239 = *(*(v118 - 8) + 16);
      sub_21DBF8E0C();
      v239(v30 + v117, v31 + v117, v118);
      (*(v89 + 56))(v30, 0, 1, v88);
    }

    v119 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v120 = (v30 + v119);
    v121 = (v31 + v119);
    if (v121[1])
    {
      *v120 = *v121;
      v120[1] = v121[1];
      v122 = v121[2];
      v120[2] = v122;
      sub_21DBF8E0C();
      v123 = v122;
    }

    else
    {
      v124 = *v121;
      v120[2] = v121[2];
      *v120 = v124;
    }

    goto LABEL_308;
  }

  if (v43 != 7)
  {
    if (v43 == 8)
    {
      *v30 = *v31;
      v44 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v45 = sub_21DBF8D7C();
      (*(*(v45 - 8) + 16))(v30 + v44, v31 + v44, v45);
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    goto LABEL_146;
  }

  v104 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v105 = *(v104 - 8);
  if ((*(v105 + 48))(v31, 1, v104))
  {
    v106 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
    memcpy(v30, v31, *(*(v106 - 8) + 64));
  }

  else
  {
    v126 = sub_21DBF563C();
    (*(*(v126 - 8) + 16))(v30, v31, v126);
    *(v30 + *(v104 + 20)) = *(v31 + *(v104 + 20));
    (*(v105 + 56))(v30, 0, 1, v104);
  }

  v127 = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(v30 + *(v127 + 20)) = *(v31 + *(v127 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_21D61738C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for TTRIRemindersListItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_32;
  }

  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 <= 3)
  {
    if (v9 == 2 || v9 == 3)
    {
      goto LABEL_7;
    }

LABEL_22:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  if (v9 != 4 && v9 != 5 && v9 != 6)
  {
    goto LABEL_22;
  }

LABEL_7:
  v10 = sub_21DBF563C();
  (*(*(v10 - 8) + 32))(a1, a2, v10);
  swift_storeEnumTagMultiPayload();
LABEL_31:
  swift_storeEnumTagMultiPayload();
LABEL_32:
  v17 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v17] = *&a2[v17];
  v18 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v18] = a2[v18];
  v19 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v19] = a2[v19];
  v20 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  v21 = a3[13];
  v22 = &a1[v21];
  v23 = &a2[v21];
  a1[v20] = a2[v20];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v23, 1, v24))
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v28 = swift_getEnumCaseMultiPayload();
    if (v28 > 3)
    {
      if (v28 > 6)
      {
        if (v28 == 7)
        {
          v42 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v43 = *(v42 - 8);
          if ((*(v43 + 48))(v23, 1, v42))
          {
            v44 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(v22, v23, *(*(v44 - 8) + 64));
          }

          else
          {
            v47 = sub_21DBF563C();
            (*(*(v47 - 8) + 32))(v22, v23, v47);
            v22[*(v42 + 20)] = v23[*(v42 + 20)];
            (*(v43 + 56))(v22, 0, 1, v42);
          }

          v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&v22[*(v48 + 20)] = *&v23[*(v48 + 20)];
          goto LABEL_120;
        }

        if (v28 != 8)
        {
          goto LABEL_65;
        }

        *v22 = *v23;
        v38 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v39 = sub_21DBF8D7C();
        (*(*(v39 - 8) + 32))(&v22[v38], &v23[v38], v39);
LABEL_120:
        swift_storeEnumTagMultiPayload();
        goto LABEL_121;
      }

      if (v28 != 4)
      {
        if (v28 == 6)
        {
          v32 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v33 = *(v32 - 8);
          if ((*(v33 + 48))(v23, 1, v32))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(v22, v23, *(*(v34 - 8) + 64));
          }

          else
          {
            *v22 = *v23;
            v49 = *(v32 + 20);
            v50 = sub_21DBF6C1C();
            (*(*(v50 - 8) + 32))(&v22[v49], &v23[v49], v50);
            (*(v33 + 56))(v22, 0, 1, v32);
          }

          v51 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v52 = &v22[v51];
          v53 = &v23[v51];
          *v52 = *v53;
          *(v52 + 2) = *(v53 + 2);
          goto LABEL_120;
        }

        goto LABEL_65;
      }

      *v22 = *v23;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(&v23[v35], 1, v36))
      {
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 <= 3)
        {
          if (v45 == 2 || v45 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v45 == 4 || v45 == 5 || v45 == 6)
        {
          goto LABEL_90;
        }

        goto LABEL_118;
      }
    }

    else
    {
      if (v28 <= 1)
      {
        if (!v28)
        {
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v40 = swift_getEnumCaseMultiPayload();
          if (v40 <= 3)
          {
            if (v40 == 2 || v40 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v40 == 4 || v40 == 5 || v40 == 6)
          {
            goto LABEL_42;
          }

          goto LABEL_97;
        }

        if (v28 == 1)
        {
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v30 = swift_getEnumCaseMultiPayload();
          if (v30 <= 3)
          {
            if (v30 == 2 || v30 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v30 == 4 || v30 == 5 || v30 == 6)
          {
LABEL_42:
            v31 = sub_21DBF563C();
            (*(*(v31 - 8) + 32))(v22, v23, v31);
            swift_storeEnumTagMultiPayload();
LABEL_98:
            v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v57 = v56[5];
            v58 = &v22[v57];
            v59 = &v23[v57];
            v60 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v60;
            v61 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v61;
            *(v58 + 106) = *(v59 + 106);
            v62 = *(v59 + 6);
            *(v58 + 5) = *(v59 + 5);
            *(v58 + 6) = v62;
            *(v58 + 4) = *(v59 + 4);
            v22[v56[6]] = v23[v56[6]];
            v22[v56[7]] = v23[v56[7]];
            v22[v56[8]] = v23[v56[8]];
            v22[v56[9]] = v23[v56[9]];
            v22[v56[10]] = v23[v56[10]];
            *&v22[v56[11]] = *&v23[v56[11]];
            goto LABEL_120;
          }

LABEL_97:
          memcpy(v22, v23, *(*(v29 - 8) + 64));
          goto LABEL_98;
        }

LABEL_65:
        memcpy(v22, v23, *(*(v27 - 8) + 64));
LABEL_121:
        (*(v25 + 56))(v22, 0, 1, v24);
        return a1;
      }

      if (v28 != 2)
      {
        *v22 = *v23;
        v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(&v23[v35], 1, v36))
        {
          goto LABEL_62;
        }

        v54 = swift_getEnumCaseMultiPayload();
        if (v54 <= 3)
        {
          if (v54 == 2 || v54 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v54 == 4 || v54 == 5 || v54 == 6)
        {
LABEL_90:
          v55 = sub_21DBF563C();
          (*(*(v55 - 8) + 32))(&v22[v35], &v23[v35], v55);
          swift_storeEnumTagMultiPayload();
LABEL_119:
          (*(v37 + 56))(&v22[v35], 0, 1, v36);
          goto LABEL_120;
        }

LABEL_118:
        memcpy(&v22[v35], &v23[v35], *(v37 + 64));
        goto LABEL_119;
      }

      *v22 = *v23;
      v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v37 = *(v36 - 8);
      if (!(*(v37 + 48))(&v23[v35], 1, v36))
      {
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 <= 3)
        {
          if (v46 == 2 || v46 == 3)
          {
            goto LABEL_90;
          }
        }

        else if (v46 == 4 || v46 == 5 || v46 == 6)
        {
          goto LABEL_90;
        }

        goto LABEL_118;
      }
    }

LABEL_62:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&v22[v35], &v23[v35], *(*(v41 - 8) + 64));
    goto LABEL_120;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0);
  memcpy(v22, v23, *(*(v26 - 8) + 64));
  return a1;
}

void *assignWithTake for TTRIRemindersListItemIntermediateViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D61738C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_33;
      }

      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 <= 3)
      {
        if (v9 == 2 || v9 == 3)
        {
          goto LABEL_8;
        }
      }

      else if (v9 == 4 || v9 == 5 || v9 == 6)
      {
LABEL_8:
        v10 = sub_21DBF563C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        swift_storeEnumTagMultiPayload();
LABEL_32:
        swift_storeEnumTagMultiPayload();
        goto LABEL_33;
      }

      memcpy(a1, a2, *(*(v8 - 8) + 64));
      goto LABEL_32;
    }

    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(a1 + v11, a2 + v11, v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(a1 + v11, a2 + v11, *(v13 + 64));
    goto LABEL_31;
  }

LABEL_33:
  v17 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *v18 = *v19;
  v18[1] = v19[1];
  v20 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v23 = a3[13];
  v24 = a1 + v23;
  v25 = a2 + v23;
  *(a1 + v22) = *(a2 + v22);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v29 = v28(v24, 1, v26);
  v30 = v28(v25, 1, v26);
  if (v29)
  {
    if (!v30)
    {
      v31 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      v32 = swift_getEnumCaseMultiPayload();
      if (v32 > 3)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v55 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v56 = *(v55 - 8);
            if ((*(v56 + 48))(v25, 1, v55))
            {
              v57 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(v24, v25, *(*(v57 - 8) + 64));
            }

            else
            {
              v67 = sub_21DBF563C();
              (*(*(v67 - 8) + 32))(v24, v25, v67);
              v24[*(v55 + 20)] = v25[*(v55 + 20)];
              (*(v56 + 56))(v24, 0, 1, v55);
            }

            v68 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *&v24[*(v68 + 20)] = *&v25[*(v68 + 20)];
            goto LABEL_194;
          }

          if (v32 != 8)
          {
            goto LABEL_85;
          }

          *v24 = *v25;
          v48 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v49 = sub_21DBF8D7C();
          (*(*(v49 - 8) + 32))(&v24[v48], &v25[v48], v49);
LABEL_194:
          swift_storeEnumTagMultiPayload();
          goto LABEL_195;
        }

        if (v32 != 4)
        {
          if (v32 == 6)
          {
            v42 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v43 = *(v42 - 8);
            if ((*(v43 + 48))(v25, 1, v42))
            {
              v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(v24, v25, *(*(v44 - 8) + 64));
            }

            else
            {
              *v24 = *v25;
              v72 = *(v42 + 20);
              v73 = sub_21DBF6C1C();
              (*(*(v73 - 8) + 32))(&v24[v72], &v25[v72], v73);
              (*(v43 + 56))(v24, 0, 1, v42);
            }

            v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v75 = &v24[v74];
            v76 = &v25[v74];
            *v75 = *v76;
            *(v75 + 2) = *(v76 + 2);
            goto LABEL_194;
          }

          goto LABEL_85;
        }

        *v24 = *v25;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(&v25[v45], 1, v46))
        {
          v65 = swift_getEnumCaseMultiPayload();
          if (v65 <= 3)
          {
            if (v65 == 2 || v65 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v65 == 4 || v65 == 5 || v65 == 6)
          {
            goto LABEL_127;
          }

          goto LABEL_192;
        }
      }

      else
      {
        if (v32 <= 1)
        {
          if (!v32)
          {
            v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v53 = swift_getEnumCaseMultiPayload();
            if (v53 <= 3)
            {
              if (v53 == 2 || v53 == 3)
              {
                goto LABEL_43;
              }
            }

            else if (v53 == 4 || v53 == 5 || v53 == 6)
            {
              goto LABEL_43;
            }

            goto LABEL_135;
          }

          if (v32 == 1)
          {
            v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v34 = swift_getEnumCaseMultiPayload();
            if (v34 <= 3)
            {
              if (v34 == 2 || v34 == 3)
              {
                goto LABEL_43;
              }
            }

            else if (v34 == 4 || v34 == 5 || v34 == 6)
            {
LABEL_43:
              v35 = sub_21DBF563C();
              (*(*(v35 - 8) + 32))(v24, v25, v35);
              swift_storeEnumTagMultiPayload();
LABEL_136:
              v79 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
              v80 = v79[5];
              v81 = &v24[v80];
              v82 = &v25[v80];
              v83 = v82[3];
              v81[2] = v82[2];
              v81[3] = v83;
              v84 = v82[1];
              *v81 = *v82;
              v81[1] = v84;
              *(v81 + 106) = *(v82 + 106);
              v85 = v82[6];
              v81[5] = v82[5];
              v81[6] = v85;
              v81[4] = v82[4];
              v24[v79[6]] = v25[v79[6]];
              v24[v79[7]] = v25[v79[7]];
              v24[v79[8]] = v25[v79[8]];
              v24[v79[9]] = v25[v79[9]];
              v24[v79[10]] = v25[v79[10]];
              *&v24[v79[11]] = *&v25[v79[11]];
              goto LABEL_194;
            }

LABEL_135:
            memcpy(v24, v25, *(*(v33 - 8) + 64));
            goto LABEL_136;
          }

LABEL_85:
          memcpy(v24, v25, *(*(v31 - 8) + 64));
LABEL_195:
          (*(v27 + 56))(v24, 0, 1, v26);
          return a1;
        }

        if (v32 != 2)
        {
          *v24 = *v25;
          v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(&v25[v45], 1, v46))
          {
            goto LABEL_82;
          }

          v77 = swift_getEnumCaseMultiPayload();
          if (v77 <= 3)
          {
            if (v77 == 2 || v77 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v77 == 4 || v77 == 5 || v77 == 6)
          {
LABEL_127:
            v78 = sub_21DBF563C();
            (*(*(v78 - 8) + 32))(&v24[v45], &v25[v45], v78);
            swift_storeEnumTagMultiPayload();
LABEL_193:
            (*(v47 + 56))(&v24[v45], 0, 1, v46);
            goto LABEL_194;
          }

LABEL_192:
          memcpy(&v24[v45], &v25[v45], *(v47 + 64));
          goto LABEL_193;
        }

        *v24 = *v25;
        v45 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(&v25[v45], 1, v46))
        {
          v66 = swift_getEnumCaseMultiPayload();
          if (v66 <= 3)
          {
            if (v66 == 2 || v66 == 3)
            {
              goto LABEL_127;
            }
          }

          else if (v66 == 4 || v66 == 5 || v66 == 6)
          {
            goto LABEL_127;
          }

          goto LABEL_192;
        }
      }

LABEL_82:
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&v24[v45], &v25[v45], *(*(v54 - 8) + 64));
      goto LABEL_194;
    }

    goto LABEL_46;
  }

  if (v30)
  {
    sub_21D0CF7E0(v24, &qword_27CE5A0C8);
LABEL_46:
    v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0C0) - 8) + 64);
LABEL_47:
    memcpy(v24, v25, v36);
    return a1;
  }

  if (a1 == a2)
  {
    return a1;
  }

  sub_21D61738C(v24, type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v38 = swift_getEnumCaseMultiPayload();
  if (v38 <= 3)
  {
    if (v38 <= 1)
    {
      if (!v38)
      {
        v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 <= 3)
        {
          if (v64 == 2 || v64 == 3)
          {
            goto LABEL_57;
          }
        }

        else if (v64 == 4 || v64 == 5 || v64 == 6)
        {
          goto LABEL_57;
        }

        goto LABEL_187;
      }

      if (v38 == 1)
      {
        v39 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v40 = swift_getEnumCaseMultiPayload();
        if (v40 <= 3)
        {
          if (v40 == 2 || v40 == 3)
          {
            goto LABEL_57;
          }
        }

        else if (v40 == 4 || v40 == 5 || v40 == 6)
        {
LABEL_57:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 32))(v24, v25, v41);
          swift_storeEnumTagMultiPayload();
LABEL_188:
          v97 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v98 = v97[5];
          v99 = &v24[v98];
          v100 = &v25[v98];
          v101 = v100[3];
          v99[2] = v100[2];
          v99[3] = v101;
          v102 = v100[1];
          *v99 = *v100;
          v99[1] = v102;
          *(v99 + 106) = *(v100 + 106);
          v103 = v100[6];
          v99[5] = v100[5];
          v99[6] = v103;
          v99[4] = v100[4];
          v24[v97[6]] = v25[v97[6]];
          v24[v97[7]] = v25[v97[7]];
          v24[v97[8]] = v25[v97[8]];
          v24[v97[9]] = v25[v97[9]];
          v24[v97[10]] = v25[v97[10]];
          *&v24[v97[11]] = *&v25[v97[11]];
          swift_storeEnumTagMultiPayload();
          return a1;
        }

LABEL_187:
        memcpy(v24, v25, *(*(v39 - 8) + 64));
        goto LABEL_188;
      }

LABEL_128:
      v36 = *(*(v37 - 8) + 64);
      goto LABEL_47;
    }

    if (v38 == 2)
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
        goto LABEL_88;
      }

      v87 = swift_getEnumCaseMultiPayload();
      if (v87 <= 3)
      {
        if (v87 == 2 || v87 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v87 == 4 || v87 == 5 || v87 == 6)
      {
        goto LABEL_162;
      }
    }

    else
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
LABEL_88:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&v24[v58], &v25[v58], *(*(v61 - 8) + 64));
LABEL_217:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v96 = swift_getEnumCaseMultiPayload();
      if (v96 <= 3)
      {
        if (v96 == 2 || v96 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v96 == 4 || v96 == 5 || v96 == 6)
      {
LABEL_162:
        v88 = sub_21DBF563C();
        (*(*(v88 - 8) + 32))(&v24[v58], &v25[v58], v88);
        swift_storeEnumTagMultiPayload();
LABEL_216:
        (*(v60 + 56))(&v24[v58], 0, 1, v59);
        goto LABEL_217;
      }
    }

LABEL_215:
    memcpy(&v24[v58], &v25[v58], *(v60 + 64));
    goto LABEL_216;
  }

  if (v38 > 6)
  {
    if (v38 != 7)
    {
      if (v38 == 8)
      {
        *v24 = *v25;
        v62 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v63 = sub_21DBF8D7C();
        (*(*(v63 - 8) + 32))(&v24[v62], &v25[v62], v63);
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      goto LABEL_128;
    }

    v69 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v25, 1, v69))
    {
      v71 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v24, v25, *(*(v71 - 8) + 64));
    }

    else
    {
      v89 = sub_21DBF563C();
      (*(*(v89 - 8) + 32))(v24, v25, v89);
      v24[*(v69 + 20)] = v25[*(v69 + 20)];
      (*(v70 + 56))(v24, 0, 1, v69);
    }

    v90 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *&v24[*(v90 + 20)] = *&v25[*(v90 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (v38 == 4)
    {
      *v24 = *v25;
      v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v59 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v60 = *(v59 - 8);
      if ((*(v60 + 48))(&v25[v58], 1, v59))
      {
        goto LABEL_88;
      }

      v86 = swift_getEnumCaseMultiPayload();
      if (v86 <= 3)
      {
        if (v86 == 2 || v86 == 3)
        {
          goto LABEL_162;
        }
      }

      else if (v86 == 4 || v86 == 5 || v86 == 6)
      {
        goto LABEL_162;
      }

      goto LABEL_215;
    }

    if (v38 != 6)
    {
      goto LABEL_128;
    }

    v50 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v25, 1, v50))
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v24, v25, *(*(v52 - 8) + 64));
    }

    else
    {
      *v24 = *v25;
      v91 = *(v50 + 20);
      v92 = sub_21DBF6C1C();
      (*(*(v92 - 8) + 32))(&v24[v91], &v25[v91], v92);
      (*(v51 + 56))(v24, 0, 1, v50);
    }

    v93 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v94 = &v24[v93];
    v95 = &v25[v93];
    *v94 = *v95;
    *(v94 + 2) = *(v95 + 2);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_21D61B310()
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v0 <= 0x3F)
  {
    sub_21D61B400();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_21D61B400()
{
  if (!qword_280D13710[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A0C8);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, qword_280D13710);
    }
  }
}

uint64_t sub_21D61B498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21D0D3954(a1, &v6 - v3, &qword_27CE5FB90);
  return sub_21D23E2BC(v4);
}

uint64_t sub_21D61B61C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  sub_21DBF5D9C();

  v8 = *a2;
  swift_beginAccess();
  return sub_21D0D3954(v7 + v8, a4, a3);
}

uint64_t sub_21D61B700(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_21D0D3954(a1, &v9[-v5], &qword_27CE5A0B8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  sub_21DBF5D8C();

  return sub_21D0CF7E0(v6, &qword_27CE5A0B8);
}

uint64_t sub_21D61B904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
  a2[1] = v4;
  return sub_21DBF8E0C();
}

uint64_t sub_21D61B9BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21DBF8E0C();
  return sub_21D23F2C4(v1, v2);
}

uint64_t sub_21D61B9FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  sub_21DBF5D9C();

  *a2 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  return sub_21DBF8E0C();
}

uint64_t sub_21D61BAF0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  sub_21DBF5D9C();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21D61BBCC(void *a1, _BYTE *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  MEMORY[0x28223BE20](v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F270);
  sub_21D0D3954(&a2[*(v25 + 28)], v24, &qword_27CE5F268);
  if ((*a2 & 1) == 0)
  {
    sub_21D0D3954(v24, v21, &qword_27CE5F268);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110);
    if ((*(*(v26 - 8) + 48))(v21, 1, v26) == 1)
    {
      sub_21D0CF7E0(v21, &qword_27CE5F268);
    }

    else
    {
      v27 = *v21;
      sub_21D0CF7E0(v21, &unk_27CE5F110);
      if (v27 == *v41)
      {
        goto LABEL_10;
      }
    }
  }

  v28 = v4 + *(*v4 + 104);
  swift_beginAccess();
  sub_21D0D3954(v28, v18, &qword_27CE5F010);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0CF7E0(v18, &qword_27CE5F010);
    }
  }

  else
  {
    sub_21D0CF7E0(v28, &qword_27CE5F010);
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278) + 48);
    sub_21D6397E0(v18, v28, type metadata accessor for TTRRemindersListViewModel.Reminder);
    *(v28 + v30) = 0;
    swift_storeEnumTagMultiPayload();
  }

  swift_endAccess();
LABEL_10:
  v31 = v4 + *(*v4 + 104);
  swift_beginAccess();
  sub_21D0D3954(v31, v15, &qword_27CE5F010);
  v32 = swift_getEnumCaseMultiPayload();
  if (v32)
  {
    if (v32 == 1)
    {
      v32 = sub_21D0CF7E0(v15, &qword_27CE5F010);
    }
  }

  else
  {
    v33 = v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278) + 48)];
    v32 = sub_21D6398B0(v15, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v33)
    {
      sub_21D0CF7E0(v24, &qword_27CE5F268);
      return 0;
    }
  }

  v47(v32);
  sub_21D0CF7E0(v24, &qword_27CE5F268);
  v34 = 1;
  if ((*(v44 + 48))(v8, 1, v45) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5A0B8);
    swift_beginAccess();
    v35 = v42;
    sub_21D0D3954(v31, v42, &qword_27CE5F010);
    v36 = swift_getEnumCaseMultiPayload();
    if (v36)
    {
      if (v36 == 1)
      {
        sub_21D0CF7E0(v31, &qword_27CE5F010);
        swift_storeEnumTagMultiPayload();
        sub_21D0CF7E0(v35, &qword_27CE5F010);
        v34 = 1;
LABEL_22:
        swift_endAccess();
        return v34;
      }
    }

    else
    {
      sub_21D6398B0(v35, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v34 = 0;
    goto LABEL_22;
  }

  v37 = v43;
  sub_21D6397E0(v8, v43, type metadata accessor for TTRRemindersListViewModel.Reminder);
  swift_beginAccess();
  sub_21D0CF7E0(v31, &qword_27CE5F010);
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F278) + 48);
  sub_21D639848(v37, v31, type metadata accessor for TTRRemindersListViewModel.Reminder);
  *(v31 + v38) = 1;
  swift_storeEnumTagMultiPayload();
  swift_endAccess();
  sub_21D6398B0(v37, type metadata accessor for TTRRemindersListViewModel.Reminder);
  return v34;
}

uint64_t sub_21D61C294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = *(*v0 + 104);
  swift_beginAccess();
  sub_21D0D3954(v0 + v4, v3, &qword_27CE5F010);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_21D0CF7E0(v0 + v4, &qword_27CE5F010);
    sub_21D6397E0(v3, v0 + v4, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v6 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    (*(*(v6 - 8) + 56))(v0 + v4, 0, 1, v6);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return swift_endAccess();
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_21D0CF7E0(v0 + v4, &qword_27CE5F010);
    v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    (*(*(v7 - 8) + 56))(v0 + v4, 1, 1, v7);
    goto LABEL_6;
  }

  sub_21D0CF7E0(v3, &qword_27CE5F010);
  return swift_endAccess();
}

void sub_21D61C450()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_134;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_147;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

void sub_21D61CCB8()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_216;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_226;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

void sub_21D61D520()
{
  sub_21D61DD88(sub_21D5D3E30, sub_21D6381DC);
  if (qword_280D0F740 != -1)
  {
    swift_once();
  }

  v0 = qword_280D0F748;
  sub_21DBF902C();
  v1 = sub_21DBFA5DC();
  objc_setAssociatedObject(v46, v0, v1, 1);

  v55 = sub_21D470C64();
  if (v55)
  {
    v44 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC0AA00;
    v43 = objc_opt_self();
    v2 = [v43 defaultCenter];
    v3 = *MEMORY[0x277D765F0];
    v53 = 0u;
    v54 = 0u;
    v42 = objc_opt_self();
    v4 = [v42 mainQueue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v6 = v50;
    if (v50)
    {
      v7 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v41 = &v41;
      v8 = v3;
      v9 = *(v6 - 1);
      v10 = MEMORY[0x28223BE20](v7);
      v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);

      v13 = sub_21DBFC62C();
      (*(v9 + 8))(v12, v6);
      v3 = v8;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v13 = 0;
    }

    v51 = sub_21D639AE8;
    v52 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_174;
    v14 = _Block_copy(&aBlock);

    v15 = [v2 addObserverForName:v3 object:v13 queue:v4 usingBlock:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    swift_allocObject();

    v19 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    *(inited + 32) = v19;
    v20 = [v43 defaultCenter];
    v21 = *MEMORY[0x277D76520];
    v53 = 0u;
    v54 = 0u;
    v22 = [v42 mainQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(&v53, &aBlock, &qword_27CE5C690);
    v24 = v50;
    if (v50)
    {
      v25 = __swift_project_boxed_opaque_existential_1(&aBlock, v50);
      v26 = v22;
      v27 = v21;
      v28 = *(v24 - 1);
      v29 = MEMORY[0x28223BE20](v25);
      v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v31, v29);

      v32 = sub_21DBFC62C();
      (*(v28 + 8))(v31, v24);
      v21 = v27;
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    else
    {

      v32 = 0;
    }

    v51 = sub_21D639050;
    v52 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_21D0EE46C;
    v50 = &block_descriptor_184_0;
    v33 = _Block_copy(&aBlock);

    v34 = [v20 addObserverForName:v21 object:v32 queue:v22 usingBlock:v33];
    _Block_release(v33);
    swift_unknownObjectRelease();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    swift_allocObject();

    v38 = sub_21DBF903C();
    swift_unknownObjectRelease();

    sub_21D0CF7E0(&v53, &qword_27CE5C690);

    v39 = inited;
    *(inited + 40) = v38;
    sub_21D562C84(v39);
    if (v55)
    {
      v40 = sub_21DBFA5DC();
    }

    else
    {
      v40 = 0;
    }

    objc_setAssociatedObject(v46, v44, v40, 1);
    swift_unknownObjectRelease();
  }

  else
  {

    objc_setAssociatedObject(v46, v0, 0, 1);
  }
}

uint64_t sub_21D61DD88(uint64_t (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_21DBFB10C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C848);
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v47 = v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F260);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = v37 - v17;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    result = UIAccessibilityIsSwitchControlRunning();
    if (!result)
    {
      return result;
    }
  }

  v45 = v16;
  v46 = v15;
  v19 = a1();
  if (v19)
  {
    v22 = v19;
    if (v20)
    {
    }

    v38 = v21;
    v39 = v9;
    v40 = v7;
    v41 = v6;
    v42 = ObjectType;
    v43 = a2;
    v44 = v2;
  }

  else
  {
    v39 = v9;
    v40 = v7;
    v41 = v6;
    v42 = ObjectType;
    v43 = a2;
    v44 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
    swift_allocObject();
    v22 = sub_21DBF907C();
    v38 = 0;
  }

  v51 = v22;
  sub_21D0D8CF0(0, &qword_280D1B900);
  swift_retain_n();
  v23 = sub_21DBFB12C();
  v54 = v23;
  v24 = sub_21DBFB0DC();
  v25 = *(v24 - 8);
  v37[0] = *(v25 + 56);
  v37[1] = v25 + 56;
  (v37[0])(v12, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5C9E0);
  sub_21D0D0F1C(&qword_280D0C450, &unk_27CE5C9E0);
  sub_21D47130C();
  v26 = v47;
  sub_21DBF936C();
  sub_21D0CF7E0(v12, &unk_27CE5F250);

  v27 = v39;
  sub_21DBFB0EC();
  v28 = sub_21DBFB12C();
  v51 = v28;
  (v37[0])(v12, 1, 1, v24);
  sub_21D0D0F1C(&qword_280D0C4F8, &qword_27CE5C848);
  v29 = v48;
  v30 = v50;
  sub_21DBF937C();
  sub_21D0CF7E0(v12, &unk_27CE5F250);

  (*(v40 + 8))(v27, v41);
  (*(v49 + 8))(v26, v30);
  sub_21D0D0F1C(&qword_280D0C540, &qword_27CE5F260);
  v31 = v44;
  v32 = v46;
  v33 = sub_21DBF91AC();
  (*(v45 + 8))(v29, v32);
  v34 = qword_27CE56928;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_27CE5C838;
  v51 = v22;
  v52 = v33;
  v53 = v38;

  v36 = sub_21DBFC69C();
  objc_setAssociatedObject(v31, v35, v36, 1);

  return swift_unknownObjectRelease();
}

void sub_21D61E394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_21D61DD88(a3, a4);
  }
}

uint64_t sub_21D61E400()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EFD0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EFD0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIRemindersListReminderCell_collectionView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListReminderCell_collectionView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
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

uint64_t TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration);
  result = swift_beginAccess();
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

id TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.setter(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  result = swift_beginAccess();
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v7;
  v9[2] = v8;
  if (v7 != v11)
  {
    if (v7)
    {
      [v1 setAutomaticallyUpdatesBackgroundConfiguration_];
      return [v1 setNeedsUpdateConfiguration];
    }

    else
    {
      [v1 setAutomaticallyUpdatesBackgroundConfiguration_];
      sub_21DBF88BC();
      v12 = sub_21DBF88CC();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      return MEMORY[0x223D43B30](v5);
    }
  }

  return result;
}

void (*TTRIRemindersListReminderCell_collectionView.cellOverrideConfiguration.modify(uint64_t *a1))(id **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v9 = (v1 + v8);
  swift_beginAccess();
  v10 = v9[1];
  v11 = v9[2];
  *(v5 + 48) = *v9;
  v12 = v5 + 48;
  *(v12 + 1) = v10;
  *(v12 + 2) = v11;
  return sub_21D61E948;
}

void sub_21D61E948(id **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5] + (*a1)[3];
  v4 = *(*a1 + 49);
  v5 = *(*a1 + 50);
  v6 = v3[1];
  *v3 = *(*a1 + 48);
  v3[1] = v4;
  v3[2] = v5;
  if (a2)
  {
    if (((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v4 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v4 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
LABEL_4:
      v7 = v2[4];
      [v2[3] setAutomaticallyUpdatesBackgroundConfiguration_];
      sub_21DBF88BC();
      v8 = sub_21DBF88CC();
      (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
      MEMORY[0x223D43B30](v7);
      goto LABEL_8;
    }
  }

  v9 = v2[3];
  [v9 setAutomaticallyUpdatesBackgroundConfiguration_];
  [v9 setNeedsUpdateConfiguration];
LABEL_8:
  free(v2[4]);

  free(v2);
}

uint64_t TTRIRemindersListReminderCell_collectionView.itemID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v4 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__itemID;
  swift_beginAccess();
  sub_21D0D3954(v3 + v4, a1, &qword_27CE5FB90);
}

uint64_t TTRIRemindersListReminderCell_collectionView.isViewModelValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater);
  v8 = *(*v7 + 104);
  swift_beginAccess();
  sub_21D0D3954(v7 + v8, v6, &qword_27CE5F010);
  sub_21D0D523C(v6, v3, &qword_27CE5F010);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5F010);
    }

    return 0;
  }

  else
  {
    sub_21D6398B0(v3, type metadata accessor for TTRRemindersListViewModel.Reminder);
    return 1;
  }
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.beginEditingTitle(withInput:)(RemindersUICore::TTREditingStateOption::InputType withInput)
{
  v2 = *withInput;

  v3 = sub_21D2414F0();

  if (v3)
  {
    if (v2)
    {
      [*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) set:3 textInputSource:?];
    }

    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
    v5 = [v4 window];
    [v5 makeKeyWindow];

    [v4 becomeFirstResponder];
    v6 = [v4 selectedTextRange];
    if (!v6)
    {
      v7 = [v4 endOfDocument];
      v8 = [v4 endOfDocument];
      v9 = [v4 textRangeFromPosition:v7 toPosition:v8];

      [v4 setSelectedTextRange_];
      v6 = v9;
    }
  }
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.createAndStartEditingNewHashtag()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v30[0] = v6;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v7 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v6 + v7, v4, &qword_27CE5A0B8);

  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A0B8);
    return;
  }

  v28 = v8;
  v29 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
  sub_21D6397E0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v27, v30);
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_21DAFE838(v8, &v27);
  v10 = v27;

  if (v10 == 1)
  {
    v11 = *(v1 + v5);
    swift_getKeyPath();
    *&v27 = v11;
    swift_retain_n();
    sub_21DBF5D9C();

    v12 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing;
    v13 = *(v11 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);

    if (v13 != 1)
    {
      if (*(v11 + v12) != 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v24 - 2) = v11;
        *(&v24 - 8) = 1;
        *&v27 = v11;

        sub_21DBF5D8C();

LABEL_9:
        sub_21D61F4C0(1);
        v15 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
        swift_beginAccess();
        if (*v15)
        {
          v16 = v15[1];
          ObjectType = swift_getObjectType();
          v18 = v31;
          v19 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v20 = *(v19 + 272);
          swift_unknownObjectRetain();
          v20(v26, v18, v19);
          v25[0] = LOBYTE(v26[0]);
          v25[1] = v26[1];
          v25[2] = v26[2];
          (*(v16 + 48))(v25, ObjectType, v16);
          swift_unknownObjectRelease();
          if (*v15)
          {
            v21 = v15[1];
            v22 = swift_getObjectType();
            v23 = *(v21 + 168);
            swift_unknownObjectRetain();
            v23(v22, v21);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_12;
      }

      *(v11 + v12) = 1;
    }

    goto LABEL_9;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t TTRIRemindersListReminderCell_collectionView.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v11[1] = v6;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v7 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v6 + v7, v5, &qword_27CE5A0B8);

  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    result = sub_21D0CF7E0(v5, &qword_27CE5A0B8);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v8;
    *(a1 + 32) = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return sub_21D6397E0(v5, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  return result;
}

uint64_t sub_21D61F4C0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F268);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_viewModelObserver;
  result = swift_beginAccess();
  v8 = *(v1 + v6);
  if (!v8)
  {
    __break(1u);
    return result;
  }

  v9 = *(*v8 + 88);
  swift_beginAccess();
  sub_21D0D3954(v8 + v9, v5, &qword_27CE5F268);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110);
  v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);
  result = sub_21D0CF7E0(v5, &qword_27CE5F268);
  if (v11 != 1)
  {
    v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper);
    result = swift_beginAccess();
    if (*(*(v12 + 16) + 16))
    {
      v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
      if (a1 == 2)
      {
      }

      else
      {
        swift_getKeyPath();
        v19 = v13;
        sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
        swift_retain_n();
        sub_21DBF5D9C();

        v14 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient;
        v15 = *(v13 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient);

        if (v15 != (a1 & 1))
        {
          if (*(v13 + v14) == (a1 & 1))
          {
            *(v13 + v14) = a1 & 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v18 = &v16;
            MEMORY[0x28223BE20](KeyPath);
            *(&v16 - 2) = v13;
            *(&v16 - 8) = a1 & 1;
            v19 = v13;

            sub_21DBF5D8C();
          }

          sub_21D622434();
          *(v13 + v14) = v15;
          goto LABEL_12;
        }
      }

      sub_21D622434();
LABEL_12:

      sub_21D637E90();
    }
  }

  return result;
}

uint64_t static TTRIRemindersListReminderCell_collectionView.ignoreDragging(view:)(void *a1)
{
  type metadata accessor for TTRIRemindersListReminderCellLinkView();
  v2 = a1;
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TTRIRemindersListLargeImageAttachmentsView();
    do
    {
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for TTRIRemindersListSmallImageAttachmentsView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      v4 = [v2 superview];

      if (!v4)
      {
        return 0;
      }

      v2 = v4;
    }

    while (!swift_dynamicCastClass());
  }

  return 1;
}

id TTRIRemindersListReminderCell_collectionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t TTRIRemindersListReminderCell_collectionView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v112 = sub_21DBF87CC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  *v12 = 0;
  v12[2] = 0;
  v13 = &v4[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestionsAnnouncementPertinent];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  type metadata accessor for TTRIRemindersListReminderCellObservableViewModel();
  swift_allocObject();
  *&v4[v14] = sub_21D240014();
  v15 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F040);
  v16 = swift_allocObject();
  v17 = *(*v16 + 104);
  v18 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  swift_storeEnumTagMultiPayload();
  *&v5[v15] = v16;
  v19 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_updateHelper;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F050);
  v20 = swift_allocObject();
  *(v20 + 40) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 40) = 0xD000000000000018;
  *(v20 + 48) = 0x800000021DC63D90;
  if (qword_280D0E1F0 != -1)
  {
    v108 = v20;
    swift_once();
    v20 = v108;
  }

  *(v20 + 16) = qword_280D0E1F8;
  *&v5[v19] = v20;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_indentationColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow] = 0;
  v21 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_unsupportedTextDropHandler;
  v22 = objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler());
  sub_21DBF8E0C();
  *&v5[v21] = [v22 init];
  v23 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing] = xmmword_21DC1F990;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment] = 0;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment] = 0;
  v24 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  v25 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule];
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  v26 = &v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule];
  *(v26 + 1) = 0u;
  *(v26 + 2) = 0u;
  *v26 = 0u;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement] = 0;
  v27 = [objc_allocWithZone(type metadata accessor for TTRIReminderCompletionButton()) initWithFrame_];
  v28 = &v27[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = 0;
  v28[1] = 0;
  sub_21D637AC4(v29, v30);
  sub_21D637AE8(v29, v30);
  v116[0] = v29;
  v116[1] = v30;
  sub_21D8FD0A0(v116);
  sub_21D637AE8(v29, v30);
  v31 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v32 = v27[v31];
  v27[v31] = 2;
  if (v32 != 2)
  {
    [v27 setNeedsUpdateConfiguration];
  }

  v33 = v27;
  [v33 setCustomAlignmentRectInsets_];
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  LODWORD(v34) = 1148846080;
  [v33 setLayoutSize:xmmword_280D0C200 withContentPriority:v34];
  v35 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v36 = sub_21D900614(1);
  [v35 setFont_];

  [v35 setAdjustsFontForContentSizeCategory_];
  v37 = *MEMORY[0x277CEC620];
  v38 = *(MEMORY[0x277CEC620] + 8);
  v39 = v35;
  LODWORD(v40) = 1148846080;
  [v39 setLayoutSize:v37 withContentPriority:{v38, v40}];
  LOBYTE(v116[0]) = 0;
  v41 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v42 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 0, 1, v116, 0);
  v43 = sub_21D900614(1);
  [v42 setFont_];

  [v42 setAdjustsFontForContentSizeCategory_];
  v44 = v42;
  LODWORD(v45) = 1132068864;
  [v44 setContentCompressionResistancePriority:0 forAxis:v45];
  LODWORD(v46) = 1132068864;
  [v44 setContentHuggingPriority:0 forAxis:v46];
  v47 = [objc_opt_self() labelColor];
  [v44 setTextColor_];

  [v44 setBackgroundColor_];
  v48 = qword_280D165E0;
  v49 = v44;
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_21DBFA12C();
  [v49 setAccessibilityLabel_];

  v51 = type metadata accessor for TTRIRemindersListReminderCellAccessoryStackView();
  v52 = [objc_allocWithZone(v51) initWithFrame_];
  LODWORD(v53) = 1148846080;
  [v52 setContentCompressionResistancePriority:0 forAxis:v53];
  LODWORD(v54) = 1148846080;
  [v52 setContentHuggingPriority:0 forAxis:v54];
  v119.receiver = v52;
  v119.super_class = v51;
  objc_msgSendSuper2(&v119, sel_setDebugBoundingBoxesEnabled_, 0);
  v55 = *&v52[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView];
  v118.receiver = v52;
  v118.super_class = v51;
  [v55 setDebugBoundingBoxesEnabled_];
  v56 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellContentStackView());
  sub_21D0D8CF0(0, &qword_280D176A0);
  v57 = sub_21DBFA5DC();
  v58 = [v56 initWithArrangedSubviews_];

  v59 = v58;
  [v59 setAxis_];
  [v59 setAlignment_];
  [v59 setSpacing_];

  v60 = v59;
  [v60 setLayoutMarginsRelativeArrangement_];
  v61 = v60;
  [v61 setPreservesSuperviewLayoutMargins_];
  [v61 setDirectionalLayoutMargins_];
  [v61 setDebugBoundingBoxesEnabled_];

  v62 = v61;
  v63 = sub_21DBFA12C();
  [v62 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton] = v33;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabel] = v39;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView] = v49;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView] = v52;
  *&v5[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack] = v62;
  v117.receiver = v5;
  v117.super_class = ObjectType;
  v64 = v33;
  v65 = v39;
  v66 = v49;
  v115 = v52;
  v67 = v62;
  v68 = objc_msgSendSuper2(&v117, sel_initWithFrame_, a1, a2, a3, a4);
  v116[3] = &type metadata for ContentConfigurationForContentGridView;
  v116[4] = sub_21D63815C();
  v69 = v68;
  MEMORY[0x223D43B20](v116);
  v70 = [v69 contentView];
  type metadata accessor for ContentGridView();
  v71 = swift_dynamicCastClass();
  if (!v71)
  {

    if (qword_27CE56AF8 != -1)
    {
      swift_once();
    }

    v72 = sub_21DBF84BC();
    __swift_project_value_buffer(v72, qword_27CE5EFD0);
    v73 = sub_21DBF84AC();
    v74 = sub_21DBFAECC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_21D0C9000, v73, v74, "TTRIRemindersListReminderCell_collectionView: failed to create ContentGridView", v75, 2u);
      MEMORY[0x223D46520](v75, -1, -1);
    }

    v71 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v70 = v71;
  }

  v76 = v71;
  v77 = v70;
  v78 = *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView] = v76;
  v79 = v76;

  [v79 setPreservesSuperviewLayoutMargins_];
  v80 = v79;
  [v80 setLayoutMarginsRelativeArrangement_];
  [v80 setRowSpacing_];
  [v80 setColumnSpacing_];
  [v80 setDebugBoundingBoxesEnabled_];
  [v80 setVerticalAlignment_];
  [v80 setHorizontalAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_21DC08D20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v82 = swift_allocObject();
  v113 = xmmword_21DC0AA10;
  *(v82 + 16) = xmmword_21DC0AA10;
  *(v82 + 32) = v64;
  *(v82 + 40) = v65;
  v114 = v65;
  v83 = v115;
  *(v82 + 48) = v66;
  *(v82 + 56) = v83;
  *(v81 + 32) = v82;
  v84 = swift_allocObject();
  *(v84 + 16) = v113;
  *(v84 + 32) = v64;
  *(v84 + 40) = v67;
  *(v84 + 48) = v67;
  *(v84 + 56) = v67;
  *(v81 + 40) = v84;
  v85 = v67;
  v86 = v64;
  v87 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
  v88 = sub_21DBFA5DC();
  [v80 setArrangedSubviewRows_];

  [v80 setAlignment:0 forView:v87 inAxis:1];
  v89 = [v80 columnAtIndex_];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn] = v89;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v89)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v89 setSpacingAfter_];
  swift_unknownObjectRelease();
  v91 = [v80 columnAtIndex_];
  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn] = v91;
  swift_unknownObjectRelease();
  v92 = [v80 rowAtIndex_];

  *&v69[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow] = v92;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (!v92)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  *&v113 = v87;

  [v92 setHidden_];
  swift_unknownObjectRelease();
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = v69;

  sub_21D620A20();

  v95 = &v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  v96 = *&v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  *v95 = sub_21D6381D4;
  v95[1] = v93;

  sub_21D0D0E88(v96);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_21DC0AA00;
  *(v97 + 32) = v114;
  *(v97 + 40) = v66;
  *&v80[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_referenceViewsForLeadingSeparatorInset] = v97;

  sub_21DAA20C8();

  v98 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement()) initWithAccessibilityContainer_];
  v99 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v100 = *&v94[v99];
  *&v94[v99] = v98;

  sub_21D61CCB8();
  [v86 addTarget:v94 action:sel_completedButtonAction_ forControlEvents:0x2000];

  v101 = [v66 textDragInteraction];
  if (v101)
  {
    v102 = v101;
    [v101 setEnabled_];
    [v66 removeInteraction_];
  }

  [v66 setTextDropDelegate_];
  v103 = [objc_allocWithZone(MEMORY[0x277CD9660]) init];
  v104 = v94;
  [v103 setDelegate_];
  [v66 addInteraction_];
  v105 = v115;
  *&v115[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate + 8] = &off_282EC9538;
  swift_unknownObjectWeakAssign();
  [v104 setFocusEffect_];
  [v104 setIndentsAccessories_];

  v106 = [v104 _bridgedConfigurationState];

  v107 = v110;
  sub_21DBF879C();

  sub_21D240DC8(v107, v104);

  (*(v111 + 8))(v107, v112);
  return v104;
}

void sub_21D620A20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
    if (v2)
    {
      v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack];
      [v2 layoutMargins];
      v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate);
      *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate) = v5;
      if (v5 != v4)
      {
        sub_21D6A4A5C();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id TTRIRemindersListReminderCell_collectionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t TTRIRemindersListReminderCell_collectionView.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBF88CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_21DBF87CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF878C();
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel__bridgedUpdateConfigurationUsingState_, v15);

  sub_21D240DC8(a1, v2);

  sub_21D61F4C0(2);
  v16 = &v2[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration];
  result = swift_beginAccess();
  if (v16[1] == 1)
  {
    v23 = v5;
    v18 = *(v12 + 16);
    v18(v14, a1, v11);
    sub_21DBF876C();
    v19 = v24;
    sub_21DBF88BC();
    v25[3] = v11;
    v25[4] = MEMORY[0x277D74BA8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
    v18(boxed_opaque_existential_0, v14, v11);
    sub_21DBF88AC();
    v21 = v19;
    v22 = v23;
    (*(v6 + 8))(v21, v23);
    __swift_destroy_boxed_opaque_existential_0(v25);
    (*(v6 + 56))(v10, 0, 1, v22);
    MEMORY[0x223D43B30](v10);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

Swift::Void __swiftcall TTRIRemindersListReminderCell_collectionView.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_prepareForReuse);

  sub_21D61C294();
}

uint64_t TTRIRemindersListReminderCell_collectionView.processReceivedViewModel(_:changeInfo:)(void *a1, _BYTE *a2)
{
  v3 = v2;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v52 - v6;
  v53 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v9 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v52 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F010);
  MEMORY[0x28223BE20](v57);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v63 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F110) + 36);
  v23 = *(v22 + *(v19 + 44));
  if (v23 != *(v3 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation))
  {
    *(v3 + OBJC_IVAR____TtC15RemindersUICore51TTRIRemindersListIntermediateViewModelObservingCell_isTargetOfContextualPresentation) = v23;
    [v3 setTintAdjustmentMode_];
  }

  v24 = v63;
  sub_21D639848(v22, v63, type metadata accessor for TTRIRemindersListItemIntermediateViewModel);
  v25 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;

  sub_21D24021C(v24);

  v27 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_reminderViewModelUpdater;
  MEMORY[0x28223BE20](v26);
  *(&v52 - 2) = v3;
  *(&v52 - 1) = v24;

  v28 = sub_21D61BBCC(v21, v62, sub_21D638814, (&v52 - 4));

  if (v28)
  {
    v62 = v25;
    v29 = *&v25[v3];
    v30 = *(v3 + v27);
    v31 = *(*v30 + 104);
    swift_beginAccess();
    sub_21D0D3954(v30 + v31, v17, &qword_27CE5F010);
    sub_21D0D523C(v17, v14, &qword_27CE5F010);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v33 = v61;
      v34 = v60;
      v35 = v58;
      if (EnumCaseMultiPayload == 1)
      {
        sub_21D0D523C(v14, v58, &qword_27CE5A0B8);
      }

      else
      {
        (*(v60 + 56))(v58, 1, 1, v61);
      }
    }

    else
    {
      v35 = v58;
      sub_21D6397E0(v14, v58, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v34 = v60;
      v33 = v61;
      (*(v60 + 56))(v35, 0, 1, v61);
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v52 - 2) = v29;
    *(&v52 - 1) = v35;
    v64[0] = v29;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

    sub_21DBF5D8C();

    sub_21D0CF7E0(v35, &qword_27CE5A0B8);
    v37 = *&v62[v3];
    swift_getKeyPath();
    v64[0] = v37;

    sub_21DBF5D9C();

    v38 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v39 = v37 + v38;
    v40 = v59;
    sub_21D0D3954(v39, v59, &qword_27CE5A0B8);

    if ((*(v34 + 48))(v40, 1, v33) == 1)
    {
      sub_21D0CF7E0(v40, &qword_27CE5A0B8);
    }

    else
    {
      v41 = v55;
      sub_21D6397E0(v40, v55, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v42 = v56;
      sub_21D639848(v41, v56, type metadata accessor for TTRRemindersListViewModel.Item);
      v43 = (v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v43 + 1);
        v45 = (v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
        swift_beginAccess();
        if (*v45)
        {
          v46 = v45[1];
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v48 = v54;
          TTRIReminderCellTitleModuleInterface.item.getter(ObjectType, v46, v54);
          swift_unknownObjectRelease();
        }

        else
        {
          v48 = v54;
          (*(v52 + 56))(v54, 1, 1, v53);
        }

        v49 = swift_getObjectType();
        v50 = (*(v44 + 16))(v3, v42, v48, v49, v44);
        sub_21D0CF7E0(v48, &unk_27CE5CD80);
        if (v50)
        {
          (*(v44 + 24))(v64, v3, v42, v49, v44);
          sub_21D621A6C(v64);
          (*(v44 + 32))(v64, v3, v42, v49, v44);
          sub_21D621B8C(v64);
          (*(v44 + 40))(v64, v3, v42, v49, v44);
          sub_21D621C80(v64);
        }

        swift_unknownObjectRelease();
      }

      sub_21D6398B0(v42, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D6398B0(v41, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }
  }

  sub_21D61F4C0(2);
  return sub_21D6398B0(v63, type metadata accessor for TTRIRemindersListItemIntermediateViewModel);
}

uint64_t sub_21D621980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a1, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_21D621A6C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5F240);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    (*(v4 + 48))(*&v7[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView], ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5F240);
}

uint64_t sub_21D621B8C(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_notesModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE62920);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE62920);
}

uint64_t sub_21D621C80(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule];
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3, &unk_27CE5EB40);
  swift_endAccess();
  if (*v3)
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 144);
    swift_unknownObjectRetain();
    v7 = v1;
    v6(v1, &protocol witness table for TTRIRemindersListReminderCell_collectionView, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(a1, &unk_27CE5EB40);
}

void TTRIRemindersListReminderCell_collectionView.contentViewLayoutMargins(for:)(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v6 = sub_21DBF877C();
    v7 = [v6 preferredContentSizeCategory];
    v8 = sub_21DBFB43C();

    if (v8)
    {
      v9 = sub_21DBFB24C();

      v6 = v9;
    }

    [v5 scaledValueForValue:v6 compatibleWithTraitCollection:10.0];
    v11 = v10;

    v12 = xmmword_21DC1F9A0;
  }

  else
  {
    v12 = 0uLL;
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 40) = v4 ^ 1;
}

uint64_t sub_21D621EC0(uint64_t a1)
{
  v1 = *MEMORY[0x277D76838];
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v2 = v1;
  return sub_21DBF860C();
}

uint64_t sub_21D621F14()
{
  result = sub_21D19ECD4(&unk_282EA61F8);
  qword_280D0E1F8 = result;
  return result;
}

unint64_t sub_21D621F40(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x726F737365636361;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000017;
    v9 = 0xD000000000000013;
    if (a1 != 7)
    {
      v9 = 0x53746E65746E6F63;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656E6961746E6F63;
    v2 = 0x656C746974;
    v3 = 0x6F6E6E4177656976;
    if (a1 != 4)
    {
      v3 = 0x65646E496C6C6563;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6574656C706D6F63;
    if (a1 != 1)
    {
      v4 = 0x797469726F697270;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21D622108(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21D621F40(*a1);
  v5 = v4;
  if (v3 == sub_21D621F40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D622190()
{
  v1 = *v0;
  sub_21DBFC7DC();
  sub_21D621F40(v1);
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D6221F4()
{
  sub_21D621F40(*v0);
  sub_21DBFA27C();
}

uint64_t sub_21D622248()
{
  v1 = *v0;
  sub_21DBFC7DC();
  sub_21D621F40(v1);
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D6222A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D638850();
  *a1 = result;
  return result;
}

unint64_t sub_21D6222D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21D621F40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21D622314()
{
  if (qword_280D0E1F0 != -1)
  {
    swift_once();
  }

  return sub_21DBF8E0C();
}

id sub_21D62238C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    v8 = qword_27CE67910;
    v9 = off_27CE67918;
    objc_allocWithZone(type metadata accessor for TTRIRemindersListDescriptionAttachment());
    sub_21DBF8E0C();
    v10 = sub_21DBC8F60(0, 0xF000000000000000, v8, v9, a2 & 1);
    v11 = *(v7 + v3);
    *(v7 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

uint64_t sub_21D622434()
{

  sub_21D623158(0);

  sub_21D623158(10);

  sub_21D623158(9);

  sub_21D623158(11);

  sub_21D623158(11);
}

uint64_t sub_21D622584(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (v1)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_21D6395C8;
    *(v4 + 24) = v3;
    v8[4] = sub_21D0E6070;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21D0E6204;
    v8[3] = &block_descriptor_256_0;
    v5 = _Block_copy(v8);
    v6 = v1;
    v7 = v2;

    [v6 performBatchUpdates_];

    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if ((v2 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D6226F8()
{

  sub_21D623158(1);

  sub_21D623158(2);

  sub_21D623158(3);

  sub_21D623158(4);

  sub_21D623158(5);

  sub_21D623158(6);

  sub_21D623158(7);

  sub_21D623158(8);
}

void sub_21D6228F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v51 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v51 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v16 = v0;
  v55 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v17 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v57 = v17;
  v18 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  v56 = v18;
  KeyPath = v8;
  sub_21DBF5D9C();

  v20 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v17 + v20, v7, &qword_27CE5A0B8);

  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE5A0B8);
    if (qword_280D15938 != -1)
    {
      swift_once();
    }

    v22 = word_280D15940;
    sub_21DBF8E0C();
  }

  else
  {
    sub_21D6397E0(v7, v15, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v8, &v57);
    v22 = v57;
    sub_21D6398B0(v15, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  if (!(v22 >> 6))
  {
    goto LABEL_11;
  }

  if (v22 >> 6 != 1)
  {
    v29 = *(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
    if (!v29)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    [v29 setHidden_];
    v30 = (*(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton) + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = xmmword_21DC1F9B0;
LABEL_18:
    sub_21D637AC4(v31, v32);
    sub_21D637AE8(v31, v32);
    v59[0] = v31;
    v59[1] = v32;
    sub_21D8FD0A0(v59);

    sub_21D637AE8(v31, v32);
    return;
  }

  v23 = *(v16 + v55);
  KeyPath = swift_getKeyPath();
  v57 = v23;

  sub_21DBF5D9C();

  v24 = *(v23 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v25 = *(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
  if ((v24 & 1) == 0)
  {
    if (!v25)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v25 setHidden_];
    v33 = (*(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton) + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
    swift_beginAccess();
    v31 = *v33;
    v32 = v33[1];
    *v33 = v22 & 1 | 0x4000000000000000;
    v33[1] = 0;
    goto LABEL_18;
  }

  if (v25)
  {
LABEL_13:
    [swift_unknownObjectRetain() setHidden_];
    swift_unknownObjectRelease();
LABEL_27:

    return;
  }

  __break(1u);
LABEL_11:
  v26 = *(v16 + v55);
  swift_getKeyPath();
  v57 = v26;

  sub_21DBF5D9C();

  v27 = *(v26 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v28 = *(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completeButtonColumn);
  if (v27)
  {
    if (v28)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

  if (v28)
  {
    [v28 setHidden_];
    v34 = *(v16 + v55);
    swift_getKeyPath();
    v57 = v34;

    sub_21DBF5D9C();

    v35 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v36 = v34 + v35;
    v37 = v53;
    sub_21D0D3954(v36, v53, &qword_27CE5A0B8);

    if (v21(v37, 1, KeyPath) == 1)
    {
      sub_21D0CF7E0(v37, &qword_27CE5A0B8);
      v38 = 0;
    }

    else
    {
      v39 = v37;
      v40 = v51;
      sub_21D6397E0(v39, v51, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v38 = sub_21DAFD898(KeyPath);
      sub_21D6398B0(v40, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v41 = *(v16 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton);
    v42 = *(v16 + v55);
    swift_getKeyPath();
    v59[0] = v42;

    sub_21DBF5D9C();

    v43 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
    swift_beginAccess();
    v44 = v42 + v43;
    v45 = v54;
    sub_21D0D3954(v44, v54, &qword_27CE5A0B8);

    if (v21(v45, 1, KeyPath) == 1)
    {
      sub_21D0CF7E0(v45, &qword_27CE5A0B8);
      v46 = 0;
    }

    else
    {
      v47 = v52;
      sub_21D6397E0(v45, v52, type metadata accessor for TTRRemindersListViewModel.Reminder);
      v46 = sub_21DAFE420(KeyPath);
      sub_21D6398B0(v47, type metadata accessor for TTRRemindersListViewModel.Reminder);
    }

    v48 = &v41[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
    swift_beginAccess();
    v49 = *v48;
    v50 = v48[1];
    *v48 = v38 & 1;
    v48[1] = v46;
    sub_21D637AC4(v49, v50);
    sub_21D637AE8(v49, v50);
    v58[0] = v49;
    v58[1] = v50;
    sub_21D8FD0A0(v58);
    sub_21D637AE8(v49, v50);
    [v41 setSelected_];
    TTRIReminderCompletionButton.prefersFadedAppearance.setter(v22 & 1);
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_21D623158(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_21DBF8E0C();
  v5 = sub_21D1E26B0(a1, v4);

  if (v5)
  {
    if (v2[7])
    {
      v7 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F298);
      v7 = swift_allocObject();
      *(v7 + 16) = MEMORY[0x277D84FA0];
      v2[7] = v7;
    }

    swift_beginAccess();

    v8 = sub_21D29AC14(&v23, a1);
    v9 = swift_endAccess();
    if ((v8 & 1) == 0)
    {
      if (qword_27CE56F50 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_27CE64A20);

      v11 = sub_21DBF84AC();
      v12 = sub_21DBFAEBC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v13 = 136315394;
        if (v2[6])
        {
          v14 = v2[5];
          v15 = v2[6];
        }

        else
        {
          v15 = 0x800000021DC64200;
          v14 = 0xD000000000000055;
        }

        sub_21DBF8E0C();
        v16 = sub_21D0CDFB4(v14, v15, v22);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_21DBFA1AC();
        v19 = sub_21D0CDFB4(v17, v18, v22);

        *(v13 + 14) = v19;
        _os_log_impl(&dword_21D0C9000, v11, v12, "%s: unexpected nested updateIfNeeded calls with the same update flag. This will not work correctly {updateFlag: %s}", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v21, -1, -1);
        MEMORY[0x223D46520](v13, -1, -1);
      }
    }

    MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v20);
    sub_21DBF8E0C();
    sub_21DBF5D7C();

    swift_beginAccess();
    sub_21D1AB35C(a1);
    swift_endAccess();
    if (!*(*(v7 + 16) + 16))
    {
      v2[7] = 0;
    }

    swift_beginAccess();
    sub_21D1AB35C(a1);
    swift_endAccess();
  }

  return result;
}

void sub_21D623514()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v33 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v13 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v37 = v13;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v14 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v13 + v14, v6, &qword_27CE5A0B8);

  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A0B8);
LABEL_10:
    v28 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn);
    if (v28)
    {
      [v28 setHidden_];
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

  sub_21D6397E0(v6, v12, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v16 = sub_21DAFE9D8(v7, &protocol witness table for TTRRemindersListViewModel.Reminder);
  v18 = v17;
  sub_21D6398B0(v12, type metadata accessor for TTRRemindersListViewModel.Reminder);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_10;
  }

  v20 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabelColumn);
  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v20 setHidden_];
  v21 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_priorityLabel);
  v35 = v16;
  v36 = v18;
  MEMORY[0x223D42AA0](41154, 0xA200000000000000);
  v22 = sub_21DBFA12C();

  [v21 setText_];

  v23 = *(v1 + v33);
  swift_getKeyPath();
  v35 = v23;

  sub_21DBF5D9C();

  v24 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  v25 = v23 + v24;
  v26 = v34;
  sub_21D0D3954(v25, v34, &qword_27CE5A0B8);

  if (v15(v26, 1, v7) == 1)
  {
    sub_21D0CF7E0(v26, &qword_27CE5A0B8);
    v27 = 0;
  }

  else
  {
    v29 = v26;
    v30 = v32;
    sub_21D6397E0(v29, v32, type metadata accessor for TTRRemindersListViewModel.Reminder);
    v27 = sub_21DAFE420(v7);
    sub_21D6398B0(v30, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  [v21 setTextColor_];
}

uint64_t sub_21D6239BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v1 - 8);
  v64 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v68 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  v66 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v14 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  *&v74 = v14;
  v15 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  v65 = v15;
  sub_21DBF5D9C();

  v16 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v14 + v16, v9, &qword_27CE5A0B8);

  v17 = *(v11 + 48);
  v70 = v10;
  if (v17(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A0B8);
  }

  else
  {
    sub_21D6397E0(v9, v13, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21DAFD730(v70, &v74);
    v18 = *(&v74 + 1);
    v19 = v75;
    sub_21D6398B0(v13, type metadata accessor for TTRRemindersListViewModel.Reminder);
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v18 = 0;
  v19 = 0xE000000000000000;
LABEL_5:
  v20 = v69;
  v63 = *(v69 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView);
  v21 = [v63 attributedPlaceholder];
  if (v21)
  {
    v22 = v21;
    v23 = v17;
    v24 = [v21 string];

    v25 = sub_21DBFA16C();
    v27 = v26;

    v17 = v23;
    if (v25 != v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27 = 0xE000000000000000;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  if (v27 == v19)
  {

    goto LABEL_20;
  }

LABEL_11:
  v28 = sub_21DBFC64C();

  if (v28)
  {
  }

  else
  {
    v29 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v29 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v62 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D20;
      v31 = *MEMORY[0x277D740C0];
      *(inited + 32) = *MEMORY[0x277D740C0];
      v32 = objc_opt_self();
      v33 = v31;
      v34 = [v32 placeholderTextColor];
      v35 = sub_21D0D8CF0(0, &qword_280D1B8F0);
      v36 = MEMORY[0x277D740A8];
      *(inited + 40) = v34;
      v37 = *v36;
      *(inited + 64) = v35;
      *(inited + 72) = v37;
      v38 = qword_280D176B8;
      v39 = v37;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = sub_21D900614(1);
      *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
      *(inited + 80) = v40;
      sub_21D11274C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
      swift_arrayDestroy();
      v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v42 = sub_21DBFA12C();

      type metadata accessor for Key(0);
      sub_21D639008(&qword_280D17790, type metadata accessor for Key);
      v43 = sub_21DBF9E5C();

      v44 = [v41 initWithString:v42 attributes:v43];

      [v63 setAttributedPlaceholder_];
      v20 = v69;
      v17 = v62;
    }

    else
    {

      [v63 setAttributedPlaceholder_];
    }
  }

LABEL_20:
  v45 = *(v20 + v66);
  swift_getKeyPath();
  *&v74 = v45;

  sub_21DBF5D9C();

  v46 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  v47 = v45 + v46;
  v48 = v67;
  sub_21D0D3954(v47, v67, &qword_27CE5A0B8);

  v49 = v17(v48, 1, v70);
  v50 = v68;
  if (v49 == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE5A0B8);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  else
  {
    *(&v75 + 1) = v70;
    v76 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
    sub_21D6397E0(v48, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  sub_21D0D3954(&v74, &v72, &unk_27CE5FAE0);
  if (v73)
  {
    sub_21D0D0FD0(&v72, v71);
    sub_21D62DB40(v71, v20, v50);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v52 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
  }

  else
  {
    v53 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
  }

  sub_21D0CF7E0(&v74, &unk_27CE5FAE0);
  v54 = (v20 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleModule);
  swift_beginAccess();
  if (*v54)
  {
    v55 = v54[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    v57 = v64;
    sub_21D0D3954(v50, v64, &qword_27CE5E520);
    v58 = *(v55 + 8);
    v59 = *(v58 + 16);
    swift_unknownObjectRetain();
    v59(v57, ObjectType, v58);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v50, &qword_27CE5E520);
  }

  else
  {
    sub_21D0CF7E0(v50, &qword_27CE5E520);
    return swift_endAccess();
  }
}

uint64_t sub_21D6242C8(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 184))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D624358()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel];
  swift_getKeyPath();
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v3 == 2)
  {
    [v1 setIndentationLevel_];
    [*&v1[OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_completedButton] effectiveLayoutSizeFittingSize_];
    v5 = v4 + 12.0;
  }

  else
  {
    [v1 setIndentationLevel_];
    v5 = 0.0;
  }

  return [v1 setIndentationWidth_];
}

uint64_t sub_21D62448C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v51[0] = v6;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v7 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v6 + v7, v4, &qword_27CE5A0B8);

  v8 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A0B8);
    v61 = 0u;
    v62 = 0u;
    v63 = 0;
  }

  else
  {
    *(&v62 + 1) = v8;
    v63 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v61);
    sub_21D6397E0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  }

  sub_21D0D3954(&v61, v51, &unk_27CE5FAE0);
  v10 = v51[3];
  if (v51[3])
  {
    v11 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    (*(v11 + 176))(v50, v10, v11);
    v12 = LOBYTE(v50[0]);
    __swift_destroy_boxed_opaque_existential_0(v51);
    if (v12 == 2 || (v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_21D0D3954(&v61, v51, &unk_27CE5FAE0);
    v13 = v51[3];
    if (v51[3])
    {
      v14 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v51[3]);
      v15 = (*(v14 + 168))(v13, v14);
      v45 = v16;
      v46 = v15;
      __swift_destroy_boxed_opaque_existential_0(v51);
      goto LABEL_11;
    }
  }

  sub_21D0CF7E0(v51, &unk_27CE5FAE0);
LABEL_10:
  v45 = 0;
  v46 = 0;
LABEL_11:
  v17 = *(v1 + v5);
  swift_getKeyPath();
  v51[0] = v17;

  sub_21DBF5D9C();

  v18 = *(v17 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__reminderItemLevel);

  if (v18 == 1)
  {
    v19 = *(v1 + v5);
    swift_getKeyPath();
    v51[0] = v19;

    sub_21DBF5D9C();

    v20 = *(v19 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isExpanded);

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    v44 = v21;
  }

  else
  {
    v44 = 0;
  }

  v22 = *(v1 + v5);
  swift_getKeyPath();
  v51[0] = v22;

  sub_21DBF5D9C();

  v23 = *(v22 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__infoButtonState);

  sub_21D0D3954(&v61, v51, &unk_27CE5FAE0);
  v24 = v51[3];
  if (v51[3])
  {
    v25 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v26 = (*(v25 + 224))(v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v51);
    v43 = v26 & v23;
  }

  else
  {
    sub_21D0CF7E0(v51, &unk_27CE5FAE0);
    v43 = 0;
  }

  v27 = *(v1 + v5);
  swift_getKeyPath();
  v51[0] = v27;

  sub_21DBF5D9C();

  HIDWORD(v42) = *(v27 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isInMultiSelectMode);

  v28 = *(v1 + v5);
  swift_getKeyPath();
  v51[0] = v28;

  sub_21DBF5D9C();

  v29 = *(v28 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isEditingItem);

  sub_21D0D3954(&v61, v57, &unk_27CE5FAE0);
  v30 = v58;
  if (v58)
  {
    v31 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v31 + 136))(v51, v30, v31);
    v32 = v51[0];
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    sub_21D0CF7E0(v57, &unk_27CE5FAE0);
    v32 = 3;
  }

  sub_21D0D3954(&v61, v51, &unk_27CE5FAE0);
  v33 = v51[3];
  if (v51[3])
  {
    v34 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    (*(v34 + 264))(v55, v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {
    sub_21D0CF7E0(v51, &unk_27CE5FAE0);
    sub_21D639910(v55);
  }

  sub_21D0D3954(&v61, v52, &unk_27CE5FAE0);
  v35 = v53;
  if (v53)
  {
    v36 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v37 = (*(v36 + 208))(v35, v36);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    sub_21D0CF7E0(v52, &unk_27CE5FAE0);
    v37 = 0;
  }

  *(&v60[11] + 7) = v55[11];
  *(&v60[12] + 7) = v55[12];
  *(&v60[13] + 7) = v55[13];
  *(&v60[14] + 7) = v56;
  *(&v60[7] + 7) = v55[7];
  *(&v60[8] + 7) = v55[8];
  *(&v60[9] + 7) = v55[9];
  *(&v60[10] + 7) = v55[10];
  *(&v60[3] + 7) = v55[3];
  *(&v60[4] + 7) = v55[4];
  *(&v60[5] + 7) = v55[5];
  *(&v60[6] + 7) = v55[6];
  *(v60 + 7) = v55[0];
  *(&v60[1] + 7) = v55[1];
  *(&v60[2] + 7) = v55[2];
  *(&v48[25] + 1) = v60[11];
  *(&v48[27] + 1) = v60[12];
  *(&v48[29] + 1) = v60[13];
  *&v48[31] = *(&v60[13] + 15);
  *(&v48[17] + 1) = v60[7];
  *(&v48[19] + 1) = v60[8];
  *(&v48[21] + 1) = v60[9];
  *(&v48[23] + 1) = v60[10];
  *(&v48[9] + 1) = v60[3];
  *(&v48[11] + 1) = v60[4];
  *(&v48[13] + 1) = v60[5];
  *(&v48[15] + 1) = v60[6];
  *(&v48[3] + 1) = v60[0];
  *(&v48[5] + 1) = v60[1];
  LOBYTE(v48[0]) = v44;
  BYTE1(v48[0]) = BYTE4(v42);
  BYTE2(v48[0]) = v29;
  BYTE3(v48[0]) = v43 & 1;
  v48[1] = v46;
  v48[2] = v45;
  LOBYTE(v48[3]) = v32;
  *(&v48[7] + 1) = v60[2];
  v48[33] = v37;
  v38 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_accessoryStackView);
  memcpy(v49, v48, sizeof(v49));
  nullsub_1(v49, v39, v40);
  memcpy(v50, (v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v50));
  memcpy(v51, (v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v51));
  memcpy((v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), v49, 0x110uLL);
  sub_21D639958(v48, v47);
  sub_21D0D3954(v50, v47, &unk_27CE5F320);
  sub_21D0CF7E0(v51, &unk_27CE5F320);
  memcpy(v47, v50, sizeof(v47));
  sub_21D6BBA84(v47);
  sub_21D6399B4(v48);
  sub_21D0CF7E0(v50, &unk_27CE5F320);
  return sub_21D0CF7E0(&v61, &unk_27CE5FAE0);
}

void sub_21D624D30()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
    v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath();
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

    sub_21DBF5D9C();

    v7 = *(*(v6 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions) + 16);

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = *(v1 + v5);
      swift_getKeyPath();

      sub_21DBF5D9C();

      v8 = *(v9 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__separatorFlags + 1);
    }

    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
    if (v3)
    {
      v10 = v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden];
      v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = v8;
      if (v8 == v10)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden];
  v3[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_isSeparatorForceHidden] = 1;
  if (v4)
  {
    return;
  }

LABEL_10:
  v11 = v3;
  sub_21DAA1E60();
}

id sub_21D624F0C(uint64_t a1)
{
  v9[2] = a1;
  v2 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  sub_21D6A444C(sub_21D6396B8, v9);
  v3 = [v2 visibleArrangedSubviews];
  if (v3)
  {
    v4 = v3;
    sub_21D0D8CF0(0, &qword_280D176A0);
    v5 = sub_21DBFA5EC();

    if (v5 >> 62)
    {
      v6 = sub_21DBFBD7C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  result = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStackRow);
  if (result)
  {
    return [result setHidden_];
  }

  __break(1u);
  return result;
}

void sub_21D625014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v22[1] = v5;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v6 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v5 + v6, v4, &qword_27CE5A0B8);

  v7 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE5A0B8);
    v8 = 0;
    v9 = *(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
    v10 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates;
    v11 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    while (1)
    {
      v12 = byte_282EA6BB0[v8 + 32];
      if ((*(v9 + v10) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v13 = sub_21DBF84BC();
        __swift_project_value_buffer(v13, qword_280D0F148);
        v14 = sub_21DBF84AC();
        v15 = sub_21DBFAECC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_21D0C9000, v14, v15, "makeHidden called outside of performSubviewUpdates", v16, 2u);
          MEMORY[0x223D46520](v16, -1, -1);
        }
      }

      swift_beginAccess();
      v17 = *(v9 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + v11) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_21D256D30(v17);
        *(v9 + v11) = v17;
      }

      if (v17[2] <= v12)
      {
        break;
      }

      ++v8;
      v19 = &v17[4 * v12];
      v20 = v19[4];
      *(v19 + 2) = 0u;
      *(v19 + 3) = 0u;
      *(v9 + v11) = v17;
      swift_endAccess();
      sub_21D157878(v20);
      if (v8 == 11)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = v7;
    v25 = &protocol witness table for TTRRemindersListViewModel.Reminder;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
    sub_21D6397E0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
    sub_21D0D0FD0(&v23, v26);
    sub_21D62539C(v26);
    __swift_destroy_boxed_opaque_existential_0(v26);
  }
}

void sub_21D62539C(void *a1)
{
  ObjectType = swift_getObjectType();
  v418 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v380 = *(v418 - 8);
  MEMORY[0x28223BE20](v418);
  v417 = (&v377 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v387 = sub_21DBF54CC();
  v400 = *(v387 - 8);
  MEMORY[0x28223BE20](v387);
  v385 = &v377 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v381);
  v386 = &v377 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v378 = &v377 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v411 = (&v377 - v9);
  MEMORY[0x28223BE20](v10);
  v382 = &v377 - v11;
  v395 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v383 = *(v395 - 8);
  MEMORY[0x28223BE20](v395);
  v384 = &v377 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v399 = (&v377 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v377 - v16;
  v18 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v19 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  *&v462 = v19;
  v20 = sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  LODWORD(v398) = *(v19 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__skipsEditableTextViewContentUpdate_transient);

  v21 = *(v1 + v18);
  swift_getKeyPath();
  *&v462 = v21;

  v407 = v20;
  sub_21DBF5D9C();

  v408 = v18;

  v414 = sub_21D2417CC();

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(v23 + 64))(v22, v23);
  v24 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
  {
    sub_21D0CF7E0(v17, &unk_27CE5F2B0);
    v402 = 0;
    v404 = 0;
  }

  else
  {
    v25 = *(v17 + 1);
    v402 = *v17;
    v404 = v25;
    sub_21DBF8E0C();
    sub_21D6398B0(v17, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  }

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v394 = (*(v27 + 80))(v26, v27);
  v405 = v28;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  (*(v30 + 232))(&v462, v29, v30);
  v31 = a1;
  v33 = *(&v462 + 1);
  v32 = v462;
  v34 = v31[3];
  v35 = v31[4];
  v419 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v34);
  (*(v35 + 232))(&v462, v34, v35);
  v412 = v1;
  if (*(&v462 + 1) && ((v36 = v463, v33) ? (v37 = v32) : (v37 = 0), , (v36 & 1) != 0))
  {
    v392 = v37;
  }

  else
  {

    v392 = 0;
    v33 = 0;
  }

  v38 = v419;
  v39 = &v443;
  v40 = v419[3];
  v41 = v419[4];
  __swift_project_boxed_opaque_existential_1(v419, v40);
  (*(v41 + 176))(&v477, v40, v41);
  v42 = &unk_21DC08000;
  if (v477 != 2 && (v477 & 1) == 0)
  {
    v43 = v38[3];
    v44 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v43);
    v45 = (*(v44 + 160))(v43, v44);
    if ((v46 & 1) == 0)
    {
      v98 = v45;
      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_305;
      }

      goto LABEL_65;
    }
  }

  v390 = 0;
  v401 = 0;
  while (1)
  {
    v393 = sub_21D62B8B8(v414 & 1, v38);
    *&v410 = v47;
    v48 = v38[3];
    v49 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v48);
    (*(v49 + 264))(&v443, v48, v49);
    v50 = v39[11];
    v51 = v39[13];
    v459 = v39[12];
    v460 = v51;
    v52 = v39[7];
    v53 = v39[9];
    v455 = v39[8];
    v456 = v53;
    v55 = v39[9];
    v54 = v39[10];
    v56 = v54;
    v458 = v39[11];
    v457 = v54;
    v57 = v39[3];
    v58 = v39[5];
    v451 = v39[4];
    v452 = v58;
    v60 = v39[5];
    v59 = v39[6];
    v61 = v59;
    v454 = v39[7];
    v453 = v59;
    v62 = v39[1];
    v450[0] = *v39;
    v450[1] = v62;
    v63 = v39[2];
    v65 = *v39;
    v64 = v39[1];
    v66 = v63;
    v450[3] = v39[3];
    v450[2] = v63;
    v67 = v39[13];
    v474 = v459;
    v475 = v67;
    v470 = v455;
    v471 = v55;
    v473 = v50;
    v472 = v56;
    v466 = v451;
    v467 = v60;
    v469 = v52;
    v468 = v61;
    v462 = v65;
    v463 = v64;
    v461 = v449;
    v476 = v449;
    v465 = v57;
    v464 = v66;
    if (sub_21D4B9498(&v462) == 1)
    {
      goto LABEL_19;
    }

    if ((v476 & 2) == 0 || (v438 = v472, v439 = v473, v440 = v474, v441 = v475, v434 = v468, v435 = v469, v436 = v470, v437 = v471, v430 = v464, v431 = v465, v432 = v466, v433 = v467, v428 = v462, v429 = v463, sub_21D157494(&v428) == 1))
    {
      sub_21D0CF7E0(v450, &unk_27CE5FB50);
LABEL_19:
      v391 = 0;
      v413 = 0;
      goto LABEL_20;
    }

    v427[3] = v439;
    v427[4] = v440;
    v427[5] = v441;
    v426 = v435;
    v427[0] = v436;
    v427[1] = v437;
    v427[2] = v438;
    v129 = v435;
    if (v435)
    {
      v422 = v438;
      v423 = v439;
      v424 = v440;
      v420 = v436;
      v421 = v437;
      sub_21D1D9B34(v427, v425);
      v130 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
      countAndFlagsBits = v130._countAndFlagsBits;
      object = v130._object;
      v425[2] = v422;
      v425[3] = v423;
      v425[4] = v424;
      v425[0] = v420;
      v425[1] = v421;
      sub_21D1D9B90(v425);
      v129 = v441;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    v391 = sub_21DACF058(v434, v129 & 1, countAndFlagsBits, object);
    v413 = v133;

    sub_21D0CF7E0(v450, &unk_27CE5FB50);
LABEL_20:
    *(&v410 + 1) = v33;
    v68 = v38[3];
    v69 = v38[4];
    __swift_project_boxed_opaque_existential_1(v38, v68);
    v70 = (*(v69 + 72))(v68, v69);
    v71 = objc_opt_self();
    v72 = &selRef_ttr_systemRedColor;
    if ((v70 & 1) == 0)
    {
      v72 = &selRef_secondaryLabelColor;
    }

    *&v416 = [v71 *v72];
    if (UIAccessibilityIsBoldTextEnabled())
    {
      v73 = 9;
    }

    else
    {
      v73 = 6;
    }

    if (qword_280D176B8 != -1)
    {
      v134 = v73;
      swift_once();
      v73 = v134;
    }

    v74 = sub_21D900614(v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_21DC08D20;
    v76 = *MEMORY[0x277D740C0];
    *(v75 + 32) = *MEMORY[0x277D740C0];
    v77 = objc_opt_self();
    v78 = v76;
    v397 = v77;
    v79 = [v77 secondaryLabelColor];
    v80 = sub_21D0D8CF0(0, &qword_280D1B8F0);
    *(v75 + 40) = v79;
    v81 = *MEMORY[0x277D740A8];
    *(v75 + 64) = v80;
    *(v75 + 72) = v81;
    *(v75 + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
    *(v75 + 80) = v74;
    v82 = v81;
    v396 = v74;
    v83 = sub_21D11274C(v75);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_21DC08D00;
    v388 = v80;
    v389 = v78;
    *(v84 + 32) = v78;
    *(v84 + 64) = v80;
    v85 = v83;
    v86 = v416;
    *(v84 + 40) = v416;
    v409 = v86;
    sub_21D11274C(v84);
    swift_setDeallocating();
    sub_21D0CF7E0(v84 + 32, &unk_27CE5F2C0);
    swift_deallocClassInstance();
    type metadata accessor for Key(0);
    v88 = v87;
    v89 = sub_21D639008(&qword_280D17790, type metadata accessor for Key);
    v33 = MEMORY[0x277D84F70];
    v415 = v89;
    *&v416 = v88;
    sub_21DBF9ECC();

    v90 = v419[3];
    v91 = v419[4];
    __swift_project_boxed_opaque_existential_1(v419, v90);
    v92 = (*(v91 + 72))(v90, v91);
    v93 = 0;
    v94 = 0;
    if (v92)
    {
      ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
      if (ShouldDifferentiateWithoutColor)
      {
        v93 = 0xD000000000000026;
      }

      else
      {
        v93 = 0;
      }

      if (ShouldDifferentiateWithoutColor)
      {
        v94 = 0x800000021DC64260;
      }

      else
      {
        v94 = 0;
      }
    }

    v97 = v404;
    v96 = v405;
    v403 = v94;
    if (v414)
    {

      v402 = 0;
      v97 = 0;
    }

    v98 = MEMORY[0x277D84F90];
    *&v428 = MEMORY[0x277D84F90];
    v99 = *(&v410 + 1);
    if (*(&v410 + 1))
    {
      v100 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v101 = sub_21DBFA12C();
      v102 = sub_21DBF9E5C();
      v103 = [v100 initWithString:v101 attributes:v102];

      swift_beginAccess();
      v99 = v103;
      MEMORY[0x223D42D80]();
      if (*((v428 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v428 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v98 = v428;
      swift_endAccess();

      v33 = MEMORY[0x277D84F70];
      v104 = 0x277CCA000;
      v406 = v85;
      if (!v97)
      {
LABEL_40:
        v105 = v410;
        if (!v410)
        {
          goto LABEL_49;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v104 = 0x277CCA000;
      v406 = v85;
      if (!v97)
      {
        goto LABEL_40;
      }
    }

    v109 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v110 = v403;
    swift_bridgeObjectRetain_n();
    v99 = sub_21DBFA12C();
    v111 = sub_21DBF9E5C();
    v112 = [v109 initWithString:v99 attributes:v111];

    v113 = sub_21DB0D414(v112, v93, v110);
    swift_beginAccess();
    v114 = v113;
    MEMORY[0x223D42D80]();
    if (*((v428 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v428 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v98 = v428;
    swift_endAccess();

    swift_bridgeObjectRelease_n();
    v33 = MEMORY[0x277D84F70];
    v104 = 0x277CCA000;
    v105 = v410;
    if (!v410)
    {
LABEL_49:

      if (!v96)
      {
        goto LABEL_53;
      }

LABEL_50:
      v115 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v116 = sub_21DBFA12C();
      v117 = sub_21DBF9E5C();
      v118 = [v115 initWithString:v116 attributes:v117];

      swift_beginAccess();
      v105 = v118;
      MEMORY[0x223D42D80]();
      if (*((v428 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v428 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v98 = v428;
      swift_endAccess();

      goto LABEL_53;
    }

LABEL_41:
    v106 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v107 = sub_21DBFA12C();
    v99 = sub_21DBF9E5C();

    v108 = [v106 initWithString:v107 attributes:v99];

    swift_beginAccess();
    v105 = v108;
    MEMORY[0x223D42D80]();
    if (*((v428 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v428 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    v98 = v428;
    swift_endAccess();

    if (v96)
    {
      goto LABEL_50;
    }

LABEL_53:
    if (v413)
    {
      v119 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v120 = sub_21DBFA12C();
      v121 = sub_21DBF9E5C();
      v122 = [v119 initWithString:v120 attributes:v121];

      swift_beginAccess();
      v105 = v122;
      MEMORY[0x223D42D80]();
      if (*((v428 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v428 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v98 = v428;
      swift_endAccess();
    }

    v42 = (v98 >> 62);
    if (v98 >> 62)
    {
      break;
    }

    v123 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v123)
    {
      goto LABEL_82;
    }

    if (v123 == 1)
    {
      goto LABEL_60;
    }

LABEL_75:
    v404 = v97;
    v97 = 0x800000021DC4CFE0;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v99 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v33 = sub_21DBFA12C();

    v135 = sub_21DBF9E5C();
    v105 = [v99 initWithString:v33 attributes:v135];

    if ((v98 & 0xC000000000000001) != 0)
    {
      v136 = MEMORY[0x223D44740](0, v98);
    }

    else
    {
      if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_295;
      }

      v136 = *(v98 + 32);
    }

    v137 = v136;
    v138 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

    if (v42)
    {
      v139 = sub_21DBFBD7C();
      if (v139 < 0)
      {
        __break(1u);
        goto LABEL_294;
      }
    }

    else
    {
      v139 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_21DB0D920(v139 != 0, v98);
    sub_21DB0D920(v139, v98);
    v39 = sub_21DB0D98C(v139 != 0, v139, v98);
    v38 = ((v142 >> 1) - v141);
    v143 = v138;
    if (v142 >> 1 == v141)
    {
      goto LABEL_88;
    }

    if ((v142 >> 1) > v141)
    {
      v144 = (v140 + 8 * v141);
      v143 = v138;
      do
      {
        v145 = *v144++;
        v146 = v145;
        [v138 appendAttributedString_];
        [v138 appendAttributedString_];

        v38 = (v38 - 1);
      }

      while (v38);
LABEL_88:

      swift_unknownObjectRelease();

      v96 = v405;
      v99 = v143;
      v104 = 0x277CCA000;
      goto LABEL_89;
    }

    __break(1u);
LABEL_305:
    swift_once();
LABEL_65:
    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v125 = swift_allocObject();
    v126 = MEMORY[0x277D83B88];
    *(v125 + 16) = v42[208];
    v127 = MEMORY[0x277D83C10];
    *(v125 + 56) = v126;
    *(v125 + 64) = v127;
    *(v125 + 32) = v98;
    v390 = sub_21DBFA13C();
    v401 = v128;
  }

  if ((v98 & 0x8000000000000000) != 0)
  {
    v105 = v98;
  }

  else
  {
    v105 = (v98 & 0xFFFFFFFFFFFFFF8);
  }

  if (!sub_21DBFBD7C())
  {
LABEL_82:

    v413 = 0;
    goto LABEL_109;
  }

  if (sub_21DBFBD7C() != 1)
  {
    goto LABEL_75;
  }

LABEL_60:
  if ((v98 & 0xC000000000000001) != 0)
  {
    goto LABEL_291;
  }

  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v124 = *(v98 + 32);
    goto LABEL_63;
  }

LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  swift_once();
LABEL_132:
  v215 = sub_21DBF84BC();
  __swift_project_value_buffer(v215, qword_280D0F148);
  v216 = sub_21DBF84AC();
  v217 = sub_21DBFAECC();
  if (os_log_type_enabled(v216, v217))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_21D0C9000, v216, v217, "makeVisible called outside of performSubviewUpdates", v99, 2u);
    MEMORY[0x223D46520](v99, -1, -1);
  }

  while (2)
  {
    v96 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v218 = *(v104 + v96);
    v98 = v105;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v104 + v96) = v218;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v218 = sub_21D256D30(v218);
      *(v104 + v96) = v218;
    }

    if (v218[2] >= 5uLL)
    {
      v220 = v218[20];
      v99 = v218[21];
      v218[20] = v98;
      v218[21] = 0;
      *(v218 + 11) = v416;
      *(v104 + v96) = v218;
      swift_endAccess();
      v33 = v411;
      sub_21D157878(v220);

      goto LABEL_140;
    }

    __break(1u);
LABEL_285:
    v218 = sub_21D256D30(v218);
    *(v97 + v96) = v218;
LABEL_166:
    if (v218[2] >= 7uLL)
    {
      v253 = v218[28];
      v406 = v33;
      v254 = v99;
      v99 = v218[30];
      v218[28] = v98;
      *(v218 + 29) = xmmword_21DC1F9C0;
      v218[31] = 0x402E000000000000;
      *(v97 + v416) = v218;
      swift_endAccess();
      v255 = v253;
      v104 = v416;
      v42 = v412;
      sub_21D157878(v255);

      sub_21D1576C8(v254, v105, v406);
      v33 = v411;
      goto LABEL_169;
    }

    __break(1u);
LABEL_287:
    v218 = sub_21D256D30(v218);
    *(v97 + v104) = v218;
LABEL_281:
    if (v218[2] >= 4uLL)
    {
      v375 = v218[16];
      v218[16] = v98;
      *(v218 + 17) = xmmword_21DC1F9C0;
      v218[19] = 0x402E000000000000;
      *(v97 + v104) = v218;
      swift_endAccess();
      sub_21D157878(v375);

      goto LABEL_283;
    }

    __break(1u);
LABEL_289:
    v98 = sub_21D256D30(v98);
    *(v97 + v104) = v98;
LABEL_213:
    if (*(v98 + 16) >= 9uLL)
    {
      v318 = v33 & v96 ^ 1;
      v319 = *(v98 + 288);
      v99 = *(v98 + 304);
      v33 = *(v98 + 312);
      *(v98 + 288) = v105;
      *(v98 + 296) = v318;
      *(v98 + 304) = xmmword_21DC1F9D0;
      *(v97 + v104) = v98;
      swift_endAccess();
      sub_21D157878(v319);

      sub_21D6398B0(v399, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      goto LABEL_215;
    }

    __break(1u);
LABEL_291:
    v124 = MEMORY[0x223D44740](0, v98);
LABEL_63:
    v99 = v124;

LABEL_89:

    v147._rawValue = MEMORY[0x277D84F98];
    if (v410)
    {

      v148 = v409;
      v149 = swift_isUniquelyReferenced_nonNull_native();
      *&v443 = v147;
      sub_21D4786EC(0x746165706572, 0xE600000000000000, v148, 0xD000000000000022, 0x800000021DC4B700, v149);
      v147._rawValue = v443;
    }

    if (v403)
    {

      v150 = v409;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      *&v443 = v147;
      v152 = v150;
      v96 = v405;
      sub_21D4786EC(0xD00000000000001ELL, 0x800000021DC5DB10, v152, 0xD000000000000026, 0x800000021DC64260, v151);
      v147._rawValue = v443;
    }

    if (v96)
    {

      v153 = v409;
      v154 = swift_isUniquelyReferenced_nonNull_native();
      *&v443 = v147;
      sub_21D4786EC(0x6D72616C61, 0xE500000000000000, v153, 0xD00000000000001ELL, 0x800000021DC4B7B0, v154);
      v147._rawValue = v443;
    }

    if (*(v147._rawValue + 2))
    {
      v155 = NSAttributedString.replacePlaceholdersWithSymbols(placeholderToSymbolNames:)(v147);

      v99 = v155;
    }

    v156 = v419[3];
    v157 = v419[4];
    __swift_project_boxed_opaque_existential_1(v419, v156);
    v158 = (*(v157 + 96))(v156, v157);
    v413 = v99;
    if ((v158 & 1) != 0 && v99)
    {
      v159 = v99;
      v99 = &selRef_setAttributedText_;
      v160 = [v159 string];
      if (!v160)
      {
        goto LABEL_307;
      }

      v161 = v160;
      v162 = sub_21DBFA12C();
      v163 = [v161 rangeOfString_];

      if (("_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
      {
      }

      else
      {
        v164 = sub_21DBF4B4C();

        if (v163 != v164)
        {
          v165 = sub_21D62238C(&OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___plusOneDescriptionAttachment, 1);
          v413 = v165;
          sub_21D0D8CF0(0, &qword_27CE5FAF0);
          v166 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          *(&v410 + 1) = *MEMORY[0x277D74078];
          [*(v165 + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font) descender];
          v167 = sub_21DBF5DDC();
          v168 = [v166 string];
          v169 = sub_21DBFA16C();
          v171 = v170;

          v172 = MEMORY[0x223D42B30](v169, v171);

          [v166 addAttribute:*(&v410 + 1) value:v167 range:{0, v172}];

          v99 = &selRef_setAttributedText_;
          v173 = v166;
          v174 = sub_21D47BA90(v159, 0xD00000000000001FLL, 0x800000021DC4B760, v173);

          v413 = v174;
          v159 = v174;
        }
      }

      v175 = v159;
      v176 = [v175 string];
      if (!v176)
      {
        goto LABEL_308;
      }

      v177 = v176;
      v178 = sub_21DBFA12C();
      v179 = [v177 rangeOfString_];

      if (("_SYMBOL_PLUSONE_DO_NOT_LOCALIZE" & 0x2F00000000000000) == 0x2000000000000000)
      {
      }

      else
      {
        v180 = sub_21DBF4B4C();

        if (v179 != v180)
        {
          v181 = sub_21D62238C(&OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView____lazy_storage___minusOneDescriptionAttachment, 0);
          *(&v410 + 1) = v181;
          sub_21D0D8CF0(0, &qword_27CE5FAF0);
          v182 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
          v413 = *MEMORY[0x277D74078];
          [*&v181[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListDescriptionAttachment_font] descender];
          v99 = sub_21DBF5DDC();
          v183 = [v182 &selRef_setInitialHandleCenterForDraggin_];
          v184 = sub_21DBFA16C();
          v186 = v185;

          v187 = MEMORY[0x223D42B30](v184, v186);

          [v182 addAttribute:v413 value:v99 range:{0, v187}];

          v188 = v182;
          v413 = sub_21D47BA90(v175, 0xD000000000000020, 0x800000021DC4B780, v188);
        }
      }
    }

LABEL_109:
    v189 = v419[3];
    v190 = v419[4];
    __swift_project_boxed_opaque_existential_1(v419, v189);
    (*(v190 + 240))(&v428, v189, v190);
    v191 = v428;
    if (v428)
    {
      v426 = v428;
      *&v427[0] = v429;
      sub_21DBF8E0C();
      v192 = v191;
      v42 = v412;
      sub_21D62BAF0(&v426, &v443);
      sub_21D6388A4(v191);

      v403 = *(&v443 + 1);
      *(&v410 + 1) = v443;
      v404 = v444;
      v405 = v445;
    }

    else
    {
      v404 = 0;
      v405 = 0;
      v403 = 0;
      *(&v410 + 1) = 0;
      v42 = v412;
    }

    v193 = [v397 tintColor];
    if (v401)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v194 = objc_allocWithZone(v104[275]);
      v195 = sub_21DBFA12C();

      v196 = v104;
      v197 = v406;
      v198 = sub_21DBF9E5C();
      v99 = &selRef_keyboardType;
      *&v410 = [v194 initWithString:v195 attributes:v198];

      v445 = v388;
      *&v443 = v193;
      sub_21D0CF2E8(&v443, &v428);
      v402 = v193;
      v199 = swift_isUniquelyReferenced_nonNull_native();
      *&v426 = v197;
      sub_21D476CE0(&v428, v389, v199);
      v200 = objc_allocWithZone(v196[275]);
      v201 = sub_21DBFA12C();

      v202 = sub_21DBF9E5C();

      v415 = [v200 initWithString:v201 attributes:v202];

      v42 = v412;
    }

    else
    {

      *&v410 = 0;
      v415 = 0;
      v402 = 0;
    }

    v203 = v413;
    v204 = *(v42 + v408);
    swift_getKeyPath();
    *&v443 = v204;

    sub_21DBF5D9C();

    v205 = *(v204 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hashtagsIsEditing);

    v33 = v411;
    if ((v205 & 1) == 0 && !v203)
    {
      v206 = v419[3];
      v207 = v419[4];
      __swift_project_boxed_opaque_existential_1(v419, v206);
      (*(v207 + 272))(&v443, v206, v207);
      if (v443 == 1)
      {
        if (v444 >> 62)
        {
          v208 = sub_21DBFBD7C();
        }

        else
        {
          v208 = *((v444 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v208 && v410 == 0)
        {
LABEL_124:
          sub_21D6A46B0(2u);
          v209 = v398;
          goto LABEL_127;
        }
      }

      else
      {

        if (v410 == 0)
        {
          goto LABEL_124;
        }
      }
    }

    *&v443 = *(&v410 + 1);
    *(&v443 + 1) = v403;
    v444 = v404;
    v445 = v405;
    *&v428 = v410;
    *(&v428 + 1) = v415;
    *&v429 = v402;
    v209 = v398;
    sub_21D62994C(v203, &v443, &v428, v398);
LABEL_127:
    v413 = v203;
    v97 = v419;
    sub_21D62BE10(v419, v209);
    v210 = v97[3];
    v211 = v97[4];
    __swift_project_boxed_opaque_existential_1(v97, v210);
    (*(v211 + 48))(v210, v211);
    if (v212)
    {
      v99 = v212;
      v104 = *(v42 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
      v213 = sub_21D62A97C(4);
      if (!v213)
      {
        v213 = sub_21D62D088();
      }

      v105 = v213;
      v214 = sub_21DBFA12C();

      [v105 setText_];

      v416 = *(v42 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
      if (*(v104 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
      {
        continue;
      }

      if (qword_280D0F140 != -1)
      {
        goto LABEL_296;
      }

      goto LABEL_132;
    }

    break;
  }

  v104 = *(v42 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  sub_21D6A46B0(4u);
LABEL_140:
  *&v416 = v104;
  if ((v414 & 1) != 0 || (v221 = v419[3], v222 = v419[4], __swift_project_boxed_opaque_existential_1(v419, v221), (*(v222 + 104))(&v443, v221, v222), (v223 = v445) == 0))
  {
    sub_21D6A46B0(5u);
    goto LABEL_157;
  }

  v398 = *(&v443 + 1);
  v224 = v443;
  v401 = v444;
  v225 = v446;
  v105 = v447;
  LODWORD(v406) = v448;
  v226 = sub_21D62AB60(5, type metadata accessor for TTRIRemindersListCellLocationView);
  if (!v226)
  {
    type metadata accessor for TTRIRemindersListCellLocationView();
    v226 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v99 = v226;
  v227 = objc_opt_self();
  v228 = v224;
  v229 = [v227 configurationWithPointSize_];
  v397 = v224;
  if (v224)
  {
    v224 = [v228 imageWithConfiguration_];
  }

  v230 = *(v99 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageView);
  if (v230)
  {
    [v230 setImage_];
    [v99 setNeedsLayout];

    v231 = *(v99 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor);
    v232 = v398;
    *(v99 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor) = v398;
    v233 = v232;

    sub_21D6B1DD0();
    sub_21D6B1C78(v401, v223, v225, v105, v406 & 1);
    v104 = v416;
    if (*(v416 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
    {
      goto LABEL_152;
    }

    if (qword_280D0F140 != -1)
    {
      goto LABEL_303;
    }

    while (1)
    {
      v234 = sub_21DBF84BC();
      __swift_project_value_buffer(v234, qword_280D0F148);
      v235 = sub_21DBF84AC();
      v236 = sub_21DBFAECC();
      if (os_log_type_enabled(v235, v236))
      {
        v237 = v105;
        v238 = swift_slowAlloc();
        *v238 = 0;
        _os_log_impl(&dword_21D0C9000, v235, v236, "makeVisible called outside of performSubviewUpdates", v238, 2u);
        v239 = v238;
        v105 = v237;
        MEMORY[0x223D46520](v239, -1, -1);
      }

LABEL_152:
      v393 = v223;
      v394 = v225;
      v240 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      swift_beginAccess();
      v33 = *(v104 + v240);
      v241 = v99;
      v242 = swift_isUniquelyReferenced_nonNull_native();
      *(v104 + v240) = v33;
      if ((v242 & 1) == 0)
      {
        v33 = sub_21D256D30(v33);
        *(v104 + v240) = v33;
      }

      if (v33[2] < 6uLL)
      {
        __break(1u);
LABEL_298:
        swift_once();
LABEL_162:
        v248 = sub_21DBF84BC();
        __swift_project_value_buffer(v248, qword_280D0F148);
        v249 = sub_21DBF84AC();
        v250 = sub_21DBFAECC();
        if (os_log_type_enabled(v249, v250))
        {
          v251 = swift_slowAlloc();
          *v251 = 0;
          _os_log_impl(&dword_21D0C9000, v249, v250, "makeVisible called outside of performSubviewUpdates", v251, 2u);
          MEMORY[0x223D46520](v251, -1, -1);
        }

LABEL_165:
        v97 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        v96 = v416;
        swift_beginAccess();
        v218 = *(v97 + v96);
        v98 = v104;
        v252 = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + v96) = v218;
        if ((v252 & 1) == 0)
        {
          goto LABEL_285;
        }

        goto LABEL_166;
      }

      v243 = v33[24];
      v99 = v33[25];
      v33[24] = v241;
      *(v33 + 25) = xmmword_21DC1F9C0;
      v33[27] = 0x402E000000000000;
      *(v416 + v240) = v33;
      swift_endAccess();
      v104 = v416;
      sub_21D157878(v243);

      sub_21D4B94BC(v397, v398, v401, v393);
      v33 = v411;
LABEL_157:
      v244 = v419[3];
      v245 = v419[4];
      __swift_project_boxed_opaque_existential_1(v419, v244);
      (*(v245 + 248))(&v443, v244, v245);
      v105 = *(&v443 + 1);
      if (*(&v443 + 1))
      {
        v99 = v443;
        v33 = v444;
        v246 = sub_21D62AB60(6, type metadata accessor for TTRIRemindersListCellPersonView);
        if (!v246)
        {
          type metadata accessor for TTRIRemindersListCellPersonView();
          v246 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        }

        v104 = v246;
        v247 = v33;
        sub_21D6D40C4(v33);
        sub_21DBF8E0C();
        sub_21D6D41B4(v99, v105);
        if ((*(v416 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 == -1)
          {
            goto LABEL_162;
          }

          goto LABEL_298;
        }

        goto LABEL_165;
      }

      sub_21D6A46B0(6u);
LABEL_169:
      v256 = *(v42 + v408);
      swift_getKeyPath();
      *&v443 = v256;

      sub_21DBF5D9C();

      LODWORD(v408) = *(v256 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__isCompactHorizontalSizeClass);

      v257 = v419[3];
      v258 = v419[4];
      __swift_project_boxed_opaque_existential_1(v419, v257);
      v259 = (*(v258 + 120))(v257, v258);
      if (v259)
      {
        if (*(v259 + 16))
        {
          v260 = v384;
          sub_21D639848(v259 + ((*(v383 + 80) + 32) & ~*(v383 + 80)), v384, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);

          v261 = v399;
          sub_21D6397E0(v260, v399, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
          v262 = v419[3];
          v263 = v419[4];
          v264 = v261;
          __swift_project_boxed_opaque_existential_1(v419, v262);
          v265 = (*(v263 + 144))(v262, v263);
          v266 = v395;
          if (v265 & 1) != 0 && (sub_21DBF53CC())
          {
            v406 = 0;
            LODWORD(v407) = 1;
          }

          else
          {
            LODWORD(v407) = 0;
            v406 = 1;
          }

          v267 = v400;
          v268 = sub_21D62AB60(8, type metadata accessor for TTRIRemindersListReminderCellLinkView);
          if (v268)
          {
            v269 = v268;
            v270 = [v269 URL];
            if (v270)
            {
              v271 = v382;
              v272 = v270;
              sub_21DBF546C();

              v273 = 0;
            }

            else
            {
              v273 = 1;
              v271 = v382;
            }

            v277 = *(v267 + 56);
            v278 = v387;
            v277(v271, v273, 1, v387);
            v279 = *(v266 + 20);
            v280 = *(v400 + 16);
            v398 = ((v400 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
            v401 = v280;
            v280(v33, v264 + v279, v278);
            v277(v33, 0, 1, v278);
            v281 = *(v381 + 48);
            v282 = v386;
            sub_21D0D3954(v271, v386, &qword_27CE5EA20);
            v283 = v400;
            sub_21D0D3954(v33, v282 + v281, &qword_27CE5EA20);
            v284 = v33;
            v285 = *(v283 + 48);
            if (v285(v282, 1, v278) == 1)
            {
              sub_21D0CF7E0(v284, &qword_27CE5EA20);
              v286 = v386;
              sub_21D0CF7E0(v271, &qword_27CE5EA20);
              v287 = v285(v286 + v281, 1, v278);
              v264 = v399;
              v276 = v406;
              if (v287 == 1)
              {
                sub_21D0CF7E0(v286, &qword_27CE5EA20);
                goto LABEL_189;
              }

LABEL_187:
              sub_21D0CF7E0(v286, &unk_27CE5F2A0);
              goto LABEL_192;
            }

            v288 = v378;
            sub_21D0D3954(v282, v378, &qword_27CE5EA20);
            v289 = v285(v282 + v281, 1, v278);
            v276 = v406;
            if (v289 == 1)
            {
              sub_21D0CF7E0(v411, &qword_27CE5EA20);
              v286 = v386;
              sub_21D0CF7E0(v382, &qword_27CE5EA20);
              (*(v283 + 8))(v288, v278);
              v264 = v399;
              goto LABEL_187;
            }

            v290 = v282 + v281;
            v291 = v385;
            (*(v283 + 32))(v385, v290, v278);
            sub_21D639008(&qword_280D171D0, MEMORY[0x277CC9260]);
            v292 = sub_21DBFA10C();
            v293 = *(v283 + 8);
            v293(v291, v278);
            sub_21D0CF7E0(v411, &qword_27CE5EA20);
            sub_21D0CF7E0(v382, &qword_27CE5EA20);
            v293(v288, v278);
            sub_21D0CF7E0(v386, &qword_27CE5EA20);
            v264 = v399;
            if (v292)
            {
LABEL_189:
              sub_21D0D8CF0(0, &qword_280D17680);
              v294 = *&v269[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
              v295 = sub_21DBFB63C();

              if ((v295 & 1) == 0)
              {
                goto LABEL_192;
              }

              v296 = [v269 _preferredSizeClass];

              if (v296 == v276)
              {
                v297 = v395;
LABEL_195:
                v96 = v407;
                v104 = v416;
                if (*(v264 + *(v297 + 24)))
                {
                  v308 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata;
                  if ((v269[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] & 1) == 0)
                  {
                    [v269 setMetadata_];
                    v269[v308] = 1;
                  }
                }

                v309 = *MEMORY[0x277CEC618];
                LODWORD(v33) = v408;
                if (!v408)
                {
                  v309 = 304.0;
                }

                if (v96)
                {
                  v310 = v309;
                }

                else
                {
                  v310 = *MEMORY[0x277CEC620];
                }

                if (v96)
                {
                  v311 = 200.0;
                }

                else
                {
                  v311 = *(MEMORY[0x277CEC620] + 8);
                }

                v105 = v269;
                [v105 setMaximumLayoutSize_];
                v42 = v412;
                if ((*(v104 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
                {
                  if (qword_280D0F140 != -1)
                  {
                    swift_once();
                  }

                  v312 = sub_21DBF84BC();
                  __swift_project_value_buffer(v312, qword_280D0F148);
                  v313 = sub_21DBF84AC();
                  v314 = sub_21DBFAECC();
                  if (os_log_type_enabled(v313, v314))
                  {
                    v315 = swift_slowAlloc();
                    *v315 = 0;
                    _os_log_impl(&dword_21D0C9000, v313, v314, "makeVisible called outside of performSubviewUpdates", v315, 2u);
                    v316 = v315;
                    v96 = v407;
                    MEMORY[0x223D46520](v316, -1, -1);
                  }
                }

                v97 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
                swift_beginAccess();
                v98 = *(v97 + v104);
                v317 = swift_isUniquelyReferenced_nonNull_native();
                *(v97 + v104) = v98;
                if ((v317 & 1) == 0)
                {
                  goto LABEL_289;
                }

                goto LABEL_213;
              }
            }

            else
            {
LABEL_192:
            }

            v275 = v400;
            v274 = v401;
          }

          else
          {
            v274 = *(v267 + 16);
            v275 = v267;
            v276 = v406;
          }

          v297 = v395;
          v298 = v385;
          v299 = v387;
          v274(v385, v264 + *(v395 + 20), v387);
          v300 = *v264;
          v301 = type metadata accessor for TTRIRemindersListReminderCellLinkView();
          v302 = objc_allocWithZone(v301);
          v302[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] = 0;
          *&v302[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID] = v300;
          v303 = v300;
          v304 = sub_21DBF53FC();
          v442.receiver = v302;
          v442.super_class = v301;
          v305 = objc_msgSendSuper2(&v442, sel_initWithURL_, v304);

          (*(v275 + 8))(v298, v299);
          v269 = v305;
          [v269 _setApplyCornerRadius_];
          [v269 _setForceFlexibleWidth_];
          v306 = [v269 layer];
          [v306 setCornerRadius_];

          v307 = [v269 layer];
          [v307 setMaskedCorners_];

          [v269 _setDisableAnimations_];
          [v269 _setPreferredSizeClass_];

          goto LABEL_195;
        }
      }

      sub_21D6A46B0(8u);
LABEL_215:
      v320 = v419[3];
      v321 = v419[4];
      __swift_project_boxed_opaque_existential_1(v419, v320);
      v322 = (*(v321 + 128))(v320, v321);
      if (!v322)
      {
        goto LABEL_221;
      }

      v323 = v322;
      if (!*(v322 + 16))
      {

LABEL_221:
        sub_21D6A46B0(9u);
        if ((v414 & 1) == 0)
        {
          goto LABEL_260;
        }

LABEL_271:
        v367 = sub_21D62AB60(3, type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView);
        if (v367)
        {
          v105 = v367;
        }

        else
        {
          v105 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellQuickBarStackView()) initWithFrame_];
          v446 = &off_282EC9600;
          v445 = ObjectType;
          *&v443 = v42;
          v368 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_quickBarDelegate;
          swift_beginAccess();
          v369 = v42;
          sub_21D639710(&v443, &v105[v368]);
          swift_endAccess();
        }

        sub_21D0D32E4(v419, &v443);
        v370 = OBJC_IVAR____TtC15RemindersUICore46TTRIRemindersListReminderCellQuickBarStackView_viewModel;
        swift_beginAccess();
        v96 = &unk_27CE5FAE0;
        sub_21D0EB8DC(&v443, &v105[v370], &unk_27CE5FAE0);
        swift_endAccess();
        sub_21D4B71C0();
        sub_21D0CF7E0(&v443, &unk_27CE5FAE0);
        if ((*(v104 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 != -1)
          {
            swift_once();
          }

          v371 = sub_21DBF84BC();
          __swift_project_value_buffer(v371, qword_280D0F148);
          v372 = sub_21DBF84AC();
          v373 = sub_21DBFAECC();
          if (os_log_type_enabled(v372, v373))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            _os_log_impl(&dword_21D0C9000, v372, v373, "makeVisible called outside of performSubviewUpdates", v96, 2u);
            MEMORY[0x223D46520](v96, -1, -1);
          }
        }

        v97 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        swift_beginAccess();
        v218 = *(v97 + v104);
        v98 = v105;
        v374 = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + v104) = v218;
        if ((v374 & 1) == 0)
        {
          goto LABEL_287;
        }

        goto LABEL_281;
      }

      v225 = v419[3];
      v324 = v419[4];
      __swift_project_boxed_opaque_existential_1(v419, v225);
      if (((*(v324 + 144))(v225, v324) & 1) == 0)
      {
        v327 = sub_21D62AB60(9, type metadata accessor for TTRIRemindersListSmallImageAttachmentsView);
        if (v327)
        {
          v223 = v327;
        }

        else
        {
          v223 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListSmallImageAttachmentsView()) init];
          *(v223 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_attachmentsDelegate + 8) = &off_282EC9568;
          swift_unknownObjectWeakAssign();
        }

        v340 = *(v323 + 16);
        if (v340)
        {
          v411 = v223;
          *&v443 = MEMORY[0x277D84F90];
          sub_21D18F304(0, v340, 0);
          v341 = v443;
          v342 = v323 + ((*(v380 + 80) + 32) & ~*(v380 + 80));
          v225 = *(v380 + 72);
          do
          {
            v343 = v417;
            sub_21D639848(v342, v417, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
            v344 = *(v343 + *(v418 + 24));
            v345 = *v343;
            v346 = v344;
            v99 = v345;
            sub_21D6398B0(v343, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
            *&v443 = v341;
            v348 = *(v341 + 16);
            v347 = *(v341 + 24);
            if (v348 >= v347 >> 1)
            {
              sub_21D18F304((v347 > 1), v348 + 1, 1);
              v341 = v443;
            }

            *(v341 + 16) = v348 + 1;
            v349 = v341 + 16 * v348;
            *(v349 + 32) = v344;
            *(v349 + 40) = v99;
            v342 += v225;
            --v340;
          }

          while (v340);

          v104 = v416;
          v223 = v411;
        }

        else
        {

          v341 = MEMORY[0x277D84F90];
        }

        sub_21D6BFD90(v341);
        if ((*(v104 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
        {
          if (qword_280D0F140 != -1)
          {
            swift_once();
          }

          v362 = sub_21DBF84BC();
          __swift_project_value_buffer(v362, qword_280D0F148);
          v363 = sub_21DBF84AC();
          v364 = sub_21DBFAECC();
          if (os_log_type_enabled(v363, v364))
          {
            v225 = swift_slowAlloc();
            *v225 = 0;
            _os_log_impl(&dword_21D0C9000, v363, v364, "makeVisible called outside of performSubviewUpdates", v225, 2u);
            MEMORY[0x223D46520](v225, -1, -1);
          }
        }

        v42 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
        swift_beginAccess();
        v105 = *(v42 + v104);
        v358 = v223;
        v365 = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + v104) = v105;
        if (v365)
        {
          goto LABEL_269;
        }

        goto LABEL_301;
      }

      v325 = sub_21D62AB60(9, type metadata accessor for TTRIRemindersListLargeImageAttachmentsView);
      if (v325)
      {
        v326 = v325;
      }

      else
      {
        v326 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListLargeImageAttachmentsView()) initWithFrame_];
        v328 = &v326[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate];
        swift_beginAccess();
        *(v328 + 1) = &protocol witness table for TTRIRemindersListReminderCell_collectionView;
        swift_unknownObjectWeakAssign();
      }

      v329 = *(v323 + 16);
      if (v329)
      {
        v411 = v326;
        *&v443 = MEMORY[0x277D84F90];
        sub_21D18F33C(0, v329, 0);
        v330 = v443;
        v331 = v323 + ((*(v380 + 80) + 32) & ~*(v380 + 80));
        v332 = *(v380 + 72);
        do
        {
          v333 = v417;
          sub_21D639848(v331, v417, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          v334 = *(v333 + *(v418 + 24));
          v335 = *v333;
          v336 = v334;
          v99 = v335;
          sub_21D6398B0(v333, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
          *&v443 = v330;
          v338 = *(v330 + 16);
          v337 = *(v330 + 24);
          if (v338 >= v337 >> 1)
          {
            sub_21D18F33C((v337 > 1), v338 + 1, 1);
            v330 = v443;
          }

          *(v330 + 16) = v338 + 1;
          v339 = v330 + 16 * v338;
          *(v339 + 32) = v334;
          *(v339 + 40) = v99;
          v331 += v332;
          --v329;
        }

        while (v329);

        v326 = v411;
        v42 = v412;
        v104 = v416;
      }

      else
      {

        v330 = MEMORY[0x277D84F90];
      }

      TTRIRemindersListLargeImageAttachmentsView.viewModels.setter(v330);
      v223 = v408;
      if (v408)
      {
        v350 = 0;
      }

      else
      {
        v350 = 0x4073000000000000;
      }

      v351 = &v326[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
      swift_beginAccess();
      v352 = *v351;
      v353 = *(v351 + 8);
      *v351 = v350;
      *(v351 + 8) = v223;
      if (v223)
      {
        if (v353)
        {
          goto LABEL_250;
        }
      }

      else
      {
        if (v352 != 304.0)
        {
          LOBYTE(v353) = 1;
        }

        if ((v353 & 1) == 0)
        {
          goto LABEL_250;
        }
      }

      [v326 invalidateIntrinsicContentSize];
LABEL_250:
      if ((*(v104 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates) & 1) == 0)
      {
        if (qword_280D0F140 != -1)
        {
          swift_once();
        }

        v354 = sub_21DBF84BC();
        __swift_project_value_buffer(v354, qword_280D0F148);
        v355 = sub_21DBF84AC();
        v356 = sub_21DBFAECC();
        if (os_log_type_enabled(v355, v356))
        {
          v357 = swift_slowAlloc();
          *v357 = 0;
          _os_log_impl(&dword_21D0C9000, v355, v356, "makeVisible called outside of performSubviewUpdates", v357, 2u);
          MEMORY[0x223D46520](v357, -1, -1);
        }
      }

      v104 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
      v225 = v416;
      swift_beginAccess();
      v105 = *(v104 + v225);
      v358 = v326;
      v359 = swift_isUniquelyReferenced_nonNull_native();
      *(v104 + v225) = v105;
      if ((v359 & 1) == 0)
      {
        v105 = sub_21D256D30(v105);
        *(v104 + v416) = v105;
      }

      if (*(v105 + 2) >= 0xAuLL)
      {
        v360 = *(v105 + 40);
        v33 = *(v105 + 43);
        *(v105 + 40) = v358;
        *(v105 + 41) = v223 ^ 1;
        *(v105 + 21) = xmmword_21DC1F9D0;
        v361 = v416;
        *(v104 + v416) = v105;
        v104 = v361;
        swift_endAccess();
        sub_21D157878(v360);

        if ((v414 & 1) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_271;
      }

      __break(1u);
LABEL_301:
      v105 = sub_21D256D30(v105);
      *(v42 + v104) = v105;
LABEL_269:
      if (*(v105 + 2) >= 0xAuLL)
      {
        v366 = *(v105 + 40);
        v33 = *(v105 + 43);
        *(v105 + 40) = v358;
        *(v105 + 328) = xmmword_21DC1F9C0;
        *(v105 + 43) = 0x402E000000000000;
        *(v42 + v104) = v105;
        swift_endAccess();
        sub_21D157878(v366);

        v42 = v412;
        if (v414)
        {
          goto LABEL_271;
        }

LABEL_260:
        sub_21D6A46B0(3u);
LABEL_283:
        v376 = v396;
        sub_21D62D18C(v419);

        sub_21D6396C0(v410, v415, v402);
        sub_21D60E688(*(&v410 + 1), v403, v404);

        return;
      }

      __break(1u);
LABEL_303:
      swift_once();
    }
  }

  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);

  __break(1u);
}

void sub_21D628D9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel;
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v42[9] = v3;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

  sub_21DBF5D9C();

  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteSuggestions);
  sub_21DBF8E0C();

  if (!*(v4 + 16) || (v5 = [objc_opt_self() daemonUserDefaults], v6 = objc_msgSend(v5, sel_enableAutoCompleteReminders), v5, !v6))
  {
    v10 = (v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
    if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions) || ([v10[1] setHidden_], !*v10))
    {
LABEL_23:
      v38 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
      if (v38)
      {
        v39 = v38;

        v40 = &v39[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
        v41 = *&v39[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
        *v40 = 0;
        *(v40 + 1) = 0;
        sub_21D0D0E88(v41);

        return;
      }

      goto LABEL_26;
    }

    v11 = *v10;
    v12 = sub_21D6AC05C();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_21DBFBD7C();
      if (v14)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_9:
        if (v14 < 1)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        for (i = 0; i != v14; ++i)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x223D44740](i, v13);
          }

          else
          {
            v16 = *(v13 + 8 * i + 32);
          }

          v17 = v16;
          [*&v16[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
        }
      }
    }

    goto LABEL_23;
  }

  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions + 8);
    v9 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_autoCompleteSuggestions);
  }

  else
  {
    sub_21D62B200(v1);
    v9 = v18;
    v7 = 0;
    v8 = v19;
  }

  sub_21D639460(v7);
  [v8 setHidden_];
  v20 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView;
  v21 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_containerView);
  if (v21)
  {
    v22 = *(v21 + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignment);
    v23 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
    swift_beginAccess();
    v24 = *&v9[v23];
    *&v9[v23] = v22;
    v25 = v9;
    v26.n128_u64[0] = 0x3E50000000000000;
    v27.i64[0] = v24;
    if ((sub_21D110D14(v27, v26, v22, v28) & 1) == 0)
    {
      [v25 setNeedsLayout];
    }

    v29 = *(v1 + v20);
    if (v29)
    {
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = &v29[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
      v32 = *&v29[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_leadingShiftForReminderTitleAlignmentDidChange];
      *v31 = sub_21D6394A0;
      v31[1] = v30;
      v33 = v29;

      sub_21D0D0E88(v32);

      v34 = *(v1 + v2);
      swift_getKeyPath();
      v42[8] = v34;

      sub_21DBF5D9C();

      v35 = *(v34 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery);
      v36 = *(v34 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__autoCompleteQuery + 8);
      sub_21DBF8E0C();

      MEMORY[0x28223BE20](v37);
      v42[2] = v4;
      v42[3] = v25;
      v42[4] = v1;
      v42[5] = v35;
      v42[6] = v36;
      TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)(sub_21D6394A8, v42);

      sub_21D5D3E40(v4);
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_21D629228(uint64_t a1)
{

  v2 = sub_21D2414F0();

  [*(a1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_titleTextView) setUserInteractionEnabled_];
  v3 = sub_21D62E958(1u);
  if (v3)
  {
    v4 = v3;
    sub_21D62E390(v3);
  }

  v5 = sub_21D62EAA4(2u);
  [v5 setUserInteractionEnabled_];
}

uint64_t sub_21D6292FC()
{
  v1 = sub_21DBF858C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F280);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v35 = sub_21DBF85BC();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF856C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v0;
  v14 = v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_cellOverrideConfiguration;
  swift_beginAccess();
  if (*(v14 + 2) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C38);
    sub_21DBF85DC();
    *(swift_allocObject() + 16) = xmmword_21DC08D00;
    (*(v11 + 104))(v13, *MEMORY[0x277D74A88], v10);
    v15 = sub_21DBF859C();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    sub_21DBF85AC();
    sub_21DBF854C();
    (*(v7 + 8))(v9, v35);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v32 = v13;
    v33 = v2;
    v16 = *(v36 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
    swift_getKeyPath();
    v37 = v16;
    sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);

    sub_21DBF5D9C();

    v17 = *(v16 + OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__hasEditingAccessories);

    if (v17 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C38);
      v30 = *(*(sub_21DBF85DC() - 8) + 72);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_21DC08D20;
      v28 = *MEMORY[0x277D74A88];
      v29 = v1;
      v18 = *(v11 + 104);
      v26 = v10;
      v27 = v18;
      v19 = v32;
      v18(v32);
      v20 = sub_21DBF859C();
      v25 = *(*(v20 - 8) + 56);
      v25(v6, 1, 1, v20);
      sub_21DBF85AC();
      sub_21DBF854C();
      (*(v7 + 8))(v9, v35);
      v21 = *(v11 + 8);
      v22 = v26;
      v21(v19, v26);
      v27(v19, v28, v22);
      v25(v6, 1, 1, v20);
      v23 = v34;
      sub_21DBF857C();
      sub_21DBF85CC();
      (*(v33 + 8))(v23, v29);
      v21(v19, v22);
    }
  }

  return sub_21DBFB4DC();
}

void sub_21D62994C(void *a1, uint64_t a2, void **a3, int a4)
{
  v5 = v4;
  LODWORD(v122) = a4;
  v125 = a1;
  v118 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v8 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v112 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v116);
  v11 = v105 - v10;
  *&v134 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v115 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = (v105 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v15 - 8);
  v124 = v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v20 - 8);
  v114 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v105 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v105 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0B8);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v105 - v29;
  v31 = *(a2 + 8);
  v129 = *a2;
  v128 = v31;
  v32 = *(a2 + 24);
  v127 = *(a2 + 16);
  v126 = v32;
  v33 = a3[1];
  v132 = *a3;
  v131 = v33;
  v130 = a3[2];
  v34 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_contentStack);
  v35 = sub_21D62AB60(2, type metadata accessor for TTRIRemindersListDescriptionAndTagsView);
  v123 = v35;
  v119 = v11;
  v117 = v8;
  v121 = v27;
  v120 = v24;
  if (v35)
  {
    v36 = v35;
    v135 = v35;
  }

  else
  {
    v135 = sub_21D62ACD0();
    v36 = 0;
  }

  v37 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_mainViewModel);
  swift_getKeyPath();
  v140 = v37;
  sub_21D639008(&qword_280D0D490, type metadata accessor for TTRIRemindersListReminderCellObservableViewModel);
  v38 = v36;

  sub_21DBF5D9C();

  v39 = OBJC_IVAR____TtC15RemindersUICore48TTRIRemindersListReminderCellObservableViewModel__viewModel;
  swift_beginAccess();
  sub_21D0D3954(v37 + v39, v30, &qword_27CE5A0B8);

  v40 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  if ((*(*(v40 - 8) + 48))(v30, 1, v40) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5A0B8);
LABEL_11:
    v53 = v38;
    goto LABEL_37;
  }

  v138 = v40;
  v139 = &protocol witness table for TTRRemindersListViewModel.Reminder;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v136);
  sub_21D6397E0(v30, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListViewModel.Reminder);
  sub_21D0D0FD0(&v136, &v140);
  v42 = (v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_hashtagModule);
  swift_beginAccess();
  v43 = *v42;
  if (!*v42)
  {
    __swift_destroy_boxed_opaque_existential_0(&v140);
    goto LABEL_11;
  }

  v111 = v5;
  v44 = v42[1];
  v45 = v141;
  v46 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  v47 = *(v46 + 272);
  swift_unknownObjectRetain();
  v47(&v136, v45, v46);
  v107 = v136;
  v109 = *(&v136 + 1);
  v108 = v137;
  ObjectType = swift_getObjectType();
  (*(v44 + 160))(v135, ObjectType, v44);
  v110 = ObjectType;
  if (v122)
  {
    v122 = v34;
    (*(v44 + 16))(ObjectType, v44);
    v49 = (*(v133 + 48))(v19, 1, v134);
    v106 = v38;
    v105[1] = v43;
    if (v49)
    {
      sub_21D0CF7E0(v19, &unk_27CE5CD80);
      v50 = 1;
      v51 = v119;
      v52 = v121;
    }

    else
    {
      v55 = v113;
      sub_21D639848(v19, v113, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v19, &unk_27CE5CD80);
      v52 = v121;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v121);
      sub_21D6398B0(v55, type metadata accessor for TTRRemindersListViewModel.Item);
      v50 = 0;
      v51 = v119;
    }

    v56 = v117;
    v113 = *(v117 + 56);
    v57 = v118;
    (v113)(v52, v50, 1, v118);
    v58 = v141;
    v59 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141);
    v60 = v115;
    (*(v59 + 8))(v58, v59);
    v61 = v120;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v120);
    v62 = v60;
    v63 = v52;
    sub_21D6398B0(v62, type metadata accessor for TTRRemindersListViewModel.Item);
    (v113)(v61, 0, 1, v57);
    v64 = *(v116 + 48);
    sub_21D0D3954(v52, v51, &qword_27CE5FB90);
    sub_21D0D3954(v61, v51 + v64, &qword_27CE5FB90);
    v65 = *(v56 + 48);
    if (v65(v51, 1, v57) == 1)
    {
      sub_21D0CF7E0(v61, &qword_27CE5FB90);
      sub_21D0CF7E0(v63, &qword_27CE5FB90);
      v66 = v65(v51 + v64, 1, v57);
      v5 = v111;
      v53 = v106;
      v67 = v51;
      v34 = v122;
      if (v66 == 1)
      {
        sub_21D0CF7E0(v67, &qword_27CE5FB90);
        v54 = 1;
        goto LABEL_21;
      }
    }

    else
    {
      v68 = v114;
      sub_21D0D3954(v51, v114, &qword_27CE5FB90);
      v69 = v65(v51 + v64, 1, v57);
      v5 = v111;
      v53 = v106;
      v67 = v51;
      if (v69 != 1)
      {
        v70 = v112;
        sub_21D6397E0(v51 + v64, v112, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v54 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v68, v70);
        sub_21D6398B0(v70, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v120, &qword_27CE5FB90);
        sub_21D0CF7E0(v121, &qword_27CE5FB90);
        sub_21D6398B0(v68, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v51, &qword_27CE5FB90);
        v34 = v122;
        goto LABEL_21;
      }

      sub_21D0CF7E0(v120, &qword_27CE5FB90);
      sub_21D0CF7E0(v121, &qword_27CE5FB90);
      sub_21D6398B0(v68, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v34 = v122;
    }

    sub_21D0CF7E0(v67, &qword_27CE5F2E0);
    v54 = 0;
    goto LABEL_21;
  }

  v54 = 0;
  v5 = v111;
  v53 = v38;
LABEL_21:
  v71 = v141;
  v72 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  v73 = v124;
  (*(v72 + 8))(v71, v72);
  (*(v133 + 56))(v73, 0, 1, v134);
  v74 = v110;
  (*(v44 + 24))(v73, v110, v44);
  if (v54)
  {
  }

  else
  {
    *&v136 = v107;
    *(&v136 + 1) = v109;
    v137 = v108;
    (*(v44 + 48))(&v136, v74, v44);
  }

  v75 = *(v44 + 72);
  v76 = v125;
  v77 = v125;
  v75(v76, v74, v44);
  v78 = v141;
  v79 = v142;
  __swift_project_boxed_opaque_existential_1(&v140, v141);
  (*(v79 + 16))(&v136, v78, v79);
  v80 = BYTE2(v136);

  (*(v44 + 184))(v80, v74, v44);
  if (v123 && (v81 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView, swift_beginAccess(), (v82 = *&v53[v81]) != 0) && ([v82 isEditing] & 1) != 0)
  {
    v83 = 0;
  }

  else
  {
    v84 = v141;
    v85 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, v141);
    (*(v85 + 272))(&v136, v84, v85);
    if (v136 == 1)
    {
      if (v137 >> 62)
      {
        v86 = sub_21DBFBD7C();
      }

      else
      {
        v86 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v86 == 0;
    }

    else
    {

      v83 = 1;
    }
  }

  (*(v44 + 176))(v83, v74, v44);
  *&v136 = v129;
  *(&v136 + 1) = v128;
  v137 = v127;
  v138 = v126;
  v87 = *(v44 + 96);
  sub_21D60E630(v129, v128, v127, v126);
  v87(&v136, v74, v44);
  v88 = v132;
  if (v132)
  {
    v89 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v90 = sub_21D6397D8;
    v91 = v131;
    v92 = v131;
    v93 = v130;
    v94 = v130;
  }

  else
  {
    v92 = 0;
    v94 = 0;
    v90 = 0;
    v89 = 0;
    v91 = v131;
    v93 = v130;
  }

  *&v136 = v88;
  *(&v136 + 1) = v92;
  v137 = v94;
  v138 = v90;
  v139 = v89;
  v95 = *(v44 + 120);
  sub_21D639788(v88, v91, v93);
  v95(&v136, v74, v44);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v140);
LABEL_37:
  v134 = *(v5 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_labelSpacing);
  if (*(v34 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_42;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v96 = sub_21DBF84BC();
    __swift_project_value_buffer(v96, qword_280D0F148);
    v97 = sub_21DBF84AC();
    v98 = sub_21DBFAECC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_21D0C9000, v97, v98, "makeVisible called outside of performSubviewUpdates", v99, 2u);
      MEMORY[0x223D46520](v99, -1, -1);
    }

LABEL_42:
    v100 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v101 = *(v34 + v100);
    v102 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v100) = v101;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_21D256D30(v101);
      *(v34 + v100) = v101;
    }

    if (v101[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v104 = v101[12];
  v101[12] = v102;
  v101[13] = 0;
  *(v101 + 7) = v134;
  *(v34 + v100) = v101;
  swift_endAccess();
  sub_21D157878(v104);
}