uint64_t INSearchForNotebookItemsIntent.isScheduledQuery.getter()
{
  if (![v0 temporalEventTriggerTypes])
  {
    result = [v0 dateTime];
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t INSearchForNotebookItemsIntent.isListOrAllQuery.getter()
{
  if ([v0 itemType] == 2)
  {
    return 1;
  }

  v2 = [v0 title];
  if (!v2)
  {
    v2 = [v0 content];
    if (!v2)
    {
      v2 = [v0 dateTime];
      if (!v2)
      {
        if ([v0 status])
        {
          return 0;
        }

        v2 = [v0 location];
        if (!v2)
        {
          if ([v0 temporalEventTriggerTypes] || objc_msgSend(v0, sel_taskPriority))
          {
            return 0;
          }

          v2 = [v0 notebookItemIdentifier];
          if (!v2)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t INDateComponentsRange.dueDateComponents(timeProvider:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 recurrenceRule];
  if (v5)
  {

    return sub_21D32F6D8(a1, a2);
  }

  else
  {

    return sub_21D330450(a1, a2);
  }
}

uint64_t sub_21D32F6D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v110 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v96 - v10;
  v105 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v111 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v96 - v13;
  v118 = sub_21DBF5A2C();
  v14 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v102 = &v96 - v17;
  v18 = sub_21DBF563C();
  v112 = *(v18 - 8);
  v113 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  MEMORY[0x28223BE20](v23);
  v115 = &v96 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v96 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v96 - v32;
  v34 = sub_21DBF509C();
  v35 = *(v34 - 8);
  *&v36 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v38 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v3;
  v39 = [v3 startDateComponents];
  v119 = v34;
  if (v39)
  {
    v40 = v39;
    sub_21DBF4EFC();

    v34 = v119;
    v41 = *(v35 + 56);
    v41(v27, 0, 1, v119);
  }

  else
  {
    v41 = *(v35 + 56);
    v41(v27, 1, 1, v34);
  }

  sub_21D0D523C(v27, v30, &qword_27CE58D60);
  v98 = *(v35 + 48);
  v42 = v98(v30, 1, v34);
  v116 = v35;
  v117 = v14;
  v109 = a1;
  if (v42 == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE58D60);
    v96 = v33;
    v41(v33, 1, 1, v34);
    v43 = *(a1 + 3);
    v44 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v43);
    (*(v44 + 8))(v43, v44);
    v45 = *(a1 + 3);
    v46 = *(a1 + 4);
    __swift_project_boxed_opaque_existential_1(a1, v45);
    (*(v46 + 16))(v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
    v47 = sub_21DBF5A0C();
    v48 = *(v47 - 8);
    v49 = v48;
    v97 = v38;
    v50 = *(v48 + 72);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_21DC10990;
    v53 = *(v49 + 104);
    v53(v52 + v51, *MEMORY[0x277CC9988], v47);
    v53(v52 + v51 + v50, *MEMORY[0x277CC9998], v47);
    v53(v52 + v51 + 2 * v50, *MEMORY[0x277CC9968], v47);
    v53(v52 + v51 + 3 * v50, *MEMORY[0x277CC9980], v47);
    v53(v52 + v51 + 4 * v50, *MEMORY[0x277CC99A0], v47);
    v54 = 5 * v50;
    v38 = v97;
    v14 = v117;
    v53(v52 + v51 + v54, *MEMORY[0x277CC99A8], v47);
    sub_21D1D0F50(v52);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v55 = v115;
    v56 = v102;
    sub_21DBF58DC();
    v57 = v96;

    v58 = v56;
    v59 = v118;
    (*(v14 + 8))(v58, v118);
    (*(v112 + 8))(v55, v113);
    v60 = v98(v57, 1, v119);
    v61 = v103;
    if (v60 != 1)
    {
      sub_21D0CF7E0(v57, &qword_27CE58D60);
    }
  }

  else
  {
    DateComponents.smartlyCorrectedValue.getter(v33);
    (*(v35 + 8))(v30, v34);
    v41(v33, 0, 1, v34);
    (*(v35 + 32))(v38, v33, v34);
    v59 = v118;
    v61 = v103;
  }

  v101 = v22;
  sub_21DBF505C();
  v62 = *(v14 + 48);
  if (v62(v61, 1, v59) == 1)
  {
    v63 = v109;
    v64 = *(v109 + 3);
    v65 = *(v109 + 4);
    __swift_project_boxed_opaque_existential_1(v109, v64);
    v66 = v114;
    v67 = v64;
    v59 = v118;
    (*(v65 + 16))(v67, v65);
    v68 = v62(v61, 1, v59);
    v69 = v116;
    v70 = v106;
    if (v68 != 1)
    {
      sub_21D0CF7E0(v61, &qword_27CE5A8B0);
    }
  }

  else
  {
    v66 = v114;
    (*(v14 + 32))(v114, v61, v59);
    v63 = v109;
    v69 = v116;
    v70 = v106;
  }

  sub_21D0D32E4(v63, v120);
  v71 = v107;
  TTRRecurrenceRuleModel.init(dateComponentsRange:timeProvider:)(v71, v120, v70);
  if ((*(v104 + 48))(v70, 1, v105) == 1)
  {
    (*(v117 + 8))(v66, v59);
    sub_21D0CF7E0(v70, &qword_27CE5A018);
LABEL_16:
    v80 = v119;
    v41(v110, 1, 1, v119);
    return (*(v69 + 8))(v38, v80);
  }

  v107 = v41;
  sub_21D335654(v70, v111, type metadata accessor for TTRRecurrenceRuleModel);
  v72 = *(v63 + 3);
  v73 = *(v63 + 4);
  __swift_project_boxed_opaque_existential_1(v63, v72);
  v74 = v115;
  (*(v73 + 8))(v72, v73);
  v75 = v108;
  Calendar.dateMatching(_:now:)(v38, v74, v108);
  v77 = v112;
  v76 = v113;
  v78 = v66;
  v79 = *(v112 + 8);
  v79(v74, v113);
  if ((*(v77 + 48))(v75, 1, v76) == 1)
  {
    sub_21D335220(v111);
    (*(v117 + 8))(v78, v118);
    sub_21D0CF7E0(v108, &qword_27CE58D68);
    v69 = v116;
    v41 = v107;
    goto LABEL_16;
  }

  (*(v77 + 32))(v101, v108, v76);
  v81 = *(v63 + 3);
  v82 = *(v63 + 4);
  __swift_project_boxed_opaque_existential_1(v63, v81);
  (*(v82 + 8))(v81, v82);
  v83 = [v71 allDay];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 BOOLValue];
  }

  else
  {
    v85 = 0;
  }

  v86 = v101;
  v87 = v100;
  v88 = sub_21DBF55CC();
  v89 = v112;
  if (v88)
  {
    v90 = v99;
    v91 = v86;
    v92 = v113;
    (*(v112 + 16))(v99, v91, v113);
    v93 = (*(v89 + 56))(v90, 0, 1, v92);
  }

  else
  {
    v93 = sub_21D32C524(v87, v86, v85, v63, v99);
    v92 = v113;
  }

  MEMORY[0x28223BE20](v93);
  *(&v96 - 4) = v38;
  *(&v96 - 3) = v63;
  *(&v96 - 16) = v85;
  v94 = v99;
  sub_21D322F8C(sub_21D335704, (&v96 - 6), v110);
  sub_21D0CF7E0(v94, &qword_27CE58D68);
  v79(v87, v92);
  v79(v101, v92);
  sub_21D335220(v111);
  (*(v117 + 8))(v114, v118);
  v80 = v119;
  v69 = v116;
  return (*(v69 + 8))(v38, v80);
}

uint64_t sub_21D330450@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v152 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v127 = &v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v125 - v8;
  v133 = sub_21DBF563C();
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = &v125 - v11;
  v12 = sub_21DBF509C();
  v155 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v15 - 8);
  v147 = &v125 - v16;
  v146 = sub_21DBF5A2C();
  v150 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v149 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v18 - 8);
  v138 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = &v125 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v125 - v23;
  MEMORY[0x28223BE20](v24);
  v136 = &v125 - v25;
  MEMORY[0x28223BE20](v26);
  v135 = &v125 - v27;
  MEMORY[0x28223BE20](v28);
  v134 = &v125 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v125 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v125 - v34;
  MEMORY[0x28223BE20](v36);
  v151 = &v125 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v125 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v125 - v42;
  MEMORY[0x28223BE20](v44);
  v153 = &v125 - v45;
  MEMORY[0x28223BE20](v46);
  v145 = &v125 - v47;
  v48 = sub_21DBF5C4C();
  v139 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v126 = &v125 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = MEMORY[0x28223BE20](v50).n128_u64[0];
  v148 = &v125 - v52;
  v53 = v3;
  v54 = [v3 allDay];
  v140 = v48;
  v141 = a2;
  if (v54)
  {
    v55 = v54;
    v142 = [v54 BOOLValue];
  }

  else
  {
    v142 = 0;
  }

  v57 = *(v152 + 3);
  v56 = *(v152 + 4);
  __swift_project_boxed_opaque_existential_1(v152, v57);
  (*(v56 + 24))(v57, v56);
  v58 = [v53 startDateComponents];
  v143 = v14;
  if (v58)
  {
    v59 = v58;
    sub_21DBF4EFC();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v61 = v155;
  v62 = *(v155 + 56);
  v144 = v155 + 56;
  v154 = v62;
  v62(v40, v60, 1, v12);
  sub_21D0D523C(v40, v43, &qword_27CE58D60);
  v63 = *(v61 + 48);
  if (v63(v43, 1, v12) == 1)
  {
    sub_21D0CF7E0(v43, &qword_27CE58D60);
    v64 = 1;
    v65 = v153;
  }

  else
  {
    v65 = v153;
    DateComponents.smartlyCorrectedValue.getter(v153);
    (*(v61 + 8))(v43, v12);
    v64 = 0;
  }

  v66 = v136;
  v67 = 1;
  v154(v65, v64, 1, v12);
  v68 = [v53 endDateComponents];
  v69 = v145;
  if (v68)
  {
    v70 = v68;
    sub_21DBF4EFC();

    v67 = 0;
  }

  v71 = v135;
  v154(v32, v67, 1, v12);
  sub_21D0D523C(v32, v35, &qword_27CE58D60);
  if (v63(v35, 1, v12) == 1)
  {
    sub_21D0CF7E0(v35, &qword_27CE58D60);
    v72 = 1;
    v73 = v151;
  }

  else
  {
    v74 = v151;
    DateComponents.smartlyCorrectedValue.getter(v151);
    v73 = v74;
    (*(v155 + 8))(v35, v12);
    v72 = 0;
  }

  v75 = v134;
  v154(v73, v72, 1, v12);
  sub_21D0D3954(v153, v75, &qword_27CE58D60);
  v76 = v63(v75, 1, v12);
  v77 = v146;
  if (v76 == 1)
  {
    sub_21D0CF7E0(v75, &qword_27CE58D60);
    v78 = 0;
  }

  else
  {
    v79 = sub_21D32DD48(v152, v142);
    v73 = v151;
    v80 = v75;
    v78 = v79;
    (*(v155 + 8))(v80, v12);
  }

  sub_21D0D3954(v73, v71, &qword_27CE58D60);
  if (v63(v71, 1, v12) == 1)
  {
    sub_21D0CF7E0(v71, &qword_27CE58D60);
    if ((v78 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v81 = sub_21D32DD48(v152, v142);
  v73 = v151;
  v82 = v71;
  v83 = v81;
  (*(v155 + 8))(v82, v12);
  if (v78)
  {
LABEL_22:
    v84 = v153;
LABEL_23:
    sub_21D0D3954(v84, v69, &qword_27CE58D60);
    v85 = v150;
    v86 = v147;
    v87 = v137;
    goto LABEL_31;
  }

  if (v83)
  {
    v84 = v73;
    goto LABEL_23;
  }

LABEL_26:
  v88 = v128;
  sub_21D0D3954(v153, v128, &qword_27CE58D60);
  if (v63(v88, 1, v12) == 1)
  {
    sub_21D0D3954(v73, v66, &qword_27CE58D60);
    v89 = v63(v88, 1, v12) == 1;
    v90 = v88;
    v85 = v150;
    v86 = v147;
    v87 = v137;
    if (!v89)
    {
      sub_21D0CF7E0(v90, &qword_27CE58D60);
    }
  }

  else
  {
    (*(v155 + 32))(v66, v88, v12);
    v154(v66, 0, 1, v12);
    v85 = v150;
    v86 = v147;
    v87 = v137;
  }

  sub_21D0D523C(v66, v69, &qword_27CE58D60);
LABEL_31:
  sub_21D0D3954(v69, v87, &qword_27CE58D60);
  if (v63(v87, 1, v12) == 1)
  {
    sub_21D0CF7E0(v87, &qword_27CE58D60);
    (*(v85 + 56))(v86, 1, 1, v77);
  }

  else
  {
    sub_21DBF505C();
    (*(v155 + 8))(v87, v12);
    if ((*(v85 + 48))(v86, 1, v77) != 1)
    {
      (*(v85 + 32))(v149, v86, v77);
      v98 = v143;
      goto LABEL_37;
    }
  }

  v91 = *(v152 + 3);
  v92 = *(v152 + 4);
  __swift_project_boxed_opaque_existential_1(v152, v91);
  v93 = *(v92 + 16);
  v94 = v91;
  v85 = v150;
  v95 = v92;
  v96 = v147;
  v93(v94, v95);
  v97 = (*(v85 + 48))(v96, 1, v77);
  v98 = v143;
  if (v97 != 1)
  {
    sub_21D0CF7E0(v96, &qword_27CE5A8B0);
  }

LABEL_37:
  v99 = v138;
  sub_21D0D3954(v69, v138, &qword_27CE58D60);
  v100 = v63(v99, 1, v12);
  v101 = v155;
  if (v100 == 1)
  {
    (*(v85 + 8))(v149, v77);
    sub_21D0CF7E0(v151, &qword_27CE58D60);
    sub_21D0CF7E0(v153, &qword_27CE58D60);
    sub_21D0CF7E0(v69, &qword_27CE58D60);
    (*(v139 + 8))(v148, v140);
    sub_21D0CF7E0(v99, &qword_27CE58D60);
    v102 = 1;
    v103 = v141;
  }

  else
  {
    (*(v155 + 32))(v98, v99, v12);
    v104 = *(v152 + 3);
    v105 = *(v152 + 4);
    __swift_project_boxed_opaque_existential_1(v152, v104);
    v106 = v129;
    v107 = v98;
    (*(v105 + 8))(v104, v105);
    v108 = v131;
    v109 = v149;
    Calendar.dateMatching(_:now:)(v107, v106, v131);
    v110 = v130;
    v111 = v133;
    v152 = *(v130 + 8);
    v152(v106, v133);
    v112 = (*(v110 + 48))(v108, 1, v111);
    v103 = v141;
    v113 = v139;
    if (v112 == 1)
    {
      (*(v101 + 8))(v107, v12);
      (*(v150 + 8))(v109, v146);
      sub_21D0CF7E0(v151, &qword_27CE58D60);
      sub_21D0CF7E0(v153, &qword_27CE58D60);
      sub_21D0CF7E0(v145, &qword_27CE58D60);
      (*(v113 + 8))(v148, v140);
      sub_21D0CF7E0(v108, &qword_27CE58D68);
      v102 = 1;
    }

    else
    {
      (*(v110 + 32))(v132, v108, v111);
      v147 = sub_21DBF55BC();
      v114 = v127;
      sub_21DBF507C();
      v115 = *(v113 + 48);
      v116 = v140;
      if (v115(v114, 1, v140) == 1)
      {
        v117 = v126;
        (*(v113 + 16))(v126, v148, v116);
        v118 = v117;
        if (v115(v114, 1, v116) != 1)
        {
          sub_21D0CF7E0(v114, &unk_27CE60DB0);
        }
      }

      else
      {
        v118 = v126;
        (*(v113 + 32))(v126, v114, v116);
      }

      v119 = objc_opt_self();
      v120 = sub_21DBF5C0C();
      v121 = *(v113 + 8);
      v121(v118, v116);
      v122 = v147;
      v123 = [v119 rem:v147 dateComponentsWithDate:v120 timeZone:v142 isAllDay:?];

      sub_21DBF4EFC();
      v152(v132, v133);
      (*(v155 + 8))(v143, v12);
      (*(v150 + 8))(v149, v146);
      sub_21D0CF7E0(v151, &qword_27CE58D60);
      sub_21D0CF7E0(v153, &qword_27CE58D60);
      sub_21D0CF7E0(v145, &qword_27CE58D60);
      v121(v148, v116);
      v102 = 0;
    }
  }

  return (v154)(v103, v102, 1, v12);
}

uint64_t INDateComponentsRange.calendar(timeProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v39 - v21;
  v41 = v3;
  v23 = [v3 startDateComponents];
  if (v23)
  {
    v24 = v23;
    sub_21DBF4EFC();

    v25 = sub_21DBF509C();
    (*(*(v25 - 8) + 56))(v12, 0, 1, v25);
  }

  else
  {
    v25 = sub_21DBF509C();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  }

  sub_21D0D523C(v12, v15, &qword_27CE58D60);
  sub_21DBF509C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v15, 1, v25) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE58D60);
    v28 = sub_21DBF5A2C();
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
  }

  else
  {
    sub_21DBF505C();
    (*(v26 + 8))(v15, v25);
    v29 = sub_21DBF5A2C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v22, 1, v29) != 1)
    {
      return (*(v30 + 32))(v42, v22, v29);
    }
  }

  v31 = [v41 endDateComponents];
  if (v31)
  {
    v32 = v31;
    sub_21DBF4EFC();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v26 + 56))(v6, v33, 1, v25);
  sub_21D0D523C(v6, v9, &qword_27CE58D60);
  if (v27(v9, 1, v25) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE58D60);
    v34 = sub_21DBF5A2C();
    (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
    goto LABEL_13;
  }

  sub_21DBF505C();
  (*(v26 + 8))(v9, v25);
  v34 = sub_21DBF5A2C();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v18, 1, v34) == 1)
  {
LABEL_13:
    v36 = v40[3];
    v37 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v36);
    (*(v37 + 16))(v36, v37);
    sub_21DBF5A2C();
    if ((*(*(v34 - 8) + 48))(v18, 1, v34) != 1)
    {
      sub_21D0CF7E0(v18, &qword_27CE5A8B0);
    }

    goto LABEL_17;
  }

  (*(v35 + 32))(v42, v18, v34);
LABEL_17:
  sub_21DBF5A2C();
  result = (*(*(v34 - 8) + 48))(v22, 1, v34);
  if (result != 1)
  {
    return sub_21D0CF7E0(v22, &qword_27CE5A8B0);
  }

  return result;
}

void sub_21D331B10(void *a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v21 = a2;
  v19 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_21DBF5C4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF55BC();
  sub_21DBF507C();
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    v18 = v3;
    v12 = v19[3];
    v13 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v12);
    (*(v13 + 24))(v12, v13);
    if (v11(v6, 1, v7) != 1)
    {
      sub_21D0CF7E0(v6, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v14 = objc_opt_self();
  v15 = sub_21DBF5C0C();
  (*(v8 + 8))(v10, v7);
  v16 = v20;
  v17 = [v14 rem:v20 dateComponentsWithDate:v15 timeZone:v21 & 1 isAllDay:?];

  sub_21DBF4EFC();
}

uint64_t INTemporalEventTrigger.ValidationError.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void INTemporalEventTrigger.dueDateComponents(timeProvider:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = [v3 dateComponentsRange];
  v6 = [v7 recurrenceRule];
  if (v6)
  {

    sub_21D32F6D8(a1, a2);
  }

  else
  {
    sub_21D330450(a1, a2);
  }
}

id INTemporalEventTrigger.validate(timeProvider:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5 - 8];
  v7 = sub_21DBF509C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  *&v12 = MEMORY[0x28223BE20](v11 - 8).n128_u64[0];
  v14 = &v28[-v13 - 8];
  v15 = [v27 dateComponentsRange];
  v16 = [v15 recurrenceRule];

  if (v16 && (v16, sub_21D0D32E4(a1, v28), TTRRecurrenceRuleModel.init(temporalEventTrigger:timeProvider:)(v27, v28, v14), v17 = type metadata accessor for TTRRecurrenceRuleModel(0), v18 = (*(*(v17 - 8) + 48))(v14, 1, v17), result = sub_21D0CF7E0(v14, &qword_27CE5A018), v18 == 1))
  {
    *a2 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    v20 = [v27 dateComponentsRange];
    v21 = [v20 recurrenceRule];
    if (v21)
    {

      sub_21D32F6D8(a1, v6);
    }

    else
    {
      sub_21D330450(a1, v6);
    }

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      result = sub_21D0CF7E0(v6, &qword_27CE58D60);
      *a2 = 2;
      *(a2 + 8) = 1;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v22 = [v27 dateComponentsRange];
      v23 = [v22 allDay];

      if (v23)
      {
        v24 = [v23 BOOLValue];
      }

      else
      {
        v24 = 0;
      }

      v25 = sub_21D32DD48(a1, v24);
      result = (*(v8 + 8))(v10, v7);
      if (v25)
      {
        v26 = v27;
        *a2 = v27;
        *(a2 + 8) = 0;

        return v26;
      }

      else
      {
        *a2 = 0;
        *(a2 + 8) = 1;
      }
    }
  }

  return result;
}

