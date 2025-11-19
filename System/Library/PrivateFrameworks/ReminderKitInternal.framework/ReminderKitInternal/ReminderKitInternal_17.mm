void sub_230192FBC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v119 = a3;
  v154 = *MEMORY[0x277D85DE8];
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  *&v147[0] = 0;
  v128 = a2;
  v11 = [a2 fetchTemplateWithObjectID:v10 error:v147];
  if (!v11)
  {
    v24 = *&v147[0];
    v25 = sub_23030E808();

    swift_willThrow();
    sub_2301A7D5C();
    swift_allocError();
    *v26 = 10;
    swift_willThrow();
    return;
  }

  v12 = v11;
  v13 = *&v147[0];
  v120 = v12;
  v14 = [v12 objectID];
  v15 = type metadata accessor for REMObjectID_Codable();
  v16 = objc_allocWithZone(v15);
  v17 = v14;
  v18 = [v17 uuid];
  sub_23030EBA8();

  v19 = sub_23030EB88();
  (*(v7 + 8))(v9, v6);
  v20 = [v17 entityName];
  if (!v20)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v20 = sub_23030F8B8();
  }

  v135.receiver = v16;
  v135.super_class = v15;
  v21 = objc_msgSendSuper2(&v135, sel_initWithUUID_entityName_, v19, v20);

  v22 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.TemplateInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300C2F8C(v22, v21, 385, v147);
  if (v3)
  {

    v23 = v120;
    goto LABEL_6;
  }

  v118[1] = 0;
  v27 = v142;

  v144 = v147[6];
  v145 = v147[7];
  v146 = v148;
  v142[2] = v147[2];
  v142[3] = v147[3];
  v142[4] = v147[4];
  v143 = v147[5];
  v142[0] = v147[0];
  v142[1] = v147[1];
  sub_23019E830(v142, v136);
  if (qword_280C9B460 != -1)
  {
    goto LABEL_94;
  }

LABEL_9:
  v28 = sub_23030EF48();
  __swift_project_value_buffer(v28, qword_280C989C8);
  v29 = v17;
  sub_23019E830(v142, v136);
  v30 = sub_23030EF38();
  v31 = sub_2303102A8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2048;
    *(v32 + 14) = *(*(&v142[0] + 1) + 16);
    v34 = v29;
    sub_23019E88C(v142);
    _os_log_impl(&dword_230044000, v30, v31, "DATAVIEW RESULT {name: REMRemindersListDataView_TemplateInvocation, templateObjectID: %@, reminder.count: %ld}", v32, 0x16u);
    sub_230061918(v33, &qword_27DB15000);
    MEMORY[0x231914180](v33, -1, -1);
    MEMORY[0x231914180](v32, -1, -1);

    v30 = v21;
    v21 = v34;
  }

  else
  {

    sub_23019E88C(v142);
  }

  v35 = *(&v143 + 1);
  v37 = *(&v144 + 1);
  v36 = v144;
  v39 = v145;
  v38 = v146;
  v40 = v146;

  sub_230061918(v142, &qword_27DB164C0);
  v41 = *(v27 + 48);
  v136[2] = *(v27 + 32);
  v136[3] = v41;
  v136[4] = *(v27 + 64);
  v42 = *(v27 + 16);
  v136[0] = *v27;
  v136[1] = v42;
  v137 = v143;
  v138 = v35;
  v139 = __PAIR128__(v37, v36);
  v140 = v39;
  v141 = v38;
  v21 = *(&v136[0] + 1);
  v27 = MEMORY[0x277D84FA0];
  v134 = MEMORY[0x277D84FA0];
  v123 = *(*(&v136[0] + 1) + 16);
  if (!v123)
  {
    v43 = v128;
LABEL_54:
    v125 = v27;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_230310698();
      sub_23004CBA4(0, &qword_280C9C478);
      sub_23004CD24();
      sub_23030FF88();
      v27 = v149;
      v77 = v150;
      v78 = v151;
      v79 = v152;
      v21 = v153;
    }

    else
    {
      v80 = -1 << *(v27 + 32);
      v77 = (v27 + 56);
      v81 = ~v80;
      v82 = -v80;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v21 = (v83 & *(v27 + 56));

      v78 = v81;
      v79 = 0;
    }

    v124 = v78;
    v84 = ((v78 + 64) >> 6);
    v85 = MEMORY[0x277D84F98];
    v126 = v84;
    v127 = v27;
    v129 = v77;
    while (1)
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        v91 = sub_230310718();
        if (!v91 || (v133 = v91, sub_23004CBA4(0, &qword_280C9C478), swift_dynamicCast(), v90 = v134, v17 = v79, v130 = v21, !v134))
        {
LABEL_85:
          sub_230060014();

          v114 = *&v136[0];
          sub_230061918(v136, &qword_27DB164C8);
          v115 = v119;
          *v119 = v120;
          v115[1] = v114;
          v115[2] = v85;
          return;
        }
      }

      else
      {
        v88 = v79;
        v89 = v21;
        v17 = v79;
        if (!v21)
        {
          while (1)
          {
            v17 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
              break;
            }

            if (v17 >= v84)
            {
              goto LABEL_85;
            }

            v89 = *(v77 + v17);
            ++v88;
            if (v89)
            {
              goto LABEL_68;
            }
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          swift_once();
          goto LABEL_9;
        }

LABEL_68:
        v130 = (v89 - 1) & v89;
        v90 = *(*(v27 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v89)))));
        if (!v90)
        {
          goto LABEL_85;
        }
      }

      v92 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
      v93 = v90;
      v94 = v92;
      v134 = 0;
      v131 = v93;
      v95 = [v43 fetchReminderWithObjectID_fetchOptions_error_];

      v66 = v134;
      if (!v95)
      {
        goto LABEL_86;
      }

      v96 = v134;
      v97 = [v95 titleAsString];
      if (!v97)
      {
        sub_2301A7D5C();
        swift_allocError();
        *v117 = 18;
        swift_willThrow();

        goto LABEL_88;
      }

      v98 = v97;
      v99 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v21 = v100;

      v101 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v101;
      v104 = sub_23005EE00(v99, v21);
      v105 = v101[2];
      v106 = (v103 & 1) == 0;
      v107 = v105 + v106;
      if (__OFADD__(v105, v106))
      {
        goto LABEL_92;
      }

      v27 = v103;
      if (v101[3] >= v107)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v85 = v134;
          if (v103)
          {
            goto LABEL_61;
          }
        }

        else
        {
          sub_23008B1B0();
          v85 = v134;
          if (v27)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        sub_230086A64(v107, isUniquelyReferenced_nonNull_native);
        v108 = sub_23005EE00(v99, v21);
        if ((v27 & 1) != (v109 & 1))
        {
          sub_2303112A8();
          __break(1u);
          return;
        }

        v104 = v108;
        v85 = v134;
        if (v27)
        {
LABEL_61:
          v86 = v85[7];
          v87 = *(v86 + 8 * v104);
          *(v86 + 8 * v104) = v95;

          goto LABEL_62;
        }
      }

      v85[(v104 >> 6) + 8] |= 1 << v104;
      v110 = (v85[6] + 16 * v104);
      *v110 = v99;
      v110[1] = v21;
      *(v85[7] + 8 * v104) = v95;
      v111 = v85[2];
      v112 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v112)
      {
        goto LABEL_93;
      }

      v85[2] = v113;
      v87 = v131;
