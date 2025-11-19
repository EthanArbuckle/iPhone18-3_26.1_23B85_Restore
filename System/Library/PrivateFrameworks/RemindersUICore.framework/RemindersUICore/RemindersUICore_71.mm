void sub_21D79C2D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int128 *a5@<X4>, void **a6@<X5>, int a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v306 = a8;
  LODWORD(v283) = a7;
  v274 = a4;
  v310 = a2;
  v291 = a9;
  v352 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v13 - 8);
  v311 = v272 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v282 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v282);
  v299 = v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v16 - 8);
  v298 = (v272 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v18 - 8);
  v285 = v272 - v19;
  v20 = sub_21DBF509C();
  v21 = *(v20 - 8);
  v313 = v20;
  v314 = v21;
  MEMORY[0x28223BE20](v20);
  v287 = v272 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v308 = v272 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v25 - 8);
  v286 = v272 - v26;
  v27 = sub_21DBF5C4C();
  v303 = *(v27 - 8);
  v304 = v27;
  MEMORY[0x28223BE20](v27);
  v276 = v272 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v301 = v272 - v30;
  v307 = sub_21DBF563C();
  v302 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v32 = v272 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v320 = v272 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v272 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v284 = v272 - v39;
  MEMORY[0x28223BE20](v40);
  v315 = v272 - v41;
  MEMORY[0x28223BE20](v42);
  v300 = v272 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = v272 - v45;
  v47 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v47 - 8);
  v318 = v272 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v49);
  v309 = v272 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v319 = (v272 - v52);
  v53 = *a5;
  v295 = a5[1];
  v296 = v53;
  v294 = *(a5 + 4);
  v293 = *(a5 + 40);
  v54 = *a6;
  v297 = a3;
  sub_21D0D3954(a3, &v342, &qword_27CE61948);
  v275 = v32;
  if (*(&v343 + 1))
  {
    sub_21D0D0FD0(&v342, v349);
  }

  else
  {
    v350 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v351 = &off_282ED2868;
    v55 = swift_allocObject();
    v349[0] = v55;
    *(v55 + 16) = 768;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 40) = 2;
  }

  v56 = sub_21D0D8CF0(0, &qword_280D17770);
  *&v336 = &protocol witness table for REMReminderChangeItem;
  *(&v335 + 1) = v56;
  *&v334 = a1;
  *&v321 = 3;
  v57 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v334, &v321, &v342);
  v312 = *(&v342 + 1);
  v58 = v342;
  v292 = v343;
  v316 = v344;
  v317 = *(&v343 + 1);
  v59 = [v57 objectID];
  v60 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v61 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v62 = v319;
  (*(*(v61 - 8) + 56))(v319 + v60, 1, 1, v61);
  *v62 = v59;
  swift_storeEnumTagMultiPayload();
  if (v58)
  {
    v63 = v58;
    v64 = v54;
    v65 = v313;
  }

  else
  {
    v63 = [v57 title];
    v64 = v54;
    v65 = v313;
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v58 = 0;
    }
  }

  v289 = v58;
  v290 = v63;
  v66 = v312;
  if (v312)
  {
    v67 = v58;
    v68 = v66;
  }

  else
  {
    v69 = v58;
    v68 = [v57 notes];
    if (!v68)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v70 = &selRef__setContentViewMarginType_;
  v288 = v68;
  if (v64)
  {
    if (v64 != 1)
    {
      v77 = v66;
      sub_21D568328(v64);
      goto LABEL_24;
    }

    v71 = v66;
    v72 = [v57 effectiveDisplayDateComponents_forCalendar];
    if (v72)
    {
      v73 = v72;
      sub_21DBF4EFC();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v78 = v314;
    (*(v314 + 56))(v46, v74, 1, v65);
    v79 = v37;
    sub_21D0D3954(v46, v37, &qword_27CE58D60);
    if ((*(v78 + 48))(v37, 1, v65) == 1)
    {
      sub_21D0CF7E0(v46, &qword_27CE58D60);
      v70 = &selRef__setContentViewMarginType_;
LABEL_26:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
      (*(*(v91 - 8) + 56))(v318, 1, 1, v91);
      LODWORD(v287) = 0;
      v65 = 0;
      v92 = 0;
      while (1)
      {
        v180 = [v57 v70[73]];
        v181 = [v180 supportsLocation];

        if (!v181)
        {
          v277 = 0;
          v278 = 0;
          LODWORD(v276) = 128;
          v279 = 2;
          v280 = 0;
          goto LABEL_87;
        }

        v182 = sub_21D7A5EB4();
        if (v182 >> 62)
        {
          v190 = v182;
          v191 = sub_21DBFBD7C();
          v182 = v190;
          if (!v191)
          {
LABEL_75:

            goto LABEL_76;
          }
        }

        else if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        if ((v182 & 0xC000000000000001) != 0)
        {
          v183 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_84;
          }

          v183 = *(v182 + 32);
        }

        v184 = v183;

        v185 = [v184 structuredLocation];
        v186 = [v185 displayName];

        if (v186)
        {
          v279 = sub_21DBFA16C();
          v280 = v187;

          v188 = [v184 structuredLocation];
          v278 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v277 = [v184 proximity];

          v189 = v274 & 1;
          goto LABEL_86;
        }

LABEL_76:
        v182 = sub_21D7A5EB4();
        if (!(v182 >> 62))
        {
          if (!*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          goto LABEL_78;
        }

LABEL_84:
        v195 = v182;
        v196 = sub_21DBFBD7C();
        v182 = v195;
        if (!v196)
        {
LABEL_85:

          v197 = v350;
          v198 = v351;
          __swift_project_boxed_opaque_existential_1(v349, v350);
          v199 = (v198[1])(v197, v198);
          v277 = 0;
          v278 = 0;
          v279 = (v199 & 1) == 0;
          v280 = 0;
          v189 = 128;
          goto LABEL_86;
        }

LABEL_78:
        if ((v182 & 0xC000000000000001) != 0)
        {
          goto LABEL_123;
        }

        if (*((v182 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v192 = *(v182 + 32);
          goto LABEL_81;
        }

        __break(1u);
LABEL_125:
        swift_once();
LABEL_60:
        v149 = sub_21DBF516C();
        v151 = v150;
        v152 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v153 = v298;
        v117 = v307;
        v273(v298 + *(v152 + 20), 1, 1, v307);
        *v153 = v149;
        v153[1] = v151;
        (*(*(v152 - 8) + 56))(v153, 0, 1, v152);
LABEL_61:
        v154 = v299;
        (v281)(v299, v320, v117);
        v155 = v282;
        (*(v314 + 16))(v154 + *(v282 + 24), v308, v65);
        v156 = v350;
        v157 = v351;
        __swift_project_boxed_opaque_existential_1(v349, v350);
        (v157[5])(&v342, v156, v157);
        *&v281 = *(&v342 + 1);
        v158 = v342;
        LODWORD(v276) = v343;
        v57 = v305;
        v159 = [v305 accountCapabilities];
        LOBYTE(v156) = [v159 supportsCloudKitSync];

        v160 = v350;
        v161 = v351;
        __swift_project_boxed_opaque_existential_1(v349, v350);
        LOBYTE(v160) = (v161[4])(v160, v161);
        v163 = v350;
        v162 = v351;
        __swift_project_boxed_opaque_existential_1(v349, v350);
        (v162[2])(&v334, v163, v162);
        *(v154 + v155[5]) = v287;
        *(v154 + v155[7]) = v283 & 1;
        v164 = v154 + v155[8];
        v165 = v281;
        *v164 = v158;
        *(v164 + 8) = v165;
        *(v164 + 16) = v276;
        *(v154 + v155[9]) = v156;
        LOBYTE(v164) = v334;
        *(v154 + v155[10]) = v160 & 1;
        *(v154 + v155[11]) = v164;
        v166 = (v154 + v155[12]);
        *v166 = 0;
        v166[1] = 0;
        v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
        v168 = v318;
        v169 = v318 + v167[12];
        v170 = v167[16];
        v171 = v167[20];
        v172 = v167[24];
        sub_21D799E6C(v154, v318, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v169 = v278;
        *(v169 + 8) = v277;
        v173 = v285;
        *(v169 + 16) = v284;
        *(v169 + 24) = v173;
        v174 = v279;
        *(v169 + 32) = v280;
        *(v169 + 40) = v174;
        v175 = v298;
        sub_21D0D3954(v298, v168 + v170, &unk_27CE628E0);
        v176 = v350;
        v177 = v351;
        __swift_project_boxed_opaque_existential_1(v349, v350);
        *(v168 + v171) = (v177[3])(v176, v177) & 1;
        *(v168 + v172) = [v57 prefersUrgentPresentationStyleForDateAlarms];
        (*(*(v167 - 1) + 56))(v168, 0, 1, v167);
        v65 = [v57 isOverdue];
        v178 = [v57 isCompleted];
        v179 = 0;
        if ((v178 & 1) == 0)
        {
          v179 = [v57 isOverdue];
        }

        LODWORD(v287) = v179;
        v92 = v315;

        sub_21D799ED4(v299, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v175, &unk_27CE628E0);
        (*(v314 + 8))(v308, v313);
        (*(v303 + 8))(v301, v304);
        sub_21D0CF7E0(v300, &qword_27CE58D60);
        (*(v302 + 8))(v320, v307);

        v70 = &selRef__setContentViewMarginType_;
      }
    }

    v80 = v287;
    (*(v78 + 32))(v287, v79, v65);
    v81 = objc_allocWithZone(MEMORY[0x277D44600]);
    v82 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670);
    v83 = sub_21DBFA5DC();
    v84 = [v81 initWithDueDateComponents:v82 alarms:v83];

    (*(v78 + 8))(v80, v65);
    sub_21D0CF7E0(v46, &qword_27CE58D60);
    v76 = v84;
    v70 = &selRef__setContentViewMarginType_;
    if (!v84)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v75 = v66;
    v76 = [v57 displayDate];
    if (!v76)
    {
      goto LABEL_26;
    }
  }

  v64 = v76;
LABEL_24:
  v85 = v315;
  v86 = [v64 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  LODWORD(v287) = [v64 isAllDay];
  v87 = [v57 dueDateComponents];
  v88 = v314;
  if (v87)
  {
    v89 = v87;
    sub_21DBF4EFC();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  (*(v88 + 56))(v85, v90, 1, v65);
  v93 = v85;
  v94 = v300;
  sub_21D0D523C(v93, v300, &qword_27CE58D60);
  v95 = v94;
  v96 = v284;
  sub_21D0D3954(v95, v284, &qword_27CE58D60);
  v97 = (*(v88 + 48))(v96, 1, v65);
  v315 = v64;
  if (v97 == 1)
  {
    sub_21D0CF7E0(v96, &qword_27CE58D60);
    v99 = v303;
    v98 = v304;
    v100 = v286;
    (*(v303 + 56))(v286, 1, 1, v304);
  }

  else
  {
    v101 = v96;
    v100 = v286;
    sub_21DBF507C();
    (*(v88 + 8))(v101, v65);
    v99 = v303;
    v98 = v304;
    if ((*(v303 + 48))(v100, 1, v304) != 1)
    {
      (*(v99 + 32))(v301, v100, v98);
      goto LABEL_34;
    }
  }

  v102 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v99 + 48))(v100, 1, v98) != 1)
  {
    sub_21D0CF7E0(v100, &unk_27CE60DB0);
  }

LABEL_34:
  v103 = objc_opt_self();
  v104 = sub_21DBF55BC();
  v105 = sub_21DBF5C0C();
  v106 = [v103 rem:v104 dateComponentsWithDate:v105 timeZone:v287 isAllDay:?];

  sub_21DBF4EFC();
  v107 = objc_opt_self();
  v108 = [v57 recurrenceRules];
  v109 = sub_21DBF55BC();
  v110 = sub_21DBF5C0C();
  *&v342 = 0;
  v280 = v107;
  v111 = [v107 repeatTypeForRecurrenceRules:v108 recurrenceDate:v109 recurrenceTimeZone:v110 getRepeatEnd:&v342];

  v272[1] = v342;
  v286 = v342;
  v112 = [v57 recurrenceRules];
  v305 = v57;
  if (v112)
  {
    v113 = v112;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v114 = sub_21DBFA5EC();
  }

  else
  {
    v114 = 0;
  }

  v115 = v302;
  v70 = (v302 + 16);
  v116 = v285;
  v117 = v307;
  *&v281 = *(v302 + 16);
  (v281)(v285, v320, v307);
  v118 = *(v115 + 56);
  v57 = (v115 + 56);
  v273 = v118;
  v118(v116, 0, 1, v117);
  v284 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v114, v116);
  v120 = v119;

  sub_21D0CF7E0(v116, &qword_27CE58D68);
  v285 = v120;
  if (!v120)
  {
    if (v111 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v284 = sub_21DBF516C();
      v285 = v121;
    }

    else
    {
      v122 = [v280 localizedDescriptionForRepeatType_];
      v284 = sub_21DBFA16C();
      v285 = v123;
    }
  }

  v124 = [v305 recurrenceRules];
  if (!v124)
  {
    goto LABEL_52;
  }

  v92 = v124;
  sub_21D0D8CF0(0, &qword_280D177E8);
  v125 = sub_21DBFA5EC();

  if (!(v125 >> 62))
  {
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_51:

LABEL_52:
    v279 = 0xE000000000000000;
    v280 = 0;
LABEL_53:
    v133 = [v305 accountCapabilities];
    LODWORD(v277) = [v133 supportsHourlyRecurrence];

    v278 = v111;
    if (!v111)
    {
      v148 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v148 - 8) + 56))(v298, 1, 1, v148);
      goto LABEL_61;
    }

    v134 = v286;
    if (v286)
    {
      v135 = v275;
      sub_21DBF55FC();
      v136 = v134;
      v137 = qword_280D1BAA8;
      v138 = v136;
      if (v137 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v139 = [objc_opt_self() defaultTimeZone];
      v140 = v276;
      sub_21DBF5C2C();

      v141 = sub_21D7A5CB4();
      v143 = v142;

      (*(v303 + 8))(v140, v304);
      v144 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v145 = *(v144 + 20);
      v146 = v298;
      v147 = v135;
      v117 = v307;
      (*(v302 + 32))(v298 + v145, v147, v307);
      v273(v146 + v145, 0, 1, v117);
      *v146 = v141;
      v146[1] = v143;
      (*(*(v144 - 8) + 56))(v146, 0, 1, v144);
      v65 = v313;
      goto LABEL_61;
    }

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_60;
    }

    goto LABEL_125;
  }

LABEL_46:
  if ((v125 & 0xC000000000000001) != 0)
  {
    v126 = MEMORY[0x223D44740](0, v125);
    goto LABEL_49;
  }

  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v126 = *(v125 + 32);
LABEL_49:
    v127 = v126;

    v128 = sub_21DBF55BC();
    v129 = sub_21DBF5C0C();
    v130 = [v280 shortNaturalLanguageDescriptionForRecurrenceRule:v127 date:v128 timeZone:v129 lowercase:0];

    v131 = sub_21DBFA16C();
    v279 = v132;
    v280 = v131;

    v65 = v313;
    goto LABEL_53;
  }

  __break(1u);
LABEL_123:
  v192 = MEMORY[0x223D44740](0);
LABEL_81:
  v193 = v192;

  v279 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v193 event]);
  v280 = v194;

  v277 = 0;
  v278 = 0;
  v189 = 64;
LABEL_86:
  LODWORD(v276) = v189;
LABEL_87:
  sub_21D7A9558(&v342);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v200 = [v57 flaggedContext];
  v315 = v92;
  if (v200)
  {
    v201 = v200;
    v202 = [v200 flagged];

    v203 = v202 > 0;
  }

  else
  {
    v203 = 2;
  }

  LODWORD(v314) = v203;
  v204 = [v57 objectID];
  v205 = [v204 entityName];

  v206 = sub_21DBFA16C();
  v208 = v207;

  v209 = [objc_opt_self() cdEntityNameForSavedReminder];
  v210 = sub_21DBFA16C();
  v212 = v211;

  if (v206 == v210 && v208 == v212)
  {

    v213 = 0;
  }

  else
  {
    v214 = sub_21DBFC64C();

    v213 = 0;
    if ((v214 & 1) == 0)
    {
      v213 = [v57 isSubtask] ^ 1;
    }
  }

  LODWORD(v308) = v213;
  v215 = [v57 subtaskContext];
  v216 = v215;
  if (v215)
  {

    v217 = *&v306[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v313 = (*(v217 + 48))(ObjectType, v217);
  }

  else
  {
    v313 = 0;
  }

  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  (*(*(v219 - 8) + 56))(v311, 1, 1, v219);
  sub_21D0D3954(v310, &v339, &qword_27CE59DC0);
  if (v340)
  {
    sub_21D0D0FD0(&v339, v341);
  }

  else
  {
    v220 = [v57 listChangeItem];
    v221 = v220;
    if (v220)
    {
      v220 = sub_21D0D8CF0(0, &unk_280D177F0);
      v222 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v222 = 0;
      v341[2] = 0;
      v341[1] = 0;
    }

    v341[0] = v221;
    v341[3] = v220;
    v341[4] = v222;
    if (v340)
    {
      sub_21D0CF7E0(&v339, &qword_27CE59DC0);
    }
  }

  sub_21D0D3954(v341, &v331, &qword_27CE59DC0);
  if (v332)
  {
    sub_21D0D0FD0(&v331, &v326);
    sub_21D0D32E4(&v326, &v334);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v334, &v321);
    __swift_destroy_boxed_opaque_existential_0(&v326);
    v336 = v323;
    v337 = v324;
    v338[0] = v325[0];
    *(v338 + 9) = *(v325 + 9);
    v334 = v321;
    v335 = v322;
  }

  else
  {
    sub_21D0CF7E0(&v331, &qword_27CE59DC0);
    v334 = xmmword_21DC19C40;
    v335 = 0u;
    v336 = 0u;
    v337 = 0u;
    memset(v338, 0, 25);
  }

  sub_21D0D3954(v341, &v326, &qword_27CE59DC0);
  v223 = *(&v327 + 1);
  if (*(&v327 + 1))
  {
    v224 = v328;
    __swift_project_boxed_opaque_existential_1(&v326, *(&v327 + 1));
    (*(v224 + 14))(&v321, v223, v224);
    v225 = *(&v322 + 1);
    if (*(&v322 + 1))
    {
      v226 = v323;
      __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
      LODWORD(v307) = (*(v226 + 16))(v225, v226);
      __swift_destroy_boxed_opaque_existential_0(&v321);
      __swift_destroy_boxed_opaque_existential_0(&v326);
      goto LABEL_114;
    }

    __swift_destroy_boxed_opaque_existential_0(&v326);
    v227 = &qword_27CE5A6E8;
    v228 = &v321;
  }

  else
  {
    v227 = &qword_27CE59DC0;
    v228 = &v326;
  }

  sub_21D0CF7E0(v228, v227);
  LODWORD(v307) = 0;