BOOL sub_21D332274(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  v6 = v5;
  if (v5)
  {

    v7 = (v4)(a1, a2);
    if (!v7)
    {
      return 1;
    }

LABEL_5:
    v9 = v7;
    v10 = [v7 mobileSpace];

    result = v10 != 1;
    if (v6)
    {
      return result;
    }

    return 0;
  }

  v7 = (v4)(a1, a2);
  if (v7)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t TTRIntentResultWarningBearing.warnings(store:accountCapabilties:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 8))(a3, a4) == 2 && ![a2 supportsFlagged])
  {
    v9 = 0;
    v8 = 2;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  v10 = sub_21D332568(a1, a3, a4);
  v12 = v11;
  sub_21D33280C(a3, a4);
  v14 = v13;
  v16 = v15;
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = sub_21D21265C(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    if (v21 >= v20 >> 1)
    {
      v17 = sub_21D21265C((v20 > 1), v21 + 1, 1, v17);
    }

    *(v17 + 2) = v21 + 1;
    *&v17[8 * v21 + 32] = v8;
    if (v12)
    {
LABEL_7:
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21D21265C(0, *(v17 + 2) + 1, 1, v17);
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      v18 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v17 = sub_21D21265C((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 2) = v18;
      *&v17[8 * v25 + 32] = v14;
      goto LABEL_23;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_21D21265C(0, *(v17 + 2) + 1, 1, v17);
  }

  v23 = *(v17 + 2);
  v22 = *(v17 + 3);
  if (v23 >= v22 >> 1)
  {
    v17 = sub_21D21265C((v22 > 1), v23 + 1, 1, v17);
  }

  *(v17 + 2) = v23 + 1;
  *&v17[8 * v23 + 32] = v10;
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v18 = *(v17 + 2);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_27;
  }

LABEL_23:
  v19 = 0;
  v26 = 32;
  do
  {
    v27 = *&v17[v26];
    if ((v27 & ~v19) == 0)
    {
      v27 = 0;
    }

    v19 |= v27;
    v26 += 8;
    --v18;
  }

  while (v18);
LABEL_27:

  return v19;
}

uint64_t sub_21D332568(void *a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if ((*(a3 + 8))(a2, a3) != 2)
  {
    return 0;
  }

  v22[0] = 0;
  v4 = [a1 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:v22];
  v5 = v22[0];
  if (!v4)
  {
    v11 = v22[0];
    v12 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5A890);
    v14 = v12;
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_21DBFC75C();
      v21 = sub_21D0CDFB4(v19, v20, v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Could not retrieve accounts to determine if upgraded to cloudkit {error: %s}", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v6 = v4;
  sub_21D0D8CF0(0, &qword_280D17880);
  v7 = sub_21DBFA5EC();
  v8 = v5;

  if (v7 >> 62)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return 8 * (v9 == 0);
}

void sub_21D33280C(uint64_t a1, uint64_t a2)
{
  if (sub_21D332274(a1, a2))
  {
    [objc_opt_self() locationServicesEnabled];
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 processName];

    v4 = sub_21DBFA16C();
    v6 = v5;

    if (v4 == 0xD000000000000011 && 0x800000021DC4A6B0 == v6)
    {
    }

    else
    {
      v8 = sub_21DBFC64C();

      if ((v8 & 1) == 0)
      {
        v9 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
LABEL_13:
        [v9 authorizationStatus];

        return;
      }
    }

    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v10 = objc_allocWithZone(MEMORY[0x277CBFC10]);
    v11 = sub_21DBFA12C();
    v9 = [v10 initWithEffectiveBundleIdentifier_];

    if (v9)
    {
      goto LABEL_13;
    }

    __break(1u);
  }
}

uint64_t sub_21D3329D4()
{
  v1 = [*v0 name];
  v2 = sub_21DBFA16C();

  return v2;
}

id sub_21D332A2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  v11 = 0;
  if (v10(a1, 1, v8) != 1)
  {
    v11 = sub_21DBF4EDC();
    (*(v9 + 8))(a1, v8);
  }

  if (v10(a2, 1, v8) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_21DBF4EDC();
    (*(v9 + 8))(a2, v8);
  }

  v13 = [v4 initWithStartDateComponents:v11 endDateComponents:v12 recurrenceRule:a3];

  return v13;
}

unint64_t sub_21D332B90(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21D332BD8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_21D332C28(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21D0CF2E8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21D332C90(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_21D332D7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = a5(0);
  sub_21D335654(a2, v15 + *(*(v16 - 8) + 72) * a1, a6);
  v17 = a4[7];
  v18 = a7(0);
  result = sub_21D335654(a3, v17 + *(*(v18 - 8) + 72) * a1, a8);
  v20 = a4[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v22;
  }

  return result;
}

_OWORD *sub_21D332E64(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21DBFC1BC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_21D0CF2E8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_21D332F24(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_21D332F7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_21DBF5D5C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_21D333028(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_21D333080(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_21DBF5B9C();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_21D333140(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D335654(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v12 = a4[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_21D0D523C(a3, v12 + *(*(v13 - 8) + 72) * a1, a5);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

unint64_t sub_21D333234(unint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 112 * result);
  v8 = a2[5];
  v7[4] = a2[4];
  v7[5] = v8;
  *(v7 + 89) = *(a2 + 89);
  v9 = a2[1];
  *v7 = *a2;
  v7[1] = v9;
  v10 = a2[3];
  v7[2] = a2[2];
  v7[3] = v10;
  v11 = (a7[7] + 32 * result);
  *v11 = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v12 = a7[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v14;
  }

  return result;
}

uint64_t sub_21D3332A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  result = sub_21D335654(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_21D33334C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
  result = sub_21D0D523C(a6, v11 + *(*(v12 - 8) + 72) * a1, &qword_27CE583A8);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

uint64_t sub_21D33340C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21DBF799C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_21DBF563C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_21D333500(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_21D333544(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

_OWORD *sub_21D333598(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_21D0CF2E8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_21D333614(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21DBF56BC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 192 * a1);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a3[3];
  v11[2] = a3[2];
  v11[3] = v13;
  v14 = a3[7];
  v11[6] = a3[6];
  v11[7] = v14;
  v15 = a3[5];
  v11[4] = a3[4];
  v11[5] = v15;
  v16 = a3[11];
  v11[10] = a3[10];
  v11[11] = v16;
  v17 = a3[9];
  v11[8] = a3[8];
  v11[9] = v17;
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

unint64_t sub_21D33372C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_21D333778(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  a9[(result >> 6) + 8] |= 1 << result;
  v9 = a9[6] + 24 * result;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  v10 = (a9[7] + 32 * result);
  *v10 = a5;
  v10[1] = a6;
  v10[2] = a7;
  v10[3] = a8;
  v11 = a9[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a9[2] = v13;
  }

  return result;
}

uint64_t sub_21D3337D4(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  result = sub_21D335654(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_21D3338B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_21D335654(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_21D333960(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void sub_21D3339C8(unint64_t a1, void (*a2)(id *, id))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(&v8, v6);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_21D333AA8(void *a1, unint64_t a2)
{
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v9 = sub_21DBFBD7C();
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v6;
  v38 = v5;
  v36 = v2;
  if (v9)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    sub_21D0D8CF0(0, &qword_280D176C8);
    v11 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, a2);
      }

      else
      {
        v12 = *(a2 + 8 * v11 + 32);
      }

      ++v11;
      INTask.init(reminder:)(v12);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v9 != v11);
  }

  v13 = [a1 displayName];
  v14 = sub_21DBFA16C();
  v16 = v15;

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  if (v14 == sub_21DBF516C() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_21DBFC64C();

    if ((v18 & 1) == 0)
    {
      v19 = [a1 displayName];
      if (!v19)
      {
        sub_21DBFA16C();
        v19 = sub_21DBFA12C();
      }

      v22 = [objc_allocWithZone(MEMORY[0x277CD4188]) initWithSpokenPhrase_];
      goto LABEL_22;
    }
  }

  v19 = [a1 displayName];
  if (!v19)
  {
    sub_21DBFA16C();
    v19 = sub_21DBFA12C();
  }

  v20 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v21 = sub_21DBFA12C();
  v22 = [v20 initWithVocabularyIdentifier:v21 spokenPhrase:v19 pronunciationHint:0];

LABEL_22:
  sub_21D0D8CF0(0, &qword_280D176C8);
  v23 = v22;
  v24 = sub_21DBFA5DC();

  v25 = [a1 parentList];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 displayName];

    if (!v27)
    {
      sub_21DBFA16C();
      v27 = sub_21DBFA12C();
    }

    v28 = [objc_allocWithZone(MEMORY[0x277CD4188]) initWithSpokenPhrase_];
  }

  else
  {
    v28 = 0;
  }

  v30 = v37;
  v29 = v38;
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = [a1 objectID];
  v33 = [v32 uuid];

  sub_21DBF568C();
  sub_21DBF565C();
  (*(v30 + 8))(v8, v29);
  v34 = sub_21DBFA12C();

  v35 = [v31 initWithTitle:v23 tasks:v24 groupName:v28 createdDateComponents:0 modifiedDateComponents:0 identifier:v34];

  return v35;
}

uint64_t _sSo10INTaskListC15RemindersUICoreE16encodeIdentifier3forSSSo08REMSmartB0C_tFZ_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_21DBF4DAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF56BC();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 objectID];
  v15 = [v14 uuid];

  sub_21DBF568C();
  v16 = sub_21DBF565C();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  sub_21DBF4D9C();
  sub_21DBF4D8C();
  sub_21DBF8E0C();
  MEMORY[0x223D3D530](v16, v18);
  sub_21DBF4D6C();
  v19 = sub_21DBF54CC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v4, 1, v19) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_21D0CF7E0(v4, &qword_27CE5EA20);
  }

  else
  {
    v16 = sub_21DBF535C();
    (*(v6 + 8))(v8, v5);
    (*(v20 + 8))(v4, v19);
  }

  return v16;
}

uint64_t sub_21D334320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _sSo6INTaskC15RemindersUICoreE013allIncompleteB05storeSaySo11REMReminderCGSo8REMStoreC_tFZ_0(void *a1)
{
  v97 = a1;
  v106[1] = *MEMORY[0x277D85DE8];
  v102 = sub_21DBF6D7C();
  v98 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v88 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21DBF6F1C();
  v91 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v3 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF6F2C();
  v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v95 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF734C();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF71BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21DBF70DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A910);
  v89 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v17 = &v88 - v16;
  v18 = *MEMORY[0x277D454E8];
  v19 = sub_21DBF733C();
  (*(*(v19 - 8) + 104))(v15, v18, v19);
  v20 = *MEMORY[0x277D45408];
  v21 = *(v13 + 104);
  v99 = v12;
  v21(v15, v20, v12);
  v22 = *MEMORY[0x277D45470];
  v23 = v9;
  v24 = *(v9 + 104);
  v100 = v8;
  v24(v11, v22, v8);
  v25 = v93;
  v26 = v94;
  (*(v93 + 104))(v7, *MEMORY[0x277D45500]);
  v27 = v7;
  sub_21DBF76EC();
  v92 = 0;
  v38 = v91;
  (*(v25 + 8))(v27, v26);
  (*(v23 + 8))(v11, v100);
  (*(v13 + 8))(v15, v99);
  v39 = v95;
  v94 = v17;
  sub_21DBF76DC();
  v40 = sub_21DBF6E3C();
  v41 = *(v40 + 16);
  v42 = v96;
  if (!v41)
  {

    v48 = MEMORY[0x277D84F90];
    v57 = v102;
    v61 = *(MEMORY[0x277D84F90] + 16);
    if (v61)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v43 = v38 + 16;
  v44 = *(v38 + 16);
  v45 = *(v38 + 80);
  v93 = v40;
  v46 = v40 + ((v45 + 32) & ~v45);
  v99 = *(v38 + 72);
  v100 = v44;
  v47 = (v38 + 8);
  v48 = MEMORY[0x277D84F90];
  v49 = v103;
  do
  {
    v50 = v43;
    v100(v3, v46, v49);
    v51 = sub_21DBF6F0C();
    (*v47)(v3, v49);
    v52 = v51[2];
    v53 = v48[2];
    v54 = v53 + v52;
    if (__OFADD__(v53, v52))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v54 > v48[3] >> 1)
    {
      if (v53 <= v54)
      {
        v56 = v53 + v52;
      }

      else
      {
        v56 = v53;
      }

      v48 = sub_21D21145C(isUniquelyReferenced_nonNull_native, v56, 1, v48);
    }

    v57 = v102;
    v49 = v103;
    if (v51[2])
    {
      if ((v48[3] >> 1) - v48[2] < v52)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v52)
      {
        v58 = v48[2];
        v59 = __OFADD__(v58, v52);
        v60 = v58 + v52;
        if (v59)
        {
          goto LABEL_65;
        }

        v48[2] = v60;
      }
    }

    else
    {

      if (v52)
      {
        goto LABEL_61;
      }
    }

    v46 += v99;
    --v41;
    v43 = v50;
  }

  while (v41);

  v39 = v95;
  v42 = v96;
  v61 = v48[2];
  if (v61)
  {
LABEL_23:
    v106[0] = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v62 = *(v98 + 16);
    v63 = v48 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v102 = *(v98 + 72);
    v103 = v62;
    v64 = (v98 + 8);
    v65 = v88;
    do
    {
      (v103)(v65, v63, v57);
      sub_21DBF6D5C();
      (*v64)(v65, v57);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v63 += v102;
      --v61;
    }

    while (v61);

    v66 = v106[0];
    v39 = v95;
    v42 = v96;
    goto LABEL_28;
  }

LABEL_27:

  v66 = MEMORY[0x277D84F90];
LABEL_28:
  v67 = v97;
  if (v66 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D17880);
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v68 = sub_21DBFA5DC();

  v106[0] = 0;
  v69 = [v67 fetchRemindersWithObjectIDs:v68 error:v106];

  v70 = v106[0];
  if (v69)
  {
    v71 = sub_21D0D8CF0(0, &qword_280D17860);
    sub_21D183A0C();
    v100 = v71;
    v72 = sub_21DBF9E6C();
    v73 = v70;

    v106[0] = MEMORY[0x277D84F90];
    if (v66 >> 62)
    {
      v74 = sub_21DBFBD7C();
    }

    else
    {
      v74 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = 0;
    v78 = v72 & 0xC000000000000001;
    v79 = v72 & 0xFFFFFFFFFFFFFF8;
    if (v72 < 0)
    {
      v79 = v72;
    }

    v102 = v72;
    v103 = v79;
    v99 = MEMORY[0x277D84F90];
LABEL_38:
    v51 = v101;
    while (1)
    {
      if (v74 == v77)
      {

        (*(v96 + 8))(v95, v90);
        (*(v89 + 8))(v94, v51);
        return v99;
      }

      if ((v66 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x223D44740](v77, v66);
        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v77 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v80 = *(v66 + 8 * v77 + 32);
        v81 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_62;
        }
      }

      if (v78)
      {
        v82 = v80;
        v83 = sub_21DBFC2CC();

        if (v83)
        {
          v104 = v83;
          swift_dynamicCast();
          v83 = v105;
        }
      }

      else
      {
        v84 = v102;
        if (!*(v102 + 16))
        {

          ++v77;
          continue;
        }

        v85 = v80;
        v86 = sub_21D17E07C(v85);
        if (v87)
        {
          v83 = *(*(v84 + 56) + 8 * v86);
        }

        else
        {

          v83 = 0;
        }
      }

      v51 = v101;
      ++v77;
      if (v83)
      {
        MEMORY[0x223D42D80]();
        if (*((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v99 = v106[0];
        v77 = v81;
        goto LABEL_38;
      }
    }
  }

  v75 = v106[0];

  v76 = v39;
  v51 = sub_21DBF52DC();

  swift_willThrow();
  (*(v42 + 8))(v76, v90);
  (*(v89 + 8))(v94, v101);
  if (qword_27CE56618 != -1)
  {
    goto LABEL_66;
  }

LABEL_3:
  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_27CE5A890);
  v29 = v51;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAEBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v106[0] = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_21DBFC74C();
    v36 = sub_21D0CDFB4(v34, v35, v106);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_21D0C9000, v30, v31, "Error trying to REMRemindersListDataView.fetchAll {error: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t _sSo6INTaskC15RemindersUICoreE18allIncompleteTasks5storeSayABGSo8REMStoreC_tFZ_0(void *a1)
{
  v1 = _sSo6INTaskC15RemindersUICoreE013allIncompleteB05storeSaySo11REMReminderCGSo8REMStoreC_tFZ_0(a1);
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_21DBFBD7C();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x277D84F90];
  result = sub_21DBFC01C();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D8CF0(0, &qword_280D176C8);
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      INTask.init(reminder:)(v6);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
    }

    while (v3 != v5);

    return v7;
  }

  return result;
}

uint64_t sub_21D3351BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D335220(uint64_t a1)
{
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D3352E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_21DBF563C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v12, &qword_27CE58D68);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE58D68);
    v17 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    v20 = sub_21DBF5A2C();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    (*(v14 + 56))(v9, 1, 1, v13);
    v21 = TTRTimeProvider.isDateInToday(_:calendar:now:)(v16, v6, v9, v18, v19);
    sub_21D0CF7E0(v9, &qword_27CE58D68);
    sub_21D0CF7E0(v6, &qword_27CE5A8B0);
    (*(v14 + 8))(v16, v13);
    v17 = v21 ^ 1;
  }

  return v17 & 1;
}

unint64_t sub_21D3355C8()
{
  result = qword_27CE5A8E8;
  if (!qword_27CE5A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A8E8);
  }

  return result;
}

uint64_t sub_21D335654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D3356BC(unint64_t *a1, void (*a2)(uint64_t))
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

Class TTRIDateIconGenerator.generateQuickBarDateIcons(for:)()
{
  v0._countAndFlagsBits = sub_21D3357BC();
  isa = TTRIDateIconGenerator.generateQuickBarDateIcons(withText:)(v0).normal.super.isa;

  return isa;
}

id sub_21D3357BC()
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

Swift::tuple_normal_UIImage_highlighted_UIImage __swiftcall TTRIDateIconGenerator.generateQuickBarDateIcons(withText:)(Swift::String withText)
{
  object = withText._object;
  countAndFlagsBits = withText._countAndFlagsBits;
  v52 = *v1;
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21DBFA12C();
  v7 = objc_opt_self();
  v8 = [v7 imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v8);
  v10 = v9;

  v11 = sub_21DBFA12C();
  v51 = v5;
  v12 = [v7 imageNamed:v11 inBundle:v5 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v12);
  v50 = v13;

  v14 = *MEMORY[0x277D743F8];
  v15 = objc_opt_self();
  v16 = [v15 systemFontOfSize:12.0 weight:v14];
  v17 = [v16 fontDescriptor];
  v18 = [v17 fontDescriptorWithDesign_];

  if (v18)
  {
    v19 = [v15 fontWithDescriptor:v18 size:0.0];

    v16 = v19;
  }

  v20 = objc_opt_self();
  v49 = [v20 labelColor];
  v61[0] = v10;
  v61[1] = v16;
  v61[2] = v49;
  v62 = xmmword_21DC10B60;
  v63 = xmmword_21DC10B70;
  sub_21D1123D0(countAndFlagsBits, object, v61, &v53);
  v21 = v53;
  [v10 size];
  v23 = v22;
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = v25;
  v56 = v21;
  v57 = v54;
  v58 = v55;
  v59 = sub_21D336CAC;
  v60 = v26;
  MEMORY[0x28223BE20](v26);
  v44 = v61;
  v45 = &v56;
  v27 = v52;
  v46 = v52;
  v48 = sub_21D112914(sub_21D112C24, v43, v23, v25);
  v28 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v29 = *MEMORY[0x277D740C0];
  v30 = [v20 blackColor];
  v31 = [v28 string];
  v32 = sub_21DBFA16C();
  v33 = v10;
  v35 = v34;

  v36 = MEMORY[0x223D42B30](v32, v35);

  [v28 addAttribute:v29 value:v30 range:{0, v36}];

  MEMORY[0x28223BE20](v37);
  v38 = v50;
  v44 = v50;
  v45 = v28;
  v46 = &v56;
  v47 = v27;
  v39 = sub_21D112914(sub_21D336CB4, v43, v23, v25);

  sub_21D112C9C(&v53);

  v40 = v48;
  v41 = v39;
  result.highlighted.super.isa = v41;
  result.normal.super.isa = v40;
  return result;
}