LABEL_62:

      v79 = v17;
      v77 = v129;
      v21 = v130;
      v27 = v127;
      v43 = v128;
      v84 = v126;
    }
  }

  v17 = 0;
  v121 = *(&v136[0] + 1);
  v122 = *(&v136[0] + 1) + 32;
  v27 = 0x277D44700uLL;
  v43 = v128;
  while (1)
  {
    if (v17 >= v21[2].isa)
    {
      goto LABEL_91;
    }

    v44 = v122 + 32 * v17;
    v45 = *v44;
    v46 = *(v44 + 24);
    swift_bridgeObjectRetain_n();
    v47 = v45;
    sub_2300A96E4(&v133, v47);

    v48 = v46;
    v49 = v46 ? v46 : MEMORY[0x277D84F90];
    v50 = *(v49 + 16);
    if (v50)
    {
      break;
    }

LABEL_15:
    if (++v17 == v123)
    {
      v27 = v134;
      goto LABEL_54;
    }
  }

  v124 = v48;
  v125 = v49;
  v126 = v47;
  v127 = v17;
  v51 = 0;
  v129 = v50;
  v130 = v49 + 32;
  while (1)
  {
    v21 = *(v130 + 32 * v51);
    v131 = v51 + 1;
    v17 = v134;
    if ((v134 & 0xC000000000000001) != 0)
    {
      break;
    }

    sub_23004CBA4(0, &qword_280C9C478);
    v56 = v21;
    v57 = sub_230310438();
    v58 = -1 << *(v17 + 32);
    v59 = v57 & ~v58;
    if ((*(v17 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
    {
      v60 = ~v58;
      while (1)
      {
        v61 = *(*(v17 + 48) + 8 * v59);
        v62 = sub_230310448();

        if (v62)
        {
          break;
        }

        v59 = (v59 + 1) & v60;
        if (((*(v17 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
        {
          v17 = v134;
          goto LABEL_22;
        }
      }

      v50 = v129;
      v51 = v131;
      v27 = 0x277D44700uLL;
      if (v131 == v129)
      {
LABEL_14:

        v17 = v127;
        v43 = v128;
        v21 = v121;
        goto LABEL_15;
      }
    }

    else
    {
LABEL_22:
      v27 = 0x277D44700uLL;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v17;
      sub_2300ABEB8(v56, v59, v52);
      v134 = v133;
      v50 = v129;
LABEL_23:
      v51 = v131;
      if (v131 == v50)
      {
        goto LABEL_14;
      }
    }
  }

  if (v134 < 0)
  {
    v53 = v134;
  }

  else
  {
    v53 = v134 & 0xFFFFFFFFFFFFFF8;
  }

  v54 = v21;

  v55 = sub_2303106E8();

  if (v55)
  {

    v132 = v55;
    sub_23004CBA4(0, &qword_280C9C478);
    swift_dynamicCast();

    goto LABEL_23;
  }

  v63 = sub_2303106D8();
  if (__OFADD__(v63, 1))
  {
    __break(1u);
    goto LABEL_90;
  }

  v64 = sub_230104890(v53, v63 + 1);
  v133 = v64;
  v65 = *(v64 + 2);
  if (*(v64 + 3) <= v65)
  {
    sub_2300AAB50(v65 + 1);
    v64 = v133;
  }

  v66 = v54;
  v67 = sub_230310438();
  v68 = v64 + 56;
  v69 = -1 << v64[32];
  v70 = v67 & ~v69;
  v71 = v70 >> 6;
  if (((-1 << v70) & ~*&v64[8 * (v70 >> 6) + 56]) != 0)
  {
    v72 = __clz(__rbit64((-1 << v70) & ~*&v64[8 * (v70 >> 6) + 56])) | v70 & 0x7FFFFFFFFFFFFFC0;
LABEL_50:
    *&v68[(v72 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v72;
    *(*(v64 + 6) + 8 * v72) = v66;
    ++*(v64 + 2);

    v134 = v64;
    goto LABEL_23;
  }

  v73 = 0;
  v74 = (63 - v69) >> 6;
  while (++v71 != v74 || (v73 & 1) == 0)
  {
    v75 = v71 == v74;
    if (v71 == v74)
    {
      v71 = 0;
    }

    v73 |= v75;
    v76 = *&v68[8 * v71];
    if (v76 != -1)
    {
      v72 = __clz(__rbit64(~v76)) + (v71 << 6);
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_86:
  v116 = v66;
  sub_23030E808();

  swift_willThrow();
  v95 = v120;
LABEL_88:

  sub_230061918(v136, &qword_27DB164C8);
  sub_230060014();

  v23 = v131;
LABEL_6:
}

void sub_230193D18(unint64_t a1, uint64_t *a2, id a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v22[0] = 0;
  v6 = [a3 fetchTemplateWithObjectID:v5 error:v22];
  if (v6)
  {
    v7 = v6;
    v8 = v22[0];
    v9 = [v7 sectionContext];
    if (v9)
    {
      v10 = v9;
      v22[0] = 0;
      v11 = [a3 fetchTemplateSectionsForTemplateSectionContext:v9 error:v22];
      v12 = v22[0];
      if (v11)
      {
        v13 = v11;
        sub_23004CBA4(0, &qword_27DB165E0);
        v14 = sub_23030FCD8();
        v15 = v12;

        sub_230187AF0(v14, a1);

        return;
      }

      v19 = v22[0];
      v20 = sub_23030E808();

      swift_willThrow();
    }

    sub_2301A7D5C();
    swift_allocError();
    *v21 = 11;
    swift_willThrow();
  }

  else
  {
    v16 = v22[0];
    v17 = sub_23030E808();

    swift_willThrow();
    sub_2301A7D5C();
    swift_allocError();
    *v18 = 10;
    swift_willThrow();
  }
}

void sub_230193F34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v271 = a4;
  v249 = a3;
  v280 = *MEMORY[0x277D85DE8];
  v276 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  v248 = *(v276 - 1);
  MEMORY[0x28223BE20](v276);
  v253 = (&v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v7 - 8);
  v238 = &v233 - v8;
  v240 = sub_23030EBB8();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v234 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert(0);
  v247 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v277 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag(0);
  v12 = *(v11 - 8);
  v260 = v11;
  v261 = v12;
  MEMORY[0x28223BE20](v11);
  v272 = (&v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment(0);
  v263 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v264 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment(0);
  v17 = *(v16 - 8);
  v265 = v16;
  v266 = v17;
  MEMORY[0x28223BE20](v16);
  v270 = (&v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment(0);
  v20 = *(v19 - 8);
  v274 = v19;
  v275 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v246 = &v233 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v267 = (&v233 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v233 - v28;
  v269 = sub_23030EB58();
  v273 = *(v269 - 8);
  v30 = MEMORY[0x28223BE20](v269);
  v244 = &v233 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v259 = &v233 - v33;
  MEMORY[0x28223BE20](v32);
  v258 = &v233 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v237 = &v233 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v233 - v38;
  v251 = sub_23030E758();
  v250 = *(v251 - 8);
  v40 = MEMORY[0x28223BE20](v251);
  v233 = &v233 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v233 - v42;
  if (*(a2 + 24))
  {
    v44 = sub_23030F8B8();
    [a1 setNotesAsString_];
  }

  v278 = a1;
  v45 = v276;
  sub_230055F74(a2 + v276[6], v39, &qword_27DB15C28);
  v46 = v250;
  v47 = *(v250 + 48);
  v48 = v251;
  v236 = v250 + 48;
  v235 = v47;
  if (v47(v39, 1, v251) == 1)
  {
    sub_230061918(v39, &qword_27DB15C28);
    v49 = v278;
  }

  else
  {
    (*(v46 + 32))(v43, v39, v48);
    v50 = *(a2 + v45[7]);
    v51 = sub_23030E668();
    v52 = &selRef_setDueDateComponents_;
    if (!v50)
    {
      v52 = &selRef_setDueDateComponentsWithAlarmsIfNeeded_;
    }

    v53 = v48;
    v49 = v278;
    [v278 *v52];

    (*(v46 + 8))(v43, v53);
  }

  [v49 setCompleted_];
  sub_230055F74(a2 + v45[9], v29, &unk_27DB15AA0);
  v54 = v273;
  v55 = v273 + 48;
  v56 = v269;
  v268 = *(v273 + 48);
  v57 = a2;
  if (v268(v29, 1, v269) == 1)
  {
    sub_230061918(v29, &unk_27DB15AA0);
  }

  else
  {
    v58 = v258;
    (*(v54 + 32))(v258, v29, v56);
    v59 = sub_23030EAA8();
    [v49 setCompletionDate_];

    v54 = v273;
    (*(v273 + 8))(v58, v56);
  }

  v60 = v56;
  v61 = v267;
  sub_230055F74(v57 + v45[10], v267, &unk_27DB15AA0);
  if (v268(v61, 1, v60) == 1)
  {
    sub_230061918(v61, &unk_27DB15AA0);
  }

  else
  {
    v62 = v259;
    (*(v54 + 32))(v259, v61, v60);
    v63 = sub_23030EAA8();
    [v49 setCreationDate_];

    (*(v273 + 8))(v62, v60);
  }

  if (*(v57 + v45[11]) == 1)
  {
    v64 = [v49 flaggedContext];
    if (!v64)
    {
      sub_2301A7D5C();
      swift_allocError();
      v102 = 7;
      goto LABEL_103;
    }

    v65 = v64;
    [v64 setFlagged_];
  }

  if (*(v57 + v45[12]))
  {
    [v49 setPriority_];
  }

  v245 = v55;
  if (*(v57 + v45[13]))
  {
    [v49 setContactHandles_];
  }

  v66 = (v57 + v45[14]);
  v67 = v66[1];
  v267 = v57;
  if (v67)
  {
    v68 = *v66;
    v69 = v66[2];
    v70 = v66[3];
    v71 = [v49 assignmentContext];
    if (v71)
    {
      v72 = v71;
      v73 = [v49 listChangeItem];
      if (v73)
      {
        v74 = v73;
        v75 = sub_230195F1C(v68, v67);

        if (v75)
        {
          v76 = [v278 listChangeItem];
          if (v76)
          {
            v77 = v76;
            v78 = sub_230195F1C(v69, v70);

            if (v78)
            {
              v79 = [v72 addAssignmentWithAssignee:v75 originator:v78 status:1];

              v57 = v267;
              v45 = v276;
              goto LABEL_28;
            }
          }
        }
      }
    }

    sub_2301A7D5C();
    swift_allocError();
    v102 = 6;
LABEL_103:
    *v101 = v102;
    swift_willThrow();
    return;
  }

LABEL_28:
  v80 = *(v57 + v45[15]);
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = 0;
    while (1)
    {
      if (v82 >= *(v80 + 16))
      {
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
      }

      sub_23019EB08(v80 + ((*(v275 + 80) + 32) & ~*(v275 + 80)) + v275[9] * v82, v22, type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment);
      v83 = [v278 attachmentContext];
      if (!v83)
      {
        sub_2301A7D5C();
        swift_allocError();
        *v176 = 3;
        swift_willThrow();
        goto LABEL_106;
      }

      v84 = v83;
      v85 = sub_23030E8D8();
      if ((*&v22[*(v274 + 20)] & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      if ((*&v22[*(v274 + 24)] & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }

      v86 = v85;
      v279 = 0;
      v87 = [v84 addImageAttachmentWithURL:v85 width:? height:? error:?];

      if (!v87)
      {
        break;
      }

      ++v82;
      v88 = v279;

      sub_23019ECCC(v22, type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment);
      if (v81 == v82)
      {
        goto LABEL_36;
      }
    }

    v177 = v279;
    sub_23030E808();

    swift_willThrow();
LABEL_106:
    v178 = type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment;
    v179 = v22;
    goto LABEL_137;
  }

LABEL_36:
  v89 = *(v267 + v276[16]);
  v90 = *(v89 + 16);
  v91 = v270;
  if (v90)
  {
    v92 = 0;
    while (1)
    {
      if (v92 >= *(v89 + 16))
      {
        goto LABEL_143;
      }

      sub_23019EB08(v89 + ((v266[80] + 32) & ~v266[80]) + *(v266 + 9) * v92, v91, type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment);
      v93 = [v278 attachmentContext];
      if (!v93)
      {
        sub_2301A7D5C();
        swift_allocError();
        *v180 = 3;
        swift_willThrow();
        v181 = type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment;
        goto LABEL_136;
      }

      v94 = v93;
      v95 = sub_23030E8D8();
      if ((*(v91 + *(v265 + 20)) & 0x8000000000000000) != 0)
      {
        goto LABEL_144;
      }

      if ((*(v91 + *(v265 + 24)) & 0x8000000000000000) != 0)
      {
        goto LABEL_145;
      }

      v96 = v95;
      v279 = 0;
      v97 = [v94 addImageAttachmentWithURL:v95 width:? height:? error:?];

      if (!v97)
      {
        break;
      }

      v98 = v279;
      v99 = [v97 remObjectID];
      v100 = v271;
      MEMORY[0x231911A30]();
      if (*((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v275 = *((*v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_23030FD18();
      }

      ++v92;
      sub_23030FD68();

      v91 = v270;
      sub_23019ECCC(v270, type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment);
      if (v90 == v92)
      {
        goto LABEL_48;
      }
    }

    v182 = v279;
    sub_23030E808();

    swift_willThrow();
    v178 = type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment;
    v179 = v270;
    goto LABEL_137;
  }

LABEL_48:
  v103 = *(v267 + v276[17]);
  v104 = *(v103 + 16);
  v105 = v278;
  v106 = v264;
  if (v104)
  {
    v107 = 0;
    while (1)
    {
      if (v107 >= *(v103 + 16))
      {
        goto LABEL_146;
      }

      sub_23019EB08(v103 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + v263[9] * v107, v106, type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment);
      v108 = [v105 attachmentContext];
      if (!v108)
      {
        break;
      }

      v109 = v108;
      ++v107;
      v110 = sub_23030E8D8();
      v111 = [v109 addURLAttachmentWithURL_];

      v106 = v264;
      sub_23019ECCC(v106, type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment);
      if (v104 == v107)
      {
        goto LABEL_53;
      }
    }

    sub_2301A7D5C();
    swift_allocError();
    *v183 = 3;
    swift_willThrow();
    v178 = type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment;
    v179 = v106;
    goto LABEL_137;
  }

LABEL_53:
  v112 = *(v267 + v276[18]);
  v113 = *(v112 + 16);
  v91 = v272;
  if (v113)
  {
    v114 = 0;
    while (1)
    {
      if (v114 >= *(v112 + 16))
      {
        goto LABEL_148;
      }

      sub_23019EB08(v112 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v114, v91, type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag);
      v115 = [v278 hashtagContext];
      if (!v115)
      {
        break;
      }

      v116 = v115;
      ++v114;
      v117 = v91[2];
      v118 = sub_23030F8B8();
      v119 = sub_23030EAA8();
      v120 = [v116 addHashtagWithType:v117 name:v118 creationDate:v119];

      v91 = v272;
      sub_23019ECCC(v91, type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag);
      if (v113 == v114)
      {
        goto LABEL_58;
      }
    }

    sub_2301A7D5C();
    swift_allocError();
    *v184 = 14;
    swift_willThrow();
    v181 = type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag;
LABEL_136:
    v178 = v181;
    v179 = v91;
    goto LABEL_137;
  }

LABEL_58:
  v121 = v276;
  v122 = v267;
  v123 = *(v267 + v276[19]);
  v124 = v278;
  if (v123)
  {
    v125 = objc_allocWithZone(MEMORY[0x277D44570]);
    v126 = v123;
    v127 = [v125 initWithTrigger_];
    [v124 addAlarm_];
  }

  v128 = *(v122 + v121[20]);
  if (v128)
  {
    v129 = objc_allocWithZone(MEMORY[0x277D44570]);
    v130 = v128;
    v131 = [v129 initWithTrigger_];
    [v124 addAlarm_];
  }

  v132 = *(v122 + v121[21]);
  if (v132)
  {
    v133 = objc_allocWithZone(MEMORY[0x277D44570]);
    v134 = v132;
    v135 = [v133 initWithTrigger_];
    [v124 addAlarm_];
  }

  v136 = *(v122 + v121[22]);
  v243 = *(v136 + 16);
  if (v243)
  {
    v137 = 0;
    v241 = v136 + 32;
    v242 = v136;
    while (1)
    {
      if (v137 >= *(v136 + 16))
      {
        goto LABEL_147;
      }

      v266 = v137;
      v148 = (v241 + 80 * v137);
      v149 = *v148;
      v260 = v148[1];
      v261 = v149;
      v150 = v148[2];
      v259 = v148[3];
      v152 = v148[4];
      v151 = v148[5];
      v154 = v148[6];
      v153 = v148[7];
      v155 = v148[8];
      v275 = v148[9];
      v263 = v150;
      if (v152)
      {
        sub_23004CBA4(0, &qword_27DB16610);
        v156 = v150;
        swift_bridgeObjectRetain_n();

        v258 = sub_23030FCC8();
      }

      else
      {

        v157 = v150;

        v258 = 0;
      }

      v274 = v155;
      v272 = v153;
      v270 = v154;
      v264 = v152;
      v265 = v151;
      if (v151)
      {
        v158 = v151;
        v159 = *(v151 + 16);
        if (v159)
        {
          v279 = MEMORY[0x277D84F90];
          sub_2303109B8();
          v160 = (v158 + 32);
          do
          {
            v161 = *v160++;
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_230310988();
            sub_2303109C8();
            sub_2303109D8();
            sub_230310998();
            --v159;
          }

          while (v159);
          v155 = v274;
          v153 = v272;
          v154 = v270;
        }

        sub_23004CBA4(0, &qword_27DB17080);
        v257 = sub_23030FCC8();

        if (!v154)
        {
LABEL_78:
          v256 = 0;
          if (!v153)
          {
            goto LABEL_79;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v257 = 0;
        if (!v154)
        {
          goto LABEL_78;
        }
      }

      v164 = v154[2];
      if (v164)
      {
        v279 = MEMORY[0x277D84F90];
        sub_2303109B8();
        v165 = (v154 + 4);
        do
        {
          v166 = *v165++;
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_230310988();
          sub_2303109C8();
          sub_2303109D8();
          sub_230310998();
          v164 = (v164 - 1);
        }

        while (v164);
        v155 = v274;
        v153 = v272;
      }

      sub_23004CBA4(0, &qword_27DB17080);
      v256 = sub_23030FCC8();

      if (!v153)
      {
LABEL_79:
        v255 = 0;
        if (!v155)
        {
          goto LABEL_80;
        }

        goto LABEL_92;
      }

LABEL_88:
      v167 = v153[2];
      if (v167)
      {
        v279 = MEMORY[0x277D84F90];
        sub_2303109B8();
        v168 = (v153 + 4);
        do
        {
          v169 = *v168++;
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_230310988();
          sub_2303109C8();
          sub_2303109D8();
          sub_230310998();
          v167 = (v167 - 1);
        }

        while (v167);
      }

      sub_23004CBA4(0, &qword_27DB17080);
      v255 = sub_23030FCC8();

      if (!v155)
      {
LABEL_80:
        v162 = 0;
        v163 = v275;
        if (v275)
        {
          goto LABEL_96;
        }

        goto LABEL_66;
      }

LABEL_92:
      v170 = *(v155 + 16);
      if (v170)
      {
        v279 = MEMORY[0x277D84F90];
        sub_2303109B8();
        v171 = (v155 + 32);
        do
        {
          v172 = *v171++;
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_230310988();
          sub_2303109C8();
          sub_2303109D8();
          sub_230310998();
          --v170;
        }

        while (v170);
      }

      v163 = v275;
      sub_23004CBA4(0, &qword_27DB17080);
      v162 = sub_23030FCC8();

      if (v163)
      {
LABEL_96:
        v173 = v163[2];
        if (v173)
        {
          v279 = MEMORY[0x277D84F90];
          sub_2303109B8();
          v174 = v163 + 4;
          do
          {
            v175 = *v174++;
            [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_230310988();
            sub_2303109C8();
            sub_2303109D8();
            sub_230310998();
            --v173;
          }

          while (v173);
        }

        sub_23004CBA4(0, &qword_27DB17080);
        v138 = sub_23030FCC8();

        goto LABEL_67;
      }

LABEL_66:
      v138 = 0;
LABEL_67:
      v254 = v138;
      v139 = v266 + 1;
      v140 = v263;
      v232 = v138;
      v231 = v162;
      v141 = v255;
      v142 = v258;
      v266 = v162;
      v143 = v257;
      v144 = v256;
      v145 = [v278 addRecurrenceRuleWithFrequency:v261 interval:v260 firstDayOfTheWeek:v259 daysOfTheWeek:v258 daysOfTheMonth:v257 monthsOfTheYear:v256 weeksOfTheYear:v255 daysOfTheYear:v231 setPositions:v232 end:v263];

      v137 = v139;

      v146 = v139 == v243;
      v122 = v267;
      v121 = v276;
      v147 = v277;
      v136 = v242;
      if (v146)
      {
        goto LABEL_112;
      }
    }
  }

  v147 = v277;
LABEL_112:
  v185 = *(v122 + v121[23]);
  v274 = v185[2];
  if (v274)
  {
    v186 = 0;
    v270 = (v273 + 32);
    v266 = (v273 + 8);
    v187 = *MEMORY[0x277D44CC8];
    v272 = v185;
    v273 = v187;
    v188 = &unk_27DB15AA0;
    while (1)
    {
      if (v186 >= v185[2])
      {
        goto LABEL_150;
      }

      sub_23019EB08(v185 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v186, v147, type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert);
      v189 = [v278 dueDateDeltaAlertContext];
      if (!v189)
      {
        break;
      }

      v190 = v189;
      v191 = *v147;
      v192 = v252;
      v193 = sub_23030EAA8();
      v194 = [v190 addDueDateDeltaAlertWithDueDateDelta:v191 identifier:0 creationDate:v193];

      v147 = v277;
      v275 = v194;
      v195 = [v190 updateDueDateDeltaAlert_];
      v196 = *(v192 + 24);
      v197 = v246;
      sub_230055F74(v147 + v196, v246, v188);
      v198 = v188;
      v199 = v269;
      if (v268(v197, 1, v269) == 1)
      {
        sub_230061918(v197, v198);
      }

      else
      {
        v200 = v244;
        (*v270)(v244, v197, v199);
        v201 = sub_23030EAA8();

        v147 = v277;
        v202 = v200;
        v185 = v272;
        (*v266)(v202, v199);
      }

      v188 = v198;
      v203 = v275;
      if (v273 < *(v147 + *(v252 + 28)))
      {
        v204 = [v195 _setMinimumSupportedAppVersion_];

        v190 = v203;
        v203 = v195;
        v195 = v204;
        v147 = v277;
      }

      ++v186;

      sub_23019ECCC(v147, type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert);
      v91 = v253;
      if (v274 == v186)
      {
        goto LABEL_123;
      }
    }

    sub_2301A7D5C();
    swift_allocError();
    *v230 = 15;
    swift_willThrow();
    v178 = type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert;
    v179 = v147;
LABEL_137:
    sub_23019ECCC(v179, v178);
    return;
  }

  v91 = v253;
LABEL_123:
  v205 = v276;
  v206 = v267;
  v207 = v237;
  sub_230055F74(v267 + v276[24], v237, &qword_27DB15C28);
  v208 = v251;
  if (v235(v207, 1, v251) == 1)
  {
    sub_230061918(v207, &qword_27DB15C28);
    v209 = v278;
  }

  else
  {
    v210 = v250;
    v211 = v233;
    (*(v250 + 32))(v233, v207, v208);
    v212 = sub_23030E668();
    v209 = v278;
    [v278 setAlternativeDisplayDateDateForCalendarWithDateComponents_];

    (*(v210 + 8))(v211, v208);
  }

  v213 = v240;
  v214 = v239;
  v215 = v238;
  sub_230055F74(v206 + v205[25], v238, &qword_27DB14800);
  if ((*(v214 + 48))(v215, 1, v213) == 1)
  {
    sub_230061918(v215, &qword_27DB14800);
  }

  else
  {
    v216 = v234;
    (*(v214 + 32))(v234, v215, v213);
    v217 = sub_23030EB88();
    [v209 setBatchCreationID_];

    (*(v214 + 8))(v216, v213);
  }

  v218 = *v206;
  v219 = v206[1];

  sub_2301FE8A8([v209 objectID], v218, v219);
  v220 = *(v206 + v205[26]);
  v221 = *(v220 + 16);
  if (v221)
  {
    while (1)
    {
      if (v221 > *(v220 + 16))
      {
        goto LABEL_149;
      }

      --v221;
      sub_23019EB08(v220 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v221, v91, type metadata accessor for REMTestStorePopulator.TestReminder);
      v222 = v278;
      v223 = [v278 subtaskContext];
      if (!v223)
      {
        sub_2301A7D5C();
        swift_allocError();
        *v229 = 2;
        swift_willThrow();
        v181 = type metadata accessor for REMTestStorePopulator.TestReminder;
        goto LABEL_136;
      }

      v224 = v223;
      v225 = [v222 saveRequest];
      v226 = sub_23030F8B8();
      v227 = [v225 addReminderWithTitle:v226 toReminderSubtaskContextChangeItem:v224];

      v91 = v253;
      v228 = v262;
      sub_230193F34(v227, v253, v249, v271);
      v262 = v228;
      if (v228)
      {
        break;
      }

      sub_23019ECCC(v91, type metadata accessor for REMTestStorePopulator.TestReminder);

      if (!v221)
      {
        return;
      }
    }

    sub_23019ECCC(v91, type metadata accessor for REMTestStorePopulator.TestReminder);
  }
}

void *sub_230195F1C(uint64_t a1, uint64_t a2)
{
  v4 = [v2 accountCapabilities];
  v5 = [v4 supportsListSharees];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D446C0]) initWithListChangeItem_];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 sharees];
      sub_23004CBA4(0, &qword_27DB16618);
      v9 = sub_23030FCD8();

      v28 = v7;
      if (v9 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2303106D8())
      {
        v11 = 0;
        v29 = i;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x231912650](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          v15 = [v12 firstName];
          if (v15)
          {
            v16 = v15;
            v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v19 = v18;
          }

          else
          {
            v17 = 0;
            v19 = 0xE000000000000000;
          }

          MEMORY[0x231911790](32, 0xE100000000000000);

          v20 = v17;
          v21 = [v13 lastName];
          if (v21)
          {
            v22 = v21;
            v23 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v25 = v24;
          }

          else
          {
            v23 = 0;
            v25 = 0xE000000000000000;
          }

          MEMORY[0x231911790](v23, v25);

          if (v20 == a1 && v19 == a2)
          {

            return v13;
          }

          v26 = sub_230311048();

          if (v26)
          {

            return v13;
          }

          ++v11;
          if (v14 == v29)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:
    }
  }

  return 0;
}

uint64_t REMTestStorePopulator.deinit()
{

  return v0;
}

uint64_t REMTestStorePopulator.__deallocating_deinit()
{
  REMTestStorePopulator.deinit();

  return swift_deallocClassInstance();
}

double static REMTestStorePopulator.TestAccountBuilder.buildExpression(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a2;
  v5 = a1;
  v6 = a4;
  v7 = *(a3 + 16);
  if (v7)
  {
    v9 = MEMORY[0x277D84F90];
    v38 = MEMORY[0x277D84F90];

    sub_23009EE0C(0, v7, 0);
    v10 = v38;
    v11 = v7 - 1;
    for (i = (a3 + 40); ; i += 2)
    {
      v13 = *(i - 1);
      v14 = *i;
      v38 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);

      if (v16 >= v15 >> 1)
      {
        sub_23009EE0C((v15 > 1), v16 + 1, 1);
        v10 = v38;
      }

      *&v31 = v13;
      *(&v31 + 1) = v14;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      *&v35 = 0;
      BYTE8(v35) = 1;
      *&v36 = v9;
      *(&v36 + 1) = v9;
      LOWORD(v37[0]) = 0;
      BYTE2(v37[0]) = 0;
      *(&v37[0] + 1) = 0;
      *&v37[1] = 0;
      BYTE8(v37[1]) = 0;
      sub_230072250(&v31);
      *(v10 + 16) = v16 + 1;
      v17 = (v10 + (v16 << 7));
      v18 = v31;
      v19 = v32;
      v20 = v34;
      v17[4] = v33;
      v17[5] = v20;
      v17[2] = v18;
      v17[3] = v19;
      v21 = v35;
      v22 = v36;
      v23 = v37[0];
      *(v17 + 137) = *(v37 + 9);
      v17[7] = v22;
      v17[8] = v23;
      v17[6] = v21;
      if (!v11)
      {
        break;
      }

      --v11;
    }

    v4 = a2;
    v6 = a4;
    v5 = a1;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *&v31 = v5;
  *(&v31 + 1) = v4;
  *&v32 = v10;
  sub_23019EA28(&v31);
  v24 = v36;
  v6[4] = v35;
  v6[5] = v24;
  v6[6] = v37[0];
  *(v6 + 105) = *(v37 + 9);
  v25 = v32;
  *v6 = v31;
  v6[1] = v25;
  result = *&v33;
  v27 = v34;
  v6[2] = v33;
  v6[3] = v27;
  return result;
}

uint64_t static REMTestStorePopulator.TestStoreBuilder.buildExpression(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v6;
}

uint64_t sub_230196530@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  *&v9 = *a1;
  *(&v9 + 1) = v3;
  *&v10 = v4;
  sub_23019EA28(&v9);
  v5 = v14;
  a2[4] = v13;
  a2[5] = v5;
  a2[6] = v15[0];
  *(a2 + 105) = *(v15 + 9);
  v6 = v10;
  *a2 = v9;
  a2[1] = v6;
  v7 = v12;
  a2[2] = v11;
  a2[3] = v7;
}

uint64_t sub_2301965CC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *&v11 = *a1;
  *(&v11 + 1) = v3;
  *&v12 = v4;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = v6;
  sub_23019EA94(&v11);
  v7 = v16;
  a2[4] = v15;
  a2[5] = v7;
  a2[6] = v17[0];
  *(a2 + 105) = *(v17 + 9);
  v8 = v12;
  *a2 = v11;
  a2[1] = v8;
  v9 = v14;
  a2[2] = v13;
  a2[3] = v9;
}

uint64_t REMTestStorePopulator.TestList.init(_:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 72) = 1;
  *(a4 + 88) = MEMORY[0x277D84F90];
  *(a4 + 96) = 0;
  *(a4 + 98) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = a3();
  *(a4 + 80) = result;
  return result;
}

uint64_t sub_2301966D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *)@<X2>, _OWORD *a4@<X8>)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  *&v13 = 0;
  BYTE8(v13) = 1;
  *&v14 = MEMORY[0x277D84F90];
  *(&v14 + 1) = MEMORY[0x277D84F90];
  LOWORD(v15[0]) = 0;
  BYTE2(v15[0]) = 0;
  memset(v15 + 8, 0, 17);
  a3(&v9);
  v5 = v14;
  a4[4] = v13;
  a4[5] = v5;
  a4[6] = v15[0];
  *(a4 + 105) = *(v15 + 9);
  v6 = v10;
  *a4 = v9;
  a4[1] = v6;
  v7 = v12;
  a4[2] = v11;
  a4[3] = v7;
}

uint64_t sub_230196790@<X0>(_OWORD *a1@<X0>, void (*a2)(__int128 *)@<X1>, _OWORD *a3@<X8>)
{
  v4 = a1[5];
  v16 = a1[4];
  v17 = v4;
  v18[0] = a1[6];
  v5 = v18[0];
  *(v18 + 9) = *(a1 + 105);
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  *(v25 + 9) = *(v18 + 9);
  v24 = v4;
  v25[0] = v5;
  v22 = v7;
  v23 = v16;
  v20 = v6;
  v21 = v14;
  v19 = v13[0];
  a2(&v19);
  v8 = v24;
  a3[4] = v23;
  a3[5] = v8;
  a3[6] = v25[0];
  *(a3 + 105) = *(v25 + 9);
  v9 = v20;
  *a3 = v19;
  a3[1] = v9;
  v10 = v22;
  a3[2] = v21;
  a3[3] = v10;
  return sub_2301964F4(v13, &v12);
}

uint64_t sub_230196858@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v5;
  v15 = *(a1 + 80);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v4;
  v19 = v13;
  v20 = v5;
  v17 = v6;
  v18 = v4;
  *&v21 = v15;
  v16 = v12[0];
  a2(&v16);
  v7 = v21;
  a3[4] = v20;
  a3[5] = v7;
  a3[6] = v22[0];
  *(a3 + 105) = *(v22 + 9);
  v8 = v17;
  *a3 = v16;
  a3[1] = v8;
  v9 = v19;
  a3[2] = v18;
  a3[3] = v9;
  return sub_23019EA5C(v12, v11);
}

uint64_t static REMTestStorePopulator.TestRemindersBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_23019693C(a1, a2, MEMORY[0x277D84F90], a3);
}

uint64_t sub_23019693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v6 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v7 = v6[6];
  v8 = sub_23030E758();
  v9 = *(*(v8 - 8) + 56);
  v9(&a4[v7], 1, 1, v8);
  a4[v6[7]] = 0;
  a4[v6[8]] = 0;
  v10 = v6[9];
  v11 = sub_23030EB58();
  v12 = *(*(v11 - 8) + 56);
  v12(&a4[v10], 1, 1, v11);
  v12(&a4[v6[10]], 1, 1, v11);
  a4[v6[11]] = 0;
  *&a4[v6[12]] = 0;
  *&a4[v6[13]] = 0;
  v13 = &a4[v6[14]];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = MEMORY[0x277D84F90];
  *&a4[v6[15]] = MEMORY[0x277D84F90];
  *&a4[v6[16]] = v14;
  *&a4[v6[17]] = v14;
  *&a4[v6[18]] = v14;
  *&a4[v6[19]] = 0;
  *&a4[v6[20]] = 0;
  *&a4[v6[21]] = 0;
  *&a4[v6[22]] = v14;
  *&a4[v6[23]] = v14;
  v9(&a4[v6[24]], 1, 1, v8);
  v15 = v6[25];
  v16 = sub_23030EBB8();
  result = (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
  *a4 = a1;
  *(a4 + 1) = a2;
  *&a4[v6[26]] = a3;
  return result;
}

uint64_t static REMTestStorePopulator.TestListBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_23019693C(a1, a2, MEMORY[0x277D84F90], a3);
  type metadata accessor for REMTestStorePopulator.TestList.ListChild(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static REMTestStorePopulator.TestListBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_230196C0C(a1, type metadata accessor for REMTestStorePopulator.TestReminder, a2);
}

{
  return sub_230196C0C(a1, type metadata accessor for REMTestStorePopulator.TestListSection, a2);
}

uint64_t sub_230196C0C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(a1, a3, a2);
  type metadata accessor for REMTestStorePopulator.TestList.ListChild(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t REMTestStorePopulator.TestAccount.init(_:type:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  a5[4] = 0;
  a5[5] = 0;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  result = a4();
  a5[3] = result;
  return result;
}

uint64_t REMTestStorePopulator.TestAccount.externalIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = a1;
  a3[5] = a2;
}

uint64_t REMTestStorePopulator.TestList.color(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[5];
  v19 = v3[4];
  v7 = v19;
  v20 = v8;
  v21[0] = v3[6];
  v9 = v21[0];
  *(v21 + 9) = *(v3 + 105);
  v10 = *(v21 + 9);
  v11 = v3[1];
  v16[0] = *v3;
  v16[1] = v11;
  v13 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v13;
  *a3 = v16[0];
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  *(a3 + 64) = v7;
  *(a3 + 80) = v8;
  *(a3 + 96) = v9;
  *(a3 + 105) = v10;
  sub_2301964F4(v16, &v15);

  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t REMTestStorePopulator.TestList.symbolicColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[5];
  v19 = v3[4];
  v7 = v19;
  v20 = v8;
  v21[0] = v3[6];
  v9 = v21[0];
  *(v21 + 9) = *(v3 + 105);
  v11 = v3[1];
  v16[0] = *v3;
  v10 = v16[0];
  v16[1] = v11;
  v13 = v3[3];
  v17 = v3[2];
  v12 = v17;
  v18 = v13;
  *(a3 + 105) = *(v21 + 9);
  *(a3 + 64) = v7;
  *(a3 + 80) = v8;
  *(a3 + 96) = v9;
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  sub_2301964F4(v16, &v15);

  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

void REMTestStorePopulator.TestList.badge(emblem:)(_OWORD *a1@<X8>)
{
  v4 = v1[5];
  v17 = v1[4];
  v3 = v17;
  v18 = v4;
  v19[0] = v1[6];
  v5 = v19[0];
  *(v19 + 9) = *(v1 + 105);
  v7 = v1[1];
  v14[0] = *v1;
  v6 = v14[0];
  v14[1] = v7;
  v8 = v1[3];
  v15 = v1[2];
  v9 = v15;
  v16 = v8;
  v10 = v8;
  *(a1 + 105) = *(v19 + 9);
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v8;
  sub_2301964F4(v14, &v13);
  v11 = sub_23030F8B8();
  v12 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];

  *(a1 + 6) = v12;
}

void REMTestStorePopulator.TestList.badge(emoji:)(_OWORD *a1@<X8>)
{
  v4 = v1[5];
  v18 = v1[4];
  v3 = v18;
  v19 = v4;
  v20[0] = v1[6];
  v5 = v20[0];
  *(v20 + 9) = *(v1 + 105);
  v7 = v1[1];
  v15[0] = *v1;
  v6 = v15[0];
  v15[1] = v7;
  v8 = v1[3];
  v16 = v1[2];
  v9 = v16;
  v17 = v8;
  v10 = v8;
  *(a1 + 105) = *(v20 + 9);
  a1[4] = v3;
  a1[5] = v4;
  a1[6] = v5;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v8;
  v11 = objc_allocWithZone(MEMORY[0x277D44678]);
  sub_2301964F4(v15, &v14);
  v12 = sub_23030F8B8();
  v13 = [v11 initWithEmoji_];

  *(a1 + 6) = v13;
}

void REMTestStorePopulator.TestList.sortingStyle(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[5];
  v18 = v2[4];
  v5 = v18;
  v19 = v6;
  v20[0] = v2[6];
  v7 = v20[0];
  *(v20 + 9) = *(v2 + 105);
  v9 = v2[1];
  v15[0] = *v2;
  v8 = v15[0];
  v15[1] = v9;
  v10 = v2[3];
  v16 = v2[2];
  v11 = v16;
  v17 = v10;
  v12 = *(&v10 + 1);
  *(a2 + 105) = *(v20 + 9);
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 96) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v11;
  *(a2 + 48) = v10;
  sub_2301964F4(v15, &v14);
  v13 = a1;

  *(a2 + 56) = a1;
}

uint64_t REMTestStorePopulator.TestList.sharingStatus(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[5];
  v15 = v2[4];
  v3 = v15;
  v16 = v4;
  v17[0] = v2[6];
  v5 = v17[0];
  *(v17 + 9) = *(v2 + 105);
  v6 = *(v17 + 9);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v9 = v2[3];
  v13 = v2[2];
  v8 = v13;
  v14 = v9;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v3;
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *(a2 + 105) = v6;
  *(a2 + 64) = a1;
  *(a2 + 72) = 0;
  return sub_2301964F4(v12, &v11);
}

uint64_t REMTestStorePopulator.TestList.sharees(builder:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v6 = v19;
  v20 = v5;
  v21[0] = v2[6];
  v7 = v21[0];
  *(v21 + 9) = *(v2 + 105);
  v9 = v2[1];
  v16[0] = *v2;
  v8 = v16[0];
  v16[1] = v9;
  v11 = v2[3];
  v17 = v2[2];
  v10 = v17;
  v18 = v11;
  *(a2 + 105) = *(v21 + 9);
  *(a2 + 64) = v6;
  *(a2 + 80) = v5;
  *(a2 + 96) = v7;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  v12 = sub_2301964F4(v16, &v15);
  v13 = a1(v12);

  *(a2 + 88) = v13;
  return result;
}

uint64_t REMTestStorePopulator.TestList.isPinned(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[5];
  v15 = v2[4];
  v3 = v15;
  v16 = v4;
  v17[0] = v2[6];
  v5 = v17[0];
  *(v17 + 9) = *(v2 + 105);
  v6 = *(v17 + 9);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v9 = v2[3];
  v13 = v2[2];
  v8 = v13;
  v14 = v9;
  *a2 = v12[0];
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v3;
  a2[5] = v4;
  a2[6] = v5;
  *(a2 + 105) = v6;
  *(a2 + 96) = a1;
  return sub_2301964F4(v12, &v11);
}

uint64_t REMTestStorePopulator.TestList.shouldCategorizeGroceryItems(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[5];
  v15 = v2[4];
  v3 = v15;
  v16 = v4;
  v17[0] = v2[6];
  v5 = v17[0];
  *(v17 + 9) = *(v2 + 105);
  v6 = *(v17 + 9);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v9 = v2[3];
  v13 = v2[2];
  v8 = v13;
  v14 = v9;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v3;
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *(a2 + 105) = v6;
  *(a2 + 97) = a1;
  return sub_2301964F4(v12, &v11);
}

uint64_t REMTestStorePopulator.TestList.shouldSuggestConversionToGroceryList(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[5];
  v15 = v2[4];
  v3 = v15;
  v16 = v4;
  v17[0] = v2[6];
  v5 = v17[0];
  *(v17 + 9) = *(v2 + 105);
  v6 = *(v17 + 9);
  v7 = v2[1];
  v12[0] = *v2;
  v12[1] = v7;
  v9 = v2[3];
  v13 = v2[2];
  v8 = v13;
  v14 = v9;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v3;
  *(a2 + 80) = v4;
  *(a2 + 96) = v5;
  *(a2 + 105) = v6;
  *(a2 + 98) = a1;
  return sub_2301964F4(v12, &v11);
}

uint64_t REMTestStorePopulator.TestList.groceryLocaleID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v22[9] = *(v3 + 105);
  v7 = *&v22[9];
  v9 = v3[5];
  v20 = v3[4];
  v8 = v20;
  v21 = v9;
  *v22 = v3[6];
  v10 = *v22;
  v12 = v3[1];
  v17[0] = *v3;
  v11 = v17[0];
  v17[1] = v12;
  v14 = v3[3];
  v18 = v3[2];
  v13 = v18;
  v19 = v14;
  *(a3 + 105) = v7;
  *(a3 + 64) = v8;
  *(a3 + 80) = v9;
  *(a3 + 96) = v10;
  *a3 = v11;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  sub_2301964F4(v17, &v16);

  *(a3 + 104) = a1;
  *(a3 + 112) = a2;
  return result;
}

uint64_t REMTestStorePopulator.TestList.shouldAutoCategorizeItems(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 80);
  v14 = *(v2 + 64);
  v15 = v3;
  v16[0] = *(v2 + 96);
  v4 = v16[0];
  *(v16 + 9) = *(v2 + 105);
  v6 = *(v2 + 16);
  v11[0] = *v2;
  v5 = v11[0];
  v11[1] = v6;
  v8 = *(v2 + 48);
  v12 = *(v2 + 32);
  v7 = v12;
  v13 = v8;
  *(a2 + 64) = v14;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = *(v2 + 112);
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 120) = a1;
  return sub_2301964F4(v11, &v10);
}

__n128 REMTestStorePopulator.TestSharee.init(firstName:lastName:address:status:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v7 = a5[1].n128_u8[0];
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  result = *a5;
  a7[2] = *a5;
  a7[3].n128_u8[0] = v7;
  a7[3].n128_u64[1] = a6;
  return result;
}

uint64_t REMTestStorePopulator.TestGroup.init(_:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  result = a3();
  a4[2] = result;
  return result;
}

double REMTestStorePopulator.TestCustomSmartList.init(_:builder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = a3();
  *a4 = a1;
  *(a4 + 8) = a2;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 57) = 0u;
  *(a4 + 80) = v7;
  return result;
}

uint64_t REMTestStorePopulator.TestCustomSmartList.init(_:operation:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = *a3;
  *(a5 + 72) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = a1;
  *(a5 + 8) = a2;
  v14 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = type metadata accessor for REMCustomSmartListFilterDescriptor(0);
  v16 = objc_allocWithZone(v15);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_operation] = v13;
  v17 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_hashtags];
  *v17 = xmmword_2303167F0;
  v17[16] = 0;
  sub_230055F74(v12, &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date], &unk_27DB15AE0);
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_time] = 6;
  *&v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities] = 0;
  v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged] = 2;
  v18 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  v18[48] = -1;
  v19 = &v16[OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_lists];
  *v19 = 0;
  v19[1] = 0;
  v23.receiver = v16;
  v23.super_class = v15;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  v21 = sub_230061918(v12, &unk_27DB15AE0);
  *(a5 + 64) = v20;
  result = a4(v21);
  *(a5 + 80) = result;
  return result;
}