LABEL_114:
  sub_21D799E6C(v319, v309, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v341, &v321, &qword_27CE59DC0);
  v229 = *(&v322 + 1);
  if (*(&v322 + 1))
  {
    v230 = v323;
    __swift_project_boxed_opaque_existential_1(&v321, *(&v322 + 1));
    v231 = (*(v230 + 32))(v229, v230);
    v302 = v232;
    v303 = v231;
    __swift_destroy_boxed_opaque_existential_0(&v321);
  }

  else
  {
    sub_21D0CF7E0(&v321, &qword_27CE59DC0);
    v302 = 0xE000000000000000;
    v303 = 0;
  }

  sub_21D0D3954(v341, &v331, &qword_27CE59DC0);
  v233 = v332;
  LODWORD(v320) = v65;
  if (v332)
  {
    v234 = v333;
    __swift_project_boxed_opaque_existential_1(&v331, v332);
    v301 = (*(v234 + 8))(v233, v234);
    __swift_destroy_boxed_opaque_existential_0(&v331);
  }

  else
  {
    sub_21D0CF7E0(&v331, &qword_27CE59DC0);
    v301 = 0;
  }

  LODWORD(v304) = v216 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v341, &v326);
  v285 = v329;
  v286 = v328;
  LODWORD(v284) = v330;
  sub_21D0D3954(&v334, &v321, &unk_27CE5E9E0);
  LODWORD(v300) = [v57 isCompleted];
  [v57 priority];
  v298 = REMReminderPriorityLevelForPriority();
  v235 = [v57 v70[73]];
  v283 = [v235 defaultReminderPriorityLevel];

  v236 = type metadata accessor for TTRReminderDetailViewModel(0);
  v237 = v291;
  sub_21D799E6C(v318, v291 + v236[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v238 = v279;
  v239 = v280;
  v240 = v277;
  v241 = v278;
  v242 = v276;
  sub_21D48BB60(v279, v280, v278, v277, v276);
  v243 = [v57 v70[73]];
  LODWORD(v299) = [v243 supportsTextStyling];

  v281 = v327;
  v282 = v326;

  sub_21D48C240(v238, v239, v241, v240, v242);
  sub_21D0CF7E0(&v334, &unk_27CE5E9E0);

  sub_21D0CF7E0(v297, &qword_27CE61948);
  sub_21D0CF7E0(v310, &qword_27CE59DC0);
  sub_21D799ED4(v318, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v319, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v309, v237, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v237 + v236[5]) = 1;
  v244 = (v237 + v236[6]);
  v245 = v302;
  *v244 = v303;
  v244[1] = v245;
  *(v237 + v236[7]) = v301;
  v246 = v237 + v236[8];
  v247 = v285;
  *(v246 + 32) = v286;
  *(v246 + 40) = v247;
  *(v246 + 48) = v284;
  v248 = v281;
  *v246 = v282;
  *(v246 + 16) = v248;
  v249 = *(v338 + 9);
  v250 = (v237 + v236[9]);
  v251 = v337;
  v250[2] = v336;
  v250[3] = v251;
  v250[4] = v338[0];
  *(v250 + 73) = v249;
  v252 = v335;
  *v250 = v334;
  v250[1] = v252;
  *(v237 + v236[10]) = v307 & 1;
  *(v237 + v236[11]) = v308;
  *(v237 + v236[12]) = v290;
  v253 = (v237 + v236[13]);
  *v253 = 0u;
  v253[1] = 0u;
  *(v237 + v236[14]) = v300;
  *(v237 + v236[15]) = v298;
  *(v237 + v236[16]) = v283;
  *(v237 + v236[17]) = v314;
  *(v237 + v236[18]) = v288;
  v254 = (v237 + v236[19]);
  *v254 = 0u;
  v254[1] = 0u;
  *(v237 + v236[21]) = v320;
  *(v237 + v236[22]) = v287;
  v255 = v237 + v236[23];
  *v255 = v238;
  *(v255 + 8) = v239;
  *(v255 + 16) = v241;
  *(v255 + 24) = v240;
  *(v255 + 32) = v242;
  v256 = v237 + v236[24];
  *v256 = 0;
  *(v256 + 8) = 0;
  v257 = v237 + v236[25];
  *v257 = xmmword_21DC22F10;
  *(v257 + 16) = 0;
  v258 = v237 + v236[26];
  *(v258 + 112) = 0;
  *(v258 + 80) = 0u;
  *(v258 + 96) = 0u;
  *(v258 + 48) = 0u;
  *(v258 + 64) = 0u;
  *(v258 + 16) = 0u;
  *(v258 + 32) = 0u;
  *v258 = 0u;
  v259 = (v237 + v236[27]);
  v260 = v347;
  v259[4] = v346;
  v259[5] = v260;
  v259[6] = v348[0];
  *(v259 + 105) = *(v348 + 9);
  v261 = v343;
  *v259 = v342;
  v259[1] = v261;
  v262 = v345;
  v259[2] = v344;
  v259[3] = v262;
  v263 = v237 + v236[28];
  *v263 = v292;
  v264 = v316;
  *(v263 + 8) = v317;
  *(v263 + 16) = v264;
  v265 = (v237 + v236[29]);
  *v265 = 0u;
  v265[1] = 0u;
  *(v237 + v236[30]) = v299;
  v266 = v237 + v236[31];
  *v266 = v313;
  *(v266 + 8) = v304;
  *(v237 + v236[32]) = 0;
  sub_21D7A959C(v311, v237 + v236[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v267 = (v237 + v236[34]);
  *v267 = 0;
  v267[1] = 0;
  v268 = (v237 + v236[35]);
  *v268 = xmmword_21DC19C40;
  v268[1] = 0u;
  v268[2] = 0u;
  v268[3] = 0u;
  v268[4] = 0u;
  *(v237 + v236[36]) = 0;
  v269 = v237 + v236[37];
  v270 = v295;
  *v269 = v296;
  *(v269 + 16) = v270;
  *(v269 + 32) = v294;
  *(v269 + 40) = v293;
  v271 = v237 + v236[38];
  *(v271 + 64) = 0;
  *(v271 + 32) = 0u;
  *(v271 + 48) = 0u;
  *v271 = 0u;
  *(v271 + 16) = 0u;
  sub_21D0CF7E0(v341, &qword_27CE59DC0);
  __swift_destroy_boxed_opaque_existential_0(v349);
}

uint64_t TTRReminderDetailViewModel.init(reminderChangeItem:subtasksCount:list:presenterState:shouldShowAsUnauthorizedForPreciseLocation:sectionPickerVisibility:dueDateSource:allowsClearingDueDate:)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, void **a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v279 = a6;
  v315 = a4;
  v288 = a3;
  v289 = a2;
  v298 = a9;
  v358 = *MEMORY[0x277D85DE8];
  v14 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v14 - 8);
  v316 = &v277 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v290);
  v306 = &v277 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v17 - 8);
  v305 = (&v277 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v19 - 8);
  v291 = &v277 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v21 - 8);
  v293 = &v277 - v22;
  v23 = sub_21DBF5C4C();
  v310 = *(v23 - 1);
  v311 = v23;
  MEMORY[0x28223BE20](v23);
  v281 = &v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v308 = &v277 - v26;
  v313 = sub_21DBF563C();
  v309 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v28 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v325 = &v277 - v30;
  v320 = sub_21DBF509C();
  v318 = *(v320 - 8);
  MEMORY[0x28223BE20](v320);
  v312 = &v277 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v294 = &v277 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v34 - 8);
  v292 = &v277 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v319 = &v277 - v37;
  MEMORY[0x28223BE20](v38);
  v307 = &v277 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v277 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v277 - v44;
  v46 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v46 - 8);
  v323 = &v277 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v48);
  v314 = &v277 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v324 = (&v277 - v51);
  v52 = *a7;
  v302 = a7[1];
  v303 = v52;
  v301 = *(a7 + 4);
  v300 = *(a7 + 40);
  v53 = *a8;
  v304 = a5;
  sub_21D0D3954(a5, &v348, &qword_27CE61948);
  v280 = v28;
  if (*(&v349 + 1))
  {
    sub_21D0D0FD0(&v348, v355);
  }

  else
  {
    v356 = &type metadata for TTRReminderDetailViewModel.PresenterStateDontCare;
    v357 = &off_282ED2868;
    v54 = swift_allocObject();
    v355[0] = v54;
    *(v54 + 16) = 768;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 40) = 2;
  }

  v55 = sub_21D0D8CF0(0, &qword_280D17770);
  *&v342 = &protocol witness table for REMReminderChangeItem;
  *(&v341 + 1) = v55;
  *&v340 = a1;
  *&v327 = 3;
  v56 = a1;
  TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v340, &v327, &v348);
  v317 = *(&v348 + 1);
  v57 = v348;
  v299 = v349;
  v321 = v350;
  v322 = *(&v349 + 1);
  v58 = [v56 objectID];
  v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v61 = v324;
  (*(*(v60 - 8) + 56))(v324 + v59, 1, 1, v60);
  *v61 = v58;
  swift_storeEnumTagMultiPayload();
  v62 = v57;
  if (v57)
  {
    v63 = v57;
    v64 = v56;
  }

  else
  {
    v63 = [v56 title];
    v62 = 0;
    v64 = v56;
    if (!v63)
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      v62 = 0;
    }
  }

  v296 = v62;
  v297 = v63;
  v65 = v317;
  v66 = v53;
  if (v317)
  {
    v67 = v62;
    v68 = v65;
  }

  else
  {
    v69 = v62;
    v68 = [v64 notes];
    if (!v68)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }
  }

  v70 = &selRef__setContentViewMarginType_;
  v326 = v64;
  v295 = v68;
  if (v66)
  {
    if (v66 != 1)
    {
      v79 = v65;
      sub_21D568328(v66);
      v78 = v319;
      v77 = v320;
      goto LABEL_24;
    }

    v71 = v65;
    v72 = [v64 effectiveDisplayDateComponents_forCalendar];
    if (v72)
    {
      v73 = v72;
      sub_21DBF4EFC();

      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v80 = v318;
    v81 = v320;
    (*(v318 + 56))(v45, v74, 1, v320);
    sub_21D0D3954(v45, v42, &qword_27CE58D60);
    if ((*(v80 + 48))(v42, 1, v81) == 1)
    {
      sub_21D0CF7E0(v45, &qword_27CE58D60);
      v70 = &selRef__setContentViewMarginType_;
LABEL_26:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
      (*(*(v93 - 8) + 56))(v323, 1, 1, v93);
      v94 = 0;
      LODWORD(v95) = 0;
      v96 = 0;
      while (1)
      {
        v185 = [v64 v70[73]];
        v186 = [v185 supportsLocation];

        if (!v186)
        {
          v318 = 0;
          v311 = 0;
          v312 = 0;
          LODWORD(v310) = 128;
          v313 = 2;
          goto LABEL_89;
        }

        v187 = sub_21D7A5EB4();
        if (v187 >> 62)
        {
          v195 = v187;
          v196 = sub_21DBFBD7C();
          v187 = v195;
          if (!v196)
          {
LABEL_77:

            goto LABEL_78;
          }
        }

        else if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        if ((v187 & 0xC000000000000001) != 0)
        {
          v188 = MEMORY[0x223D44740](0);
        }

        else
        {
          if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_86;
          }

          v188 = *(v187 + 32);
        }

        v189 = v188;

        v190 = [v189 structuredLocation];
        v191 = [v190 displayName];

        if (v191)
        {
          v313 = sub_21DBFA16C();
          v318 = v192;

          v193 = [v189 structuredLocation];
          v312 = _sSo21REMStructuredLocationC15RemindersUICoreE8clRegionSo010CLCircularF0Cvg_0();
          v311 = [v189 proximity];

          v194 = v279 & 1;
          goto LABEL_88;
        }

LABEL_78:
        v187 = sub_21D7A5EB4();
        if (!(v187 >> 62))
        {
          if (!*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          goto LABEL_80;
        }

LABEL_86:
        v200 = v187;
        v201 = sub_21DBFBD7C();
        v187 = v200;
        if (!v201)
        {
LABEL_87:

          v202 = v356;
          v203 = v357;
          __swift_project_boxed_opaque_existential_1(v355, v356);
          v204 = (v203[1])(v202, v203);
          v318 = 0;
          v311 = 0;
          v312 = 0;
          v313 = (v204 & 1) == 0;
          v194 = 128;
          goto LABEL_88;
        }

LABEL_80:
        if ((v187 & 0xC000000000000001) != 0)
        {
          goto LABEL_125;
        }

        if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v197 = *(v187 + 32);
          goto LABEL_83;
        }

        __break(1u);
LABEL_127:
        swift_once();
LABEL_62:
        v153 = sub_21DBF516C();
        v155 = v154;
        v156 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
        v157 = v305;
        v158 = v313;
        v278(v305 + *(v156 + 20), 1, 1, v313);
        *v157 = v153;
        v157[1] = v155;
        (*(*(v156 - 8) + 56))(v157, 0, 1, v156);
        v151 = v158;
LABEL_63:
        v159 = v306;
        v287(v306, v325, v151);
        v160 = v290;
        (v70[2])(v159 + *(v290 + 24), v312, v320);
        v161 = v356;
        v162 = v357;
        __swift_project_boxed_opaque_existential_1(v355, v356);
        (v162[5])(&v348, v161, v162);
        v287 = *(&v348 + 1);
        v163 = v348;
        v164 = v349;
        v165 = [v326 accountCapabilities];
        LOBYTE(v161) = [v165 supportsCloudKitSync];

        v166 = v356;
        v167 = v357;
        __swift_project_boxed_opaque_existential_1(v355, v356);
        LOBYTE(v166) = (v167[4])(v166, v167);
        v168 = v356;
        v169 = v357;
        __swift_project_boxed_opaque_existential_1(v355, v356);
        (v169[2])(&v340, v168, v169);
        *(v159 + v160[5]) = v294;
        *(v159 + v160[7]) = v282 & 1;
        v170 = v159 + v160[8];
        v171 = v287;
        *v170 = v163;
        *(v170 + 8) = v171;
        *(v170 + 16) = v164;
        *(v159 + v160[9]) = v161;
        LOBYTE(v170) = v340;
        *(v159 + v160[10]) = v166 & 1;
        *(v159 + v160[11]) = v170;
        v172 = (v159 + v160[12]);
        *v172 = 0;
        v172[1] = 0;
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
        v174 = v323;
        v175 = v323 + v173[12];
        v176 = v173[16];
        v95 = v173[20];
        v177 = v173[24];
        sub_21D799E6C(v159, v323, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        *v175 = v293;
        *(v175 + 8) = v283;
        v178 = v291;
        *(v175 + 16) = v286;
        *(v175 + 24) = v178;
        v179 = v284;
        *(v175 + 32) = v285;
        *(v175 + 40) = v179;
        v180 = v305;
        sub_21D0D3954(v305, v174 + v176, &unk_27CE628E0);
        v181 = v356;
        v182 = v357;
        __swift_project_boxed_opaque_existential_1(v355, v356);
        *(v95 + v174) = (v182[3])(v181, v182) & 1;
        v183 = v326;
        *(v174 + v177) = [v326 prefersUrgentPresentationStyleForDateAlarms];
        v64 = v183;
        (*(*(v173 - 1) + 56))(v174, 0, 1, v173);
        LODWORD(v95) = [v183 isOverdue];
        v94 = 0;
        v184 = v180;
        if (([v183 isCompleted] & 1) == 0)
        {
          v94 = [v183 isOverdue];
        }

        v96 = v319;

        sub_21D799ED4(v306, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D0CF7E0(v184, &unk_27CE628E0);
        (*(v318 + 8))(v312, v320);
        (*(v310 + 8))(v308, v311);
        sub_21D0CF7E0(v307, &qword_27CE58D60);
        (*(v309 + 8))(v325, v313);

        v70 = &selRef__setContentViewMarginType_;
      }
    }

    v82 = v294;
    (*(v80 + 32))(v294, v42, v81);
    v83 = objc_allocWithZone(MEMORY[0x277D44600]);
    v84 = sub_21DBF4EDC();
    sub_21D0D8CF0(0, &qword_280D17670);
    v85 = sub_21DBFA5DC();
    v86 = [v83 initWithDueDateComponents:v84 alarms:v85];

    (*(v80 + 8))(v82, v81);
    sub_21D0CF7E0(v45, &qword_27CE58D60);
    v76 = v86;
    v77 = v81;
    v70 = &selRef__setContentViewMarginType_;
    v78 = v319;
    if (!v86)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v75 = v65;
    v76 = [v64 displayDate];
    v77 = v320;
    v78 = v319;
    if (!v76)
    {
      goto LABEL_26;
    }
  }

  v66 = v76;
LABEL_24:
  v87 = [v66 dateByAdjustingFloatingDateForDefaultTimeZone];
  sub_21DBF55FC();

  LODWORD(v294) = [v66 isAllDay];
  v88 = [v64 dueDateComponents];
  v89 = v310;
  v90 = v318;
  if (v88)
  {
    v91 = v88;
    sub_21DBF4EFC();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  (*(v90 + 56))(v78, v92, 1, v77);
  v97 = v78;
  v98 = v307;
  sub_21D0D523C(v97, v307, &qword_27CE58D60);
  v99 = v98;
  v100 = v292;
  sub_21D0D3954(v99, v292, &qword_27CE58D60);
  v101 = (*(v90 + 48))(v100, 1, v77);
  v319 = v66;
  if (v101 == 1)
  {
    sub_21D0CF7E0(v100, &qword_27CE58D60);
    v102 = v293;
    v103 = v311;
    (*(v89 + 56))(v293, 1, 1, v311);
  }

  else
  {
    v104 = v100;
    v102 = v293;
    sub_21DBF507C();
    (*(v90 + 8))(v104, v77);
    v103 = v311;
    if ((*(v89 + 48))(v102, 1, v311) != 1)
    {
      (*(v89 + 32))(v308, v102, v103);
      goto LABEL_34;
    }
  }

  v105 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if ((*(v89 + 48))(v102, 1, v103) != 1)
  {
    sub_21D0CF7E0(v102, &unk_27CE60DB0);
  }

LABEL_34:
  v106 = objc_opt_self();
  v107 = sub_21DBF55BC();
  v108 = sub_21DBF5C0C();
  v109 = [v106 rem:v107 dateComponentsWithDate:v108 timeZone:v294 isAllDay:?];

  sub_21DBF4EFC();
  v110 = objc_opt_self();
  v95 = &selRef_setQueryFragment_;
  v111 = [v64 recurrenceRules];
  v112 = sub_21DBF55BC();
  v113 = sub_21DBF5C0C();
  *&v348 = 0;
  v293 = [v110 repeatTypeForRecurrenceRules:v111 recurrenceDate:v112 recurrenceTimeZone:v113 getRepeatEnd:&v348];

  v70 = v348;
  v292 = v348;
  v114 = [v64 recurrenceRules];
  if (v114)
  {
    v115 = v114;
    sub_21D0D8CF0(0, &qword_280D177E8);
    v116 = sub_21DBFA5EC();
  }

  else
  {
    v116 = 0;
  }

  v117 = v309;
  v94 = v309 + 16;
  v118 = v291;
  v119 = v313;
  v287 = *(v309 + 16);
  v287(v291, v325, v313);
  v120 = *(v117 + 56);
  v64 = (v117 + 56);
  v278 = v120;
  v120(v118, 0, 1, v119);
  v121 = _s15RemindersUICore25TTRRemindersListViewModelC8ReminderV21recurrenceDescription4from11displayDateSSSgSaySo17REMRecurrenceRuleCGSg_10Foundation0L0VSgtFZ_0(v116, v118);
  v123 = v122;

  sub_21D0CF7E0(v118, &qword_27CE58D68);
  v291 = v123;
  if (v123)
  {
    v286 = v121;
    v96 = v293;
  }

  else
  {
    v96 = v293;
    if (v293 == 11)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v286 = sub_21DBF516C();
      v291 = v124;
    }

    else
    {
      v125 = [v110 localizedDescriptionForRepeatType_];
      v286 = sub_21DBFA16C();
      v291 = v126;
    }
  }

  v127 = [v326 recurrenceRules];
  if (!v127)
  {
    goto LABEL_53;
  }

  v128 = v127;
  sub_21D0D8CF0(0, &qword_280D177E8);
  v129 = sub_21DBFA5EC();

  if (!(v129 >> 62))
  {
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    goto LABEL_52;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_52:

LABEL_53:
    v285 = 0;
    *&v284 = 0xE000000000000000;
LABEL_54:
    v282 = a10;
    v136 = [v326 accountCapabilities];
    LODWORD(v283) = [v136 supportsHourlyRecurrence];

    if (v96)
    {
      v137 = v292;
      if (!v292)
      {
        v70 = v318;
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_62;
        }

        goto LABEL_127;
      }

      v138 = v280;
      sub_21DBF55FC();
      v139 = qword_280D1BAA8;
      v140 = v137;
      if (v139 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v141 = [objc_opt_self() defaultTimeZone];
      v142 = v281;
      sub_21DBF5C2C();

      v143 = sub_21D7A5CB4();
      v145 = v144;

      (*(v310 + 8))(v142, v311);
      v146 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v147 = *(v146 + 20);
      v148 = v305;
      v149 = v138;
      v150 = v313;
      (*(v309 + 32))(v305 + v147, v149, v313);
      v278(v148 + v147, 0, 1, v150);
      *v148 = v143;
      v148[1] = v145;
      (*(*(v146 - 8) + 56))(v148, 0, 1, v146);
      v151 = v150;
    }

    else
    {
      v152 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      (*(*(v152 - 8) + 56))(v305, 1, 1, v152);
      v151 = v313;
    }

    v70 = v318;
    goto LABEL_63;
  }

LABEL_47:
  if ((v129 & 0xC000000000000001) != 0)
  {
    v130 = MEMORY[0x223D44740](0, v129);
    goto LABEL_50;
  }

  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v130 = *(v129 + 32);
LABEL_50:
    v131 = v130;

    v132 = sub_21DBF55BC();
    v133 = sub_21DBF5C0C();
    v134 = [v110 shortNaturalLanguageDescriptionForRecurrenceRule:v131 date:v132 timeZone:v133 lowercase:0];

    v285 = sub_21DBFA16C();
    *&v284 = v135;

    goto LABEL_54;
  }

  __break(1u);
LABEL_125:
  v197 = MEMORY[0x223D44740](0);
LABEL_83:
  v198 = v197;

  v313 = _s15RemindersUICore21TTRLocalizableStringsO14LocationPickerO16vehicleEventTextySSSo022REMAlarmVehicleTriggerH0VFZ_0([v198 event]);
  v318 = v199;

  v311 = 0;
  v312 = 0;
  v194 = 64;
LABEL_88:
  LODWORD(v310) = v194;
LABEL_89:
  sub_21D7A9558(&v348);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v205 = [v64 flaggedContext];
  v319 = v96;
  LODWORD(v325) = v95;
  if (v205)
  {
    v206 = v205;
    v207 = [v205 flagged];

    v208 = v207 > 0;
  }

  else
  {
    v208 = 2;
  }

  LODWORD(v309) = v208;
  v209 = [v64 objectID];
  v210 = [v209 entityName];

  v211 = sub_21DBFA16C();
  v213 = v212;

  v214 = [objc_opt_self() cdEntityNameForSavedReminder];
  v215 = sub_21DBFA16C();
  v217 = v216;

  if (v211 == v215 && v213 == v217)
  {

    v218 = 0;
  }

  else
  {
    v219 = sub_21DBFC64C();

    v218 = 0;
    if ((v219 & 1) == 0)
    {
      v218 = [v64 isSubtask] ^ 1;
    }
  }

  LODWORD(v307) = v218;
  v220 = [v64 subtaskContext];
  v221 = v220;
  if (v220)
  {

    v308 = v289();
  }

  else
  {
    v308 = 0;
  }

  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  (*(*(v222 - 8) + 56))(v316, 1, 1, v222);
  sub_21D0D3954(v315, &v345, &qword_27CE59DC0);
  if (v346)
  {
    sub_21D0D0FD0(&v345, v347);
  }

  else
  {
    v223 = [v64 listChangeItem];
    v224 = v223;
    if (v223)
    {
      v223 = sub_21D0D8CF0(0, &unk_280D177F0);
      v225 = &protocol witness table for REMListChangeItem;
    }

    else
    {
      v225 = 0;
      v347[2] = 0;
      v347[1] = 0;
    }

    v347[0] = v224;
    v347[3] = v223;
    v347[4] = v225;
    if (v346)
    {
      sub_21D0CF7E0(&v345, &qword_27CE59DC0);
    }
  }

  sub_21D0D3954(v347, &v337, &qword_27CE59DC0);
  if (v338)
  {
    sub_21D0D0FD0(&v337, &v332);
    sub_21D0D32E4(&v332, &v340);
    TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)(&v340, &v327);
    __swift_destroy_boxed_opaque_existential_0(&v332);
    v342 = v329;
    v343 = v330;
    v344[0] = v331[0];
    *(v344 + 9) = *(v331 + 9);
    v340 = v327;
    v341 = v328;
  }

  else
  {
    sub_21D0CF7E0(&v337, &qword_27CE59DC0);
    v340 = xmmword_21DC19C40;
    v341 = 0u;
    v342 = 0u;
    v343 = 0u;
    memset(v344, 0, 25);
  }

  sub_21D0D3954(v347, &v332, &qword_27CE59DC0);
  v226 = *(&v333 + 1);
  if (*(&v333 + 1))
  {
    v227 = v334;
    __swift_project_boxed_opaque_existential_1(&v332, *(&v333 + 1));
    (*(v227 + 112))(&v327, v226, v227);
    v228 = *(&v328 + 1);
    if (*(&v328 + 1))
    {
      v229 = v329;
      __swift_project_boxed_opaque_existential_1(&v327, *(&v328 + 1));
      LODWORD(v306) = (*(v229 + 16))(v228, v229);
      __swift_destroy_boxed_opaque_existential_0(&v327);
      __swift_destroy_boxed_opaque_existential_0(&v332);
      goto LABEL_116;
    }

    __swift_destroy_boxed_opaque_existential_0(&v332);
    v230 = &qword_27CE5A6E8;
    v231 = &v327;
  }

  else
  {
    v230 = &qword_27CE59DC0;
    v231 = &v332;
  }

  sub_21D0CF7E0(v231, v230);
  LODWORD(v306) = 0;
LABEL_116:
  sub_21D799E6C(v324, v314, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D0D3954(v347, &v327, &qword_27CE59DC0);
  v232 = *(&v328 + 1);
  if (*(&v328 + 1))
  {
    v233 = v329;
    __swift_project_boxed_opaque_existential_1(&v327, *(&v328 + 1));
    v234 = (*(v233 + 32))(v232, v233);
    v293 = v235;
    v294 = v234;
    __swift_destroy_boxed_opaque_existential_0(&v327);
  }

  else
  {
    sub_21D0CF7E0(&v327, &qword_27CE59DC0);
    v293 = 0xE000000000000000;
    v294 = 0;
  }

  sub_21D0D3954(v347, &v337, &qword_27CE59DC0);
  v236 = v338;
  LODWORD(v320) = v94;
  if (v338)
  {
    v237 = v339;
    __swift_project_boxed_opaque_existential_1(&v337, v338);
    v292 = (*(v237 + 8))(v236, v237);
    __swift_destroy_boxed_opaque_existential_0(&v337);
  }

  else
  {
    sub_21D0CF7E0(&v337, &qword_27CE59DC0);
    v292 = 0;
  }

  LODWORD(v305) = v221 == 0;
  type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)(v347, &v332);
  v287 = v335;
  v288 = v334;
  LODWORD(v286) = v336;
  sub_21D0D3954(&v340, &v327, &unk_27CE5E9E0);
  v238 = v326;
  LODWORD(v291) = [v326 isCompleted];
  [v238 priority];
  v289 = REMReminderPriorityLevelForPriority();
  v239 = [v238 v70[73]];
  v285 = [v239 defaultReminderPriorityLevel];

  v240 = type metadata accessor for TTRReminderDetailViewModel(0);
  v241 = v298;
  sub_21D799E6C(v323, v298 + v240[20], type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v242 = v312;
  v243 = v313;
  v244 = v318;
  v245 = v311;
  v246 = v310;
  sub_21D48BB60(v313, v318, v312, v311, v310);
  v247 = [v238 v70[73]];
  LODWORD(v290) = [v247 supportsTextStyling];

  v283 = v333;
  v284 = v332;

  sub_21D48C240(v243, v244, v242, v245, v246);
  sub_21D0CF7E0(&v340, &unk_27CE5E9E0);

  sub_21D0CF7E0(v304, &qword_27CE61948);
  sub_21D0CF7E0(v315, &qword_27CE59DC0);
  sub_21D799ED4(v323, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799ED4(v324, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D7A959C(v314, v241, type metadata accessor for TTRRemindersListViewModel.Item);
  *(v241 + v240[5]) = 1;
  v248 = (v241 + v240[6]);
  v249 = v293;
  *v248 = v294;
  v248[1] = v249;
  *(v241 + v240[7]) = v292;
  v250 = v241 + v240[8];
  v251 = v287;
  *(v250 + 32) = v288;
  *(v250 + 40) = v251;
  *(v250 + 48) = v286;
  v252 = v283;
  *v250 = v284;
  *(v250 + 16) = v252;
  v253 = *(v344 + 9);
  v254 = (v241 + v240[9]);
  v255 = v343;
  v254[2] = v342;
  v254[3] = v255;
  v254[4] = v344[0];
  *(v254 + 73) = v253;
  v256 = v341;
  *v254 = v340;
  v254[1] = v256;
  *(v241 + v240[10]) = v306 & 1;
  *(v241 + v240[11]) = v307;
  *(v241 + v240[12]) = v297;
  v257 = (v241 + v240[13]);
  *v257 = 0u;
  v257[1] = 0u;
  *(v241 + v240[14]) = v291;
  *(v241 + v240[15]) = v289;
  *(v241 + v240[16]) = v285;
  *(v241 + v240[17]) = v309;
  *(v241 + v240[18]) = v295;
  v258 = (v241 + v240[19]);
  *v258 = 0u;
  v258[1] = 0u;
  *(v241 + v240[21]) = v325;
  *(v241 + v240[22]) = v320;
  v259 = v241 + v240[23];
  *v259 = v243;
  *(v259 + 8) = v244;
  *(v259 + 16) = v242;
  *(v259 + 24) = v245;
  *(v259 + 32) = v246;
  v260 = v241 + v240[24];
  *v260 = 0;
  *(v260 + 8) = 0;
  v261 = v241 + v240[25];
  *v261 = xmmword_21DC22F10;
  *(v261 + 16) = 0;
  v262 = v241 + v240[26];
  *(v262 + 112) = 0;
  *(v262 + 80) = 0u;
  *(v262 + 96) = 0u;
  *(v262 + 48) = 0u;
  *(v262 + 64) = 0u;
  *(v262 + 16) = 0u;
  *(v262 + 32) = 0u;
  *v262 = 0u;
  v263 = (v241 + v240[27]);
  v264 = v353;
  v263[4] = v352;
  v263[5] = v264;
  v263[6] = v354[0];
  *(v263 + 105) = *(v354 + 9);
  v265 = v349;
  *v263 = v348;
  v263[1] = v265;
  v266 = v351;
  v263[2] = v350;
  v263[3] = v266;
  v267 = v241 + v240[28];
  *v267 = v299;
  v268 = v321;
  *(v267 + 8) = v322;
  *(v267 + 16) = v268;
  v269 = (v241 + v240[29]);
  *v269 = 0u;
  v269[1] = 0u;
  *(v241 + v240[30]) = v290;
  v270 = v241 + v240[31];
  *v270 = v308;
  *(v270 + 8) = v305;
  *(v241 + v240[32]) = 0;
  sub_21D7A959C(v316, v241 + v240[33], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v271 = (v241 + v240[34]);
  *v271 = 0;
  v271[1] = 0;
  v272 = (v241 + v240[35]);
  *v272 = xmmword_21DC19C40;
  v272[1] = 0u;
  v272[2] = 0u;
  v272[3] = 0u;
  v272[4] = 0u;
  *(v241 + v240[36]) = 0;
  v273 = v241 + v240[37];
  v274 = v302;
  *v273 = v303;
  *(v273 + 16) = v274;
  *(v273 + 32) = v301;
  *(v273 + 40) = v300;
  v275 = v241 + v240[38];
  *(v275 + 64) = 0;
  *(v275 + 32) = 0u;
  *(v275 + 48) = 0u;
  *v275 = 0u;
  *(v275 + 16) = 0u;
  sub_21D0CF7E0(v347, &qword_27CE59DC0);
  return __swift_destroy_boxed_opaque_existential_0(v355);
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.dateAccessibilityString(for:)()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v0 = sub_21D7A5CB4();

  return v0;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.timeZoneAbbreviationString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_21DBF5A2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_21DBF563C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentCalendar];
  sub_21DBF596C();

  type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  sub_21DBF597C();
  (*(v4 + 8))(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D68);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_21DBF507C();
    v16 = sub_21DBF5C4C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v2, 1, v16) == 1)
    {
      (*(v11 + 8))(v13, v10);
      sub_21D0CF7E0(v2, &unk_27CE60DB0);
      return 0;
    }

    else
    {
      v18 = sub_21DBF5BDC();
      (*(v11 + 8))(v13, v10);
      (*(v17 + 8))(v2, v16);
      return v18;
    }
  }
}