id sub_21D33600C(CGContext *a1, id a2, void *a3, double *a4)
{
  [a2 drawAtPoint_];
  CGContextSetBlendMode(a1, kCGBlendModeDestinationOut);
  v7 = a4[1];
  v8 = a4[2];
  v9 = a4[3];
  v10 = a4[4];

  return [a3 drawWithRect:2 options:0 context:{v7, v8, v9, v10}];
}

uint64_t TTRIDateIconGenerator.generateDueDateMenuIcon(for:)()
{
  v1 = v0;
  v2 = sub_21D3357BC();
  v4 = v3;
  type metadata accessor for RemindersUICoreBundleLookupObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21DBFA12C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v8);
  v10 = v9;

  v11 = *MEMORY[0x277D74400];
  v12 = objc_opt_self();
  v13 = [v12 systemFontOfSize:24.0 weight:v11];
  v14 = [v13 fontDescriptor];
  v15 = [v14 fontDescriptorWithDesign_];

  if (v15)
  {
    v16 = [v12 fontWithDescriptor:v15 size:0.0];

    v13 = v16;
  }

  v17 = [objc_opt_self() labelColor];
  *&v47 = v10;
  *(&v47 + 1) = v13;
  *v48 = v17;
  *&v48[8] = xmmword_21DC10BA0;
  *&v48[24] = xmmword_21DC10BB0;
  sub_21D1123D0(v2, v4, &v47, &v44);
  v18 = v44;

  [v10 size];
  v20 = v19;
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  v24 = objc_opt_self();
  v25 = sub_21DBFA12C();
  v26 = swift_allocObject();
  v27 = *v48;
  *(v26 + 16) = v47;
  *(v26 + 32) = v27;
  *(v26 + 48) = *&v48[16];
  *(v26 + 64) = *&v48[32];
  *(v26 + 72) = v6;
  *(v26 + 80) = v1;
  *(v26 + 88) = v18;
  v28 = v46;
  *(v26 + 96) = v45;
  *(v26 + 112) = v28;
  *(v26 + 128) = sub_21D336CC0;
  *(v26 + 136) = v23;
  aBlock[4] = sub_21D336CC8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D3368EC;
  aBlock[3] = &block_descriptor_14;
  v29 = _Block_copy(aBlock);
  v30 = v6;

  sub_21D336CD8(&v44, &v42);

  v31 = v10;
  v32 = v13;
  v33 = v17;

  v34 = [v24 _dynamicAssetNamed_generator_];
  _Block_release(v29);

  if (v34)
  {
    v35 = objc_opt_self();
    v36 = v34;
    v37 = [v35 currentTraitCollection];
    v38 = [v36 imageWithTraitCollection_];
  }

  else
  {
    v38 = 0;
  }

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v38);
  v40 = v39;

  sub_21D112C9C(&v44);

  return v40;
}

uint64_t sub_21D3364D8(int a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2 && (v11 = [a2 traitCollection]) != 0 && (v12 = v11, v13 = objc_msgSend(v11, sel_userInterfaceStyle), v12, v13 == 2))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v33 = 0;
  v16 = *(a7 + 16);
  v34[0] = *a7;
  v34[1] = v16;
  v35 = *(a7 + 32);
  v17 = swift_allocObject();
  v18 = *(a4 + 16);
  *(v17 + 16) = *a4;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a4 + 32);
  *(v17 + 64) = *(a4 + 48);
  *(v17 + 72) = a5;
  *(v17 + 80) = &v33;
  *(v17 + 88) = a6;
  v19 = *(a7 + 16);
  *(v17 + 96) = *a7;
  *(v17 + 112) = v19;
  *(v17 + 128) = *(a7 + 32);
  *(v17 + 144) = *(a7 + 48);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D336D60;
  *(v20 + 24) = v17;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_22;
  v21 = _Block_copy(aBlock);
  v22 = a5;

  sub_21D336CD8(v34, v31);

  sub_21D336D74(a4, v31);

  [v15 performAsCurrentTraitCollection_];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v33)
    {
      v25 = [v33 imageWithRenderingMode_];
      v26 = v33;
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    v33 = v25;
    v27 = v25;

    _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v25);
    v29 = v28;

    v30 = v33;

    return v29;
  }

  return result;
}

void sub_21D336798(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  sub_21D336D74(a1, v22);
  v12 = sub_21DBFA12C();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:a2 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v13);
  v15 = v14;

  v23 = v20;
  v24 = v21;
  v22[0] = v15;
  v22[1] = v10;
  v22[2] = v11;
  v16 = *a4;
  v17 = *(a5 + 40);
  v26 = v22;
  v27 = a5;
  v28 = v16;
  v18 = v17(sub_21D112C28, v25);
  v19 = *a3;
  *a3 = v18;
}

id sub_21D3368EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v7(a2, a3, a4);

  return v11;
}

uint64_t sub_21D336994(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D75570]) initWithBounds_];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21D336DD0;
  *(v8 + 24) = v7;
  v24[4] = sub_21D112B24;
  v24[5] = v8;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_21D112B7C;
  v24[3] = &block_descriptor_31;
  v9 = _Block_copy(v24);

  v10 = [v6 PDFDataWithActions_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_21DBF551C();
    v14 = v13;

    v15 = sub_21DBF54FC();
    v16 = CGDataProviderCreateWithCFData(v15);

    if (v16)
    {
      v17 = CGPDFDocumentCreateWithProvider(v16);
      if (v17)
      {
        v18 = v17;
        v19 = CGPDFDocumentGetPage(v17, 1uLL);
        if (v19)
        {
          v20 = objc_opt_self();
          v21 = v19;
          v19 = [v20 _imageWithCGPDFPage_];
        }

        else
        {
        }
      }

      else
      {

        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v19);
    v23 = v22;
    sub_21D17B8A8(v12, v14);

    return v23;
  }

  return result;
}

void sub_21D336C28(void *a1, void (*a2)(void))
{
  [a1 beginPage];
  v4 = [a1 CGContext];
  a2();
}

void *TTRMutableTreeStorage.__allocating_init(topLevelNodeValues:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  swift_getTupleTypeMetadata2();
  v4 = sub_21DBFA68C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_21D345358(v4, AssociatedTypeWitness, v3, AssociatedConformanceWitness);

  swift_allocObject();
  v7 = sub_21D345644(a1, v6);

  return v7;
}

uint64_t TTRMutableTreeStorage.moveItem(at:in:to:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v82 = a3;
  v86 = a1;
  v6 = *v4;
  v7 = *v4;
  v8 = sub_21DBF5B9C();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  v10 = *(v6 + 80);
  v11 = sub_21DBFBA8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x28223BE20](v19);
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v72 - v22;
  MEMORY[0x28223BE20](v23);
  v80 = &v72 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v72 - v27;
  v29 = *(v12 + 16);
  v90 = a2;
  v85 = v29;
  (v29)(v17, a2, v11, v26);
  v84 = *(v18 + 48);
  v30 = v84(v17, 1, v10);
  v91 = v7;
  if (v30 == 1)
  {
    (*(v12 + 8))(v17, v11);
    v31 = v18;
  }

  else
  {
    v79 = v12;
    (*(v18 + 32))(v28, v17, v10);
    v94 = v93;
    WitnessTable = swift_getWitnessTable();
    if (TTRTreeContentsQueryable.contains(_:)(v28, v7, WitnessTable))
    {
      (*(v18 + 8))(v28, v10);
      v31 = v18;
    }

    else
    {
      if (qword_27CE56620 != -1)
      {
        swift_once();
      }

      v33 = sub_21DBF84BC();
      __swift_project_value_buffer(v33, qword_27CE5A918);
      v31 = v18;
      v34 = *(v18 + 16);
      v35 = v80;
      v34(v80, v28, v10);
      v36 = sub_21DBF84AC();
      v37 = sub_21DBFAEBC();
      if (os_log_type_enabled(v36, v37))
      {
        v78 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v94 = v75;
        *v78 = 136315138;
        v38 = *(*(v91 + 96) + 32);
        v74 = v37;
        v73 = v38(v10);
        v40 = v39;
        v76 = *(v31 + 8);
        v77 = v31 + 8;
        v76(v35, v10);
        v41 = sub_21D0CDFB4(v73, v40, &v94);

        v42 = v78;
        *(v78 + 4) = v41;
        v43 = v36;
        v44 = v36;
        v45 = v42;
        _os_log_impl(&dword_21D0C9000, v44, v74, "Invalid oldParent {oldParent: %s}", v42, 0xCu);
        v46 = v75;
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x223D46520](v46, -1, -1);
        MEMORY[0x223D46520](v45, -1, -1);

        v76(v28, v10);
      }

      else
      {

        v47 = v35;
        v48 = *(v31 + 8);
        v48(v47, v10);
        v48(v28, v10);
      }
    }

    v12 = v79;
  }

  v49 = v92;
  v85(v14, v92, v11);
  if (v84(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v50 = v91;
  }

  else
  {
    v51 = v83;
    (*(v31 + 32))(v83, v14, v10);
    v94 = v93;
    v50 = v91;
    v52 = swift_getWitnessTable();
    if (TTRTreeContentsQueryable.contains(_:)(v51, v50, v52))
    {
      (*(v31 + 8))(v51, v10);
    }

    else
    {
      if (qword_27CE56620 != -1)
      {
        swift_once();
      }

      v53 = sub_21DBF84BC();
      __swift_project_value_buffer(v53, qword_27CE5A918);
      v54 = v81;
      (*(v31 + 16))(v81, v51, v10);
      v55 = sub_21DBF84AC();
      v56 = sub_21DBFAEBC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v94 = v85;
        *v57 = 136315138;
        v58 = (*(*(v50 + 96) + 32))(v10);
        v60 = v59;
        v61 = *(v31 + 8);
        v61(v54, v10);
        v62 = sub_21D0CDFB4(v58, v60, &v94);
        v49 = v92;

        *(v57 + 4) = v62;
        _os_log_impl(&dword_21D0C9000, v55, v56, "Invalid newParent {newParent: %s}", v57, 0xCu);
        v63 = v85;
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x223D46520](v63, -1, -1);
        MEMORY[0x223D46520](v57, -1, -1);

        v61(v51, v10);
      }

      else
      {

        v64 = v54;
        v65 = *(v31 + 8);
        v65(v64, v10);
        v65(v51, v10);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_21DC08D00;
  *(v66 + 32) = v86;
  v94 = v66;
  sub_21D346DCC(&qword_280D1B818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
  sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70);
  v67 = v87;
  v68 = v89;
  sub_21DBFBCBC();
  v69 = sub_21D33D8E4(v67, v90);
  result = (*(v88 + 8))(v67, v68);
  if (v69)
  {
    v71 = *(v50 + 104);
    v94 = v10;
    v95 = *(v50 + 88);
    v96 = v71;
    v97 = v69;
    type metadata accessor for TTRTreeStorageNode();
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFACEC();

    if (v94)
    {
      sub_21D33CD60(v94, v49, v82);
    }
  }

  return result;
}

uint64_t TTRMutableTreeStorage.deleteItems(at:in:)(uint64_t a1, uint64_t a2)
{
  result = sub_21D33D8E4(a1, a2);
  if (result)
  {
    v4 = result;
    type metadata accessor for TTRTreeStorageNode();
    sub_21D303ED0(v4, sub_21D34576C, v2);
  }

  return result;
}

void *TTRMutableTreeStorage.copy()()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  type metadata accessor for TTRTreeStorageNode();
  v1 = sub_21DBFA74C();
  v2 = type metadata accessor for TTRTreeStorageNodeValue();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_21D0E5014(sub_21D346EC0, v0, v1, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);

  swift_beginAccess();
  v6 = *(v0 + 32);
  swift_allocObject();
  sub_21DBF8E0C();
  v7 = sub_21D345644(v5, v6);

  return v7;
}

