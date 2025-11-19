uint64_t sub_21D856B54()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
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

uint64_t sub_21D856BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8) + 48));

  return TTRShowScheduledDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowScheduledDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(objectIDs._rawValue, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

void TTRShowScheduledDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62B00);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D856EBC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowScheduledPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted;
  v7 = sub_21DBF71BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle;
  v9 = sub_21DBF70DC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowScheduledPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v104 = retstr;
  v121 = sub_21DBF563C();
  v102 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21DBF6E1C();
  v122 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF6E4C();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF5A2C();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF582C();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v90 - v10;
  v11 = sub_21DBF746C();
  v123 = *(v11 - 8);
  *&v124 = v11;
  MEMORY[0x28223BE20](v11);
  v117 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v14 = &v90 - v13;
  v15 = sub_21DBF714C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF734C();
  v115 = *(v19 - 8);
  v116 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF71BC();
  v112 = *(v22 - 8);
  v113 = v22;
  MEMORY[0x28223BE20](v22);
  v114 = (&v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_21DBF70DC();
  v106 = *(v24 - 8);
  v107 = v24;
  MEMORY[0x28223BE20](v24);
  v108 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF738C();
  v109 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v111 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_27CE62B00);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAEDC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v91 = v21;
    v32 = v18;
    v33 = v16;
    v34 = v15;
    v35 = v26;
    v36 = v14;
    v37 = v31;
    *v31 = 0;
    _os_log_impl(&dword_21D0C9000, v29, v30, "PrintingDataModelSource: fetch Scheduled tree", v31, 2u);
    v38 = v37;
    v14 = v36;
    v26 = v35;
    v15 = v34;
    v16 = v33;
    v18 = v32;
    v21 = v91;
    MEMORY[0x223D46520](v38, -1, -1);
  }

  v110 = v26;

  v39 = OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_showCompleted;
  v40 = v125;
  (*(v106 + 16))(v108, v125 + OBJC_IVAR____TtC15RemindersUICore39TTRShowScheduledPrintingDataModelSource_sortingStyle, v107);
  (*(v112 + 16))(v114, v40 + v39, v113);
  (*(v115 + 104))(v21, *MEMORY[0x277D45500], v116);
  (*(v16 + 104))(v18, *MEMORY[0x277D45460], v15);
  v41 = v111;
  sub_21DBF737C();
  v43 = v123;
  v42 = v124;
  v44 = v117;
  (*(v123 + 104))(v117, *MEMORY[0x277D45530], v124);
  v45 = v143;
  sub_21DBF749C();
  if (v45)
  {
    (*(v43 + 8))(v44, v42);
    (*(v109 + 8))(v41, v110);
  }

  else
  {
    v107 = 0;
    (*(v43 + 8))(v44, v42);
    v46 = v102;
    v47 = v93;
    (*(v102 + 56))(v93, 1, 1, v121);
    v48 = v92;
    sub_21DBF57AC();
    v49 = v96;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    type metadata accessor for TTRShowScheduledSectionHeaderTitleFormatter();
    v50 = swift_allocObject();
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
    (*(v94 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale, v48, v95);
    (*(v97 + 32))(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar, v49, v98);
    *(v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = 0;
    v117 = v50;
    sub_21D46CA8C(v47, v50 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
    v51 = v99;
    v108 = v14;
    sub_21DBF76DC();
    v52 = sub_21DBF6E3C();
    (*(v100 + 8))(v51, v101);
    v53 = *(v52 + 16);
    v54 = v110;
    if (v53)
    {
      v142 = MEMORY[0x277D84F90];
      sub_21D18E6F8(0, v53, 0);
      v143 = v142;
      v115 = *(v122 + 16);
      v116 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates;
      v55 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v106 = v52;
      v56 = v52 + v55;
      v57 = *(v122 + 72);
      v114 = (v46 + 8);
      v122 += 16;
      v112 = v57;
      v113 = (v122 - 8);
      v125 = v53 - 1;
      while (1)
      {
        v59 = v118;
        v58 = v119;
        v123 = v56;
        v60 = (v115)(v118);
        v61 = v120;
        MEMORY[0x223D3F5B0](v60);
        TTRDateBucketSectionHeaderTitleFormatterBase.textAndSecondaryTextRange(for:allowsRelativeDates:)(v61, v117[v116], &v126);
        v124 = v126;
        v62 = v127;
        v63 = v128;
        v64 = v129;
        (*v114)(v61, v121);
        *(v134 + 5) = v126;
        BYTE7(v134[0]) = BYTE2(v126);
        v130 = v124;
        *&v131 = v62;
        *(&v131 + 1) = v63;
        v132 = v64;
        v133 = 0uLL;
        LODWORD(v134[0]) = 64;
        BYTE4(v134[0]) = 3;
        *(v134 + 8) = 0u;
        *(&v134[1] + 8) = 0u;
        *(&v134[2] + 8) = 0u;
        WORD4(v134[3]) = 255;
        nullsub_1(&v130, v65, v66);
        v67 = sub_21DBF6E0C();
        (*v113)(v59, v58);
        v137 = v132;
        v138 = v133;
        *(v141 + 10) = *(&v134[2] + 10);
        v140 = v134[1];
        v141[0] = v134[2];
        v139 = v134[0];
        v135 = v130;
        v136 = v131;
        v68 = v143;
        v142 = v143;
        v70 = v143[2];
        v69 = v143[3];
        if (v70 >= v69 >> 1)
        {
          sub_21D18E6F8((v69 > 1), v70 + 1, 1);
          v68 = v142;
        }

        v68[2] = v70 + 1;
        v71 = &v68[17 * v70];
        v72 = v135;
        v73 = v136;
        v74 = v138;
        *(v71 + 4) = v137;
        *(v71 + 5) = v74;
        *(v71 + 2) = v72;
        *(v71 + 3) = v73;
        v75 = v139;
        v76 = v140;
        v77 = v141[1];
        *(v71 + 8) = v141[0];
        *(v71 + 9) = v77;
        *(v71 + 6) = v75;
        *(v71 + 7) = v76;
        v71[20] = v67;
        if (!v125)
        {
          break;
        }

        v143 = v68;
        --v125;
        v56 = v123 + v112;
      }

      v78 = v108;
      v54 = v110;
      v41 = v111;
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
      v78 = v108;
    }

    v79 = REMSmartListType.title.getter();
    if (v80)
    {
      v81 = v79;
    }

    else
    {
      v81 = 0;
    }

    if (v80)
    {
      v82 = v80;
    }

    else
    {
      v82 = 0xE000000000000000;
    }

    v83 = REMSmartListType.color.getter();
    if (v83)
    {
      v84 = v83;

      (*(v103 + 8))(v78, v105);
      (*(v109 + 8))(v41, v54);
    }

    else
    {
      v125 = v81;
      v143 = v68;
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v85 = xmmword_280D1BAC8;
      v86 = xmmword_280D1BAD8;
      v88 = *(&xmmword_280D1BAE8 + 1);
      v87 = xmmword_280D1BAE8;
      LODWORD(v123) = byte_280D1BAF8;
      v135 = xmmword_280D1BAC8;
      v136 = xmmword_280D1BAD8;
      *&v124 = *(&xmmword_280D1BAD8 + 1);
      v137 = xmmword_280D1BAE8;
      LOBYTE(v138) = byte_280D1BAF8;
      sub_21D0FB960(xmmword_280D1BAC8, *(&xmmword_280D1BAC8 + 1), xmmword_280D1BAD8, *(&xmmword_280D1BAD8 + 1), xmmword_280D1BAE8, *(&xmmword_280D1BAE8 + 1), byte_280D1BAF8);
      v84 = TTRListColors.Color.nativeColor.getter();

      (*(v103 + 8))(v108, v105);
      (*(v109 + 8))(v111, v54);
      sub_21D1078C0(v85, *(&v85 + 1), v86, v124, v87, v88, v123);
      v68 = v143;
      v81 = v125;
    }

    v89 = v104;
    v104->listName._countAndFlagsBits = v81;
    v89->listName._object = v82;
    v89->listColor.super.isa = v84;
    v89->count.value = 0;
    v89->count.is_nil = 1;
    v89->sections._rawValue = v68;
    v89->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowScheduledMonitorableDataView.init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted;
  v11 = sub_21DBF71BC();
  (*(*(v11 - 8) + 32))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_countCompleted) = a3;
  v12 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle;
  v13 = sub_21DBF70DC();
  (*(*(v13 - 8) + 32))(v5 + v12, a4, v13);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount) = a5;
  return v5;
}

char *TTRShowScheduledMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v75) = a4;
  v56 = a1;
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D0);
  MEMORY[0x28223BE20](v53);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - v8;
  v9 = sub_21DBF746C();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v72 = &v50 - v11;
  v12 = sub_21DBF714C();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF71BC();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v60 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF70DC();
  v16 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21DBF738C();
  v67 = *(v19 - 8);
  v68 = v19;
  MEMORY[0x28223BE20](v19);
  v73 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21DBF734C();
  v21 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v50 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v50 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  sub_21DBFC83C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    sub_21D0CF7E0(v29, &qword_27CE5C2E0);
    if (v75)
    {
      v58 = *(v5 + 16);
LABEL_6:
      v75 = 0;
      v33 = MEMORY[0x277D45508];
      goto LABEL_10;
    }

    v31 = 0;
    goto LABEL_8;
  }

  v31 = *&v29[*(v30 + 48)];
  v32 = sub_21DBF6E4C();
  (*(*(v32 - 8) + 8))(v29, v32);
  if ((v75 & 1) == 0)
  {
LABEL_8:
    v58 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v58 = *(v5 + 16);
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_9:
  v75 = v31;
  v33 = MEMORY[0x277D454F8];
LABEL_10:
  *v26 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount);
  v34 = v74;
  (*(v21 + 104))(v26, *v33, v74);
  (*(v16 + 16))(v18, v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle, v59);
  (*(v61 + 16))(v60, v5 + OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted, v62);
  v35 = v34;
  (*(v21 + 16))(v23, v26, v34);
  (*(v65 + 104))(v64, *MEMORY[0x277D45460], v66);
  v36 = v73;
  sub_21DBF737C();
  v37 = v63;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v39 = v69;
  v38 = v70;
  (*(v69 + 104))(v37, *MEMORY[0x277D45528], v70);
  v40 = v71;
  v41 = v72;
  v66 = v26;
  v42 = v58;
  sub_21DBF749C();
  if (v40)
  {

    (*(v39 + 8))(v37, v38);
    (*(v67 + 8))(v36, v68);
    (*(v21 + 8))(v66, v35);
  }

  else
  {
    (*(v39 + 8))(v37, v38);
    v43 = v53;
    v44 = *(v53 + 48);
    v45 = v55;
    v46 = v52;
    sub_21DBF76DC();
    *(v45 + v44) = sub_21DBF76BC();
    v47 = v54;
    sub_21D0D3954(v45, v54, &qword_27CE5C2D0);
    v37 = *(v47 + *(v43 + 48));
    v48 = sub_21DBF6E4C();
    (*(*(v48 - 8) + 32))(v56, v47, v48);
    sub_21DBF76CC();

    sub_21D0CF7E0(v45, &qword_27CE5C2D0);
    (*(v51 + 8))(v41, v46);
    (*(v67 + 8))(v73, v68);
    (*(v21 + 8))(v66, v74);
  }

  return v37;
}

uint64_t sub_21D858820(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  return v2;
}

uint64_t sub_21D8588E4(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_21DBF71BC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *a2;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8589D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowScheduledMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D858A4C(uint64_t a1)
{
  v35 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v37 = sub_21DBF6E4C();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v36 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v33 = v3;
    v34 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C2C0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C2C0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5C2E0);
    }

    else
    {

      v21 = *(v39 + 32);
      v22 = v37;
      v21(v12, v10, v37);
      v21(v15, v12, v22);
      v40 = v35;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D5DE94C();
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v36;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

      v27 = v33;
      v28 = v38;
      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      sub_21DBF767C();
      v29 = v25 + OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 8);
        ObjectType = swift_getObjectType();
        (*(v30 + 16))(v15, v28, ObjectType, v30);
        swift_unknownObjectRelease();
      }

      (*(v27 + 8))(v28, v34);
      return (*(v39 + 8))(v15, v22);
    }
  }

  return result;
}

void sub_21D858FEC(void *a1)
{
  if (qword_27CE56D40 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62B00);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x656C756465686373, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowScheduledDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D8593DC()
{
  result = sub_21DBF71BC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TTRIQuickBarTabBarItem.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D8595A0()
{
  result = qword_280D17060;
  if (!qword_280D17060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17060);
  }

  return result;
}

unint64_t sub_21D8595F8()
{
  result = qword_27CE62BA0;
  if (!qword_27CE62BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62BA0);
  }

  return result;
}