uint64_t TTRReminderDetailViewModel.DueDateState.timeZoneDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(v1, v7, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v9 = 0;
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {

    v10 = *(v8 + 64);
    sub_21D7A959C(v7, v4, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v9 = *&v4[*(v2 + 48)];
    sub_21DBF8E0C();
    sub_21D799ED4(v4, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D0CF7E0(&v7[v10], &unk_27CE628E0);
  }

  return v9;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.extraShortDescription.getter()
{
  v1 = sub_21DBF5C4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  sub_21D0D3954(v0 + *(v8 + 20), v7, &qword_27CE58D68);
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE58D68);
    return 0;
  }

  else
  {
    v12 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v13 = sub_21D7A2630(v4, 1, 0);
    (*(v2 + 8))(v4, v1);
    (*(v10 + 8))(v7, v9);
    return v13;
  }
}

uint64_t TTRReminderDetailViewModel.RecurrenceEndOption.localizedDescription.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 48))(v4, v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [v6 emoji];
  if (!v8)
  {

LABEL_5:
    v16 = type metadata accessor for TTRListBadgeEmblem();
    v17 = a1[3];
    v18 = a1[4];
    v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
    v14 = sub_21D6589DC(v19, v16, v17, v18);
    v20 = v14;
    v10 = REMListBadgeEmblem.name.getter();
    v12 = v21;

    v15 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_21DBFA16C();
  v12 = v11;

  sub_21DBF8E0C();
  v13 = 1;
  v14 = v10;
  v15 = v12;
LABEL_6:
  type metadata accessor for TTRListColors();
  sub_21D0D32E4(a1, v27);
  static TTRListColors.color(for:)(v27, v28);
  sub_21D0CF7E0(v27, &qword_27CE59DC0);
  v22 = v29;
  v23 = v28[0];
  v24 = v28[1];
  v25 = v28[2];
  v27[0] = v29;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  *(a2 + 64) = v22;
  *(a2 + 65) = v28[0];
  *(a2 + 68) = *(v28 + 3);
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v13;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 TTRReminderDetailViewModel.AppLink.init(appIcon:appName:activityTitle:phoneCallContext:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a6;
  v8 = *(a6 + 16);
  *(a7 + 40) = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 56) = v8;
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
  v4 = sub_21DBF509C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 TTRReminderDetailViewModel.DatePickerModel.earlyAlert.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.visibleDatePicker.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.timeZoneDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 48));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.DatePickerModel.timeZoneDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_21D7A19D0(char a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  v6 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v7 = sub_21D7A5CB4();

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_21D7A1C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 20));

  return a1(v2);
}

uint64_t sub_21D7A1C7C(char a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  v6 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v7 = sub_21D7A5CB4();

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V10dateString3forSS10Foundation8TimeZoneV_tF_0(uint64_t a1)
{
  v39 = a1;
  v1 = sub_21DBF563C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5C4C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21DBF5A2C();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF509C();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v38 = v37 - v14;
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v15 setDateStyle_];
  [v15 setTimeStyle_];
  [v15 setDoesRelativeDateFormatting_];
  v16 = sub_21DBF5C0C();
  [v15 setTimeZone_];

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v17 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF58BC();
  v18 = v2 + 8;
  v19 = *(v2 + 8);
  v37[1] = v18;
  v19(v4, v1);
  (*(v42 + 8))(v7, v5);
  v20 = *(v8 + 8);
  v21 = v41;
  v20(v10, v41);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v22 = v4;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v23 = v40;
  sub_21DBF58BC();
  v19(v22, v1);
  v20(v10, v21);
  v24 = v38;
  v25 = sub_21DBF4F0C();
  if ((v26 & 1) == 0)
  {
    v27 = v25;
    v28 = sub_21DBF4F0C();
    if ((v29 & 1) == 0 && v28 != v27)
    {
      [v15 setDoesRelativeDateFormatting_];
    }
  }

  v30 = sub_21DBF55BC();
  v31 = [v15 stringFromDate_];

  v32 = sub_21DBFA16C();
  v33 = *(v43 + 8);
  v34 = v23;
  v35 = v44;
  v33(v34, v44);
  v33(v24, v35);
  return v32;
}

uint64_t TTRReminderDetailViewModel.Person.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.Person.contact.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderDetailViewModel.Person.init(name:contact:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRReminderDetailViewModel.AssigneeCandidateState.assigneeCandidate.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21D1D9A84(v10, &v9);
}

__n128 TTRReminderDetailViewModel.AssigneeCandidateState.init(assigneeCandidate:isAssignee:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v3;
  *(a3 + 96) = *(a1 + 96);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 112) = a2;
  return result;
}

uint64_t TTRReminderDetailViewModel.Recurrence.repeatTypeDescription.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.Recurrence.shortDescription.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEndOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.shortDescription.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D7A2630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v5 setDateStyle_];
  [v5 setTimeStyle_];
  v6 = sub_21DBF5C0C();
  [v5 setTimeZone_];

  v7 = sub_21DBF55BC();
  v8 = [v5 stringFromDate_];

  v9 = sub_21DBFA16C();
  return v9;
}

uint64_t TTRReminderDetailViewModel.RecurrenceEnd.representedOption.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  sub_21D0D3954(v1 + *(v6 + 20), v5, &qword_27CE58D68);
  v7 = sub_21DBF563C();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  result = sub_21D0CF7E0(v5, &qword_27CE58D68);
  *a1 = v8;
  return result;
}

BOOL static TTRReminderDetailViewModel.FlaggedState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL static TTRReminderDetailViewModel.SubtaskState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_21D7A28A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

id TTRReminderDetailViewModel.Attachment.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRReminderDetailViewModel.Attachment.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.Attachment.init(image:name:attachment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TTRReminderDetailViewModel.Attachment.urlForQuickLook.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 fileURL];
    if (v6)
    {
      v7 = v6;
      sub_21DBF546C();

      v8 = sub_21DBF54CC();
      (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = sub_21DBF54CC();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }

    return sub_21D0D523C(v4, a1, &qword_27CE5EA20);
  }

  else
  {
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t static TTRReminderDetailViewModel.AttachmentState.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      sub_21D1D7218(v3, v2);
      v5 = v4;

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_21D7A2B68(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_21DBF8E0C();
      v3 = sub_21DBF8E0C();
      sub_21D1D7218(v3, v2);
      v5 = v4;

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.description.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.badgeSymbolName.getter()
{
  v1 = *(v0 + 56);
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.LocationDetailsModel.badgeBackgroundColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderDetailViewModel.LocationDetailsModel.init(title:subtitle:description:shouldShowAsUnauthorizedForPreciseLocation:badgeSymbolName:badgeBackgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t TTRReminderDetailViewModel.AttachmentData.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 40))
  {
    v3 = *(v0 + 16);
    MEMORY[0x223D44FA0](0);
    if (v1)
    {
      sub_21DBFC7FC();
      v4 = v1;
      sub_21DBFB64C();

      if (v3)
      {
LABEL_6:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        goto LABEL_10;
      }
    }

    else
    {
      sub_21DBFC7FC();
      if (v3)
      {
        goto LABEL_6;
      }
    }

    sub_21DBFC7FC();
    goto LABEL_10;
  }

  if (*(v0 + 40) == 1)
  {
    MEMORY[0x223D44FA0](1);
    return sub_21DBFB64C();
  }

  MEMORY[0x223D44FA0](2);
LABEL_10:

  return sub_21DBFA27C();
}

uint64_t TTRReminderDetailViewModel.AttachmentData.hashValue.getter()
{
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D7A2E90()
{
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t sub_21D7A2EF0()
{
  sub_21DBFC7DC();
  TTRReminderDetailViewModel.AttachmentData.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t TTRReminderDetailViewModel.BadgeViewModel.badgeName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

id TTRReminderDetailViewModel.BadgeViewModel.badgeColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_21D0FB960(v2, v3, v4, v5, v6, v7, v8);
}

id TTRReminderDetailViewModel.BadgeViewModel.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_21D0FB9BC(v2, v3, v4);
}

id TTRReminderDetailViewModel.BadgeViewModel.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  v8 = *MEMORY[0x277D44960];
  v6 = *MEMORY[0x277D44960];
  *a1 = xmmword_21DC0E710;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);

  return v8;
}

__n128 TTRReminderDetailViewModel.BadgeViewModel.init(badgeName:badgeColor:badge:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a3 + 48);
  v6 = a4[1].n128_u8[0];
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v7;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 64) = v5;
  result = *a4;
  *(a5 + 72) = *a4;
  *(a5 + 88) = v6;
  return result;
}

id TTRReminderDetailViewModel.SectionPickerVisibility.ttrSectionID.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 40) > 1u)
  {
    if (*(v1 + 40) == 2)
    {
      *a1 = 0;
      return result;
    }
  }

  else if (!*(v1 + 40))
  {
    v2 = *v1;
    *a1 = *v1;
    return v2;
  }

  *a1 = 1;
  return result;
}

id TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionID.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 40))
  {
    *a1 = *(v1 + 40) == 1;
  }

  else
  {
    v2 = *v1;
    *a1 = *v1;
    return v2;
  }

  return result;
}

uint64_t TTRReminderDetailViewModel.SectionPickerVisibility.Option.parentSectionDisplayName.getter()
{
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v1 = *v0;
LABEL_6:
      sub_21DBF8E0C();
      return v1;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  else
  {
    if (v0[2])
    {
      v1 = v0[1];
      goto LABEL_6;
    }

    return 0;
  }
}

uint64_t TTRReminderDetailViewModel.AppLink.appName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.AppLink.activityTitle.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.AppLink.phoneCallContext.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D3A1244(v2, v3, v4, v5);
}

uint64_t TTRReminderDetailViewModel.AppLink.localizedDescription.getter()
{
  if (v0[7] >= 2uLL)
  {
    v1 = v0[6];
    goto LABEL_5;
  }

  if (v0[4])
  {
    v1 = v0[3];
LABEL_5:
    sub_21DBF8E0C();
    return v1;
  }

  v3 = v0[2];
  if (!v3)
  {
    return 32;
  }

  v4 = v0[1];
  v5 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v5 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D00;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_21D17A884();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v1 = sub_21DBFA13C();

  return v1;
}

uint64_t TTRReminderDetailViewModel.allowsCommit.setter(char a1)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TTRReminderDetailViewModel.listName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 24));
  sub_21DBF8E0C();
  return v1;
}

void *TTRReminderDetailViewModel.listObjectID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 28));
  v2 = v1;
  return v1;
}

id TTRReminderDetailViewModel.listColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;

  return sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t TTRReminderDetailViewModel.listBadge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_21D0D3954(v11, &v10, &unk_27CE5E9E0);
}

id TTRReminderDetailViewModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 48));

  return v1;
}

uint64_t TTRReminderDetailViewModel.titleAugmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5);
}

__n128 TTRReminderDetailViewModel.titleAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 52);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t TTRReminderDetailViewModel.flaggedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

id TTRReminderDetailViewModel.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 72));

  return v1;
}

uint64_t TTRReminderDetailViewModel.notesAugmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5);
}

__n128 TTRReminderDetailViewModel.notesAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 76);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

void TTRReminderDetailViewModel.locationState.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 92);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v3 + 32);
  *(a1 + 32) = v8;

  sub_21D48BB60(v4, v5, v6, v7, v8);
}

uint64_t TTRReminderDetailViewModel.locationQuickPicksState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;

  return sub_21DBF8E0C();
}

uint64_t TTRReminderDetailViewModel.locationQuickPicksState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 96);

  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t TTRReminderDetailViewModel.personState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_21D7A9604(v4, v5, v6);
}

__n128 TTRReminderDetailViewModel.personState.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
  sub_21D7A9648(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t TTRReminderDetailViewModel.assigneeOptionsState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104));
  v4 = v3[6];
  v6 = v3[4];
  v19 = v3[5];
  v5 = v19;
  v20 = v4;
  v7 = v3[1];
  v16[0] = *v3;
  v8 = v3[2];
  v9 = *v3;
  v16[1] = v3[1];
  v16[2] = v8;
  v10 = v3[4];
  v12 = v3[2];
  v17 = v3[3];
  v11 = v17;
  v18 = v10;
  *(a1 + 32) = v12;
  *(a1 + 48) = v11;
  *a1 = v9;
  *(a1 + 16) = v7;
  v13 = v3[6];
  *(a1 + 80) = v5;
  *(a1 + 96) = v13;
  v21 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *(a1 + 64) = v6;
  return sub_21D7A9690(v16, v15);
}

__n128 TTRReminderDetailViewModel.assigneeOptionsState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
  v4 = *(v3 + 96);
  v12[5] = *(v3 + 80);
  v12[6] = v4;
  v13 = *(v3 + 112);
  v5 = *(v3 + 64);
  v6 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v6;
  v7 = *(v3 + 48);
  v12[2] = *(v3 + 32);
  v12[3] = v7;
  v12[4] = v5;
  sub_21D7A96C8(v12);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v11;
  return result;
}

uint64_t TTRReminderDetailViewModel.assigneeState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 108));
  v4 = v3[5];
  v19[0] = v3[6];
  *(v19 + 9) = *(v3 + 105);
  v5 = v3[3];
  v6 = v3[5];
  v17 = v3[4];
  v7 = v17;
  v18 = v6;
  v8 = v3[1];
  v14[0] = *v3;
  v9 = v14[0];
  v14[1] = v8;
  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  a1[2] = v15;
  a1[3] = v5;
  *a1 = v9;
  a1[1] = v8;
  *(a1 + 105) = *(v3 + 105);
  v11 = v3[6];
  a1[5] = v4;
  a1[6] = v11;
  a1[4] = v7;
  return sub_21D7A96F8(v14, &v13);
}

__n128 TTRReminderDetailViewModel.assigneeState.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 108));
  v4 = v3[6];
  v12[5] = v3[5];
  v13[0] = v4;
  *(v13 + 9) = *(v3 + 105);
  v5 = v3[4];
  v6 = v3[1];
  v12[0] = *v3;
  v12[1] = v6;
  v7 = v3[3];
  v12[2] = v3[2];
  v12[3] = v7;
  v12[4] = v5;
  sub_21D7A9730(v12);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v3[6] = *(a1 + 96);
  *(v3 + 105) = *(a1 + 105);
  v9 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v11;
  return result;
}

uint64_t TTRReminderDetailViewModel.hashtagsState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 112);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t TTRReminderDetailViewModel.hashtagsState.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 112);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.hashtagsAugmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 116));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21D24A7C4(v4, v5);
}

__n128 TTRReminderDetailViewModel.hashtagsAugmentation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 116);
  sub_21D24A814(*v3, *(v3 + 8));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  return result;
}

uint64_t TTRReminderDetailViewModel.supportsStylingInNote.setter(char a1)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t TTRReminderDetailViewModel.subtaskState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  v4 = (v1 + *(result + 124));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.attachmentState.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 128));

  return sub_21DBF8E0C();
}

uint64_t TTRReminderDetailViewModel.attachmentState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderDetailViewModel(0) + 128);

  *(v1 + v3) = v2;
  return result;
}

uint64_t TTRReminderDetailViewModel.assignmentString.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 136));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderDetailViewModel.assignmentString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 136));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRReminderDetailViewModel.locationDetailsState.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 140));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21D7A97C8(v10, &v9);
}

__n128 TTRReminderDetailViewModel.locationDetailsState.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 140));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_21D7A9800(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t TTRReminderDetailViewModel.includedAttachments.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 144));

  return sub_21DBF8E0C();
}

uint64_t TTRReminderDetailViewModel.includedAttachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRReminderDetailViewModel(0) + 144);

  *(v1 + v3) = v2;
  return result;
}

uint64_t TTRReminderDetailViewModel.sectionPickerVisibility.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 148);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  return sub_21D7A9830(v4, v5, v6, v7, v8, v9);
}

__n128 TTRReminderDetailViewModel.sectionPickerVisibility.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 148);
  sub_21D7A98A0(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t TTRReminderDetailViewModel.appLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_21D0D3954(v10, v9, &qword_27CE626B0);
}

__n128 TTRReminderDetailViewModel.appLink.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 152);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_21D0CF7E0(v8, &qword_27CE626B0);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

void TTRReminderDetailViewModel.priorityLevelDisplayString.getter()
{
  v1 = type metadata accessor for TTRReminderDetailViewModel(0);
  v2 = *(v1 + 64);
  v3 = *(v0 + *(v1 + 60));
  if (*(v0 + v2) < v3)
  {
    if (v3 > 1)
    {
      if (v3 == 2 || v3 == 3)
      {
        return;
      }
    }

    else if (v3 <= 1)
    {
      return;
    }

    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE62E48);
    v5 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v5);
    sub_21DAEAB00("unknown priority level", 22, 2);
    __break(1u);
  }
}

uint64_t sub_21D7A4A54()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  qword_27CE61920 = result;
  *algn_27CE61928 = v1;
  return result;
}