uint64_t REMTestStorePopulator.TestCustomSmartList.color(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[4];
  v17 = v3[3];
  v18 = v8;
  v19 = *(v3 + 10);
  v9 = v19;
  v11 = *v3;
  v15 = v3[1];
  v10 = v15;
  v16 = v7;
  v14 = v11;
  *(a3 + 48) = v17;
  *(a3 + 64) = v8;
  *(a3 + 16) = v10;
  *(a3 + 32) = v7;
  *(a3 + 80) = v9;
  *a3 = v11;
  sub_23019EA5C(&v14, v13);

  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t REMTestStorePopulator.TestCustomSmartList.symbolicColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = *(v3 + 64);
  v15 = *(v3 + 48);
  v16 = v8;
  v17 = *(v3 + 80);
  v9 = v17;
  v11 = *(v3 + 16);
  v14[0] = *v3;
  v10 = v14[0];
  v14[1] = v11;
  v14[2] = v7;
  *(a3 + 48) = v15;
  *(a3 + 64) = v8;
  *(a3 + 16) = v11;
  *(a3 + 32) = v7;
  *(a3 + 80) = v9;
  *a3 = v10;
  sub_23019EA5C(v14, v13);

  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  return result;
}

void REMTestStorePopulator.TestCustomSmartList.badge(emblem:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v13 = *(v1 + 48);
  v14 = v4;
  v15 = *(v1 + 80);
  v5 = v15;
  v7 = *(v1 + 16);
  v12[0] = *v1;
  v6 = v12[0];
  v12[1] = v7;
  v12[2] = v3;
  v8 = v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v4;
  *(a1 + 16) = v7;
  *(a1 + 32) = v3;
  *(a1 + 80) = v5;
  *a1 = v6;
  sub_23019EA5C(v12, v11);
  v9 = sub_23030F8B8();
  v10 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];

  *(a1 + 48) = v10;
}

void REMTestStorePopulator.TestCustomSmartList.badge(emoji:)(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v14 = *(v1 + 48);
  v15 = v4;
  v16 = *(v1 + 80);
  v5 = v16;
  v7 = *(v1 + 16);
  v13[0] = *v1;
  v6 = v13[0];
  v13[1] = v7;
  v13[2] = v3;
  v8 = v14;
  *(a1 + 48) = v14;
  *(a1 + 64) = v4;
  *(a1 + 16) = v7;
  *(a1 + 32) = v3;
  *(a1 + 80) = v5;
  *a1 = v6;
  v9 = objc_allocWithZone(MEMORY[0x277D44678]);
  sub_23019EA5C(v13, v12);
  v10 = sub_23030F8B8();
  v11 = [v9 initWithEmoji_];

  *(a1 + 48) = v11;
}

void REMTestStorePopulator.TestCustomSmartList.sortingStyle(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v14 = *(v2 + 48);
  v15 = v6;
  v16 = *(v2 + 80);
  v7 = v16;
  v9 = *(v2 + 16);
  v13[0] = *v2;
  v8 = v13[0];
  v13[1] = v9;
  v13[2] = v5;
  v10 = *(&v14 + 1);
  *(a2 + 48) = v14;
  *(a2 + 64) = v6;
  *(a2 + 16) = v9;
  *(a2 + 32) = v5;
  *(a2 + 80) = v7;
  *a2 = v8;
  sub_23019EA5C(v13, v12);
  v11 = a1;

  *(a2 + 56) = a1;
}

void REMTestStorePopulator.TestCustomSmartList.hashtags(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v2[3];
  v7 = v2[4];
  v9 = v2[2];
  v18 = v2[1];
  v10 = v18;
  v19 = v9;
  v20 = v8;
  v21 = v7;
  v22 = *(v2 + 10);
  v11 = v22;
  v17 = *v2;
  v12 = v7;
  *a2 = v17;
  *(a2 + 16) = v10;
  *(a2 + 80) = v11;
  *(a2 + 48) = v8;
  *(a2 + 64) = v7;
  *(a2 + 32) = v9;
  if (v7)
  {
    sub_23019EA5C(&v17, v15);
  }

  else
  {
    v13 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v17, v15);
    v12 = [v13 init];
  }

  v15[0] = v5;
  v15[1] = v4;
  v16 = v6;
  sub_230145624(v5);
  v14 = sub_230145930(v12, v15);

  *(a2 + 64) = v14;
}

void REMTestStorePopulator.TestCustomSmartList.date(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6 - 8];
  v9 = v2[3];
  v8 = v2[4];
  v10 = v2[2];
  v20 = v2[1];
  v11 = v20;
  v21 = v10;
  v22 = v9;
  v23 = v8;
  v24 = *(v2 + 10);
  v12 = v24;
  v19 = *v2;
  v13 = v19;
  v14 = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v8;
  *(a2 + 80) = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v10;
  *a2 = v13;
  if (v8)
  {
    sub_23019EA5C(&v19, v18);
  }

  else
  {
    v15 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v19, v18);
    v14 = [v15 init];
  }

  sub_230055F74(a1, v7, &unk_27DB15AE0);
  v16 = sub_230145BA0(v14, v7);

  *(a2 + 64) = v16;
}