uint64_t TTRTimeZoneProvider.timeZoneDescription(for:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5C4C();
  result = (*(*(v6 - 8) + 16))(v5, a1, v6);
  if (*(v1 + 16))
  {

    sub_21DBF6B4C();

    return sub_21D8598E8(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams()
{
  result = qword_27CE62BC8;
  if (!qword_27CE62BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8598E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRTimeZoneProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21D0CE468();
  sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF6B5C();
  return v0;
}

uint64_t sub_21D8599FC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62BB0);
  v1 = __swift_project_value_buffer(v0, qword_27CE62BB0);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTimeZoneProvider.init()()
{
  *(v0 + 16) = 0;
  sub_21D0CE468();
  sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708);
  swift_allocObject();
  *(v0 + 16) = sub_21DBF6B5C();

  return v0;
}

uint64_t sub_21D859B78(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_21DBFA89C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_21D85A8AC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_21D85A910(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_21D3BF9AC(0, 0, v7, &unk_21DC2D1A8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62BE8);
  return sub_21DBF81EC();
}

uint64_t sub_21D859D34(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_21D859DCC;

  return TimeZone.defaultCityName()();
}

uint64_t sub_21D859DCC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v7 = sub_21D859F24;
  }

  else
  {
    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v7 = sub_21D859F00;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D859F00()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 80);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_21D859F24()
{
  v17 = v0;
  if (qword_27CE56D48 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62BB0);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRTimeZoneProvider: failed to fetch time zone city name {error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[6];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = v0[1];

  return v14();
}

uint64_t sub_21D85A0F4@<X0>(uint64_t a1@<X8>)
{
  sub_21D85A858();
  result = swift_allocError();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_21D85A13C()
{
  sub_21DBFC7DC();
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70]);
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D85A1C4()
{
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70]);

  return sub_21DBFA00C();
}

uint64_t sub_21D85A248()
{
  sub_21DBFC7DC();
  sub_21DBF5C4C();
  sub_21D85A810(&qword_27CE58378, MEMORY[0x277CC9A70]);
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D85A2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21DBF5BCC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTRTimeZoneProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D85A350(uint64_t a1)
{
  v3 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = sub_21DBF5C4C();
  result = (*(*(v7 - 8) + 16))(v5, a1, v7);
  if (*(v6 + 16))
  {

    sub_21DBF6B4C();

    return sub_21D8598E8(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D85A498(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_21D85A504(uint64_t a1)
{
  v2 = sub_21DBF5C4C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D85A568(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A630(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A694(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5C4C();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_21D85A720()
{
  result = sub_21DBF5C4C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D85A810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21D85A858()
{
  result = qword_27CE62BE0;
  if (!qword_27CE62BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62BE0);
  }

  return result;
}

uint64_t sub_21D85A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D85A910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D85A974(uint64_t a1)
{
  type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D1B795C;

  return sub_21D859D34(a1);
}

unint64_t sub_21D85AA78()
{
  result = qword_27CE62BF0;
  if (!qword_27CE62BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62BF0);
  }

  return result;
}

uint64_t sub_21D85AACC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62BF8);
  v1 = __swift_project_value_buffer(v0, qword_27CE62BF8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTREditSectionsInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_21D0E6A9C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*TTREditSectionsInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTREditSectionsInteractor.lastFetchedSections.getter()
{
  sub_21D25A450();

  return sub_21DBF8E0C();
}

uint64_t TTREditSectionsInteractor.currentSectionOrdering.getter()
{
  sub_21D85C320();

  return sub_21DBF8E0C();
}

uint64_t TTREditSectionsInteractor.currentSectionOrdering.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t TTREditSectionsInteractor.changeItem.getter()
{
  sub_21D85C354();
}

uint64_t TTREditSectionsInteractor.changeItem.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

char *TTREditSectionsInteractor.__allocating_init(editSectionsEditor:store:undoManager:committer:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_21D85C388(a1, a2, a3, a4);

  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v10;
}

char *TTREditSectionsInteractor.init(editSectionsEditor:store:undoManager:committer:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *v4;
  v9 = sub_21D85C388(a1, a2, a3, a4);

  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

Swift::Void __swiftcall TTREditSectionsInteractor.start()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v19 - v5;
  (*(v8 + 16))(&v19 - v5, v1 + *(v7 + 128), v3, v4);
  v9 = qword_280D1AA10;
  v10 = *(v1 + *(*v1 + 136));
  if (v9 != -1)
  {
    swift_once();
  }

  type metadata accessor for TTREditSectionsMonitorableDataView();
  v11 = qword_280D1AA18;
  v25 = type metadata accessor for TTRUserDefaults();
  v26 = &protocol witness table for TTRUserDefaults;
  *&v23 = v11;
  v12 = swift_allocObject();
  TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(v6, v10, &v23);
  type metadata accessor for TTRDataViewMonitor();
  v21 = v12;
  v22 = MEMORY[0x277D84F90];
  sub_21D0CE468();
  v13 = v11;

  v14 = sub_21DBFB12C();
  sub_21DBF60DC();
  v15 = sub_21DBF60BC();
  v16 = sub_21DBF60AC();
  WitnessTable = swift_getWitnessTable();
  sub_21D719640(&v23);
  v19 = v23;
  v20 = v24;
  v18 = sub_21DB74D48(&v22, &v21, v1, v14, v15, v16, &v19, v2, WitnessTable);

  *(v1 + *(*v1 + 160)) = v18;

  TTRDataViewMonitor.resume(userInteractive:)(1);
}

uint64_t TTREditSectionsMonitorableDataView.__allocating_init(editSectionsEditor:store:userDefaults:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(a1, a2, a3);
  return v6;
}

void TTREditSectionsInteractor.rename(_:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = swift_dynamicCastUnknownClass();
  if (v9)
  {
    v10 = v9;
    swift_beginAccess();
    v11 = v3[6];
    swift_beginAccess();
    v12 = *(v11 + 32);
    v17 = a1;

    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 32) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21D210A84(0, *(v12 + 2) + 1, 1, v12);
      *(v11 + 32) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_21D210A84((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = a2;
    *(v16 + 5) = a3;
    *(v11 + 32) = v12;
    swift_endAccess();

    (*(v7 + 32))(v10, v8, v7);
  }
}

Swift::Void __swiftcall TTREditSectionsInteractor.setSectionOrdering(_:initialOrderedSectionIDs:)(Swift::OpaquePointer _, Swift::OpaquePointer_optional initialOrderedSectionIDs)
{
  rawValue = initialOrderedSectionIDs.value._rawValue;
  swift_beginAccess();
  v5 = *(v2 + 48);
  swift_beginAccess();
  v5[5]._rawValue = _._rawValue;

  sub_21DBF8E0C();

  v6 = *(v2 + 48);
  swift_beginAccess();
  *(v6 + 48) = rawValue;

  sub_21DBF8E0C();
}

Swift::Void __swiftcall TTREditSectionsInteractor.toggleHideEmptySections(isOn:)(Swift::Bool isOn)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  swift_beginAccess();
  *(v3 + 56) = isOn;
}

Swift::Void __swiftcall TTREditSectionsInteractor.editSectionsDidCommit()()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v1 = objc_opt_self();
  v2 = sub_21DBFA12C();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_21D85C610;
  *(v3 + 24) = v0;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_98;
  v4 = _Block_copy(aBlock);

  [v1 withActionName:v2 block:{v4, 0x800000021DC507C0}];

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_21D85B7EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v28 - v6;
  swift_beginAccess();
  v8 = *(v1 + 6);
  swift_beginAccess();
  v9 = *(v8 + 56);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v10 = *(*(v2 + 6) + 24);
  v11 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v10) & 1;

  v28 = v3;
  if (v9 != v11)
  {
    v12 = *(*v2 + 128);
    v13 = *(v3 + 88);
    v14 = *(v13 + 40);

    v14(v15, v4, v13);

    v16 = *(v2 + 6);
    swift_beginAccess();
    if (!*(v16 + 40))
    {
      goto LABEL_11;
    }

    (*(v5 + 16))(v7, &v2[v12], v4);
    swift_beginAccess();
    v17 = *(v16 + 48);
    goto LABEL_10;
  }

  v18 = *(v2 + 6);
  swift_beginAccess();
  v19 = *(v18 + 40);
  if (!v19)
  {
    goto LABEL_11;
  }

  if (!(v19 >> 62))
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (sub_21DBFBD7C())
  {
LABEL_9:
    (*(v5 + 16))(v7, &v2[*(*v2 + 128)], v4);
    v20 = *(v2 + 6);
    swift_beginAccess();
    v17 = *(v20 + 48);
    v13 = *(v28 + 88);
LABEL_10:
    v21 = *(v13 + 56);
    sub_21DBF8E0C();
    v22 = sub_21DBF8E0C();
    v21(v22, v17, v4, v13);

    (*(v5 + 8))(v7, v4);
  }

LABEL_11:
  v23 = *(v2 + 6);
  result = swift_beginAccess();
  if (*(*(v23 + 32) + 16))
  {
    v25 = *(v28 + 88);
    v26 = *(v25 + 48);
    v27 = sub_21DBF8E0C();
    v26(v27, v4, v25);
  }

  return result;
}

uint64_t *TTREditSectionsInteractor.deinit()
{
  v1 = *v0;
  sub_21D157444((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));

  __swift_destroy_boxed_opaque_existential_0(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_21D85BD54(uint64_t a1, uint64_t a2)
{
  sub_21D0E6A9C(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_21D85BD90(uint64_t **a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTREditSectionsInteractor.delegate.modify(v2);
  return sub_21D4C3D30;
}

uint64_t sub_21D85BE04()
{
  sub_21D85C354();
}

void (*sub_21D85BE5C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTREditSectionsInteractor.changeItem.modify();
  return sub_21D4C30A8;
}

uint64_t sub_21D85BED0()
{
  sub_21D25A450();

  return sub_21DBF8E0C();
}

uint64_t sub_21D85BF04()
{
  sub_21D85C320();

  return sub_21DBF8E0C();
}

void (*sub_21D85BF5C(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TTREditSectionsInteractor.currentSectionOrdering.modify();
  return sub_21D4C3D30;
}

uint64_t TTREditSectionsMonitorableDataView.init(editSectionsEditor:store:userDefaults:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  *(v3 + *(*v3 + 104)) = a2;
  sub_21D0D0FD0(a3, v3 + *(*v3 + 112));
  return v3;
}

uint64_t TTREditSectionsMonitorableDataView.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  __swift_destroy_boxed_opaque_existential_0(v0 + *(*v0 + 112));
  return v0;
}

uint64_t sub_21D85C294(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_21D85C2F0(uint64_t *a1)
{
  result = sub_21D85C954();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21D85C388(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  *(v5 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  *&v5[*(*v5 + 160)] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v5[*(*v5 + 168)] = MEMORY[0x277D84F90];
  v12 = *(v10 + 80);
  (*(*(v12 - 8) + 16))(&v5[*(*v5 + 128)], a1, v12);
  *&v5[*(*v5 + 136)] = a2;
  *&v5[*(*v5 + 144)] = a3;
  sub_21D0D32E4(a4, &v5[*(*v5 + 152)]);
  v13 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v14 = a2;
  v15 = a3;
  v16 = [v13 initWithStore_];
  v17 = (*(*(v10 + 88) + 16))(v12);
  type metadata accessor for TTREditSectionsChangeItem();
  v18 = swift_allocObject();
  *(v18 + 32) = v11;
  *(v18 + 40) = v11;
  *(v18 + 48) = v11;
  *(v18 + 56) = 1;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = qword_280D1AA10;
  v20 = v16;
  v21 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v22 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)(v21);

  __swift_destroy_boxed_opaque_existential_0(a4);
  swift_beginAccess();
  *(v18 + 56) = v22 & 1;
  *(v5 + 6) = v18;
  return v5;
}

uint64_t sub_21D85C614(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D50 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62BF8);
  sub_21DBF8E0C();
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&dword_21D0C9000, v5, v6, "TTREditSectionsMonitorableDataView: did fetch data {count: %ld}", v7, 0xCu);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  *(v2 + 32) = a1;

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_21DBF8E0C();
  }

  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  sub_21DBF8E0C();
  v10(ObjectType, v8);
  return swift_unknownObjectRelease();
}

void sub_21D85C7BC(void *a1)
{
  if (qword_27CE56D50 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62BF8);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTREditSectionsMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D85C954()
{
  v1 = *v0;
  v2 = sub_21DBF714C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF734C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF738C();
  v18 = *(v20 - 8);
  v10 = MEMORY[0x28223BE20](v20);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *MEMORY[0x277D45418], v6, v10);
  v13 = *(v1 + 88);
  v14 = *(v1 + 80);
  (*(v13 + 24))(v14, v13);
  (*(v19 + 104))(v17, *MEMORY[0x277D45500], v21);
  (*(v23 + 104))(v22, *MEMORY[0x277D45458], v24);
  sub_21DBF737C();
  v15 = (*(v13 + 64))(v12, v14, v13);
  (*(v18 + 8))(v12, v20);
  return v15;
}

uint64_t sub_21D85CE88()
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

uint64_t sub_21D85D038()
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

id static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

id static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 64;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

Swift::Void __swiftcall UIViewController.endFirstResponderEditing()()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = UIView.firstResponderDescendant.getter();

    if (v3)
    {
      [v3 resignFirstResponder];
    }
  }
}

BOOL UIViewController.isIPadIdiom.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  return v2 == 1;
}

void static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v8 = a1;
    [v8 bounds];
    y = v18.origin.y;
    height = v18.size.height;
    v11 = CGRectGetMaxX(v18) + -40.0;
    v12 = [v8 effectiveUserInterfaceLayoutDirection];
    [v8 bounds];
    Width = CGRectGetWidth(v19);
    if (!v12)
    {
LABEL_5:
      *a4 = a1;
      *(a4 + 8) = v11;
      *(a4 + 16) = y;
      *(a4 + 24) = 0x4044000000000000;
      *(a4 + 32) = height;
      *(a4 + 40) = 0;
      *(a4 + 48) = a2;
      *(a4 + 56) = a3 & 1;
      return;
    }

    if (v12 == 1)
    {
      v14 = Width;
      v20.origin.x = v11;
      v20.origin.y = y;
      v20.size.width = 40.0;
      v20.size.height = height;
      v15 = v14 - CGRectGetMinX(v20);
      v21.origin.x = v11;
      v21.origin.y = y;
      v21.size.width = 40.0;
      v21.size.height = height;
      v11 = v15 - CGRectGetWidth(v21);
      goto LABEL_5;
    }

    if (qword_27CE56F38 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE64930);
    v17 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v17);
    sub_21DAEAB00("unknown language direction", 26, 2);
    __break(1u);
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 40) = xmmword_21DC0A830;
    *(a4 + 56) = 0;
  }
}

id UIViewController.canPresentDCIDrillinPopover(withAnchor:)(uint64_t a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    result = [v1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = [result window];

    if (v7)
    {
      v8 = [v7 traitCollection];

      v9 = [v8 horizontalSizeClass];
      if (v9 == 1)
      {
        return 0;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];

  return UIViewController.canPresentPopover(withAnchor:requiredFeatureFlags:requiredExternalFeatureFlags:)(a1, v10, v11);
}

uint64_t TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v12 + 9) = *(v2 + 41);
  v3 = v2[1];
  v10 = *v2;
  v11 = v3;
  v12[0] = v2[2];
  if (BYTE8(v12[1]) != 1)
  {
    v7 = v2[1];
    *a2 = *v2;
    *(a2 + 16) = v7;
    *(a2 + 32) = v2[2];
    *(a2 + 41) = *(v2 + 41);
    return sub_21D50B9A4(&v10, &v9);
  }

  v4 = v11;
  v5 = *&v12[0];
  v6 = BYTE8(v12[0]);
  if (BYTE8(v12[0]) >> 6)
  {
    *a2 = v10;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
  }

  else
  {
    *a2 = v10;
    *(a2 + 16) = v4;
    *(a2 + 32) = v5;
    if ((v6 & 1) == 0)
    {
      *(a2 + 40) = 0;
      goto LABEL_5;
    }

    v6 = 1;
  }

  *(a2 + 40) = v6;
LABEL_5:
  *(a2 + 48) = a1;
  *(a2 + 56) = 0;
  return sub_21D50B9A4(&v10, &v9);
}

void UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v2 setModalPresentationStyle_];
  v11 = [v2 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    if (v10)
    {
      v13 = 15;
    }

    else
    {
      v13 = v9;
    }

    [v11 setPermittedArrowDirections_];
    if (v8 <= 0x3F)
    {
      v14 = *&v4;
    }

    else
    {
      v14 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v15 = *&v5;
    }

    else
    {
      v15 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v16 = *&v6;
    }

    else
    {
      v16 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v17 = *&v7;
    }

    else
    {
      v17 = 0.0;
    }

    if (v8 <= 0x3F)
    {
      v18 = v8;
    }

    else
    {
      v18 = 1;
    }

    if (v8 <= 0x3F)
    {
      v19 = 0;
    }

    else
    {
      v19 = v3;
    }

    if (v8 <= 0x3F)
    {
      v20 = v3;
    }

    else
    {
      v20 = 0;
    }

    sub_21D50BA00(v3, v4, v5, v6, v7, v8);
    sub_21D50BA00(v3, v4, v5, v6, v7, v8);
    [v12 setSourceView_];
    if (v18)
    {
      v14 = *MEMORY[0x277CBF398];
      v15 = *(MEMORY[0x277CBF398] + 8);
      v16 = *(MEMORY[0x277CBF398] + 16);
      v17 = *(MEMORY[0x277CBF398] + 24);
    }

    [v12 setSourceRect_];
    [v12 setSourceItem_];

    swift_unknownObjectRelease();

    sub_21D50B440(v3, v4, v5, v6, v7, v8);
  }
}

uint64_t UIViewController.present<A>(alert:actions:didPresent:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 128) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 72) = sub_21DBFA84C();
  *(v8 + 80) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v8 + 88) = v10;
  *(v8 + 96) = v9;

  return MEMORY[0x2822009F8](sub_21D85D86C, v10, v9);
}

uint64_t sub_21D85D86C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 56);
  v4 = sub_21DBFA83C();
  *(v0 + 104) = v4;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = vextq_s8(v11, v11, 8uLL);
  *(v5 + 48) = v1;
  *(v5 + 56) = v3;
  *(v5 + 64) = v2;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_21D85D9A4;
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v8, v4, v9, 0xD00000000000002BLL, 0x800000021DC60680, sub_21D86216C, v5, v7);
}

uint64_t sub_21D85D9A4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21D390144, v3, v2);
}

uint64_t UIViewController.dismissAndWait(animated:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  *(v2 + 24) = sub_21DBFA84C();
  *(v2 + 32) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x2822009F8](sub_21D85DBA4, v4, v3);
}

uint64_t sub_21D85DBA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v3 = sub_21DBFA83C();
  *(v0 + 56) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_21D85DCB8;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v3, v6, 0xD000000000000019, 0x800000021DC60530, sub_21D57B12C, v4, v7);
}

uint64_t sub_21D85DCB8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D454AAC, v3, v2);
}

uint64_t TTRIValueBasedAlertAction.init(title:style:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for TTRIValueBasedAlertAction();
  v10 = *(*(a5 - 8) + 32);
  v11 = a6 + *(v9 + 32);

  return v10(v11, a4, a5);
}

uint64_t UIViewController.deselectRowsAlongsideTransition(for:animated:)(void *a1, char a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_21D861EC8(v6, a2, v2, v4, v5);
}

uint64_t sub_21D85DEF4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F400);
  v1 = __swift_project_value_buffer(v0, qword_280D0F400);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL UIViewController.canPresentPopover(withAnchor:requiredFeatureFlags:requiredExternalFeatureFlags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v6 = sub_21DBF601C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF604C();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*(a1 + 40) & 0xFELL) == 0)
  {
    return 0;
  }

  v15 = [v3 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (v16 != 1)
  {
    return 0;
  }

  v28 = v6;
  v29 = a3;
  v17 = 0;
  v18 = *(v30 + 16);
  while (v18 != v17)
  {
    (*(v11 + 16))(v14, v30 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v17++, v10);
    v19 = sub_21DBF603C();
    (*(v11 + 8))(v14, v10);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = 0;
  v24 = v28;
  v23 = v29;
  v25 = *(v29 + 16);
  do
  {
    v20 = v25 == v22;
    if (v25 == v22)
    {
      break;
    }

    (*(v7 + 16))(v9, v23 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22++, v24);
    v26 = sub_21DBF600C();
    (*(v7 + 8))(v9, v24);
  }

  while ((v26 & 1) != 0);
  return v20;
}

void sub_21D85E24C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    sub_21D0D32E4(a3, v10);
    v7 = swift_allocObject();
    sub_21D0D0FD0(v10, v7 + 16);
    *(v7 + 56) = a4 & 1;
    aBlock[4] = sub_21D863530;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D83EFE8;
    aBlock[3] = &block_descriptor_19_2;
    v8 = _Block_copy(aBlock);

    [a2 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_21D85E358(void *a1, void *a2, char a3)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    return (*(v7 + 8))(a3 & 1, v6, v7);
  }

  return result;
}

id UIViewController.effectiveNavigationBar.getter()
{
  v1 = [v0 navigationController];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 navigationController];
    if (v3)
    {
      do
      {
        v4 = v3;

        v3 = [v4 navigationController];
        v2 = v4;
      }

      while (v3);
    }

    else
    {
      v4 = v2;
    }

    v2 = [v4 navigationBar];
  }

  return v2;
}

uint64_t UIPopoverPresentationController.setPopoverAnchorSource(_:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v2 <= 0x3F)
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v7 = 1;
  }

  if (v2 <= 0x3F)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v2 <= 0x3F)
  {
    v9 = *a1;
  }

  else
  {
    v9 = 0;
  }

  if (v2 <= 0xFD)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0.0;
  }

  if (v2 <= 0xFD)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0.0;
  }

  if (v2 <= 0xFD)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0.0;
  }

  if (v2 <= 0xFD)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0.0;
  }

  if (v2 <= 0xFD)
  {
    v14 = v7;
  }

  else
  {
    v14 = 1;
  }

  if (v2 <= 0xFD)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  if (v2 <= 0xFD)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  sub_21D862198(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v2);
  [v1 setSourceView_];
  if (v14)
  {
    v10 = *MEMORY[0x277CBF398];
    v11 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  [v1 setSourceRect_];
  [v1 setSourceItem_];

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(UIScrollView *_, Swift::Bool animated, Swift::Bool wantsDispatchAsync)
{
  v4 = v3;
  LODWORD(v56) = animated;
  v7 = sub_21DBF9D2C();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D5C();
  v54 = *(v10 - 8);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationController];
    if (v16)
    {
      do
      {
        v17 = v16;

        v16 = [v17 navigationController];
        v15 = v17;
      }

      while (v16);
    }

    else
    {
      v17 = v15;
    }

    v18 = [v17 navigationBar];

    if (v18)
    {
      v19 = [v18 _restingHeights];
      if (v19)
      {
        v20 = v19;
        sub_21D0D8CF0(0, &unk_280D0C1E0);
        v21 = sub_21DBFA5EC();

        if (v21 >> 62)
        {
          if (sub_21DBFBD7C())
          {
LABEL_10:
            if ((v21 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x223D44740](0, v21);
            }

            else
            {
              if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_34;
              }

              v22 = *(v21 + 32);
            }

            v23 = v22;
            [v22 ttr_CGFloatValue];

            v53 = v18;
            [v53 frame];
            CGRectGetMinY(v59);
            UIRoundToViewScale();
            v25 = v24;
            [(UIScrollView *)_ contentOffset];
            v28 = v27;
            if (v27 >= -v25)
            {

LABEL_20:
              v49 = v53;
LABEL_29:

              return;
            }

            v29 = v26;
            v30 = [v4 view];
            if (v30)
            {
              v31 = v30;

              [v31 bounds];
              v33 = v32;
              v35 = v34;

              [v53 sizeThatFits:v33, v35];
              [v53 frame];
              v37 = v36;
              v39 = v38;
              v41 = v40;
              v43 = v42;

              v60.origin.x = v37;
              v60.origin.y = v39;
              v60.size.width = v41;
              v60.size.height = v43;
              CGRectGetMinY(v60);
              UIRoundToViewScale();
              if (v28 > -v44)
              {
                if (wantsDispatchAsync)
                {
                  sub_21D0D8CF0(0, &qword_280D1B900);
                  v45 = sub_21DBFB12C();
                  v46 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v47 = swift_allocObject();
                  *(v47 + 16) = v46;
                  *(v47 + 24) = v29;
                  *(v47 + 32) = v28;
                  *(v47 + 40) = v25;
                  *(v47 + 48) = v56 & 1;
                  aBlock[4] = sub_21D8621AC;
                  aBlock[5] = v47;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_21D0D74FC;
                  aBlock[3] = &block_descriptor_99;
                  v48 = _Block_copy(aBlock);

                  sub_21DBF9D4C();
                  aBlock[0] = MEMORY[0x277D84F90];
                  sub_21D0CD898();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
                  sub_21D0CD8F0();
                  sub_21DBFBCBC();
                  MEMORY[0x223D438F0](0, v13, v9, v48);
                  _Block_release(v48);

                  (*(v55 + 8))(v9, v7);
                  (*(v54 + 8))(v13, v10);
                  return;
                }

                sub_21D85EC04(_, v56 & 1, v25);
              }

              goto LABEL_20;
            }

LABEL_34:
            __break(1u);
            return;
          }
        }

        else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }
      }

      if (qword_280D0F3F8 != -1)
      {
        swift_once();
      }

      v50 = sub_21DBF84BC();
      __swift_project_value_buffer(v50, qword_280D0F400);
      v56 = sub_21DBF84AC();
      v51 = sub_21DBFAEBC();
      if (os_log_type_enabled(v56, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_21D0C9000, v56, v51, "scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded: failed to determine defaultHeight", v52, 2u);
        MEMORY[0x223D46520](v52, -1, -1);
      }

      v49 = v56;
      goto LABEL_29;
    }
  }
}