uint64_t TTRMutableTreeStorage.children(of:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v31 = a1;
  v32 = v3;
  v4 = *(v2 + 80);
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &AssociatedTypeWitness - v7;
  v9 = *(v2 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &AssociatedTypeWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &AssociatedTypeWitness - v15;
  (*(v6 + 16))(v8, v31, v5, v14);
  v17 = *(v4 - 8);
  if ((*(v17 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    v18 = *(v32 + 88);
    v19 = *(v32 + 104);
    v20 = sub_21DBF8E0C();
    v21 = sub_21D345788(v20, v4, v18, v9, v19);

    return v21;
  }

  v22 = v32;
  (*(v9 + 24))(v4, v9);
  (*(v17 + 8))(v8, v4);
  v23 = v12;
  v24 = AssociatedTypeWitness;
  (*(v10 + 32))(v16, v23, AssociatedTypeWitness);
  v25 = sub_21D109DEC();
  if (v25)
  {
    v26 = *(*v25 + 136);
    v27 = v25;
    swift_beginAccess();
    v28 = *(v27 + v26);
    sub_21DBF8E0C();

    v21 = sub_21D345788(v28, v4, *(v22 + 88), v9, *(v22 + 104));

    (*(v10 + 8))(v16, v24);
    return v21;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_21DBFBEEC();
  MEMORY[0x223D42AA0](0xD000000000000022, 0x800000021DC49600);
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t TTRMutableTreeStorage.auxiliaryData(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v16 - v9;
  (*(v4 + 24))(v5, v4, v8);
  v11 = sub_21D109DEC();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (!v11)
  {
    return (*(*(*(v3 + 88) - 8) + 56))(a1, 1, 1);
  }

  v12 = *(*v11 + 128);
  swift_beginAccess();
  v13 = *(v3 + 88);
  v14 = *(v13 - 8);
  (*(v14 + 16))(a1, v11 + v12, v13);

  return (*(v14 + 56))(a1, 0, 1, v13);
}

uint64_t TTRMutableTreeStorage.descendants(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = *(v3 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v31 = v12;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  (*(v7 + 16))(v9, a1, v6, v16);
  v19 = *(v5 - 8);
  if ((*(v19 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    v20 = *(v4 + 88);
    v21 = *(v4 + 104);
    v22 = sub_21DBF8E0C();
    v23 = sub_21D343A24(v22);
  }

  else
  {
    (*(v10 + 24))(v5, v10);
    (*(v19 + 8))(v9, v5);
    v24 = v30;
    (*(v31 + 32))(v18, v14, v30);
    if (!sub_21D109DEC())
    {
      v32 = sub_21DBFA68C();
      sub_21DBFA74C();
      swift_getWitnessTable();
      v28 = sub_21DBFBE6C();
      (*(v31 + 8))(v18, v24);
      return v28;
    }

    swift_beginAccess();
    v20 = *(v4 + 88);
    v21 = *(v4 + 104);
    v25 = sub_21DBF8E0C();
    v23 = sub_21D343A24(v25);

    (*(v31 + 8))(v18, v24);
  }

  v26 = swift_allocObject();
  v26[2] = v5;
  v26[3] = v20;
  v26[4] = v10;
  v26[5] = v21;
  v26[6] = v23;
  v32 = v5;
  v33 = v20;
  v34 = v10;
  v35 = v21;
  type metadata accessor for TTRMutableTreeStorage.DescendantIterator();
  swift_getWitnessTable();
  return sub_21DBFBE7C();
}

uint64_t TTRMutableTreeStorage.parent(of:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  (*(v3 + 24))(v4, v3, v7);
  v10 = sub_21D109DEC();
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  if (v10 && (Strong = swift_weakLoadStrong(), , Strong))
  {
    v12 = *(*Strong + 120);
    swift_beginAccess();
    v13 = *(v4 - 8);
    (*(v13 + 16))(a1, Strong + v12, v4);

    v14 = 0;
  }

  else
  {
    v13 = *(v4 - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a1, v14, 1, v4);
}

uint64_t TTRMutableTreeStorage.relativeInsertionPosition(forInsertingAt:skipping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for TTRRelativeInsertionPosition();
  v9 = sub_21DBFBA8C();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = &v28 - v10;
  v11 = sub_21DBFBA8C();
  v33 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  result = TTRMutableTreeStorage.numberOfChildren(of:)(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v30 = v9;
    v16 = v6[12];
    v17 = type metadata accessor for TTRTreeLocation();
    v18 = *(a1 + *(v17 + 36));
    if (v18 <= v15)
    {
      v28 = &v28;
      v29 = a3;
      v35 = 0;
      v36 = v18;
      MEMORY[0x28223BE20](v17);
      *(&v28 - 4) = v3;
      *(&v28 - 3) = a1;
      *(&v28 - 2) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4F0);
      sub_21D0D0F1C(&qword_27CE5A4F8, &qword_27CE5A4F0);
      v20 = sub_21DBFA48C();
      MEMORY[0x28223BE20](v20);
      v21 = v6[11];
      *(&v28 - 4) = v7;
      *(&v28 - 3) = v21;
      v22 = v6[13];
      *(&v28 - 2) = v16;
      *(&v28 - 1) = v22;
      v23 = v34;
      sub_21D109F40(sub_21D345888, (&v28 - 6), MEMORY[0x277D84A98], v8, v24, v34);
      (*(v33 + 8))(v13, v11);
      v25 = *(v8 - 8);
      v26 = *(v25 + 48);
      if (v26(v23, 1, v8) == 1)
      {
        v27 = v29;
        swift_storeEnumTagMultiPayload();
        if (v26(v23, 1, v8) != 1)
        {
          (*(v31 + 8))(v23, v30);
        }
      }

      else
      {
        v27 = v29;
        (*(v25 + 32))(v29, v23, v8);
      }

      return (*(v25 + 56))(v27, 0, 1, v8);
    }

    else
    {
      v19 = *(*(v8 - 8) + 56);

      return v19(a3, 1, 1, v8);
    }
  }

  return result;
}

uint64_t TTRMutableTreeStorage.insertNewItem(with:in:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = *(*v4 + 96);
  v11[0] = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v11[1] = v10;
  type metadata accessor for TTRTreeStorageNode();
  swift_getAssociatedConformanceWitness();
  *&v11[0] = sub_21DBF9E2C();
  v8 = sub_21D33CBC8(a1, v11);
  if (sub_21D33CD60(v8, a2, a3))
  {
    sub_21D33D2D4();
  }
}

uint64_t TTRMutableTreeStorage.delete(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  v4 = *(*v2 + 80);
  sub_21DBFBA8C();
  v5 = type metadata accessor for TTRParentAndChildIndexes();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  sub_21D23CE60(v4, v4);
  v10 = *(v4 - 8);
  swift_allocObject();
  v11 = sub_21DBFA60C();
  (*(v10 + 16))(v12, a1, v4);
  sub_21D23C8B4();
  v13 = TTRMutableTreeStorage.delete(_:)(v11);

  v17[1] = v13;
  sub_21DBFA74C();
  swift_getWitnessTable();
  sub_21DBFACEC();

  v14 = *(v5 - 8);
  if ((*(v14 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v17[0], 1, 1, TupleTypeMetadata2);
  }

  else
  {
    TTRParentAndChildIndexes.first.getter(v5, v17[0]);
    return (*(v14 + 8))(v9, v5);
  }
}

uint64_t TTRMutableTreeStorage.delete(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v31 = sub_21DBFBA8C();
  v6 = type metadata accessor for TTRParentAndChildIndexes();
  v7 = *(v6 - 8);
  v28 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_21DBFA6DC();
  *&v29 = v4;
  if (v10 < 2)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v27 = 0;
    v30 = &v26;
    v33 = a1;
    MEMORY[0x28223BE20](v10);
    v11 = *(v4 + 88);
    *(&v26 - 4) = v5;
    *(&v26 - 3) = v11;
    v26 = *(v4 + 96);
    *(&v26 - 1) = v26;
    sub_21DBFA74C();
    swift_getAssociatedTypeWitness();
    *&v26 = swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    v27 = sub_21DBFA49C();
    v30 = &v26;
    v33 = a1;
    MEMORY[0x28223BE20](v27);
    *(&v26 - 2) = v2;
    *(&v26 - 1) = v12;
    sub_21DBF8E0C();
    swift_getWitnessTable();
    a1 = sub_21DBFBFDC();
  }

  v33 = a1;
  sub_21DBFA74C();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v30 = v2;
  v13 = sub_21DBFA4EC();

  MEMORY[0x28223BE20](v14);
  v15 = v29;
  v16 = *(v29 + 88);
  *(&v26 - 4) = v5;
  *(&v26 - 3) = v16;
  v29 = *(v15 + 96);
  *(&v26 - 1) = v29;
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  sub_21DBFBA8C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v19 = static TTRParentAndChildIndexes.grouped<A>(_:byParentProperty:)(v13, KeyPath, WitnessTable);

  sub_21DBF8E0C();
  if (!sub_21DBFA6DC())
  {
LABEL_14:

    return v19;
  }

  v20 = 0;
  v21 = *(v6 + 28);
  while (1)
  {
    v22 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v22)
    {
      (*(v7 + 16))(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v6);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    result = sub_21DBFBF7C();
    if (v28 != 8)
    {
      break;
    }

    v33 = result;
    (*(v7 + 16))(v9, &v33, v6);
    swift_unknownObjectRelease();
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
    TTRMutableTreeStorage.deleteItems(at:in:)(&v9[v21], v9);
    (*(*(v31 - 8) + 8))(v9);
    v24 = sub_21DBF5B9C();
    (*(*(v24 - 8) + 8))(&v9[v21], v24);
    ++v20;
    if (v23 == sub_21DBFA6DC())
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRMutableTreeStorage.steps(forMoving:to:)(uint64_t a1, void (*a2)(void, void, void))
{
  sub_21DBFA74C();
  v3 = type metadata accessor for TTRTreeLocation();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  v4 = sub_21DBFA4EC();
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = static TTRMutableTreeStorage.steps<A>(forMoving:to:)(v4, a2, v3, WitnessTable, v6);

  return v7;
}

uint64_t static TTRMutableTreeStorage.steps<A>(forMoving:to:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v85 = a2;
  v10 = *(v5 + 80);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x28223BE20](TupleTypeMetadata3);
  v62 = &v58 - v12;
  v86 = sub_21DBFBA8C();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v14 = &v58 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v70 = &v58 - v16;
  v87 = v10;
  v81 = *(v10 - 8);
  MEMORY[0x28223BE20](v17);
  v72 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v90 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - v23;
  v25 = sub_21DBFA6DC();
  v93 = a1;
  v58 = v19;
  v26 = *(v19 + 16);
  v88 = v24;
  v27 = v85;
  v85 = v26;
  v26(v24, v27, a3);
  sub_21DBF8E0C();
  v92 = sub_21DBF9E3C();
  v63 = TupleTypeMetadata3;
  v61 = sub_21DBFA74C();
  result = sub_21DBFA62C();
  if (v25 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (v25)
  {
    v79 = v19 + 16;
    result = 0;
    v66 = *(a4 + 64);
    v67 = a4 + 64;
    v69 = (v81 + 32);
    v68 = (v58 + 32);
    ++v83;
    v84 = (v58 + 56);
    v59 = (v81 + 16);
    v64 = (v81 + 8);
    v65 = (v58 + 8);
    v58 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81 = a5;
    v29 = v87;
    v76 = TupleTypeMetadata2;
    v75 = v14;
    v30 = v72;
    v31 = v88;
    v89 = v25;
    v82 = a4;
    while (!__OFADD__(result, 1))
    {
      v77 = result + 1;
      v32 = v70;
      sub_21DBFA78C();
      v33 = *(TupleTypeMetadata2 + 48);
      (*v69)(v30, v32, v29);
      v34 = v90;
      (*v68)(v90, &v32[v33], a3);
      v35 = *v84;
      (*v84)(v14, 1, 1, a3);
      v36 = v71[12];
      v37 = v71[13];
      v80 = v71[11];
      v74 = v36;
      v73 = v37;
      sub_21D3407FC(v31, v34, v14, v29, v80, a3, v36, v37, a4);
      v38 = v14;
      v39 = *v83;
      (*v83)(v38, v86);
      result = sub_21DBFA10C();
      v40 = v85;
      if ((result & 1) == 0)
      {
        v41 = *(v63 + 48);
        v42 = *(v63 + 64);
        v43 = v39;
        v44 = v35;
        v45 = v62;
        (*v59)(v62, v30, v29);
        v40(&v45[v41], v34, a3);
        v40(&v45[v42], v88, a3);
        v35 = v44;
        v39 = v43;
        result = sub_21DBFA6FC();
      }

      if (v89 < v77)
      {
        goto LABEL_18;
      }

      if (v77 != v89)
      {
        if (v77 >= v89)
        {
          goto LABEL_20;
        }

        v46 = v39;
        v48 = v76;
        v47 = v77;
        v49 = v60;
        v50 = v75;
        v78 = v35;
        v51 = v74;
        v52 = v73;
        v53 = v46;
        do
        {
          v85(v50, v88, a3);
          v78(v50, 0, 1, a3);
          sub_21DBFA74C();
          sub_21DBFA67C();
          v54 = v93;
          sub_21D345304(v47, v93);
          sub_21D3407FC(v54 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47 + *(v48 + 48), v90, v50, v87, v80, a3, v51, v52, v82);
          v53(v50, v86);
          ++v47;
        }

        while (v89 != v47);
      }

      v31 = v88;
      a4 = v82;
      result = v66(v91, a3, v82);
      if (__OFADD__(*v55, 1))
      {
        goto LABEL_19;
      }

      ++*v55;
      (result)(v91, 0);
      v56 = *v65;
      (*v65)(v90, a3);
      v30 = v72;
      v29 = v87;
      (*v64)(v72, v87);
      TupleTypeMetadata2 = v76;
      result = v77;
      v14 = v75;
      if (v77 == v89)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = *(v58 + 8);
  v31 = v88;
LABEL_16:
  v56(v31, a3);
  v57 = v92;

  return v57;
}

uint64_t static TTRMutableTreeStorage.unadjustInsertionLocation<A>(_:forMovingItemsAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15[-v10];
  v21 = a2;
  v12 = *(v4 + 96);
  v16 = *(v4 + 80);
  v17 = a3;
  v18 = v12;
  v19 = a4;
  v20 = a1;
  sub_21DBFA74C();
  swift_getWitnessTable();
  v13 = sub_21DBFA44C();
  (*(a4 + 24))(a3, a4);
  result = (*(a4 + 48))(a3, a4);
  if (!__OFADD__(result, v13))
  {
    return (*(a4 + 72))(v11, result + v13, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t TTRMutableTreeStorage.insertTemporaryItem(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v118 = a1;
  v115 = a2;
  v112 = *v2;
  v5 = v112[11];
  v6 = v112[12];
  v7 = v112[13];
  v119 = v112[10];
  v4 = v119;
  v120 = v5;
  v121 = v6;
  v122 = v7;
  v110 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  v8 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v8 - 8);
  v106 = &v92 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v105 = &v92 - v10;
  v98 = *(v5 - 8);
  MEMORY[0x28223BE20](v11);
  v100 = &v92 - v12;
  v119 = v4;
  v120 = v5;
  v102 = v7;
  v103 = v5;
  v107 = v6;
  v121 = v6;
  v122 = v7;
  v101 = type metadata accessor for TTRTreeStorageNodeValue();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v92 - v13;
  v14 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = sub_21DBFBA8C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v17 = &v92 - v16;
  v93 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v93);
  v19 = &v92 - v18;
  v117 = v14;
  v109 = *(v14 - 8);
  MEMORY[0x28223BE20](v20);
  v108 = &v92 - v21;
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v96 = (&v92 - v27);
  MEMORY[0x28223BE20](v28);
  v30 = &v92 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v92 - v33;
  v113 = v22;
  v114 = v4;
  v111 = *(v22 + 16);
  v111(&v92 - v33, v118, v4, v32);
  v119 = v3;
  v35 = v112;
  WitnessTable = swift_getWitnessTable();
  v116 = v34;
  if (TTRTreeContentsQueryable.contains(_:)(v34, v35, WitnessTable))
  {
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v37 = sub_21DBF84BC();
    __swift_project_value_buffer(v37, qword_27CE5A918);
    v38 = v116;
    v39 = v114;
    (v111)(v25, v116, v114);
    v40 = sub_21DBF84AC();
    v41 = sub_21DBFAE9C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v119 = v43;
      *v42 = 136315138;
      v44 = (*(v107 + 32))(v39);
      v46 = v45;
      v47 = *(v113 + 8);
      v47(v25, v39);
      v48 = sub_21D0CDFB4(v44, v46, &v119);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_21D0C9000, v40, v41, "Temporary item already exists {item: %s}", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x223D46520](v43, -1, -1);
      MEMORY[0x223D46520](v42, -1, -1);

      v47(v116, v39);
    }

    else
    {

      v64 = *(v113 + 8);
      v64(v25, v39);
      v64(v38, v39);
    }
  }

  else
  {
    TTRMutableTreeStorage.resolve(_:)(v118 + *(v110 + 56), v17);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) != 1)
    {
      v65 = *&v17[*(TupleTypeMetadata2 + 48)];
      v66 = v93;
      v67 = *(v93 + 48);
      v68 = v109 + 32;
      v69 = *(v109 + 32);
      v96 = v69;
      v70 = v17;
      v71 = v117;
      v69(v19, v70, v117);
      v109 = v68;
      *&v19[v67] = v65;
      v112 = *&v19[*(v66 + 48)];
      v69(v108, v19, v71);
      v72 = v116;
      v73 = v114;
      (v111)(v30, v116, v114);
      v74 = v110;
      v75 = v118;
      v76 = v100;
      v77 = v103;
      (*(v98 + 16))(v100, v118 + *(v110 + 52), v103);
      v78 = v101;
      v79 = sub_21DBFA68C();
      v80 = v97;
      v81 = v76;
      v82 = v107;
      TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)(v30, v81, v79, v73, v77, v97);
      TTRMutableTreeStorage.insertNewItem(with:in:at:)(v80, v108, v112);
      (*(v99 + 8))(v80, v78);
      (*(v82 + 24))(v73, v82);
      v83 = *(v74 - 8);
      v84 = v106;
      (*(v83 + 16))(v106, v75, v74);
      (*(v83 + 56))(v84, 0, 1, v74);
      swift_beginAccess();
      swift_getAssociatedConformanceWitness();
      sub_21DBF9F4C();
      sub_21DBF9F6C();
      swift_endAccess();
      (*(v113 + 8))(v72, v73);
      v85 = v117;
      v86 = swift_getTupleTypeMetadata2();
      v87 = *(v86 + 48);
      v88 = v115;
      v96(v115, v108, v85);
      *(v88 + v87) = v112;
      return (*(*(v86 - 8) + 56))(v88, 0, 1, v86);
    }

    (*(v94 + 8))(v17, v95);
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v49 = sub_21DBF84BC();
    __swift_project_value_buffer(v49, qword_27CE5A918);
    v50 = v96;
    v51 = v116;
    v52 = v114;
    (v111)(v96, v116, v114);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAE9C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v51;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v119 = v57;
      *v56 = 136315138;
      v58 = (*(v107 + 32))(v52);
      v60 = v59;
      v61 = v50;
      v62 = *(v113 + 8);
      v62(v61, v52);
      v63 = sub_21D0CDFB4(v58, v60, &v119);

      *(v56 + 4) = v63;
      _os_log_impl(&dword_21D0C9000, v53, v54, "Unable to determine target location for new temporary item {item: %s}", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x223D46520](v57, -1, -1);
      MEMORY[0x223D46520](v56, -1, -1);

      v62(v55, v52);
    }

    else
    {

      v90 = *(v113 + 8);
      v90(v50, v52);
      v90(v51, v52);
    }
  }

  v91 = swift_getTupleTypeMetadata2();
  return (*(*(v91 - 8) + 56))(v115, 1, 1, v91);
}

uint64_t TTRMutableTreeStorage.resolve(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v25 = *v2;
  v4 = *(v25 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v24 - v6;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v26 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation();
  v27 = a1;
  TTRTreeStorageTemporaryNodeLocation.parent.getter(v26, v14);
  (*(v9 + 16))(v11, v14, v8);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v29 = v2;
    v15 = v25;
    WitnessTable = swift_getWitnessTable();
    LOBYTE(v15) = TTRTreeContentsQueryable.contains(_:)(v7, v15, WitnessTable);
    (*(v5 + 8))(v7, v4);
    if ((v15 & 1) == 0)
    {
      (*(v9 + 8))(v14, v8);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v28, 1, 1, TupleTypeMetadata2);
    }
  }

  v17 = TTRMutableTreeStorage.numberOfChildren(of:)(v14);
  result = TTRTreeStorageTemporaryNodeLocation.index.getter(v26);
  if (v19)
  {
LABEL_8:
    v20 = swift_getTupleTypeMetadata2();
    v21 = *(v20 + 48);
    v22 = v28;
    (*(v9 + 32))(v28, v14, v8);
    *(v22 + v21) = v17;
    return (*(*(v20 - 8) + 56))(v22, 0, 1, v20);
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    if (v17 >= (result & ~(result >> 63)))
    {
      v17 = result & ~(result >> 63);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t TTRMutableTreeStorage.temporaryNodeValues.getter()
{
  v1 = *v0;
  sub_21D3426FC();
  swift_beginAccess();
  v19 = v0[4];
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v12 = v1[13];
  v13 = sub_21D345A58;
  v14 = v0;
  swift_getAssociatedTypeWitness();
  sub_21DBF8E0C();
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v2 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  swift_getAssociatedConformanceWitness();
  v3 = sub_21DBF9F4C();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_21D0E5014(sub_21D345A60, &v8, v3, v2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t TTRMutableTreeStorage.isTemporary(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v21 = *(*v1 + 96);
  v22 = v4;
  v23 = v4;
  v24 = v21;
  v18 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  v5 = sub_21DBFBA8C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = v22;
  v9 = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17 - v11;
  *&v23 = v1;
  WitnessTable = swift_getWitnessTable();
  if (!TTRTreeContentsQueryable.contains(_:)(a1, v3, WitnessTable))
  {
    return 2;
  }

  (*(v9 + 24))(v8, v9);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v14 = v18;
  sub_21DBF9F5C();
  swift_endAccess();
  (*(v22 + 8))(v12, AssociatedTypeWitness);
  v15 = (*(*(v14 - 8) + 48))(v7, 1, v14) != 1;
  (*(v19 + 8))(v7, v20);
  return v15;
}

uint64_t TTRMutableTreeStorage.debugTreeDescription.getter()
{
  v1 = *(*v0 + 80);
  v2 = sub_21DBFBA8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9[-v5];
  v13 = MEMORY[0x277D84F90];
  (*(*(v1 - 8) + 56))(&v9[-v5], 1, 1, v1, v4);
  v10 = v0;
  v11 = &v13;
  sub_21D344988(v6, sub_21D345A88, v9);
  (*(v3 + 8))(v6, v2);
  v12 = v13;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v7 = sub_21DBFA07C();
  swift_bridgeObjectRelease_n();
  return v7;
}

uint64_t TTRMutableTreeStorage.editAuxiliaryData(for:using:)(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v4 + 24))(v5, v4, v8);
  v11 = sub_21D109DEC();
  result = (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v11)
  {
    v13 = *(*v11 + 128);
    swift_beginAccess();
    a2(v11 + v13);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21D33BA50()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A918);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A918);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRMutableTreeStorage.traverseDescendants(of:using:)(uint64_t a1, void (*a2)(char *, char *, uint64_t, uint64_t, _BYTE *), uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = *(v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v40 = 0;
  (*(v9 + 16))(v11, a1, v8, v17);
  v20 = *(v7 - 8);
  if ((*(v20 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    swift_beginAccess();
    v21 = v4[2];
    sub_21DBF8E0C();
    v22 = sub_21DBFA68C();
    sub_21D33C504(v21, v22, &v40, v37, v38);
  }

  (*(v12 + 24))(v7, v12);
  (*(v20 + 8))(v11, v7);
  v23 = v13;
  v24 = *(v13 + 32);
  v25 = AssociatedTypeWitness;
  v24(v19, v15, AssociatedTypeWitness);
  v26 = sub_21D109DEC();
  if (v26)
  {
    v27 = v26;
    sub_21D23CE60(v7, v7);
    swift_allocObject();
    v28 = sub_21DBFA60C();
    v30 = v29;
    v31 = *(*v27 + 120);
    swift_beginAccess();
    (*(v20 + 16))(v30, v27 + v31, v7);
    sub_21D23C8B4();
    v39 = v28;
    MEMORY[0x28223BE20](v28);
    sub_21D346AC8(v27, sub_21D345A90);
    sub_21DBFA74C();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_21DBFA0DC();
    swift_beginAccess();
    v32 = v39;
    v33 = sub_21DBF8E0C();
    sub_21D33C504(v33, v32, &v40, v37, v38);

    (*(v23 + 8))(v19, v25);
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t sub_21D33C078(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - v4;
  v7 = *(v6 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v7, v2);
  sub_21DBFA74C();
  return sub_21DBFA6FC();
}

void sub_21D33C190(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v31 = a3;
  v32 = a5;
  v27 = a2;
  v28 = a4;
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v26 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v29 = a1 & 0xC000000000000001;
      v30 = a1 & 0xFFFFFFFFFFFFFF8;
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_7;
      }

LABEL_4:
      v13 = MEMORY[0x223D44740](v12, a1, v8);
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
        }

        else
        {
          v5 = *(*v13 + 120);
          swift_beginAccess();
          sub_21D0FE664(v13 + v5, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
          v15 = v13 + *(*v13 + 128);
          swift_beginAccess();
          v33 = *v15;
          v34 = *(v15 + 8);
          sub_21D105AA4(v33, v34);
          v16 = v31;
          sub_21DA27778(v10, &v33, v31, v32);
          sub_21D103A34(v33, v34);
          sub_21D1012D0(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
          if (*v16 == 1)
          {

            return;
          }

          v17 = *(*v13 + 136);
          swift_beginAccess();
          v18 = *(v13 + v17);
          if (!(v18 >> 62))
          {
            if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            goto LABEL_13;
          }
        }

        if (!sub_21DBFBD7C())
        {
LABEL_19:

          if (v14 == v11)
          {
            return;
          }

          goto LABEL_20;
        }

LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE587A8);
        v19 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v20 = v11;
        v21 = a1;
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_21DC08D00;
        sub_21D0FE664(v13 + v5, v22 + v19, type metadata accessor for TTRAccountsListsViewModel.Item);
        v33 = v27;
        sub_21DBF8E0C();
        sub_21D563840(v22);
        v23 = v33;
        v24 = sub_21DBF8E0C();
        v25 = v31;
        sub_21D33C190(v24, v23, v31, v28, v32);

        a1 = v21;
        v11 = v20;

        if ((*v25 & 1) != 0 || v14 == v20)
        {
          return;
        }

LABEL_20:
        ++v12;
        if (v29)
        {
          goto LABEL_4;
        }

LABEL_7:
        if (v12 >= *(v30 + 16))
        {
          __break(1u);
          return;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }
    }
  }
}

uint64_t sub_21D33C504(uint64_t a1, uint64_t a2, _BYTE *a3, void (*a4)(char *, char *, uint64_t, uint64_t, _BYTE *), uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v6 = *(*(*v5 + 88) - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v33 - v7;
  v33 = v5;
  v10 = *(v9 + 80);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v45 = v14;
  v49 = v10;
  v50 = v15;
  v40 = v15;
  v51 = *(v16 + 96);
  type metadata accessor for TTRTreeStorageNode();
  v17 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x223D42CB0](v46, v17, WitnessTable);
  v45 = v46[0];
  sub_21DBFC38C();
  sub_21DBFC35C();
  v39 = v17;
  v35 = sub_21DBFC37C();
  sub_21DBFC36C();
  v19 = v48;
  if (v48)
  {
    v20 = v47;
    v21 = (v34 + 16);
    v38 = (v6 + 16);
    v37 = (v6 + 8);
    v36 = (v34 + 8);
    while (1)
    {
      v22 = *(*v19 + 120);
      swift_beginAccess();
      v23 = *v21;
      (*v21)(v13, v19 + v22, v10);
      v24 = *(*v19 + 128);
      swift_beginAccess();
      v25 = v40;
      (*v38)(v8, v19 + v24, v40);
      v26 = v42;
      v43(v13, v8, v20, v41, v42);
      (*v37)(v8, v25);
      (*v36)(v13, v10);
      if (*v26)
      {
        break;
      }

      v27 = *(*v19 + 136);
      swift_beginAccess();
      v47 = *(v19 + v27);
      swift_getWitnessTable();
      if (sub_21DBFACFC())
      {
      }

      else
      {
        sub_21D23CE60(v10, v10);
        swift_allocObject();
        sub_21DBFA60C();
        v23(v28, v19 + v22, v10);
        sub_21D23C8B4();
        v29 = sub_21DBFA66C();

        v30 = sub_21DBF8E0C();
        v31 = v42;
        sub_21D33C504(v30, v29, v42, v43, v44);

        if (*v31 == 1)
        {
        }
      }

      sub_21DBFC36C();
      v20 = v47;
      v19 = v48;
      if (!v48)
      {
      }
    }
  }
}

uint64_t TTRMutableTreeStorage.setAuxiliaryData(_:for:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  (*(v4 + 24))(v5, v4, v8);
  v11 = sub_21D109DEC();
  result = (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v11)
  {
    v13 = *(*v11 + 128);
    swift_beginAccess();
    (*(*(*(v3 + 88) - 8) + 24))(v11 + v13, a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_21D33CBC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRTreeStorageNode();
  v10 = sub_21DBF9E3C();
  v4 = type metadata accessor for TTRTreeStorageNodeValue();
  sub_21DBFC5CC();
  v5 = *(v4 - 8);
  swift_allocObject();
  v6 = sub_21DBFA60C();
  (*(v5 + 16))(v7, a1, v4);
  sub_21D23C8B4();
  sub_21D33F59C(v6, &v10, a2);

  sub_21DBFA74C();
  swift_getWitnessTable();
  result = sub_21DBFACEC();
  if (v9)
  {

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D33CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  v44 = *v3;
  v5 = v44[12];
  v6 = v44[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v41 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  (*(v11 + 16))(v13, a2, v10, v18);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v47[7] = v46;
    swift_beginAccess();
    v21 = v44[11];
    v22 = v44[13];

    v47[0] = v6;
    v47[1] = v21;
    v47[2] = v5;
    v47[3] = v22;
    type metadata accessor for TTRTreeStorageNode();
    sub_21DBFA74C();
    sub_21DBFA70C();
    swift_endAccess();
    return 1;
  }

  v23 = v46;
  (*(v14 + 32))(v20, v13, v6);
  (*(v5 + 24))(v6, v5);
  v24 = sub_21D109DEC();
  (*(v42 + 8))(v9, v43);
  v25 = v14;
  if (v24)
  {
    sub_21D303718(v23);

    (*(v14 + 8))(v20, v6);
    return 1;
  }

  if (qword_27CE56620 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_27CE5A918);
  v28 = v41;
  (*(v14 + 16))(v41, v20, v6);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAEBC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = v20;
    v32 = v28;
    v33 = v31;
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136315138;
    v35 = (*(v5 + 32))(v6, v5);
    v37 = v36;
    v38 = *(v25 + 8);
    v38(v32, v6);
    v39 = sub_21D0CDFB4(v35, v37, v47);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_21D0C9000, v29, v30, "Cannot find node {item: %s}", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223D46520](v34, -1, -1);
    MEMORY[0x223D46520](v33, -1, -1);

    v38(v46, v6);
  }

  else
  {

    v40 = *(v25 + 8);
    v40(v28, v6);
    v40(v20, v6);
  }

  return 0;
}

uint64_t sub_21D33D2D4()
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_21DBF8E0C();
  type metadata accessor for TTRTreeStorageNode();
  swift_getAssociatedConformanceWitness();
  sub_21DBF9F4C();
  sub_21DBF9F0C();
  return swift_endAccess();
}

uint64_t TTRMutableTreeStorage.insertNewItems(with:in:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v5 = *(*v3 + 96);
  v44 = *(*v3 + 80);
  v45 = v5;
  v6 = type metadata accessor for TTRTreeStorageNodeValue();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = v33 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - v10;
  v12 = sub_21DBFA74C();
  v13 = sub_21DBF5B9C();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21D346DCC(&qword_280D1B830);
  *&v44 = v12;
  *(&v44 + 1) = v13;
  *&v45 = WitnessTable;
  *(&v45 + 1) = v15;
  v34 = sub_21DBFBF5C();
  MEMORY[0x28223BE20](v34);
  v33[1] = v33 - v16;
  v42 = v12;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  v40 = v13;
  v35 = v15;
  v36 = WitnessTable;
  *&v45 = WitnessTable;
  *(&v45 + 1) = v15;
  v43 = sub_21DBFBF4C();
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v18 = v33 - v17;
  v19 = a1;
  v20 = sub_21DBFA6DC();
  if (v20 != sub_21DBF5AAC())
  {
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_27CE5A918);
    v22 = sub_21DBF84AC();
    v23 = sub_21DBFAECC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21D0C9000, v22, v23, "newItems and indexes have different count", v24, 2u);
      MEMORY[0x223D46520](v24, -1, -1);
    }
  }

  *&v44 = v19;
  sub_21DBFC6EC();
  sub_21DBFBF2C();
  v42 = v18;
  sub_21DBFBF3C();
  v25 = *(*(TupleTypeMetadata2 - 8) + 48);
  v40 = v3;
  v26 = v25(v11, 1, TupleTypeMetadata2);
  v27 = v38;
  if (v26 != 1)
  {
    v28 = *(v39 + 32);
    v29 = (v39 + 8);
    do
    {
      v30 = v25;
      v31 = *&v11[*(TupleTypeMetadata2 + 48)];
      v28(v27, v11, v6);
      TTRMutableTreeStorage.insertNewItem(with:in:at:)(v27, v41, v31);
      (*v29)(v27, v6);
      sub_21DBFBF3C();
      v25 = v30;
    }

    while (v30(v11, 1, TupleTypeMetadata2) != 1);
  }

  return (*(v37 + 8))(v42, v43);
}

uint64_t sub_21D33D8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *v2;
  v65 = a1;
  v66 = v6;
  v7 = *(v5 + 10);
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = *(v5 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v62 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  (*(v9 + 16))(v11, a2, v8, v21);
  v24 = *(v7 - 8);
  if ((*(v24 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v25 = sub_21DBF5B9C();
    v26 = *(v66 + 11);
    v27 = *(v66 + 13);
    v67 = v7;
    v68 = v26;
    v69 = v12;
    v70 = v27;
    v28 = type metadata accessor for TTRTreeStorageNode();
    v29 = sub_21D346DCC(&qword_280D1B820);
    v31 = sub_21D0E5014(sub_21D346DAC, v3, v25, v28, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
    swift_beginAccess();
    sub_21DBFA74C();
    Array.remove(at:)();
    swift_endAccess();
  }

  else
  {
    v32 = v66;
    (*(v12 + 24))(v7, v12);
    (*(v24 + 8))(v11, v7);
    v33 = v64;
    (*(v64 + 32))(v23, v19, AssociatedTypeWitness);
    v34 = sub_21D109DEC();
    v35 = AssociatedTypeWitness;
    if (v34)
    {
      v36 = v34;
      v37 = sub_21DBF5B9C();
      v38 = *(v32 + 11);
      v39 = *(v32 + 13);
      v67 = v7;
      v68 = v38;
      v69 = v12;
      v70 = v39;
      v40 = type metadata accessor for TTRTreeStorageNode();
      v41 = sub_21D346DCC(&qword_280D1B820);
      v42 = v37;
      v43 = v65;
      v31 = sub_21D0E5014(sub_21D346E10, v36, v42, v40, MEMORY[0x277D84A98], v41, MEMORY[0x277D84AC0], v44);
      sub_21D30392C(v43);

      (*(v33 + 8))(v23, v35);
    }

    else
    {
      if (qword_27CE56620 != -1)
      {
        swift_once();
      }

      v45 = sub_21DBF84BC();
      __swift_project_value_buffer(v45, qword_27CE5A918);
      v46 = v33;
      v47 = *(v33 + 16);
      v48 = v63;
      v47(v63, v23, v35);
      v49 = sub_21DBF84AC();
      v50 = sub_21DBFAEBC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v35;
        v66 = v23;
        v53 = v51;
        v54 = swift_slowAlloc();
        v67 = v54;
        *v53 = 136315138;
        v47(v62, v48, v52);
        v55 = sub_21DBFA1AC();
        v57 = v56;
        v58 = *(v46 + 8);
        v58(v48, v52);
        v59 = sub_21D0CDFB4(v55, v57, &v67);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_21D0C9000, v49, v50, "Cannot find node {itemID: %s}", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x223D46520](v54, -1, -1);
        MEMORY[0x223D46520](v53, -1, -1);

        v58(v66, v52);
      }

      else
      {

        v60 = *(v33 + 8);
        v60(v48, v35);
        v60(v23, v35);
      }

      return 0;
    }
  }

  return v31;
}

uint64_t sub_21D33DF60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  if (a1)
  {
    (*(v10 + 16))(&v17 - v9, a2, AssociatedTypeWitness, v11);
    v17 = a1;
    swift_beginAccess();
    v12 = *(v5 + 88);
    v13 = *(v5 + 104);

    v18 = v7;
    v19 = v12;
    v20 = v6;
    v21 = v13;
    type metadata accessor for TTRTreeStorageNode();
    swift_getAssociatedConformanceWitness();
    sub_21DBF9F4C();
    sub_21DBF9F6C();
    return swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v15 = *(v5 + 88);
    v16 = *(v5 + 104);
    v18 = v7;
    v19 = v15;
    v20 = v6;
    v21 = v16;
    type metadata accessor for TTRTreeStorageNode();
    swift_getAssociatedConformanceWitness();
    sub_21DBF9F4C();
    sub_21DBF9E8C();
    swift_endAccess();
  }
}

uint64_t sub_21D33E1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  (*(v4 + 24))(v5, v4, v8);
  v11 = sub_21D109DEC();
  v12 = (*(v7 + 8))(v10, AssociatedTypeWitness);
  if (v11)
  {
    v16 = 0;
    MEMORY[0x28223BE20](v12);
    *(&v15 - 2) = a3;
    *(&v15 - 1) = &v16;
    sub_21D346AC8(v11, sub_21D346CA0);

    v13 = v16 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_21D33E388(uint64_t a1, _BYTE *a2, uint64_t a3, _BYTE *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - v8;
  sub_21D303410(v10);
  swift_getAssociatedConformanceWitness();
  v11 = sub_21DBFAB6C();
  result = (*(v7 + 8))(v9, AssociatedTypeWitness);
  if (v11)
  {
    *a4 = 1;
    *a2 = 1;
  }

  return result;
}

void TTRMutableTreeStorage.replace(_:with:replacesChildren:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v138) = a3;
  v133 = a2;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v132 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v131 = (&v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v9);
  v121 = &v114 - v11;
  v13 = *(v12 + 104);
  v10.i64[0] = v7;
  v141 = v10;
  v142 = *(v6 + 88);
  v14 = v142.i64[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v16 = vdupq_laneq_s64(v142, 1).u64[0];
  *(&v16 + 1) = v13;
  *&v146[16] = v16;
  *v146 = vzip1q_s64(v141, v142);
  v120 = type metadata accessor for TTRTreeStorageNode();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v134 = sub_21DBFBA8C();
  v130 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v139 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v114 - v19;
  *v146 = v7;
  *&v146[8] = v142;
  *&v146[24] = v13;
  v140 = type metadata accessor for TTRTreeStorageNodeValue();
  v128 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v21 = &v114 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  v141.i64[0] = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v114 - v27;
  v29 = *(v14 + 24);
  v30 = a1;
  v124 = v14;
  v29(v7, v14, v26);
  v142.i64[0] = v4;
  v31 = sub_21D109DEC();
  v126 = v22;
  v32 = *(v22 + 8);
  v129 = v28;
  v123 = AssociatedTypeWitness;
  v135 = v32;
  v136 = v22 + 8;
  v32(v28, AssociatedTypeWitness);
  if (!v31)
  {
    v36 = v131;
    if (qword_27CE56620 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_8;
  }

  *v146 = v142.i64[0];
  WitnessTable = swift_getWitnessTable();
  v34 = v133;
  v35 = TTRTreeContentsQueryable.contains(_:)(v133, v6, WitnessTable);
  v36 = TupleTypeMetadata2;
  v122 = v7;
  v115 = v31;
  v125 = v6;
  if (v35)
  {
    if (qword_27CE56620 != -1)
    {
      swift_once();
    }

    v37 = sub_21DBF84BC();
    __swift_project_value_buffer(v37, qword_27CE5A918);
    v38 = v128;
    v39 = v140;
    (*(v128 + 16))(v21, v34, v140);
    v40 = sub_21DBF84AC();
    v41 = sub_21DBFAECC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v34;
      v44 = swift_slowAlloc();
      *v146 = v44;
      *v42 = 136315138;
      v45 = (*(v124 + 32))(v122);
      v47 = v46;
      (*(v38 + 8))(v21, v39);
      v48 = sub_21D0CDFB4(v45, v47, v146);
      v36 = TupleTypeMetadata2;

      *(v42 + 4) = v48;
      _os_log_impl(&dword_21D0C9000, v40, v41, "The ID of new item is already used by another item in the tree {item: %s}", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      v49 = v44;
      v34 = v43;
      MEMORY[0x223D46520](v49, -1, -1);
      MEMORY[0x223D46520](v42, -1, -1);
    }

    else
    {

      v35 = (*(v38 + 8))(v21, v39);
    }

    v31 = v115;
  }

  v60 = v129;
  sub_21D303410(v35);
  sub_21D33DF60(0, v60);
  v61 = v123;
  v62 = v34;
  v63 = v135;
  v135(v60, v123);
  v64 = v140;
  sub_21D303C9C(v62, v62 + *(v140 + 52));

  sub_21D303410(v65);
  sub_21D33DF60(v31, v60);

  v63(v60, v61);
  if ((v138 & 1) == 0)
  {
LABEL_47:

    return;
  }

  v145 = sub_21DBF9E3C();
  swift_getAssociatedConformanceWitness();
  v144 = sub_21DBF9E2C();
  sub_21D33F59C(*(v62 + *(v64 + 56)), &v145, &v144);
  swift_beginAccess();
  v66 = sub_21DBF8E0C();
  sub_21D303ED0(v66, sub_21D346EF0, v142.i64[0]);

  sub_21D303DC4(v145);

  v68 = v144;
  if ((v144 & 0xC000000000000001) != 0)
  {
    v69 = sub_21DBFC21C();
    v70 = 0;
    v71 = 0;
    v30 = 0;
    v68 = v69 | 0x8000000000000000;
  }

  else
  {
    v72 = -1 << *(v144 + 32);
    v70 = v144 + 64;
    v71 = ~v72;
    v73 = -v72;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v30 = v74 & *(v144 + 64);
  }

  v75 = v139;
  v76 = 0;
  v138 = (v126 + 32);
  v133 = v36 - 8;
  v114 = v71;
  v7 = (v71 + 64) >> 6;
  v125 = v126 + 16;
  v131 = (v130 + 32);
  v119 = (v132 + 16);
  v118 = v124 + 32;
  v117 = (v132 + 8);
  *&v67 = 136315138;
  v116 = v67;
  v77 = v123;
  v132 = v68;
  v128 = v70;
  while (1)
  {
    if ((v68 & 0x8000000000000000) != 0)
    {
      if (sub_21DBFC2DC())
      {
        v93 = v129;
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        sub_21DBFC60C();
        swift_unknownObjectRelease();
        v94 = *(v36 + 12);
        (*v138)(v75, v93, v77);
        *&v75[v94] = v143;
        v92 = *(v36 - 1);
        (*(v92 + 56))(v75, 0, 1, v36);
      }

      else
      {
        v92 = *(v36 - 1);
        (*(v92 + 56))(v75, 1, 1, v36);
      }

      v81 = v76;
      v140 = v30;
      goto LABEL_38;
    }

    v80 = v30;
    v81 = v76;
    if (!v30)
    {
      break;
    }

LABEL_33:
    v140 = (v80 - 1) & v80;
    v85 = __clz(__rbit64(v80)) | (v81 << 6);
    v86 = v126;
    v87 = v129;
    v88 = v68;
    (*(v126 + 16))(v129, *(v68 + 48) + *(v126 + 72) * v85, v77);
    v89 = *(*(v88 + 56) + 8 * v85);
    v90 = *(v36 + 12);
    v91 = v87;
    v70 = v128;
    (*(v86 + 32))(v139, v91, v77);
    *&v139[v90] = v89;
    v75 = v139;
    v92 = *(v36 - 1);
    (*(v92 + 56))(v139, 0, 1, v36);

LABEL_38:
    v84 = v137;
LABEL_39:
    (*v131)(v84, v75, v134);
    if ((*(v92 + 48))(v84, 1, v36) == 1)
    {
      sub_21D0CFAF8();
      goto LABEL_47;
    }

    v95 = *&v84[*(v36 + 12)];
    (*v138)(v141.i64[0], v84, v77);
    if (sub_21D109DEC())
    {

      if (qword_27CE56620 != -1)
      {
        swift_once();
      }

      v96 = sub_21DBF84BC();
      __swift_project_value_buffer(v96, qword_27CE5A918);

      v97 = sub_21DBF84AC();
      v98 = sub_21DBFAECC();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v130 = v81;
        v100 = v99;
        v101 = swift_slowAlloc();
        v143 = v101;
        *v100 = v116;
        v102 = *(*v95 + 120);
        swift_beginAccess();
        v103 = v95 + v102;
        v104 = v121;
        v105 = v122;
        (*v119)(v121, v103, v122);
        v106 = (*(v124 + 32))(v105);
        v108 = v107;
        v109 = v105;
        v75 = v139;
        (*v117)(v104, v109);
        v110 = v106;
        v77 = v123;
        v111 = sub_21D0CDFB4(v110, v108, &v143);

        *(v100 + 4) = v111;
        _os_log_impl(&dword_21D0C9000, v97, v98, "The ID of new item is already used by another item in the tree {item: %s}", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        v112 = v101;
        v70 = v128;
        MEMORY[0x223D46520](v112, -1, -1);
        v113 = v100;
        v81 = v130;
        MEMORY[0x223D46520](v113, -1, -1);
      }

      v36 = TupleTypeMetadata2;
    }

    v79 = v141.i64[0];
    sub_21D33DF60(v78, v141.i64[0]);

    v135(v79, v77);
    v76 = v81;
    v30 = v140;
    v68 = v132;
  }

  if (v7 <= v76 + 1)
  {
    v82 = v76 + 1;
  }

  else
  {
    v82 = v7;
  }

  v130 = v82 - 1;
  v83 = v76;
  v84 = v137;
  while (1)
  {
    v81 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v81 >= v7)
    {
      v92 = *(v36 - 1);
      (*(v92 + 56))(v75, 1, 1, v36);
      v140 = 0;
      v81 = v130;
      goto LABEL_39;
    }

    v80 = *(v70 + 8 * v81);
    ++v83;
    if (v80)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_8:
  v50 = sub_21DBF84BC();
  __swift_project_value_buffer(v50, qword_27CE5A918);
  v51 = v132;
  (*(v132 + 16))(v36, v30, v7);
  v52 = sub_21DBF84AC();
  v53 = sub_21DBFAEBC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v146 = v55;
    *v54 = 136315138;
    v56 = (*(v124 + 32))(v7);
    v58 = v57;
    (*(v51 + 8))(v36, v7);
    v59 = sub_21D0CDFB4(v56, v58, v146);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_21D0C9000, v52, v53, "Cannot find item in tree {item: %s}", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v54, -1, -1);
  }

  else
  {

    (*(v51 + 8))(v36, v7);
  }
}

uint64_t sub_21D33F59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v68 = a2;
  v5 = v3[12];
  v6 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v54 - v8;
  v57 = v3;
  v9 = *(v3[11] - 8);
  MEMORY[0x28223BE20](v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v6;
  v75 = v5;
  *&v15 = v5;
  *(&v15 + 1) = v3[13];
  *&v16 = v6;
  v67 = v17;
  *(&v16 + 1) = v17;
  v82 = v15;
  v86 = v15;
  v80 = v16;
  v85 = v16;
  v18 = type metadata accessor for TTRTreeStorageNodeValue();
  v69 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v54 - v21;
  v55 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  result = sub_21DBFA6DC();
  if (!result)
  {
    return result;
  }

  v85 = v80;
  v86 = v82;
  v77 = type metadata accessor for TTRTreeStorageNode();
  v27 = 0;
  v70 = *(v75 + 24);
  v71 = v75 + 24;
  *&v80 = v69 + 16;
  v63 = (v69 + 32);
  v62 = (v12 + 16);
  v61 = (v9 + 16);
  v60 = (v7 + 8);
  v79 = (v69 + 8);
  *&v28 = 136315138;
  v56 = v28;
  v58 = a1;
  v64 = v25;
  while (1)
  {
    v30 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = *(v69 + 16);
    result = v31(v25, a1 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v27, v18);
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_20;
    }

LABEL_6:
    v78 = v31;
    *&v82 = v32;
    v33 = v83;
    (*v63)(v83, v25, v18);
    v34 = v65;
    v35 = v74;
    (*v62)(v65, v33, v74);
    v36 = v66;
    (*v61)(v66, &v33[*(v18 + 52)], v67);
    v37 = sub_21D303564(v34, v36);
    *&v85 = v37;
    v38 = sub_21DBFA74C();

    v76 = v38;
    sub_21DBFA6FC();
    v84 = v37;

    v39 = v72;
    v70(v35, v75);
    v40 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    sub_21DBF9F4C();
    v41 = v81;
    sub_21DBF9E9C();
    (*v60)(v39, v40);
    if (v85)
    {
      if (qword_27CE56620 != -1)
      {
        swift_once();
      }

      v42 = sub_21DBF84BC();
      __swift_project_value_buffer(v42, qword_27CE5A918);
      v43 = v59;
      v78(v59, v83, v18);
      v44 = sub_21DBF84AC();
      v45 = sub_21DBFAECC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = v43;
        v47 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v85 = v78;
        *v47 = v56;
        v70(v74, v75);
        v48 = sub_21DBFA1AC();
        v50 = v49;
        (*v79)(v46, v18);
        v51 = sub_21D0CDFB4(v48, v50, &v85);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_21D0C9000, v44, v45, "item ID is not unique {treeItemIdentifier: %s}", v47, 0xCu);
        v52 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x223D46520](v52, -1, -1);
        MEMORY[0x223D46520](v47, -1, -1);
      }

      else
      {

        (*v79)(v43, v18);
      }

      v41 = v81;
      a1 = v58;
    }

    v53 = *&v83[*(v18 + 56)];
    *&v85 = v53;
    sub_21DBFA74C();
    swift_getWitnessTable();
    if ((sub_21DBFACFC() & 1) == 0)
    {
      *&v85 = sub_21DBF9E3C();
      sub_21DBFA6DC();
      sub_21DBFA62C();
      sub_21D33F59C(v53, &v85, v41);
      sub_21D303DC4(v85);
    }

    (*v79)(v83, v18);
    v25 = v64;
    v29 = v82;
    result = sub_21DBFA6DC();
    ++v27;
    if (v29 == result)
    {
      return result;
    }
  }

  result = sub_21DBFBF7C();
  if (v55 != 8)
  {
    goto LABEL_21;
  }

  *&v85 = result;
  v31 = *v80;
  (*v80)(v25, &v85, v18);
  result = swift_unknownObjectRelease();
  v32 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    goto LABEL_6;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21D33FE68()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_21D303410(v4);
  sub_21D33DF60(0, v3);
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t sub_21D33FF80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(*a2 + 80);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v18 - v11;
  v14 = __OFSUB__(*v13, 1);
  v15 = *v13 - 1;
  if (v15 < 0 != v14)
  {
    return (*(v8 + 56))(a4, 1, 1, v7, v10);
  }

  v16 = TTRMutableTreeStorage.child(_:of:)(v15, v9, v12);
  if (a3 && (v18[1] = a3, MEMORY[0x28223BE20](v16), v18[-6] = v7, *&v18[-5] = *(v6 + 88), v18[-3] = *(v6 + 104), v18[-2] = v12, sub_21DBFA74C(), swift_getWitnessTable(), (sub_21DBFA58C() & 1) != 0))
  {
    (*(v8 + 56))(a4, 1, 1, v7);
  }

  else
  {
    (*(v8 + 16))(a4, v12, v7);
    (*(v8 + 56))(a4, 0, 1, v7);
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_21D3401CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v15 = *(a5 + 24);
  v15(a3, a5, v12);
  (v15)(a3, a5);
  swift_getAssociatedConformanceWitness();
  v16 = sub_21DBFA10C();
  v17 = *(v8 + 8);
  v17(v10, AssociatedTypeWitness);
  v17(v14, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t sub_21D34037C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = *a2;
  v39 = *(*a2 + 80);
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_21DBFBA8C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v35 = &v31 - v18;
  v40 = a2;
  WitnessTable = swift_getWitnessTable();
  v36 = a1;
  v37 = v5;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(a1, v5, WitnessTable, v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v32 + 8))(v10, v33);
    type metadata accessor for TTRTreeLocation();
    v20 = swift_getTupleTypeMetadata2();
    return (*(*(v20 - 8) + 56))(v38, 1, 1, v20);
  }

  else
  {
    v22 = *&v10[*(TupleTypeMetadata2 + 48)];
    v23 = *(v11 + 48);
    v24 = *(v14 + 32);
    v24(v13, v10, v6);
    *&v13[v23] = v22;
    v33 = *&v13[*(v11 + 48)];
    v25 = v35;
    v24(v35, v13, v6);
    v26 = v39;
    type metadata accessor for TTRTreeLocation();
    v27 = swift_getTupleTypeMetadata2();
    v28 = *(v27 + 48);
    v29 = v38;
    (*(*(v26 - 8) + 16))(v38, v36, v26);
    v30 = v34;
    (*(v14 + 16))(v34, v25, v6);
    TTRTreeLocation.init(parent:index:)(v30, v33, v26, v29 + v28);
    (*(v14 + 8))(v25, v6);
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }
}

void (*sub_21D3407FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9))(char *, void)
{
  v145 = a3;
  v156 = a2;
  v168 = a1;
  v173 = a9;
  v148 = sub_21DBFBA8C();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v130 - v10;
  v158 = *(a6 - 8);
  MEMORY[0x28223BE20](v11);
  v155 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v133 = &v130 - v14;
  v174 = v15;
  v16 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v142 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v139 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v150 = &v130 - v19;
  v20 = swift_checkMetadataState();
  v157 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v130 - v21;
  v23 = sub_21DBFBA8C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v151 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v136 = &v130 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v130 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  v160 = v16;
  v159 = *(v16 - 8);
  MEMORY[0x28223BE20](v34);
  v132 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v141 = &v130 - v37;
  MEMORY[0x28223BE20](v38);
  v152 = &v130 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v130 - v41;
  MEMORY[0x28223BE20](v43);
  v161 = &v130 - v44;
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v130 - v47;
  v49 = *(v173 + 24);
  v172 = a6;
  v50 = a6;
  v51 = v157;
  v166 = v49;
  v167 = v173 + 24;
  (v49)(v50, v46);
  v164 = *(v51 + 48);
  v165 = v51 + 48;
  v52 = v164(v33, 1, v20);
  v53 = AssociatedConformanceWitness;
  v154 = v24;
  v131 = v22;
  if (v52)
  {
    v153 = *(v24 + 8);
    v153(v33, v23);
    v54 = 1;
  }

  else
  {
    (*(v51 + 16))(v22, v33, v20);
    v153 = *(v24 + 8);
    v153(v33, v23);
    (*(v53 + 24))(v20, v53);
    (*(v51 + 8))(v22, v20);
    v54 = 0;
  }

  v56 = v171 + 56;
  v55 = *(v171 + 56);
  v162 = v48;
  v163 = v55;
  v55(v48, v54, 1, v174);
  v166(v172, v173);
  v57 = v164(v30, 1, v20);
  v143 = v20;
  v140 = v23;
  v138 = v42;
  if (v57 == 1)
  {
    v153(v30, v23);
    v58 = 1;
    v59 = v161;
  }

  else
  {
    v59 = v161;
    (*(AssociatedConformanceWitness + 24))(v20);
    (*(v51 + 8))(v30, v20);
    v58 = 0;
  }

  v60 = v174;
  v144 = v56;
  v163(v59, v58, 1, v174);
  v61 = *(TupleTypeMetadata2 + 48);
  v62 = v59;
  v63 = v159;
  v64 = v160;
  v66 = v159 + 16;
  v65 = *(v159 + 16);
  v67 = v150;
  v68 = v162;
  v65(v150, v162, v160);
  v149 = v61;
  v65(&v67[v61], v62, v64);
  v69 = *(v171 + 48);
  v70 = v69(v67, 1, v60);
  v134 = v65;
  v137 = v69;
  v135 = v66;
  if (v70 != 1)
  {
    v77 = v138;
    v65(v138, v67, v64);
    v78 = v149;
    if (v69(&v67[v149], 1, v174) != 1)
    {
      v80 = v63;
      v81 = v67;
      v82 = v171;
      v83 = v133;
      v84 = v174;
      (*(v171 + 32))(v133, &v81[v78], v174);
      swift_getAssociatedConformanceWitness();
      LODWORD(v149) = sub_21DBFA10C();
      v85 = *(v82 + 8);
      v85(v83, v84);
      v86 = *(v80 + 8);
      v86(v161, v64);
      v86(v162, v64);
      v85(v77, v84);
      v161 = v86;
      v86(v81, v64);
      v74 = v172;
      v75 = v173;
      v76 = v151;
      if ((v149 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v79 = *(v63 + 8);
    v79(v161, v64);
    v161 = v79;
    v79(v162, v64);
    (*(v171 + 8))(v77, v174);
    v74 = v172;
    v75 = v173;
    v76 = v151;
LABEL_13:
    (*(v142 + 8))(v67, TupleTypeMetadata2);
    goto LABEL_18;
  }

  v71 = v174;
  v72 = *(v63 + 8);
  v72(v62, v64);
  v72(v68, v64);
  v73 = v69(&v67[v149], 1, v71);
  v161 = v72;
  if (v73 != 1)
  {
    v74 = v172;
    v75 = v173;
    v76 = v151;
    goto LABEL_13;
  }

  v72(v67, v64);
  v74 = v172;
  v75 = v173;
  v76 = v151;
LABEL_15:
  v87 = *(v75 + 48);
  v88 = v87(v74, v75);
  if (v88 < v87(v74, v75))
  {
    result = (*(v75 + 64))(v175, v74, v75);
    if (__OFSUB__(*v90, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    --*v90;
    result(v175, 0);
  }

LABEL_18:
  v91 = v147;
  v92 = v146;
  v93 = v148;
  (*(v147 + 16))(v146, v145, v148);
  v94 = v158;
  if ((*(v158 + 48))(v92, 1, v74) == 1)
  {
    return (*(v91 + 8))(v92, v93);
  }

  (*(v94 + 32))(v155, v92, v74);
  v95 = v136;
  v166(v74, v75);
  v96 = v143;
  if (v164(v95, 1, v143))
  {
    v153(v95, v140);
    v97 = 1;
    v98 = v139;
    v99 = v152;
  }

  else
  {
    v100 = v131;
    v101 = v157;
    (*(v157 + 16))(v131, v95, v96);
    v153(v95, v140);
    v102 = v152;
    (*(AssociatedConformanceWitness + 24))(v96);
    v99 = v102;
    (*(v101 + 8))(v100, v96);
    v97 = 0;
    v98 = v139;
  }

  v103 = v141;
  v163(v99, v97, 1, v174);
  v166(v172, v75);
  if (v164(v76, 1, v96) == 1)
  {
    v153(v76, v140);
    v104 = 1;
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(v96);
    (*(v157 + 8))(v76, v96);
    v104 = 0;
  }

  v105 = v137;
  v106 = v174;
  v163(v103, v104, 1, v174);
  v107 = *(TupleTypeMetadata2 + 48);
  v108 = v152;
  v109 = v160;
  v110 = v134;
  v134(v98, v152, v160);
  v110(&v98[v107], v103, v109);
  if (v105(v98, 1, v106) == 1)
  {
    v111 = v173;
    v112 = v103;
    v113 = v161;
    (v161)(v112, v109);
    v113(v108, v109);
    if (v105(&v98[v107], 1, v174) == 1)
    {
      v113(v98, v109);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v114 = v132;
  v110(v132, v98, v109);
  if (v105(&v98[v107], 1, v174) == 1)
  {
    v115 = v161;
    (v161)(v141, v109);
    v115(v152, v109);
    (*(v171 + 8))(v114, v174);
LABEL_31:
    (*(v142 + 8))(v98, TupleTypeMetadata2);
    return (*(v158 + 8))(v155, v172);
  }

  v111 = v173;
  v116 = v174;
  v117 = v98;
  v118 = v171;
  v119 = v133;
  (*(v171 + 32))(v133, &v117[v107], v174);
  swift_getAssociatedConformanceWitness();
  v120 = sub_21DBFA10C();
  v121 = *(v118 + 8);
  v121(v119, v116);
  v122 = v161;
  (v161)(v141, v109);
  v122(v152, v109);
  v121(v114, v116);
  v122(v139, v109);
  if ((v120 & 1) == 0)
  {
    return (*(v158 + 8))(v155, v172);
  }

LABEL_34:
  v123 = *(v111 + 48);
  v124 = v155;
  v125 = v172;
  v126 = v123(v172, v111);
  if (v123(v125, v111) >= v126)
  {
    result = (*(v111 + 64))(v175, v125, v111);
    if (!__OFADD__(*v129, 1))
    {
      ++*v129;
      result(v175, 0);
      v127 = *(v158 + 8);
      v128 = v155;
      return v127(v128, v125);
    }

LABEL_41:
    __break(1u);
    return result;
  }

  v127 = *(v158 + 8);
  v128 = v124;
  return v127(v128, v125);
}

uint64_t TTRMutableTreeStorage.unadjustInsertionLocation(_:forMoving:)(uint64_t a1)
{
  sub_21DBFA74C();
  v2 = type metadata accessor for TTRTreeLocation();
  swift_getWitnessTable();
  v3 = sub_21DBFA4EC();
  WitnessTable = swift_getWitnessTable();
  static TTRMutableTreeStorage.unadjustInsertionLocation<A>(_:forMovingItemsAt:)(a1, v3, v2, WitnessTable);
}

uint64_t sub_21D341B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v33 = a1;
  v4 = *a2;
  v34 = *(*a2 + 80);
  v5 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_21DBFBA8C();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v29 - v8;
  v31 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v31);
  v11 = &v29 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v13);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v36 = a2;
  WitnessTable = swift_getWitnessTable();
  v19 = v33;
  v33 = v4;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(v19, v4, WitnessTable, v9);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v7 + 8))(v9, v32);
    v20 = 1;
    v21 = v35;
  }

  else
  {
    v32 = *&v9[*(TupleTypeMetadata2 + 48)];
    v22 = v31;
    v23 = *(v31 + 48);
    v24 = *(v12 + 32);
    v24(v11, v9, v5);
    *&v11[v23] = v32;
    v25 = *&v11[*(v22 + 48)];
    v24(v17, v11, v5);
    v26 = v30;
    (*(v12 + 16))(v30, v17, v5);
    v21 = v35;
    TTRTreeLocation.init(parent:index:)(v26, v25, v34, v35);
    (*(v12 + 8))(v17, v5);
    v20 = 0;
  }

  v27 = type metadata accessor for TTRTreeLocation();
  return (*(*(v27 - 8) + 56))(v21, v20, 1, v27);
}

BOOL sub_21D341F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v91 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v72 = v71 - v13;
  v92 = v14;
  v15 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v80 = v71 - v16;
  v17 = sub_21DBFBA8C();
  v79 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v89 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v71 - v20;
  v90 = v15;
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v22);
  v76 = v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v84 = v71 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v71 - v28;
  v30 = *(a8 + 24);
  v73 = a1;
  v82 = a5;
  v83 = a8;
  v78 = v30;
  (v30)(a5, a8, v27);
  v31 = *(AssociatedTypeWitness - 8);
  v32 = *(v31 + 48);
  v33 = 1;
  v34 = v32(v21, 1, AssociatedTypeWitness);
  v74 = v31;
  v75 = v17;
  if (v34 == 1)
  {
    v31 = v79;
    v35 = v17;
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness);
    v33 = 0;
    v35 = AssociatedTypeWitness;
  }

  (*(v31 + 8))(v21, v35);
  v36 = *(v91 + 56);
  v37 = 1;
  v85 = v29;
  v36(v29, v33, 1, v92);
  v38 = v89;
  v78(v82, v83);
  v39 = v38;
  v40 = v32(v38, 1, AssociatedTypeWitness);
  v71[1] = AssociatedTypeWitness;
  if (v40 == 1)
  {
    v41 = v90;
    v42 = v79;
    v43 = v80;
    v44 = v86;
    v45 = v84;
    v46 = v75;
  }

  else
  {
    v45 = v84;
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness);
    v39 = v89;
    v41 = v90;
    v37 = 0;
    v42 = v74;
    v46 = AssociatedTypeWitness;
    v43 = v80;
    v44 = v86;
  }

  (*(v42 + 8))(v39, v46);
  v47 = v37;
  v48 = v92;
  v36(v45, v47, 1, v92);
  v49 = *(TupleTypeMetadata2 + 48);
  v50 = *(v44 + 16);
  v51 = v85;
  v50(v43, v85, v41);
  v89 = v49;
  v50(&v49[v43], v45, v41);
  v52 = v45;
  v53 = *(v91 + 48);
  if (v53(v43, 1, v48) != 1)
  {
    v56 = v76;
    v57 = v90;
    v50(v76, v43, v90);
    v58 = v89;
    v59 = v92;
    if (v53(&v89[v43], 1, v92) != 1)
    {
      v62 = v91;
      v63 = v72;
      (*(v91 + 32))(v72, &v58[v43], v59);
      swift_getAssociatedConformanceWitness();
      v64 = sub_21DBFA10C();
      v65 = *(v62 + 8);
      v65(v63, v59);
      v66 = *(v86 + 8);
      v66(v84, v57);
      v66(v85, v57);
      v65(v56, v59);
      v66(v43, v57);
      if (v64)
      {
        goto LABEL_15;
      }

      return 0;
    }

    v60 = *(v86 + 8);
    v60(v84, v57);
    v60(v85, v57);
    (*(v91 + 8))(v56, v59);
LABEL_12:
    (*(v77 + 8))(v43, TupleTypeMetadata2);
    return 0;
  }

  v54 = *(v44 + 8);
  v55 = v90;
  v54(v52, v90);
  v54(v51, v55);
  if (v53(&v89[v43], 1, v92) != 1)
  {
    goto LABEL_12;
  }

  v54(v43, v55);
LABEL_15:
  v68 = v82;
  v67 = v83;
  v69 = *(v83 + 48);
  v70 = v69(v82, v83);
  return v70 < v69(v68, v67);
}