uint64_t static TTRReminderDetailViewModel.fixedAttachmentName.getter()
{
  if (qword_27CE56C98 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE61920;
  sub_21DBF8E0C();
  return v0;
}

uint64_t sub_21D7A4B70()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  __swift_allocate_value_buffer(v0, qword_27CE61930);
  v1 = __swift_project_value_buffer(v0, qword_27CE61930);
  v2 = [objc_opt_self() newObjectID];
  v3 = *(v0 + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  result = (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *v1 = v2;
  return result;
}

uint64_t TTRReminderDetailViewModel.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRReminderDetailViewModel(0);
  v3 = (a1 + v2[34]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[38];
  *(v4 + 64) = 0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  if (qword_27CE56CA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v6 = __swift_project_value_buffer(v5, qword_27CE61930);
  sub_21D799E6C(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[5]) = 1;
  v7 = (a1 + v2[6]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(a1 + v2[7]) = 0;
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_280D1BAC8;
  v9 = xmmword_280D1BAD8;
  v10 = xmmword_280D1BAE8;
  v11 = byte_280D1BAF8;
  v12 = a1 + v2[8];
  *v12 = xmmword_280D1BAC8;
  *(v12 + 16) = v9;
  *(v12 + 32) = v10;
  *(v12 + 48) = v11;
  v13 = (a1 + v2[9]);
  *v13 = xmmword_21DC19C40;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  *(v13 + 73) = 0u;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 1;
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  sub_21D0FB960(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11);
  *(a1 + v2[12]) = [v14 init];
  v15 = (a1 + v2[13]);
  *v15 = 0u;
  v15[1] = 0u;
  *(a1 + v2[14]) = 0;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  v16 = (a1 + v2[19]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = v2[20];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  *(a1 + v2[21]) = 0;
  *(a1 + v2[22]) = 0;
  v19 = a1 + v2[23];
  *v19 = 1;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0x80;
  v20 = a1 + v2[24];
  *v20 = 0;
  *(v20 + 8) = 0;
  if (qword_280D15470 != -1)
  {
    swift_once();
  }

  v22 = qword_280D15480;
  v21 = unk_280D15488;
  v23 = a1 + v2[28];
  *v23 = byte_280D15478;
  *(v23 + 8) = v22;
  *(v23 + 16) = v21;
  v24 = a1 + v2[25];
  *v24 = xmmword_21DC22F10;
  *(v24 + 16) = 0;
  sub_21D7A9558(v37);
  v25 = (a1 + v2[27]);
  v26 = v37[5];
  v25[4] = v37[4];
  v25[5] = v26;
  v25[6] = v38[0];
  *(v25 + 105) = *(v38 + 9);
  v27 = v37[1];
  *v25 = v37[0];
  v25[1] = v27;
  v28 = v37[3];
  v25[2] = v37[2];
  v25[3] = v28;
  v29 = a1 + v2[26];
  *(v29 + 112) = 0;
  *(v29 + 80) = 0u;
  *(v29 + 96) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *v29 = 0u;
  v30 = a1 + v2[31];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(a1 + v2[32]) = 0;
  v31 = v2[33];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  (*(*(v32 - 8) + 56))(a1 + v31, 1, 1, v32);
  v33 = (a1 + v2[35]);
  *v33 = xmmword_21DC19C40;
  v33[1] = 0u;
  v33[2] = 0u;
  v33[3] = 0u;
  v33[4] = 0u;
  *(a1 + v2[36]) = 0;
  v34 = (a1 + v2[29]);
  *v34 = 0u;
  v34[1] = 0u;
  *(a1 + v2[30]) = 0;
  v35 = a1 + v2[37];
  *(v35 + 32) = 0;
  *v35 = 0u;
  *(v35 + 16) = 0u;
  *(v35 + 40) = -1;
  sub_21DBF8E0C();
  return sub_21DBF8E0C();
}

id static TTRReminderDetailViewModel.defaultItem(withReminderID:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  *a2 = a1;
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

__n128 sub_21D7A5174@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t static TTRReminderDetailViewModel.Attachment.identitiesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = [v2 objectID];
  v5 = [v3 objectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t static TTRReminderDetailViewModel.Attachment.contentsEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v8 = v6;
    v9 = v3;
    v10 = sub_21DBFB63C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v2 == v5 && v4 == v7;
  if (v11 || (sub_21DBFC64C() & 1) != 0)
  {
    sub_21D0D8CF0(0, &qword_280D17680);
    return sub_21DBFB63C() & 1;
  }

  return 0;
}

uint64_t sub_21D7A5320(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_21D0D8CF0(0, &qword_280D17680);
  v4 = [v2 objectID];
  v5 = [v3 objectID];
  LOBYTE(v3) = sub_21DBFB63C();

  return v3 & 1;
}

uint64_t sub_21D7A53BC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(v6, v5) & 1;
}

uint64_t static TTRReminderDetailViewModel.AssigneeCandidateState.contentsEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  v37 = *(a1 + 64);
  v38 = v3;
  v4 = *(a1 + 80);
  v39 = *(a1 + 96);
  v5 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v5;
  v6 = *(a1 + 48);
  v8 = *a1;
  v7 = *(a1 + 16);
  v35 = *(a1 + 32);
  v36 = v6;
  v9 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v9;
  v10 = *(a2 + 80);
  v45 = *(a2 + 96);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  v43 = *(a2 + 64);
  v44 = v12;
  v13 = *(a2 + 48);
  v14 = *a2;
  v15 = *(a2 + 16);
  v41 = *(a2 + 32);
  v42 = v13;
  v31 = v37;
  v32 = v4;
  v33 = *(a1 + 96);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v2;
  v24 = v43;
  v25 = v10;
  v26 = *(a2 + 96);
  v16 = *(a1 + 112);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v41;
  v23 = v11;
  sub_21D1D9A84(v34, v47);
  sub_21D1D9A84(v40, v47);
  v18 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v27, &v20);
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_21D1D9AE0(v46);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[2] = v29;
  v47[3] = v30;
  sub_21D1D9AE0(v47);
  return v18 & ~(v16 ^ v17) & 1;
}

uint64_t sub_21D7A5538(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v11[6] = *(a1 + 96);
  v12 = *(a1 + 112);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v9[6] = *(a2 + 96);
  v10 = *(a2 + 112);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV2eeoiySbAE_AEtFZ_0(v11, v9) & 1;
}

uint64_t sub_21D7A55BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D799E6C(a1, v9, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  result = (*(*(v10 - 8) + 48))(v9, 1, v10);
  v12 = 0;
  v13 = 0;
  if (result != 1)
  {

    v14 = *(v10 + 64);
    sub_21D7A959C(v9, v6, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v15 = &v6[*(v4 + 48)];
    v12 = *v15;
    v13 = *(v15 + 1);
    sub_21DBF8E0C();
    sub_21D799ED4(v6, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    result = sub_21D0CF7E0(&v9[v14], &unk_27CE628E0);
  }

  *a2 = v12;
  a2[1] = v13;
  return result;
}

void (*TTRReminderDetailViewModel.DueDateState.timeZoneDescription.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v6[3] = v8;
  v9 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v6[4] = v9;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(*(v9 - 8) + 64));
  }

  v11 = v10;
  v6[5] = v10;
  v12 = *(*(type metadata accessor for TTRReminderDetailViewModel.DueDateState(0) - 8) + 64);
  if (v4)
  {
    v6[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[6] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[7] = v13;
  sub_21D799E6C(v2, v13, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v6[8] = v15;
  v16 = *(v15 - 8);
  v6[9] = v16;
  v17 = *(v16 + 48);
  v6[10] = v17;
  v6[11] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v17(v14, 1, v15) == 1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {

    v20 = *(v15 + 64);
    sub_21D7A959C(v14, v11, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v21 = (v11 + *(v9 + 48));
    v18 = *v21;
    v19 = v21[1];
    sub_21DBF8E0C();
    sub_21D799ED4(v11, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21D0CF7E0(v14 + v20, &unk_27CE628E0);
  }

  *v6 = v18;
  v6[1] = v19;
  return sub_21D7A5A24;
}

void sub_21D7A5A24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[5];
    v8 = v2[3];
    sub_21DBF8E0C();
    TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(v4, v3);
  }

  else
  {
    v9 = v2[10];
    v10 = v2[8];
    v11 = v2[6];
    sub_21D799E6C((*a1)[2], v11, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    if (v9(v11, 1, v10) == 1)
    {
    }

    else
    {
      v12 = v2[8];
      v13 = v2[9];
      v14 = v2[5];
      v15 = v2[6];
      v16 = v2[3];
      v25 = v2[4];
      v17 = v2[2];
      sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      v18 = v15 + v12[12];
      v30 = *v18;
      v29 = *(v18 + 8);
      v28 = *(v18 + 16);
      v26 = *(v18 + 40);
      v27 = *(v18 + 32);
      v19 = v12[16];
      v31 = *(v15 + v12[24]);
      v32 = *(v15 + v12[20]);
      sub_21D7A959C(v15, v14, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D0D523C(v15 + v19, v16, &unk_27CE628E0);
      v20 = (v14 + *(v25 + 48));

      *v20 = v4;
      v20[1] = v3;
      v21 = v17 + v12[12];
      v22 = v12[16];
      v23 = v12[20];
      v24 = v12[24];
      sub_21D799E6C(v14, v17, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      *v21 = v30;
      *(v21 + 8) = v29;
      *(v21 + 16) = v28;
      *(v21 + 32) = v27;
      *(v21 + 40) = v26;
      sub_21D0D523C(v16, v17 + v22, &unk_27CE628E0);
      *(v17 + v23) = v32;
      *(v17 + v24) = v31;
      (*(v13 + 56))(v17, 0, 1, v12);
      sub_21D799ED4(v14, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }

    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[5];
    v8 = v2[3];
  }

  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_21D7A5CB4()
{
  v0 = sub_21DBF582C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = objc_opt_self();
  v6 = sub_21DBFA12C();
  sub_21DBF57AC();
  v7 = sub_21DBF574C();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  [v4 setDateFormat_];
  v9 = sub_21DBF5C0C();
  [v4 setTimeZone_];

  v10 = sub_21DBF55BC();
  v11 = [v4 stringFromDate_];

  v12 = sub_21DBFA16C();
  return v12;
}

uint64_t sub_21D7A5EB4()
{
  v0 = off_282EEACF8[0];
  v1 = sub_21D0D8CF0(0, &qword_280D17770);
  v2 = (v0)(v1, &protocol witness table for REMReminderChangeItem);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v13 = MEMORY[0x277D84F90];
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v6 = sub_21DBFBD7C();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x223D44740](v8, v4);
            }

            else
            {
              if (v8 >= *(v5 + 16))
              {
                goto LABEL_19;
              }

              v9 = *(v4 + 8 * v8 + 32);
            }

            v10 = v9;
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v11 = [v9 trigger];

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x223D42D80]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v3 = v13;
        }

        while (v7 != v6);
      }
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return v3;
}

uint64_t sub_21D7A6098()
{
  v0 = off_282EEAC18;
  v1 = sub_21D0D8CF0(0, &qword_280D17860);
  v2 = v0(v1, &protocol witness table for REMReminder);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    v13 = MEMORY[0x277D84F90];
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v6 = sub_21DBFBD7C();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x223D44740](v8, v4);
            }

            else
            {
              if (v8 >= *(v5 + 16))
              {
                goto LABEL_19;
              }

              v9 = *(v4 + 8 * v8 + 32);
            }

            v10 = v9;
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v11 = [v9 trigger];

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x223D42D80]();
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v3 = v13;
        }

        while (v7 != v6);
      }
    }

    else
    {
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  return v3;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV05BadgeeF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    v27 = *(a2 + 88);
    v28 = *(a2 + 80);
    v29 = *(a2 + 72);
    v30 = *(a1 + 88);
    v31 = *(a1 + 80);
    v32 = *(a1 + 72);
    if (*a1 != *a2 || v3 != v11)
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 16);
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v19 = sub_21DBFC64C();
      v10 = v23;
      v9 = v24;
      v7 = v25;
      v4 = v26;
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v27 = *(a2 + 88);
    v28 = *(a2 + 80);
    v29 = *(a2 + 72);
    v30 = *(a1 + 88);
    v31 = *(a1 + 80);
    v32 = *(a1 + 72);
    if (v11)
    {
LABEL_10:
      v21 = 0;
      return v21 & 1;
    }
  }

  v40 = v4;
  v41 = v5;
  v42 = v6;
  v43 = v8;
  v44 = v7;
  v45 = v9;
  v46 = v10;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  sub_21D0FB960(v4, v5, v6, v8, v7, v9, v10);
  sub_21D0FB960(v12, v13, v14, v15, v16, v17, v18);
  v20 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v40, &v33);
  sub_21D1078C0(v33, v34, v35, v36, v37, v38, v39);
  sub_21D1078C0(v40, v41, v42, v43, v44, v45, v46);
  if (!v20)
  {
    goto LABEL_10;
  }

  v40 = v32;
  v41 = v31;
  LOBYTE(v42) = v30;
  v33 = v29;
  v34 = v28;
  LOBYTE(v35) = v27;
  sub_21D0FB9BC(v32, v31, v30);
  sub_21D0FB9BC(v29, v28, v27);
  v21 = _s15RemindersUICore27TTRListDetailViewModelBadgeO2eeoiySbAC_ACtFZ_0(&v40, &v33);
  sub_21D0FB9F4(v33, v34, v35);
  sub_21D0FB9F4(v40, v41, v42);
  return v21 & 1;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_21DBF55EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((MEMORY[0x223D3D6A0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0 || *(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v7 = v5[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 16);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 16);
  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = v10;
    v12 = *v10;
    v13 = v14[1];
    v17 = v8;
    v15 = *v8;
    v16 = v17[1];
    v19 = v11 != 2 && v15 == v12 && v16 == v13;
    if (!v19 || ((v9 ^ v11) & 1) != 0)
    {
      return 0;
    }
  }

  if (*(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]))
  {
    return 0;
  }

  v20 = v5[11];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 3)
  {
    if (v22 != 3)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v23 = v5[12];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (!v25)
  {
    return !v27;
  }

  return v27 && (*v24 == *v26 && v25 == v27 || (sub_21DBFC64C() & 1) != 0);
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV10AttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v8 = v6;
    v9 = v3;
    v10 = sub_21DBFB63C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v11 = v2 == v5 && v4 == v7;
  if (v11 || (sub_21DBFC64C() & 1) != 0)
  {
    sub_21D0D8CF0(0, &qword_280D17680);
    return sub_21DBFB63C() & 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV10RecurrenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0)
  {
    if (v4 = *(a1 + 32), v5 = *(a1 + 40), v6 = *(a2 + 32), v7 = *(a2 + 40), *(a1 + 16) == *(a2 + 16)) && *(a1 + 24) == *(a2 + 24) || (v8 = sub_21DBFC64C(), result = 0, (v8))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_21DBFC64C();
      }
    }
  }

  return result;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV11PersonStateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (!v5)
  {
    if (!v7)
    {
      sub_21D7A9648(v3, 0, v4);
      v9 = v6;
      v10 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v12 = v3;
    v13 = a1[2];
    sub_21D7A9604(v3, a1[1], v4);
    sub_21D7A9604(v6, v7, v8);
    sub_21D7A9648(v12, v5, v13);
    sub_21D7A9648(v6, v7, v8);
    v11 = 0;
    return v11 & 1;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if (v7 == 2)
      {
        sub_21D7A9648(v3, 2uLL, v4);
        v9 = v6;
        v10 = 2;
LABEL_10:
        sub_21D7A9648(v9, v10, v8);
        v11 = 1;
        return v11 & 1;
      }
    }

    else if (v7 >= 3)
    {
      v18[0] = v3;
      v18[1] = v5;
      v18[2] = v4;
      v17[0] = v6;
      v17[1] = v7;
      v17[2] = v8;
      v15 = v3;
      v16 = v4;
      sub_21D7A9604(v6, v7, v8);
      sub_21D7A9604(v15, v5, v16);
      sub_21D7A9604(v15, v5, v16);
      sub_21D7A9604(v6, v7, v8);
      v11 = _s15RemindersUICore23TTRUserActivityMetadataV11PhoneCallerV2eeoiySbAE_AEtFZ_0(v18, v17);
      sub_21D7A9648(v15, v5, v16);
      sub_21D7A9648(v6, v7, v8);
      sub_21D7A9648(v6, v7, v8);
      sub_21D7A9648(v15, v5, v16);
      return v11 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 1)
  {
    goto LABEL_12;
  }

  v11 = 1;
  sub_21D7A9648(v3, 1uLL, v4);
  sub_21D7A9648(v6, 1uLL, v8);
  return v11 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV13AssigneeStateO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v68 = a1[4];
  v69 = v3;
  v4 = a1[5];
  v70[0] = a1[6];
  *(v70 + 9) = *(a1 + 105);
  v5 = a1[1];
  v65[0] = *a1;
  v65[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v66 = a1[2];
  v67 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v73 = a2[2];
  v74 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v71 = v9;
  v72 = v12;
  *(v77 + 9) = *(a2 + 105);
  v15 = a2[5];
  v77[0] = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v75 = a2[4];
  v76 = v17;
  v18 = a1[3];
  v78[2] = a1[2];
  v78[3] = v18;
  v19 = a1[1];
  v78[0] = *a1;
  v78[1] = v19;
  *(v79 + 9) = *(a1 + 105);
  v20 = a1[5];
  v78[4] = a1[4];
  v78[5] = v20;
  v79[3] = v10;
  v79[4] = v13;
  v79[0] = a1[6];
  v79[2] = v14;
  *(v80 + 9) = *(a2 + 105);
  v21 = a2[6];
  v79[7] = v15;
  v80[0] = v21;
  v79[5] = v16;
  v79[6] = v75;
  v81[2] = v66;
  v81[3] = v2;
  v81[0] = v8;
  v81[1] = v7;
  v22 = a1[6];
  *&v82[9] = *(a1 + 105);
  v81[5] = v4;
  *v82 = v22;
  v81[4] = v68;
  v23 = sub_21D7B9F38(v81);
  if (!v23)
  {
    v37 = nullsub_1(v81, v24, v25);
    v62 = v75;
    v63 = v76;
    v64[0] = v77[0];
    *(v64 + 9) = *(v77 + 9);
    v58 = v71;
    v59 = v72;
    v60 = v73;
    v61 = v74;
    if (!sub_21D7B9F38(&v58))
    {
      v40 = nullsub_1(&v58, v38, v39);
      v42 = *v37;
      v41 = (v37 + 1);
      v43 = (v40 + 1);
      v44 = *v40;
      sub_21D7A96F8(&v71, v49);
      sub_21D7A96F8(v65, v49);
      sub_21D1D9A84(v41, v49);
      sub_21D1D9A84(v43, v49);
      if (sub_21D1D6D84(v42, v44))
      {
        v49[3] = v41[3];
        v49[4] = v41[4];
        v49[5] = v41[5];
        v49[6] = v41[6];
        v49[0] = *v41;
        v49[1] = v41[1];
        v49[2] = v41[2];
        v45 = v43[5];
        v55 = v43[4];
        v56 = v45;
        v57 = v43[6];
        v46 = v43[1];
        v51 = *v43;
        v52 = v46;
        v47 = v43[3];
        v53 = v43[2];
        v54 = v47;
        v36 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(v49, &v51);
        sub_21D0CF7E0(v78, &qword_27CE619A8);
        sub_21D1D9AE0(v43);
        sub_21D1D9AE0(v41);
        return v36 & 1;
      }

      sub_21D1D9AE0(v43);
      sub_21D1D9AE0(v41);
LABEL_11:
      sub_21D0CF7E0(v78, &qword_27CE619A8);
      v36 = 0;
      return v36 & 1;
    }

    goto LABEL_10;
  }

  if (v23 != 1)
  {
    v62 = v75;
    v63 = v76;
    v64[0] = v77[0];
    *(v64 + 9) = *(v77 + 9);
    v58 = v71;
    v59 = v72;
    v60 = v73;
    v61 = v74;
    if (sub_21D7B9F38(&v58) == 2)
    {
      sub_21D0CF7E0(v78, &qword_27CE619A8);
      v36 = 1;
      return v36 & 1;
    }

    goto LABEL_10;
  }

  v26 = nullsub_1(v81, v24, v25);
  v62 = v75;
  v63 = v76;
  v64[0] = v77[0];
  *(v64 + 9) = *(v77 + 9);
  v58 = v71;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  if (sub_21D7B9F38(&v58) != 1)
  {
LABEL_10:
    sub_21D7A96F8(&v71, &v58);
    sub_21D7A96F8(v65, &v58);
    goto LABEL_11;
  }

  v29 = nullsub_1(&v58, v27, v28);
  v30 = v26[5];
  v55 = v26[4];
  v56 = v30;
  v57 = v26[6];
  v31 = v26[1];
  v51 = *v26;
  v52 = v31;
  v32 = v26[3];
  v53 = v26[2];
  v54 = v32;
  v33 = v29[5];
  v50[4] = v29[4];
  v50[5] = v33;
  v50[6] = v29[6];
  v34 = v29[1];
  v50[0] = *v29;
  v50[1] = v34;
  v35 = v29[3];
  v50[2] = v29[2];
  v50[3] = v35;
  sub_21D7A96F8(&v71, v49);
  sub_21D7A96F8(v65, v49);
  sub_21D7A96F8(&v71, v49);
  sub_21D7A96F8(v65, v49);
  v36 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v51, v50);
  sub_21D0CF7E0(v78, &qword_27CE619A8);
  sub_21D7A9730(&v71);
  sub_21D7A9730(v65);
  return v36 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV13LocationStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!(v6 >> 6))
  {
    if (v11 < 0x40)
    {
      v15 = v3 == v7 && v2 == v8;
      if (v15 || (sub_21DBFC64C() & 1) != 0)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v28 = v9;
        sub_21D48BB60(v7, v8, v10, v9, v11);
        sub_21D48BB60(v3, v2, v5, v4, v6);
        v16 = sub_21DBFB63C();
        sub_21D48C240(v3, v2, v5, v4, v6);
        sub_21D48C240(v7, v8, v10, v28, v11);
        v17 = v11 ^ v6 ^ 1;
        if (v4 != v28)
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        return v18 & 1;
      }
    }

    goto LABEL_49;
  }

  if (v6 >> 6 == 1)
  {
    if ((v11 & 0xC0) == 0x40)
    {
      v12 = *a1;
      if (v3 != v7 || v2 != v8)
      {
        v27 = sub_21DBFC64C();
        sub_21D48BB60(v7, v8, v10, v9, v11);
        sub_21D48BB60(v3, v2, v5, v4, v6);
        sub_21D48C240(v3, v2, v5, v4, v6);
        sub_21D48C240(v7, v8, v10, v9, v11);
        return v27 & 1;
      }

      sub_21D48BB60(v12, v2, v10, v9, v11);
      sub_21D48BB60(v3, v2, v5, v4, v6);
      sub_21D48C240(v3, v2, v5, v4, v6);
      v20 = v3;
      v23 = v2;
      v24 = v10;
      v25 = v9;
      v26 = v11;
      goto LABEL_43;
    }

LABEL_49:
    sub_21D48BB60(v7, v8, v10, v9, v11);
    sub_21D48BB60(v3, v2, v5, v4, v6);
    sub_21D48C240(v3, v2, v5, v4, v6);
    sub_21D48C240(v7, v8, v10, v9, v11);
    v18 = 0;
    return v18 & 1;
  }

  if (v5 | v2 | v3 | v4 || v6 != 128)
  {
    if (v6 == 128 && v3 == 1 && (v5 | v2 | v4) == 0)
    {
      if ((v11 & 0xC0) == 0x80 && v11 == 128 && v7 == 1 && !(v10 | v8 | v9))
      {
        v18 = 1;
        sub_21D48C240(1, 0, 0, 0, 0x80u);
        sub_21D48C240(1, 0, 0, 0, 0x80u);
        return v18 & 1;
      }

      goto LABEL_49;
    }

    if ((v11 & 0xC0) != 0x80 || v11 != 128 || v7 != 2 || v10 | v8 | v9)
    {
      goto LABEL_49;
    }

    sub_21D48C240(2, 0, 0, 0, 0x80u);
    v20 = 2;
  }

  else
  {
    v19 = (v11 & 0xC0) == 0x80 && (v10 | v8 | v7 | v9) == 0;
    if (!v19 || v11 != 128)
    {
      goto LABEL_49;
    }

    sub_21D48C240(0, 0, 0, 0, 0x80u);
    v20 = 0;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0x80;
LABEL_43:
  sub_21D48C240(v20, v23, v24, v25, v26);
  v18 = 1;
  return v18 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV14AttachmentDataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v26[0] = *a1;
  v26[1] = v3;
  v26[2] = v5;
  v26[3] = v4;
  v25 = v6;
  v26[4] = v6;
  v27 = v7;
  v28 = v9;
  v29 = v8;
  v30 = v11;
  v31 = v10;
  v32 = v12;
  v33 = v13;
  if (v7)
  {
    if (v7 == 1)
    {
      if (v13 == 1)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        sub_21D7BB5A4(v9, v8, v11, v10, v12, 1);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 1);
        v14 = sub_21DBFB63C();
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (v13 == 2)
    {
      if (v2 == v9 && v3 == v8)
      {
        sub_21D7BB5A4(v2, v3, v11, v10, v12, 2);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 2);
        v14 = 1;
      }

      else
      {
        v14 = sub_21DBFC64C();
        sub_21D7BB5A4(v9, v8, v11, v10, v12, 2);
        sub_21D7BB5A4(v2, v3, v5, v4, v25, 2);
      }

      goto LABEL_22;
    }

LABEL_19:
    sub_21D7BB5A4(v9, v8, v11, v10, v12, v13);
    v18 = v2;
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = v25;
    v23 = v7;
LABEL_20:
    sub_21D7BB5A4(v18, v19, v20, v21, v22, v23);
    goto LABEL_21;
  }

  if (v13)
  {
    goto LABEL_19;
  }

  if (v2)
  {
    if (v9)
    {
      sub_21D0D8CF0(0, &qword_280D17688);
      sub_21D7BB5A4(v9, v8, v11, v10, v12, 0);
      sub_21D7BB5A4(v2, v3, v5, v4, v25, 0);
      v15 = v9;
      v16 = v2;
      v17 = sub_21DBFB63C();

      if ((v17 & 1) == 0)
      {
LABEL_21:
        v14 = 0;
        goto LABEL_22;
      }

      if (v5)
      {
        goto LABEL_10;
      }

LABEL_29:
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    sub_21D7BB5A4(0, v8, v11, v10, v12, 0);
    v18 = v2;
LABEL_27:
    v19 = v3;
    v20 = v5;
    v21 = v4;
    v22 = v25;
    v23 = 0;
    goto LABEL_20;
  }

  if (v9)
  {
    sub_21D7BB5A4(v9, v8, v11, v10, v12, 0);
    v18 = 0;
    goto LABEL_27;
  }

  sub_21D7BB5A4(0, v8, v11, v10, v12, 0);
  sub_21D7BB5A4(0, v3, v5, v4, v25, 0);
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_10:
  if (!v11 || (v3 != v8 || v5 != v11) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_30:
  if (v4 == v10 && v25 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DBFC64C();
  }

LABEL_22:
  sub_21D0CF7E0(v26, &qword_27CE61998);
  return v14 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV20AssigneeOptionsStateO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v37 = a1[4];
  v38 = v3;
  v4 = a1[5];
  v39 = a1[6];
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v41[2] = a2[2];
  v41[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v41[0] = v9;
  v41[1] = v12;
  v15 = a2[5];
  v44 = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v42 = a2[4];
  v43 = v17;
  v18 = a1[3];
  v46[2] = a1[2];
  v46[3] = v18;
  v19 = a1[1];
  v46[0] = *a1;
  v46[1] = v19;
  v20 = a1[6];
  v21 = a1[4];
  v46[5] = a1[5];
  v46[6] = v20;
  v46[4] = v21;
  v51 = v16;
  v50 = v13;
  v49 = v10;
  v48 = v14;
  v54 = a2[6];
  v53 = v15;
  v52 = v42;
  *&v56[32] = v35;
  *&v56[48] = v2;
  v40 = *(a1 + 14);
  v45 = *(a2 + 14);
  v22 = *(a2 + 14);
  v47 = *(a1 + 14);
  v55 = v22;
  *v56 = v8;
  *&v56[16] = v7;
  v23 = a1[6];
  *&v56[112] = *(a1 + 14);
  *&v56[80] = v4;
  *&v56[96] = v23;
  *&v56[64] = v37;
  v24 = v8;
  if (!v8)
  {
    if (!*&v41[0])
    {
      sub_21D0CF7E0(v46, &qword_27CE619B0);
      v29 = 1;
      return v29 & 1;
    }

    goto LABEL_6;
  }

  v25 = a2[5];
  *&v33[64] = a2[4];
  *&v33[80] = v25;
  *&v33[96] = a2[6];
  *&v33[112] = *(a2 + 14);
  v26 = a2[1];
  *v33 = *a2;
  *&v33[16] = v26;
  v27 = a2[3];
  *&v33[32] = a2[2];
  *&v33[48] = v27;
  v28 = *v33;
  if (!*v33)
  {
LABEL_6:
    sub_21D7A9690(v41, v33);
    sub_21D7A9690(v34, v33);
LABEL_8:
    sub_21D0CF7E0(v46, &qword_27CE619B0);
    v29 = 0;
    return v29 & 1;
  }

  sub_21D7A9690(v41, v32);
  sub_21D7A9690(v34, v32);
  sub_21D1D9A84(&v56[8], v32);
  sub_21D1D9A84(&v33[8], v32);
  if ((sub_21D1D6D84(v24, v28) & 1) == 0)
  {
    sub_21D1D9AE0(&v33[8]);
    sub_21D1D9AE0(&v56[8]);
    goto LABEL_8;
  }

  v32[4] = *&v56[72];
  v32[5] = *&v56[88];
  v32[6] = *&v56[104];
  v32[0] = *&v56[8];
  v32[1] = *&v56[24];
  v32[2] = *&v56[40];
  v32[3] = *&v56[56];
  v31[4] = *&v33[72];
  v31[5] = *&v33[88];
  v31[6] = *&v33[104];
  v31[0] = *&v33[8];
  v31[1] = *&v33[24];
  v31[2] = *&v33[40];
  v31[3] = *&v33[56];
  v29 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(v32, v31);
  sub_21D0CF7E0(v46, &qword_27CE619B0);
  sub_21D1D9AE0(&v33[8]);
  sub_21D1D9AE0(&v56[8]);
  return v29 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  v37 = *(a1 + 64);
  v38 = v3;
  v4 = *(a1 + 80);
  v39 = *(a1 + 96);
  v5 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v5;
  v6 = *(a1 + 48);
  v8 = *a1;
  v7 = *(a1 + 16);
  v35 = *(a1 + 32);
  v36 = v6;
  v9 = *(a2 + 16);
  v40[0] = *a2;
  v40[1] = v9;
  v10 = *(a2 + 80);
  v45 = *(a2 + 96);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  v43 = *(a2 + 64);
  v44 = v12;
  v13 = *(a2 + 48);
  v14 = *a2;
  v15 = *(a2 + 16);
  v41 = *(a2 + 32);
  v42 = v13;
  v31 = v37;
  v32 = v4;
  v33 = *(a1 + 96);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v2;
  v24 = v43;
  v25 = v10;
  v26 = *(a2 + 96);
  v16 = *(a1 + 112);
  v17 = *(a2 + 112);
  v20 = v14;
  v21 = v15;
  v22 = v41;
  v23 = v11;
  sub_21D1D9A84(v34, v47);
  sub_21D1D9A84(v40, v47);
  v18 = _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(&v27, &v20);
  v46[4] = v24;
  v46[5] = v25;
  v46[6] = v26;
  v46[0] = v20;
  v46[1] = v21;
  v46[2] = v22;
  v46[3] = v23;
  sub_21D1D9AE0(v46);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[2] = v29;
  v47[3] = v30;
  sub_21D1D9AE0(v47);
  return v18 & ~(v16 ^ v17) & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV23LocationQuickPicksStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *(a1 + 8);
      v4 = *(a2 + 8);
      sub_21DBF8E0C();
      v5 = sub_21DBF8E0C();
      if (sub_21D1D5448(v5, v2))
      {
        if (v3 == 6)
        {

          return v4 == 6;
        }

        if (v4 != 6)
        {
          v7 = sub_21D25BD94(v3, v4);

          return (v7 & 1) != 0;
        }
      }
    }
  }

  else if (!v2)
  {
    swift_bridgeObjectRelease_n();
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO6OptionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      v33[0] = *a1;
      v33[1] = v2;
      v33[2] = v4;
      v33[3] = v5;
      v33[4] = v6;
      v32[0] = v8;
      v32[1] = v9;
      v32[2] = v10;
      v32[3] = v11;
      v32[4] = v12;
      v16 = v4;
      v17 = v12;
      v18 = v12;
      v19 = v10;
      v20 = v8;
      v28 = v8;
      sub_21D7A9844(v8, v9, v10, v11, v18, 0);
      sub_21D7A9844(v3, v2, v16, v5, v6, 0);
      v21 = v20;
      v22 = v19;
      sub_21D7A9844(v21, v9, v19, v11, v17, 0);
      sub_21D7A9844(v3, v2, v16, v5, v6, 0);
      v23 = _s15RemindersUICore14TTRSectionLiteV2eeoiySbAC_ACtFZ_0(v33, v32);
      sub_21D7A98B4(v3, v2, v16, v5, v6, 0);
      sub_21D7A98B4(v28, v9, v22, v11, v17, 0);
      sub_21D7A98B4(v28, v9, v22, v11, v17, 0);
      sub_21D7A98B4(v3, v2, v16, v5, v6, 0);
      return v23 & 1;
    }

    goto LABEL_11;
  }

  if (v7 != 1)
  {
    if (v13 == 2 && !(v9 | v8 | v10 | v11 | v12))
    {
      sub_21D7A98B4(*a1, v2, v4, v5, v6, 2);
      sub_21D7A98B4(0, 0, 0, 0, v12, 2);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_11;
  }

  if (v13 != 1)
  {
LABEL_11:
    v29 = *(a2 + 16);
    v30 = *(a2 + 24);
    v24 = *a2;
    sub_21D7A9844(*a2, *(a2 + 8), v10, v30, v12, v13);
    sub_21D7A9844(v3, v2, v4, v5, v6, v7);
    sub_21D7A98B4(v3, v2, v4, v5, v6, v7);
    sub_21D7A98B4(v24, v9, v29, v30, v12, v13);
    v23 = 0;
    return v23 & 1;
  }

  v14 = *(a1 + 16);
  if (v3 == v8 && v2 == v9)
  {
    v15 = *(a2 + 16);
    sub_21D7A9844(*a1, v2, v10, v11, v12, 1);
    sub_21D7A9844(v3, v2, v14, v5, v6, 1);
    sub_21D7A98B4(v3, v2, v14, v5, v6, 1);
    sub_21D7A98B4(v3, v2, v15, v11, v12, 1);
LABEL_14:
    v23 = v15 ^ v14 ^ 1;
    return v23 & 1;
  }

  v26 = *(a2 + 32);
  v15 = *(a2 + 16);
  v27 = *a2;
  v31 = sub_21DBFC64C();
  sub_21D7A9844(v27, v9, v15, v11, v26, 1);
  sub_21D7A9844(v3, v2, v14, v5, v6, 1);
  sub_21D7A98B4(v3, v2, v14, v5, v6, 1);
  sub_21D7A98B4(v27, v9, v15, v11, v26, 1);
  v23 = 0;
  if (v31)
  {
    goto LABEL_14;
  }

  return v23 & 1;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 == 255)
  {
    if (v13 == 255)
    {
      sub_21D7A98A0(*a1, v3, v4, v5, v6, 255);
      sub_21D7A98A0(v9, v8, v11, v10, v12, 255);
      v18 = 1;
      return v18 & 1;
    }

    goto LABEL_5;
  }

  if (v13 == 255)
  {
LABEL_5:
    v25 = *(a1 + 8);
    v27 = *(a1 + 24);
    v19 = *(a2 + 8);
    v20 = *(a1 + 16);
    v21 = *(a2 + 24);
    v22 = *(a1 + 32);
    sub_21D7A9830(*a1, v25, v4, v27, v6, v7);
    sub_21D7A9830(v9, v19, v11, v21, v12, v13);
    sub_21D7A98A0(v2, v25, v20, v27, v22, v7);
    sub_21D7A98A0(v9, v19, v11, v21, v12, v13);
    v18 = 0;
    return v18 & 1;
  }

  v33[0] = *a1;
  v33[1] = v3;
  v33[2] = v4;
  v33[3] = v5;
  v33[4] = v6;
  v34 = v7;
  v31[0] = v9;
  v31[1] = v8;
  v31[2] = v11;
  v31[3] = v10;
  v31[4] = v12;
  v32 = v13;
  v14 = v9;
  v26 = v9;
  v28 = v11;
  v15 = v4;
  v29 = v4;
  v30 = v6;
  v16 = v11;
  v17 = v6;
  sub_21D7A9830(v14, v8, v16, v10, v12, v13);
  sub_21D7A9830(v2, v3, v15, v5, v17, v7);
  sub_21D7A9830(v2, v3, v15, v5, v17, v7);
  sub_21D7A9830(v26, v8, v28, v10, v12, v13);
  v24 = v12;
  v18 = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO6OptionO2eeoiySbAG_AGtFZ_0(v33, v31);
  sub_21D7A98A0(v2, v3, v29, v5, v30, v7);
  sub_21D7A98A0(v26, v8, v28, v10, v24, v13);
  sub_21D7A98A0(v26, v8, v28, v10, v24, v13);
  sub_21D7A98A0(v2, v3, v29, v5, v30, v7);
  return v18 & 1;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV7AppLinkV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v25 = a1[5];
  v26 = a1[6];
  v27 = a1[8];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v21 = a2[5];
  v22 = a2[6];
  v20 = a2[7];
  v23 = a2[8];
  v24 = a1[7];
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v6 || v3 != v8) && (sub_21DBFC64C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v9 || (v4 != v7 || v5 != v9) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (v24 != 1)
  {
    v11 = v25;
    v10 = v26;
    v32 = v25;
    v33 = v26;
    v12 = v27;
    v34 = v24;
    v35 = v27;
    v14 = v20;
    v13 = v21;
    v15 = v22;
    v17 = v23;
    if (v20 != 1)
    {
      LOBYTE(v28) = v21 & 1;
      v29 = v22;
      v30 = v20;
      v31 = v23;
      sub_21D3A1244(v25, v26, v24, v27);
      sub_21D3A1244(v21, v22, v20, v23);
      sub_21D3A1244(v25, v26, v24, v27);
      v19 = _s15RemindersUICore23TTRUserActivityMetadataV16PhoneCallContextV2eeoiySbAE_AEtFZ_0(&v32, &v28);
      sub_21D1576C8(v29, v30, v31);
      sub_21D1576C8(v33, v34, v35);
      sub_21D3A22A8(v25, v26, v24, v27);
      return v19;
    }

    sub_21D3A1244(v25, v26, v24, v27);
    sub_21D3A1244(v21, v22, 1, v23);
    sub_21D3A1244(v25, v26, v24, v27);
    sub_21D1576C8(v26, v24, v27);
    goto LABEL_22;
  }

  v11 = v25;
  v10 = v26;
  v12 = v27;
  sub_21D3A1244(v25, v26, 1, v27);
  v14 = v20;
  v13 = v21;
  v15 = v22;
  if (v20 != 1)
  {
    v17 = v23;
    sub_21D3A1244(v21, v22, v20, v23);
LABEL_22:
    sub_21D3A22A8(v11, v10, v24, v12);
    sub_21D3A22A8(v13, v15, v14, v17);
    return 0;
  }

  v16 = 1;
  sub_21D3A1244(v21, v22, 1, v23);
  sub_21D3A22A8(v25, v26, 1, v27);
  return v16;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV8URLStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF54CC();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v19 = *(v18 + 56);
  sub_21D799E6C(a1, &v30 - v16, type metadata accessor for TTRReminderDetailViewModel.URLState);
  sub_21D799E6C(a2, &v17[v19], type metadata accessor for TTRReminderDetailViewModel.URLState);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v17, 1, v20) == 1)
  {
    if (v21(&v17[v19], 1, v20) == 1)
    {
LABEL_3:
      sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.URLState);
      return 1;
    }

    goto LABEL_6;
  }

  sub_21D799E6C(v17, v14, type metadata accessor for TTRReminderDetailViewModel.URLState);
  if (v21(&v17[v19], 1, v20) != 1)
  {
    v23 = *(v9 + 48);
    sub_21D0D523C(v14, v11, &qword_27CE5EA20);
    sub_21D0D523C(&v17[v19], &v11[v23], &qword_27CE5EA20);
    v24 = v31;
    v25 = *(v31 + 48);
    if (v25(v11, 1, v4) == 1)
    {
      if (v25(&v11[v23], 1, v4) == 1)
      {
        sub_21D0CF7E0(v11, &qword_27CE5EA20);
        goto LABEL_3;
      }
    }

    else
    {
      sub_21D0D3954(v11, v8, &qword_27CE5EA20);
      if (v25(&v11[v23], 1, v4) != 1)
      {
        v26 = &v11[v23];
        v27 = v30;
        (*(v24 + 32))(v30, v26, v4);
        sub_21D7BC5F0(&qword_280D171D0, MEMORY[0x277CC9260]);
        v28 = sub_21DBFA10C();
        v29 = *(v24 + 8);
        v29(v27, v4);
        v29(v8, v4);
        sub_21D0CF7E0(v11, &qword_27CE5EA20);
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v24 + 8))(v8, v4);
    }

    sub_21D0CF7E0(v11, &unk_27CE5F2A0);