id sub_21D85EC04(void *a1, char a2, double a3)
{
  [a1 contentOffset];
  v7 = v6;
  *v20 = v6;
  v8 = [a1 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = 1.0;
  if (v10 != 0.0)
  {
    v11 = 1.0 / v10;
  }

  *&v20[1] = v11 - a3;
  if (a2)
  {

    return [a1 setContentOffset:1 animated:v7];
  }

  else
  {
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v20;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_21D863974;
    *(v15 + 24) = v14;
    v19[4] = sub_21D0E6070;
    v19[5] = v15;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_21D0E6204;
    v19[3] = &block_descriptor_49_2;
    v16 = _Block_copy(v19);
    v17 = a1;

    [v13 performWithoutAnimation_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D85EE28(double a1, double a2, double a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong contentOffset];
    if (vabdd_f64(v10, a2) < 1.0)
    {
      sub_21D85EC04(v9, a5 & 1, a3);
    }
  }
}

uint64_t UIViewController.futureForPresenting(_:animated:)(void *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE62D10);
  swift_allocObject();
  v6 = v2;
  v7 = a1;
  return sub_21DBF911C();
}

void sub_21D85EF50(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_21D8638E4;
  v11[3] = v10;
  v11[4] = a4;
  v14[4] = sub_21D863920;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D0D74FC;
  v14[3] = &block_descriptor_40_2;
  v12 = _Block_copy(v14);

  v13 = a4;

  [a3 presentViewController:v13 animated:a5 & 1 completion:v12];
  _Block_release(v12);
}

id UIViewController.topPresentedViewController.getter()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (!v2)
  {
    return v1;
  }

  do
  {
    v3 = v2;

    v2 = [v3 presentedViewController];
    v1 = v3;
  }

  while (v2);
  return v3;
}

BOOL UIViewController.isPresentedInsidePopover.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 _presentationSemanticContext];

  return v2 == 3;
}

uint64_t sub_21D85F14C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v36 = a4;
  v34 = a3;
  v42 = sub_21DBF9D2C();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFA7FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_21D0D8CF0(0, &qword_280D1B900);
  v35 = sub_21DBFB12C();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a8;
  *(v21 + 24) = v34;
  (*(v14 + 32))(v21 + v19, v17, v13);
  v22 = v36;
  *(v21 + v20) = v36;
  v23 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v18;
  *(v23 + 8) = v38;
  v24 = (v21 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v26 = v39;
  v25 = v40;
  *v24 = v39;
  v24[1] = v25;
  aBlock[4] = sub_21D863A6C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_83_3;
  v27 = _Block_copy(aBlock);
  sub_21DBF8E0C();
  v28 = v22;

  sub_21D0D0E74(v26, v25);
  v29 = v37;
  sub_21DBF9D4C();
  v46 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0CD8F0();
  v31 = v41;
  v30 = v42;
  sub_21DBFBCBC();
  v32 = v35;
  MEMORY[0x223D438F0](0, v29, v31, v27);
  _Block_release(v27);

  (*(v45 + 8))(v31, v30);
  (*(v43 + 8))(v29, v44);
}

void sub_21D85F570(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v42 = a7;
  v43 = a6;
  v44 = a5;
  v45 = a4;
  v60 = a3;
  v57 = a2;
  v56 = sub_21DBFA7FC();
  v61 = *(v56 - 8);
  v55 = *(v61 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v41 - v10;
  v58 = a8;
  v11 = type metadata accessor for TTRIValueBasedAlertAction();
  v68 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v12;
  MEMORY[0x28223BE20](v13);
  v67 = &v41 - v14;
  if (sub_21DBFA6DC())
  {
    v50 = objc_opt_self();
    v15 = 0;
    v52 = (v68 + 16);
    v49 = v61 + 16;
    v48 = v68 + 32;
    v47 = v61 + 32;
    v46 = &v71;
    v51 = a1;
    v16 = v54;
    do
    {
      v17 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v17)
      {
        (*(v68 + 16))(v67, a1 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v15, v11);
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v37 = sub_21DBFBF7C();
        if (v59 != 8)
        {
          __break(1u);
          return;
        }

        aBlock = v37;
        (*v52)(v67, &aBlock, v11);
        swift_unknownObjectRelease();
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      v19 = v67;
      v20 = *v67;
      v62 = *(v67 + 1);
      v63 = v20;
      v64 = *(v67 + 2);
      v65 = v18;
      v21 = v61;
      v22 = v56;
      (*(v61 + 16))(v16, v57, v56);
      v23 = v68;
      v24 = *(v68 + 32);
      v66 = v15;
      v25 = v53;
      v24(v53, v19, v11);
      v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
      v27 = *(v23 + 80);
      v28 = v11;
      v29 = (v55 + v27 + v26) & ~v27;
      v30 = swift_allocObject();
      *(v30 + 16) = v58;
      (*(v21 + 32))(v30 + v26, v16, v22);
      v31 = v30 + v29;
      v11 = v28;
      v32 = v25;
      v33 = v66;
      v24(v31, v32, v28);
      sub_21DBF8E0C();
      v34 = sub_21DBFA12C();

      v73 = sub_21D863B44;
      v74 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_21D1B6000;
      v72 = &block_descriptor_89_1;
      v35 = _Block_copy(&aBlock);

      v36 = [v50 actionWithTitle:v34 style:v64 handler:v35];
      _Block_release(v35);

      a1 = v51;
      [v60 addAction_];

      v15 = v33 + 1;
    }

    while (v65 != sub_21DBFA6DC());
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    if (v43)
    {
      v73 = v43;
      v74 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_21D0D74FC;
      v72 = &block_descriptor_92_0;
      v40 = _Block_copy(&aBlock);
    }

    else
    {
      v40 = 0;
    }

    [v39 presentViewController:v60 animated:v44 & 1 completion:v40];
    _Block_release(v40);
  }
}

uint64_t sub_21D85FB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIValueBasedAlertAction();
  (*(v6 + 16))(v8, a3 + *(v9 + 32), a4);
  sub_21DBFA7FC();
  return sub_21DBFA7EC();
}

uint64_t UIViewController.presentAlert<A>(with:animated:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 57) = a3;
  *(v5 + 64) = a1;
  v6 = a2[1];
  *(v5 + 16) = *a2;
  *(v5 + 32) = v6;
  *(v5 + 41) = *(a2 + 25);
  *(v5 + 88) = sub_21DBFA84C();
  *(v5 + 96) = sub_21DBFA83C();
  v8 = sub_21DBFA7CC();
  *(v5 + 104) = v8;
  *(v5 + 112) = v7;

  return MEMORY[0x2822009F8](sub_21D85FD40, v8, v7);
}

uint64_t sub_21D85FD40()
{
  v1 = [*(v0 + 80) viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {

    if (*(v0 + 24))
    {
      v3 = sub_21DBFA12C();
      if (*(v0 + 40))
      {
LABEL_4:
        v4 = sub_21DBFA12C();
LABEL_10:
        v9 = *(v0 + 80);
        v10 = *(v0 + 72);
        v11 = *(v0 + 57);
        v12 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];
        *(v0 + 120) = v12;

        v13 = sub_21DBFA83C();
        *(v0 + 128) = v13;
        v14 = swift_task_alloc();
        *(v0 + 136) = v14;
        *(v14 + 16) = v10;
        *(v14 + 24) = v0 + 16;
        *(v14 + 32) = v12;
        *(v14 + 40) = v9;
        *(v14 + 48) = v11;
        v15 = swift_task_alloc();
        *(v0 + 144) = v15;
        *v15 = v0;
        v15[1] = sub_21D85FFCC;
        v16 = *(v0 + 64);
        v17 = *(v0 + 72);
        v18 = MEMORY[0x277D85700];

        return MEMORY[0x2822008A0](v16, v13, v18, 0xD00000000000001CLL, 0x800000021DC6E280, sub_21D8621CC, v14, v17);
      }
    }

    else
    {
      v3 = 0;
      if (*(v0 + 40))
      {
        goto LABEL_4;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  v5 = objc_opt_self();
  v6 = sub_21DBFA12C();
  [v5 internalErrorWithDebugDescription_];

  swift_willThrow();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21D85FFCC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D860160;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21D8600F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D8600F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D860160()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

id sub_21D8601E8(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v41 = a5;
  v42 = a4;
  v58 = a3;
  v54 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280);
  v53 = sub_21DBFA7FC();
  v57 = *(v53 - 8);
  v52 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v40[-v8];
  v55 = a6;
  v9 = type metadata accessor for TTRAlertSpecification.Action();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v49 = &v40[-v13];
  v56 = v14;
  MEMORY[0x28223BE20](v15);
  v67 = &v40[-v16];
  v17 = *(a2 + 32);
  if (!sub_21DBFA6DC())
  {
    return [v42 presentViewController:v58 animated:v41 & 1 completion:0];
  }

  v47 = objc_opt_self();
  v18 = 0;
  v65 = v10 + 32;
  v66 = (v10 + 16);
  v46 = v57 + 16;
  v45 = v57 + 32;
  v44 = v69;
  v43 = v10 + 8;
  v48 = v17;
  v19 = v49;
  v20 = v51;
  while (1)
  {
    v21 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v21)
    {
      v22 = *(v10 + 16);
      v22(v67, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v9);
      v23 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_21DBFBF7C();
    if (v56 != 8)
    {
      break;
    }

    aBlock[0] = result;
    v22 = *v66;
    (*v66)(v67, aBlock, v9);
    swift_unknownObjectRelease();
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_10:
      __break(1u);
      return [v42 presentViewController:v58 animated:v41 & 1 completion:0];
    }

LABEL_5:
    v61 = *(v10 + 32);
    v63 = v23;
    v61(v19, v67, v9);
    v62 = v19[16];
    v24 = *v19;
    v59 = *(v19 + 1);
    v60 = v24;
    v25 = v57;
    v26 = *(v57 + 16);
    v64 = v18;
    v27 = v9;
    v28 = v53;
    v26(v20, v54, v53);
    v29 = v50;
    v22(v50, v19, v27);
    v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v31 = (v52 + *(v10 + 80) + v30) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v55;
    v33 = v28;
    v9 = v27;
    (*(v25 + 32))(v32 + v30, v20, v33);
    v34 = v29;
    v17 = v48;
    v61((v32 + v31), v34, v27);
    v35 = sub_21DBFA12C();
    v69[2] = sub_21D8637D8;
    v69[3] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v69[0] = sub_21D1B6000;
    v69[1] = &block_descriptor_31_3;
    v36 = _Block_copy(aBlock);

    v37 = [v47 actionWithTitle:v35 style:v62 handler:v36];
    _Block_release(v36);

    v38 = v64;
    [v58 addAction_];

    (*(v10 + 8))(v19, v9);
    v18 = v38 + 1;
    if (v63 == sub_21DBFA6DC())
    {
      return [v42 presentViewController:v58 animated:v41 & 1 completion:0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D86078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAlertSpecification.Action();
  (*(v6 + 16))(v8, a3 + *(v9 + 32), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280);
  sub_21DBFA7FC();
  return sub_21DBFA7EC();
}

uint64_t UIViewController.present<A>(warmingSheet:primaryButtonAction:secondaryButtonAction:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 128) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_21DBFA8CC();
  *(v7 + 64) = swift_task_alloc();
  v8 = sub_21DBFA93C();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  sub_21DBFA84C();
  *(v7 + 96) = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  *(v7 + 104) = v10;
  *(v7 + 112) = v9;

  return MEMORY[0x2822009F8](sub_21D8609D4, v10, v9);
}

uint64_t sub_21D8609D4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 128);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = *(v0 + 24);
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  *(v6 + 40) = v5;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  v8 = *MEMORY[0x277D85778];
  v9 = sub_21DBFA8CC();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  sub_21DBFA94C();

  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_21D860B3C;
  v11 = *(v0 + 72);
  v12 = *(v0 + 16);

  return MEMORY[0x282138AD0](v12, v11);
}

uint64_t sub_21D860B3C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D860C5C, v3, v2);
}

uint64_t sub_21D860C5C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id sub_21D860CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v73 = a6;
  v74 = a5;
  v75 = a7;
  v72 = a4;
  v68 = a3;
  v76 = a2;
  v8 = type metadata accessor for TTRIValueBasedAlertAction();
  v9 = sub_21DBFBA8C();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = &v51 - v10;
  v67 = v8;
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v66 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = sub_21DBFA91C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v51 - v21;
  v78[0] = 0;
  v23 = *(v18 + 16);
  v65 = a1;
  v59 = v18 + 16;
  v57 = v23;
  (v23)(&v51 - v21, a1, v17, v20);
  v24 = v11;
  v25 = *(v11 + 16);
  v26 = v68;
  v56 = v11 + 16;
  v55 = v25;
  v25(v16, v68, v8);
  v27 = *(v18 + 80);
  v28 = (v27 + 24) & ~v27;
  v29 = *(v24 + 80);
  v30 = v24;
  v31 = (v19 + v29 + v28) & ~v29;
  v63 = v12;
  v53 = v27 | v29;
  v32 = swift_allocObject();
  *(v32 + 16) = v75;
  v33 = *(v18 + 32);
  v58 = v28;
  v61 = v22;
  v62 = v17;
  v54 = v18 + 32;
  v52 = v33;
  v33(v32 + v28, v22, v17);
  v34 = *(v30 + 32);
  v60 = v31;
  v64 = v16;
  v35 = v16;
  v36 = v69;
  v37 = v67;
  v34(v32 + v31, v35, v67);
  TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(v26, v78, sub_21D863C6C, v32);
  v38 = v71;

  v39 = v70;
  (*(v70 + 16))(v36, v72, v38);
  v72 = v30;
  v40 = v37;
  if ((*(v30 + 48))(v36, 1, v37) == 1)
  {
    (*(v39 + 8))(v36, v38);
    v41 = v76;
  }

  else
  {
    v42 = v66;
    v34(v66, v36, v37);
    v77 = 1;
    v43 = v34;
    v45 = v61;
    v44 = v62;
    v57(v61, v65, v62);
    v46 = v64;
    v55(v64, v42, v40);
    v47 = v60;
    v48 = swift_allocObject();
    *(v48 + 16) = v75;
    v52(v48 + v58, v45, v44);
    v43(v48 + v47, v46, v40);
    v49 = v76;
    TTRIPermissionsWarmingSheetViewController.setAction<A>(_:forButton:handler:)(v42, &v77, sub_21D863704, v48);

    (*(v72 + 8))(v42, v40);
    v41 = v49;
  }

  return [v74 presentViewController:v41 animated:v73 & 1 completion:0];
}

uint64_t sub_21D86120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBFA8AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for TTRIValueBasedAlertAction();
  (*(v5 + 16))(v7, a2 + *(v12 + 32), a3);
  sub_21DBFA91C();
  sub_21DBFA8FC();
  (*(v9 + 8))(v11, v8);
  return sub_21DBFA90C();
}

uint64_t sub_21D8613A0(uint64_t a1, uint64_t a2, int a3)
{
  v22 = a3;
  v20[1] = a2;
  v4 = sub_21DBF9D2C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  sub_21D0D8CF0(0, &qword_280D1B900);
  v21 = sub_21DBFB12C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v22;
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = sub_21D86398C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_70_1;
  v17 = _Block_copy(aBlock);

  sub_21DBF9D4C();
  v26 = MEMORY[0x277D84F90];
  sub_21D0CD898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  v18 = v21;
  MEMORY[0x223D438F0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);
}