uint64_t sub_21D3426FC()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  swift_getAssociatedConformanceWitness();
  *(v0 + 32) = sub_21DBF9F2C();
}

uint64_t sub_21D34282C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a1;
  v4 = *a2;
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  v19 = *(v4 + 80);
  v20 = v6;
  v21 = *(v5 + 96);
  v15 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  (*(*(v15 - 8) + 16))(a3, v18, v15);
  TTRMutableTreeStorage.auxiliaryData(for:)(v10);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v11 + 32))(v14, v10, v6);
  return (*(v11 + 40))(a3 + *(v15 + 52), v14, v6);
}

uint64_t sub_21D342A90(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21D342B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = *v2;
  v6 = *(v5 + 88);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v27 - v7;
  v9 = *(v8 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v15 = *(*v14 + 136);
  swift_beginAccess();
  v32 = *(a1 + v15);
  sub_21DBF8E0C();
  *&v16 = v9;
  *(&v16 + 1) = v6;
  v31 = *(v5 + 96);
  v33 = v16;
  v34 = v31;
  type metadata accessor for TTRTreeStorageNode();
  v17 = sub_21DBFA74C();
  *&v33 = v9;
  *(&v33 + 1) = v6;
  v34 = v31;
  v18 = type metadata accessor for TTRTreeStorageNodeValue();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_21D0E5014(sub_21D346BD4, v3, v17, v18, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);

  v22 = *(*a1 + 120);
  swift_beginAccess();
  (*(v10 + 16))(v13, a1 + v22, v9);
  v23 = *(*a1 + 128);
  swift_beginAccess();
  v24 = a1 + v23;
  v25 = v28;
  (*(v29 + 16))(v28, v24, v6);
  return TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)(v13, v25, v21, v9, v6, v30);
}