LABEL_13:
    sub_21D799ED4(v17, type metadata accessor for TTRReminderDetailViewModel.URLState);
    return 0;
  }

  sub_21D0CF7E0(v14, &qword_27CE5EA20);
LABEL_6:
  sub_21D0CF7E0(v17, &qword_27CE619A0);
  return 0;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV13RecurrenceEndV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = sub_21DBFC64C(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0) + 20);
    v17 = *(v11 + 48);
    sub_21D0D3954(a1 + v16, v13, &qword_27CE58D68);
    sub_21D0D3954(a2 + v16, &v13[v17], &qword_27CE58D68);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE58D68);
        return 1;
      }
    }

    else
    {
      sub_21D0D3954(v13, v10, &qword_27CE58D68);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_21D7BC5F0(&qword_280D171A0, MEMORY[0x277CC9578]);
        v20 = sub_21DBFA10C();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_21D0CF7E0(v13, &qword_27CE58D68);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_21D0CF7E0(v13, &qword_27CE5BE10);
    return 0;
  }

  return result;
}

uint64_t _s15RemindersUICore26TTRReminderDetailViewModelV12DueDateStateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  v80 = v4;
  v81 = v5;
  MEMORY[0x28223BE20](v4);
  v77 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619B8);
  MEMORY[0x28223BE20](v79);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v82 = &v59 - v12;
  MEMORY[0x28223BE20](v13);
  v83 = &v59 - v14;
  v15 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619C0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - v22;
  v25 = &v59 + *(v24 + 56) - v22;
  sub_21D799E6C(a1, &v59 - v22, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  sub_21D799E6C(a2, v25, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v27 = *(*(v26 - 1) + 48);
  if (v27(v23, 1, v26) == 1)
  {
    if (v27(v25, 1, v26) == 1)
    {
      sub_21D799ED4(v23, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      return 1;
    }

    goto LABEL_6;
  }

  v74 = v17;
  v69 = v8;
  v76 = v23;
  sub_21D799E6C(v23, v20, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v29 = v26[12];
  v73 = *&v20[v29];
  v72 = v20[v29 + 8];
  v30 = *&v20[v29 + 24];
  v71 = *&v20[v29 + 16];
  v31 = *&v20[v29 + 40];
  v70 = *&v20[v29 + 32];
  v75 = v26[16];
  v32 = v26[20];
  v68 = v20[v32];
  v33 = v26[24];
  v67 = v20[v33];
  if (v27(v25, 1, v26) != 1)
  {
    v66 = v31;
    v34 = v30;
    v65 = *&v25[v29];
    v64 = v25[v29 + 8];
    v35 = *&v25[v29 + 24];
    v63 = *&v25[v29 + 16];
    v36 = *&v25[v29 + 32];
    v37 = *&v25[v29 + 40];
    v62 = v36;
    v61 = v25[v32];
    v60 = v25[v33];
    v38 = v74;
    sub_21D7A959C(v25, v74, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    v39 = v75;
    v40 = v83;
    sub_21D0D523C(&v20[v75], v83, &unk_27CE628E0);
    v41 = &v25[v39];
    v42 = v82;
    sub_21D0D523C(v41, v82, &unk_27CE628E0);
    v43 = _s15RemindersUICore26TTRReminderDetailViewModelV010DatePickerF0V2eeoiySbAE_AEtFZ_0(v20, v38);
    sub_21D799ED4(v20, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    if (!v43)
    {

      sub_21D0CF7E0(v42, &unk_27CE628E0);
      sub_21D0CF7E0(v40, &unk_27CE628E0);
      sub_21D799ED4(v38, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D799ED4(v76, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
      return 0;
    }

    v90 = v73;
    v91 = v72;
    v92 = v71;
    v93 = v34;
    v94 = v70;
    v95 = v66;
    v84 = v65;
    v85 = v64;
    v86 = v63;
    v87 = v35;
    v88 = v62;
    v89 = v37;
    v44 = _s15RemindersUICore26TTRReminderDetailViewModelV10RecurrenceV2eeoiySbAE_AEtFZ_0(&v90, &v84);

    v45 = v76;
    if (v44)
    {
      v46 = v38;
      v47 = *(v79 + 48);
      v48 = v83;
      v49 = v69;
      sub_21D0D3954(v83, v69, &unk_27CE628E0);
      sub_21D0D3954(v42, v49 + v47, &unk_27CE628E0);
      v50 = v80;
      v51 = v42;
      v52 = v81 + 48;
      v53 = *(v81 + 48);
      if (v53(v49, 1, v80) == 1)
      {
        v81 = v52;
        sub_21D0CF7E0(v51, &unk_27CE628E0);
        sub_21D0CF7E0(v48, &unk_27CE628E0);
        sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        if (v53(v49 + v47, 1, v50) == 1)
        {
          sub_21D0CF7E0(v49, &unk_27CE628E0);
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v54 = v78;
      sub_21D0D3954(v49, v78, &unk_27CE628E0);
      if (v53(v49 + v47, 1, v50) == 1)
      {
        sub_21D0CF7E0(v82, &unk_27CE628E0);
        sub_21D0CF7E0(v83, &unk_27CE628E0);
        sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
        sub_21D799ED4(v54, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
LABEL_18:
        sub_21D0CF7E0(v49, &qword_27CE619B8);
        goto LABEL_21;
      }

      v55 = v49 + v47;
      v56 = v77;
      sub_21D7A959C(v55, v77, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      v57 = _s15RemindersUICore26TTRReminderDetailViewModelV13RecurrenceEndV2eeoiySbAE_AEtFZ_0(v54, v56);
      sub_21D799ED4(v56, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      sub_21D0CF7E0(v82, &unk_27CE628E0);
      sub_21D0CF7E0(v83, &unk_27CE628E0);
      sub_21D799ED4(v46, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
      sub_21D799ED4(v54, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
      sub_21D0CF7E0(v49, &unk_27CE628E0);
      if (v57)
      {
LABEL_20:
        if (v68 == v61)
        {
          v58 = v67 ^ v60;
          sub_21D799ED4(v45, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
          return v58 ^ 1u;
        }
      }
    }

    else
    {
      sub_21D0CF7E0(v42, &unk_27CE628E0);
      sub_21D0CF7E0(v83, &unk_27CE628E0);
      sub_21D799ED4(v38, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    }

LABEL_21:
    sub_21D799ED4(v45, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
    return 0;
  }

  sub_21D0CF7E0(&v20[v75], &unk_27CE628E0);

  sub_21D799ED4(v20, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
  v23 = v76;
LABEL_6:
  sub_21D0CF7E0(v23, &qword_27CE619C0);
  return 0;
}

BOOL _s15RemindersUICore26TTRReminderDetailViewModelV22AssigneeCandidateStateV15identitiesEqualySbAE_AEtFZ_0(id *a1, void **a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  v3 = *a1;
  v4 = v3;
  if (v2)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v5 = v2;
    v6 = sub_21DBFB63C();

    return v6 & 1;
  }

  else
  {

    return 0;
  }
}

double sub_21D7A9558(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t sub_21D7A959C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7A9604(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v4 = a3;

    return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D7A9648(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
  }
}

uint64_t sub_21D7A9760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7A9830(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21D7A9844(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21D7A9844(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }

    v7 = result;
    sub_21DBF8E0C();
    v8 = v7;
  }

  return sub_21DBF8E0C();
}

void *sub_21D7A98A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21D7A98B4(result, a2, a3, a4, a5, a6);
  }

  return result;
}

void *sub_21D7A98B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6)
    {
      return result;
    }
  }
}

unint64_t sub_21D7A9914()
{
  result = qword_27CE61950;
  if (!qword_27CE61950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61950);
  }

  return result;
}

unint64_t sub_21D7A996C()
{
  result = qword_27CE61958;
  if (!qword_27CE61958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61958);
  }

  return result;
}

unint64_t sub_21D7A99D4()
{
  result = qword_27CE61968;
  if (!qword_27CE61968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61968);
  }

  return result;
}

unint64_t sub_21D7A9A2C()
{
  result = qword_27CE61970;
  if (!qword_27CE61970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61970);
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRReminderDetailViewModel(void **a1, void **a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = &v11[(v5 + 16) & ~v5];

    return v12;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v325 = v3;
  v326 = v6;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v3;
        *a1 = *v3;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v3 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(a1, v3, v52);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v53 = *v3;
        *a1 = *v3;
        v54 = v53;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v13 - 8) + 64));
LABEL_92:
      v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v59 = v58[5];
      v60 = a1 + v59;
      v61 = v3 + v59;
      v62 = *(v3 + v59 + 8);
      if (v62)
      {
        *v60 = *v61;
        *(v60 + 1) = v62;
        v63 = *(v61 + 2);
        v64 = *(v61 + 3);
        v65 = *(v61 + 4);
        v66 = *(v61 + 5);
        v67 = *(v61 + 6);
        v316 = *(v61 + 7);
        v68 = v61[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v63, v64, v65, v66, v67, v316, v68);
        *(v60 + 2) = v63;
        *(v60 + 3) = v64;
        *(v60 + 4) = v65;
        *(v60 + 5) = v66;
        *(v60 + 6) = v67;
        *(v60 + 7) = v316;
        v60[64] = v68;
        *(v60 + 65) = *(v61 + 65);
        v69 = v61[120];
        if (v69 == 255)
        {
          *(v60 + 72) = *(v61 + 72);
          *(v60 + 88) = *(v61 + 88);
          *(v60 + 104) = *(v61 + 104);
          v60[120] = v61[120];
        }

        else
        {
          v70 = *(v61 + 9);
          v317 = *(v61 + 10);
          v71 = *(v61 + 11);
          v72 = *(v61 + 12);
          v73 = *(v61 + 13);
          v74 = *(v61 + 14);
          v75 = v69 & 1;
          sub_21D0FB960(v70, v317, v71, v72, v73, v74, v69 & 1);
          *(v60 + 9) = v70;
          *(v60 + 10) = v317;
          *(v60 + 11) = v71;
          *(v60 + 12) = v72;
          *(v60 + 13) = v73;
          *(v60 + 14) = v74;
          v60[120] = v75;
        }

        v3 = v325;
        v6 = v326;
        v60[121] = v61[121];
        goto LABEL_98;
      }

LABEL_95:
      v76 = *(v61 + 5);
      *(v60 + 4) = *(v61 + 4);
      *(v60 + 5) = v76;
      *(v60 + 6) = *(v61 + 6);
      *(v60 + 106) = *(v61 + 106);
      v77 = *(v61 + 1);
      *v60 = *v61;
      *(v60 + 1) = v77;
      v78 = *(v61 + 3);
      *(v60 + 2) = *(v61 + 2);
      *(v60 + 3) = v78;
LABEL_98:
      *(a1 + v58[6]) = *(v3 + v58[6]);
      *(a1 + v58[7]) = *(v3 + v58[7]);
      *(a1 + v58[8]) = *(v3 + v58[8]);
      *(a1 + v58[9]) = *(v3 + v58[9]);
      *(a1 + v58[10]) = *(v3 + v58[10]);
      v79 = v58[11];
      v80 = *(v3 + v79);
      *(a1 + v79) = v80;
      v81 = v80;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v55 = sub_21DBF563C();
        (*(*(v55 - 8) + 16))(a1, v3, v55);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v56 = *v3;
      *a1 = *v3;
      v57 = v56;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v23 - 8) + 64));
LABEL_100:
    v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v82 = v58[5];
    v60 = a1 + v82;
    v61 = v3 + v82;
    v83 = *(v3 + v82 + 8);
    if (v83)
    {
      *v60 = *v61;
      *(v60 + 1) = v83;
      v84 = *(v61 + 2);
      v85 = *(v61 + 3);
      v86 = *(v61 + 4);
      v87 = *(v61 + 5);
      v88 = *(v61 + 6);
      v89 = *(v61 + 7);
      v318 = v61[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v318);
      *(v60 + 2) = v84;
      *(v60 + 3) = v85;
      *(v60 + 4) = v86;
      *(v60 + 5) = v87;
      *(v60 + 6) = v88;
      *(v60 + 7) = v89;
      v60[64] = v318;
      *(v60 + 65) = *(v61 + 65);
      v90 = v61[120];
      if (v90 == 255)
      {
        *(v60 + 72) = *(v61 + 72);
        *(v60 + 88) = *(v61 + 88);
        *(v60 + 104) = *(v61 + 104);
        v60[120] = v61[120];
      }

      else
      {
        v91 = *(v61 + 9);
        v319 = *(v61 + 10);
        v92 = *(v61 + 11);
        v93 = *(v61 + 12);
        v94 = *(v61 + 13);
        v95 = *(v61 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v319, v92, v93, v94, v95, v90 & 1);
        *(v60 + 9) = v91;
        *(v60 + 10) = v319;
        *(v60 + 11) = v92;
        *(v60 + 12) = v93;
        *(v60 + 13) = v94;
        *(v60 + 14) = v95;
        v60[120] = v96;
      }

      v3 = v325;
      v6 = v326;
      v60[121] = v61[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v21 = v3[2];
      a1[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v3;
    *a1 = *v3;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v3 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v16, v3 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 4)
    {
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v97 = *(v3 + v16);
      *(a1 + v16) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(a1 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v49 <= 2)
    {
      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v16, v3 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v16, v3 + v16, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v3, 1, v29))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, v3, *(*(v31 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v40 = *(v29 + 20);
        v41 = sub_21DBF6C1C();
        v42 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v42(a1 + v40, v3 + v40, v41);
        (*(v30 + 56))(a1, 0, 1, v29);
      }

      v43 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v44 = (a1 + v43);
      v45 = (v3 + v43);
      v46 = v45[1];
      if (v46)
      {
        *v44 = *v45;
        v44[1] = v46;
        v47 = v45[2];
        v44[2] = v47;
        sub_21DBF8E0C();
        v48 = v47;
      }

      else
      {
        *v44 = *v45;
        v44[2] = v45[2];
      }

      goto LABEL_129;
    case 7:
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v3, 1, v35))
      {
        v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v37 - 8) + 64));
      }

      else
      {
        v50 = sub_21DBF563C();
        (*(*(v50 - 8) + 16))(a1, v3, v50);
        *(a1 + *(v35 + 20)) = *(v3 + *(v35 + 20));
        (*(v36 + 56))(a1, 0, 1, v35);
      }

      v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v51 + 20)) = *(v3 + *(v51 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v10 = sub_21DBF8D7C();
      (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_130:
  v100 = v6[6];
  *(a1 + v6[5]) = *(v3 + v6[5]);
  v101 = (a1 + v100);
  v102 = (v3 + v100);
  v104 = *v102;
  v103 = v102[1];
  v105 = v6[7];
  v106 = v6[8];
  v107 = *(v3 + v105);
  *v101 = v104;
  v101[1] = v103;
  *(a1 + v105) = v107;
  v108 = a1 + v106;
  v109 = v3 + v106;
  v110 = *(v3 + v106);
  v111 = *(v3 + v106 + 8);
  v112 = *(v3 + v106 + 16);
  v113 = *(v3 + v106 + 24);
  v114 = *(v3 + v106 + 32);
  v115 = *(v3 + v106 + 40);
  v116 = v109[48];
  sub_21DBF8E0C();
  v117 = v107;
  sub_21D0FB960(v110, v111, v112, v113, v114, v115, v116);
  *v108 = v110;
  *(v108 + 1) = v111;
  *(v108 + 2) = v112;
  *(v108 + 3) = v113;
  *(v108 + 4) = v114;
  *(v108 + 5) = v115;
  v108[48] = v116;
  v119 = v325;
  v118 = v326;
  v120 = v326[9];
  v121 = a1 + v120;
  v122 = v325 + v120;
  v123 = *(v325 + v120 + 8);
  if (v123 == 1)
  {
    v124 = *(v122 + 3);
    *(v121 + 2) = *(v122 + 2);
    *(v121 + 3) = v124;
    *(v121 + 4) = *(v122 + 4);
    *(v121 + 73) = *(v122 + 73);
    v125 = *(v122 + 1);
    *v121 = *v122;
    *(v121 + 1) = v125;
  }

  else
  {
    *v121 = *v122;
    *(v121 + 1) = v123;
    v126 = *(v122 + 2);
    v127 = *(v122 + 3);
    v128 = *(v122 + 4);
    v129 = *(v122 + 5);
    v130 = *(v122 + 6);
    v131 = *(v122 + 7);
    v132 = v122[64];
    sub_21DBF8E0C();
    sub_21D0FB960(v126, v127, v128, v129, v130, v131, v132);
    *(v121 + 2) = v126;
    *(v121 + 3) = v127;
    *(v121 + 4) = v128;
    *(v121 + 5) = v129;
    *(v121 + 6) = v130;
    *(v121 + 7) = v131;
    v121[64] = v132;
    v119 = v325;
    v118 = v326;
    v133 = *(v122 + 9);
    v134 = *(v122 + 10);
    LOBYTE(v128) = v122[88];
    sub_21D0FB9BC(v133, v134, v128);
    *(v121 + 9) = v133;
    *(v121 + 10) = v134;
    v121[88] = v128;
  }

  v135 = v118[11];
  *(a1 + v118[10]) = *(v119 + v118[10]);
  *(a1 + v135) = *(v119 + v135);
  v136 = v118[12];
  v137 = v118[13];
  v138 = *(v119 + v136);
  *(a1 + v136) = v138;
  v139 = (a1 + v137);
  v140 = (v119 + v137);
  v141 = *(v119 + v137 + 8);
  v142 = v138;
  if (v141)
  {
    *v139 = *v140;
    v139[1] = v141;
    v143 = v140[3];
    v139[2] = v140[2];
    v139[3] = v143;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v144 = *(v140 + 1);
    *v139 = *v140;
    *(v139 + 1) = v144;
  }

  v145 = v118[15];
  *(a1 + v118[14]) = *(v119 + v118[14]);
  *(a1 + v145) = *(v119 + v145);
  v146 = v118[17];
  *(a1 + v118[16]) = *(v119 + v118[16]);
  *(a1 + v146) = *(v119 + v146);
  v147 = v118[18];
  v148 = v118[19];
  v149 = *(v119 + v147);
  *(a1 + v147) = v149;
  v150 = (a1 + v148);
  v151 = (v119 + v148);
  v152 = *(v119 + v148 + 8);
  v153 = v149;
  if (v152)
  {
    *v150 = *v151;
    v150[1] = v152;
    v154 = v151[3];
    v150[2] = v151[2];
    v150[3] = v154;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v155 = *(v151 + 1);
    *v150 = *v151;
    *(v150 + 1) = v155;
  }

  v156 = v118[20];
  v157 = a1 + v156;
  v158 = v119 + v156;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v160 = *(v159 - 1);
  v324 = a1;
  if ((*(v160 + 48))(v158, 1, v159))
  {
    v161 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v157, v158, *(*(v161 - 8) + 64));
  }

  else
  {
    v320 = v160;
    v162 = sub_21DBF563C();
    v312 = *(v162 - 8);
    v314 = v162;
    v310 = *(v312 + 16);
    v310(v157, v158);
    v163 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v157[v163[5]] = v158[v163[5]];
    v164 = v163[6];
    v165 = sub_21DBF509C();
    (*(*(v165 - 8) + 16))(&v157[v164], &v158[v164], v165);
    v157[v163[7]] = v158[v163[7]];
    v166 = v163[8];
    v167 = &v157[v166];
    v168 = &v158[v166];
    v167[16] = v168[16];
    *v167 = *v168;
    v157[v163[9]] = v158[v163[9]];
    v157[v163[10]] = v158[v163[10]];
    v157[v163[11]] = v158[v163[11]];
    v169 = v163[12];
    v170 = &v157[v169];
    v171 = &v158[v169];
    v172 = *(v171 + 1);
    *v170 = *v171;
    *(v170 + 1) = v172;
    v173 = v159[12];
    v174 = &v157[v173];
    v175 = &v158[v173];
    *v174 = *v175;
    v174[8] = v175[8];
    v176 = *(v175 + 3);
    *(v174 + 2) = *(v175 + 2);
    *(v174 + 3) = v176;
    v177 = *(v175 + 5);
    *(v174 + 4) = *(v175 + 4);
    *(v174 + 5) = v177;
    v178 = v159[16];
    __dst = &v157[v178];
    v179 = &v158[v178];
    v180 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v181 = *(v180 - 8);
    v182 = *(v181 + 48);
    v183 = v180;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v182(v179, 1, v183))
    {
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v179, *(*(v184 - 8) + 64));
      v119 = v325;
      v118 = v326;
    }

    else
    {
      v185 = *(v179 + 1);
      *__dst = *v179;
      *(__dst + 1) = v185;
      v307 = v183;
      v186 = *(v183 + 20);
      v187 = *(v312 + 48);
      sub_21DBF8E0C();
      if (v187(&v179[v186], 1, v314))
      {
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v186], &v179[v186], *(*(v188 - 8) + 64));
      }

      else
      {
        (v310)(&__dst[v186], &v179[v186], v314);
        (*(v312 + 56))(&__dst[v186], 0, 1, v314);
      }

      v118 = v326;
      (*(v181 + 56))(__dst, 0, 1, v307);
      v119 = v325;
    }

    v157[v159[20]] = v158[v159[20]];
    v157[v159[24]] = v158[v159[24]];
    (*(v320 + 56))(v157, 0, 1, v159);
    a1 = v324;
  }

  v189 = v118[22];
  *(a1 + v118[21]) = *(v119 + v118[21]);
  *(a1 + v189) = *(v119 + v189);
  v190 = v118[23];
  v191 = a1 + v190;
  v192 = v119 + v190;
  v193 = *v192;
  v194 = *(v192 + 8);
  v195 = *(v192 + 16);
  v196 = *(v192 + 24);
  v197 = *(v192 + 32);
  sub_21D48BB60(*v192, v194, v195, v196, v197);
  *v191 = v193;
  *(v191 + 1) = v194;
  *(v191 + 2) = v195;
  *(v191 + 3) = v196;
  v191[32] = v197;
  v198 = v326;
  v199 = v326[24];
  v200 = v326[25];
  v201 = a1 + v199;
  v202 = v119 + v199;
  *v201 = *v202;
  v201[8] = *(v202 + 8);
  v203 = (a1 + v200);
  v204 = (v119 + v200);
  v205 = *(v119 + v200 + 8);
  sub_21DBF8E0C();
  if (v205 >= 3)
  {
    *v203 = *v204;
    v203[1] = v205;
    v206 = v204[2];
    v203[2] = v206;
    sub_21DBF8E0C();
    v207 = v206;
  }

  else
  {
    *v203 = *v204;
    v203[2] = v204[2];
  }

  v208 = v326[26];
  v209 = a1 + v208;
  v210 = v119 + v208;
  v211 = *(v119 + v208);
  if (v211)
  {
    *v209 = v211;
    v212 = *(v210 + 8);
    sub_21DBF8E0C();
    if (v212)
    {
      v214 = *(v210 + 16);
      v213 = *(v210 + 24);
      *(v209 + 1) = v212;
      *(v209 + 2) = v214;
      v216 = *(v210 + 32);
      v215 = *(v210 + 40);
      *(v209 + 3) = v213;
      *(v209 + 4) = v216;
      v218 = *(v210 + 48);
      v217 = *(v210 + 56);
      *(v209 + 5) = v215;
      *(v209 + 6) = v218;
      v220 = *(v210 + 64);
      v219 = *(v210 + 72);
      *(v209 + 7) = v217;
      *(v209 + 8) = v220;
      v222 = *(v210 + 80);
      v221 = *(v210 + 88);
      *(v209 + 9) = v219;
      *(v209 + 10) = v222;
      v223 = *(v210 + 96);
      *(v209 + 11) = v221;
      *(v209 + 12) = v223;
      v209[104] = *(v210 + 104);
      v224 = *(v210 + 112);
      *(v209 + 14) = v224;
      v225 = v212;
      v226 = v214;
      v119 = v325;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v198 = v326;
      sub_21DBF8E0C();
      v227 = v224;
    }

    else
    {
      v231 = *(v210 + 88);
      *(v209 + 72) = *(v210 + 72);
      *(v209 + 88) = v231;
      *(v209 + 104) = *(v210 + 104);
      v232 = *(v210 + 24);
      *(v209 + 8) = *(v210 + 8);
      *(v209 + 24) = v232;
      v233 = *(v210 + 56);
      *(v209 + 40) = *(v210 + 40);
      *(v209 + 56) = v233;
    }
  }

  else
  {
    v228 = *(v210 + 80);
    *(v209 + 4) = *(v210 + 64);
    *(v209 + 5) = v228;
    *(v209 + 6) = *(v210 + 96);
    *(v209 + 14) = *(v210 + 112);
    v229 = *(v210 + 16);
    *v209 = *v210;
    *(v209 + 1) = v229;
    v230 = *(v210 + 48);
    *(v209 + 2) = *(v210 + 32);
    *(v209 + 3) = v230;
  }

  v234 = v198[27];
  v235 = a1 + v234;
  v236 = v119 + v234;
  v237 = *v236;
  v238 = *(v236 + 8);
  v239 = *(v236 + 16);
  v240 = *(v236 + 24);
  v241 = *(v236 + 32);
  v242 = *(v236 + 40);
  v244 = *(v236 + 48);
  v243 = *(v236 + 56);
  v245 = *(v236 + 64);
  v308 = *(v236 + 72);
  v309 = *(v236 + 80);
  v311 = *(v236 + 88);
  v313 = *(v236 + 96);
  v315 = *(v236 + 104);
  v321 = *(v236 + 112);
  __dsta = *(v236 + 120);
  sub_21D7ABD2C(*v236, v238, v239, v240, v241, v242, v244, v243, v245, v308, v309, v311, v313, v315, v321, __dsta);
  *v235 = v237;
  *(v235 + 1) = v238;
  *(v235 + 2) = v239;
  *(v235 + 3) = v240;
  *(v235 + 4) = v241;
  *(v235 + 5) = v242;
  *(v235 + 6) = v244;
  *(v235 + 7) = v243;
  *(v235 + 8) = v245;
  v12 = v324;
  *(v235 + 9) = v308;
  *(v235 + 10) = v309;
  *(v235 + 11) = v311;
  *(v235 + 12) = v313;
  *(v235 + 13) = v315;
  *(v235 + 14) = v321;
  v235[120] = __dsta;
  v246 = v326[28];
  v247 = v326[29];
  v248 = v324 + v246;
  v249 = v325 + v246;
  *v248 = *v249;
  v250 = *(v249 + 2);
  *(v248 + 1) = *(v249 + 1);
  *(v248 + 2) = v250;
  v251 = (v324 + v247);
  v252 = (v325 + v247);
  v253 = *(v325 + v247 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v253)
  {
    *v251 = *v252;
    v251[1] = v253;
    v254 = v252[2];
    v255 = v252[3];
    v251[2] = v254;
    v251[3] = v255;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v256 = *(v252 + 1);
    *v251 = *v252;
    *(v251 + 1) = v256;
  }

  v257 = v326[31];
  *(v324 + v326[30]) = *(v325 + v326[30]);
  v258 = v324 + v257;
  v259 = v325 + v257;
  *v258 = *v259;
  v258[8] = v259[8];
  v260 = v326[33];
  *(v324 + v326[32]) = *(v325 + v326[32]);
  sub_21DBF8E0C();
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v262 = *(v261 - 8);
  if ((*(v262 + 48))(v325 + v260, 1, v261))
  {
    v263 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(v324 + v260, v325 + v260, *(*(v263 - 8) + 64));
  }

  else
  {
    v264 = sub_21DBF54CC();
    v265 = *(v264 - 8);
    if ((*(v265 + 48))(v325 + v260, 1, v264))
    {
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v324 + v260, v325 + v260, *(*(v266 - 8) + 64));
    }

    else
    {
      (*(v265 + 16))(v324 + v260, v325 + v260, v264);
      (*(v265 + 56))(v324 + v260, 0, 1, v264);
    }

    (*(v262 + 56))(v324 + v260, 0, 1, v261);
  }

  v267 = v326[34];
  v268 = v326[35];
  v269 = (v324 + v267);
  v270 = (v325 + v267);
  v271 = v270[1];
  *v269 = *v270;
  v269[1] = v271;
  v272 = v324 + v268;
  v273 = v325 + v268;
  v274 = *(v325 + v268 + 8);
  sub_21DBF8E0C();
  if (v274 == 1)
  {
    v275 = *(v273 + 3);
    *(v272 + 2) = *(v273 + 2);
    *(v272 + 3) = v275;
    *(v272 + 4) = *(v273 + 4);
    v276 = *(v273 + 1);
    *v272 = *v273;
    *(v272 + 1) = v276;
  }

  else
  {
    *v272 = *v273;
    *(v272 + 1) = v274;
    v277 = *(v273 + 3);
    *(v272 + 2) = *(v273 + 2);
    *(v272 + 3) = v277;
    v278 = *(v273 + 5);
    *(v272 + 4) = *(v273 + 4);
    *(v272 + 5) = v278;
    v272[48] = v273[48];
    v279 = *(v273 + 8);
    *(v272 + 7) = *(v273 + 7);
    *(v272 + 8) = v279;
    v280 = *(v273 + 9);
    *(v272 + 9) = v280;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v281 = v280;
    v12 = v324;
  }

  v282 = v326[37];
  *(v12 + v326[36]) = *(v325 + v326[36]);
  v283 = v12 + v282;
  v284 = v325 + v282;
  v285 = *(v325 + v282 + 40);
  sub_21DBF8E0C();
  if (v285 == 255)
  {
    v291 = *(v284 + 1);
    *v283 = *v284;
    *(v283 + 16) = v291;
    *(v283 + 25) = *(v284 + 25);
  }

  else
  {
    v286 = *v284;
    v287 = *(v284 + 1);
    v288 = *(v284 + 2);
    v289 = *(v284 + 3);
    v290 = *(v284 + 4);
    sub_21D7A9844(v286, v287, v288, v289, v290, v285);
    *v283 = v286;
    *(v283 + 8) = v287;
    *(v283 + 16) = v288;
    *(v283 + 24) = v289;
    *(v283 + 32) = v290;
    *(v283 + 40) = v285;
  }

  v292 = v326[38];
  v293 = v12 + v292;
  v294 = v325 + v292;
  v295 = *(v325 + v292);
  if (v295)
  {
    v296 = *(v294 + 1);
    v297 = *(v294 + 2);
    *v293 = v295;
    *(v293 + 8) = v296;
    v298 = *(v294 + 3);
    v299 = *(v294 + 4);
    *(v293 + 16) = v297;
    *(v293 + 24) = v298;
    *(v293 + 32) = v299;
    v300 = *(v294 + 7);
    v301 = v295;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v300 == 1)
    {
      *(v293 + 40) = *(v294 + 40);
      *(v293 + 56) = *(v294 + 56);
    }

    else
    {
      *(v293 + 40) = v294[40];
      if (v300)
      {
        *(v293 + 48) = *(v294 + 6);
        *(v293 + 56) = v300;
        v304 = *(v294 + 8);
        *(v293 + 64) = v304;
        sub_21DBF8E0C();
        v305 = v304;
        return v324;
      }

      else
      {
        *(v293 + 48) = *(v294 + 3);
        *(v293 + 64) = *(v294 + 8);
      }
    }
  }

  else
  {
    v302 = *(v294 + 3);
    *(v293 + 32) = *(v294 + 2);
    *(v293 + 48) = v302;
    *(v293 + 64) = *(v294 + 8);
    v303 = *(v294 + 1);
    *v293 = *v294;
    *(v293 + 16) = v303;
  }

  return v12;
}