void sub_21D861744(uint64_t a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, a3, v5);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = swift_allocObject();
    (*(v6 + 32))(v12 + v11, v8, v5);
    aBlock[4] = sub_21D863A00;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_76_0;
    v13 = _Block_copy(aBlock);

    [v10 dismissViewControllerAnimated:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

uint64_t TTRIValueBasedAlertAction.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void __swiftcall AlertStyleBuilder.AlertInfo.init(alertTitle:alertMessage:alertPrimaryButtonTitle:)(RemindersUICore::AlertStyleBuilder::AlertInfo *__return_ptr retstr, Swift::String_optional alertTitle, Swift::String_optional alertMessage, Swift::String alertPrimaryButtonTitle)
{
  retstr->alertTitle = alertTitle;
  retstr->alertMessage = alertMessage;
  retstr->alertPrimaryButtonTitle = alertPrimaryButtonTitle;
}

void AlertStyleBuilder.init(alertInfo:actionSheetInfo:alertPreferredStyle:popoverAnchor:)(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a4[1];
  v14 = *a4;
  v15 = v6;
  v16[0] = a4[2];
  *(v16 + 9) = *(a4 + 41);
  v7 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v7;
  v8 = *a2;
  v9 = a2[1];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v8;
  v10 = a2[2];
  *(a5 + 64) = v9;
  *(a5 + 80) = v10;
  if (a3)
  {
    sub_21D0CF7E0(&v14, &qword_27CE5D558);
    v13 = 1;
  }

  else if ((~BYTE8(v16[0]) & 0xFE) != 0)
  {
    sub_21D0CF7E0(&v14, &qword_27CE5D558);
    v13 = 0;
  }

  else
  {
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = v12 == 1;
  }

  *(a5 + 96) = v13;
}

uint64_t AlertStyleBuilder.title.getter()
{
  v1 = v0[12];
  if (v1)
  {
    if (v1 == 1 && v0[5])
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v0[11])
  {
    return 0;
  }

  v0 += 6;
LABEL_7:
  v2 = *v0;
  sub_21DBF8E0C();
  return v2;
}

uint64_t AlertStyleBuilder.message.getter()
{
  v1 = v0[12];
  if (!v1)
  {
    if (v0[11])
    {
      v2 = v0 + 8;
      goto LABEL_7;
    }

    return 0;
  }

  if (v1 != 1 || !v0[5])
  {
    return 0;
  }

  v2 = v0 + 2;
LABEL_7:
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

uint64_t AlertStyleBuilder.primaryButtonTitle.getter()
{
  v1 = v0[12];
  if (!v1)
  {
    if (v0[11])
    {
      v2 = v0 + 10;
      goto LABEL_7;
    }

    return 0;
  }

  if (v1 != 1 || !v0[5])
  {
    return 0;
  }

  v2 = v0 + 4;
LABEL_7:
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

__C::UIPopoverArrowDirection __swiftcall UIPopoverArrowDirection.addingRTLFallback()()
{
  if ((result.rawValue & 4) != 0)
  {
    if ((result.rawValue & 8) != 0)
    {
      return result;
    }

    v1 = 8;
  }

  else
  {
    if ((result.rawValue & 8) == 0)
    {
      return result;
    }

    v1 = 4;
  }

  return (v1 | result.rawValue);
}

id TTRIPopoverAnchor.source.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_21D50BA00(v2, v3, v4, v5, v6, v7);
}

__n128 TTRIPopoverAnchor.source.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D50B440(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t TTRIPopoverAnchor.permittedArrowDirections.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

id static TTRIPopoverAnchor.sourceViewAndRect(view:rect:permittedArrowDirections:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  *a4 = a1;
  *(a4 + 8) = a5;
  *(a4 + 16) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = 0;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return a1;
}

uint64_t static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0x80;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return swift_unknownObjectRetain();
}

double static TTRIPopoverAnchor.sourceViewOrBarButtonItem(fromSender:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D0C300);
    if (swift_dynamicCast())
    {
      *a2 = v5;
      result = 0.0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 64;
LABEL_8:
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v6, &qword_27CE5C690);
  }

  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    if (swift_dynamicCast())
    {
      *a2 = v5;
      result = 0.0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    sub_21D0CF7E0(v6, &qword_27CE5C690);
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *&result = 254;
  *(a2 + 40) = xmmword_21DC0A830;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_21D861EC8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24[3] = a4;
  v24[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v11 = [a3 transitionCoordinator];
  if (v11)
  {
    v12 = v11;
    if ([v11 initiallyInteractive] && (objc_msgSend(v12, sel_isInterruptible) & 1) == 0)
    {
      sub_21D0D32E4(v24, v23);
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      sub_21D0D0FD0(v23, v15 + 24);
      *(v15 + 64) = a2 & 1;
      v21 = sub_21D81A244;
      v22 = v15;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21D83EFE8;
      v20 = &block_descriptor_61_0;
      v14 = _Block_copy(&v17);
      swift_unknownObjectRetain();

      [v12 notifyWhenInteractionChangesUsingBlock_];
    }

    else
    {
      if (![v12 isInterruptible])
      {
        (*(a5 + 8))(a2 & 1, a4, a5);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v24);
      }

      sub_21D0D32E4(v24, v23);
      v13 = swift_allocObject();
      sub_21D0D0FD0(v23, v13 + 16);
      *(v13 + 56) = a2 & 1;
      v21 = sub_21D81A238;
      v22 = v13;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21D83EFE8;
      v20 = &block_descriptor_55_1;
      v14 = _Block_copy(&v17);

      [v12 animateAlongsideTransition:0 completion:v14];
    }

    _Block_release(v14);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

id sub_21D862198(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xFDu)
  {
    return sub_21D50BA00(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21D8621F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_21D862298(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-25 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v13 = *(v5 + 16);
    sub_21DBF8E0C();
    v13(v11 + 1, v12 + 1, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_21D8623A4(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_21D862420(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  sub_21DBF8E0C();
  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

void *sub_21D8624C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

_OWORD *sub_21D862578(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *sub_21D862600(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + 8) & ~*(v9 + 80), (v8 + *(v9 + 80) + 8) & ~*(v9 + 80));
  return a1;
}

uint64_t sub_21D8626A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21D86282C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t destroy for AlertStyleBuilder(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
  }

  if (*(v1 + 88))
  {
  }

  return result;
}

uint64_t initializeWithCopy for AlertStyleBuilder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (!v4)
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 88);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = *(a2 + 88);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
LABEL_6:
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *assignWithCopy for AlertStyleBuilder(void *a1, void *a2)
{
  v4 = a2[5];
  if (a1[5])
  {
    if (v4)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();

      a1[2] = a2[2];
      a1[3] = a2[3];
      sub_21DBF8E0C();

      a1[4] = a2[4];
      a1[5] = a2[5];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D862DEC(a1);
      v6 = *(a2 + 1);
      v5 = *(a2 + 2);
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = v5;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v8;
    *a1 = v7;
  }

  v9 = a2[11];
  if (a1[11])
  {
    if (v9)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];
      sub_21DBF8E0C();

      a1[8] = a2[8];
      a1[9] = a2[9];
      sub_21DBF8E0C();

      a1[10] = a2[10];
      a1[11] = a2[11];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D862E1C((a1 + 6));
      v11 = *(a2 + 4);
      v10 = *(a2 + 5);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v11;
      *(a1 + 5) = v10;
    }
  }

  else if (v9)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    a1[10] = a2[10];
    a1[11] = a2[11];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v12 = *(a2 + 3);
    v13 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v13;
    *(a1 + 3) = v12;
  }

  a1[12] = a2[12];
  return a1;
}

uint64_t assignWithTake for AlertStyleBuilder(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;

      v6 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v6;

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v4;

      if (!*(a1 + 88))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_21D862DEC(a1);
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 88))
  {
LABEL_10:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_11;
  }

LABEL_7:
  v8 = *(a2 + 88);
  if (!v8)
  {
    sub_21D862E1C(a1 + 48);
    goto LABEL_10;
  }

  v9 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v9;

  v10 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v10;

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;

LABEL_11:
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for AlertStyleBuilder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for AlertStyleBuilder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  sub_21D50BA00(*a2, v5, v6, v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  sub_21D50BA00(*a2, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v15 = *(a1 + 40);
  *(a1 + 40) = v9;
  sub_21D50B440(v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v16;
  return a1;
}

uint64_t assignWithTake for TTRIPopoverAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = v4;
  v12 = *(a1 + 40);
  *(a1 + 40) = v5;
  sub_21D50B440(v6, v7, v8, v9, v10, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIPopoverAnchor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 57))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIPopoverAnchor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D50BA00(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D50BA00(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_21D50B440(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for TTRIPopoverAnchor.Source(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D50B440(v5, v7, v6, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIPopoverAnchor.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 41))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 40) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 40) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIPopoverAnchor.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D863530()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  return (*(v3 + 8))(v1, v2, v3);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  v2 = sub_21DBFA91C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (type metadata accessor for TTRIValueBasedAlertAction() - 8);
  v7 = (v4 + v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(*(v1 - 8) + 8))(v0 + v7 + v6[10], v1);

  return swift_deallocObject();
}

uint64_t sub_21D863708()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21DBFA91C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for TTRIValueBasedAlertAction() - 8);
  return sub_21D86120C(v0 + v3, v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1);
}

uint64_t sub_21D8637D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5B280);
  v4 = *(sub_21DBFA7FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for TTRAlertSpecification.Action() - 8);
  v8 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21D86078C(a1, v1 + v5, v8, v3);
}

uint64_t sub_21D8638E4(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1 & 1;
  return v2(&v4);
}

void sub_21D863920()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(0);
  v2 = *MEMORY[0x277D76488];

  UIAccessibilityPostNotification(v2, v1);
}

void sub_21D86398C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62E00) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  sub_21D861744(v2, v3, v4);
}

void sub_21D863A6C()
{
  v1 = *(v0 + 16);
  v2 = *(sub_21DBFA7FC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_21D85F570(v6, v0 + v3, v7, v8, v9, v11, v12, v1);
}

uint64_t sub_21D863B44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_21DBFA7FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for TTRIValueBasedAlertAction() - 8);
  v8 = v1 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_21D85FB8C(a1, v1 + v5, v8, v3);
}

id sub_21D863CB4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 sortingStyle];
  v5 = sub_21DBFA16C();
  v7 = v6;
  if (v5 == sub_21DBFA16C() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC0AFB0;
      *(inited + 32) = 0x657079547473696CLL;
      *(inited + 40) = 0xE800000000000000;
      sub_21D0D8CF0(0, &qword_27CE5A168);
      *(inited + 48) = sub_21DBFB66C();
      *(inited + 56) = 0x6E6F73616572;
      *(inited + 64) = 0xE600000000000000;
      v13 = sub_21DBFA12C();

      *(inited + 72) = v13;
      *(inited + 80) = 0x6974726F53646C6FLL;
      *(inited + 88) = 0xEF656C797453676ELL;
      *(inited + 96) = [v3 sortingStyle];
      *(inited + 104) = 0x6974726F5377656ELL;
      *(inited + 112) = 0xEF656C797453676ELL;
      *(inited + 120) = a1;
      v14 = a1;
      v15 = sub_21D1777B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
      swift_arrayDestroy();
      sub_21DBF835C();
      MEMORY[0x223D40B00](0xD00000000000001ALL, 0x800000021DC45C80, v15, 0, 1);

      return [v3 setSortingStyle_];
    }
  }

  return result;
}

id TTRTemplateEditor.addNewSection(with:displayName:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_21DBF619C();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[2];
  v11 = [v10 sectionsContextChangeItem];
  if (v11)
  {
    v12 = v11;
    v35 = v4;
    v13 = [v10 saveRequest];
    v14 = sub_21DBFA12C();
    v36 = [v13 addTemplateSectionWithDisplayName:v14 toTemplateSectionContextChangeItem:v12 templateSectionObjectID:a1];

    v34 = v12;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    sub_21DBF62DC();
    sub_21DBF62CC();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE591F8);
    v16 = &v9[v15[12]];
    v17 = v15[16];
    v18 = &v9[v15[20]];
    v19 = *MEMORY[0x277D44E60];
    v20 = sub_21DBF613C();
    (*(*(v20 - 8) + 104))(v9, v19, v20);
    *v16 = TTRUserDefaults.activitySessionId.getter();
    v16[1] = v21;
    TTRUserDefaults.activitySessionBeginTime.getter(&v9[v17]);
    v37 = sub_21DBFC8EC();
    v38 = v22;
    MEMORY[0x223D42AA0](0x6C706D6554202D20, 0xEB00000000657461);
    v23 = v38;
    *v18 = v37;
    v18[1] = v23;
    (*(v6 + 104))(v9, *MEMORY[0x277D44E98], v5);
    sub_21DBF62BC();

    (*(v6 + 8))(v9, v5);
    v24 = v36;
    v25 = [v36 objectID];
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v25;
    sub_21D182D68(sub_21D866DD0, v26);

    return v24;
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE62E10);
    v30 = sub_21DBF84AC();
    v31 = sub_21DBFAECC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21D0C9000, v30, v31, "Attempted to set the add a section to a template that does not support it.", v32, 2u);
      MEMORY[0x223D46520](v32, -1, -1);
    }

    return 0;
  }
}

void TTRTemplateEditor.deleteSection(_:)(void *a1)
{
  v3 = [*(v1 + 16) saveRequest];
  v4 = [v3 updateTemplateSection_];

  [v4 removeFromParentTemplate];
  v5 = [a1 objectID];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v5;
  sub_21D182D68(sub_21D3A4960, v6);
}

Swift::Void __swiftcall TTRTemplateEditor.updateOrderingOfSections(withSectionIDsOrdering:initialSectionIDsOrdering:)(Swift::OpaquePointer withSectionIDsOrdering, Swift::OpaquePointer_optional initialSectionIDsOrdering)
{
  rawValue = initialSectionIDsOrdering.value._rawValue;
  v5 = *(v2 + 16);
  v6 = [v5 sectionsContextChangeItem];
  if (v6)
  {
    oslog = v6;
    sub_21D0D8CF0(0, &qword_27CE62E28);
    sub_21DBF80CC();
    if (rawValue)
    {
      v7 = swift_allocObject();
      v7[2]._rawValue = rawValue;
      v7[3]._rawValue = withSectionIDsOrdering._rawValue;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D182D68(sub_21D3A4A20, v7);
    }
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE62E10);

    oslog = sub_21DBF84AC();
    v9 = sub_21DBFAECC();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = [v5 objectID];
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v9, "Failed to update ordering of sections in template because template does not support sections {templateID: %@}", v10, 0xCu);
      sub_21D0CF7E0(v11, &unk_27CE60070);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }
  }
}

void TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    v15 = v11;
    sub_21DBF560C();
    sub_21D0D8CF0(0, &qword_27CE62E28);
    sub_21DBF815C();

    (*(v7 + 8))(v10, v6);
    if (a3)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = v11;
      v17 = v15;
      sub_21DBF8E0C();
      sub_21D182D68(sub_21D866DEC, v16);
    }
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE62E10);

    v25 = sub_21DBF84AC();
    v19 = sub_21DBFAECC();

    if (os_log_type_enabled(v25, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v12 objectID];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_21D0C9000, v25, v19, "Failed to update memberships of reminders in sections because template does not support sections {listID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    v23 = v25;
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 16);
  v5 = [v4 name];
  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = v6 == countAndFlagsBits && v8 == object;
  if (v9 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    v10 = sub_21DBFA12C();
    [v4 setName_];

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v8;
    sub_21D182D68(sub_21D43DE24, v11);
  }
}

uint64_t sub_21D864B30()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E10);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E10);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

__n128 TTRTemplateEditor.__allocating_init(changeItem:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  *(v4 + 64) = 0;
  return result;
}

__n128 TTRTemplateEditor.__allocating_init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 64) = a3;
  return result;
}

uint64_t TTRTemplateEditor.init(changeItem:undoContext:unitTest_oneShotSyncSaveForUndo:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v4 = *(a2 + 16);
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a2 + 32);
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_21D864CEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) name];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = v7 == a2 && v9 == a3;
  if (v10 || (sub_21DBFC64C() & 1) != 0)
  {
  }

  else
  {
    v12 = *(v5 + 16);
    v13 = sub_21DBFA12C();
    [v12 setName_];

    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v9;
    sub_21D182D68(sub_21D866FCC, v14);
  }
}

void TTRTemplateEditor.edit(color:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 color];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_21D0D8CF0(0, &qword_27CE59200), v8 = v4, v5 = a1, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setColor_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866E28, v7);
  }
}

void sub_21D864F6C(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = [v3 color];
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a2 || (sub_21D0D8CF0(0, &qword_27CE59200), v8 = v4, v5 = a2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setColor_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD4, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D44678]) initWithEmblem_];
  v3 = *(v1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v2 || (sub_21D0D8CF0(0, &qword_27CE59210), v8 = v4, v5 = v2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866E30, v7);

    goto LABEL_7;
  }

LABEL_7:
}

void TTRTemplateEditor.edit(badge:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_21D0D8CF0(0, &qword_27CE59210), v8 = v4, v5 = a1, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD0, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(badgeEmoji:)(Swift::String badgeEmoji)
{
  v2 = objc_allocWithZone(MEMORY[0x277D44678]);
  v3 = sub_21DBFA12C();
  v4 = [v2 initWithEmoji_];

  v5 = *(v1 + 16);
  v6 = [v5 badge];
  if (!v6)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v4 || (sub_21D0D8CF0(0, &qword_27CE59210), v10 = v6, v7 = v4, v8 = sub_21DBFB63C(), v10, v7, (v8 & 1) == 0))
  {
LABEL_6:
    [v5 setBadge_];
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v10 = v6;
    sub_21D182D68(sub_21D866FD0, v9);

    goto LABEL_7;
  }

LABEL_7:
}

void sub_21D86551C(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  v4 = [v3 badge];
  if (!v4)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a2 || (sub_21D0D8CF0(0, &qword_27CE59210), v8 = v4, v5 = a2, v6 = sub_21DBFB63C(), v8, v5, (v6 & 1) == 0))
  {
LABEL_6:
    [v3 setBadge_];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v8 = v4;
    sub_21D182D68(sub_21D866FD0, v7);
  }
}

Swift::Void __swiftcall TTRTemplateEditor.edit(showingLargeAttachments:)(Swift::Bool showingLargeAttachments)
{
  v3 = *v1;
  v4 = v1[2];
  if ([v4 showingLargeAttachments] != showingLargeAttachments)
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62E10);

    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAE9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v8 = 136315650;
      v21[1] = v3;
      swift_getMetatypeMetadata();
      v9 = sub_21DBFA1AC();
      v11 = sub_21D0CDFB4(v9, v10, v21);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      v12 = [v4 showingLargeAttachments];
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 1702195828;
      }

      else
      {
        v14 = 0x65736C6166;
      }

      if (v13)
      {
        v15 = 0xE500000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v16 = sub_21D0CDFB4(v14, v15, v21);

      *(v8 + 14) = v16;
      *(v8 + 22) = 2080;
      if (showingLargeAttachments)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (showingLargeAttachments)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

      v19 = sub_21D0CDFB4(v17, v18, v21);

      *(v8 + 24) = v19;
      _os_log_impl(&dword_21D0C9000, v6, v7, "%s: Changing showing large attachments {from: %s, to: %s}", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    [v4 setShowingLargeAttachments_];
  }
}

void sub_21D8658D4(uint64_t a1)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v50 = *(v1 + 16);
  v4 = [v50 saveRequest];
  v5 = [v4 store];

  sub_21D198698(a1);
  v6 = sub_21D0D8CF0(0, &qword_280D17880);
  v7 = sub_21DBFA5DC();

  v56[0] = 0;
  v8 = [v5 fetchTemplateSectionsWithObjectIDs:v7 error:v56];

  v9 = v56[0];
  if (v8)
  {
    sub_21D0D8CF0(0, &qword_27CE584B8);
    sub_21D183A0C();
    v10 = sub_21DBF9E6C();
    v11 = v9;

    v51 = v6;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = sub_21DBFC21C();
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v10 = v12 | 0x8000000000000000;
    }

    else
    {
      v29 = -1 << *(v10 + 32);
      v13 = v10 + 64;
      v14 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v15 = v31 & *(v10 + 64);
    }

    v32 = 0;
    v33 = (v14 + 64) >> 6;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v34 = v32;
      v35 = v15;
      v36 = v32;
      if (!v15)
      {
        break;
      }