void REMTestStorePopulator.TestCustomSmartList.dateRange(from:to:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v72 = a4;
  v71 = a3;
  v69 = a5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0);
  v9 = MEMORY[0x28223BE20](v66);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v70 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v24 = sub_23030EB58();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v74 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v64 - v28;
  v29 = v6[2];
  v30 = v6[4];
  v81 = v6[3];
  v82 = v30;
  v83 = *(v6 + 10);
  v31 = v6[1];
  v78 = *v6;
  v79 = v31;
  v80 = v29;
  v32 = sub_23030EE68();
  v33 = *(*(v32 - 8) + 56);
  v33(v18, 1, 1, v32);

  Date.init(testing_allDayParsedFrom:timeZone:)(a1, a2, v18, v23);
  v34 = *(v25 + 48);
  if (v34(v23, 1, v24) == 1)
  {
    goto LABEL_10;
  }

  v75 = v25;
  v35 = *(v25 + 32);
  v35(v76, v23, v24);
  v33(v18, 1, 1, v32);
  v36 = v72;

  v37 = v70;
  Date.init(testing_allDayParsedFrom:timeZone:)(v71, v36, v18, v70);
  if (v34(v37, 1, v24) == 1)
  {
LABEL_9:
    v23 = v37;
    (*(v75 + 8))(v76, v24);
LABEL_10:
    sub_230061918(v23, &unk_27DB15AA0);
    sub_230310AE8();
    __break(1u);
    return;
  }

  v38 = v74;
  v35(v74, v37, v24);
  sub_23019EC64(&qword_280C9C418, MEMORY[0x277CC9578]);
  v39 = v76;
  v40 = sub_23030F7F8();
  v41 = v73;
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v42 = v75;
  v43 = *(v75 + 16);
  v44 = v65;
  v43(v65, v39, v24);
  v45 = v66;
  v43((v44 + *(v66 + 48)), v38, v24);
  v46 = v67;
  sub_230055F74(v44, v67, &qword_27DB15AB0);
  v47 = *(v45 + 48);
  v35(v41, v46, v24);
  v48 = *(v42 + 8);
  v48(v46 + v47, v24);
  v49 = v44;
  v50 = v48;
  sub_23019EB90(v49, v46);
  v51 = *(v45 + 48);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15A78);
  v35((v41 + *(v52 + 36)), (v46 + v51), v24);
  v75 = v42 + 8;
  v48(v46, v24);
  v53 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v53 - 8) + 56))(v41, 0, 1, v53);
  v54 = v81;
  v55 = v82;
  v56 = v69;
  *(v69 + 32) = v80;
  *(v56 + 48) = v54;
  *(v56 + 64) = v55;
  v57 = v82;
  *(v56 + 80) = v83;
  v58 = v79;
  *v56 = v78;
  *(v56 + 16) = v58;
  if (v57)
  {
    sub_23019EA5C(&v78, v77);
    v59 = v57;
  }

  else
  {
    v60 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v78, v77);
    v59 = [v60 init];
  }

  v61 = v68;
  sub_230055F74(v41, v68, &unk_27DB15AE0);
  v62 = v57;
  v63 = sub_230145BA0(v59, v61);

  sub_230061918(v41, &unk_27DB15AE0);
  v50(v74, v24);
  v50(v76, v24);

  *(v56 + 64) = v63;
}

void REMTestStorePopulator.TestCustomSmartList.time(_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[2];
  v15 = v2[1];
  v8 = v15;
  v16 = v7;
  v17 = v6;
  v18 = v5;
  v19 = *(v2 + 10);
  v9 = v19;
  v14 = *v2;
  v10 = v5;
  *a2 = v14;
  *(a2 + 16) = v8;
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  *(a2 + 32) = v7;
  *(a2 + 80) = v9;
  if (v5)
  {
    sub_23019EA5C(&v14, v13);
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v14, v13);
    v10 = [v11 init];
  }

  v13[0] = v4;
  v12 = sub_230145E3C(v10, v13);

  *(a2 + 64) = v12;
}

void REMTestStorePopulator.TestCustomSmartList.priorities(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[2];
  v16 = v2[1];
  v8 = v16;
  v17 = v7;
  v18 = v6;
  v19 = v5;
  v20 = *(v2 + 10);
  v9 = v20;
  v15 = *v2;
  v10 = v15;
  v11 = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  *(a2 + 80) = v9;
  *a2 = v10;
  if (v5)
  {
    sub_23019EA5C(&v15, v14);
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v15, v14);
    v11 = [v12 init];
  }

  v13 = sub_2301460C8(v11, a1);

  *(a2 + 64) = v13;
}

void REMTestStorePopulator.TestCustomSmartList.flagged(_:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[2];
  v16 = v2[1];
  v8 = v16;
  v17 = v7;
  v18 = v6;
  v19 = v5;
  v20 = *(v2 + 10);
  v9 = v20;
  v15 = *v2;
  v10 = v15;
  v11 = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  *(a2 + 16) = v8;
  *(a2 + 32) = v7;
  *(a2 + 80) = v9;
  *a2 = v10;
  if (v5)
  {
    sub_23019EA5C(&v15, v14);
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v15, v14);
    v11 = [v12 init];
  }

  v13 = sub_230146338(v11, a1);

  *(a2 + 64) = v13;
}

void REMTestStorePopulator.TestCustomSmartList.location(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v27 = *(v2 + 48);
  v28 = v6;
  v7 = *(v2 + 16);
  v26[0] = *v2;
  v8 = v26[0];
  v26[1] = v7;
  v26[2] = v5;
  v9 = *(v2 + 64);
  *(a2 + 48) = v27;
  *(a2 + 64) = v9;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v29 = *(v2 + 80);
  v17 = v28;
  *(a2 + 80) = *(v2 + 80);
  *a2 = v8;
  if (v17)
  {
    sub_23019EA5C(v26, &v20);
  }

  else
  {
    v18 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(v26, &v20);
    v17 = [v18 init];
  }

  *&v20 = v11;
  *(&v20 + 1) = v10;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  sub_230145634(v11, v10, v12, v13, v14, v15, v16);
  v19 = sub_2301465B0(v17, &v20);

  *(a2 + 64) = v19;
}

void REMTestStorePopulator.TestCustomSmartList.operation(_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = v2[3];
  v5 = v2[4];
  v7 = v2[2];
  v15 = v2[1];
  v8 = v15;
  v16 = v7;
  v17 = v6;
  v18 = v5;
  v19 = *(v2 + 10);
  v9 = v19;
  v14 = *v2;
  v10 = v5;
  *a2 = v14;
  *(a2 + 16) = v8;
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  *(a2 + 32) = v7;
  *(a2 + 80) = v9;
  if (v5)
  {
    sub_23019EA5C(&v14, v13);
  }

  else
  {
    v11 = objc_allocWithZone(type metadata accessor for REMCustomSmartListFilterDescriptor(0));
    sub_23019EA5C(&v14, v13);
    v10 = [v11 init];
  }

  v13[0] = v4;
  v12 = sub_2301456A0(v10, v13);

  *(a2 + 64) = v12;
}

uint64_t REMTestStorePopulator.TestCustomSmartList.isPinned(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 64);
  v11 = *(v2 + 48);
  v12 = v4;
  v13 = *(v2 + 80);
  v5 = v13;
  v7 = *(v2 + 16);
  v10[0] = *v2;
  v6 = v10[0];
  v10[1] = v7;
  v10[2] = v3;
  *(a2 + 48) = v11;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  *(a2 + 16) = v7;
  *(a2 + 32) = v3;
  *a2 = v6;
  *(a2 + 72) = a1;
  return sub_23019EA5C(v10, v9);
}

void __swiftcall REMTestStorePopulator.TestTemplate.init(_:srcListName:)(ReminderKitInternal::REMTestStorePopulator::TestTemplate *__return_ptr retstr, Swift::String _, Swift::String srcListName)
{
  retstr->shouldSaveCompleted = 0;
  retstr->name = _;
  retstr->srcListName = srcListName;
}

void __swiftcall REMTestStorePopulator.TestTemplate.shouldSaveCompleted(_:)(ReminderKitInternal::REMTestStorePopulator::TestTemplate *__return_ptr retstr, Swift::Bool a2)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  retstr->name._countAndFlagsBits = *v2;
  retstr->name._object = v3;
  retstr->srcListName._countAndFlagsBits = v4;
  retstr->srcListName._object = v5;
  retstr->shouldSaveCompleted = a2;
}

uint64_t REMTestStorePopulator.TestReminder.init(_:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, char *a4@<X8>)
{
  v6 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v7 = v6[6];
  v8 = sub_23030E758();
  v9 = *(*(v8 - 8) + 56);
  v9(&a4[v7], 1, 1, v8);
  a4[v6[7]] = 0;
  a4[v6[8]] = 0;
  v10 = v6[9];
  v11 = sub_23030EB58();
  v12 = *(*(v11 - 8) + 56);
  v12(&a4[v10], 1, 1, v11);
  v12(&a4[v6[10]], 1, 1, v11);
  a4[v6[11]] = 0;
  *&a4[v6[12]] = 0;
  *&a4[v6[13]] = 0;
  v13 = &a4[v6[14]];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = MEMORY[0x277D84F90];
  *&a4[v6[15]] = MEMORY[0x277D84F90];
  *&a4[v6[16]] = v14;
  *&a4[v6[17]] = v14;
  *&a4[v6[18]] = v14;
  *&a4[v6[19]] = 0;
  *&a4[v6[20]] = 0;
  *&a4[v6[21]] = 0;
  *&a4[v6[22]] = v14;
  *&a4[v6[23]] = v14;
  v9(&a4[v6[24]], 1, 1, v8);
  v15 = v6[25];
  v16 = sub_23030EBB8();
  v17 = (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
  *a4 = a1;
  *(a4 + 1) = a2;
  result = a3(v17);
  *&a4[v6[26]] = result;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.dueDateComponents(_:bypassAddingAlarm:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);
  v7 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  v8 = *(v7 + 24);
  sub_230061918(a3 + v8, &qword_27DB15C28);
  v9 = sub_23030E758();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a3 + v8, a1, v9);
  result = (*(v10 + 56))(a3 + v8, 0, 1, v9);
  *(a3 + *(v7 + 28)) = a2;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.dueDate(_:bypassAddingAlarm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_23030E758();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23030EE08();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);

  DateComponents.init(testing_parsedFrom:calendar:)(a1, a2, v12, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_230061918(v15, &qword_27DB15C28);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_230310848();

    v24 = 0xD000000000000019;
    v25 = 0x8000000230342D10;
    MEMORY[0x231911790](a1, a2);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_23019EB08(v5, a4, type metadata accessor for REMTestStorePopulator.TestReminder);
    v21 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
    v22 = *(v21 + 24);
    sub_230061918(a4 + v22, &qword_27DB15C28);
    (*(v17 + 16))(a4 + v22, v19, v16);
    (*(v17 + 56))(a4 + v22, 0, 1, v16);
    *(a4 + *(v21 + 28)) = a3 & 1;
    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

void REMTestStorePopulator.TestReminder.alarmDate(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_23030E758();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23030EE08();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);

  DateComponents.init(testing_parsedFrom:calendar:)(a1, a2, v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_230061918(v12, &qword_27DB15C28);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_230310848();

    v22 = 0xD00000000000001BLL;
    v23 = 0x8000000230342D30;
    MEMORY[0x231911790](a1, a2);
    sub_230310AE8();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);
    v18 = objc_allocWithZone(MEMORY[0x277D44578]);
    v19 = sub_23030E668();
    v20 = [v18 initWithDateComponents_];

    (*(v14 + 8))(v16, v13);
    v21 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 84);

    *(a3 + v21) = v20;
  }
}

uint64_t REMTestStorePopulator.TestReminder.recurrenceRule(frequency:interval:end:firstDayOfTheWeek:daysOfTheWeek:daysOfTheMonth:monthsOfTheYear:weeksOfTheYear:daysOfTheYear:setPositions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  sub_23019EB08(v12, a9, type metadata accessor for REMTestStorePopulator.TestReminder);
  v19 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 88);
  v20 = *(a9 + v19);
  v21 = a3;

  v29 = a8;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23007F7F4(0, *(v20 + 16) + 1, 1, v20);
    v20 = result;
  }

  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_23007F7F4((v23 > 1), v24 + 1, 1, v20);
    v20 = result;
  }

  *(v20 + 16) = v24 + 1;
  v25 = (v20 + 80 * v24);
  v25[4] = a1;
  v25[5] = a2;
  v25[6] = a3;
  v25[7] = a4;
  v25[8] = a5;
  v25[9] = a6;
  v25[10] = a7;
  v25[11] = v29;
  v25[12] = a10;
  v25[13] = a11;
  *(a9 + v19) = v20;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.isCompleted(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  result = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  *(a2 + *(result + 32)) = a1;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.completedDate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);

  return sub_2301994D4(a3, a1, a2);
}

uint64_t sub_2301994D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23030EE68();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

  Date.init(testing_parsedFrom:timeZone:)(a2, a3, v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230061918(v11, &unk_27DB15AA0);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_230310848();

    v20 = 0xD000000000000015;
    v21 = 0x8000000230342FA0;
    MEMORY[0x231911790](a2, a3);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
    v18 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 36);
    sub_230061918(a1 + v18, &unk_27DB15AA0);
    v17((a1 + v18), v15, v12);
    return (*(v13 + 56))(a1 + v18, 0, 1, v12);
  }

  return result;
}

uint64_t REMTestStorePopulator.TestReminder.isCompleted(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);

  return sub_230199834(a3, a1, a2);
}

uint64_t sub_230199834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23030EE68();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

  Date.init(testing_parsedFrom:timeZone:)(a2, a3, v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230061918(v11, &unk_27DB15AA0);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_230310848();

    v21 = 0xD000000000000015;
    v22 = 0x8000000230342FA0;
    MEMORY[0x231911790](a2, a3);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
    v18 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
    v19 = *(v18 + 36);
    sub_230061918(a1 + v19, &unk_27DB15AA0);
    v17((a1 + v19), v15, v12);
    result = (*(v13 + 56))(a1 + v19, 0, 1, v12);
    *(a1 + *(v18 + 32)) = 1;
  }

  return result;
}

uint64_t REMTestStorePopulator.TestReminder.creationDate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);

  return sub_230199BAC(a3, a1, a2);
}

uint64_t sub_230199BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23030EE68();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

  Date.init(testing_parsedFrom:timeZone:)(a2, a3, v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230061918(v11, &unk_27DB15AA0);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_230310848();

    v20 = 0xD000000000000015;
    v21 = 0x8000000230342FA0;
    MEMORY[0x231911790](a2, a3);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
    v18 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 40);
    sub_230061918(a1 + v18, &unk_27DB15AA0);
    v17((a1 + v18), v15, v12);
    return (*(v13 + 56))(a1 + v18, 0, 1, v12);
  }

  return result;
}

uint64_t REMTestStorePopulator.TestReminder.isFlagged(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  result = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  *(a2 + *(result + 44)) = a1;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.priority(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  result = type metadata accessor for REMTestStorePopulator.TestReminder(0);
  *(a2 + *(result + 48)) = a1;
  return result;
}

void REMTestStorePopulator.TestReminder.contactRepresentation(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  v5 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 52);
  v6 = *(a2 + v5);
  v7 = a1;

  *(a2 + v5) = a1;
}

uint64_t REMTestStorePopulator.TestReminder.assignment(assignee:originator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23019EB08(v5, a5, type metadata accessor for REMTestStorePopulator.TestReminder);
  v11 = (a5 + *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 56));
  v12 = *v11;
  v13 = v11[1];

  result = sub_23019EC00(v12, v13);
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.imageAttachment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_23030E8D8();
  v13 = CGImageSourceCreateWithURL(v12, 0);

  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
  if (!v14)
  {

LABEL_23:
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v38 = 0xD000000000000024;
    *(&v38 + 1) = 0x8000000230342D50;
    sub_23030E9B8();
    sub_23019EC64(&qword_27DB164E0, MEMORY[0x277CC9260]);
    v29 = sub_230310E58();
    MEMORY[0x231911790](v29);

    result = sub_230310AE8();
    __break(1u);
    return result;
  }

  v15 = v14;
  if ([(__CFDictionary *)v14 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3450]])
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v32 = v9;
  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {

    sub_230061918(&v38, &qword_27DB14810);
    goto LABEL_23;
  }

  v16 = v3;
  v31 = a1;
  v33 = v6;
  sub_23004CBA4(0, &qword_27DB17080);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v17 = v35;
  if ([(__CFDictionary *)v15 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3448]])
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {

    sub_230061918(&v38, &qword_27DB14810);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v18 = v35;
  v19 = sub_23030E9B8();
  (*(*(v19 - 8) + 16))(v11, v31, v19);
  v20 = [v17 integerValue];
  v21 = [v18 integerValue];
  *&v11[*(v5 + 20)] = v20;
  *&v11[*(v5 + 24)] = v21;
  v22 = v34;
  sub_23019EB08(v16, v34, type metadata accessor for REMTestStorePopulator.TestReminder);
  v23 = v32;
  sub_23019EB08(v11, v32, type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment);
  v24 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 60);
  v25 = *(v22 + v24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_23007F914(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_23007F914(v26 > 1, v27 + 1, 1, v25);
  }

  sub_23019ECCC(v11, type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment);
  v25[2] = v27 + 1;
  result = sub_23019ED2C(v23, v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, type metadata accessor for REMTestStorePopulator.TestReminder.ImageAttachment);
  *(v34 + v24) = v25;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.unDedupedImageAttachment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_23030E8D8();
  v13 = CGImageSourceCreateWithURL(v12, 0);

  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
  if (!v14)
  {

LABEL_23:
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v38 = 0xD000000000000024;
    *(&v38 + 1) = 0x8000000230342D50;
    sub_23030E9B8();
    sub_23019EC64(&qword_27DB164E0, MEMORY[0x277CC9260]);
    v29 = sub_230310E58();
    MEMORY[0x231911790](v29);

    result = sub_230310AE8();
    __break(1u);
    return result;
  }

  v15 = v14;
  if ([(__CFDictionary *)v14 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3450]])
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v32 = v9;
  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {

    sub_230061918(&v38, &qword_27DB14810);
    goto LABEL_23;
  }

  v16 = v3;
  v31 = a1;
  v33 = v6;
  sub_23004CBA4(0, &qword_27DB17080);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    goto LABEL_23;
  }

  v17 = v35;
  if ([(__CFDictionary *)v15 __swift_objectForKeyedSubscript:*MEMORY[0x277CD3448]])
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38 = v36;
  v39 = v37;
  if (!*(&v37 + 1))
  {

    sub_230061918(&v38, &qword_27DB14810);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v18 = v35;
  v19 = sub_23030E9B8();
  (*(*(v19 - 8) + 16))(v11, v31, v19);
  v20 = [v17 integerValue];
  v21 = [v18 integerValue];
  *&v11[*(v5 + 20)] = v20;
  *&v11[*(v5 + 24)] = v21;
  v22 = v34;
  sub_23019EB08(v16, v34, type metadata accessor for REMTestStorePopulator.TestReminder);
  v23 = v32;
  sub_23019EB08(v11, v32, type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment);
  v24 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 64);
  v25 = *(v22 + v24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_23007F93C(0, v25[2] + 1, 1, v25);
  }

  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_23007F93C(v26 > 1, v27 + 1, 1, v25);
  }

  sub_23019ECCC(v11, type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment);
  v25[2] = v27 + 1;
  result = sub_23019ED2C(v23, v25 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, type metadata accessor for REMTestStorePopulator.TestReminder.UnDedupedImageAttachment);
  *(v34 + v24) = v25;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.urlAttachment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = sub_23030E9B8();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  sub_23019EB08(v3, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  sub_23019EB08(v12, v10, type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment);
  v14 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 68);
  v15 = *(a2 + v14);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_23007F964(0, v15[2] + 1, 1, v15);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_23007F964(v16 > 1, v17 + 1, 1, v15);
  }

  sub_23019ECCC(v12, type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment);
  v15[2] = v17 + 1;
  result = sub_23019ED2C(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, type metadata accessor for REMTestStorePopulator.TestReminder.URLAttachment);
  *(a2 + v14) = v15;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.hashtag(_:type:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a3;
  v30 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_23030EB58();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag(0);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5;
  sub_23019EB08(v5, a5, type metadata accessor for REMTestStorePopulator.TestReminder);
  sub_230055F74(a4, v10, &unk_27DB15AA0);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_23030EB48();
    if (v19(v10, 1, v11) != 1)
    {
      sub_230061918(v10, &unk_27DB15AA0);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
  }

  v20 = v28;
  v21 = v30;
  *v17 = v27;
  *(v17 + 1) = v21;
  *(v17 + 2) = v20;
  (*(v12 + 32))(&v17[*(v15 + 24)], v14, v11);
  v22 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 72);
  v23 = *(a5 + v22);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_23007F98C(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_23007F98C(v24 > 1, v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  result = sub_23019ED2C(v17, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, type metadata accessor for REMTestStorePopulator.TestReminder.Hashtag);
  *(v18 + v22) = v23;
  return result;
}

void REMTestStorePopulator.TestReminder.location(_:proximity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);
  v7 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:a1 proximity:a2];
  v8 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 76);

  *(a3 + v8) = v7;
}