void *TTRMutableTreeStorage.subtreeCopy(rootItem:)()
{
  v1 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 104);
  v30 = *(*v0 + 80);
  v2 = v30;
  v31 = v3;
  v26 = v3;
  v32 = v4;
  v33 = v5;
  v6 = type metadata accessor for TTRTreeStorageNodeValue();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = v25 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v29 = v10;
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v25 - v12;
  (*(v4 + 24))(v2, v4, v11);
  v14 = sub_21D109DEC();
  if (v14)
  {
    v15 = v14;
    v16 = swift_beginAccess();
    v25[0] = v25;
    MEMORY[0x28223BE20](v16);
    v25[1] = v1;
    v25[-4] = v13;
    v25[-3] = v15;
    v25[-2] = v0;
    sub_21DBF8E0C();
    v30 = v2;
    v31 = v26;
    v32 = v4;
    v33 = v5;
    type metadata accessor for TTRTreeStorageTemporaryNodeValue();
    v17 = v28;
    swift_getAssociatedConformanceWitness();
    v18 = sub_21DBF9F2C();
    v19 = v27;
    sub_21D342B64(v15, v27);
    sub_21DBFC5CC();
    swift_allocObject();
    v20 = sub_21DBFA60C();
    (*(v7 + 16))(v21, v19, v6);
    sub_21D23C8B4();
    swift_allocObject();
    v22 = sub_21D345644(v20, v18);

    (*(v7 + 8))(v19, v6);
    v23 = v17;
  }

  else
  {
    v22 = 0;
    v23 = v28;
  }

  (*(v29 + 8))(v13, v23);
  return v22;
}