LABEL_16:
      v37 = (v35 - 1) & v35;
      v38 = (v36 << 9) | (8 * __clz(__rbit64(v35)));
      v39 = *(*(v10 + 56) + v38);
      v40 = *(*(v10 + 48) + v38);
      v41 = v39;
      if (!v40)
      {
LABEL_22:
        sub_21D0CFAF8();
        return;
      }

      while (1)
      {

        v45 = [v50 saveRequest];
        v2 = [v45 updateTemplateSection_];

        [v2 removeFromParentTemplate];
        v46 = [v41 objectID];
        v53 = v37;
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        v56[3] = v51;
        v52 = v46;
        v56[0] = [v50 objectID];
        v48 = sub_21D0D8CF0(0, &qword_27CE584C8);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584D0);
        *&v54 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_21DC08D00;
        sub_21D0CEB98(v56, v49 + 32);
        sub_21D0CF2E8(&v54, (v49 + 64));
        __swift_destroy_boxed_opaque_existential_0(v56);
        sub_21D1C4F54(v49, sub_21D3A4B68, v47);

        v32 = v36;
        v15 = v53;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v42 = sub_21DBFC2DC();
        if (v42)
        {
          v44 = v43;
          *&v54 = v42;
          swift_dynamicCast();
          v40 = v56[0];
          *&v54 = v44;
          swift_dynamicCast();
          v41 = v56[0];
          v36 = v32;
          v37 = v15;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= v33)
      {
        goto LABEL_22;
      }

      v35 = *(v13 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = v56[0];
    v2 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56D60 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v17 = sub_21DBF84BC();
  __swift_project_value_buffer(v17, qword_27CE62E10);
  sub_21DBF8E0C();
  v18 = v2;
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v56[0] = v22;
    *v21 = 136446466;
    sub_21D183A0C();
    v23 = sub_21DBFAABC();
    v25 = sub_21D0CDFB4(v23, v24, v56);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    swift_getErrorValue();
    v26 = sub_21DBFC75C();
    v28 = sub_21D0CDFB4(v26, v27, v56);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_21D0C9000, v19, v20, "Failed to delete sections {sectionIDs: %{public}s, error: %{public}s}", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v21, -1, -1);
  }

  else
  {
  }
}

void sub_21D865EFC(uint64_t a1, void *a2)
{
  v3 = [*(*a1 + 16) sectionsContextChangeItem];
  if (v3)
  {
    v6 = v3;
    [v3 undeleteSectionWithID_];
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    v5 = a2;
    sub_21D182D68(sub_21D866FD8, v4);
  }
}

void sub_21D865FCC(uint64_t a1, void **a2)
{
  v3 = v2;
  v6 = sub_21DBF563C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(v3 + 16);
  v13 = [v12 sectionsContextChangeItem];
  if (v13)
  {
    v14 = v13;
    sub_21DBF560C();
    sub_21D1E44B4(a1, v10);
    (*(v7 + 8))(v10, v6);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v11;
    v16 = v11;
    sub_21DBF8E0C();
    sub_21D182D68(sub_21D866FC4, v15);
  }

  else
  {
    if (qword_27CE56D60 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE62E10);

    v24 = sub_21DBF84AC();
    v18 = sub_21DBFAECC();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v12 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&dword_21D0C9000, v24, v18, "Failed to update memberships of reminders in sections because template does not support sections {listID: %@}", v19, 0xCu);
      sub_21D0CF7E0(v20, &unk_27CE60070);
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    v22 = v24;
  }
}

id TTRTemplateEditor.store.getter()
{
  v1 = [*(v0 + 16) saveRequest];
  v2 = [v1 store];

  return v2;
}

uint64_t sub_21D8662EC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC09CF0;
  *(inited + 32) = a2;
  v4 = a2;
  v5 = sub_21D19ED08(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_21D8658D4(v5);
}

uint64_t sub_21D866394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59330);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D1D1E74();
  sub_21D183A0C();
  sub_21DBFA49C();
  TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();
}

uint64_t TTRTemplateEditor.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 24, &unk_27CE60D80);

  return swift_deallocClassInstance();
}

id static TTRTemplateEditor.store(for:)(void *a1)
{
  v1 = [a1 store];

  return v1;
}

__n128 TTRTemplateEditor.__allocating_init(item:saveRequest:undoContext:unitTest_oneShotSyncSaveForUndo:)(void *a1, id a2, uint64_t a3, char a4)
{
  v8 = [a2 updateTemplate_];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  result = *a3;
  v11 = *(a3 + 16);
  *(v9 + 24) = *a3;
  *(v9 + 40) = v11;
  *(v9 + 56) = *(a3 + 32);
  *(v9 + 64) = a4;
  return result;
}

__n128 sub_21D8665C0@<Q0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = [a1 updateTemplate_];

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  result = *a3;
  v13 = *(a3 + 16);
  *(v11 + 24) = *a3;
  *(v11 + 40) = v13;
  *(v11 + 56) = *(a3 + 32);
  *(v11 + 64) = a4;
  *a5 = v11;
  return result;
}

id static TTRTemplateEditor.changeItem(with:in:)(uint64_t a1, id a2)
{
  v2 = [a2 _trackedTemplateChangeItemForObjectID_];

  return v2;
}

{
  v2 = [a2 updateTemplate_];

  return v2;
}

id static TTRTemplateEditor.id(for:)(void *a1)
{
  v1 = [a1 objectID];

  return v1;
}

id TTRTemplateEditor.id.getter()
{
  v1 = [*(v0 + 16) objectID];

  return v1;
}

id sub_21D866764@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_21D866E38(*a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_21D866794(void *a1, id a2)
{
  v2 = [a2 _trackedTemplateChangeItemForObjectID_];

  return v2;
}

id sub_21D8667D4(void *a1, id a2)
{
  v2 = [a2 updateTemplate_];

  return v2;
}

id sub_21D866814(NSObject *a1)
{
  v2 = v1;
  if (qword_27CE56D60 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62E10);

  v5 = a1;
  a1 = sub_21DBF84AC();
  LOBYTE(v6) = sub_21DBFAE9C();

  v7 = &selRef_setQueryFragment_;
  if (!os_log_type_enabled(a1, v6))
  {

    a1 = v5;
    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  *v8 = 138412546;
  v10 = [*(v2 + 16) remObjectID];
  *(v8 + 4) = v10;
  *v9 = v10;
  *(v8 + 12) = 2048;
  v11 = [v5 topLevelElementIDs];
  sub_21D0D8CF0(0, &qword_280D17880);
  v12 = sub_21DBFA5EC();

  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {

    *(v8 + 14) = i;

    _os_log_impl(&dword_21D0C9000, a1, v6, "Changing manual ordering {template: %@, top-level elements count: %ld}", v8, 0x16u);
    sub_21D0CF7E0(v9, &unk_27CE60070);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
LABEL_7:

    v14 = [v5 v7[494]];
    sub_21D0D8CF0(0, &qword_280D17880);
    v15 = sub_21DBFA5EC();

    if (v15 >> 62)
    {
      a1 = sub_21DBFBD7C();
    }

    else
    {
      a1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = [v5 secondaryLevelElementIDsByTopLevelElementID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
    sub_21D183A0C();
    v17 = sub_21DBF9E6C();

    v18 = v17;
    v9 = 0;
    v19 = 0;
    v6 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_17:
      v25 = *(*(v18 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
      if (v25 >> 62)
      {
        v7 = v18;
        v26 = sub_21DBFBD7C();
        v18 = v7;
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 &= v22 - 1;
      v27 = __OFADD__(v19, v26);
      v19 += v26;
      if (v27)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    while (1)
    {
      v24 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v24 >= v23)
      {
        break;
      }

      v22 = *(v6 + 8 * v24);
      ++v9;
      if (v22)
      {
        v9 = v24;
        goto LABEL_17;
      }
    }

    v27 = __OFADD__(a1, v19);
    v8 = a1 + v19;
    if (!v27)
    {
      break;
    }

    __break(1u);
LABEL_30:
    ;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D10;
  *(inited + 32) = 0x657079547473696CLL;
  *(inited + 40) = 0xE800000000000000;
  sub_21D0D8CF0(0, &qword_27CE5A168);
  *(inited + 48) = sub_21DBFB66C();
  *(inited + 56) = 0x6E6F73616572;
  *(inited + 64) = 0xE600000000000000;
  v29 = sub_21DBFA12C();

  *(inited + 72) = v29;
  *(inited + 80) = 0x657A6953746E6968;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_21DBFABEC();
  v30 = sub_21D1777B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
  swift_arrayDestroy();
  sub_21DBF835C();
  MEMORY[0x223D40B00](0xD000000000000022, 0x800000021DC647A0, v30, 0, 1);

  return [*(v2 + 16) updateManualOrdering_];
}

void sub_21D866DEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_21D865FCC(v1, &v2);
}

id sub_21D866E38(uint64_t a1, id a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [a2 fetchTemplateWithObjectID:a1 error:v6];
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

unint64_t sub_21D866EF8(uint64_t a1)
{
  result = sub_21D866F20();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_21D866F20()
{
  result = qword_27CE62E30;
  if (!qword_27CE62E30)
  {
    type metadata accessor for TTRTemplateEditor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62E30);
  }

  return result;
}

uint64_t FromTo.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for FromTo() + 36);

  return v9(v7, a2, a3);
}

uint64_t FromTo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v17 = *(*(a3 - 8) + 32);
  v17(v21 - v15, a1, a3, v14);
  (v17)(&v16[*(TupleTypeMetadata2 + 48)], a2, a3);
  (*(v10 + 32))(v12, v16, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  (v17)(a5, v12, a3);
  v19 = type metadata accessor for FromTo();
  return (v17)(a5 + *(v19 + 36), &v12[v18], a3);
}

uint64_t FromTo.tuple()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v9 = *(*(v6 - 8) + 16);
  v9(a1, v3, v6);
  v7 = v3 + *(a3 + 36);

  return (v9)(a2, v7, v6);
}

uint64_t static FromTo.== infix(_:_:)()
{
  if ((sub_21DBFA10C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FromTo();
  return sub_21DBFA10C() & 1;
}

uint64_t FromTo.hashValue.getter()
{
  sub_21DBFC7DC();
  sub_21DBFA00C();
  sub_21DBFA00C();
  return sub_21DBFC82C();
}

uint64_t sub_21D867568()
{
  sub_21DBFC7DC();
  FromTo.hash(into:)();
  return sub_21DBFC82C();
}

uint64_t FromTo.init(arrayLiteral:)()
{
  sub_21DBFA78C();
  type metadata accessor for FromTo();
  sub_21DBFA78C();
}

uint64_t FromTo.description.getter()
{
  sub_21DBFC5EC();
  MEMORY[0x223D42AA0](540945696, 0xE400000000000000);
  sub_21DBFC5EC();
  return 0;
}

uint64_t sub_21D8676E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D867770(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t sub_21D867878(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t sub_21D867914(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t sub_21D8679A8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t sub_21D867A3C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t sub_21D867AD0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

uint64_t sub_21D867B64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_21D867CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id UIFont.ttr_withSize(_:)()
{
  v1 = [v0 fontWithSize_];

  return v1;
}

uint64_t static TTRHashtagEditingPresenterCapability.characterType(for:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_21DBF4C1C();
  sub_21DBF4C2C();
  sub_21DBF4BDC();
  if (sub_21DBF4BFC())
  {
    v12 = 2;
  }

  else if (sub_21DBF4BFC())
  {
    v12 = sub_21DBF4BFC() & 1;
  }

  else
  {
    v12 = 3;
  }

  v13 = *(v3 + 8);
  v13(v5, v2);
  v13(v8, v2);
  result = (v13)(v11, v2);
  *a1 = v12;
  return result;
}

BOOL static TTRHashtagEditingPresenterCapability.tokenDelimiterExists(in:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x223D42B30]();
  v5 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(a1, a2, 0, v4);
  v6 = *(v5 + 16) + 1;
  v7 = 48;
  do
  {
    if (!--v6)
    {
      break;
    }

    v8 = *(v5 + v7);
    v7 += 24;
  }

  while (v8 != 3);
  v9 = v6 != 0;

  return v9;
}

uint64_t static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x223D42B30]();
  v8 = MEMORY[0x277D84F90];
  if ((a3 & 0x8000000000000000) == 0 && v7 >= a4 + a3)
  {
    v9 = sub_21DBFA12C();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v4;
    v14[4] = sub_21D868D90;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21D8682A8;
    v14[3] = &block_descriptor_100;
    v12 = _Block_copy(v14);

    [v9 enumerateSubstringsInRange:a3 options:a4 usingBlock:{2, v12}];

    _Block_release(v12);
    swift_beginAccess();
    v8 = *(v10 + 16);
    sub_21DBF8E0C();
  }

  return v8;
}

uint64_t sub_21D8682A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = sub_21DBFA16C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t static TTRHashtagEditingPresenterCapability.doAllCharactersMatch(charType:in:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = *a1;
  v17 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v17 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v26[0] = a2;
  v26[1] = a3;
  v26[2] = 0;
  v26[3] = v17;
  sub_21DBF8E0C();
  sub_21DBFA30C();
  if (!v18)
  {
LABEL_19:
    v24 = 1;
    goto LABEL_20;
  }

  v19 = (v7 + 8);
  while (1)
  {
    sub_21DBF4C1C();
    sub_21DBF4C2C();
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {

      v21 = 2;
    }

    else if (sub_21DBF4BFC())
    {
      v22 = sub_21DBF4BFC();

      v21 = v22 & 1;
    }

    else
    {

      v21 = 3;
    }

    v23 = *v19;
    (*v19)(v9, v6);
    v23(v12, v6);
    v23(v15, v6);
    if (v16 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v16 != 3)
    {
      break;
    }

    if (v21 != 3)
    {
      goto LABEL_18;
    }

LABEL_6:
    sub_21DBFA30C();
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (v21 < 2 && ((v21 ^ v16) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  v24 = 0;
LABEL_20:

  return v24;
}

uint64_t static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X8>)
{
  result = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(a1, a2, a3, a4);
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = (result + 72);
    v11 = 1;
    while (1)
    {
      v12 = *(v10 - 24);
      if (v12 == 2)
      {
        break;
      }

      if (v12 == 3)
      {
        goto LABEL_11;
      }

      v9 |= v12 ^ 1;
      v8 |= v12;
      ++v11;
      v10 += 24;
      if (v11 - v7 == 1)
      {
        v13 = 0;

        if (v8)
        {
LABEL_7:
          if ((v9 & 1) == 0)
          {
            v14 = 0;
LABEL_23:
            v15 = v14 | v13;
            goto LABEL_13;
          }

LABEL_22:
          v14 = 256;
          goto LABEL_23;
        }

LABEL_21:
        if ((v9 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }
    }

    if (((v8 | v9) & 1) == 0 && v7 != v11)
    {
      v16 = 0;
      LOBYTE(v9) = 0;
      do
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }

        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }

        v18 = *v10;
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_11;
        }

        LOBYTE(v9) = v18 ^ 1 | v9;
        v16 |= v18;
        ++v11;
        v10 += 24;
      }

      while (v17 != v7);
      v13 = 1;

      if (v16)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

LABEL_11:

LABEL_12:
  v15 = 2;
LABEL_13:
  *a5 = v15;
  return result;
}

RemindersUICore::TTRHashtagEditingPresenterCapability::HashtagTextAttributes __swiftcall TTRHashtagEditingPresenterCapability.HashtagTextAttributes.init(hasPrefix:tokenTextType:)(Swift::Bool hasPrefix, RemindersUICore::TTRHashtagEditingPresenterCapability::HashtagTextAttributes::TokenTextType tokenTextType)
{
  v3 = *tokenTextType;
  *v2 = hasPrefix;
  v2[1] = v3;
  result.hasPrefix = hasPrefix;
  return result;
}

BOOL static TTRHashtagEditingPresenterCapability.CharacterType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRHashtagEditingPresenterCapability.CharacterType.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x223D44FA0](v2);
  }

  if (v1 == 3)
  {
    v2 = 2;
    return MEMORY[0x223D44FA0](v2);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFC7FC();
}

uint64_t TTRHashtagEditingPresenterCapability.CharacterType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v2 = 2;
  }

  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D868854()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v2 = 2;
  }

  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D8688CC()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    return MEMORY[0x223D44FA0](v2);
  }

  if (v1 == 3)
  {
    v2 = 2;
    return MEMORY[0x223D44FA0](v2);
  }

  MEMORY[0x223D44FA0](1);
  return sub_21DBFC7FC();
}

uint64_t sub_21D868928()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v2 = 2;
  }

  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

BOOL sub_21D86899C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRHashtagEditingPresenterCapability.HashtagTextAttributes.TokenTextType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void sub_21D868AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v33 = a4;
  v12 = sub_21DBF4CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - v21;
  if (v20 && (sub_21D1954D0(a1, v20), v23))
  {
    sub_21DBF4C1C();
    sub_21DBF4C2C();
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {

      v24 = 2;
    }

    else if (sub_21DBF4BFC())
    {
      v25 = sub_21DBF4BFC();

      v24 = v25 & 1;
    }

    else
    {

      v24 = 3;
    }

    v26 = *(v13 + 8);
    v26(v15, v12);
    v26(v18, v12);
    v26(v22, v12);
    swift_beginAccess();
    v27 = *(a8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_21D214DF4(0, *(v27 + 2) + 1, 1, v27);
      *(a8 + 16) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_21D214DF4((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[24 * v30];
    v32 = v33;
    *(v31 + 4) = a3;
    *(v31 + 5) = v32;
    v31[48] = v24;
    *(a8 + 16) = v27;
    swift_endAccess();
  }

  else
  {
    *a7 = 1;
  }
}

unint64_t sub_21D868DD4()
{
  result = qword_27CE62E38;
  if (!qword_27CE62E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62E38);
  }

  return result;
}

unint64_t sub_21D868E2C()
{
  result = qword_27CE62E40;
  if (!qword_27CE62E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62E40);
  }

  return result;
}

void static REMReminderPriorityLevel.displayString(for:defaultPriorityLevel:)(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    if (a1 > 1)
    {
      if (a1 == 2 || a1 == 3)
      {
        return;
      }
    }

    else if (!a1 || a1 == 1)
    {
      return;
    }

    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE62E48);
    v3 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v3);
    sub_21DAEAB00("unknown priority level", 22, 2);
    __break(1u);
  }
}

void REMReminderPriorityLevel.localizedString.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (a1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_13:
        sub_21DBF516C();
        return;
      }

LABEL_14:
      swift_once();
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE62E48);
  v2 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v2);
  sub_21DAEAB00("unknown priority level", 22, 2);
  __break(1u);
}