void REMTestStorePopulator.TestReminder.location(title:latitude:longitude:radius:proximity:)(uint64_t a1@<X2>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v6 = v5;
  sub_23019EB08(v6, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  v12 = objc_allocWithZone(MEMORY[0x277D44868]);
  v13 = sub_23030F8B8();
  v14 = [v12 initWithTitle_];

  [v14 setLatitude_];
  [v14 setLongitude_];
  [v14 setRadius_];
  v15 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v14 proximity:a1];

  v16 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 76);
  *(a2 + v16) = v15;
}

void REMTestStorePopulator.TestReminder.vehicle(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  v5 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
  v6 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 80);

  *(a2 + v6) = v5;
}

uint64_t REMTestStorePopulator.TestReminder.dueDateDeltaAlert(_:creationDate:acknowledgedDate:minimumSupportedAppVersion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert(0);
  v13 = (v12 - 8);
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23019EB08(v6, a5, type metadata accessor for REMTestStorePopulator.TestReminder);
  v17 = v13[7];
  v18 = sub_23030EB58();
  (*(*(v18 - 8) + 16))(&v16[v17], a2, v18);
  sub_230055F74(a3, &v16[v13[8]], &unk_27DB15AA0);
  *v16 = a1;
  *&v16[v13[9]] = a4;
  v19 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 92);
  v20 = *(a5 + v19);
  v21 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_23007F9B4(0, v20[2] + 1, 1, v20);
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_23007F9B4(v22 > 1, v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  result = sub_23019ED2C(v16, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, type metadata accessor for REMTestStorePopulator.TestReminder.DueDateDeltaAlert);
  *(a5 + v19) = v20;
  return result;
}

uint64_t REMTestStorePopulator.TestReminder.alternativeDueDate_forCalendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  v13 = sub_23030E758();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23030EE08();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);

  DateComponents.init(testing_parsedFrom:calendar:)(a1, a2, v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_230061918(v12, &qword_27DB15C28);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000038, 0x8000000230342D80);
    MEMORY[0x231911790](a1, a2);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestReminder);
    v18 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 96);
    sub_230061918(a3 + v18, &qword_27DB15C28);
    (*(v14 + 16))(a3 + v18, v16, v13);
    (*(v14 + 56))(a3 + v18, 0, 1, v13);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t REMTestStorePopulator.TestReminder.batchCreationID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23019EB08(v2, a2, type metadata accessor for REMTestStorePopulator.TestReminder);
  v5 = *(type metadata accessor for REMTestStorePopulator.TestReminder(0) + 100);
  sub_230061918(a2 + v5, &qword_27DB14800);
  v6 = sub_23030EBB8();
  v9 = *(v6 - 8);
  (*(v9 + 16))(a2 + v5, a1, v6);
  v7 = *(v9 + 56);

  return v7(a2 + v5, 0, 1, v6);
}

uint64_t REMTestStorePopulator.TestListSection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  v7 = *(v6 + 24);
  v8 = sub_23030EB58();
  result = (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  *a3 = a1;
  *(a3 + 1) = a2;
  *&a3[*(v6 + 28)] = MEMORY[0x277D84F90];
  return result;
}

uint64_t REMTestStorePopulator.TestListSection.init(_:builder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v9 = *(v8 + 24);
  v10 = sub_23030EB58();
  v11 = (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  *(a4 + 1) = a2;
  result = a3(v11);
  *&a4[*(v8 + 28)] = result;
  return result;
}

uint64_t sub_23019B9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_23019EB08(v4, a4, a3);

  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  return result;
}

uint64_t REMTestStorePopulator.TestListSection.creationDate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23019EB08(v3, a3, type metadata accessor for REMTestStorePopulator.TestListSection);

  return sub_23019BA8C(a3, a1, a2);
}

uint64_t sub_23019BA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_23030EB58();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23030EE68();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

  Date.init(testing_parsedFrom:timeZone:)(a2, a3, v8, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_230061918(v11, &unk_27DB15AA0);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_230310848();

    v20 = 0xD000000000000015;
    v21 = 0x8000000230342FA0;
    MEMORY[0x231911790](a2, a3);
    result = sub_230310AE8();
    __break(1u);
  }

  else
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
    v18 = *(type metadata accessor for REMTestStorePopulator.TestListSection(0) + 24);
    sub_230061918(a1 + v18, &unk_27DB15AA0);
    v17((a1 + v18), v15, v12);
    return (*(v13 + 56))(a1 + v18, 0, 1, v12);
  }

  return result;
}

Swift::String __swiftcall REMTestStoreDumpFormatter.formatList(_:)(REMList *a1)
{
  v3 = sub_23019BF18(a1, v1, v2, &selRef_name);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_23019BD94(void *a1)
{
  v1 = [a1 name];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

Swift::tuple_description_String_shouldDumpContents_Bool __swiftcall REMTestStoreDumpFormatter.formatCustomSmartList(_:)(REMSmartList *a1)
{
  v1 = [(REMSmartList *)a1 name];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  v7 = 1;
  result.description._object = v6;
  result.description._countAndFlagsBits = v5;
  result.shouldDumpContents = v7;
  return result;
}

uint64_t sub_23019BE44(void *a1)
{
  v1 = [a1 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v3;
}

Swift::String __swiftcall REMTestStoreDumpFormatter.formatReminder(_:)(REMReminder *a1)
{
  v1 = [(REMReminder *)a1 titleAsString];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_23019BF18(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [a1 *a4];
  v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v5;
}

uint64_t sub_23019BF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x231911790](a1, a2);
  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_23007E928(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_23007E928((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = a5;
  *(v13 + 5) = a6;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_23019C078(void **__dst, void **__src, void **a3, void **a4, uint64_t a5)
{
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[2 * v13] <= a4)
    {
      v25 = a4;
      memmove(a4, __src, 16 * v13);
      a4 = v25;
    }

    v50 = &a4[2 * v13];
    v26 = v11 < 16;
    v14 = a4;
    if (!v26 && v6 > v7)
    {
      v44 = a4;
      v48 = v7;
LABEL_27:
      v43 = v6 - 2;
      v27 = v5 - 2;
      v28 = v50;
      do
      {
        v29 = v27;
        v30 = (v27 + 2);
        v31 = *(v28 - 2);
        v28 -= 16;
        v32 = *(v6 - 2);
        v33 = v6;
        v34 = *(a5 + 104);
        v35 = v31;

        v36 = v32;

        v37 = [v35 objectID];
        v46 = [v34 indexOfObject_];

        v38 = [v36 objectID];
        v39 = [v34 indexOfObject_];

        if (v46 < v39)
        {
          v40 = v30 == v33;
          v5 = v29;
          if (!v40)
          {
            *v29 = *v43;
          }

          v14 = v44;
          if (v50 <= v44 || (v6 = v43, v43 <= v48))
          {
            v6 = v43;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v30 != v50)
        {
          *v29 = *v28;
        }

        v27 = v29 - 2;
        v50 = v28;
        v6 = v33;
      }

      while (v28 > v44);
      v50 = v28;
      v14 = v44;
    }
  }

  else
  {
    v14 = a4;
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v50 = &v14[2 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v42 = v5;
      while (1)
      {
        v47 = v6;
        v15 = *v6;
        v16 = *v14;
        v17 = *(a5 + 104);
        v18 = v15;

        v19 = v16;

        v20 = v14;
        v21 = [v18 objectID];
        v45 = [v17 indexOfObject_];

        v22 = [v19 objectID];
        v23 = [v17 indexOfObject_];

        if (v45 >= v23)
        {
          break;
        }

        v24 = v47;
        v6 = v47 + 2;
        v14 = v20;
        if (v7 != v47)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 2;
        if (v14 >= v50 || v6 >= v42)
        {
          goto LABEL_19;
        }
      }

      v24 = v20;
      v14 = v20 + 2;
      v6 = v47;
      if (v7 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = *v24;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v14 || v6 >= (v14 + ((v50 - v14 + (v50 - v14 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v14, 16 * ((v50 - v14) / 16));
  }

  return 1;
}

uint64_t sub_23019C464(char **a1, void **a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_2302A36A0(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_23019C078(__dst, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_23019C60C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v128 = MEMORY[0x277D84F90];
  if (v8 >= 1)
  {
    swift_retain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v119 = a5;
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v20 = v9 + 1;
      }

      else
      {
        v107 = v6;
        v109 = 16 * v9;
        v11 = (*a3 + 16 * v9);
        v12 = *v11;
        v13 = *(a5 + 104);
        v14 = *(*a3 + 16 * (v9 + 1));

        v15 = v12;

        v16 = [v14 objectID];
        v121 = [v13 indexOfObject_];

        v17 = [v15 objectID];
        v112 = v13;
        v114 = [v13 indexOfObject_];

        v105 = v9;
        v18 = v9 + 2;
        v19 = v11 + 3;
        while (1)
        {
          v20 = v8;
          if (v8 == v18)
          {
            break;
          }

          v21 = v19 + 2;
          v22 = *(v19 - 1);
          v23 = v19[1];

          v24 = v22;

          v25 = [v23 objectID];
          v123 = [v112 indexOfObject_];

          v26 = [v24 objectID];
          v27 = [v112 indexOfObject_];

          ++v18;
          v19 = v21;
          a5 = v119;
          if (v121 < v114 == v123 >= v27)
          {
            v20 = v18 - 1;
            break;
          }
        }

        v9 = v105;
        v6 = v107;
        v28 = v109;
        if (v121 < v114)
        {
          if (v20 < v105)
          {
            goto LABEL_113;
          }

          if (v105 < v20)
          {
            v29 = 16 * v20 - 16;
            v30 = v20;
            v31 = v105;
            do
            {
              if (v31 != --v30)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_118;
                }

                v32 = *(v33 + v28);
                *(v33 + v28) = *(v33 + v29);
                *(v33 + v29) = v32;
              }

              ++v31;
              v29 -= 16;
              v28 += 16;
            }

            while (v31 < v30);
          }
        }
      }

      v34 = a3[1];
      if (v20 >= v34)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v20, v9))
      {
        goto LABEL_112;
      }

      if (v20 - v9 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_114;
      }

      if (v9 + a4 >= v34)
      {
        v35 = a3[1];
      }

      else
      {
        v35 = v9 + a4;
      }

      if (v35 < v9)
      {
LABEL_115:
        __break(1u);
LABEL_116:

        __break(1u);
LABEL_117:

        __break(1u);
LABEL_118:

        __break(1u);
LABEL_119:

        __break(1u);
        goto LABEL_120;
      }

      if (v20 == v35)
      {
LABEL_28:
        v36 = v20;
        if (v20 < v9)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v117 = v10;
        v106 = v9;
        v122 = *(a5 + 104);
        v125 = *a3;
        v91 = *a3 + 16 * v20 - 16;
        v92 = (v9 - v20);
        v111 = v35;
        do
        {
          v120 = v20;
          v93 = *(v125 + 16 * v20);
          v113 = v92;
          v115 = v91;
          do
          {
            v94 = *v91;
            v95 = v93;

            v96 = v94;

            v97 = [v95 objectID];
            v127 = [v122 indexOfObject_];

            v98 = [v96 objectID];
            v99 = [v122 indexOfObject_];

            if (v127 >= v99)
            {
              break;
            }

            if (!v125)
            {
              goto LABEL_116;
            }

            v100 = *v91;
            v93 = *(v91 + 16);
            *v91 = v93;
            *(v91 + 16) = v100;
            v91 -= 16;
          }

          while (!__CFADD__(v92++, 1));
          v20 = v120 + 1;
          v91 = v115 + 16;
          v92 = v113 - 1;
          v36 = v111;
        }

        while (v120 + 1 != v111);
        v9 = v106;
        a5 = v119;
        v10 = v117;
        if (v111 < v106)
        {
          goto LABEL_111;
        }
      }

      v110 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_23007EA34(0, *(v10 + 2) + 1, 1, v10);
      }

      v38 = *(v10 + 2);
      v37 = *(v10 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v10 = sub_23007EA34((v37 > 1), v38 + 1, 1, v10);
      }

      *(v10 + 2) = v39;
      v40 = v10 + 32;
      v41 = &v10[16 * v38 + 32];
      *v41 = v9;
      *(v41 + 1) = v110;
      v126 = *a1;
      if (!*a1)
      {
        goto LABEL_119;
      }

      if (v38)
      {
        v124 = v10 + 32;
        v116 = v10;
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_49:
            if (v46)
            {
              goto LABEL_101;
            }

            v59 = &v10[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_103;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_106;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_108;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          if (v39 < 2)
          {
            goto LABEL_109;
          }

          v69 = &v10[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_64:
          if (v64)
          {
            goto LABEL_105;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_107;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_71:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
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
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v80 = *a3;
          if (!*a3)
          {
            goto LABEL_117;
          }

          v81 = v6;
          v82 = &v40[16 * v42 - 16];
          v83 = *v82;
          v84 = v42;
          v85 = &v40[16 * v42];
          v86 = *(v85 + 1);
          v87 = (v80 + 16 * *v82);
          v88 = (v80 + 16 * *v85);
          v89 = (v80 + 16 * v86);
          a5 = v119;

          sub_23019C078(v87, v88, v89, v126, v119);
          v6 = v81;
          if (v81)
          {

            goto LABEL_93;
          }

          v10 = v116;
          if (v86 < v83)
          {
            goto LABEL_96;
          }

          v90 = *(v116 + 2);
          if (v84 > v90)
          {
            goto LABEL_97;
          }

          *v82 = v83;
          *(v82 + 1) = v86;
          if (v84 >= v90)
          {
            goto LABEL_98;
          }

          v39 = v90 - 1;
          memmove(v85, v85 + 16, 16 * (v90 - 1 - v84));
          *(v116 + 2) = v90 - 1;
          v40 = v124;
          if (v90 <= 2)
          {
            goto LABEL_3;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_99;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_100;
        }

        v54 = &v10[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_102;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_104;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_110;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_49;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v110;
      if (v110 >= v8)
      {
        v128 = v10;
        goto LABEL_91;
      }
    }
  }

  swift_retain_n();
LABEL_91:
  v102 = *a1;
  if (*a1)
  {

    sub_23019C464(&v128, v102, a3, a5);

LABEL_93:
  }

  else
  {
LABEL_120:

    __break(1u);
  }

  return result;
}

void sub_23019CE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v20 = *(a5 + 104);
    v5 = *a4 + 16 * a3 - 16;
    v6 = a1 - a3;
LABEL_5:
    v18 = v5;
    v19 = a3;
    v7 = *(v22 + 16 * a3);
    v17 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = v7;

      v10 = v8;

      v11 = [v9 objectID];
      v21 = [v20 indexOfObject_];

      v12 = [v10 objectID];
      v13 = [v20 indexOfObject_];

      if (v21 >= v13)
      {
LABEL_4:
        a3 = v19 + 1;
        v5 = v18 + 16;
        v6 = v17 - 1;
        if (v19 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v14 = *v5;
      v7 = *(v5 + 16);
      *v5 = v7;
      *(v5 + 16) = v14;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23019CFB8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_230310E48();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_23030FD48();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_23019C60C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_23019CE30(0, v4, 1, a1, a2);
  }
}

uint64_t sub_23019D100(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2302A3830(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_23019CFB8(v7, a2);

  *a1 = v4;
}

uint64_t sub_23019D1A4(uint64_t a1, void *a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v50 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v49 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v51 = 0;
    v4 = (a1 + 72);
    do
    {
      v6 = *(v4 - 3);
      v7 = *v4;

      v8 = sub_23030F8B8();
      if (v6 == 2 && (v51 & 1) != 0)
      {
        v9 = [v50 _addTestOnlyNonPrimaryCKAccountWithName_accountObjectID_];

        v10 = 1;
      }

      else
      {
        v9 = [v50 __addAccountWithType_name_];

        v10 = (v6 == 2) | v51;
      }

      v51 = v10;
      v11 = v9;
      if (v7)
      {
        v12 = sub_23030F8B8();
        [v11 setExternalIdentifier_];
      }

      v4 += 6;
      v5 = [v11 objectID];
      [v49 addObject_];

      --v3;
    }

    while (v3);
  }

  v53[0] = 0;
  v13 = [v50 saveSynchronouslyWithError_];
  v14 = v53[0];
  if (!v13 || (v53[0] = 0, v15 = v14, v16 = [a2 fetchAccountsWithError_], v14 = v53[0], !v16))
  {
    v22 = v14;
    sub_23030E808();

    swift_willThrow();
    return v22;
  }

  v17 = v16;
  sub_23004CBA4(0, &qword_27DB145D8);
  isUniquelyReferenced_nonNull_native = sub_23030FCD8();
  v19 = v14;

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_38:
    v20 = sub_2303106D8();
    if (v20)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

  v20 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_39:
    v22 = MEMORY[0x277D84F98];
LABEL_40:

    return v22;
  }

LABEL_14:
  v21 = 0;
  v47 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8);
  v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v22 = MEMORY[0x277D84F98];
  v45 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v48)
    {
      v25 = MEMORY[0x231912650](v21, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v21 >= v47[2])
      {
        goto LABEL_35;
      }

      v25 = *(isUniquelyReferenced_nonNull_native + 8 * v21 + 32);
    }

    v26 = v25;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v52 = v21 + 1;
    v27 = [v25 name];
    v28 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v30 = v29;

    v31 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v22;
    v33 = sub_23005EE00(v28, v30);
    v34 = v22[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_36;
    }

    v37 = v32;
    if (v22[3] < v36)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v32)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_23008AD48();
      if (v37)
      {
LABEL_15:

        v22 = v53[0];
        v23 = *(v53[0] + 56);
        v24 = *(v23 + 8 * v33);
        *(v23 + 8 * v33) = v31;

        goto LABEL_16;
      }
    }

LABEL_28:
    v22 = v53[0];
    *(v53[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v40 = (v22[6] + 16 * v33);
    *v40 = v28;
    v40[1] = v30;
    *(v22[7] + 8 * v33) = v31;

    v41 = v22[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_37;
    }

    v22[2] = v43;
LABEL_16:
    ++v21;
    isUniquelyReferenced_nonNull_native = v45;
    if (v52 == v20)
    {
      goto LABEL_40;
    }
  }

  sub_2300862D4(v36, isUniquelyReferenced_nonNull_native);
  v38 = sub_23005EE00(v28, v30);
  if ((v37 & 1) == (v39 & 1))
  {
    v33 = v38;
    if (v37)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_23019D6A0(uint64_t a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145E0);
  result = sub_230310B98();
  v3 = 0;
  v29 = a1;
  v30 = result;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v28 = result + 64;
  if (v9)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v12 = v3;
    do
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
    }

    while (!v13);
    v11 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_10:
    v14 = v11 | (v3 << 6);
    v15 = (*(v29 + 48) + 16 * v14);
    v16 = v15[1];
    v32 = *v15;
    v17 = *(*(v29 + 56) + 8 * v14);

    v18 = v17;
    v19 = [v18 store];
    v20 = [v18 objectID];
    v33[0] = 0;
    v21 = [v19 fetchAccountWithObjectID:v20 error:v33];

    if (v21)
    {
      v22 = v33[0];

      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v30;
      v23 = (v30[6] + 16 * v14);
      *v23 = v32;
      v23[1] = v16;
      *(v30[7] + 8 * v14) = v21;
      v24 = v30[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        v30[2] = v26;
        v9 = v31;
        if (!v31)
        {
          continue;
        }

LABEL_4:
        v11 = __clz(__rbit64(v9));
        v31 = (v9 - 1) & v9;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
    }

    break;
  }

  v27 = v33[0];

  sub_23030E808();

  swift_willThrow();
  return v30;
}

void sub_23019D90C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16608);
  v4 = sub_230310B98();
  v5 = v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = a2;
  v35 = v4 + 64;
  v36 = a2 & 0xC000000000000001;
  if ((v11 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v37 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v37 + 56) + 8 * v17);
      v38 = *v18;
      v39 = v20;
      if (v36)
      {
        v21 = v5;
        v22 = v20;

        v23 = sub_230310AC8();

        v5 = v21;
        a2 = v34;
        if (!v23)
        {
          goto LABEL_21;
        }

        sub_23004CBA4(0, &qword_27DB14FE8);
        swift_dynamicCast();
        v24 = v40;
        if (!v40)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *(a2 + 16);
        v26 = v20;

        if (!v25 || (v27 = sub_230059108(v26), (v28 & 1) == 0) || (v24 = *(*(a2 + 56) + 8 * v27)) == 0)
        {
LABEL_21:
          sub_2301A7D5C();
          swift_allocError();
          *v33 = 8;
          swift_willThrow();

          return;
        }
      }

      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v29 = (v5[6] + 16 * v17);
      *v29 = v38;
      v29[1] = v19;
      *(v5[7] + 8 * v17) = v24;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_23;
      }

      v5[2] = v32;
    }

    while (v12);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      return;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23019DBB0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16600);
  v4 = sub_230310B98();
  v5 = v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = a2;
  v35 = v4 + 64;
  v36 = a2 & 0xC000000000000001;
  if ((v11 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v37 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v37 + 56) + 8 * v17);
      v38 = *v18;
      v39 = v20;
      if (v36)
      {
        v21 = v5;
        v22 = v20;

        v23 = sub_230310AC8();

        v5 = v21;
        a2 = v34;
        if (!v23)
        {
          goto LABEL_21;
        }

        sub_23004CBA4(0, &qword_27DB165C8);
        swift_dynamicCast();
        v24 = v40;
        if (!v40)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *(a2 + 16);
        v26 = v20;

        if (!v25 || (v27 = sub_230059108(v26), (v28 & 1) == 0) || (v24 = *(*(a2 + 56) + 8 * v27)) == 0)
        {
LABEL_21:
          sub_2301A7D5C();
          swift_allocError();
          *v33 = 20;
          swift_willThrow();

          return;
        }
      }

      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v29 = (v5[6] + 16 * v17);
      *v29 = v38;
      v29[1] = v19;
      *(v5[7] + 8 * v17) = v24;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_23;
      }

      v5[2] = v32;
    }

    while (v12);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      return;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_23019DE54(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB165F8);
  result = sub_230310B98();
  v4 = 0;
  v32 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v31 = result + 64;
  v34 = result;
  if (v10)
  {
    goto LABEL_4;
  }

  while (2)
  {
    v13 = v4;
    do
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
    }

    while (!v14);
    v12 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_10:
    v15 = v12 | (v4 << 6);
    v16 = (*(v32 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v32 + 56) + 8 * v15);
    v36[0] = 0;

    v20 = v19;
    v21 = [a2 fetchCustomSmartListWithObjectID:v20 error:v36];
    if (v21)
    {
      v22 = v21;
      v23 = v36[0];

      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v34;
      v24 = (v34[6] + 16 * v15);
      *v24 = v18;
      v24[1] = v17;
      *(v34[7] + 8 * v15) = v22;
      v25 = v34[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        v34[2] = v27;
        v10 = v35;
        if (!v35)
        {
          continue;
        }

LABEL_4:
        v12 = __clz(__rbit64(v10));
        v35 = (v10 - 1) & v10;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
    }

    break;
  }

  v28 = v36[0];
  v29 = sub_23030E808();

  swift_willThrow();
  sub_2301A7D5C();
  swift_allocError();
  *v30 = 9;
  swift_willThrow();

  return v34;
}