uint64_t sub_21D34324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v29 = a3;
  v27 = *a5;
  v7 = *(*a4 + 80);
  v8 = sub_21DBFBA8C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_21DBFA10C())
  {
    v17 = 1;
  }

  else
  {
    TTRMutableTreeStorage.item(withID:)(v10);
    v18 = v28;
    if ((*(v28 + 48))(v10, 1, v7) == 1)
    {
      (*(v25 + 8))(v10, v26);
      v17 = 0;
    }

    else
    {
      (*(v18 + 32))(v16, v10, v7);
      v30 = a5;
      v19 = *(*a4 + 120);
      swift_beginAccess();
      (*(v18 + 16))(v13, a4 + v19, v7);
      v20 = v27;
      WitnessTable = swift_getWitnessTable();
      v17 = TTRTreeContentsQueryable.contains(_:inSubtreeAtRoot:)(v16, v13, v20, WitnessTable);
      v22 = *(v18 + 8);
      v22(v13, v7);
      v22(v16, v7);
    }
  }

  return v17 & 1;
}

uint64_t sub_21D34358C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v27 - v8;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_27CE56620 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5A918);

  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAECC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v4;
    v28 = v19;
    v34 = v19;
    *v18 = 136315138;
    v20 = *(*v13 + 120);
    swift_beginAccess();
    (*(v9 + 16))(v12, v13 + v20, a2);
    (*(v33 + 24))(a2);
    (*(v9 + 8))(v12, a2);
    v21 = sub_21DBFA1AC();
    v23 = sub_21D0CDFB4(v21, v22, &v34);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21D0C9000, v15, v16, "item ID is not unique {treeItemIdentifier: %s}", v18, 0xCu);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v24, -1, -1);
    v25 = v18;
    a4 = v29;
    MEMORY[0x223D46520](v25, -1, -1);
  }

  *a4 = v13;
}

uint64_t sub_21D343884()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  sub_21DBFA78C();
}

uint64_t sub_21D343948()
{
  swift_beginAccess();
  type metadata accessor for TTRTreeStorageNode();
  sub_21DBFA78C();
  return swift_endAccess();
}

uint64_t sub_21D343A24(uint64_t a1)
{
  type metadata accessor for TTRMutableTreeStorage.DescendantIterator.Level();
  sub_21DBFC5CC();
  swift_allocObject();
  result = sub_21DBFA60C();
  *v3 = a1;
  v3[1] = 0;
  sub_21D23C8B4();
  return result;
}

uint64_t sub_21D343A90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v31 = v6;
  v30 = v7;
  while (1)
  {
    v34 = *v3;
    v36 = v5;
    v37 = v4;
    v38 = v7;
    v39 = v6;
    type metadata accessor for TTRMutableTreeStorage.DescendantIterator.Level();
    v8 = sub_21DBFA74C();
    WitnessTable = swift_getWitnessTable();
    v10 = v8;
    sub_21DBFA04C();
    if (!v32)
    {
      break;
    }

    sub_21DBF8E0C();
    v36 = v5;
    v37 = v4;
    v11 = v4;
    v38 = v7;
    v39 = v6;
    type metadata accessor for TTRTreeStorageNode();
    v12 = v3;
    v13 = v5;
    v14 = sub_21DBFA6DC();
    swift_bridgeObjectRelease_n();
    v15 = v33 == v14;
    v5 = v13;
    v3 = v12;
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = swift_getWitnessTable();
    MEMORY[0x223D43510](&v36, v10, WitnessTable, v16);

    v4 = v11;
    v7 = v30;
    v6 = v31;
  }

  v11 = v4;
LABEL_7:
  swift_getWitnessTable();
  sub_21DBFAC2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050);
  sub_21D0E91B0();
  sub_21DBFA04C();
  if (v35)
  {
    v17 = *(v5 - 8);
    v18 = 1;
    v19 = a2;
    return (*(v17 + 56))(v19, v18, 1, v5);
  }

  sub_21DBFA78C();
  v36 = v5;
  v37 = v11;
  v38 = v30;
  v39 = v31;
  type metadata accessor for TTRTreeStorageNode();
  sub_21DBFA78C();

  v20 = v36;
  sub_21DBFA67C();
  v21 = *v3;
  result = sub_21D345304(v34, *v3);
  v23 = v21 + 16 * v34;
  v25 = *(v23 + 40);
  v24 = (v23 + 40);
  v26 = v25 + 1;
  if (!__OFADD__(v25, 1))
  {
    *v24 = v26;
    swift_beginAccess();
    sub_21DBFA74C();
    swift_getWitnessTable();
    if ((sub_21DBFACFC() & 1) == 0)
    {
      sub_21DBF8E0C();
      sub_21DBFA6FC();
    }

    v27 = *(*v20 + 120);
    swift_beginAccess();
    v17 = *(v5 - 8);
    v28 = v20 + v27;
    v19 = a2;
    (*(v17 + 16))(a2, v28, v5);

    v18 = 0;
    return (*(v17 + 56))(v19, v18, 1, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D343E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a4;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21DBFA3BC();
  v9 = v8;
  v10 = *(*a1 + 120);
  swift_beginAccess();
  sub_21D0FE664(a1 + v10, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = sub_21D25D250();
  v13 = v12;
  sub_21D1012D0(v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v14 = a1 + *(*a1 + 128);
  swift_beginAccess();
  v15 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);

  v17 = sub_21D25821C(v16, v15, v14);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v34 = 0x203A787561202CLL;
    v35 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v17, v19);

    v17 = v34;
    v19 = v35;
  }

  sub_21D0FE664(a1 + v10, v7, type metadata accessor for TTRRemindersListViewModel.Item);
  v21 = sub_21D2795BC();
  sub_21D1012D0(v7, type metadata accessor for TTRRemindersListViewModel.Item);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    v23 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = 0xE700000000000000;
    v23 = 0x504D4554202D20;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_21DBFBEEC();

  v34 = v32;
  v35 = v9;
  MEMORY[0x223D42AA0](0x6574692865646F4ELL, 0xEB00000000203A6DLL);
  MEMORY[0x223D42AA0](v11, v13);

  MEMORY[0x223D42AA0](v17, v19);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  MEMORY[0x223D42AA0](v23, v22);

  v24 = v34;
  v25 = v35;
  v26 = v33;
  v27 = *v33;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((result & 1) == 0)
  {
    result = sub_21D210A84(0, *(v27 + 16) + 1, 1, v27);
    v27 = result;
    *v26 = result;
  }

  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    result = sub_21D210A84((v29 > 1), v30 + 1, 1, v27);
    v27 = result;
    *v26 = result;
  }

  *(v27 + 16) = v30 + 1;
  v31 = v27 + 16 * v30;
  *(v31 + 32) = v24;
  *(v31 + 40) = v25;
  return result;
}

uint64_t sub_21D3441D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = a4;
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBFA3BC();
  v33 = v9;
  v34 = v8;
  v10 = *(*a1 + 120);
  swift_beginAccess();
  sub_21D0FE664(a1 + v10, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
  v11 = sub_21D25D428();
  v13 = v12;
  sub_21D1012D0(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
  v14 = a1 + *(*a1 + 128);
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v14 + 8);
  sub_21D105AA4(*v14, v16);
  v17 = sub_21D258310(v15, v16);
  v19 = v18;
  sub_21D103A34(v15, v16);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v36 = 0x203A787561202CLL;
    v37 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v17, v19);

    v17 = v36;
    v19 = v37;
  }

  sub_21D0FE664(a1 + v10, v7, type metadata accessor for TTRAccountsListsViewModel.Item);
  v21 = sub_21D279998();
  sub_21D1012D0(v7, type metadata accessor for TTRAccountsListsViewModel.Item);
  if (v21 == 2 || (v21 & 1) == 0)
  {
    v23 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = 0xE700000000000000;
    v23 = 0x504D4554202D20;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_21DBFBEEC();

  v36 = v34;
  v37 = v33;
  MEMORY[0x223D42AA0](0x6574692865646F4ELL, 0xEB00000000203A6DLL);
  MEMORY[0x223D42AA0](v11, v13);

  MEMORY[0x223D42AA0](v17, v19);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  MEMORY[0x223D42AA0](v23, v22);

  v24 = v36;
  v25 = v37;
  v26 = v35;
  v27 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((result & 1) == 0)
  {
    result = sub_21D210A84(0, *(v27 + 16) + 1, 1, v27);
    v27 = result;
    *v26 = result;
  }

  v30 = *(v27 + 16);
  v29 = *(v27 + 24);
  if (v30 >= v29 >> 1)
  {
    result = sub_21D210A84((v29 > 1), v30 + 1, 1, v27);
    v27 = result;
    *v26 = result;
  }

  *(v27 + 16) = v30 + 1;
  v31 = v27 + 16 * v30;
  *(v31 + 32) = v24;
  *(v31 + 40) = v25;
  return result;
}

uint64_t sub_21D344520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = a3;
  v45 = a4;
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v36 - v8;
  v10 = v5[10];
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  sub_21DBFA6DC();
  v15 = sub_21DBFA3BC();
  v42 = v16;
  v43 = v15;
  v17 = *(*a1 + 120);
  swift_beginAccess();
  v38 = *(v11 + 16);
  v39 = v17;
  v38(v14, a1 + v17, v10);
  v40 = (*(v5[12] + 32))(v10);
  v41 = v18;
  v37 = *(v11 + 8);
  v37(v14, v10);
  v19 = *(*a1 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v19, v6);
  v20 = (*(v5[13] + 16))(v6);
  v22 = v21;
  (*(v7 + 8))(v9, v6);
  v23 = v20;
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v46 = 0x203A787561202CLL;
    v47 = 0xE700000000000000;
    MEMORY[0x223D42AA0](v20, v22);

    v23 = v46;
    v22 = v47;
  }

  v38(v14, a1 + v39, v10);
  v25 = TTRMutableTreeStorage.isTemporary(_:)(v14);
  v37(v14, v10);
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v27 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v26 = 0xE700000000000000;
    v27 = 0x504D4554202D20;
  }

  v28 = v45;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_21DBFBEEC();

  v46 = v43;
  v47 = v42;
  MEMORY[0x223D42AA0](0x6574692865646F4ELL, 0xEB00000000203A6DLL);
  MEMORY[0x223D42AA0](v40, v41);

  MEMORY[0x223D42AA0](v23, v22);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  MEMORY[0x223D42AA0](v27, v26);

  v29 = v46;
  v30 = v47;
  v31 = *v28;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v31;
  if ((result & 1) == 0)
  {
    result = sub_21D210A84(0, *(v31 + 16) + 1, 1, v31);
    v31 = result;
    *v28 = result;
  }

  v34 = *(v31 + 16);
  v33 = *(v31 + 24);
  if (v34 >= v33 >> 1)
  {
    result = sub_21D210A84((v33 > 1), v34 + 1, 1, v31);
    v31 = result;
    *v28 = result;
  }

  *(v31 + 16) = v34 + 1;
  v35 = v31 + 16 * v34;
  *(v35 + 32) = v29;
  *(v35 + 40) = v30;
  return result;
}