uint64_t sub_21D869324()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E48);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMReminderPriorityLevel.image.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
LABEL_7:
      v1 = sub_21DBFA12C();
      [objc_opt_self() _systemImageNamed_];

      return;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (a1 == 1)
    {
      goto LABEL_7;
    }
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62E48);
  v3 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v3);
  sub_21DAEAB00("unknown priority level", 22, 2);
  __break(1u);
}

unint64_t sub_21D869558()
{
  result = qword_27CE62E60;
  if (!qword_27CE62E60)
  {
    type metadata accessor for REMReminderPriorityLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62E60);
  }

  return result;
}

unint64_t sub_21D8695B4()
{
  result = qword_27CE62E68;
  if (!qword_27CE62E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE62E68);
  }

  return result;
}

uint64_t sub_21D869644()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E78);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E78);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRParagraphStyleEditingPresenterProcessingOutput.paragraphStyleUpdate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void __swiftcall TTRParagraphStyleEditingPresenterProcessingOutput.init(textReplacements:paragraphStyleUpdate:expectedFinalText:postUpdateOption:)(RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput *__return_ptr retstr, Swift::OpaquePointer textReplacements, RemindersUICore::TTRReminderCellParagraphStyleUpdate paragraphStyleUpdate, NSAttributedString expectedFinalText, RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput::PostUpdateOption postUpdateOption)
{
  v5 = *paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  v6 = *(paragraphStyleUpdate.paragraphStylesToAdd._rawValue + 2);
  v7 = *paragraphStyleUpdate.expectedCurrentText._object;
  retstr->textReplacements = textReplacements;
  *&retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v5;
  retstr->paragraphStyleUpdate.expectedCurrentText._object = v6;
  retstr->expectedFinalText.super.isa = paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  retstr->postUpdateOption.rawValue = v7;
}

void __swiftcall TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput *__return_ptr retstr, RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput_optional *appendingUpdatesFrom)
{
  rawValue = appendingUpdatesFrom->value.textReplacements._rawValue;
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  if (appendingUpdatesFrom->value.textReplacements._rawValue)
  {
    expectedCurrentText = appendingUpdatesFrom->value.paragraphStyleUpdate.expectedCurrentText;
    isa = appendingUpdatesFrom->value.expectedFinalText.super.isa;
    v9 = appendingUpdatesFrom->value.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v10 = appendingUpdatesFrom->value.postUpdateOption.rawValue;
    sub_21D873834(rawValue, v9, expectedCurrentText._countAndFlagsBits, expectedCurrentText._object, isa);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11 = sub_21DBF8E0C();
    sub_21D56261C(v11);
    v12 = sub_21DBF8E0C();
    sub_21D562524(v12);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v13 = sub_21D47A0F8(v8, rawValue, v9);

    v19 = v5;
    v14 = [v13 string];
    v15 = v10 | v7;
    v16 = sub_21DBFA16C();
    v18 = v17;
    sub_21D300E70(rawValue, v9, expectedCurrentText._countAndFlagsBits, expectedCurrentText._object, isa);

    retstr->textReplacements._rawValue = v19;
    retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v6;
  }

  else
  {
    v15 = *(v2 + 40);
    v16 = *(v2 + 16);
    v18 = *(v2 + 24);
    retstr->textReplacements._rawValue = v5;
    retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v6;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v13 = v8;
  }

  retstr->paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits = v16;
  retstr->paragraphStyleUpdate.expectedCurrentText._object = v18;
  retstr->expectedFinalText.super.isa = v13;
  retstr->postUpdateOption.rawValue = v15;
}

void sub_21D86992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = [v9 attributeNameForStyle_];
  v11 = v10;
  if (*(a1 + 16) && (v12 = sub_21D10FE34(v10), (v13 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v12, v29);

    sub_21D0CF2E8(v29, &v30);
    v14 = [v9 attributeNameForStyle_];
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    [a5 addAttribute:v14 value:sub_21DBFC62C() range:{a2, a3}];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }

  v15 = [v9 attributeNameForStyle_];
  v16 = v15;
  if (*(a1 + 16) && (v17 = sub_21D10FE34(v15), (v18 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v17, v29);

    sub_21D0CF2E8(v29, &v30);
    v19 = [v9 attributeNameForStyle_];
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    [a5 addAttribute:v19 value:sub_21DBFC62C() range:{a2, a3}];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }

  v20 = [v9 attributeNameForStyle_];
  v21 = v20;
  if (*(a1 + 16) && (v22 = sub_21D10FE34(v20), (v23 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v22, v29);

    sub_21D0CF2E8(v29, &v30);
    v24 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v25 = [v24 initWithContents_];
    swift_unknownObjectRelease();
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      *(inited + 32) = sub_21DBFA12C();
      v27 = [v25 remParagraphStyle];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = v27;
      sub_21D11274C(inited);
      swift_setDeallocating();
      sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
      type metadata accessor for Key(0);
      sub_21D112874();
      v28 = sub_21DBF9E5C();

      [a5 addAttributes:v28 range:{a2, a3}];
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }
}

uint64_t sub_21D869CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21D0DB414(a1, v11);
  if (!v12)
  {
    return sub_21D0CF7E0(v11, &qword_27CE5C690);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && (v10 - 1) <= 2)
  {
    v9 = sub_21DBFA12C();
    [a5 removeAttribute:v9 range:{a2, a3}];

    return [a5 rem:v10 addParagraphNamedStyle:a2 inRange:a3];
  }

  return result;
}

double TTRParagraphStyleEditingPresenter.requestHandleBeginEditingText(_:editingSession:)@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a2))
  {

    sub_21D869E58(a1, a3);
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_21D869E58(void *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  v7 = [v6 string];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 string];
    v10 = sub_21DBFA16C();
    v12 = v11;

    v13 = MEMORY[0x223D42B30](v10, v12);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v6;
    v15[4] = v5;
    v15[5] = v4;
    v26[4] = sub_21D873DB0;
    v26[5] = v15;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_21D8682A8;
    v26[3] = &block_descriptor_23_2;
    v16 = _Block_copy(v26);
    v17 = v6;

    [v8 enumerateSubstringsInRange:0 options:v13 usingBlock:{0, v16}];
    _Block_release(v16);

    swift_beginAccess();
    v18 = *(v4 + 16);
    sub_21DBF8E0C();
    v19 = MEMORY[0x277D84F90];
    v20 = sub_21D47A0F8(v17, MEMORY[0x277D84F90], v18);

    v21 = *(v4 + 16);
    sub_21DBF8E0C();
    v22 = [v20 string];
    v23 = sub_21DBFA16C();
    v25 = v24;

    *a2 = v19;
    a2[1] = v21;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v20;
    a2[5] = 0;
  }

  else
  {
    __break(1u);
  }
}

void TTRParagraphStyleEditingPresenter.request(handlePaste:pasteDetail:selectedRange:editingSession:)(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X4>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  v10 = sub_21DBF4CAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v15 = a2[3];
  v16 = a2[4];
  ObjectType = swift_getObjectType();
  if ((TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a4) & 1) == 0 || !v16)
  {
    goto LABEL_18;
  }

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_18:
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    return;
  }

  v68 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x223D42B30](v15, v16);
  v20 = v14 + v19;
  if (__OFADD__(v14, v19))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = [a1 string];
  v22 = sub_21DBFA16C();
  v24 = v23;

  sub_21DBF4C8C();
  v25 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v13, v14, v20, 0, v22, v24);
  LOBYTE(v22) = v26;

  a3 = *(v11 + 8);
  a3(v13, v10);
  if (v22)
  {
    v27 = v20;
  }

  else
  {
    v27 = v25;
  }

  v20 = v27 - v14;
  if (__OFSUB__(v27, v14))
  {
    goto LABEL_35;
  }

  v28 = sub_21D871E88(v14, a1);
  v61 = v28;
  if (!v28)
  {
    goto LABEL_29;
  }

  v29 = [v28 remParagraphStyle];
  if (v29 != 3)
  {
    if (v29 != 2)
    {
      if (v29 != 1)
      {
        goto LABEL_29;
      }

      if (qword_27CE56D90 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE62ED8;
      goto LABEL_21;
    }

    if (qword_27CE56D88 == -1)
    {
LABEL_20:
      v30 = qword_27CE62EC0;
LABEL_21:
      v31 = __swift_project_value_buffer(v10, v30);
      if (sub_21D872168(v14, a1, v31))
      {
        goto LABEL_22;
      }

LABEL_29:
      sub_21D86A648(a1, v14, v20, &v62);
      v44 = v62;
      v43 = v63;
      v45 = v64;
      v46 = v65;
      v47 = v66;
      if (v62)
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v48 = v43;
        v49 = v44;
      }

      else
      {
        v48 = MEMORY[0x277D84F90];
        v49 = MEMORY[0x277D84F90];
      }

      sub_21D56261C(v49);
      sub_21D562524(v48);
      sub_21D300E70(v44, v43, v45, v46, v47);
      goto LABEL_33;
    }

LABEL_36:
    swift_once();
    goto LABEL_20;
  }

  if ((sub_21D872400(v14, v20, a1) & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v60 = a3;
  v32 = [a1 string];
  sub_21DBFA16C();

  v70 = String.rangeOfCharacterComposedSequence(before:)(v14);
  location = v70.value.location;
  length = v70.value.length;
  is_nil = v70.is_nil;

  if (is_nil)
  {
LABEL_33:
    v50 = v68;
    v51 = v69;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v52 = sub_21D47A0F8(a1, v50, v51);

    v53 = [v52 string];
    v54 = sub_21DBFA16C();
    v56 = v55;

    v62 = v50;
    v63 = v51;
    v64 = v54;
    v65 = v56;
    v66 = v52;
    v67 = 0;
    v57 = v52;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v58 = v57;
    sub_21D86A9B0(&v62, a1, a5);

    sub_21D300E70(v62, v63, v64, v65, v66);
    return;
  }

  v36 = [a1 string];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 substringWithRange_];

    sub_21DBFA16C();
    sub_21DBF4C8C();
    LOBYTE(v38) = sub_21DBF4C3C();

    v60(v13, v10);
    if ((v38 & 1) == 0)
    {
      v39 = sub_21D211FB8(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_21D211FB8((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[32 * v41];
      *(v42 + 4) = v14;
      *(v42 + 40) = xmmword_21DC2D9D0;
      *(v42 + 7) = 0xE100000000000000;
      v68 = v39;
    }

    goto LABEL_33;
  }

  __break(1u);
}

double sub_21D86A648@<D0>(void *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 string];
  sub_21DBFA16C();

  v32 = String.rangeOfCharacterComposedSequence(before:)(a2);
  location = v32.value.location;
  LOBYTE(v8) = v32.is_nil;

  if ((v8 & 1) == 0)
  {
    v10 = [a1 rem:location paragraphStyleAtIndex:0 effectiveRange:?];
    if (v10)
    {
      v11 = v10;
      v12 = v10;
      v13 = [v12 remParagraphStyle];
      if ((v13 - 1) < 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
        v14 = swift_allocObject();
        v15 = v14;
        *(v14 + 16) = xmmword_21DC08D00;
        *(v14 + 32) = v11;
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;
LABEL_8:
        *(v14 + 56) = a2;
        *(v14 + 64) = a3;
        sub_21DBF8E0C();
        v16 = v12;
        sub_21DBF8E0C();
        v17 = MEMORY[0x277D84F90];
        v18 = sub_21D47A0F8(a1, MEMORY[0x277D84F90], v15);
        swift_bridgeObjectRelease_n();
        v19 = [v18 string];
        v20 = sub_21DBFA16C();
        v22 = v21;

        *a4 = v17;
        a4[1] = v15;
        a4[2] = v20;
        a4[3] = v22;
        a4[4] = v18;
        a4[5] = 0;
        return result;
      }

      if (v13 == 3)
      {
        if ([a1 attribute:*MEMORY[0x277D44C88] atIndex:location effectiveRange:0])
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        v31[0] = v29;
        v31[1] = v30;
        if (*(&v30 + 1))
        {
          if (swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
            v14 = swift_allocObject();
            v15 = v14;
            *(v14 + 16) = xmmword_21DC08D00;
            *(v14 + 32) = v11;
            *(v14 + 40) = v28;
            *(v14 + 48) = 1;
            goto LABEL_8;
          }
        }

        else
        {

          sub_21D0CF7E0(v31, &qword_27CE5C690);
        }

        if (qword_27CE56D70 != -1)
        {
          swift_once();
        }

        v24 = sub_21DBF84BC();
        __swift_project_value_buffer(v24, qword_27CE62E78);
        v25 = sub_21DBF84AC();
        v26 = sub_21DBFAEBC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_21D0C9000, v25, v26, "Error.  Tried to extend an ordered list attribute value but there is no associated item number attribute value", v27, 2u);
          MEMORY[0x223D46520](v27, -1, -1);
        }
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

void sub_21D86A9B0(void **a1@<X0>, objc_class *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  if (*a1)
  {
    v10 = a1[4];
  }

  else
  {
    v10 = a2;
  }

  v33 = v10;
  sub_21D86C7F8(v33, &v41);
  rawValue = v41.textReplacements._rawValue;
  object = v41.paragraphStyleUpdate.expectedCurrentText._object;
  isa = v41.expectedFinalText.super.isa;
  v32 = v41.expectedFinalText.super.isa;
  paragraphStyleUpdate = v41.paragraphStyleUpdate;
  v30 = v41.textReplacements._rawValue;
  if (v4)
  {
    v35 = v4;
    v36 = v5;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    v40 = v9;
    appendingUpdatesFrom.value = v41;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v41, &appendingUpdatesFrom);
    rawValue = v41.textReplacements._rawValue;
    object = v41.paragraphStyleUpdate.expectedCurrentText._object;
    countAndFlagsBits = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v27 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v3 = v41.expectedFinalText.super.isa;
    v14 = v41.postUpdateOption.rawValue;
    isa = v41.expectedFinalText.super.isa;
  }

  else if (v41.textReplacements._rawValue)
  {
    v15 = v41.postUpdateOption.rawValue;
    v16 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v17 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v3 = isa;
    countAndFlagsBits = v16;
    v27 = v17;
    v14 = v15;
  }

  else
  {
    countAndFlagsBits = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v27 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v14 = v41.postUpdateOption.rawValue;
  }

  v18 = v3;
  sub_21D86D2FC(v18, &v41);
  v20 = v41.textReplacements._rawValue;
  v19 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  v21 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  v22 = v41.postUpdateOption.rawValue;
  v28 = *&v41.paragraphStyleUpdate.expectedCurrentText._object;
  if (rawValue)
  {
    v35 = rawValue;
    v36 = v27;
    v37 = countAndFlagsBits;
    v38 = object;
    v39 = isa;
    v40 = v14;
    appendingUpdatesFrom.value = v41;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v41, &appendingUpdatesFrom);
    sub_21D300E70(v30, paragraphStyleUpdate.paragraphStylesToAdd._rawValue, paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, paragraphStyleUpdate.expectedCurrentText._object, v32);

    sub_21D300E70(v20, v19, v21, v28, *(&v28 + 1));
    sub_21D300E70(rawValue, v27, countAndFlagsBits, object, isa);
    v23 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v24 = *&v41.paragraphStyleUpdate.expectedCurrentText._object;
    v22 = v41.postUpdateOption.rawValue;
    v25 = a3;
    *a3 = *&v41.textReplacements._rawValue;
    *(a3 + 16) = v23;
  }

  else
  {
    sub_21D300E70(v30, paragraphStyleUpdate.paragraphStylesToAdd._rawValue, paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, paragraphStyleUpdate.expectedCurrentText._object, v32);

    v24 = v28;
    v25 = a3;
    *a3 = v20;
    *(a3 + 8) = v19;
    *(a3 + 16) = v21;
  }

  *(v25 + 24) = v24;
  *(v25 + 40) = v22;
}

double TTRParagraphStyleEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v9 = *a2;
  v17 = *(a2 + 3);
  v18 = *(a2 + 1);
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a4) & 1) == 0 || (a3)
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  else
  {
    v19 = v9;
    v20 = v18;
    v21 = v17;
    sub_21D86ACF4(a1, &v19, v22);
    v11 = v22[0];
    v12 = v22[1];
    v13 = v22[2];
    v14 = v22[3];
    v15 = v22[4];
    sub_21D86A9B0(v22, a1, a5);

    sub_21D300E70(v11, v12, v13, v14, v15);
  }

  return result;
}