void sub_23019E0BC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB165F0);
  v4 = sub_230310B98();
  v5 = v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = a2;
  v35 = v4 + 64;
  v36 = a2 & 0xC000000000000001;
  if ((v11 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v37 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v37 + 56) + 8 * v17);
      v38 = *v18;
      v39 = v20;
      if (v36)
      {
        v21 = v5;
        v22 = v20;

        v23 = sub_230310AC8();

        v5 = v21;
        a2 = v34;
        if (!v23)
        {
          goto LABEL_21;
        }

        sub_23004CBA4(0, &qword_280C96EB0);
        swift_dynamicCast();
        v24 = v40;
        if (!v40)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *(a2 + 16);
        v26 = v20;

        if (!v25 || (v27 = sub_230059108(v26), (v28 & 1) == 0) || (v24 = *(*(a2 + 56) + 8 * v27)) == 0)
        {
LABEL_21:
          sub_2301A7D5C();
          swift_allocError();
          *v33 = 21;
          swift_willThrow();

          return;
        }
      }

      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v29 = (v5[6] + 16 * v17);
      *v29 = v38;
      v29[1] = v19;
      *(v5[7] + 8 * v17) = v24;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_23;
      }

      v5[2] = v32;
    }

    while (v12);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      return;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_23019E360(uint64_t a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB165E8);
  result = sub_230310B98();
  v6 = 0;
  v30 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v29 = result + 64;
  v32 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v30 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v35 = *(*(v30 + 56) + 8 * v17);
      v21 = v35;

      v22 = v21;
      sub_230192FBC(&v35, a2, &v33);

      if (v3)
      {
        break;
      }

      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v32;
      v23 = (v32[6] + 16 * v17);
      *v23 = v19;
      v23[1] = v20;
      v24 = v32[7] + 24 * v17;
      v25 = v34;
      *v24 = v33;
      *(v24 + 16) = v25;
      v26 = v32[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_17;
      }

      v32[2] = v28;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v32;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_23019E52C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145C0);
  v4 = sub_230310B98();
  v5 = v4;
  v6 = 0;
  v37 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = a2;
  v35 = v4 + 64;
  v36 = a2 & 0xC000000000000001;
  if ((v11 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v37 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(v37 + 56) + 8 * v17);
      v38 = *v18;
      v39 = v20;
      if (v36)
      {
        v21 = v5;
        v22 = v20;

        v23 = sub_230310AC8();

        v5 = v21;
        a2 = v34;
        if (!v23)
        {
          goto LABEL_21;
        }

        sub_23004CBA4(0, &qword_27DB14808);
        swift_dynamicCast();
        v24 = v40;
        if (!v40)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = *(a2 + 16);
        v26 = v20;

        if (!v25 || (v27 = sub_230059108(v26), (v28 & 1) == 0) || (v24 = *(*(a2 + 56) + 8 * v27)) == 0)
        {
LABEL_21:
          sub_2301A7D5C();
          swift_allocError();
          *v33 = 12;
          swift_willThrow();

          return;
        }
      }

      *(v35 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v29 = (v5[6] + 16 * v17);
      *v29 = v38;
      v29[1] = v19;
      *(v5[7] + 8 * v17) = v24;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_23;
      }

      v5[2] = v32;
    }

    while (v12);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v13)
    {
      return;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_23019E990(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = v1;
  }

  return result;
}

void *sub_23019E9DC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23019EA28(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(result + 96) & 0x10101;
  *(result + 72) &= 1uLL;
  *(result + 96) = v2;
  *(result + 120) = v1 & 1 | 0x40;
  return result;
}

uint64_t sub_23019EA94(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(result + 96) & 0x10101;
  *(result + 72) &= 1uLL;
  *(result + 96) = v2;
  *(result + 120) = v1 & 1 | 0xC0;
  return result;
}

uint64_t sub_23019EB08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23019EB90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23019EC00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23019EC64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23019ECCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23019ED2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t destroy for REMTestStorePopulator.TestAccount()
{
}

void *initializeWithCopy for REMTestStorePopulator.TestAccount(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;

  return a1;
}

void *assignWithCopy for REMTestStorePopulator.TestAccount(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  return a1;
}

void *assignWithTake for REMTestStorePopulator.TestAccount(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  return a1;
}

id sub_23019F06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v17 = a16 >> 6;
  if (v17 <= 1)
  {
    if (!v17)
    {

      v18 = a7;
      v19 = a8;
    }

    goto LABEL_8;
  }

  if (v17 != 2)
  {
LABEL_8:
  }

  v20 = a9;

  v21 = a7;

  return a8;
}

void sub_23019F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v18 = a16 >> 6;

  if (v18 <= 1)
  {
    if (!v18)
    {
    }

    goto LABEL_8;
  }

  if (v18 != 2)
  {
LABEL_8:

    return;
  }
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

uint64_t sub_23019F378(uint64_t result, char a2)
{
  v2 = *(result + 96) & 0x10101;
  v3 = *(result + 120) & 1;
  *(result + 72) &= 1uLL;
  *(result + 96) = v2;
  *(result + 120) = v3 | (a2 << 6);
  return result;
}

uint64_t destroy for REMTestStorePopulator.TestList(uint64_t a1)
{
}

uint64_t initializeWithCopy for REMTestStorePopulator.TestList(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v8;
  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  v10 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v10;
  *(a1 + 120) = *(a2 + 120);

  v11 = v6;
  v12 = v7;

  return a1;
}

uint64_t assignWithCopy for REMTestStorePopulator.TestList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = v5;

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = v8;

  v10 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v10;
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.TestList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  v8 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v8;

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for REMTestStorePopulator.TestList.ListChild(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
      v10 = *(v9 + 24);
      v11 = sub_23030EB58();
      v12 = *(v11 - 8);
      v13 = *(v12 + 48);

      if (v13(&a2[v10], 1, v11))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v10], &a2[v10], *(*(v14 - 8) + 64));
      }

      else
      {
        (*(v12 + 16))(&a1[v10], &a2[v10], v11);
        (*(v12 + 56))(&a1[v10], 0, 1, v11);
      }

      *&a1[*(v9 + 28)] = *&a2[*(v9 + 28)];
    }

    else
    {
      v16 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
      v17 = v16[6];
      v18 = sub_23030E758();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);

      v55 = v19;
      if (v20(&a2[v17], 1, v18))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v17], &a2[v17], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v19 + 16))(&a1[v17], &a2[v17], v18);
        (*(v19 + 56))(&a1[v17], 0, 1, v18);
      }

      a1[v16[7]] = a2[v16[7]];
      a1[v16[8]] = a2[v16[8]];
      v22 = v16[9];
      v23 = sub_23030EB58();
      v24 = *(v23 - 8);
      v25 = *(v24 + 48);
      if (v25(&a2[v22], 1, v23))
      {
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v22], &a2[v22], *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v24 + 16))(&a1[v22], &a2[v22], v23);
        (*(v24 + 56))(&a1[v22], 0, 1, v23);
      }

      v27 = v16[10];
      if (v25(&a2[v27], 1, v23))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v27], &a2[v27], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v24 + 16))(&a1[v27], &a2[v27], v23);
        (*(v24 + 56))(&a1[v27], 0, 1, v23);
      }

      a1[v16[11]] = a2[v16[11]];
      *&a1[v16[12]] = *&a2[v16[12]];
      v29 = v16[13];
      v30 = *&a2[v29];
      *&a1[v29] = v30;
      v31 = v16[14];
      v32 = &a1[v31];
      v33 = &a2[v31];
      v34 = *&a2[v31 + 8];
      v35 = v30;
      v57 = v18;
      if (v34)
      {
        *v32 = *v33;
        *(v32 + 1) = v34;
        v36 = *(v33 + 2);
        v37 = *(v33 + 3);
        *(v32 + 2) = v36;
        *(v32 + 3) = v37;
      }

      else
      {
        v38 = *(v33 + 1);
        *v32 = *v33;
        *(v32 + 1) = v38;
      }

      *&a1[v16[15]] = *&a2[v16[15]];
      *&a1[v16[16]] = *&a2[v16[16]];
      *&a1[v16[17]] = *&a2[v16[17]];
      *&a1[v16[18]] = *&a2[v16[18]];
      v39 = v16[19];
      v40 = v16;
      v41 = *&a2[v39];
      *&a1[v39] = v41;
      v42 = v40[20];
      v43 = *&a2[v42];
      *&a1[v42] = v43;
      v44 = v40[21];
      v45 = *&a2[v44];
      *&a1[v44] = v45;
      *&a1[v40[22]] = *&a2[v40[22]];
      *&a1[v40[23]] = *&a2[v40[23]];
      v58 = v40;
      v56 = v40[24];

      v46 = v41;
      v47 = v43;
      v48 = v45;

      if (v20(&a2[v56], 1, v57))
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v56], &a2[v56], *(*(v49 - 8) + 64));
      }

      else
      {
        (*(v55 + 16))(&a1[v56], &a2[v56], v57);
        (*(v55 + 56))(&a1[v56], 0, 1, v57);
      }

      v50 = v58[25];
      v51 = sub_23030EBB8();
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(&a2[v50], 1, v51))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
        memcpy(&a1[v50], &a2[v50], *(*(v53 - 8) + 64));
      }

      else
      {
        (*(v52 + 16))(&a1[v50], &a2[v50], v51);
        (*(v52 + 56))(&a1[v50], 0, 1, v51);
      }

      *&a1[v58[26]] = *&a2[v58[26]];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for REMTestStorePopulator.TestList.ListChild(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(type metadata accessor for REMTestStorePopulator.TestListSection(0) + 24);
    v4 = sub_23030EB58();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(a1 + v3, 1, v4))
    {
      (*(v5 + 8))(a1 + v3, v4);
    }
  }

  else
  {
    v6 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
    v7 = v6[6];
    v8 = sub_23030E758();
    v9 = *(v8 - 8);
    v20 = *(v9 + 48);
    if (!v20(a1 + v7, 1, v8))
    {
      (*(v9 + 8))(a1 + v7, v8);
    }

    v10 = v6[9];
    v11 = sub_23030EB58();
    v12 = *(v11 - 8);
    v13 = *(v12 + 48);
    if (!v13(a1 + v10, 1, v11))
    {
      (*(v12 + 8))(a1 + v10, v11);
    }

    v14 = v6[10];
    if (!v13(a1 + v14, 1, v11))
    {
      (*(v12 + 8))(a1 + v14, v11);
    }

    if (*(a1 + v6[14] + 8))
    {
    }

    v15 = v6[24];
    if (!v20(a1 + v15, 1, v8))
    {
      (*(v9 + 8))(a1 + v15, v8);
    }

    v16 = v6[25];
    v17 = sub_23030EBB8();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(a1 + v16, 1, v17))
    {
      (*(v18 + 8))(a1 + v16, v17);
    }
  }
}