uint64_t sub_21D344988(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v37 = a3;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = *(v6 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  (*(v10 + 16))(v12, a1, v9, v18);
  v21 = *(v8 - 8);
  if ((*(v21 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v22 = v4[2];
    v23 = *(v7 + 88);
    v24 = *(v7 + 104);
    sub_21DBF8E0C();
    v40 = v8;
    v41 = v23;
    v42 = v13;
    v43 = v24;
    type metadata accessor for TTRTreeStorageNode();
    v25 = sub_21DBFA68C();
    sub_21D345020(v22, v25, v36, v37);
  }

  else
  {
    v28 = v36;
    v27 = v37;
    (*(v13 + 24))(v8, v13);
    (*(v21 + 8))(v12, v8);
    (*(v38 + 32))(v20, v16, v39);
    v29 = sub_21D109DEC();
    if (v29)
    {
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      swift_initStackObject();
      v31 = sub_21DBFA60C();
      *v32 = v30;
      v33 = *(v7 + 88);
      v34 = *(v7 + 104);
      v40 = v8;
      v41 = v33;
      v42 = v13;
      v43 = v34;
      type metadata accessor for TTRTreeStorageNode();
      sub_21D23C8B4();

      v35 = sub_21DBFA68C();
      sub_21D345020(v31, v35, v28, v27);

      return (*(v38 + 8))(v20, v39);
    }

    else
    {
      result = sub_21DBFC31C();
      __break(1u);
    }
  }

  return result;
}

uint64_t TTRMutableTreeStorage.debugTraverseItems(startingAt:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  return sub_21D344988(a1, sub_21D346B94, v4);
}

uint64_t sub_21D344DF8(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4)
{
  v21[1] = a4;
  v7 = *(*a1 + 88);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v21 - v9;
  v12 = *(v11 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v18 = *(v17 + 120);
  swift_beginAccess();
  (*(v13 + 16))(v16, a1 + v18, v12);
  v19 = *(*a1 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, a1 + v19, v7);
  a3(v16, v10, a2);
  (*(v8 + 8))(v10, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21D345020(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = *v4;
  v32 = a2;
  v24 = v8[10];
  v25 = v8[11];
  v26 = v8[12];
  v27 = v8[13];
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  type metadata accessor for TTRTreeStorageNode();
  v9 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_21D0E5014(sub_21D346ED8, v23, v9, v24, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  if (sub_21DBFA6DC())
  {
    v11 = 4;
    do
    {
      v15 = v11 - 4;
      v16 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v16)
      {
        v17 = *(a1 + 8 * v11);

        v18 = v11 - 3;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = sub_21DBFBF7C();
        v18 = v11 - 3;
        if (__OFADD__(v15, 1))
        {
LABEL_11:
          __break(1u);
        }
      }

      a3(v17, v22);
      v19 = *(*v17 + 136);
      swift_beginAccess();
      v32 = *(v17 + v19);
      if (sub_21DBFACFC())
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        swift_allocObject();
        sub_21DBFA60C();
        *v12 = v17;
        sub_21D23C8B4();

        v13 = sub_21DBFA66C();

        v14 = sub_21DBF8E0C();
        sub_21D345020(v14, v13, a3, a4);
      }

      ++v11;
    }

    while (v18 != sub_21DBFA6DC());
  }
}

uint64_t sub_21D345304(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D345358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21DBFA6DC())
  {
    sub_21DBFC41C();
    v13 = sub_21DBFC40C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21DBFA6DC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21DBFA6AC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21DBFBF7C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21D36FA9C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void *sub_21D345644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = *(*v3 + 96);
  v10[0] = *(*v3 + 80);
  v10[1] = v8;
  type metadata accessor for TTRTreeStorageNode();
  *&v10[0] = sub_21DBF9E3C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_21DBF9E2C();
  sub_21D33F59C(a1, v10, &v9);
  v6 = v9;
  v3[2] = *&v10[0];
  v3[3] = v6;
  v3[4] = a2;
  return v3;
}

uint64_t sub_21D345788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[11] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a2;
  v10[7] = a3;
  v10[8] = a4;
  v10[9] = a5;
  type metadata accessor for TTRTreeStorageNode();
  v6 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  return sub_21D0E5014(sub_21D346CF0, v10, v6, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);
}

uint64_t sub_21D345888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(*(v2 + 16) - 8) + 16))(a2, a1, *(v2 + 16));
  type metadata accessor for TTRRelativeInsertionPosition();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D34590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return TTRTreeContentsQueryable.parentAndChildIndex(for:)(a1, v5, WitnessTable, a2);
}

uint64_t sub_21D345A98(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = a5;
  v39 = a3;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (!(a2 >> 62))
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_29:

    v17 = MEMORY[0x277D84F90];
    if (!(a1 >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v15 = sub_21DBFBD7C();
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_3:
  v40 = a1;
  v43 = MEMORY[0x277D84F90];

  result = sub_21D18EBA4(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = v43;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v19 = MEMORY[0x223D44740](i, a2);
        v20 = *(*v19 + 120);
        swift_beginAccess();
        sub_21D0FE664(v19 + v20, v11, type metadata accessor for TTRRemindersListViewModel.Item);
        swift_unknownObjectRelease();
        v43 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21D18EBA4(v21 > 1, v22 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v22 + 1;
        result = sub_21D346C00(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, type metadata accessor for TTRRemindersListViewModel.Item);
      }
    }

    else
    {
      v23 = (a2 + 32);
      do
      {
        v24 = *v23;
        v25 = *(**v23 + 120);
        swift_beginAccess();
        sub_21D0FE664(v24 + v25, v14, type metadata accessor for TTRRemindersListViewModel.Item);
        v43 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21D18EBA4(v26 > 1, v27 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v27 + 1;
        result = sub_21D346C00(v14, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, type metadata accessor for TTRRemindersListViewModel.Item);
        ++v23;
        --v15;
      }

      while (v15);
    }

    a1 = v40;
    if (!(v40 >> 62))
    {
LABEL_15:
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = sub_21DBFBD7C();
    v28 = result;
    if (result)
    {
LABEL_16:
      if (v28 >= 1)
      {
        v29 = 0;
        v40 = a1 & 0xC000000000000001;
        v38 = xmmword_21DC09CF0;
        while (1)
        {
          if (v40)
          {
            v35 = MEMORY[0x223D44740](v29, a1);
          }

          else
          {
            v35 = *(a1 + 8 * v29 + 32);
          }

          sub_21D343E84(v35, v17, a4, v41);
          v36 = *(*v35 + 136);
          swift_beginAccess();
          v37 = *(v35 + v36);
          if (v37 >> 62)
          {
            if (!sub_21DBFBD7C())
            {
              goto LABEL_19;
            }
          }

          else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          inited = swift_initStackObject();
          *(inited + 16) = v38;
          *(inited + 32) = v35;
          v42 = a2;

          sub_21DBF8E0C();
          v31 = a2;
          v32 = a1;
          sub_21D5624F8(inited);
          v33 = v42;

          v34 = sub_21DBF8E0C();
          sub_21D345A98(v34, v33, v39, a4, v41);
          a1 = v32;
          a2 = v31;

LABEL_19:

          if (v28 == ++v29)
          {
            goto LABEL_31;
          }
        }
      }

      goto LABEL_33;
    }

LABEL_31:
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21D345F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15];
  sub_21D0D3954(a1, v10, &unk_27CE5CD80);
  v17 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  LODWORD(a1) = (*(*(v17 - 8) + 48))(v10, 1, v17);
  swift_retain_n();
  if (a1 == 1)
  {
    sub_21D0CF7E0(v10, &unk_27CE5CD80);
    swift_beginAccess();

    v18 = sub_21DBF8E0C();
    sub_21D345A98(v18, MEMORY[0x277D84F90], a2, a3, a4);
  }

  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  sub_21D1012D0(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  sub_21D346C00(v13, v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v19 = sub_21D291698(v16);
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v20;

    sub_21D345A98(inited, MEMORY[0x277D84F90], a2, a3, a4);

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_21D1012D0(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t sub_21D3462B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = a5;
  v39 = a3;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  if (!(a2 >> 62))
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_29:

    v17 = MEMORY[0x277D84F90];
    if (!(a1 >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v15 = sub_21DBFBD7C();
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_3:
  v40 = a1;
  v43 = MEMORY[0x277D84F90];

  result = sub_21D18F6F4(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = v43;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v19 = MEMORY[0x223D44740](i, a2);
        v20 = *(*v19 + 120);
        swift_beginAccess();
        sub_21D0FE664(v19 + v20, v11, type metadata accessor for TTRAccountsListsViewModel.Item);
        swift_unknownObjectRelease();
        v43 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21D18F6F4(v21 > 1, v22 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v22 + 1;
        result = sub_21D346C00(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, type metadata accessor for TTRAccountsListsViewModel.Item);
      }
    }

    else
    {
      v23 = (a2 + 32);
      do
      {
        v24 = *v23;
        v25 = *(**v23 + 120);
        swift_beginAccess();
        sub_21D0FE664(v24 + v25, v14, type metadata accessor for TTRAccountsListsViewModel.Item);
        v43 = v17;
        v27 = *(v17 + 16);
        v26 = *(v17 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_21D18F6F4(v26 > 1, v27 + 1, 1);
          v17 = v43;
        }

        *(v17 + 16) = v27 + 1;
        result = sub_21D346C00(v14, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27, type metadata accessor for TTRAccountsListsViewModel.Item);
        ++v23;
        --v15;
      }

      while (v15);
    }

    a1 = v40;
    if (!(v40 >> 62))
    {
LABEL_15:
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_16;
      }

      goto LABEL_31;
    }

LABEL_30:
    result = sub_21DBFBD7C();
    v28 = result;
    if (result)
    {
LABEL_16:
      if (v28 >= 1)
      {
        v29 = 0;
        v40 = a1 & 0xC000000000000001;
        v38 = xmmword_21DC09CF0;
        while (1)
        {
          if (v40)
          {
            v35 = MEMORY[0x223D44740](v29, a1);
          }

          else
          {
            v35 = *(a1 + 8 * v29 + 32);
          }

          sub_21D3441D0(v35, v17, a4, v41);
          v36 = *(*v35 + 136);
          swift_beginAccess();
          v37 = *(v35 + v36);
          if (v37 >> 62)
          {
            if (!sub_21DBFBD7C())
            {
              goto LABEL_19;
            }
          }

          else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
          inited = swift_initStackObject();
          *(inited + 16) = v38;
          *(inited + 32) = v35;
          v42 = a2;

          sub_21DBF8E0C();
          v31 = a2;
          v32 = a1;
          sub_21D56386C(inited);
          v33 = v42;

          v34 = sub_21DBF8E0C();
          sub_21D3462B0(v34, v33, v39, a4, v41);
          a1 = v32;
          a2 = v31;

LABEL_19:

          if (v28 == ++v29)
          {
            goto LABEL_31;
          }
        }
      }

      goto LABEL_33;
    }

LABEL_31:
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21D346788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-v9];
  v11 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15];
  sub_21D0D3954(a1, v10, &qword_27CE5A490);
  v17 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  LODWORD(a1) = (*(*(v17 - 8) + 48))(v10, 1, v17);
  swift_retain_n();
  if (a1 == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE5A490);
    swift_beginAccess();

    v18 = sub_21DBF8E0C();
    sub_21D3462B0(v18, MEMORY[0x277D84F90], a2, a3, a4);
  }

  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v13);
  sub_21D1012D0(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
  sub_21D346C00(v13, v16, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v19 = sub_21D2916B0(v16);
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v20;

    sub_21D3462B0(inited, MEMORY[0x277D84F90], a2, a3, a4);

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_21D1012D0(v16, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  }

  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

uint64_t sub_21D346AC8(uint64_t a1, void (*a2)(uint64_t, char *))
{
  v5 = 0;

  do
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    a2(Strong, &v5);
  }

  while (v5 != 1);
}

uint64_t sub_21D346C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21D346C68()
{
  v0 = sub_21D109DEC();
  if (v0)
  {
  }

  return v0 != 0;
}

uint64_t sub_21D346D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = *(**a1 + 120);
  swift_beginAccess();
  return (*(*(v4 - 8) + 16))(a2, v5 + v6, v4);
}

uint64_t sub_21D346DCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF5B9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21D346E30(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  return a1;
}

void *sub_21D346E80(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

id TTRNoDefaultImplicitActionLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRNoDefaultImplicitActionLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_21D347020(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id _s15RemindersUICore31TTRNoDefaultImplicitActionLayerC5layerACyp_tcfC_0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_21D347128(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_21DBFC62C();
  v8.receiver = v2;
  v8.super_class = a2();
  v6 = objc_msgSendSuper2(&v8, sel_initWithLayer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id sub_21D3471DC(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_21D347370(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_21DBFC62C();
  v9.receiver = a1;
  v9.super_class = a4();
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

id sub_21D347430(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_21D3474C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static TTRTextFieldCharacterLimiter.isWithinCharacterLimit(for:range:replacementString:maxLength:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 1;
  }

  result = [a1 string];
  if (result)
  {
    v11 = result;
    v12 = sub_21DBFA12C();
    v13 = [v11 stringByReplacingCharactersInRange:a2 withString:{a3, v12}];

    sub_21DBFA16C();
    v14 = sub_21DBFA28C();
    v15 = [a1 string];
    sub_21DBFA16C();

    v16 = sub_21DBFA28C();

    if (v16 < v14)
    {
      v17 = sub_21DBFA28C();

      return v17 <= a6;
    }

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t TTRBoardReminderCellTitleConfiguration.module.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TTRRemindersListInCellModule();
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRBoardReminderCellTitleConfiguration.module.setter(uint64_t a1)
{
  type metadata accessor for TTRRemindersListInCellModule();
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21D3477B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D347830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardReminderCellTitleConfiguration.init(module:viewModelUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListInCellModule();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = sub_21DBFBA8C();
  (*(*(v7 - 8) + 40))(a3, a1, v7);
  v8 = a3 + *(type metadata accessor for TTRBoardReminderCellTitleConfiguration() + 28);

  return sub_21D3479C8(a2, v8);
}

uint64_t sub_21D3479C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardReminderCellNotesConfiguration.module.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  type metadata accessor for TTRRemindersListInCellModule();
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TTRBoardReminderCellNotesConfiguration.module.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  type metadata accessor for TTRRemindersListInCellModule();
  v5 = sub_21DBFBA8C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TTRBoardReminderCellNotesConfiguration.viewModelUpdate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TTRBoardReminderCellNotesConfiguration.viewModelUpdate.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t TTRBoardReminderCellNotesConfiguration.init(isHidden:module:viewModelUpdate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for TTRBoardReminderCellNotesConfiguration();
  v9 = *(v8 + 36);
  v10 = type metadata accessor for TTRRemindersListInCellModule();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  v11 = sub_21DBFBA8C();
  (*(*(v11 - 8) + 40))(&a4[v9], a2, v11);
  v12 = *(v8 + 40);
  v13 = type metadata accessor for TTRBoardReminderCellOptionalUpdate();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a4[v12], a3, v13);
}

void *TTRBoardReminderCellCompletedButtonConfiguration.tintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *TTRBoardReminderCellCompletedButtonConfiguration.preferredSymbolConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_21D347F68@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E622C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D347FE8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t TTRBoardReminderCellCompletedButtonConfiguration.onCompletedPressed.getter()
{
  v1 = *(v0 + 32);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRBoardReminderCellCompletedButtonConfiguration.onCompletedPressed.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 32));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TTRBoardReminderCellCompletedButtonConfiguration.init(isCompleted:tintColor:style:preferredSymbolConfiguration:onCompletedPressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = v7;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

id TTRBoardReminderCellLocationConfiguration.icon.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRBoardReminderCellLocationConfiguration.attributedDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *TTRBoardReminderCellLocationConfiguration.preferredSymbolConfiguration.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL TTRBoardReminderCellLocationConfiguration.isHidden.getter()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = [v1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

uint64_t TTRBoardReminderCellURLConfiguration.Attachment.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF54CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRBoardReminderCellURLConfiguration.Attachment.url.setter(uint64_t a1)
{
  v3 = sub_21DBF54CC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

id TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment() + 20));

  return v1;
}

uint64_t type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment()
{
  result = qword_27CE5AAC8;
  if (!qword_27CE5AAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment() + 20);

  *(v1 + v3) = a1;
}

void *TTRBoardReminderCellURLConfiguration.Attachment.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment() + 24));
  v2 = v1;
  return v1;
}

void TTRBoardReminderCellURLConfiguration.Attachment.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment() + 24);

  *(v1 + v3) = a1;
}

uint64_t TTRBoardReminderCellURLConfiguration.Attachment.init(url:attachmentID:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment();
  v9 = *(v8 + 24);
  v10 = sub_21DBF54CC();
  result = (*(*(v10 - 8) + 32))(a4, a1, v10);
  *(a4 + *(v8 + 20)) = a2;
  *(a4 + v9) = a3;
  return result;
}

uint64_t TTRBoardReminderCellURLConfiguration.attachments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

RemindersUICore::TTRBoardReminderCellURLConfiguration __swiftcall TTRBoardReminderCellURLConfiguration.init(attachments:)(Swift::OpaquePointer attachments)
{
  v3 = v1;

  v3->_rawValue = attachments._rawValue;
  return result;
}

uint64_t sub_21D348734@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D1CDA04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D3487B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

id TTRBoardReminderCellAppLinkConfiguration.icon.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRBoardReminderCellAppLinkConfiguration.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRBoardReminderCellAppLinkConfiguration.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_21D34897C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E622C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D3489FC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t TTRBoardReminderCellAppLinkConfiguration.onAppLinkPress.getter()
{
  v1 = *(v0 + 24);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRBoardReminderCellAppLinkConfiguration.onAppLinkPress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TTRBoardReminderCellAppLinkConfiguration.init(icon:name:onAppLinkPress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TTRBoardReminderCellShowSubtasksConfiguration.subtaskCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void *TTRBoardReminderCellShowSubtasksConfiguration.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *TTRBoardReminderCellShowSubtasksConfiguration.subtaskFont.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_21D348CA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E622C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D348D28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 40);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t TTRBoardReminderCellShowSubtasksConfiguration.onShowSubtasksButtonPress.getter()
{
  v1 = *(v0 + 40);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRBoardReminderCellShowSubtasksConfiguration.onShowSubtasksButtonPress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t TTRBoardReminderCellShowSubtasksConfiguration.init(isShowingSubtasks:subtaskCount:tintColor:subtaskFont:onShowSubtasksButtonPress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t TTRBoardReminderCellShowSubtasksConfiguration.showSubtasksButtonTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if ((*v0 & 1) == 0)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D83B88];
  *(v4 + 16) = xmmword_21DC08D00;
  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  v7 = sub_21DBFA13C();

  return v7;
}

uint64_t TTRBoardReminderCellSubtaskCountConfiguration.subtaskCountString.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRBoardReminderCellSubtaskCountConfiguration.subtaskCountString.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21D3490D8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E622C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D349158(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCountString:tintColor:onSubtaskCountPressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCount:displayStyle:tintColor:onSubtaskCountPressed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = 0;
  v12 = *a3;
  v13 = 0;
  if (v12 != 2 && (v12 & 1) == 0 && (a2 & 1) == 0)
  {
    v14 = result;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D83B88];
    *(v15 + 16) = xmmword_21DC08D00;
    v17 = MEMORY[0x277D83C10];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = v14;
    v11 = sub_21DBFA13C();
    v13 = v18;
  }

  *a7 = v11;
  a7[1] = v13;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = a6;
  return result;
}

BOOL TTRBoardReminderCellSubtaskCountConfiguration.isHidden.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 1;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.sectionTitle.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.sectionTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21D34946C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E622C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D3494EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.onSuggestedSectionPress.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E78(v1);
  return v1;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.onSuggestedSectionPress.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*(v2 + 16));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.init(sectionTitle:onSuggestedSectionPress:isEditingItem:isInMultiSelectMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 33) = a6;
  return result;
}

uint64_t TTRBoardReminderCellSuggestedSectionConfiguration.isHidden.getter()
{
  if (!*(v0 + 8) || (v1 = *(v0 + 32), v2 = *(v0 + 33), v1 != 2) && (v1 & 1) != 0)
  {
    v2 = 1;
  }

  return v2 & 1;
}

void *TTRBoardReminderCellInfoButtonConfiguration.infoButtonSymbolConfiguration.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *TTRBoardReminderCellInfoButtonConfiguration.tintColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_21D3497D0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D0E6070;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D349850(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

_BYTE *TTRBoardReminderCellInfoButtonConfiguration.init(infoButtonState:infoButtonSymbolConfiguration:tintColor:onInfoPressed:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t TTRBoardReminderCellInfoButtonVisibility.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL static TTRBoardReminderCellInfoButtonVisibility.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
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

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_21D3499EC(unsigned __int8 *a1, unsigned __int8 *a2)
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

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t TTRBoardReminderCellContentConfigurationType.notesTextViewIsHidden.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for TTRBoardReminderCellNotesConfiguration();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  (*(a2 + 144))(a1, a2, v6);
  v9 = *v8;
  (*(v5 + 8))(v8, v4);
  return v9;
}

BOOL TTRBoardReminderCellContentConfigurationType.hashtagsLabelIsHidden.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 336))();
  if (!v3)
  {
    return 1;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

BOOL TTRBoardReminderCellContentConfigurationType.priorityIndicatorIsHidden.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 384))();
  if (!v3)
  {
    return 1;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

BOOL TTRBoardReminderCellContentConfigurationType.descriptionLabelIsHidden.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 432))();
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [v2 string];

  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v8 == 0;
}

BOOL TTRBoardReminderCellContentConfigurationType.listNameIsHidden.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 408))();
  if (!v3)
  {
    return 1;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 == 0;
}

BOOL TTRBoardReminderCellContentConfigurationType.subtaskCountIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 216))(&v8);
  v2 = v9;
  v3 = v10;
  v4 = v11;
  if (v9)
  {
    v5 = v8;

    sub_21D0D0E88(v4);
    v6 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    return v6 == 0;
  }

  else
  {

    sub_21D0D0E88(v4);
    return 1;
  }
}

BOOL TTRBoardReminderCellContentConfigurationType.locationLabelIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 168))(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v7[2];
  v5 = TTRBoardReminderCellLocationConfiguration.isHidden.getter();

  return v5;
}

uint64_t TTRBoardReminderCellContentConfigurationType.imageAttachmentsAreHidden.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 288))(a1, a2, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a2) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return a2 & 1;
}

BOOL TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 480))(v5);
  v2 = v5[3];
  v3 = v5[0] == 0;

  sub_21D0D0E88(v2);
  return v3;
}

uint64_t TTRBoardReminderCellContentConfigurationType.appLinkIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 504))(v5);
  v2 = v5[2];
  v3 = v6;
  if (v5[0])
  {

    sub_21D0D0E88(v3);
    return 0;
  }

  else
  {
    sub_21D0D0E88(v6);
    if (v2)
    {

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

BOOL TTRBoardReminderCellContentConfigurationType.urlIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 456))(&v4);
  v2 = *(v4 + 16);

  return v2 == 0;
}

BOOL TTRBoardReminderCellContentConfigurationType.accessoriesAreHidden.getter(uint64_t a1, uint64_t a2)
{
  if (!TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter(a1, a2) || (TTRBoardReminderCellContentConfigurationType.appLinkIsHidden.getter(a1, a2) & 1) == 0)
  {
    return 0;
  }

  (*(a2 + 456))(&v6, a1, a2);
  v4 = *(v6 + 16);

  return v4 == 0;
}

uint64_t TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 192))(v7);
  v2 = v7[1];
  v3 = v8;
  v4 = v10;
  v5 = v11;

  sub_21D0D0E88(v5);
  return v3 & 1 | (v2 == 0);
}

uint64_t TTRBoardReminderCellContentConfigurationType.infoButtonVisibility.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  (*(a2 + 264))(v11);
  v6 = LOBYTE(v11[0]);
  v7 = v11[2];
  v8 = v11[3];

  result = sub_21D0D0E88(v8);
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      result = (*(a2 + 48))(a1, a2);
      if (result)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      *a3 = v10;
    }

    else
    {
      *a3 = 2;
    }
  }

  else
  {
    *a3 = v6 && (v6 == 1 || (result = (*(a2 + 48))(a1, a2), (result & 1) != 0));
  }

  return result;
}

uint64_t TTRBoardReminderCellContentConfigurationType.suggestedSectionButtonIsHidden.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 240))(v6);
  v2 = v6[2];
  if (!v6[1])
  {

    sub_21D0D0E88(v2);
LABEL_6:
    v4 = 1;
    return v4 & 1;
  }

  v3 = v7;
  v4 = v8;

  sub_21D0D0E88(v2);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    goto LABEL_6;
  }

  return v4 & 1;
}

unint64_t sub_21D34A3B8()
{
  result = qword_27CE5A938[0];
  if (!qword_27CE5A938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE5A938);
  }

  return result;
}

uint64_t sub_21D34A40C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_21D34A4A8(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8;
  v9 = v7 + 9;
  if (v5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v4 + 80);
  if ((v11 & 0x1000F8) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + (((v11 & 0xF8) + 23) & ~(v11 & 0xF8) & 0x1F8));

    return a1;
  }

  if (v5)
  {
    v14 = a2;
    v15 = (*(v4 + 48))(a2, *(v4 + 84), *(a3 + 16));
    a2 = v14;
    if (!v15)
    {
LABEL_20:
      v19 = a2;
      (*(v4 + 16))(a1);
      *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (!v5)
      {
        *(a1 + v8) = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v8))
    {
      goto LABEL_20;
    }

    v16 = *(a2 + v8) - 1;
    v17 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v16 = 0;
      v17 = *a2;
    }

    if ((v17 | v16) == 0xFFFFFFFF)
    {
      goto LABEL_20;
    }
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_21D34A654(_DWORD *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v13 = *(v3 - 8);
    result = (*(v4 + 48))(a1, v5, v3);
    v4 = v13;
    if (result)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = ((*(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(a1 + v7) || ((v8 = v7 & 0xFFFFFFF8, (v7 & 0xFFFFFFF8) != 0) ? (v9 = 0) : (v9 = *(a1 + v7) - 1), !v8 ? (v10 = 0) : (v10 = *a1), v11 = v10 | v9, result = (v11 + 1), v11 == -1))
  {
LABEL_13:
    v12 = *(v4 + 8);

    return v12(a1, v3);
  }

  return result;
}

_BYTE *sub_21D34A768(_BYTE *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
LABEL_14:
      (*(v6 + 16))(a1, a2, v5);
      *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (!v7)
      {
        a1[v10] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v10))
    {
      goto LABEL_14;
    }

    v11 = *(a2 + v10) - 1;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) == 0xFFFFFFFF)
    {
      goto LABEL_14;
    }
  }

  if (v7)
  {
    v13 = v9 + 8;
  }

  else
  {
    v13 = v9 + 9;
  }

  return memcpy(a1, a2, v13);
}

_BYTE *sub_21D34A8D4(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  if (!v7)
  {
    if (*(a1 + v10))
    {
      v14 = *(a1 + v10) - 1;
      if (v9 == -8)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = *a1;
      }

      if ((v15 | v14) != 0xFFFFFFFF)
      {
        if (!*(a2 + v10))
        {
          goto LABEL_31;
        }

        v16 = *(a2 + v10) - 1;
        if (v9 == -8)
        {
          v17 = 0;
        }

        else
        {
          v16 = 0;
          v17 = *a2;
        }

        v4 = a1;
        if ((v17 | v16) == 0xFFFFFFFF)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    if (!*(a2 + v10))
    {
LABEL_28:
      (*(v6 + 24))(v4, a2, v5);
      *(&v4[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      return v4;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 != -8)
    {
      v18 = 0;
    }

    __dst = a1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_20:
    v4 = __dst;
    if (v13)
    {
      (*(v6 + 8))(__dst, v5);
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v11 = *(v6 + 48);
  __dst = a1;
  v12 = v11(a1, v7, v5);
  v13 = v11(a2, v7, v5);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v12)
  {
    goto LABEL_20;
  }

  v4 = __dst;
  if (!v13)
  {
LABEL_31:
    (*(v6 + 16))(v4, a2, v5);
    *(&v4[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      v4[v10] = 0;
    }

    return v4;
  }

LABEL_22:
  if (v7)
  {
    v20 = v10;
  }

  else
  {
    v20 = v9 + 9;
  }

  return memcpy(v4, a2, v20);
}

_BYTE *sub_21D34AB5C(_BYTE *a1, _DWORD *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  if (v7)
  {
    if (!(*(v6 + 48))(a2, v7, v5))
    {
LABEL_14:
      (*(v6 + 32))(a1, a2, v5);
      *(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (!v7)
      {
        a1[v10] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v10))
    {
      goto LABEL_14;
    }

    v11 = *(a2 + v10) - 1;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v11 = 0;
      v12 = *a2;
    }

    if ((v12 | v11) == 0xFFFFFFFF)
    {
      goto LABEL_14;
    }
  }

  if (v7)
  {
    v13 = v9 + 8;
  }

  else
  {
    v13 = v9 + 9;
  }

  return memcpy(a1, a2, v13);
}

_BYTE *sub_21D34ACC8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 8;
  if (!v7)
  {
    if (*(a1 + v10))
    {
      v14 = *(a1 + v10) - 1;
      if (v9 == -8)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = *a1;
      }

      if ((v15 | v14) != 0xFFFFFFFF)
      {
        if (!*(a2 + v10))
        {
          goto LABEL_31;
        }

        v16 = *(a2 + v10) - 1;
        if (v9 == -8)
        {
          v17 = 0;
        }

        else
        {
          v16 = 0;
          v17 = *a2;
        }

        v4 = a1;
        if ((v17 | v16) == 0xFFFFFFFF)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    if (!*(a2 + v10))
    {
LABEL_28:
      (*(v6 + 40))(v4, a2, v5);
      *(&v4[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      return v4;
    }

    v18 = *(a2 + v10) - 1;
    if (v9 != -8)
    {
      v18 = 0;
    }

    __dst = a1;
    if (v9 == -8)
    {
      v19 = 0;
    }

    else
    {
      v19 = *a2;
    }

    v13 = (v19 | v18) + 1;
LABEL_20:
    v4 = __dst;
    if (v13)
    {
      (*(v6 + 8))(__dst, v5);
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v11 = *(v6 + 48);
  __dst = a1;
  v12 = v11(a1, v7, v5);
  v13 = v11(a2, v7, v5);
  v9 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v12)
  {
    goto LABEL_20;
  }

  v4 = __dst;
  if (!v13)
  {
LABEL_31:
    (*(v6 + 32))(v4, a2, v5);
    *(&v4[v8 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      v4[v10] = 0;
    }

    return v4;
  }

LABEL_22:
  if (v7)
  {
    v20 = v10;
  }

  else
  {
    v20 = v9 + 9;
  }

  return memcpy(v4, a2, v20);
}