void sub_21D86ACF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v208 = sub_21DBF4CAC();
  v6 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  *&v209 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = *a2;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v207 = *(a2 + 8);
  v199 = v8;
  v205 = v8;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  sub_21DBF8E0C();
  v12 = [a1 string];
  sub_21DBFA16C();

  v13 = a1;
  v14 = v207;
  v225 = String.rangeOfCharacterComposedSequence(before:)(v207);
  location = v225.value.location;
  length = v225.value.length;
  is_nil = v225.is_nil;

  v17 = 0;
  if (!is_nil)
  {
    v17 = sub_21D871E88(location, v13);
  }

  v201 = location;
  v18 = sub_21D872028(v14, v13);
  LODWORD(v200) = v19;
  if (!String.isOneNewlineCharacterComposedSequence.getter(v10, v11))
  {
    v194 = v18;
    v203 = v17;
    v202 = a3;
    v197 = v13;
    v20 = [v13 string];
    v21 = sub_21DBFA16C();
    v23 = v22;

    if (v9)
    {
      v24 = MEMORY[0x223D42B30](v205, v9);
    }

    else
    {
      v24 = 0;
    }

    v18 = v209;
    v35 = (v14 + v24);
    if (__OFADD__(v14, v24))
    {
      goto LABEL_148;
    }

    sub_21DBF4C8C();
    v196 = v14;
    v204 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v18, v14, v35, 0, v21, v23);
    *&v206 = v36;
    v38 = v37;

    v41 = *(v6 + 8);
    v39 = v6 + 8;
    v40 = v41;
    a3 = v208;
    v41(v18, v208);
    if (v38)
    {
      *aBlock = v10;
      *&aBlock[8] = v11;
      sub_21DBF4BBC();
      sub_21D176F0C();
      v42 = sub_21DBFBB3C();
      v44 = v43;
      v40(v18, a3);

      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      v46 = v202;
      if (v45)
      {
        v47 = v203;
        if (v9)
        {
          v48 = MEMORY[0x223D42B30](v205, v9);
        }

        else
        {
          v48 = 0;
        }

        sub_21D86A648(v197, v196, v48, v46);
      }

      else
      {
        *aBlock = v198;
        *&aBlock[8] = v207;
        *&aBlock[24] = v199;
        sub_21D86F758(v197, aBlock, v202);
      }

      return;
    }

    v198 = v40;
    v205 = v39;
    v218 = MEMORY[0x277D84F90];
    v219 = MEMORY[0x277D84F90];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *&v199 = v25 + 16;
    v49 = sub_21DBFA12C();
    *&aBlock[32] = sub_21D873D08;
    *&aBlock[40] = v25;
    *aBlock = MEMORY[0x277D85DD0];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_21D870A90;
    *&aBlock[24] = &block_descriptor_101;
    v9 = _Block_copy(aBlock);

    [v49 enumerateLinesUsingBlock_];
    _Block_release(v9);

    v50 = MEMORY[0x223D42B30](v10, v11);
    v51 = __OFSUB__(v50, 1);
    v52 = v50 - 1;
    v35 = v202;
    if (v51)
    {
      goto LABEL_150;
    }

    v227 = String.rangeOfNewlineCharacter(atOrBefore:)(v52);
    if (v227.is_nil)
    {

      v9 = v203;
      if (qword_27CE56D70 != -1)
      {
        goto LABEL_151;
      }

      goto LABEL_34;
    }

    v26 = v227.value.location;
    v9 = v227.value.length;
    v193 = v25;
    v57 = MEMORY[0x223D42B30](v10, v11);

    v28 = v57 - (v26 + v9);
    if (__OFSUB__(v57, v26 + v9))
    {
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v18 = &selRef_setAttributedText_;
    v58 = v197;
    v59 = [v197 string];
    sub_21DBFA16C();
    v9 = v60;

    v26 = v58;
    v25 = v204;
    v220.value = 0;
    v220.is_nil = 1;
    v228 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v204, v220);
    *&v207 = v228.value.location;
    v61 = *&v228.is_nil;

    a3 = v196;
    v62 = sub_21D871E88(v196, v26);
    v35 = v199;
    v191 = v28;
    v192 = v61;
    if (v62)
    {

      if (v25 >= 1)
      {
        v51 = __OFSUB__(v25, a3);
        v25 -= a3;
        if (v51)
        {
          goto LABEL_159;
        }

        if (is_nil)
        {
          goto LABEL_42;
        }

        v94 = [v197 string];
        if (!v94)
        {
          sub_21DBFA16C();
          v94 = sub_21DBFA12C();
        }

        v95 = [v94 substringWithRange_];

        v96 = sub_21DBFA16C();
        v98 = v97;

        LOBYTE(v96) = String.isOneNewlineCharacterComposedSequence.getter(v96, v98);

        if ((v96 & 1) != 0 || a3 < 1)
        {
LABEL_42:
          v9 = v197;
          v26 = 0;
          v201 = MEMORY[0x277D84F90];
          v63 = a3;
          v28 = v204;
          a3 = v207;
        }

        else
        {
          sub_21DBF8E0C();
          v201 = sub_21D211FB8(0, 1, 1, MEMORY[0x277D84F90]);
          v100 = *(v201 + 2);
          v99 = *(v201 + 3);
          if (v100 >= v99 >> 1)
          {
            v201 = sub_21D211FB8((v99 > 1), v100 + 1, 1, v201);
          }

          v101 = v201;
          *(v201 + 2) = v100 + 1;
          v102 = &v101[32 * v100];
          *(v102 + 4) = a3;
          v206 = xmmword_21DC2D9D0;
          *(v102 + 40) = xmmword_21DC2D9D0;
          *(v102 + 7) = 0xE100000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_21DC08D00;
          *(v103 + 32) = a3;
          v104 = v103 + 32;
          *(v103 + 40) = v206;
          *(v103 + 56) = 0xE100000000000000;
          v9 = sub_21D47A0F8(v197, v103, MEMORY[0x277D84F90]);
          swift_setDeallocating();
          sub_21D873CB4(v104);
          swift_deallocClassInstance();
          v105 = [v9 string];
          v106 = sub_21DBFA16C();
          v108 = v107;

          v221.value = 0;
          v221.is_nil = 1;
          v229 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(a3, v221);
          v28 = v229.value.location;
          *&v206 = v229.value.length;
          v26 = *&v229.is_nil;

          a3 = v207;
          if ((v26 & 1) == 0)
          {
            v106 = [v9 string];
            v108 = sub_21DBFA16C();
            *&v207 = v25;

            v222.value = 0;
            v222.is_nil = 1;
            v230 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v28, v222);
            a3 = v230.value.location;
            v192 = *&v230.is_nil;
            v25 = v207;
          }

          v109 = sub_21DBFA36C();
          v63 = v196 + v109;
          if (__OFADD__(v196, v109))
          {
            __break(1u);
            goto LABEL_163;
          }
        }

        sub_21D86E610(v9, v63, v25, 0, v194, v200 & 1, &v210);
        *aBlock = v210;
        *&aBlock[16] = v211;
        *&aBlock[32] = v212;
        v216 = v213;
        v217 = v214;
        if (v212)
        {
          v26 = *&aBlock[24];
          v25 = *(&v216 + 1);
          if (*&aBlock[24])
          {
            v207 = *aBlock;
            v28 = *&aBlock[16];
            sub_21DBF8E0C();
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_71;
            }

            goto LABEL_161;
          }

          goto LABEL_74;
        }

        goto LABEL_81;
      }
    }

    else if (v25 >= 1)
    {
      if (__OFSUB__(v25, a3))
      {
        goto LABEL_160;
      }

      sub_21D86A648(v26, a3, v25 - a3, aBlock);
      v74 = v26;
      v26 = *aBlock;
      if (*aBlock)
      {
        v25 = *&aBlock[32];
        v75 = *&aBlock[24];
        v76 = *&aBlock[16];
        v77 = *&aBlock[8];
        v78 = sub_21DBF8E0C();
        sub_21D562524(v78);
        v79 = sub_21DBF8E0C();
        sub_21D56261C(v79);
        v81 = v218;
        v80 = v219;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v9 = sub_21D47A0F8(v74, v81, v80);
        v201 = v81;

        v82 = v77;
        v18 = &selRef_setAttributedText_;
        v83 = v76;
        v35 = v199;
        sub_21D300E70(v26, v82, v83, v75, v25);
        v26 = 0;
      }

      else
      {
        v9 = v74;
        v201 = MEMORY[0x277D84F90];
      }

      v28 = v204;
      a3 = v207;
      goto LABEL_81;
    }

    v9 = v26;
    v201 = MEMORY[0x277D84F90];
    v28 = v25;
    a3 = v207;
    goto LABEL_84;
  }

  if (is_nil)
  {
    goto LABEL_11;
  }

  if (!v17)
  {
    goto LABEL_77;
  }

  if (!v9)
  {
LABEL_11:

    goto LABEL_77;
  }

  v196 = v14;
  v203 = v17;
  v25 = v13;
  v26 = v17;
  v27 = [v25 string];
  v28 = sub_21DBFA16C();
  v30 = v29;

  v31 = sub_21D86F178(v201, v28, v30);

  if ((v31 & 1) == 0)
  {
    v64 = MEMORY[0x223D42B30](v205, v9);
    v65 = v196 + v64;
    if (__OFADD__(v196, v64))
    {
      goto LABEL_156;
    }

    v66 = v26;
    sub_21D86E610(v25, v65, 0, v203, v18, v200 & 1, aBlock);

    v67 = *&aBlock[32];
    if (*&aBlock[32])
    {
      v68 = v216;
      v69 = *&aBlock[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F30);
      v70 = swift_allocObject();
      v71 = *&aBlock[16];
      v70[2] = *aBlock;
      v70[3] = v71;
      v70[1] = xmmword_21DC08D00;
      *&v210 = v70;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F38);
      sub_21D873D4C();
      v72 = sub_21DBFA41C();

      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v73 = *(&v68 + 1);
      sub_21D0CF7E0(aBlock, &qword_27CE62F28);
      *a3 = v72;
      *(a3 + 8) = v67;
      *(a3 + 16) = v69;
      *(a3 + 24) = v68;
      *(a3 + 32) = v73;
      *(a3 + 40) = 0;
      return;
    }

LABEL_77:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v32 = v25;
  v33 = [v25 string];
  if (!v33)
  {
    sub_21DBFA16C();
    v33 = sub_21DBFA12C();
  }

  sub_21DBFA16C();
  v34 = v196;
  if (v196 <= 0 || v34 >= MEMORY[0x223D42B30]())
  {
  }

  else
  {
    v226 = String.rangeOfCharacterComposedSequence(before:)([v33 rangeOfComposedCharacterSequenceAtIndex_]);
    if (v226.is_nil)
    {
    }

    else
    {
      v233 = String.rangeOfNewlineCharacter(atOrBefore:)(v226.value.location);
      v84 = v233.value.location;
      v190 = v233.is_nil;

      if (!v190)
      {
        v28 = 0xE100000000000000;
        v25 = 10;
        goto LABEL_56;
      }
    }
  }

  v84 = 0;
  v25 = 0;
  v28 = 0xE000000000000000;
LABEL_56:
  v85 = MEMORY[0x223D42B30](v205, v9);
  v86 = v196 + v85;
  if (__OFADD__(v196, v85))
  {
    goto LABEL_157;
  }

  v9 = v86 - v84;
  if (!__OFSUB__(v86, v84))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_21DC08D00;
    *(v87 + 32) = v84;
    *(v87 + 40) = v9;
    *(v87 + 48) = v25;
    *(v87 + 56) = v28;
    sub_21DBF8E0C();
    v88 = MEMORY[0x277D84F90];
    v89 = sub_21D47A0F8(v32, v87, MEMORY[0x277D84F90]);

    v90 = [v89 string];
    v91 = sub_21DBFA16C();
    v93 = v92;

    *a3 = v87;
    *(a3 + 8) = v88;
    *(a3 + 16) = v91;
    *(a3 + 24) = v93;
    *(a3 + 32) = v89;
    *(a3 + 40) = 0;
    return;
  }

  while (1)
  {
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
LABEL_71:
    v111 = *(v201 + 2);
    v110 = *(v201 + 3);
    if (v111 >= v110 >> 1)
    {
      v201 = sub_21D211FB8((v110 > 1), v111 + 1, 1, v201);
    }

    v112 = v201;
    *(v201 + 2) = v111 + 1;
    v113 = &v112[32 * v111];
    *(v113 + 2) = v207;
    *(v113 + 6) = v28;
    *(v113 + 7) = v26;
    v35 = v199;
LABEL_74:
    v114 = sub_21DBF8E0C();
    sub_21D562524(v114);

    v9 = v25;
    v115 = [v9 v18[155]];
    sub_21DBFA16C();

    v223.value = 0;
    v223.is_nil = 1;
    v231 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v196, v223);
    v28 = v231.value.location;
    *&v206 = v231.value.length;
    LOBYTE(v115) = v231.is_nil;

    if (v115)
    {
      sub_21D0CF7E0(aBlock, &qword_27CE62F28);
      v26 = 1;
    }

    else
    {
      v116 = [v9 v18[155]];
      sub_21DBFA16C();

      v224.value = 0;
      v224.is_nil = 1;
      v232 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v28, v224);
      a3 = v232.value.location;
      v192 = *&v232.is_nil;
      sub_21D0CF7E0(aBlock, &qword_27CE62F28);

      v26 = 0;
    }

LABEL_81:
    swift_beginAccess();
    if (!__OFSUB__(*v35, 1))
    {
      break;
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
  }

  --*v35;
  if (v26)
  {
    v26 = 0;
    v117 = 1;
    goto LABEL_86;
  }

LABEL_84:
  if (__OFSUB__(v28, 1))
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v26 = sub_21D871E88(v28 - 1, v9);
  v117 = 0;
LABEL_86:
  swift_beginAccess();
  v118 = *v35;
  if (*v35 < 1 || (v192 & 1) != 0)
  {
    if (v117)
    {
      goto LABEL_143;
    }

LABEL_133:
    v171 = v28;
    v172 = v191;
    if (v191 < 1)
    {
      goto LABEL_143;
    }

    v173 = sub_21D872028(v171, v9);
    if (!v26)
    {
      goto LABEL_143;
    }

    v175 = v173;
    v176 = v174;
    v108 = v26;
    sub_21D86E610(v9, v206 + v171, v172, v26, v175, v176 & 1, aBlock);
    if (!*&aBlock[32])
    {

      goto LABEL_143;
    }

    v106 = *&aBlock[24];
    v35 = *(&v216 + 1);
    if (!*&aBlock[24])
    {
LABEL_141:
      v181 = sub_21DBF8E0C();
      sub_21D562524(v181);

      v9 = v35;
      sub_21D0CF7E0(aBlock, &qword_27CE62F28);
LABEL_143:
      v182 = v219;
      v183 = v201;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v184 = sub_21D47A0F8(v197, v183, v182);

      v185 = [v184 v18[155]];
      v186 = sub_21DBFA16C();
      v188 = v187;

      v189 = v202;
      *v202 = v183;
      v189[1] = v182;
      v189[2] = v186;
      v189[3] = v188;
      v189[4] = v184;
      v189[5] = 0;
      return;
    }

    v209 = *aBlock;
    v18 = *&aBlock[16];
    sub_21DBF8E0C();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v178 = *(v201 + 2);
      v177 = *(v201 + 3);
      if (v178 >= v177 >> 1)
      {
        v201 = sub_21D211FB8((v177 > 1), v178 + 1, 1, v201);
      }

      v179 = v201;
      *(v201 + 2) = v178 + 1;
      v180 = &v179[32 * v178];
      *(v180 + 2) = v209;
      *(v180 + 6) = v18;
      *(v180 + 7) = v106;
      v18 = &selRef_setAttributedText_;
      goto LABEL_141;
    }

LABEL_163:
    v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
    goto LABEL_138;
  }

  v119 = v26;
  while (1)
  {
    if (v117)
    {
      v26 = v119;
      goto LABEL_143;
    }

    v120 = v206 + v28;
    if (__OFSUB__(a3, v206 + v28))
    {
      break;
    }

    *v35 = v118 - 1;
    v204 = v28;
    v121 = sub_21D872028(v28, v9);
    sub_21D86E610(v9, v120, a3 - v120, v119, v121, v122 & 1, &v210);
    *aBlock = v210;
    *&aBlock[16] = v211;
    *&aBlock[32] = v212;
    v216 = v213;
    v217 = v214;
    *&v207 = v119;
    if (v212)
    {
      v123 = *&aBlock[24];
      v124 = *(&v216 + 1);
      v125 = v217;
      if (*&aBlock[24])
      {
        v200 = *aBlock;
        v126 = *&aBlock[16];
        sub_21DBF8E0C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
        }

        v128 = *(v201 + 2);
        v127 = *(v201 + 3);
        if (v128 >= v127 >> 1)
        {
          v201 = sub_21D211FB8((v127 > 1), v128 + 1, 1, v201);
        }

        v129 = v201;
        *(v201 + 2) = v128 + 1;
        v130 = &v129[32 * v128];
        *(v130 + 2) = v200;
        *(v130 + 6) = v126;
        *(v130 + 7) = v123;
      }

      v131 = sub_21DBF8E0C();
      sub_21D562524(v131);

      v9 = v124;
      v18 = &selRef_setAttributedText_;
      v132 = [v9 string];
      v133 = sub_21DBFA16C();
      v135 = v134;

      a3 = v209;
      sub_21DBF4C8C();
      v136 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(a3, *(&v125 + 1) + v125, 0, 1, v133, v135);
      v138 = v137;
      v140 = v139;

      sub_21D0CF7E0(aBlock, &qword_27CE62F28);
      v141 = a3;
    }

    else
    {
      v142 = [v9 v18[155]];
      v143 = sub_21DBFA16C();
      v145 = v144;

      v146 = v209;
      sub_21DBF4C8C();
      v136 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v146, a3, 0, 1, v143, v145);
      v138 = v147;
      v140 = v148;

      v141 = v146;
    }

    v198(v141, v208);
    if (v140)
    {
      v26 = v119;
      v28 = v204;
      goto LABEL_133;
    }

    v25 = v9;
    v9 = v136;
    *&v206 = v138;
    v149 = [v25 v18[155]];
    v150 = v149;
    v26 = v149;
    if (!v149)
    {
      sub_21DBFA16C();
      v26 = sub_21DBFA12C();

      sub_21DBFA16C();
      v150 = sub_21DBFA12C();
    }

    v151 = sub_21DBFA16C();
    v153 = v152;
    if (v9 < 0)
    {
      goto LABEL_110;
    }

    v28 = v151;
    v35 = (HIBYTE(v152) & 0xF);
    if ((v152 & 0x1000000000000000) != 0)
    {
      v170 = sub_21DBFA35C();
      v155 = v170 - 1;
      if (__OFSUB__(v170, 1))
      {
        goto LABEL_149;
      }
    }

    else
    {
      v154 = sub_21DBFA36C();
      v155 = v154 - 1;
      if (__OFSUB__(v154, 1))
      {
        goto LABEL_149;
      }
    }

    if (v9 >= v155)
    {
LABEL_110:
      v160 = v149;

LABEL_117:

      a3 = 0;
      v165 = 1;
      goto LABEL_118;
    }

    v156 = v149;
    v157 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v157 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v158 = v157;
    if ((v153 & 0x1000000000000000) != 0)
    {
      v159 = sub_21DBFA35C();
    }

    else
    {
      v159 = sub_21DBFA36C();
    }

    if (__OFSUB__(v159, 1))
    {
      goto LABEL_153;
    }

    if (v158 >= v159 - 1)
    {
LABEL_116:

      goto LABEL_117;
    }

    v161 = [v150 rangeOfComposedCharacterSequenceAtIndex_];
    v163 = v162;
    if ((v153 & 0x1000000000000000) != 0)
    {
      v164 = sub_21DBFA35C();
    }

    else
    {
      v164 = sub_21DBFA36C();
    }

    if (v161 + v163 >= v164)
    {

      a3 = 0;
      v165 = 1;
    }

    else
    {
      v167 = [v150 rangeOfComposedCharacterSequenceAtIndex_];

      v168 = v209;
      sub_21DBF4C8C();
      a3 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v168, v167, 0, 1, v28, v153);
      v165 = v169;

      v198(v168, v208);
    }

    v18 = &selRef_setAttributedText_;
LABEL_118:
    v35 = v199;
    v166 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      goto LABEL_147;
    }

    v28 = v9;
    v9 = v25;
    v26 = sub_21D871E88(v166, v25);

    swift_beginAccess();
    v117 = 0;
    v118 = *v35;
    v119 = v26;
    if ((*v35 < 1) | v165 & 1)
    {
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_34:
  v53 = sub_21DBF84BC();
  __swift_project_value_buffer(v53, qword_27CE62E78);
  v54 = sub_21DBF84AC();
  v55 = sub_21DBFAEBC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_21D0C9000, v54, v55, "TTRParagraphStyleEditingPresenter: Unexpectedly did not find a last newline range after processing a first newline range", v56, 2u);
    MEMORY[0x223D46520](v56, -1, -1);
  }

  v35[1] = 0u;
  v35[2] = 0u;
  *v35 = 0u;
}