char *initializeWithCopy for REMTestStorePopulator.TestList.ListChild(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
    v8 = *(v7 + 24);
    v9 = sub_23030EB58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
    }

    v19 = (v7 + 28);
  }

  else
  {
    v13 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
    v14 = v13[6];
    v15 = sub_23030E758();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);

    v53 = v16;
    if (v17(&a2[v14], 1, v15))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&a1[v14], &a2[v14], *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&a1[v14], &a2[v14], v15);
      (*(v16 + 56))(&a1[v14], 0, 1, v15);
    }

    a1[v13[7]] = a2[v13[7]];
    a1[v13[8]] = a2[v13[8]];
    v20 = v13[9];
    v21 = sub_23030EB58();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (v23(&a2[v20], 1, v21))
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v20], &a2[v20], *(*(v24 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(&a1[v20], &a2[v20], v21);
      (*(v22 + 56))(&a1[v20], 0, 1, v21);
    }

    v25 = v13[10];
    if (v23(&a2[v25], 1, v21))
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v25], &a2[v25], *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v22 + 16))(&a1[v25], &a2[v25], v21);
      (*(v22 + 56))(&a1[v25], 0, 1, v21);
    }

    a1[v13[11]] = a2[v13[11]];
    *&a1[v13[12]] = *&a2[v13[12]];
    v27 = v13[13];
    v28 = *&a2[v27];
    *&a1[v27] = v28;
    v29 = v13[14];
    v30 = &a1[v29];
    v31 = &a2[v29];
    v32 = *&a2[v29 + 8];
    v33 = v28;
    v55 = v15;
    if (v32)
    {
      *v30 = *v31;
      *(v30 + 1) = v32;
      v34 = *(v31 + 2);
      v35 = *(v31 + 3);
      *(v30 + 2) = v34;
      *(v30 + 3) = v35;
    }

    else
    {
      v36 = *(v31 + 1);
      *v30 = *v31;
      *(v30 + 1) = v36;
    }

    *&a1[v13[15]] = *&a2[v13[15]];
    *&a1[v13[16]] = *&a2[v13[16]];
    *&a1[v13[17]] = *&a2[v13[17]];
    *&a1[v13[18]] = *&a2[v13[18]];
    v37 = v13[19];
    v38 = *&a2[v37];
    *&a1[v37] = v38;
    v39 = v13[20];
    v40 = *&a2[v39];
    *&a1[v39] = v40;
    v41 = v13[21];
    v42 = v13;
    v43 = *&a2[v41];
    *&a1[v41] = v43;
    *&a1[v42[22]] = *&a2[v42[22]];
    *&a1[v42[23]] = *&a2[v42[23]];
    v56 = v42;
    v54 = v42[24];

    v44 = v38;
    v45 = v40;
    v46 = v43;

    if (v17(&a2[v54], 1, v55))
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&a1[v54], &a2[v54], *(*(v47 - 8) + 64));
    }

    else
    {
      (*(v53 + 16))(&a1[v54], &a2[v54], v55);
      (*(v53 + 56))(&a1[v54], 0, 1, v55);
    }

    v48 = v56[25];
    v49 = sub_23030EBB8();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(&a2[v48], 1, v49))
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(&a1[v48], &a2[v48], *(*(v51 - 8) + 64));
    }

    else
    {
      (*(v50 + 16))(&a1[v48], &a2[v48], v49);
      (*(v50 + 56))(&a1[v48], 0, 1, v49);
    }

    v19 = v56 + 26;
  }

  *&a1[*v19] = *&a2[*v19];

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithCopy for REMTestStorePopulator.TestList.ListChild(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_23019ECCC(a1, type metadata accessor for REMTestStorePopulator.TestList.ListChild);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = *(a2 + 3);
    if (EnumCaseMultiPayload == 1)
    {
      v5 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
      v6 = *(v5 + 24);
      v7 = sub_23030EB58();
      v8 = *(v7 - 8);
      v9 = *(v8 + 48);

      if (v9(&a2[v6], 1, v7))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v8 + 16))(&a1[v6], &a2[v6], v7);
        (*(v8 + 56))(&a1[v6], 0, 1, v7);
      }

      v17 = (v5 + 28);
    }

    else
    {
      v11 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
      v12 = v11[6];
      v13 = sub_23030E758();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);

      v49 = v14;
      if (v15(&a2[v12], 1, v13))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v12], &a2[v12], *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v14 + 16))(&a1[v12], &a2[v12], v13);
        (*(v14 + 56))(&a1[v12], 0, 1, v13);
      }

      a1[v11[7]] = a2[v11[7]];
      a1[v11[8]] = a2[v11[8]];
      v18 = v11[9];
      v19 = sub_23030EB58();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      if (v21(&a2[v18], 1, v19))
      {
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v18], &a2[v18], *(*(v22 - 8) + 64));
      }

      else
      {
        (*(v20 + 16))(&a1[v18], &a2[v18], v19);
        (*(v20 + 56))(&a1[v18], 0, 1, v19);
      }

      v23 = v11[10];
      if (v21(&a2[v23], 1, v19))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v23], &a2[v23], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v20 + 16))(&a1[v23], &a2[v23], v19);
        (*(v20 + 56))(&a1[v23], 0, 1, v19);
      }

      a1[v11[11]] = a2[v11[11]];
      *&a1[v11[12]] = *&a2[v11[12]];
      v25 = v11[13];
      v26 = *&a2[v25];
      *&a1[v25] = v26;
      v27 = v11[14];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = *&a2[v27 + 8];
      v31 = v26;
      v51 = v13;
      if (v30)
      {
        *v28 = *v29;
        *(v28 + 1) = *(v29 + 1);
        *(v28 + 2) = *(v29 + 2);
        *(v28 + 3) = *(v29 + 3);
      }

      else
      {
        v32 = *(v29 + 1);
        *v28 = *v29;
        *(v28 + 1) = v32;
      }

      *&a1[v11[15]] = *&a2[v11[15]];
      *&a1[v11[16]] = *&a2[v11[16]];
      *&a1[v11[17]] = *&a2[v11[17]];
      *&a1[v11[18]] = *&a2[v11[18]];
      v33 = v11[19];
      v34 = *&a2[v33];
      *&a1[v33] = v34;
      v35 = v11[20];
      v36 = *&a2[v35];
      *&a1[v35] = v36;
      v37 = v11[21];
      v38 = v11;
      v39 = *&a2[v37];
      *&a1[v37] = v39;
      *&a1[v38[22]] = *&a2[v38[22]];
      *&a1[v38[23]] = *&a2[v38[23]];
      v52 = v38;
      v50 = v38[24];

      v40 = v34;
      v41 = v36;
      v42 = v39;

      if (v15(&a2[v50], 1, v51))
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v50], &a2[v50], *(*(v43 - 8) + 64));
      }

      else
      {
        (*(v49 + 16))(&a1[v50], &a2[v50], v51);
        (*(v49 + 56))(&a1[v50], 0, 1, v51);
      }

      v44 = v52[25];
      v45 = sub_23030EBB8();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(&a2[v44], 1, v45))
      {
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
        memcpy(&a1[v44], &a2[v44], *(*(v47 - 8) + 64));
      }

      else
      {
        (*(v46 + 16))(&a1[v44], &a2[v44], v45);
        (*(v46 + 56))(&a1[v44], 0, 1, v45);
      }

      v17 = v52 + 26;
    }

    *&a1[*v17] = *&a2[*v17];

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for REMTestStorePopulator.TestList.ListChild(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
    v7 = *(v6 + 24);
    v8 = sub_23030EB58();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(&a2[v7], 1, v8))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(&a1[v7], &a2[v7], v8);
      (*(v9 + 56))(&a1[v7], 0, 1, v8);
    }

    v16 = (v6 + 28);
  }

  else
  {
    v11 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
    v12 = v11[6];
    v13 = sub_23030E758();
    v14 = *(v13 - 8);
    v35 = *(v14 + 48);
    v36 = v14;
    if (v35(&a2[v12], 1, v13))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(&a1[v12], &a2[v12], v13);
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
    }

    a1[v11[7]] = a2[v11[7]];
    a1[v11[8]] = a2[v11[8]];
    v17 = v11[9];
    v18 = sub_23030EB58();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if (v20(&a2[v17], 1, v18))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v17], &a2[v17], *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v19 + 32))(&a1[v17], &a2[v17], v18);
      (*(v19 + 56))(&a1[v17], 0, 1, v18);
    }

    v22 = v11[10];
    if (v20(&a2[v22], 1, v18))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v19 + 32))(&a1[v22], &a2[v22], v18);
      (*(v19 + 56))(&a1[v22], 0, 1, v18);
    }

    a1[v11[11]] = a2[v11[11]];
    *&a1[v11[12]] = *&a2[v11[12]];
    *&a1[v11[13]] = *&a2[v11[13]];
    v24 = v11[14];
    v25 = &a1[v24];
    v26 = &a2[v24];
    v27 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v27;
    *&a1[v11[15]] = *&a2[v11[15]];
    *&a1[v11[16]] = *&a2[v11[16]];
    *&a1[v11[17]] = *&a2[v11[17]];
    *&a1[v11[18]] = *&a2[v11[18]];
    *&a1[v11[19]] = *&a2[v11[19]];
    *&a1[v11[20]] = *&a2[v11[20]];
    *&a1[v11[21]] = *&a2[v11[21]];
    *&a1[v11[22]] = *&a2[v11[22]];
    *&a1[v11[23]] = *&a2[v11[23]];
    v28 = v11[24];
    if (v35(&a2[v28], 1, v13))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&a1[v28], &a2[v28], *(*(v29 - 8) + 64));
    }

    else
    {
      (*(v36 + 32))(&a1[v28], &a2[v28], v13);
      (*(v36 + 56))(&a1[v28], 0, 1, v13);
    }

    v30 = v11[25];
    v31 = sub_23030EBB8();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(&a2[v30], 1, v31))
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(&a1[v30], &a2[v30], *(*(v33 - 8) + 64));
    }

    else
    {
      (*(v32 + 32))(&a1[v30], &a2[v30], v31);
      (*(v32 + 56))(&a1[v30], 0, 1, v31);
    }

    v16 = v11 + 26;
  }

  *&a1[*v16] = *&a2[*v16];
  swift_storeEnumTagMultiPayload();
  return a1;
}

char *assignWithTake for REMTestStorePopulator.TestList.ListChild(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_23019ECCC(a1, type metadata accessor for REMTestStorePopulator.TestList.ListChild);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = type metadata accessor for REMTestStorePopulator.TestListSection(0);
      v7 = *(v6 + 24);
      v8 = sub_23030EB58();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
      }

      else
      {
        (*(v9 + 32))(&a1[v7], &a2[v7], v8);
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
      }

      v16 = (v6 + 28);
    }

    else
    {
      v11 = type metadata accessor for REMTestStorePopulator.TestReminder(0);
      v12 = v11[6];
      v13 = sub_23030E758();
      v14 = *(v13 - 8);
      v35 = *(v14 + 48);
      v36 = v14;
      if (v35(&a2[v12], 1, v13))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(v14 + 32))(&a1[v12], &a2[v12], v13);
        (*(v14 + 56))(&a1[v12], 0, 1, v13);
      }

      a1[v11[7]] = a2[v11[7]];
      a1[v11[8]] = a2[v11[8]];
      v17 = v11[9];
      v18 = sub_23030EB58();
      v19 = *(v18 - 8);
      v20 = *(v19 + 48);
      if (v20(&a2[v17], 1, v18))
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v17], &a2[v17], *(*(v21 - 8) + 64));
      }

      else
      {
        (*(v19 + 32))(&a1[v17], &a2[v17], v18);
        (*(v19 + 56))(&a1[v17], 0, 1, v18);
      }

      v22 = v11[10];
      if (v20(&a2[v22], 1, v18))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
        memcpy(&a1[v22], &a2[v22], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(v19 + 32))(&a1[v22], &a2[v22], v18);
        (*(v19 + 56))(&a1[v22], 0, 1, v18);
      }

      a1[v11[11]] = a2[v11[11]];
      *&a1[v11[12]] = *&a2[v11[12]];
      *&a1[v11[13]] = *&a2[v11[13]];
      v24 = v11[14];
      v25 = &a1[v24];
      v26 = &a2[v24];
      v27 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v27;
      *&a1[v11[15]] = *&a2[v11[15]];
      *&a1[v11[16]] = *&a2[v11[16]];
      *&a1[v11[17]] = *&a2[v11[17]];
      *&a1[v11[18]] = *&a2[v11[18]];
      *&a1[v11[19]] = *&a2[v11[19]];
      *&a1[v11[20]] = *&a2[v11[20]];
      *&a1[v11[21]] = *&a2[v11[21]];
      *&a1[v11[22]] = *&a2[v11[22]];
      *&a1[v11[23]] = *&a2[v11[23]];
      v28 = v11[24];
      if (v35(&a2[v28], 1, v13))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
        memcpy(&a1[v28], &a2[v28], *(*(v29 - 8) + 64));
      }

      else
      {
        (*(v36 + 32))(&a1[v28], &a2[v28], v13);
        (*(v36 + 56))(&a1[v28], 0, 1, v13);
      }

      v30 = v11[25];
      v31 = sub_23030EBB8();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(&a2[v30], 1, v31))
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
        memcpy(&a1[v30], &a2[v30], *(*(v33 - 8) + 64));
      }

      else
      {
        (*(v32 + 32))(&a1[v30], &a2[v30], v31);
        (*(v32 + 56))(&a1[v30], 0, 1, v31);
      }

      v16 = v11 + 26;
    }

    *&a1[*v16] = *&a2[*v16];
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_2301A1CF0()
{
  result = type metadata accessor for REMTestStorePopulator.TestReminder(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMTestStorePopulator.TestListSection(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t destroy for REMTestStorePopulator.TestSharee()
{

  return sub_230124A18();
}

uint64_t initializeWithCopy for REMTestStorePopulator.TestSharee(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);

  sub_230124A00();
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for REMTestStorePopulator.TestSharee(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  sub_230124A00();
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  sub_230124A18();
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.TestSharee(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  sub_230124A18();
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestSharee(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestSharee(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for REMTestStorePopulator.TestGroup()
{
}

void *sub_2301A2084(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for REMTestStorePopulator.TestGroup(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.TestGroup(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2301A220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a16 < 0)
  {
    v20 = a9;

    v21 = a7;

    return a8;
  }

  else
  {

    v17 = a7;
    v18 = a8;
  }
}

void sub_2301A2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{

  if (a16 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_2301A2480(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v15 = a2[9];
  v16 = a2[10];
  v17 = a2[11];
  v18 = a2[12];
  v19 = a2[13];
  v20 = a2[14];
  v21 = *(a2 + 120);
  a4(*a2, v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v15;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = v20;
  *(a1 + 120) = v21;
  return a1;
}

uint64_t *sub_2301A25A8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, uint64_t, int))
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[8];
  v30 = a2[9];
  v31 = a2[10];
  v32 = a2[11];
  v33 = a2[12];
  v34 = a2[13];
  v35 = a2[14];
  v36 = *(a2 + 120);
  a4(*a2, v7, v8, v9, v10, v11, v12, v13, v14, v30, v31, v32, v33, v34, v35, v36);
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1[5];
  v21 = a1[6];
  v22 = a1[7];
  v23 = *(a1 + 4);
  v24 = *(a1 + 5);
  v25 = *(a1 + 6);
  v26 = a1[14];
  v27 = *(a1 + 120);
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
  a1[9] = v30;
  a1[10] = v31;
  a1[11] = v32;
  a1[12] = v33;
  a1[13] = v34;
  a1[14] = v35;
  *(a1 + 120) = v36;
  LOBYTE(v29) = v27;
  a5(v15, v16, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v29);
  return a1;
}

uint64_t *sub_2301A26F4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, uint64_t, char))
{
  v6 = *(a2 + 112);
  v7 = *(a2 + 120);
  v8 = *a1;
  v10 = a1[1];
  v9 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  v19 = a1[14];
  v20 = *(a1 + 120);
  v21 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 1) = v21;
  v22 = *(a2 + 48);
  *(a1 + 2) = *(a2 + 32);
  *(a1 + 3) = v22;
  v23 = *(a2 + 80);
  *(a1 + 4) = *(a2 + 64);
  *(a1 + 5) = v23;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = v6;
  *(a1 + 120) = v7;
  v25 = v20;
  a4(v8, v10, v9, v11, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v25);
  return a1;
}

uint64_t sub_2301A2794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2301A27E4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 121) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = 2 * -a2;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 105) = 0u;
      return result;
    }

    *(a1 + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2301A2868(uint64_t result, char a2)
{
  v2 = *(result + 96) & 0x10101;
  v3 = *(result + 120) & 1;
  *(result + 72) &= 1uLL;
  *(result + 96) = v2;
  *(result + 120) = v3 | (a2 << 7);
  return result;
}

uint64_t destroy for REMTestStorePopulator.TestCustomSmartList(id *a1)
{
}

uint64_t initializeWithCopy for REMTestStorePopulator.TestCustomSmartList(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  v9 = v6;
  v10 = v7;
  v11 = v8;

  return a1;
}

uint64_t assignWithCopy for REMTestStorePopulator.TestCustomSmartList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = v5;

  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = v8;

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);
  *(a1 + 64) = v11;
  v12 = v11;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for REMTestStorePopulator.TestCustomSmartList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v7 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestCustomSmartList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestCustomSmartList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for REMTestStorePopulator.TestTemplate(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for REMTestStorePopulator.TestTemplate(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.TestTemplate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestTemplate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for REMTestStorePopulator.TestTemplateContents(id *a1)
{
}

void *sub_2301A2DF0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;

  return a1;
}

uint64_t assignWithCopy for REMTestStorePopulator.TestTemplateContents(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for REMTestStorePopulator.TestTemplateContents(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for REMTestStorePopulator.TestReminder(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = sub_23030E758();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    v54 = v12;
    v52 = v11;
    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    v15 = a3[8];
    v4[a3[7]] = a2[a3[7]];
    v4[v15] = a2[v15];
    v16 = a3[9];
    v17 = sub_23030EB58();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(&a2[v16], 1, v17))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&v4[v16], &a2[v16], *(*(v20 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(&v4[v16], &a2[v16], v17);
      (*(v18 + 56))(&v4[v16], 0, 1, v17);
    }

    v21 = a3[10];
    if (v19(&a2[v21], 1, v17))
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&v4[v21], &a2[v21], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(&v4[v21], &a2[v21], v17);
      (*(v18 + 56))(&v4[v21], 0, 1, v17);
    }

    v23 = a3[12];
    v4[a3[11]] = a2[a3[11]];
    *&v4[v23] = *&a2[v23];
    v24 = a3[13];
    v25 = a3[14];
    v26 = *&a2[v24];
    *&v4[v24] = v26;
    v27 = &v4[v25];
    v28 = &a2[v25];
    v29 = *&a2[v25 + 8];
    v30 = v26;
    v55 = v10;
    if (v29)
    {
      *v27 = *v28;
      *(v27 + 1) = v29;
      v31 = *(v28 + 2);
      v32 = *(v28 + 3);
      *(v27 + 2) = v31;
      *(v27 + 3) = v32;
    }

    else
    {
      v33 = *(v28 + 1);
      *v27 = *v28;
      *(v27 + 1) = v33;
    }

    v34 = a3[16];
    *&v4[a3[15]] = *&a2[a3[15]];
    *&v4[v34] = *&a2[v34];
    v35 = a3[18];
    *&v4[a3[17]] = *&a2[a3[17]];
    *&v4[v35] = *&a2[v35];
    v36 = a3[19];
    v37 = a3[20];
    v38 = *&a2[v36];
    *&v4[v36] = v38;
    v53 = *&a2[v37];
    *&v4[v37] = v53;
    v39 = a3[21];
    v40 = a3[22];
    v41 = *&a2[v39];
    *&v4[v39] = v41;
    *&v4[v40] = *&a2[v40];
    v42 = a3[24];
    *&v4[a3[23]] = *&a2[a3[23]];

    v43 = v38;
    v44 = v53;
    v45 = v41;

    if (v54(&a2[v42], 1, v55))
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
      memcpy(&v4[v42], &a2[v42], *(*(v46 - 8) + 64));
    }

    else
    {
      (*(v52 + 16))(&v4[v42], &a2[v42], v55);
      (*(v52 + 56))(&v4[v42], 0, 1, v55);
    }

    v47 = a3[25];
    v48 = sub_23030EBB8();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(&a2[v47], 1, v48))
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
      memcpy(&v4[v47], &a2[v47], *(*(v50 - 8) + 64));
    }

    else
    {
      (*(v49 + 16))(&v4[v47], &a2[v47], v48);
      (*(v49 + 56))(&v4[v47], 0, 1, v48);
    }

    *&v4[a3[26]] = *&a2[a3[26]];
  }

  return v4;
}