uint64_t sub_21D7ABD2C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, char a16)
{
  v16 = a13;
  v17 = a11;
  v18 = a9;
  if (a16 != 1)
  {
    if (a16)
    {
      return result;
    }

    v24 = a7;
    v25 = a8;
    v22 = a5;
    v23 = a6;
    v19 = a4;
    v20 = a3;
    v21 = a2;
    sub_21DBF8E0C();
    a13 = a14;
    a14 = a15;
    a11 = a12;
    a12 = v16;
    a9 = a10;
    a10 = v17;
    result = v21;
    a2 = v20;
    a3 = v19;
    a4 = v22;
    a5 = v23;
    a6 = v24;
    a7 = v25;
    a8 = v18;
  }

  return sub_21D7ABE0C(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21D7ABE0C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (result)
  {
    v15 = result;
    v16 = a14;
    v17 = v15;
    v18 = a2;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

void destroy for TTRReminderDetailViewModel(id *a1, int *a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
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

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  v22 = a1 + a2[8];
  sub_21D1078C0(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3), *(v22 + 4), *(v22 + 5), v22[48]);
  v23 = a1 + a2[9];
  if (*(v23 + 1) != 1)
  {

    sub_21D1078C0(*(v23 + 2), *(v23 + 3), *(v23 + 4), *(v23 + 5), *(v23 + 6), *(v23 + 7), v23[64]);
    sub_21D0FB9F4(*(v23 + 9), *(v23 + 10), v23[88]);
  }

  if (*(a1 + a2[13] + 8))
  {
  }

  if (*(a1 + a2[19] + 8))
  {
  }

  v24 = a1 + a2[20];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = sub_21DBF563C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 8);
    v28(v24, v26);
    v29 = *(type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0) + 24);
    v30 = sub_21DBF509C();
    (*(*(v30 - 8) + 8))(&v24[v29], v30);

    v31 = &v24[*(v25 + 64)];
    v32 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
    {

      v33 = *(v32 + 20);
      if (!(*(v27 + 48))(&v31[v33], 1, v26))
      {
        v28(&v31[v33], v26);
      }
    }
  }

  v34 = a1 + a2[23];
  sub_21D48C240(*v34, *(v34 + 1), *(v34 + 2), *(v34 + 3), v34[32]);

  v35 = (a1 + a2[25]);
  if (v35[1] >= 3)
  {
  }

  v36 = a1 + a2[26];
  if (*v36)
  {

    v37 = *(v36 + 1);
    if (v37)
    {
    }
  }

  v38 = a1 + a2[27];
  sub_21D7AC858(*v38, *(v38 + 1), *(v38 + 2), *(v38 + 3), *(v38 + 4), *(v38 + 5), *(v38 + 6), *(v38 + 7), *(v38 + 8), *(v38 + 9), *(v38 + 10), *(v38 + 11), *(v38 + 12), *(v38 + 13), *(v38 + 14), v38[120]);

  if (*(a1 + a2[29] + 8))
  {
  }

  v39 = a2[33];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  if (!(*(*(v40 - 8) + 48))(a1 + v39, 1, v40))
  {
    v41 = sub_21DBF54CC();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(a1 + v39, 1, v41))
    {
      (*(v42 + 8))(a1 + v39, v41);
    }
  }

  v43 = (a1 + a2[35]);
  if (v43[1] != 1)
  {
  }

  v44 = a1 + a2[37];
  v45 = v44[40];
  if (v45 != 255)
  {
    sub_21D7A98B4(*v44, *(v44 + 1), *(v44 + 2), *(v44 + 3), *(v44 + 4), v45);
  }

  v46 = a1 + a2[38];
  if (*v46)
  {

    if (*(v46 + 7) >= 2uLL)
    {

      v47 = *(v46 + 8);
    }
  }
}