char *TTRParagraphStyleEditingPresenter.request(toggleListStyle:in:selectedRange:editingSession:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  if ((TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a6) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D872630(a1, a2, a3, a4);
  v13 = v12;
  v15 = v14;
  sub_21D86C6D0(v14, v25);
  v16 = v25[0];
  if (v25[0])
  {
    v17 = v27;
    v24 = v26;
    v19 = v25[1];
    v18 = v25[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_21D2121E4(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_21D2121E4((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[48 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v19;
    *(v22 + 6) = v18;
    *(v22 + 56) = v24;
    *(v22 + 9) = v17;
  }

  else
  {
  }

  return v13;
}

void sub_21D86C6D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D86C7F8(a1, &v26);
  rawValue = v26.textReplacements._rawValue;
  v4 = v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  countAndFlagsBits = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  object = v26.paragraphStyleUpdate.expectedCurrentText._object;
  isa = v26.expectedFinalText.super.isa;
  v9 = v26.postUpdateOption.rawValue;
  if (v26.textReplacements._rawValue)
  {
    v10 = v26.expectedFinalText.super.isa;
  }

  else
  {
    v10 = a1;
  }

  sub_21D86D2FC(v10, &v26);
  v11 = v26.textReplacements._rawValue;
  if (rawValue)
  {
    v20 = rawValue;
    v21 = v4;
    v22 = countAndFlagsBits;
    v23 = object;
    v24 = isa;
    v25 = v9;
    appendingUpdatesFrom.value = v26;
    v16 = v4;
    v17 = countAndFlagsBits;
    v12 = v26.expectedFinalText.super.isa;
    v13 = v26.paragraphStyleUpdate.expectedCurrentText._object;
    v18 = object;
    v14 = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v15 = v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v26, &appendingUpdatesFrom);

    sub_21D300E70(v11, v15, v14, v13, v12);
    sub_21D300E70(rawValue, v16, v17, v18, isa);
    countAndFlagsBits = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    object = v26.paragraphStyleUpdate.expectedCurrentText._object;
    isa = v26.expectedFinalText.super.isa;
    v9 = v26.postUpdateOption.rawValue;
    *a2 = *&v26.textReplacements._rawValue;
  }

  else
  {
    sub_21D300E70(v26.textReplacements._rawValue, v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue, v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, v26.paragraphStyleUpdate.expectedCurrentText._object, v26.expectedFinalText.super.isa);

    *a2 = 0;
    *(a2 + 8) = v4;
  }

  *(a2 + 16) = countAndFlagsBits;
  *(a2 + 24) = object;
  *(a2 + 32) = isa;
  *(a2 + 40) = v9;
}

uint64_t sub_21D86C7F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef_setAttributedText_;
  v10 = [a1 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  sub_21DBF4C8C();
  v14 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v8, 0, 0, 1, v11, v13);
  LOBYTE(v11) = v15;

  v17 = *(v5 + 8);
  v16 = (v5 + 8);
  v98 = v8;
  v97 = v17;
  v17(v8, v4);
  if (v11)
  {
    v18 = [a1 string];
    v19 = sub_21DBFA16C();
    v21 = v20;

    v14 = MEMORY[0x223D42B30](v19, v21);
  }

  v91 = a1;
  sub_21D749C9C(0, 0, 2u);
  v22 = sub_21D2120C4(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v24 + 1;
  v89 = a2;
  if (v24 >= v23 >> 1)
  {
LABEL_67:
    v22 = sub_21D2120C4((v23 > 1), v25, 1, v22);
  }

  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v22 + 2) = v25;
  v28 = &v22[40 * v24];
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v28[48] = 2;
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  v94 = v26;
  *(v26 + 16) = v22;
  v100 = (v26 + 16);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
  inited = swift_initStackObject();
  v95 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 2;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  sub_21D749C9C(0, 0, 2u);
  v30 = v91;
  v22 = sub_21D47A0F8(v91, MEMORY[0x277D84F90], inited);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  v93 = v27;
  *(v27 + 16) = v22;
  v99 = (v27 + 16);
  swift_beginAccess();
  v25 = 0;
  v88 = *MEMORY[0x277D44C88];
  v31 = v14;
  v92 = v16;
  while (1)
  {
    v32 = [v22 v9[155]];
    sub_21DBFA16C();
    v34 = v33;

    if ((v34 & 0x1000000000000000) != 0)
    {
      v35 = sub_21DBFA35C();
    }

    else
    {
      v35 = sub_21DBFA36C();
    }

    v36 = v35;

    if (v25 < v36)
    {
      v37 = sub_21D871E88(v25, v22);
      if (v37)
      {
        v38 = v37;
        v39 = [v37 remParagraphStyle];
        if (v39 <= 1)
        {
          if (v39 != 1)
          {
            goto LABEL_24;
          }

          if (qword_27CE56D90 != -1)
          {
            swift_once();
          }

          v40 = v4;
          v41 = qword_27CE62ED8;
          goto LABEL_22;
        }

        if (v39 == 2)
        {
          if (qword_27CE56D88 != -1)
          {
            swift_once();
          }

          v40 = v4;
          v41 = qword_27CE62EC0;
LABEL_22:
          v42 = __swift_project_value_buffer(v40, v41);
          if ((sub_21D872168(v25, v22, v42) & 1) == 0)
          {
            goto LABEL_24;
          }

          v104 = v38;
          LOBYTE(v105) = 0;
          goto LABEL_32;
        }

        if (v39 != 3 || (sub_21D872400(v25, v14, v22) & 1) == 0)
        {
LABEL_24:
          sub_21D86E264(v25, v14, v94, v93);

          goto LABEL_33;
        }

        if ([v91 attribute:v88 atIndex:v25 effectiveRange:0])
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          v103 = 0u;
          v102 = 0u;
        }

        v105 = v103;
        v104 = v102;
        if (*(&v103 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = v101;
LABEL_31:
            *&v104 = v38;
            *(&v104 + 1) = v43;
            LOBYTE(v105) = 1;
LABEL_32:
            sub_21D86E42C(&v104, v25, v14, v94, v93);
            sub_21D228468(v104, *(&v104 + 1), v105);
            goto LABEL_33;
          }
        }

        else
        {
          sub_21D0CF7E0(&v104, &qword_27CE5C690);
        }

        v43 = 1;
        goto LABEL_31;
      }
    }

LABEL_33:
    v44 = *v99;
    v45 = [*v99 v9[155]];
    v46 = sub_21DBFA16C();
    v48 = v47;

    v49 = v98;
    sub_21DBF4C8C();
    v14 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v49, v31, 0, 1, v46, v48);
    v25 = v50;
    LOBYTE(v46) = v51;

    v97(v49, v4);
    if (v46)
    {
      break;
    }

    v52 = v100;
    swift_beginAccess();
    v53 = *v52;
    sub_21D749C9C(0, 0, 2u);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_21D2120C4(0, *(v53 + 2) + 1, 1, v53);
    }

    v55 = *(v53 + 2);
    v54 = *(v53 + 3);
    if (v55 >= v54 >> 1)
    {
      v53 = sub_21D2120C4((v54 > 1), v55 + 1, 1, v53);
    }

    *(v53 + 2) = v55 + 1;
    v56 = &v53[40 * v55];
    *(v56 + 4) = 0;
    *(v56 + 5) = 0;
    v56[48] = 2;
    *(v56 + 7) = v14;
    *(v56 + 8) = v25;
    *v100 = v53;
    swift_endAccess();
    v24 = swift_initStackObject();
    *(v24 + 16) = v95;
    *(v24 + 40) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 2;
    *(v24 + 56) = v14;
    *(v24 + 64) = v25;
    sub_21D749C9C(0, 0, 2u);
    v22 = sub_21D47A0F8(v44, MEMORY[0x277D84F90], v24);
    swift_setDeallocating();
    sub_21D873C60(v24 + 32);
    *v99 = v22;

    v57 = [v22 v9[155]];
    if (!v57)
    {
      sub_21DBFA16C();
      v24 = v58;
      v57 = sub_21DBFA12C();
    }

    v59 = sub_21DBFA16C();
    v61 = v60;
    if (v14 < 0)
    {
      goto LABEL_51;
    }

    v62 = v59;
    if ((v60 & 0x1000000000000000) != 0)
    {
      v63 = sub_21DBFA35C();
    }

    else
    {
      v63 = sub_21DBFA36C();
    }

    v23 = v63 - 1;
    if (__OFSUB__(v63, 1))
    {
      goto LABEL_65;
    }

    if (v14 >= v23)
    {
LABEL_51:

LABEL_54:
      v75 = [v22 v9[155]];
      sub_21DBFA16C();
      v24 = v76;

      if ((v24 & 0x1000000000000000) != 0)
      {
        v77 = sub_21DBFA35C();
      }

      else
      {
        v77 = sub_21DBFA36C();
      }

      v31 = v77;

      goto LABEL_57;
    }

    v16 = v9;
    v64 = [v57 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    v9 = v64;
    v65 = MEMORY[0x223D42B30](v62, v61);
    v23 = v65 - 1;
    if (__OFSUB__(v65, 1))
    {
      goto LABEL_66;
    }

    if (v9 >= v23)
    {
LABEL_52:

LABEL_53:
      v9 = v16;
      v16 = v92;
      goto LABEL_54;
    }

    v66 = sub_21DBFA12C();
    v67 = [v66 rangeOfComposedCharacterSequenceAtIndex_];
    v69 = &v67[v68];
    if (&v67[v68] >= MEMORY[0x223D42B30](v62, v61))
    {

      goto LABEL_53;
    }

    v70 = [v66 rangeOfComposedCharacterSequenceAtIndex_];

    v24 = v98;
    sub_21DBF4C8C();
    v31 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v24, v70, 0, 1, v62, v61);
    v90 = v71;

    v72 = v4;
    v73 = v4;
    v74 = v92;
    v97(v24, v73);
    v9 = v16;
    v16 = v74;
    v4 = v72;
    if (v90)
    {
      goto LABEL_54;
    }

LABEL_57:
    sub_21D228468(0, 0, 2u);
    v25 += v14;
    v14 = v31 - v25;
    if (__OFSUB__(v31, v25))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  swift_beginAccess();
  v78 = *(v94 + 16);
  sub_21DBF8E0C();
  v79 = MEMORY[0x277D84F90];
  v80 = sub_21D47A0F8(v91, MEMORY[0x277D84F90], v78);

  sub_21DBF8E0C();
  v81 = [v80 v9[155]];
  v82 = sub_21DBFA16C();
  v84 = v83;

  sub_21D228468(0, 0, 2u);

  v86 = v89;
  *v89 = v79;
  v86[1] = v78;
  v86[2] = v82;
  v86[3] = v84;
  v86[4] = v80;
  v86[5] = 0;
  return result;
}

void sub_21D86D2FC(void *a1@<X0>, char **a2@<X8>)
{
  v113 = a2;
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  sub_21DBF4C8C();
  v12 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v7, 0, 0, 1, v9, v11);
  LOBYTE(v8) = v13;

  v14 = *(v4 + 8);
  v118 = v7;
  v119 = v4 + 8;
  v120 = v3;
  v117 = v14;
  v14(v7, v3);
  if (v8)
  {
    v15 = [a1 string];
    v16 = sub_21DBFA16C();
    v18 = v17;

    v12 = MEMORY[0x223D42B30](v16, v18);
  }

  v19 = a1;
  v20 = 0;
  v111 = xmmword_21DC08D00;
  v114 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  v112 = v19;
  v21 = v12;
  v116 = 1;
  do
  {
    v22 = [v19 string];
    sub_21DBFA16C();
    v24 = v23;

    if ((v24 & 0x1000000000000000) != 0)
    {
      v25 = sub_21DBFA35C();
    }

    else
    {
      v25 = sub_21DBFA36C();
    }

    v26 = v25;

    if (v20 >= v26)
    {
      goto LABEL_13;
    }

    v27 = sub_21D871E88(v20, v19);
    if (!v27)
    {
      goto LABEL_13;
    }

    v28 = v27;
    if ([v27 remParagraphStyle] != 3)
    {

LABEL_13:
      v116 = 1;
      goto LABEL_14;
    }

    v121 = v19;
    v29 = [v19 string];
    v30 = sub_21DBFA16C();
    v32 = v31;

    v33 = v118;
    sub_21DBF4C4C();
    v34 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v33, v20, v12 + v20, 0, v30, v32);
    LOBYTE(v29) = v35;

    v117(v33, v120);
    if ((v29 & 1) != 0 || v34 == v20)
    {

      v116 = 1;
      v19 = v121;
    }

    else
    {
      v73 = v116;
      v122 = v116;
      v74 = sub_21DBFC5BC();
      v76 = v34 - v20;
      if (__OFSUB__(v34, v20))
      {
        goto LABEL_64;
      }

      if (__OFADD__(v73, 1))
      {
        goto LABEL_65;
      }

      v77 = v74;
      v78 = v75;
      v110 = v73 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
      inited = swift_initStackObject();
      *(inited + 16) = v111;
      *(inited + 32) = v20;
      v104 = inited + 32;
      v106 = v76;
      *(inited + 40) = v76;
      *(inited + 48) = v77;
      v108 = v77;
      *(inited + 56) = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8);
      v80 = v78;
      v81 = swift_initStackObject();
      *(v81 + 16) = v111;
      *(v81 + 32) = v28;
      *(v81 + 40) = v73;
      *(v81 + 48) = 1;
      *(v81 + 56) = v20;
      *(v81 + 64) = v12;
      v109 = v28;
      v107 = v80;
      sub_21DBF8E0C();
      sub_21D749C9C(v28, v73, 1u);
      v82 = v121;
      v105 = sub_21D47A0F8(v121, inited, v81);

      swift_setDeallocating();
      sub_21D873C60(v81 + 32);
      swift_setDeallocating();
      sub_21D873CB4(v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_21D211FB8(0, *(v115 + 2) + 1, 1, v115);
      }

      v83 = v114;
      v85 = *(v115 + 2);
      v84 = *(v115 + 3);
      if (v85 >= v84 >> 1)
      {
        v115 = sub_21D211FB8((v84 > 1), v85 + 1, 1, v115);
      }

      v86 = v115;
      *(v115 + 2) = v85 + 1;
      v87 = &v86[32 * v85];
      v88 = v106;
      *(v87 + 4) = v20;
      *(v87 + 5) = v88;
      v89 = v107;
      *(v87 + 6) = v108;
      *(v87 + 7) = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_21D2120C4(0, *(v83 + 2) + 1, 1, v83);
      }

      v91 = *(v83 + 2);
      v90 = *(v83 + 3);
      if (v91 >= v90 >> 1)
      {
        v83 = sub_21D2120C4((v90 > 1), v91 + 1, 1, v83);
      }

      *(v83 + 2) = v91 + 1;
      v114 = v83;
      v92 = &v83[40 * v91];
      v93 = v116;
      *(v92 + 4) = v28;
      *(v92 + 5) = v93;
      v92[48] = 1;
      *(v92 + 7) = v20;
      *(v92 + 8) = v12;
      v116 = v110;
      v19 = v105;
    }

LABEL_14:
    v36 = [v19 string];
    v37 = sub_21DBFA16C();
    v39 = v38;

    v40 = v118;
    sub_21DBF4C8C();
    v41 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v40, v21, 0, 1, v37, v39);
    v43 = v42;
    v45 = v44;

    v117(v40, v120);
    if (v45)
    {
      v95 = v115;
      sub_21DBF8E0C();
      v96 = v114;
      sub_21DBF8E0C();
      v97 = sub_21D47A0F8(v112, v95, v96);

      v98 = [v97 string];
      v99 = sub_21DBFA16C();
      v101 = v100;

      v102 = v113;
      *v113 = v95;
      v102[1] = v96;
      v102[2] = v99;
      v102[3] = v101;
      v102[4] = v97;
      v102[5] = 0;
      return;
    }

    v46 = [v19 string];
    v47 = v46;
    v48 = v46;
    if (!v46)
    {
      sub_21DBFA16C();
      v48 = sub_21DBFA12C();

      sub_21DBFA16C();
      v47 = sub_21DBFA12C();
    }

    v49 = sub_21DBFA16C();
    v51 = v50;
    if (v41 < 0)
    {
      v59 = v46;
      v60 = v48;
      goto LABEL_33;
    }

    v52 = v49;
    v121 = v19;
    if ((v50 & 0x1000000000000000) != 0)
    {
      v94 = sub_21DBFA35C();
      v54 = v94 - 1;
      if (__OFSUB__(v94, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v53 = sub_21DBFA36C();
      v54 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_62;
      }
    }

    v55 = v46;
    if (v41 >= v54)
    {
      v60 = v48;
LABEL_32:
      v19 = v121;
      goto LABEL_33;
    }

    v56 = [v48 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v57 = v56;
    if ((v51 & 0x1000000000000000) != 0)
    {
      v58 = sub_21DBFA35C();
    }

    else
    {
      v58 = sub_21DBFA36C();
    }

    if (__OFSUB__(v58, 1))
    {
      goto LABEL_63;
    }

    if (v57 >= v58 - 1)
    {
LABEL_31:
      v60 = v47;
      v47 = v48;
      goto LABEL_32;
    }

    v61 = [v47 rangeOfComposedCharacterSequenceAtIndex_];
    v63 = v62;
    if ((v51 & 0x1000000000000000) != 0)
    {
      v64 = sub_21DBFA35C();
    }

    else
    {
      v64 = sub_21DBFA36C();
    }

    v19 = v121;
    if (v61 + v63 < v64)
    {
      v69 = [v47 rangeOfComposedCharacterSequenceAtIndex_];

      v70 = v118;
      sub_21DBF4C8C();
      v21 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v70, v69, 0, 1, v52, v51);
      v72 = v71;

      v117(v70, v120);
      if ((v72 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v60 = v47;
    v47 = v48;
LABEL_33:

LABEL_34:
    v65 = [v19 string];
    sub_21DBFA16C();
    v67 = v66;

    if ((v67 & 0x1000000000000000) != 0)
    {
      v68 = sub_21DBFA35C();
    }

    else
    {
      v68 = sub_21DBFA36C();
    }

    v21 = v68;

LABEL_37:
    v20 = v43 + v41;
    v12 = v21 - v20;
  }

  while (!__OFSUB__(v21, v20));
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}