uint64_t destroy for REMTestStorePopulator.TestReminder(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = sub_23030E758();
  v6 = *(v5 - 8);
  v17 = *(v6 + 48);
  if (!v17(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[9];
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(a1 + v7, 1, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v11 = a2[10];
  if (!v10(a1 + v11, 1, v8))
  {
    (*(v9 + 8))(a1 + v11, v8);
  }

  if (*(a1 + a2[14] + 8))
  {
  }

  v12 = a2[24];
  if (!v17(a1 + v12, 1, v5))
  {
    (*(v6 + 8))(a1 + v12, v5);
  }

  v13 = a2[25];
  v14 = sub_23030EBB8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(a1 + v13, 1, v14))
  {
    (*(v15 + 8))(a1 + v13, v14);
  }
}

char *initializeWithCopy for REMTestStorePopulator.TestReminder(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = sub_23030E758();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  v51 = v10;
  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v13 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v13] = a2[v13];
  v14 = a3[9];
  v15 = sub_23030EB58();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(&a2[v14], 1, v15))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v14], &a2[v14], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(&a1[v14], &a2[v14], v15);
    (*(v16 + 56))(&a1[v14], 0, 1, v15);
  }

  v19 = a3[10];
  if (v17(&a2[v19], 1, v15))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v19], &a2[v19], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(&a1[v19], &a2[v19], v15);
    (*(v16 + 56))(&a1[v19], 0, 1, v15);
  }

  v21 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  *&a1[v21] = *&a2[v21];
  v22 = a3[13];
  v23 = a3[14];
  v24 = *&a2[v22];
  *&a1[v22] = v24;
  v25 = &a1[v23];
  v26 = &a2[v23];
  v27 = *&a2[v23 + 8];
  v28 = v24;
  v53 = v9;
  if (v27)
  {
    *v25 = *v26;
    *(v25 + 1) = v27;
    v29 = *(v26 + 2);
    v30 = *(v26 + 3);
    *(v25 + 2) = v29;
    *(v25 + 3) = v30;
  }

  else
  {
    v31 = *(v26 + 1);
    *v25 = *v26;
    *(v25 + 1) = v31;
  }

  v32 = a3[16];
  *&a1[a3[15]] = *&a2[a3[15]];
  *&a1[v32] = *&a2[v32];
  v33 = a3[18];
  *&a1[a3[17]] = *&a2[a3[17]];
  *&a1[v33] = *&a2[v33];
  v34 = a3[19];
  v35 = a3[20];
  v36 = *&a2[v34];
  *&a1[v34] = v36;
  v52 = *&a2[v35];
  *&a1[v35] = v52;
  v37 = a3[21];
  v38 = a3[22];
  v39 = a3;
  v40 = *&a2[v37];
  *&a1[v37] = v40;
  *&a1[v38] = *&a2[v38];
  v41 = v39[24];
  v54 = v39;
  *&a1[v39[23]] = *&a2[v39[23]];

  v42 = v36;
  v43 = v52;
  v44 = v40;

  if (v11(&a2[v41], 1, v53))
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v41], &a2[v41], *(*(v45 - 8) + 64));
  }

  else
  {
    (*(v51 + 16))(&a1[v41], &a2[v41], v53);
    (*(v51 + 56))(&a1[v41], 0, 1, v53);
  }

  v46 = v54[25];
  v47 = sub_23030EBB8();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(&a2[v46], 1, v47))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v46], &a2[v46], *(*(v49 - 8) + 64));
  }

  else
  {
    (*(v48 + 16))(&a1[v46], &a2[v46], v47);
    (*(v48 + 56))(&a1[v46], 0, 1, v47);
  }

  *&a1[v54[26]] = *&a2[v54[26]];

  return a1;
}

char *assignWithCopy for REMTestStorePopulator.TestReminder(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  v6 = a3[6];
  v7 = sub_23030E758();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v58 = v9;
  v11 = v9(&a2[v6], 1, v7);
  v59 = v8;
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  v13 = a3[9];
  v14 = sub_23030EB58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(&a1[v13], 1, v14);
  v18 = v16(&a2[v13], 1, v14);
  if (v17)
  {
    if (!v18)
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v18)
  {
    (*(v15 + 8))(&a1[v13], v14);
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(v15 + 24))(&a1[v13], &a2[v13], v14);
LABEL_13:
  v20 = a3[10];
  v21 = v16(&a1[v20], 1, v14);
  v22 = v16(&a2[v20], 1, v14);
  if (v21)
  {
    if (!v22)
    {
      (*(v15 + 16))(&a1[v20], &a2[v20], v14);
      (*(v15 + 56))(&a1[v20], 0, 1, v14);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v22)
  {
    (*(v15 + 8))(&a1[v20], v14);
LABEL_18:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v20], &a2[v20], *(*(v23 - 8) + 64));
    goto LABEL_19;
  }

  (*(v15 + 24))(&a1[v20], &a2[v20], v14);
LABEL_19:
  a1[a3[11]] = a2[a3[11]];
  *&a1[a3[12]] = *&a2[a3[12]];
  v24 = a3[13];
  v25 = *&a1[v24];
  v26 = *&a2[v24];
  *&a1[v24] = v26;
  v27 = v26;

  v28 = a3[14];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v31 = *&a1[v28 + 8];
  v32 = *&a2[v28 + 8];
  if (v31)
  {
    if (v32)
    {
      *v29 = *v30;
      *(v29 + 1) = *(v30 + 1);

      *(v29 + 2) = *(v30 + 2);
      *(v29 + 3) = *(v30 + 3);
    }

    else
    {
      sub_2301A45A8(v29);
      v33 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v33;
    }
  }

  else if (v32)
  {
    *v29 = *v30;
    *(v29 + 1) = *(v30 + 1);
    *(v29 + 2) = *(v30 + 2);
    *(v29 + 3) = *(v30 + 3);
  }

  else
  {
    v34 = *(v30 + 1);
    *v29 = *v30;
    *(v29 + 1) = v34;
  }

  *&a1[a3[15]] = *&a2[a3[15]];

  *&a1[a3[16]] = *&a2[a3[16]];

  *&a1[a3[17]] = *&a2[a3[17]];

  *&a1[a3[18]] = *&a2[a3[18]];

  v35 = a3[19];
  v36 = *&a1[v35];
  v37 = *&a2[v35];
  *&a1[v35] = v37;
  v38 = v37;

  v39 = a3[20];
  v40 = *&a1[v39];
  v41 = *&a2[v39];
  *&a1[v39] = v41;
  v42 = v41;

  v43 = a3[21];
  v44 = *&a1[v43];
  v45 = *&a2[v43];
  *&a1[v43] = v45;
  v46 = v45;

  *&a1[a3[22]] = *&a2[a3[22]];

  *&a1[a3[23]] = *&a2[a3[23]];

  v47 = a3[24];
  LODWORD(v44) = v58(&a1[v47], 1, v7);
  v48 = v58(&a2[v47], 1, v7);
  if (v44)
  {
    if (!v48)
    {
      (*(v59 + 16))(&a1[v47], &a2[v47], v7);
      (*(v59 + 56))(&a1[v47], 0, 1, v7);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v48)
  {
    (*(v59 + 8))(&a1[v47], v7);
LABEL_34:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v47], &a2[v47], *(*(v49 - 8) + 64));
    goto LABEL_35;
  }

  (*(v59 + 24))(&a1[v47], &a2[v47], v7);
LABEL_35:
  v50 = a3[25];
  v51 = sub_23030EBB8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  v54 = v53(&a1[v50], 1, v51);
  v55 = v53(&a2[v50], 1, v51);
  if (!v54)
  {
    if (!v55)
    {
      (*(v52 + 24))(&a1[v50], &a2[v50], v51);
      goto LABEL_41;
    }

    (*(v52 + 8))(&a1[v50], v51);
    goto LABEL_40;
  }

  if (v55)
  {
LABEL_40:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v50], &a2[v50], *(*(v56 - 8) + 64));
    goto LABEL_41;
  }

  (*(v52 + 16))(&a1[v50], &a2[v50], v51);
  (*(v52 + 56))(&a1[v50], 0, 1, v51);
LABEL_41:
  *&a1[a3[26]] = *&a2[a3[26]];

  return a1;
}

uint64_t sub_2301A45A8(uint64_t a1)
{

  return a1;
}

char *initializeWithTake for REMTestStorePopulator.TestReminder(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_23030E758();
  v9 = *(v8 - 8);
  v35 = *(v9 + 48);
  v36 = v9;
  if (v35(&a2[v7], 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v11 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v11] = a2[v11];
  v12 = a3[9];
  v13 = sub_23030EB58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(&a2[v12], 1, v13))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v12], &a2[v12], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 1, v13);
  }

  v17 = a3[10];
  if (v15(&a2[v17], 1, v13))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v17], &a2[v17], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&a1[v17], &a2[v17], v13);
    (*(v14 + 56))(&a1[v17], 0, 1, v13);
  }

  v19 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  *&a1[v19] = *&a2[v19];
  v20 = a3[14];
  *&a1[a3[13]] = *&a2[a3[13]];
  v21 = &a1[v20];
  v22 = &a2[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = a3[16];
  *&a1[a3[15]] = *&a2[a3[15]];
  *&a1[v24] = *&a2[v24];
  v25 = a3[18];
  *&a1[a3[17]] = *&a2[a3[17]];
  *&a1[v25] = *&a2[v25];
  v26 = a3[20];
  *&a1[a3[19]] = *&a2[a3[19]];
  *&a1[v26] = *&a2[v26];
  v27 = a3[22];
  *&a1[a3[21]] = *&a2[a3[21]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[24];
  *&a1[a3[23]] = *&a2[a3[23]];
  if (v35(&a2[v28], 1, v8))
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v28], &a2[v28], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v36 + 32))(&a1[v28], &a2[v28], v8);
    (*(v36 + 56))(&a1[v28], 0, 1, v8);
  }

  v30 = a3[25];
  v31 = sub_23030EBB8();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(&a2[v30], 1, v31))
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v30], &a2[v30], *(*(v33 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))(&a1[v30], &a2[v30], v31);
    (*(v32 + 56))(&a1[v30], 0, 1, v31);
  }

  *&a1[a3[26]] = *&a2[a3[26]];
  return a1;
}

char *assignWithTake for REMTestStorePopulator.TestReminder(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = a3[6];
  v9 = sub_23030E758();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v54 = v11;
  v13 = v11(&a2[v8], 1, v9);
  v55 = v10;
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(&a1[v8], v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 40))(&a1[v8], &a2[v8], v9);
LABEL_7:
  v15 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v15] = a2[v15];
  v16 = a3[9];
  v17 = sub_23030EB58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(&a1[v16], 1, v17);
  v21 = v19(&a2[v16], 1, v17);
  if (v20)
  {
    if (!v21)
    {
      (*(v18 + 32))(&a1[v16], &a2[v16], v17);
      (*(v18 + 56))(&a1[v16], 0, 1, v17);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v21)
  {
    (*(v18 + 8))(&a1[v16], v17);
LABEL_12:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v16], &a2[v16], *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v18 + 40))(&a1[v16], &a2[v16], v17);
LABEL_13:
  v23 = a3[10];
  v24 = v19(&a1[v23], 1, v17);
  v25 = v19(&a2[v23], 1, v17);
  if (v24)
  {
    if (!v25)
    {
      (*(v18 + 32))(&a1[v23], &a2[v23], v17);
      (*(v18 + 56))(&a1[v23], 0, 1, v17);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v25)
  {
    (*(v18 + 8))(&a1[v23], v17);
LABEL_18:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v23], &a2[v23], *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  (*(v18 + 40))(&a1[v23], &a2[v23], v17);
LABEL_19:
  v27 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  *&a1[v27] = *&a2[v27];
  v28 = a3[13];
  v29 = *&a1[v28];
  *&a1[v28] = *&a2[v28];

  v30 = a3[14];
  v31 = &a1[v30];
  v32 = &a2[v30];
  if (*&a1[v30 + 8])
  {
    v33 = *(v32 + 1);
    if (v33)
    {
      *v31 = *v32;
      *(v31 + 1) = v33;

      v34 = *(v32 + 3);
      *(v31 + 2) = *(v32 + 2);
      *(v31 + 3) = v34;

      goto LABEL_24;
    }

    sub_2301A45A8(v31);
  }

  v35 = *(v32 + 1);
  *v31 = *v32;
  *(v31 + 1) = v35;
LABEL_24:
  *&a1[a3[15]] = *&a2[a3[15]];

  *&a1[a3[16]] = *&a2[a3[16]];

  *&a1[a3[17]] = *&a2[a3[17]];

  *&a1[a3[18]] = *&a2[a3[18]];

  v36 = a3[19];
  v37 = *&a1[v36];
  *&a1[v36] = *&a2[v36];

  v38 = a3[20];
  v39 = *&a1[v38];
  *&a1[v38] = *&a2[v38];

  v40 = a3[21];
  v41 = *&a1[v40];
  *&a1[v40] = *&a2[v40];

  *&a1[a3[22]] = *&a2[a3[22]];

  *&a1[a3[23]] = *&a2[a3[23]];

  v42 = a3[24];
  v43 = v54(&a1[v42], 1, v9);
  v44 = v54(&a2[v42], 1, v9);
  if (v43)
  {
    if (!v44)
    {
      (*(v55 + 32))(&a1[v42], &a2[v42], v9);
      (*(v55 + 56))(&a1[v42], 0, 1, v9);
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v44)
  {
    (*(v55 + 8))(&a1[v42], v9);
LABEL_29:
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15C28);
    memcpy(&a1[v42], &a2[v42], *(*(v45 - 8) + 64));
    goto LABEL_30;
  }

  (*(v55 + 40))(&a1[v42], &a2[v42], v9);
LABEL_30:
  v46 = a3[25];
  v47 = sub_23030EBB8();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  v50 = v49(&a1[v46], 1, v47);
  v51 = v49(&a2[v46], 1, v47);
  if (!v50)
  {
    if (!v51)
    {
      (*(v48 + 40))(&a1[v46], &a2[v46], v47);
      goto LABEL_36;
    }

    (*(v48 + 8))(&a1[v46], v47);
    goto LABEL_35;
  }

  if (v51)
  {
LABEL_35:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
    memcpy(&a1[v46], &a2[v46], *(*(v52 - 8) + 64));
    goto LABEL_36;
  }

  (*(v48 + 32))(&a1[v46], &a2[v46], v47);
  (*(v48 + 56))(&a1[v46], 0, 1, v47);
LABEL_36:
  *&a1[a3[26]] = *&a2[a3[26]];

  return a1;
}

void sub_2301A5258()
{
  sub_2301A541C(319, &qword_27DB16508, MEMORY[0x277CC8990]);
  if (v0 <= 0x3F)
  {
    sub_2301A541C(319, &qword_280C9B730, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2301A541C(319, &qword_280C9B3E8, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_2301A541C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2303104C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for REMTestStorePopulator.TestListSection(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a3 + 24);
    v10 = sub_23030EB58();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);

    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    *&v4[*(a3 + 28)] = *&a2[*(a3 + 28)];
  }

  return v4;
}

uint64_t destroy for REMTestStorePopulator.TestListSection(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

char *initializeWithCopy for REMTestStorePopulator.TestListSection(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = *(a3 + 24);
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

char *assignWithCopy for REMTestStorePopulator.TestListSection(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);

  v6 = *(a3 + 24);
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

char *initializeWithTake for REMTestStorePopulator.TestListSection(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 24);
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];
  return a1;
}

char *assignWithTake for REMTestStorePopulator.TestListSection(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a3 + 24);
  v9 = sub_23030EB58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(&a1[v8], &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 32))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
LABEL_7:
  *&a1[*(a3 + 28)] = *&a2[*(a3 + 28)];

  return a1;
}

void sub_2301A5D00()
{
  sub_2301A541C(319, &qword_280C9B730, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t destroy for REMTestStorePopulator.TestReminder.RecurrenceRule(uint64_t a1)
{
}

uint64_t initializeWithCopy for REMTestStorePopulator.TestReminder.RecurrenceRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = v3;

  return a1;
}

void *assignWithCopy for REMTestStorePopulator.TestReminder.RecurrenceRule(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t assignWithTake for REMTestStorePopulator.TestReminder.RecurrenceRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestReminder.RecurrenceRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestReminder.RecurrenceRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t destroy for REMFeatureFlags.ExternalFeatureFlag()
{
}

void *initializeWithCopy for REMTestStorePopulator.TestReminder.Assignment(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for REMTestStorePopulator.TestReminder.Assignment(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for REMTestStorePopulator.TestReminder.Assignment(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTestStorePopulator.TestReminder.Assignment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for REMTestStorePopulator.TestReminder.Assignment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void **sub_2301A63A8(void **a1, void **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_23030EB58();
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);
    v12 = v4;
    v11(v7 + v8, a2 + v8, v9);
    v13 = a3[6];
    if ((*(v10 + 48))(a2 + v13, 1, v9))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
      memcpy(v7 + v13, a2 + v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v11(v7 + v13, a2 + v13, v9);
      (*(v10 + 56))(v7 + v13, 0, 1, v9);
    }

    *(v7 + a3[7]) = *(a2 + a3[7]);
  }

  return v7;
}

uint64_t sub_2301A655C(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  v9 = *(v6 + 8);
  v9(a1 + v4, v5);
  v7 = *(a2 + 24);
  result = (*(v6 + 48))(a1 + v7, 1, v5);
  if (!result)
  {

    return (v9)(a1 + v7, v5);
  }

  return result;
}

void **sub_2301A6658(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = a3[5];
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v6;
  v10(a1 + v7, a2 + v7, v8);
  v12 = a3[6];
  if ((*(v9 + 48))(a2 + v12, 1, v8))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
  }

  else
  {
    v10(a1 + v12, a2 + v12, v8);
    (*(v9 + 56))(a1 + v12, 0, 1, v8);
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

void **sub_2301A67AC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_23030EB58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 24);
  v12(a1 + v9, a2 + v9, v10);
  v18 = a3;
  v13 = *(a3 + 24);
  v14 = *(v11 + 48);
  LODWORD(v9) = v14(a1 + v13, 1, v10);
  v15 = v14(a2 + v13, 1, v10);
  if (!v9)
  {
    if (!v15)
    {
      v12(a1 + v13, a2 + v13, v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v13, v10);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v13, a2 + v13, *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 16))(a1 + v13, a2 + v13, v10);
  (*(v11 + 56))(a1 + v13, 0, 1, v10);
LABEL_7:
  *(a1 + *(v18 + 28)) = *(a2 + *(v18 + 28));
  return a1;
}

char *sub_2301A6978(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 32);
  v9(&a1[v6], &a2[v6], v7);
  v10 = a3[6];
  if ((*(v8 + 48))(&a2[v10], 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    v9(&a1[v10], &a2[v10], v7);
    (*(v8 + 56))(&a1[v10], 0, 1, v7);
  }

  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

void **sub_2301A6AC0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 40);
  v10(a1 + v7, a2 + v7, v8);
  v16 = a3;
  v11 = *(a3 + 24);
  v12 = *(v9 + 48);
  LODWORD(v7) = v12(a1 + v11, 1, v8);
  v13 = v12(a2 + v11, 1, v8);
  if (!v7)
  {
    if (!v13)
    {
      v10(a1 + v11, a2 + v11, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(a1 + v11, v8);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v11, a2 + v11, v8);
  (*(v9 + 56))(a1 + v11, 0, 1, v8);
LABEL_7:
  *(a1 + *(v16 + 28)) = *(a2 + *(v16 + 28));
  return a1;
}

void sub_2301A6CB0()
{
  sub_23030EB58();
  if (v0 <= 0x3F)
  {
    sub_2301A541C(319, &qword_280C9B730, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_2301A6DB0(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    *(a1 + 2) = *(a2 + 2);
    v6 = *(a3 + 24);
    v8 = sub_23030EB58();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], &a2[v6], v8);
  }

  return v3;
}

uint64_t sub_2301A6E98(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_23030EB58();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_2301A6F0C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = sub_23030EB58();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  return a1;
}

char *sub_2301A6FA8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v6 = *(a3 + 24);
  v7 = sub_23030EB58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  return a1;
}