void sub_21D7AC858(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, char a16)
{
  v16 = a13;
  v17 = a11;
  v18 = a9;
  if (a16 != 1)
  {
    if (a16)
    {
      return;
    }

    v24 = a7;
    v25 = a8;
    v22 = a5;
    v23 = a6;
    v19 = a4;
    v20 = a3;
    v21 = a2;

    a13 = a14;
    a14 = a15;
    a11 = a12;
    a12 = v16;
    a9 = a10;
    a10 = v17;
    a1 = v21;
    a2 = v20;
    a3 = v19;
    a4 = v22;
    a5 = v23;
    a6 = v24;
    a7 = v25;
    a8 = v18;
  }

  sub_21D7AC938(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

void sub_21D7AC938(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a1)
  {
  }
}

void **initializeWithCopy for TTRReminderDetailViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v321 = a2;
  v322 = a3;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(a1, a2, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *a2;
        *a1 = *a2;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = a1 + v56;
      v58 = a2 + v56;
      v59 = *(a2 + v56 + 8);
      if (v59)
      {
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v312 = *(v58 + 7);
        v65 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v312, v65);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v312;
        v57[64] = v65;
        *(v57 + 65) = *(v58 + 65);
        v66 = v58[120];
        if (v66 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v67 = *(v58 + 9);
          v313 = *(v58 + 10);
          v68 = *(v58 + 11);
          v69 = *(v58 + 12);
          v70 = *(v58 + 13);
          v71 = *(v58 + 14);
          v72 = v66 & 1;
          sub_21D0FB960(v67, v313, v68, v69, v70, v71, v66 & 1);
          *(v57 + 9) = v67;
          *(v57 + 10) = v313;
          *(v57 + 11) = v68;
          *(v57 + 12) = v69;
          *(v57 + 13) = v70;
          *(v57 + 14) = v71;
          v57[120] = v72;
        }

        a2 = v321;
        a3 = v322;
        v57[121] = v58[121];
        goto LABEL_96;
      }

LABEL_93:
      v73 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v73;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v74 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v74;
      v75 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v75;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v76 = v55[11];
      v77 = *(a2 + v76);
      *(a1 + v76) = v77;
      v78 = v77;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(a1, a2, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *a2;
      *a1 = *a2;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v79 = v55[5];
    v57 = a1 + v79;
    v58 = a2 + v79;
    v80 = *(a2 + v79 + 8);
    if (v80)
    {
      *v57 = *v58;
      *(v57 + 1) = v80;
      v81 = *(v58 + 2);
      v82 = *(v58 + 3);
      v83 = *(v58 + 4);
      v84 = *(v58 + 5);
      v85 = *(v58 + 6);
      v86 = *(v58 + 7);
      v314 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v81, v82, v83, v84, v85, v86, v314);
      *(v57 + 2) = v81;
      *(v57 + 3) = v82;
      *(v57 + 4) = v83;
      *(v57 + 5) = v84;
      *(v57 + 6) = v85;
      *(v57 + 7) = v86;
      v57[64] = v314;
      *(v57 + 65) = *(v58 + 65);
      v87 = v58[120];
      if (v87 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v88 = *(v58 + 9);
        v315 = *(v58 + 10);
        v89 = *(v58 + 11);
        v90 = *(v58 + 12);
        v91 = *(v58 + 13);
        v92 = *(v58 + 14);
        v93 = v87 & 1;
        sub_21D0FB960(v88, v315, v89, v90, v91, v92, v87 & 1);
        *(v57 + 9) = v88;
        *(v57 + 10) = v315;
        *(v57 + 11) = v89;
        *(v57 + 12) = v90;
        *(v57 + 13) = v91;
        *(v57 + 14) = v92;
        v57[120] = v93;
      }

      a2 = v321;
      a3 = v322;
      v57[121] = v58[121];
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v94 = *(a2 + v13);
      *(a1 + v13) = v94;
      v95 = v94;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v96 = sub_21DBF563C();
    (*(*(v96 - 8) + 16))(a1 + v13, a2 + v13, v96);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(a2, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(a1, a2, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(a1 + v37, a2 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (a1 + v40);
    v42 = (a2 + v40);
    v43 = v42[1];
    if (v43)
    {
      *v41 = *v42;
      v41[1] = v43;
      v44 = v42[2];
      v41[2] = v44;
      sub_21DBF8E0C();
      v45 = v44;
    }

    else
    {
      *v41 = *v42;
      v41[2] = v42[2];
    }

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(a2, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(a1, a2, *(*(v34 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(a1, a2, v47);
      *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_128;
  }

  *a1 = *a2;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v97 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v98 = (a1 + v97);
  v99 = (a2 + v97);
  v101 = *v99;
  v100 = v99[1];
  v102 = a3[7];
  v103 = a3[8];
  v104 = *(a2 + v102);
  *v98 = v101;
  v98[1] = v100;
  *(a1 + v102) = v104;
  v105 = a1 + v103;
  v106 = a2 + v103;
  v107 = *(a2 + v103);
  v108 = *(a2 + v103 + 8);
  v109 = *(a2 + v103 + 16);
  v110 = *(a2 + v103 + 24);
  v111 = *(a2 + v103 + 32);
  v112 = *(a2 + v103 + 40);
  v113 = v106[48];
  sub_21DBF8E0C();
  v114 = v104;
  sub_21D0FB960(v107, v108, v109, v110, v111, v112, v113);
  *v105 = v107;
  *(v105 + 1) = v108;
  *(v105 + 2) = v109;
  *(v105 + 3) = v110;
  *(v105 + 4) = v111;
  *(v105 + 5) = v112;
  v105[48] = v113;
  v116 = v321;
  v115 = v322;
  v117 = v322[9];
  v118 = a1 + v117;
  v119 = v321 + v117;
  v120 = *(v321 + v117 + 8);
  if (v120 == 1)
  {
    v121 = *(v119 + 3);
    *(v118 + 2) = *(v119 + 2);
    *(v118 + 3) = v121;
    *(v118 + 4) = *(v119 + 4);
    *(v118 + 73) = *(v119 + 73);
    v122 = *(v119 + 1);
    *v118 = *v119;
    *(v118 + 1) = v122;
  }

  else
  {
    *v118 = *v119;
    *(v118 + 1) = v120;
    v123 = *(v119 + 2);
    v124 = *(v119 + 3);
    v125 = *(v119 + 4);
    v126 = *(v119 + 5);
    v127 = *(v119 + 6);
    v128 = *(v119 + 7);
    v129 = v119[64];
    sub_21DBF8E0C();
    sub_21D0FB960(v123, v124, v125, v126, v127, v128, v129);
    *(v118 + 2) = v123;
    *(v118 + 3) = v124;
    *(v118 + 4) = v125;
    *(v118 + 5) = v126;
    *(v118 + 6) = v127;
    *(v118 + 7) = v128;
    v118[64] = v129;
    v116 = v321;
    v115 = v322;
    v130 = *(v119 + 9);
    v131 = *(v119 + 10);
    LOBYTE(v125) = v119[88];
    sub_21D0FB9BC(v130, v131, v125);
    *(v118 + 9) = v130;
    *(v118 + 10) = v131;
    v118[88] = v125;
  }

  v132 = v115[11];
  *(a1 + v115[10]) = *(v116 + v115[10]);
  *(a1 + v132) = *(v116 + v132);
  v133 = v115[12];
  v134 = v115[13];
  v135 = *(v116 + v133);
  *(a1 + v133) = v135;
  v136 = (a1 + v134);
  v137 = (v116 + v134);
  v138 = *(v116 + v134 + 8);
  v139 = v135;
  if (v138)
  {
    *v136 = *v137;
    v136[1] = v138;
    v140 = v137[3];
    v136[2] = v137[2];
    v136[3] = v140;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v141 = *(v137 + 1);
    *v136 = *v137;
    *(v136 + 1) = v141;
  }

  v142 = v115[15];
  *(a1 + v115[14]) = *(v116 + v115[14]);
  *(a1 + v142) = *(v116 + v142);
  v143 = v115[17];
  *(a1 + v115[16]) = *(v116 + v115[16]);
  *(a1 + v143) = *(v116 + v143);
  v144 = v115[18];
  v145 = v115[19];
  v146 = *(v116 + v144);
  *(a1 + v144) = v146;
  v147 = (a1 + v145);
  v148 = (v116 + v145);
  v149 = *(v116 + v145 + 8);
  v150 = v146;
  if (v149)
  {
    *v147 = *v148;
    v147[1] = v149;
    v151 = v148[3];
    v147[2] = v148[2];
    v147[3] = v151;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v152 = *(v148 + 1);
    *v147 = *v148;
    *(v147 + 1) = v152;
  }

  v153 = v115[20];
  v154 = a1 + v153;
  v155 = v116 + v153;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v157 = *(v156 - 1);
  v320 = a1;
  if ((*(v157 + 48))(v155, 1, v156))
  {
    v158 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v154, v155, *(*(v158 - 8) + 64));
  }

  else
  {
    v316 = v157;
    v159 = sub_21DBF563C();
    v306 = *(v159 - 8);
    v308 = v159;
    v304 = *(v306 + 16);
    v304(v154, v155);
    v160 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
    v154[v160[5]] = v155[v160[5]];
    v161 = v160[6];
    v162 = sub_21DBF509C();
    (*(*(v162 - 8) + 16))(&v154[v161], &v155[v161], v162);
    v154[v160[7]] = v155[v160[7]];
    v163 = v160[8];
    v164 = &v154[v163];
    v165 = &v155[v163];
    v164[16] = v165[16];
    *v164 = *v165;
    v154[v160[9]] = v155[v160[9]];
    v154[v160[10]] = v155[v160[10]];
    v154[v160[11]] = v155[v160[11]];
    v166 = v160[12];
    v167 = &v154[v166];
    v168 = &v155[v166];
    v169 = *(v168 + 1);
    *v167 = *v168;
    *(v167 + 1) = v169;
    v170 = v156[12];
    v171 = &v154[v170];
    v172 = &v155[v170];
    *v171 = *v172;
    v171[8] = v172[8];
    v173 = *(v172 + 3);
    *(v171 + 2) = *(v172 + 2);
    *(v171 + 3) = v173;
    v174 = *(v172 + 5);
    *(v171 + 4) = *(v172 + 4);
    *(v171 + 5) = v174;
    v175 = v156[16];
    __dst = &v154[v175];
    v310 = &v155[v175];
    v176 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
    v177 = *(v176 - 8);
    v178 = *(v177 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v178(v310, 1, v176))
    {
      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
      memcpy(__dst, v310, *(*(v179 - 8) + 64));
      v116 = v321;
      v115 = v322;
      v180 = v316;
      a1 = v320;
    }

    else
    {
      v181 = *(v310 + 1);
      *__dst = *v310;
      *(__dst + 1) = v181;
      v182 = *(v176 + 20);
      v183 = *(v306 + 48);
      sub_21DBF8E0C();
      if (v183(&v310[v182], 1, v308))
      {
        v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&__dst[v182], &v310[v182], *(*(v184 - 8) + 64));
      }

      else
      {
        (v304)(&__dst[v182], &v310[v182], v308);
        (*(v306 + 56))(&__dst[v182], 0, 1, v308);
      }

      v115 = v322;
      a1 = v320;
      (*(v177 + 56))(__dst, 0, 1, v176);
      v116 = v321;
      v180 = v316;
    }

    v154[v156[20]] = v155[v156[20]];
    v154[v156[24]] = v155[v156[24]];
    (*(v180 + 56))(v154, 0, 1, v156);
  }

  v185 = v115[22];
  *(a1 + v115[21]) = *(v116 + v115[21]);
  *(a1 + v185) = *(v116 + v185);
  v186 = v115[23];
  v187 = a1 + v186;
  v188 = v116 + v186;
  v189 = *v188;
  v190 = *(v188 + 8);
  v191 = *(v188 + 16);
  v192 = *(v188 + 24);
  v193 = *(v188 + 32);
  sub_21D48BB60(*v188, v190, v191, v192, v193);
  *v187 = v189;
  *(v187 + 1) = v190;
  *(v187 + 2) = v191;
  *(v187 + 3) = v192;
  v187[32] = v193;
  v194 = v115[24];
  v195 = v115[25];
  v196 = a1 + v194;
  v197 = v116 + v194;
  *v196 = *v197;
  v196[8] = *(v197 + 8);
  v198 = (a1 + v195);
  v199 = (v116 + v195);
  v200 = *(v116 + v195 + 8);
  sub_21DBF8E0C();
  if (v200 >= 3)
  {
    *v198 = *v199;
    v198[1] = v200;
    v201 = v199[2];
    v198[2] = v201;
    sub_21DBF8E0C();
    v202 = v201;
  }

  else
  {
    *v198 = *v199;
    v198[2] = v199[2];
  }

  v203 = v115[26];
  v204 = a1 + v203;
  v205 = v116 + v203;
  v206 = *(v116 + v203);
  if (v206)
  {
    *v204 = v206;
    v207 = *(v205 + 8);
    sub_21DBF8E0C();
    if (v207)
    {
      v209 = *(v205 + 16);
      v208 = *(v205 + 24);
      *(v204 + 1) = v207;
      *(v204 + 2) = v209;
      v211 = *(v205 + 32);
      v210 = *(v205 + 40);
      *(v204 + 3) = v208;
      *(v204 + 4) = v211;
      v213 = *(v205 + 48);
      v212 = *(v205 + 56);
      *(v204 + 5) = v210;
      *(v204 + 6) = v213;
      v215 = *(v205 + 64);
      v214 = *(v205 + 72);
      *(v204 + 7) = v212;
      *(v204 + 8) = v215;
      v217 = *(v205 + 80);
      v216 = *(v205 + 88);
      *(v204 + 9) = v214;
      *(v204 + 10) = v217;
      v218 = *(v205 + 96);
      *(v204 + 11) = v216;
      *(v204 + 12) = v218;
      v204[104] = *(v205 + 104);
      v219 = *(v205 + 112);
      *(v204 + 14) = v219;
      v220 = v207;
      v221 = v209;
      v116 = v321;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v222 = v219;
    }

    else
    {
      v226 = *(v205 + 88);
      *(v204 + 72) = *(v205 + 72);
      *(v204 + 88) = v226;
      *(v204 + 104) = *(v205 + 104);
      v227 = *(v205 + 24);
      *(v204 + 8) = *(v205 + 8);
      *(v204 + 24) = v227;
      v228 = *(v205 + 56);
      *(v204 + 40) = *(v205 + 40);
      *(v204 + 56) = v228;
    }
  }

  else
  {
    v223 = *(v205 + 80);
    *(v204 + 4) = *(v205 + 64);
    *(v204 + 5) = v223;
    *(v204 + 6) = *(v205 + 96);
    *(v204 + 14) = *(v205 + 112);
    v224 = *(v205 + 16);
    *v204 = *v205;
    *(v204 + 1) = v224;
    v225 = *(v205 + 48);
    *(v204 + 2) = *(v205 + 32);
    *(v204 + 3) = v225;
  }

  v229 = v322[27];
  v230 = a1 + v229;
  v231 = v116 + v229;
  v232 = *v231;
  v233 = *(v231 + 8);
  v234 = *(v231 + 16);
  v235 = *(v231 + 24);
  v236 = *(v231 + 32);
  v237 = *(v231 + 40);
  v238 = *(v231 + 48);
  v239 = *(v231 + 56);
  v240 = *(v231 + 64);
  v303 = *(v231 + 72);
  v305 = *(v231 + 80);
  v307 = *(v231 + 88);
  v309 = *(v231 + 96);
  v311 = *(v231 + 104);
  v317 = *(v231 + 112);
  __dsta = *(v231 + 120);
  sub_21D7ABD2C(*v231, v233, v234, v235, v236, v237, v238, v239, v240, v303, v305, v307, v309, v311, v317, __dsta);
  *v230 = v232;
  *(v230 + 1) = v233;
  *(v230 + 2) = v234;
  *(v230 + 3) = v235;
  *(v230 + 4) = v236;
  *(v230 + 5) = v237;
  *(v230 + 6) = v238;
  *(v230 + 7) = v239;
  *(v230 + 8) = v240;
  v241 = v320;
  *(v230 + 9) = v303;
  *(v230 + 10) = v305;
  *(v230 + 11) = v307;
  *(v230 + 12) = v309;
  *(v230 + 13) = v311;
  *(v230 + 14) = v317;
  v230[120] = __dsta;
  v242 = v322[28];
  v243 = v322[29];
  v244 = v320 + v242;
  v245 = v321 + v242;
  *v244 = *v245;
  v246 = *(v245 + 2);
  *(v244 + 1) = *(v245 + 1);
  *(v244 + 2) = v246;
  v247 = (v320 + v243);
  v248 = (v321 + v243);
  v249 = *(v321 + v243 + 8);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v249)
  {
    *v247 = *v248;
    v247[1] = v249;
    v250 = v248[2];
    v251 = v248[3];
    v247[2] = v250;
    v247[3] = v251;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v252 = *(v248 + 1);
    *v247 = *v248;
    *(v247 + 1) = v252;
  }

  v253 = v322[31];
  *(v320 + v322[30]) = *(v321 + v322[30]);
  v254 = v320 + v253;
  v255 = v321 + v253;
  *v254 = *v255;
  v254[8] = v255[8];
  v256 = v322[33];
  *(v320 + v322[32]) = *(v321 + v322[32]);
  sub_21DBF8E0C();
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v258 = *(v257 - 8);
  if ((*(v258 + 48))(v321 + v256, 1, v257))
  {
    v259 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
    memcpy(v320 + v256, v321 + v256, *(*(v259 - 8) + 64));
  }

  else
  {
    v260 = sub_21DBF54CC();
    v261 = *(v260 - 8);
    if ((*(v261 + 48))(v321 + v256, 1, v260))
    {
      v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(v320 + v256, v321 + v256, *(*(v262 - 8) + 64));
    }

    else
    {
      (*(v261 + 16))(v320 + v256, v321 + v256, v260);
      (*(v261 + 56))(v320 + v256, 0, 1, v260);
    }

    (*(v258 + 56))(v320 + v256, 0, 1, v257);
  }

  v263 = v322[34];
  v264 = v322[35];
  v265 = (v320 + v263);
  v266 = (v321 + v263);
  v267 = v266[1];
  *v265 = *v266;
  v265[1] = v267;
  v268 = v320 + v264;
  v269 = v321 + v264;
  v270 = *(v321 + v264 + 8);
  sub_21DBF8E0C();
  if (v270 == 1)
  {
    v271 = *(v269 + 3);
    *(v268 + 2) = *(v269 + 2);
    *(v268 + 3) = v271;
    *(v268 + 4) = *(v269 + 4);
    v272 = *(v269 + 1);
    *v268 = *v269;
    *(v268 + 1) = v272;
  }

  else
  {
    *v268 = *v269;
    *(v268 + 1) = v270;
    v273 = *(v269 + 3);
    *(v268 + 2) = *(v269 + 2);
    *(v268 + 3) = v273;
    v274 = *(v269 + 5);
    *(v268 + 4) = *(v269 + 4);
    *(v268 + 5) = v274;
    v268[48] = v269[48];
    v275 = *(v269 + 8);
    *(v268 + 7) = *(v269 + 7);
    *(v268 + 8) = v275;
    v276 = *(v269 + 9);
    *(v268 + 9) = v276;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v277 = v276;
    v241 = v320;
  }

  v278 = v322[37];
  *(v241 + v322[36]) = *(v321 + v322[36]);
  v279 = v241 + v278;
  v280 = v321 + v278;
  v281 = *(v321 + v278 + 40);
  sub_21DBF8E0C();
  if (v281 == 255)
  {
    v287 = *(v280 + 1);
    *v279 = *v280;
    *(v279 + 16) = v287;
    *(v279 + 25) = *(v280 + 25);
  }

  else
  {
    v282 = *v280;
    v283 = *(v280 + 1);
    v284 = *(v280 + 2);
    v285 = *(v280 + 3);
    v286 = *(v280 + 4);
    sub_21D7A9844(v282, v283, v284, v285, v286, v281);
    *v279 = v282;
    *(v279 + 8) = v283;
    *(v279 + 16) = v284;
    *(v279 + 24) = v285;
    *(v279 + 32) = v286;
    *(v279 + 40) = v281;
  }

  v288 = v322[38];
  v289 = v241 + v288;
  v290 = v321 + v288;
  v291 = *(v321 + v288);
  if (v291)
  {
    v292 = *(v290 + 1);
    v293 = *(v290 + 2);
    *v289 = v291;
    *(v289 + 8) = v292;
    v294 = *(v290 + 3);
    v295 = *(v290 + 4);
    *(v289 + 16) = v293;
    *(v289 + 24) = v294;
    *(v289 + 32) = v295;
    v296 = *(v290 + 7);
    v297 = v291;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v296 == 1)
    {
      *(v289 + 40) = *(v290 + 40);
      *(v289 + 56) = *(v290 + 56);
    }

    else
    {
      *(v289 + 40) = v290[40];
      if (v296)
      {
        *(v289 + 48) = *(v290 + 6);
        *(v289 + 56) = v296;
        v300 = *(v290 + 8);
        *(v289 + 64) = v300;
        sub_21DBF8E0C();
        v301 = v300;
      }

      else
      {
        *(v289 + 48) = *(v290 + 3);
        *(v289 + 64) = *(v290 + 8);
      }
    }

    return v320;
  }

  else
  {
    v298 = *(v290 + 3);
    *(v289 + 32) = *(v290 + 2);
    *(v289 + 48) = v298;
    *(v289 + 64) = *(v290 + 8);
    v299 = *(v290 + 1);
    *v289 = *v290;
    *(v289 + 16) = v299;
  }

  return v241;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel(uint64_t a1, void **a2, int *a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D799ED4(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *v5 = *v4;
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
        *v5 = *v4;
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
        goto LABEL_34;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v4, v49);
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
        v50 = *v4;
        *v5 = *v4;
        v51 = v50;
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
      memcpy(v5, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v4 + v56;
      if (*(v4 + v56 + 8))
      {
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

        v4 = a2;
        v3 = a3;
        v57[121] = v58[121];
        v5 = a1;
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
      v3 = a3;
LABEL_97:
      *(v5 + v55[6]) = *(v4 + v55[6]);
      *(v5 + v55[7]) = *(v4 + v55[7]);
      *(v5 + v55[8]) = *(v4 + v55[8]);
      *(v5 + v55[9]) = *(v4 + v55[9]);
      *(v5 + v55[10]) = *(v4 + v55[10]);
      v83 = v55[11];
      v84 = *(v4 + v83);
      *(v5 + v83) = v84;
      v85 = v84;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v4, v52);
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
      v53 = *v4;
      *v5 = *v4;
      v54 = v53;
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
    memcpy(v5, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v86 = v55[5];
    v57 = v5 + v86;
    v58 = v4 + v86;
    if (*(v4 + v86 + 8))
    {
      *v57 = *v58;
      *(v57 + 1) = *(v58 + 1);
      v87 = *(v58 + 2);
      v88 = *(v58 + 3);
      v89 = *(v58 + 4);
      v90 = *(v58 + 5);
      v92 = *(v58 + 6);
      v91 = *(v58 + 7);
      v93 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v87, v88, v89, v90, v92, v91, v93);
      *(v57 + 2) = v87;
      *(v57 + 3) = v88;
      *(v57 + 4) = v89;
      *(v57 + 5) = v90;
      *(v57 + 6) = v92;
      *(v57 + 7) = v91;
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

      v4 = a2;
      v3 = a3;
      v57[121] = v58[121];
      v5 = a1;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v4;
      *(v5 + 8) = *(v4 + 8);
      *(v5 + 9) = *(v4 + 9);
      *(v5 + 10) = *(v4 + 10);
      v18 = v4[2];
      v5[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *v4;
    *v5 = *v4;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(v4 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v5 + v13, v4 + v13, *(*(v25 - 8) + 64));
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
      v105 = *(v4 + v13);
      *(v5 + v13) = v105;
      v106 = v105;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(v5 + v13, 0, 1, v14);
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
        memcpy(v5 + v13, v4 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v107 = sub_21DBF563C();
    (*(*(v107 - 8) + 16))(v5 + v13, v4 + v13, v107);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v4, 1, v26))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v5, v4, *(*(v28 - 8) + 64));
    }

    else
    {
      *v5 = *v4;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v39 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v39(v5 + v37, a2 + v37, v38);
      v4 = a2;
      (*(v27 + 56))(v5, 0, 1, v26);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v4 + v40);
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
    v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v4, 1, v32))
    {
      v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v4, *(*(v34 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v4, v47);
      *(v5 + *(v32 + 20)) = *(v4 + *(v32 + 20));
      (*(v33 + 56))(v5, 0, 1, v32);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v4 + *(v48 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(v5, v4, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *v5 = *v4;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(v5 + v8, v4 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  *(v5 + v3[5]) = *(v4 + v3[5]);
  v108 = v3[6];
  v109 = (v5 + v108);
  v110 = (v4 + v108);
  *v109 = *v110;
  v109[1] = v110[1];
  sub_21DBF8E0C();

  v111 = v3[7];
  v112 = *(v5 + v111);
  v113 = *(v4 + v111);
  *(v5 + v111) = v113;
  v114 = v113;

  v115 = v3[8];
  v116 = v5 + v115;
  v117 = v4 + v115;
  v118 = *v117;
  v119 = *(v117 + 1);
  v120 = *(v117 + 2);
  v121 = *(v117 + 3);
  v122 = *(v117 + 4);
  v123 = *(v117 + 5);
  v124 = v117[48];
  sub_21D0FB960(*v117, v119, v120, v121, v122, v123, v124);
  v125 = *v116;
  v126 = *(v116 + 1);
  v127 = *(v116 + 2);
  v128 = *(v116 + 3);
  v129 = *(v116 + 4);
  v130 = *(v116 + 5);
  v131 = v116[48];
  *v116 = v118;
  *(v116 + 1) = v119;
  *(v116 + 2) = v120;
  *(v116 + 3) = v121;
  *(v116 + 4) = v122;
  *(v116 + 5) = v123;
  v133 = a2;
  v132 = a3;
  v116[48] = v124;
  v134 = a1;
  sub_21D1078C0(v125, v126, v127, v128, v129, v130, v131);
  v135 = a3[9];
  v136 = a1 + v135;
  v137 = a2 + v135;
  v138 = *(a1 + v135 + 8);
  v139 = *(a2 + v135 + 8);
  if (v138 == 1)
  {
    if (v139 == 1)
    {
      v140 = *(v137 + 1);
      *v136 = *v137;
      *(v136 + 16) = v140;
      v141 = *(v137 + 2);
      v142 = *(v137 + 3);
      v143 = *(v137 + 4);
      *(v136 + 73) = *(v137 + 73);
      *(v136 + 48) = v142;
      *(v136 + 64) = v143;
      *(v136 + 32) = v141;
    }

    else
    {
      *v136 = *v137;
      *(v136 + 8) = *(v137 + 1);
      v148 = *(v137 + 2);
      v149 = *(v137 + 3);
      v150 = *(v137 + 4);
      v151 = *(v137 + 5);
      v152 = *(v137 + 6);
      v153 = *(v137 + 7);
      v154 = v137[64];
      sub_21DBF8E0C();
      sub_21D0FB960(v148, v149, v150, v151, v152, v153, v154);
      *(v136 + 16) = v148;
      *(v136 + 24) = v149;
      *(v136 + 32) = v150;
      *(v136 + 40) = v151;
      *(v136 + 48) = v152;
      *(v136 + 56) = v153;
      v133 = a2;
      v132 = a3;
      *(v136 + 64) = v154;
      v134 = a1;
      v155 = *(v137 + 9);
      v156 = *(v137 + 10);
      LOBYTE(v150) = v137[88];
      sub_21D0FB9BC(v155, v156, v150);
      *(v136 + 72) = v155;
      *(v136 + 80) = v156;
      *(v136 + 88) = v150;
    }
  }

  else if (v139 == 1)
  {
    sub_21D5AF8C8(v136);
    v144 = *(v137 + 1);
    *v136 = *v137;
    *(v136 + 16) = v144;
    v146 = *(v137 + 3);
    v145 = *(v137 + 4);
    v147 = *(v137 + 2);
    *(v136 + 73) = *(v137 + 73);
    *(v136 + 48) = v146;
    *(v136 + 64) = v145;
    *(v136 + 32) = v147;
  }

  else
  {
    *v136 = *v137;
    *(v136 + 8) = *(v137 + 1);
    sub_21DBF8E0C();

    v157 = *(v137 + 2);
    v158 = *(v137 + 3);
    v159 = *(v137 + 4);
    v160 = *(v137 + 5);
    v161 = *(v137 + 6);
    v162 = *(v137 + 7);
    v163 = v137[64];
    sub_21D0FB960(v157, v158, v159, v160, v161, v162, v163);
    v164 = *(v136 + 16);
    v165 = *(v136 + 24);
    v166 = *(v136 + 32);
    v167 = *(v136 + 40);
    v168 = *(v136 + 48);
    v169 = *(v136 + 56);
    v170 = *(v136 + 64);
    *(v136 + 16) = v157;
    *(v136 + 24) = v158;
    *(v136 + 32) = v159;
    *(v136 + 40) = v160;
    v133 = a2;
    v132 = a3;
    *(v136 + 48) = v161;
    *(v136 + 56) = v162;
    v134 = a1;
    *(v136 + 64) = v163;
    sub_21D1078C0(v164, v165, v166, v167, v168, v169, v170);
    v171 = *(v137 + 9);
    v172 = *(v137 + 10);
    LOBYTE(v158) = v137[88];
    sub_21D0FB9BC(v171, v172, v158);
    v173 = *(v136 + 72);
    v174 = *(v136 + 80);
    v175 = *(v136 + 88);
    *(v136 + 72) = v171;
    *(v136 + 80) = v172;
    *(v136 + 88) = v158;
    sub_21D0FB9F4(v173, v174, v175);
  }

  *(v134 + v132[10]) = *(v133 + v132[10]);
  *(v134 + v132[11]) = *(v133 + v132[11]);
  v176 = v132[12];
  v177 = *(v133 + v176);
  v178 = *(v134 + v176);
  *(v134 + v176) = v177;
  v179 = v177;

  v180 = v132[13];
  v181 = (v134 + v180);
  v182 = (v133 + v180);
  v183 = *(v134 + v180 + 8);
  v184 = *(v133 + v180 + 8);
  if (v183)
  {
    if (v184)
    {
      *v181 = *v182;
      v181[1] = v182[1];
      sub_21DBF8E0C();

      v181[2] = v182[2];
      sub_21DBF8E0C();

      v181[3] = v182[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v181, &qword_27CE5A640);
      v185 = *(v182 + 1);
      *v181 = *v182;
      *(v181 + 1) = v185;
    }
  }

  else if (v184)
  {
    *v181 = *v182;
    v181[1] = v182[1];
    v181[2] = v182[2];
    v181[3] = v182[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v186 = *(v182 + 1);
    *v181 = *v182;
    *(v181 + 1) = v186;
  }

  *(v134 + v132[14]) = *(v133 + v132[14]);
  *(v134 + v132[15]) = *(v133 + v132[15]);
  *(v134 + v132[16]) = *(v133 + v132[16]);
  *(v134 + v132[17]) = *(v133 + v132[17]);
  v187 = v132[18];
  v188 = *(v133 + v187);
  v189 = *(v134 + v187);
  *(v134 + v187) = v188;
  v190 = v188;

  v191 = v132[19];
  v192 = (v134 + v191);
  v193 = (v133 + v191);
  v194 = *(v134 + v191 + 8);
  v195 = *(v133 + v191 + 8);
  if (v194)
  {
    if (v195)
    {
      *v192 = *v193;
      v192[1] = v193[1];
      sub_21DBF8E0C();

      v192[2] = v193[2];
      sub_21DBF8E0C();

      v192[3] = v193[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v192, &qword_27CE5A640);
      v196 = *(v193 + 1);
      *v192 = *v193;
      *(v192 + 1) = v196;
    }
  }

  else if (v195)
  {
    *v192 = *v193;
    v192[1] = v193[1];
    v192[2] = v193[2];
    v192[3] = v193[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v197 = *(v193 + 1);
    *v192 = *v193;
    *(v192 + 1) = v197;
  }

  v198 = v132[20];
  v199 = (v134 + v198);
  v200 = v133 + v198;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  v202 = *(v201 - 1);
  v203 = *(v202 + 48);
  v204 = v203(v199, 1, v201);
  v205 = v203(v200, 1, v201);
  if (v204)
  {
    if (!v205)
    {
      v206 = sub_21DBF563C();
      v475 = *(v206 - 8);
      v471 = v206;
      v468 = *(v475 + 16);
      (v468)(v199, v200);
      v207 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
      v199[v207[5]] = v200[v207[5]];
      v208 = v207[6];
      v209 = sub_21DBF509C();
      (*(*(v209 - 8) + 16))(&v199[v208], &v200[v208], v209);
      v199[v207[7]] = v200[v207[7]];
      v210 = v207[8];
      v211 = &v199[v210];
      v212 = &v200[v210];
      v213 = v212[16];
      *v211 = *v212;
      v211[16] = v213;
      v199[v207[9]] = v200[v207[9]];
      v199[v207[10]] = v200[v207[10]];
      v199[v207[11]] = v200[v207[11]];
      v214 = v207[12];
      v215 = &v199[v214];
      v216 = &v200[v214];
      *v215 = *v216;
      v215[1] = v216[1];
      v217 = v201[12];
      v218 = &v199[v217];
      v219 = &v200[v217];
      *v218 = *v219;
      v218[8] = v219[8];
      *(v218 + 2) = *(v219 + 2);
      *(v218 + 3) = *(v219 + 3);
      *(v218 + 4) = *(v219 + 4);
      *(v218 + 5) = *(v219 + 5);
      v220 = v201[16];
      v478 = v201;
      __dst = &v199[v220];
      v221 = &v200[v220];
      v222 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
      v223 = *(v222 - 8);
      v224 = *(v223 + 48);
      v225 = v222;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v224(v221, 1, v225))
      {
        v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
        memcpy(__dst, v221, *(*(v226 - 8) + 64));
        v134 = a1;
        v133 = a2;
        v227 = v478;
      }

      else
      {
        v465 = v223;
        v466 = v225;
        *__dst = *v221;
        __dst[1] = v221[1];
        v252 = *(v225 + 20);
        v253 = *(v475 + 48);
        sub_21DBF8E0C();
        if (v253(v221 + v252, 1, v471))
        {
          v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
          memcpy(__dst + v252, v221 + v252, *(*(v254 - 8) + 64));
        }

        else
        {
          v468(__dst + v252, v221 + v252, v471);
          (*(v475 + 56))(__dst + v252, 0, 1, v471);
        }

        v134 = a1;
        v133 = a2;
        v227 = v478;
        (*(v465 + 56))(__dst, 0, 1, v466);
      }

      v199[v227[20]] = v200[v227[20]];
      v199[v227[24]] = v200[v227[24]];
      (*(v202 + 56))(v199, 0, 1, v227);
      goto LABEL_169;
    }

LABEL_156:
    v228 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
    memcpy(v199, v200, *(*(v228 - 8) + 64));
LABEL_169:
    v256 = a3;
    goto LABEL_170;
  }

  if (v205)
  {
    sub_21D0CF7E0(v199, &qword_27CE5C678);
    goto LABEL_156;
  }

  v229 = sub_21DBF563C();
  v476 = *(v229 - 8);
  v479 = v229;
  v472 = *(v476 + 24);
  (v472)(v199, v200);
  v230 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  v199[v230[5]] = v200[v230[5]];
  v231 = v230[6];
  v232 = sub_21DBF509C();
  (*(*(v232 - 8) + 24))(&v199[v231], &v200[v231], v232);
  v199[v230[7]] = v200[v230[7]];
  v233 = v230[8];
  v234 = &v199[v233];
  v235 = &v200[v233];
  v236 = v235[16];
  *v234 = *v235;
  v234[16] = v236;
  v199[v230[9]] = v200[v230[9]];
  v199[v230[10]] = v200[v230[10]];
  v199[v230[11]] = v200[v230[11]];
  v237 = v230[12];
  v238 = &v199[v237];
  v239 = &v200[v237];
  *v238 = *v239;
  v238[1] = v239[1];
  sub_21DBF8E0C();

  v240 = v201[12];
  v241 = &v199[v240];
  v242 = &v200[v240];
  *v241 = *&v200[v240];
  v241[8] = v200[v240 + 8];
  *(v241 + 2) = *&v200[v240 + 16];
  *(v241 + 3) = *&v200[v240 + 24];
  sub_21DBF8E0C();

  *(v241 + 4) = *(v242 + 4);
  *(v241 + 5) = *(v242 + 5);
  sub_21DBF8E0C();

  v243 = v201[16];
  v244 = &v199[v243];
  v245 = &v200[v243];
  v246 = type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd(0);
  v247 = *(v246 - 8);
  v248 = *(v247 + 48);
  LODWORD(v230) = v248(v244, 1, v246);
  __dsta = v245;
  v249 = v248(v245, 1, v246);
  if (v230)
  {
    if (!v249)
    {
      *v244 = *v245;
      *(v244 + 1) = *(v245 + 1);
      v250 = *(v246 + 20);
      v473 = *(v476 + 48);
      sub_21DBF8E0C();
      if (v473(&v245[v250], 1, v479))
      {
        v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
        memcpy(&v244[v250], &v245[v250], *(*(v251 - 8) + 64));
      }

      else
      {
        (*(v476 + 16))(&v244[v250], &v245[v250], v479);
        (*(v476 + 56))(&v244[v250], 0, 1, v479);
      }

      v256 = a3;
      (*(v247 + 56))(v244, 0, 1, v246);
      v134 = a1;
      goto LABEL_259;
    }
  }

  else
  {
    if (!v249)
    {
      *v244 = *v245;
      *(v244 + 1) = *(v245 + 1);
      sub_21DBF8E0C();

      v460 = *(v246 + 20);
      v461 = *(v476 + 48);
      v462 = v461(&v244[v460], 1, v479);
      v463 = v461(&v245[v460], 1, v479);
      if (v462)
      {
        v134 = a1;
        v256 = a3;
        if (!v463)
        {
          (*(v476 + 16))(&v244[v460], &__dsta[v460], v479);
          (*(v476 + 56))(&v244[v460], 0, 1, v479);
          goto LABEL_259;
        }
      }

      else
      {
        v134 = a1;
        v256 = a3;
        if (!v463)
        {
          v472(&v244[v460], &__dsta[v460], v479);
          goto LABEL_259;
        }

        (*(v476 + 8))(&v244[v460], v479);
      }

      v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
      memcpy(&v244[v460], &__dsta[v460], *(*(v464 - 8) + 64));
      goto LABEL_259;
    }

    sub_21D799ED4(v244, type metadata accessor for TTRReminderDetailViewModel.RecurrenceEnd);
  }

  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  memcpy(v244, v245, *(*(v255 - 8) + 64));
  v134 = a1;
  v256 = a3;
LABEL_259:
  v199[v201[20]] = v200[v201[20]];
  v199[v201[24]] = v200[v201[24]];
  v133 = a2;
LABEL_170:
  *(v134 + v256[21]) = *(v133 + v256[21]);
  *(v134 + v256[22]) = *(v133 + v256[22]);
  v257 = v256[23];
  v258 = v134 + v257;
  v259 = v133 + v257;
  v260 = *v259;
  v261 = *(v259 + 8);
  v262 = *(v259 + 16);
  v263 = *(v259 + 24);
  v264 = *(v259 + 32);
  sub_21D48BB60(*v259, v261, v262, v263, v264);
  v265 = *v258;
  v266 = *(v258 + 8);
  v267 = *(v258 + 16);
  v268 = *(v258 + 24);
  *v258 = v260;
  *(v258 + 8) = v261;
  *(v258 + 16) = v262;
  *(v258 + 24) = v263;
  v269 = *(v258 + 32);
  *(v258 + 32) = v264;
  sub_21D48C240(v265, v266, v267, v268, v269);
  v270 = v256[24];
  v271 = v134 + v270;
  v272 = v133 + v270;
  *(v134 + v270) = *(v133 + v270);
  sub_21DBF8E0C();

  *(v271 + 8) = *(v272 + 8);
  v273 = v256[25];
  v274 = (v134 + v273);
  v275 = (v133 + v273);
  v276 = *(v134 + v273 + 8);
  v277 = *(v133 + v273 + 8);
  if (v276 >= 3)
  {
    if (v277 >= 3)
    {
      *v274 = *v275;
      v274[1] = v275[1];
      sub_21DBF8E0C();

      v282 = v274[2];
      v283 = v275[2];
      v274[2] = v283;
      v284 = v283;
    }

    else
    {
      sub_21D122250(v274);
      v279 = v275[2];
      *v274 = *v275;
      v274[2] = v279;
    }
  }

  else if (v277 >= 3)
  {
    *v274 = *v275;
    v274[1] = v275[1];
    v280 = v275[2];
    v274[2] = v280;
    sub_21DBF8E0C();
    v281 = v280;
  }

  else
  {
    v278 = *v275;
    v274[2] = v275[2];
    *v274 = v278;
  }

  v285 = v256[26];
  v286 = v134 + v285;
  v287 = (v133 + v285);
  v288 = *(v133 + v285);
  if (*(v134 + v285))
  {
    if (!v288)
    {
      sub_21D0CF7E0(v134 + v285, &qword_27CE61978);
      v305 = v287[3];
      v307 = *v287;
      v306 = v287[1];
      *(v286 + 32) = v287[2];
      *(v286 + 48) = v305;
      *v286 = v307;
      *(v286 + 16) = v306;
      v309 = v287[5];
      v308 = v287[6];
      v310 = v287[4];
      *(v286 + 112) = *(v287 + 14);
      *(v286 + 80) = v309;
      *(v286 + 96) = v308;
      *(v286 + 64) = v310;
      goto LABEL_193;
    }

    *v286 = v288;
    sub_21DBF8E0C();

    v290 = (v286 + 8);
    v289 = *(v286 + 8);
    v292 = (v287 + 8);
    v291 = *(v287 + 1);
    if (v289)
    {
      if (v291)
      {
        *(v286 + 8) = v291;
        v293 = v291;

        v294 = *(v286 + 16);
        v295 = *(v287 + 2);
        *(v286 + 16) = v295;
        v296 = v295;

        *(v286 + 24) = *(v287 + 3);
        *(v286 + 32) = *(v287 + 4);
        sub_21DBF8E0C();

        *(v286 + 40) = *(v287 + 5);
        *(v286 + 48) = *(v287 + 6);
        sub_21DBF8E0C();

        *(v286 + 56) = *(v287 + 7);
        *(v286 + 64) = *(v287 + 8);
        sub_21DBF8E0C();

        *(v286 + 72) = *(v287 + 9);
        *(v286 + 80) = *(v287 + 10);
        sub_21DBF8E0C();

        *(v286 + 88) = *(v287 + 11);
        *(v286 + 96) = *(v287 + 12);
        sub_21DBF8E0C();

        *(v286 + 104) = *(v287 + 104);
        v297 = *(v286 + 112);
        v298 = *(v287 + 14);
        *(v286 + 112) = v298;
        v299 = v298;
      }

      else
      {
        sub_21D30DA04(v286 + 8);
        v322 = *(v287 + 24);
        v321 = *(v287 + 40);
        *v290 = *v292;
        *(v286 + 24) = v322;
        *(v286 + 40) = v321;
        v323 = *(v287 + 104);
        v325 = *(v287 + 56);
        v324 = *(v287 + 72);
        *(v286 + 88) = *(v287 + 88);
        *(v286 + 104) = v323;
        *(v286 + 56) = v325;
        *(v286 + 72) = v324;
      }

      goto LABEL_193;
    }

    if (v291)
    {
      *(v286 + 8) = v291;
      v311 = *(v287 + 2);
      *(v286 + 16) = v311;
      *(v286 + 24) = *(v287 + 3);
      *(v286 + 32) = *(v287 + 4);
      *(v286 + 40) = *(v287 + 5);
      *(v286 + 48) = *(v287 + 6);
      *(v286 + 56) = *(v287 + 7);
      *(v286 + 64) = *(v287 + 8);
      *(v286 + 72) = *(v287 + 9);
      *(v286 + 80) = *(v287 + 10);
      *(v286 + 88) = *(v287 + 11);
      *(v286 + 96) = *(v287 + 12);
      *(v286 + 104) = *(v287 + 104);
      v302 = *(v287 + 14);
      *(v286 + 112) = v302;
      v312 = v291;
      v313 = v311;
      goto LABEL_188;
    }

    v331 = *v292;
    v332 = *(v287 + 40);
    *(v286 + 24) = *(v287 + 24);
    *(v286 + 40) = v332;
    *v290 = v331;
    v333 = *(v287 + 56);
    v334 = *(v287 + 72);
    v335 = *(v287 + 104);
    *(v286 + 88) = *(v287 + 88);
    *(v286 + 104) = v335;
    *(v286 + 56) = v333;
    *(v286 + 72) = v334;
  }

  else if (v288)
  {
    *v286 = v288;
    v300 = *(v287 + 1);
    sub_21DBF8E0C();
    if (v300)
    {
      *(v286 + 8) = v300;
      v301 = *(v287 + 2);
      *(v286 + 16) = v301;
      *(v286 + 24) = *(v287 + 3);
      *(v286 + 32) = *(v287 + 4);
      *(v286 + 40) = *(v287 + 5);
      *(v286 + 48) = *(v287 + 6);
      *(v286 + 56) = *(v287 + 7);
      *(v286 + 64) = *(v287 + 8);
      *(v286 + 72) = *(v287 + 9);
      *(v286 + 80) = *(v287 + 10);
      *(v286 + 88) = *(v287 + 11);
      *(v286 + 96) = *(v287 + 12);
      *(v286 + 104) = *(v287 + 104);
      v302 = *(v287 + 14);
      *(v286 + 112) = v302;
      v303 = v300;
      v304 = v301;
      v134 = a1;
LABEL_188:
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v133 = a2;
      sub_21DBF8E0C();
      v314 = v302;
      goto LABEL_193;
    }

    v326 = *(v287 + 8);
    v327 = *(v287 + 40);
    *(v286 + 24) = *(v287 + 24);
    *(v286 + 40) = v327;
    *(v286 + 8) = v326;
    v328 = *(v287 + 56);
    v329 = *(v287 + 72);
    v330 = *(v287 + 104);
    *(v286 + 88) = *(v287 + 88);
    *(v286 + 104) = v330;
    *(v286 + 56) = v328;
    *(v286 + 72) = v329;
  }

  else
  {
    v315 = *v287;
    v316 = v287[1];
    v317 = v287[3];
    *(v286 + 32) = v287[2];
    *(v286 + 48) = v317;
    *v286 = v315;
    *(v286 + 16) = v316;
    v318 = v287[4];
    v319 = v287[5];
    v320 = v287[6];
    *(v286 + 112) = *(v287 + 14);
    *(v286 + 80) = v319;
    *(v286 + 96) = v320;
    *(v286 + 64) = v318;
  }

LABEL_193:
  v336 = a3[27];
  v337 = v134 + v336;
  v338 = v133 + v336;
  v339 = *v338;
  v340 = *(v338 + 8);
  v341 = *(v338 + 16);
  v342 = *(v338 + 24);
  v343 = *(v338 + 32);
  v344 = *(v338 + 40);
  v345 = *(v338 + 48);
  v346 = *(v338 + 56);
  v347 = *(v338 + 64);
  v467 = *(v338 + 72);
  v469 = *(v338 + 80);
  v470 = *(v338 + 88);
  v474 = *(v338 + 96);
  v477 = *(v338 + 104);
  v480 = *(v338 + 112);
  __dstb = *(v338 + 120);
  sub_21D7ABD2C(*v338, v340, v341, v342, v343, v344, v345, v346, v347, v467, v469, v470, v474, v477, v480, __dstb);
  v348 = *v337;
  v349 = *(v337 + 8);
  v350 = *(v337 + 16);
  v351 = *(v337 + 24);
  v352 = *(v337 + 32);
  v353 = *(v337 + 40);
  v354 = *(v337 + 48);
  v355 = *(v337 + 56);
  v356 = *(v337 + 64);
  v357 = *(v337 + 80);
  v358 = *(v337 + 96);
  v359 = *(v337 + 112);
  v360 = *(v337 + 120);
  *v337 = v339;
  *(v337 + 8) = v340;
  *(v337 + 16) = v341;
  *(v337 + 24) = v342;
  *(v337 + 32) = v343;
  *(v337 + 40) = v344;
  v361 = a2;
  v362 = a3;
  *(v337 + 48) = v345;
  *(v337 + 56) = v346;
  *(v337 + 64) = v347;
  *(v337 + 72) = v467;
  *(v337 + 80) = v469;
  *(v337 + 88) = v470;
  *(v337 + 96) = v474;
  *(v337 + 104) = v477;
  *(v337 + 112) = v480;
  *(v337 + 120) = __dstb;
  sub_21D7AC858(v348, v349, v350, v351, v352, v353, v354, v355, v356, *(&v356 + 1), v357, *(&v357 + 1), v358, *(&v358 + 1), v359, v360);
  v363 = a3[28];
  v364 = a1 + v363;
  v365 = a2 + v363;
  *v364 = *(a2 + v363);
  *(v364 + 8) = *(a2 + v363 + 8);
  sub_21DBF8E0C();

  *(v364 + 16) = *(v365 + 2);
  sub_21DBF8E0C();

  v366 = a3[29];
  v367 = (a1 + v366);
  v368 = (a2 + v366);
  v369 = *(a1 + v366 + 8);
  v370 = *(a2 + v366 + 8);
  if (v369)
  {
    if (v370)
    {
      *v367 = *v368;
      v367[1] = v368[1];
      sub_21DBF8E0C();

      v367[2] = v368[2];
      sub_21DBF8E0C();

      v367[3] = v368[3];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(v367, &qword_27CE5A640);
      v371 = *(v368 + 1);
      *v367 = *v368;
      *(v367 + 1) = v371;
    }
  }

  else if (v370)
  {
    *v367 = *v368;
    v367[1] = v368[1];
    v367[2] = v368[2];
    v367[3] = v368[3];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v372 = *(v368 + 1);
    *v367 = *v368;
    *(v367 + 1) = v372;
  }

  *(a1 + a3[30]) = *(a2 + a3[30]);
  v373 = a3[31];
  v374 = a1 + v373;
  v375 = a2 + v373;
  v376 = *v375;
  *(v374 + 8) = v375[8];
  *v374 = v376;
  *(a1 + a3[32]) = *(a2 + a3[32]);
  sub_21DBF8E0C();

  v377 = a3[33];
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230);
  v379 = *(v378 - 8);
  v380 = *(v379 + 48);
  v381 = v380(a1 + v377, 1, v378);
  v382 = v380(a2 + v377, 1, v378);
  if (v381)
  {
    if (!v382)
    {
      v383 = sub_21DBF54CC();
      v384 = *(v383 - 8);
      if ((*(v384 + 48))(a2 + v377, 1, v383))
      {
        v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
        memcpy((a1 + v377), a2 + v377, *(*(v385 - 8) + 64));
      }

      else
      {
        (*(v384 + 16))(a1 + v377, a2 + v377, v383);
        (*(v384 + 56))(a1 + v377, 0, 1, v383);
      }

      goto LABEL_212;
    }

    goto LABEL_206;
  }

  if (v382)
  {
    sub_21D0CF7E0(a1 + v377, &unk_27CE62230);
LABEL_206:
    v386 = type metadata accessor for TTRReminderDetailViewModel.URLState(0);
LABEL_207:
    memcpy((a1 + v377), a2 + v377, *(*(v386 - 8) + 64));
    goto LABEL_213;
  }

  v378 = sub_21DBF54CC();
  v379 = *(v378 - 8);
  v387 = *(v379 + 48);
  v388 = v387(a1 + v377, 1, v378);
  v389 = v387(a2 + v377, 1, v378);
  if (v388)
  {
    if (!v389)
    {
      (*(v379 + 16))(a1 + v377, a2 + v377, v378);
LABEL_212:
      (*(v379 + 56))(a1 + v377, 0, 1, v378);
      goto LABEL_213;
    }

    goto LABEL_245;
  }

  if (v389)
  {
    (*(v379 + 8))(a1 + v377, v378);
LABEL_245:
    v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    goto LABEL_207;
  }

  (*(v379 + 24))(a1 + v377, a2 + v377, v378);
LABEL_213:
  v390 = a3[34];
  v391 = (a1 + v390);
  v392 = (a2 + v390);
  *v391 = *v392;
  v391[1] = v392[1];
  sub_21DBF8E0C();

  v393 = a3[35];
  v394 = a1 + v393;
  v395 = a2 + v393;
  v396 = *(a1 + v393 + 8);
  v397 = *(a2 + v393 + 8);
  if (v396 == 1)
  {
    if (v397 == 1)
    {
      *v394 = *v395;
      v398 = *(v395 + 1);
      v399 = *(v395 + 2);
      v400 = *(v395 + 4);
      *(v394 + 48) = *(v395 + 3);
      *(v394 + 64) = v400;
      *(v394 + 16) = v398;
      *(v394 + 32) = v399;
    }

    else
    {
      *v394 = *v395;
      *(v394 + 8) = *(v395 + 1);
      *(v394 + 16) = *(v395 + 2);
      *(v394 + 24) = *(v395 + 3);
      *(v394 + 32) = *(v395 + 4);
      *(v394 + 40) = *(v395 + 5);
      *(v394 + 48) = v395[48];
      *(v394 + 56) = *(v395 + 7);
      *(v394 + 64) = *(v395 + 8);
      v404 = *(v395 + 9);
      *(v394 + 72) = v404;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v405 = v404;
    }
  }

  else if (v397 == 1)
  {
    sub_21D0CF7E0(v394, &qword_27CE61980);
    *v394 = *v395;
    v401 = *(v395 + 4);
    v403 = *(v395 + 1);
    v402 = *(v395 + 2);
    *(v394 + 48) = *(v395 + 3);
    *(v394 + 64) = v401;
    *(v394 + 16) = v403;
    *(v394 + 32) = v402;
  }

  else
  {
    *v394 = *v395;
    *(v394 + 8) = *(v395 + 1);
    sub_21DBF8E0C();

    *(v394 + 16) = *(v395 + 2);
    *(v394 + 24) = *(v395 + 3);
    sub_21DBF8E0C();

    *(v394 + 32) = *(v395 + 4);
    *(v394 + 40) = *(v395 + 5);
    sub_21DBF8E0C();

    *(v394 + 48) = v395[48];
    *(v394 + 56) = *(v395 + 7);
    *(v394 + 64) = *(v395 + 8);
    sub_21DBF8E0C();

    v406 = *(v394 + 72);
    v407 = *(v395 + 9);
    *(v394 + 72) = v407;
    v408 = v407;
  }

  *(a1 + a3[36]) = *(a2 + a3[36]);
  sub_21DBF8E0C();

  v409 = a3[37];
  v410 = a1 + v409;
  v411 = a2 + v409;
  v412 = *(a2 + v409 + 40);
  if (*(a1 + v409 + 40) == 255)
  {
    if (v412 == 255)
    {
      v431 = *v411;
      v432 = *(v411 + 1);
      *(v410 + 25) = *(v411 + 25);
      *v410 = v431;
      *(v410 + 16) = v432;
    }

    else
    {
      v424 = *v411;
      v425 = *(v411 + 1);
      v426 = *(v411 + 2);
      v427 = *(v411 + 3);
      v428 = *(v411 + 4);
      sub_21D7A9844(*v411, v425, v426, v427, v428, v411[40]);
      *v410 = v424;
      *(v410 + 8) = v425;
      *(v410 + 16) = v426;
      *(v410 + 24) = v427;
      v361 = a2;
      v362 = a3;
      *(v410 + 32) = v428;
      *(v410 + 40) = v412;
    }
  }

  else if (v412 == 255)
  {
    sub_21D0CF7E0(v410, &qword_27CE61988);
    v429 = *(v411 + 25);
    v430 = *(v411 + 1);
    *v410 = *v411;
    *(v410 + 16) = v430;
    *(v410 + 25) = v429;
  }

  else
  {
    v413 = *v411;
    v414 = *(v411 + 1);
    v415 = *(v411 + 2);
    v416 = *(v411 + 3);
    v417 = *(v411 + 4);
    sub_21D7A9844(*v411, v414, v415, v416, v417, v411[40]);
    v418 = *v410;
    v419 = *(v410 + 8);
    v420 = *(v410 + 16);
    v421 = *(v410 + 24);
    v422 = *(v410 + 32);
    *v410 = v413;
    *(v410 + 8) = v414;
    *(v410 + 16) = v415;
    *(v410 + 24) = v416;
    v361 = a2;
    v362 = a3;
    *(v410 + 32) = v417;
    v423 = *(v410 + 40);
    *(v410 + 40) = v412;
    sub_21D7A98B4(v418, v419, v420, v421, v422, v423);
  }

  v433 = v362[38];
  v434 = a1 + v433;
  v435 = v361 + v433;
  v436 = *(a1 + v433);
  v437 = *(v361 + v433);
  if (!v436)
  {
    if (!v437)
    {
      *v434 = *v435;
      v450 = *(v435 + 16);
      v451 = *(v435 + 32);
      v452 = *(v435 + 48);
      *(v434 + 64) = *(v435 + 64);
      *(v434 + 32) = v451;
      *(v434 + 48) = v452;
      *(v434 + 16) = v450;
      return a1;
    }

    *v434 = v437;
    *(v434 + 8) = *(v435 + 8);
    *(v434 + 16) = *(v435 + 16);
    *(v434 + 24) = *(v435 + 24);
    *(v434 + 32) = *(v435 + 32);
    v443 = *(v435 + 56);
    v444 = v437;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v443 != 1)
    {
LABEL_231:
      *(v434 + 40) = *(v435 + 40);
      if (*(v435 + 56))
      {
LABEL_232:
        *(v434 + 48) = *(v435 + 48);
        *(v434 + 56) = *(v435 + 56);
        v441 = *(v435 + 64);
        *(v434 + 64) = v441;
        sub_21DBF8E0C();
        v442 = v441;
        return a1;
      }

LABEL_247:
      v457 = *(v435 + 48);
      *(v434 + 64) = *(v435 + 64);
      *(v434 + 48) = v457;
      return a1;
    }

LABEL_235:
    v445 = *(v435 + 40);
    *(v434 + 56) = *(v435 + 56);
    *(v434 + 40) = v445;
    return a1;
  }

  if (!v437)
  {
    sub_21D7B1EA4(v434);
    *v434 = *v435;
    v447 = *(v435 + 32);
    v446 = *(v435 + 48);
    v448 = *(v435 + 16);
    *(v434 + 64) = *(v435 + 64);
    *(v434 + 32) = v447;
    *(v434 + 48) = v446;
    *(v434 + 16) = v448;
    return a1;
  }

  *v434 = v437;
  v438 = v437;

  *(v434 + 8) = *(v435 + 8);
  *(v434 + 16) = *(v435 + 16);
  sub_21DBF8E0C();

  *(v434 + 24) = *(v435 + 24);
  *(v434 + 32) = *(v435 + 32);
  sub_21DBF8E0C();

  v439 = *(v434 + 56);
  v440 = *(v435 + 56);
  if (v439 == 1)
  {
    if (v440 != 1)
    {
      goto LABEL_231;
    }

    goto LABEL_235;
  }

  if (v440 == 1)
  {
    sub_21D3A1A28(v434 + 40);
    v449 = *(v435 + 56);
    *(v434 + 40) = *(v435 + 40);
    *(v434 + 56) = v449;
    return a1;
  }

  *(v434 + 40) = *(v435 + 40);
  v453 = *(v435 + 56);
  if (!v439)
  {
    if (v453)
    {
      goto LABEL_232;
    }

    goto LABEL_247;
  }

  if (v453)
  {
    *(v434 + 48) = *(v435 + 48);
    *(v434 + 56) = *(v435 + 56);
    sub_21DBF8E0C();

    v454 = *(v434 + 64);
    v455 = *(v435 + 64);
    *(v434 + 64) = v455;
    v456 = v455;
  }

  else
  {
    sub_21D122250(v434 + 48);
    v459 = *(v435 + 64);
    *(v434 + 48) = *(v435 + 48);
    *(v434 + 64) = v459;
  }

  return a1;
}