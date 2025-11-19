void *sub_21D6EA04C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_21D6EA07C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D6EA0EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE606E0);

  return sub_21D6E8A60(a1);
}

uint64_t sub_21D6EA170()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE606F8);
  v1 = __swift_project_value_buffer(v0, qword_27CE606F8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D6EA288(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D6EA2F4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t TTRShowFlaggedDataModelSource.__allocating_init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store) = a1;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted) = a2;
  v10 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v11 = sub_21DBF714C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9 + v10, a5, v11);
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(2, 2u, v15, v16);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v9 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9 + v19, a3, v20);
  *(v9 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v9 + 16) = a4 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v24 = 10;

  sub_21D6EB7D8(&v24);

  (*(v12 + 8))(a5, v11);
  (*(v21 + 8))(a3, v20);
  return v9;
}

uint64_t TTRShowFlaggedDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:fetchSubtasks:)(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store) = a1;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted) = a2;
  v10 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v11 = sub_21DBF714C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5 + v10, a5, v11);
  v13 = qword_280D1AA10;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v16 = swift_allocObject();
  v17 = sub_21D193548(2, 2u, v15, v16);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance) = v17;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  *(v5 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_tipKitContextInstance) = v18;
  v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v20 = sub_21DBF70DC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v5 + v19, a3, v20);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v5 + 16) = a4 & 1;
  swift_beginAccess();
  v17[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
  swift_unknownObjectWeakAssign();
  v24 = 10;

  sub_21D6EB7D8(&v24);

  (*(v12 + 8))(a5, v11);
  (*(v21 + 8))(a3, v20);
  return v5;
}

id sub_21D6EA98C@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v3 = type metadata accessor for TTRTipKitDataModelSourceBase();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = &protocol witness table for TTRTipKitDataModelSourceBase;
  *a1 = v4;

  return v6;
}

uint64_t sub_21D6EAA04@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF71BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v33 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance);
  if (*(v15 + 40))
  {
    v16 = *MEMORY[0x277D45468];
    v17 = *(v6 + 104);
    v17(v10, v16, v5, v12);
    v18 = v14;
    v19 = v16;
  }

  else
  {
    swift_beginAccess();
    *v10 = *(v15 + 48);
    v17 = *(v6 + 104);
    (v17)(v10, *MEMORY[0x277D45480], v5);
    v34 = v1;
    v35 = v2;
    v20 = v3;
    v21 = *(v6 + 8);
    sub_21DBF8E0C();
    v21(v10, v5);
    v3 = v20;
    v1 = v34;
    v2 = v35;
    v19 = *MEMORY[0x277D45470];
    v18 = v14;
  }

  (v17)(v18, v19, v5);
  v22 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v23 = v36;
  (*(v6 + 16))(v36, v14, v5);
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v25 = v1 + v24;
  v26 = v38;
  (*(v3 + 16))(v38, v25, v2);
  v27 = type metadata accessor for TTRShowFlaggedPrintingDataModelSource(0);
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  (*(v6 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted, v23, v5);
  (*(v3 + 32))(v28 + OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle, v26, v2);
  v29 = v37;
  v37[3] = v27;
  v29[4] = &protocol witness table for TTRShowFlaggedPrintingDataModelSource;
  *v29 = v28;
  v30 = *(v6 + 8);
  v31 = v22;
  return v30(v14, v5);
}

uint64_t TTRShowFlaggedPrintingDataModelSource.__allocating_init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D6EAE50@<X0>(_OWORD *a1@<X8>)
{
  v81 = a1;
  v67 = sub_21DBF773C();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60710);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v59 - v4;
  v68 = sub_21DBFB1AC();
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - v7;
  v74 = sub_21DBF706C();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - v10;
  v11 = sub_21DBF734C();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v82 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60718);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v73 = &v59 - v20;
  v80 = sub_21DBF71BC();
  v21 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v23 = (&v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_21D8526E8(v23);
  v25 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v26 = *(v82 + 16);
  v27 = v1 + v25;
  v28 = v75;
  v29 = v76;
  v78 = v14;
  v26(v16, v27, v14);
  (*(v28 + 104))(v13, *MEMORY[0x277D45500], v29);
  sub_21DBF70EC();
  v59 = v24;
  v60 = v23;
  v61 = v21;
  v32 = v28;
  v33 = v69;
  v34 = v71;
  (*(v32 + 8))(v13, v29);
  (*(v82 + 8))(v16, v78);
  v35 = v77;
  v36 = v79;
  (*(v77 + 56))(v19, 0, 1, v79);
  v37 = v73;
  (*(v35 + 32))(v73, v19, v36);
  v38 = v70;
  sub_21DBF76DC();
  v39 = sub_21DBF703C();
  v40 = *(v72 + 8);
  v40(v38, v74);
  if (v39)
  {
    v41 = *MEMORY[0x277D44BA0];
    v42 = v34;
    sub_21DBFB1DC();
    v43 = sub_21DBFB1EC();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) != 1)
    {
      sub_21DBFB1CC();
      (*(v44 + 8))(v42, v43);
      v45 = v63;
      v46 = v64;
      (*(v63 + 32))(v64, v33, v68);
      v47 = v62;
      v48 = sub_21DBF76DC();
      v49 = v65;
      MEMORY[0x223D3F810](v48);
      v40(v47, v74);
      v82 = sub_21DBF718C();
      (*(v66 + 8))(v49, v67);
      v50 = v39;
      v51 = sub_21DBFB18C();
      v52 = v36;
      v53 = sub_21DBFB19C();
      v54 = sub_21DBFB17C();
      v56 = v55;

      (*(v45 + 8))(v46, v68);
      (*(v35 + 8))(v73, v52);
      result = (*(v61 + 8))(v60, v80);
      v57 = v81;
      v58 = v59;
      *v81 = v82;
      *(v57 + 1) = v58;
      *(v57 + 2) = v39;
      *(v57 + 24) = 0;
      *(v57 + 4) = v51;
      *(v57 + 20) = v53;
      *(v57 + 6) = v54;
      *(v57 + 7) = v56;
      return result;
    }

    (*(v35 + 8))(v37, v36);
    (*(v61 + 8))(v60, v80);
    result = sub_21D0CF7E0(v42, &qword_27CE60710);
  }

  else
  {

    (*(v35 + 8))(v37, v36);
    result = (*(v61 + 8))(v60, v80);
  }

  v31 = v81;
  v81[2] = 0u;
  v31[3] = 0u;
  *v31 = 0u;
  v31[1] = 0u;
  return result;
}

uint64_t sub_21D6EB7D8(unsigned __int8 *a1)
{
  v2 = v1;
  v79 = sub_21DBF714C();
  v72 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_21DBF70DC();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_21DBF71BC();
  v74 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  v80 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v66[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v66[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v66[-v16];
  v18 = sub_21DBF773C();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_21DBF706C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v88 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = *a1;
  v22 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v85 = v22;
  v23 = *(v2 + v22);
  v84 = v20;
  if (v23)
  {
    v24 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = v19;
      v26 = v11;
      v27 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v89[0] = v83;
      v29 = *(v27 + 8);
      v11 = v26;
      v19 = v25;
      v20 = v84;
      (*(v29 + 16))(v89, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v30 = sub_21DBF72DC();
  (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v17, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  sub_21DBF704C();
  v31 = *(v2 + v85);
  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = *(*v31 + 104);
  swift_beginAccess();
  sub_21D0D3954(v31 + v32, v14, &qword_27CE5C360);
  if ((*(v80 + 6))(v14, 1, v7) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5C360);
LABEL_7:
    v33 = 0;
    goto LABEL_9;
  }

  v33 = *&v14[*(v7 + 48)];
  (*(v20 + 8))(v14, v19);
LABEL_9:
  v75 = v7;
  v34 = *(v7 + 48);
  v35 = *(v20 + 16);
  v73 = v19;
  v70 = v20 + 16;
  v69 = v35;
  v35(v11, v88, v19);
  v80 = v11;
  *&v11[v34] = v33;
  v36 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v46 = v33;
    v44 = v87;
    v45 = v74;
    goto LABEL_13;
  }

  v37 = *(v36 + 8);
  v38 = swift_getObjectType();
  v39 = *(v37 + 8);
  v40 = *(v39 + 8);
  v41 = v33;
  v42 = v40(v38, v39);
  LOBYTE(v38) = v43;
  swift_unknownObjectRelease();
  v44 = v87;
  v45 = v74;
  if (v38)
  {
LABEL_13:
    v42 = 30;
  }

  v74 = *(v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
  v47 = *(v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_showCompletedContextInstance);
  v48 = *(v47 + 40) == 1;
  v49 = v86;
  v71 = v33;
  v68 = v42;
  if (v48)
  {
    v45[13](v86, *MEMORY[0x277D45468], v44);
  }

  else
  {
    swift_beginAccess();
    *v49 = *(v47 + 48);
    (v45)[13](v49, *MEMORY[0x277D45480], v44);
    sub_21DBF8E0C();
  }

  v67 = *(v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_countCompleted);
  v50 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v51 = v81;
  v52 = v77;
  v53 = v82;
  (*(v81 + 16))(v77, v2 + v50, v82);
  v54 = v72;
  v55 = v78;
  v56 = v79;
  (*(v72 + 16))(v78, v2 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks, v79);
  type metadata accessor for TTRShowFlaggedMonitorableDataView(0);
  v57 = swift_allocObject();
  v58 = v74;
  *(v57 + 16) = v74;
  (v45)[4](v57 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted, v86, v87);
  *(v57 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = v67;
  (*(v51 + 32))(v57 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle, v52, v53);
  *(v57 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = v68;
  (*(v54 + 32))(v57 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks, v55, v56);
  v59 = *(v75 + 48);
  v60 = v76;
  v61 = v80;
  v62 = v73;
  v69(v76, v80, v73);
  *(v60 + v59) = v71;
  v63 = v85;
  swift_beginAccess();
  v64 = v58;
  sub_21D4FD81C((v2 + v63), v60, v57, v2, v83);
  sub_21D0CF7E0(v60, &qword_27CE5C348);
  swift_endAccess();

  sub_21D0CF7E0(v61, &qword_27CE5C348);
  return (*(v84 + 8))(v88, v62);
}

uint64_t TTRShowFlaggedMonitorableDataView.__allocating_init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:fetchSubtasks:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v14 = sub_21DBF71BC();
  (*(*(v14 - 8) + 32))(v12 + v13, a2, v14);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = a3;
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v16 = sub_21DBF70DC();
  (*(*(v16 - 8) + 32))(v12 + v15, a4, v16);
  *(v12 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = a5;
  v17 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v18 = sub_21DBF714C();
  (*(*(v18 - 8) + 32))(v12 + v17, a6, v18);
  return v12;
}

uint64_t sub_21D6EC354()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate);

  v1 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v2 = sub_21DBF714C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TTRShowFlaggedDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate);

  v3 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_fetchSubtasks;
  v4 = sub_21DBF714C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t TTRShowFlaggedDataModelSource.__deallocating_deinit()
{
  TTRShowFlaggedDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowFlaggedDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D6EB7D8(&v2);
}

uint64_t sub_21D6EC5F8(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D6EB7D8(&v3);
}

uint64_t TTRShowFlaggedDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t TTRShowFlaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a4;
  v8 = sub_21DBF773C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v17 = sub_21DBF706C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a2, v17);
  v19 = *(v11 + 48);
  v68 = v16;
  *&v16[v19] = a3;
  v20 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v66 = v4;
  v21 = *(v4 + v20);
  if (!v21)
  {
    v30 = a3;
    return sub_21D0CF7E0(v68, &qword_27CE5C348);
  }

  v22 = a3;
  if (v21 != a1)
  {
    return sub_21D0CF7E0(v68, &qword_27CE5C348);
  }

  v23 = v22;
  v24 = sub_21DBF6E3C();
  sub_21D4F5F28(v24);
  v26 = v25;

  if (a3)
  {
    v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v28 = v66;
    swift_beginAccess();
    if (*(v28 + v27))
    {
      v29 = v23;

      sub_21D4F9F64(v29, v26);
    }

    else
    {
      v63 = v26;
      v62 = *(v28 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v31 = v27;
      v32 = v23;
      v33 = sub_21DBFB12C();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      v35 = sub_21D87E81C(v62, sub_21D1947D8, v34, v32, v33);
      *(v28 + v31) = v35;

      swift_beginAccess();
      v35[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
  }

  sub_21D0D3954(v68, v13, &qword_27CE5C348);

  MEMORY[0x223D3F810]();
  (*(v18 + 8))(v13, v17);
  v36 = sub_21DBF716C();
  (*(v64 + 8))(v10, v65);
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_29:

    v47 = v66;
LABEL_30:
    v69 = 0;
    v70 = 0xE000000000000000;
    sub_21DBFBEEC();
    v69 = *v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8);
    v54 = sub_21DBFA1AC();
    v56 = v55;

    v69 = v54;
    v70 = v56;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v57 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v57);
    v58 = v67;
    v59 = v68;
    *(&v61 - 4) = v47;
    *(&v61 - 3) = v59;
    *(&v61 - 2) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v68, &qword_27CE5C348);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_29;
  }

  v37 = sub_21DBFBD7C();
  if (!v37)
  {

    v39 = MEMORY[0x277D84F90];
LABEL_20:
    v47 = v66;
    if (*(v39 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v48 = sub_21DBFC40C();
    }

    else
    {
      v48 = MEMORY[0x277D84F98];
    }

    v71[0] = v48;
    v49 = sub_21DBF8E0C();
    sub_21D1931C0(v49, 1, v71);

    v50 = v71[0];
    v51 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v47 + v51))
    {

      sub_21D188810(v50);
      v53 = v52;

      TTRBatchFetchManager<A>.override(objects:)(v53);
    }

    else
    {
    }

    goto LABEL_30;
  }

LABEL_11:
  v71[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v39 = v71[0];
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x223D44740](v38, v36);
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      v41 = v40;
      v42 = [v40 objectID];
      v71[0] = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        v46 = v42;
        sub_21D18E6B8((v43 > 1), v44 + 1, 1);
        v42 = v46;
        v39 = v71[0];
      }

      ++v38;
      *(v39 + 16) = v44 + 1;
      v45 = v39 + 16 * v44;
      *(v45 + 32) = v42;
      *(v45 + 40) = v41;
    }

    while (v37 != v38);

    goto LABEL_20;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D6ECDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D6ECEB8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

uint64_t sub_21D6ECF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348) + 48));

  return TTRShowFlaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowFlaggedDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D6ED0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_delegate;
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

void TTRShowFlaggedDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE606F8);
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
    *(v5 + 14) = sub_21D0CDFB4(0x64656767616C66, 0xE700000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowFlaggedDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowFlaggedPrintingDataModelSource.init(store:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v7 = sub_21DBF71BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v9 = sub_21DBF70DC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowFlaggedPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v44 = retstr;
  v1 = sub_21DBF773C();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF706C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF734C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v36 - v11;
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE606F8);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAEDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "PrintingDataModelSource: fetch Flagged tree", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277D45500], v6);
  v16 = v45;
  sub_21DBF70EC();
  if (v16)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    sub_21D6EEF24(v50);
    v17 = v43;
    v18 = sub_21DBF76DC();
    v19 = v39;
    MEMORY[0x223D3F810](v18);
    (*(v37 + 8))(v5, v38);
    v20 = sub_21DBF718C();
    (*(v40 + 8))(v19, v41);
    v56 = v50[4];
    v57 = v50[5];
    *v58 = v51[0];
    *&v58[10] = *(v51 + 10);
    v52 = v50[0];
    v53 = v50[1];
    v54 = v50[2];
    v55 = v50[3];
    v21 = REMSmartListType.title.getter();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = REMSmartListType.color.getter();
    if (!v25)
    {
      if (qword_280D1BAC0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = xmmword_280D1BAC8;
      v47 = xmmword_280D1BAD8;
      v48 = xmmword_280D1BAE8;
      v49 = byte_280D1BAF8;
      v25 = TTRListColors.Color.nativeColor.getter();
    }

    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589D0);
    v27 = swift_allocObject();
    v28 = v56;
    v29 = *v58;
    v30 = *&v58[16];
    *(v27 + 112) = v57;
    *(v27 + 128) = v29;
    *(v27 + 144) = v30;
    v31 = v52;
    v32 = v53;
    *(v27 + 16) = xmmword_21DC08D00;
    *(v27 + 32) = v31;
    v33 = v54;
    v34 = v55;
    *(v27 + 48) = v32;
    *(v27 + 64) = v33;
    *(v27 + 80) = v34;
    *(v27 + 96) = v28;
    *(v27 + 160) = v20;
    (*(v42 + 8))(v59, v17);
    v35 = v44;
    v44->listName._countAndFlagsBits = v23;
    v35->listName._object = v24;
    v35->listColor.super.isa = v26;
    v35->count.value = 0;
    v35->count.is_nil = 1;
    v35->sections._rawValue = v27;
    v35->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
  }
}

uint64_t TTRShowFlaggedPrintingDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowFlaggedPrintingDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowFlaggedPrintingDataModelSource_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t TTRShowFlaggedMonitorableDataView.init(store:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:fetchSubtasks:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v13 = sub_21DBF71BC();
  (*(*(v13 - 8) + 32))(v6 + v12, a2, v13);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted) = a3;
  v14 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v15 = sub_21DBF70DC();
  (*(*(v15 - 8) + 32))(v6 + v14, a4, v15);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount) = a5;
  v16 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v17 = sub_21DBF714C();
  (*(*(v17 - 8) + 32))(v6 + v16, a6, v17);
  return v6;
}

uint64_t TTRShowFlaggedMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v66) = a4;
  v50 = a1;
  v51 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C350);
  MEMORY[0x28223BE20](v45);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v60 = &v45 - v10;
  v11 = sub_21DBF714C();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v57 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x28223BE20](v13);
  v56 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21DBF70DC();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21DBF738C();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v64 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF734C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v52 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v45 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v45 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  sub_21DBFC83C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {
    sub_21D0CF7E0(v28, &qword_27CE5C360);
    if (v66)
    {
      v66 = *(v5 + 16);
LABEL_6:
      v65 = 0;
      v32 = MEMORY[0x277D45508];
      goto LABEL_10;
    }

    v30 = 0;
    goto LABEL_8;
  }

  v30 = *&v28[*(v29 + 48)];
  v31 = sub_21DBF706C();
  (*(*(v31 - 8) + 8))(v28, v31);
  if ((v66 & 1) == 0)
  {
LABEL_8:
    v66 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v66 = *(v5 + 16);
  if (!v30)
  {
    goto LABEL_6;
  }

LABEL_9:
  v65 = v30;
  v32 = MEMORY[0x277D454F8];
LABEL_10:
  *v25 = *(v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount);
  (*(v21 + 104))(v25, *v32, v20);
  (*(v15 + 16))(v17, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle, v53);
  (*(v54 + 16))(v56, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted, v55);
  (*(v21 + 16))(v52, v25, v20);
  (*(v58 + 16))(v57, v5 + OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks, v59);
  v33 = v64;
  sub_21DBF737C();
  v34 = v60;
  v35 = v66;
  v36 = v65;
  v37 = v63;
  sub_21DBF70FC();
  if (v37)
  {

    (*(v61 + 8))(v33, v62);
    (*(v21 + 8))(v25, v20);
  }

  else
  {
    v63 = v20;
    v66 = v35;
    v38 = v45;
    v39 = *(v45 + 48);
    v41 = v48;
    v40 = v49;
    v65 = v36;
    sub_21DBF76DC();
    *(v40 + v39) = sub_21DBF76BC();
    v42 = v46;
    sub_21D0D3954(v40, v46, &qword_27CE5C350);
    v20 = *(v42 + *(v38 + 48));
    v43 = sub_21DBF706C();
    (*(*(v43 - 8) + 32))(v50, v42, v43);
    sub_21DBF76CC();

    sub_21D0CF7E0(v40, &qword_27CE5C350);
    (*(v47 + 8))(v34, v41);
    (*(v61 + 8))(v64, v62);
    (*(v21 + 8))(v25, v63);
  }

  return v20;
}

uint64_t TTRShowFlaggedMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v6 = sub_21DBF714C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t TTRShowFlaggedMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v2 = sub_21DBF71BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v4 = sub_21DBF70DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v6 = sub_21DBF714C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21D6EE654(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = TTRShowFlaggedMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D6EE6D0(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF706C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C340);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C340);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5C360);
    }

    else
    {

      v21 = *(v38 + 32);
      v22 = v36;
      v21(v12, v10, v36);
      v21(v15, v12, v22);
      v41 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D5DE94C();
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v35;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

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
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v25;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      return (*(v38 + 8))(v15, v22);
    }
  }

  return result;
}

void sub_21D6EED24(void *a1)
{
  if (qword_27CE56C20 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE606F8);
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
    *(v5 + 14) = sub_21D0CDFB4(0x64656767616C66, 0xE700000000000000, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowFlaggedDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

double sub_21D6EEF24(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 106) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21D6EEF9C()
{
  result = sub_21DBF714C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D6EF1A0()
{
  result = sub_21DBF71BC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v2 <= 0x3F)
    {
      result = sub_21DBF714C();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D6EF33C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE60720);
  v1 = __swift_project_value_buffer(v0, qword_27CE60720);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListLayout.description.getter()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

RemindersUICore::TTRRemindersListLayout_optional __swiftcall TTRRemindersListLayout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21D6EF4A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6D756C6F63;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 1953720684;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

uint64_t sub_21D6EF548()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D6EF5C4()
{
  sub_21DBFA27C();
}

uint64_t sub_21D6EF62C()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D6EF6A4@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21D6EF704(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x736E6D756C6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21D6EF74C()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t TTRRemindersListDataModelSourceLayoutContextType.nextSelectableLayout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = byte_282EA7888;
  v7 = v5();
  v8 = sub_21D1E1DE0(v6, v7);

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21D18F3F8(0, *(v9 + 16) + 1, 1);
      v9 = v24;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_21D18F3F8((v10 > 1), v11 + 1, 1);
      v9 = v24;
    }

    *(v9 + 16) = v11 + 1;
    *(v9 + v11 + 32) = v6;
  }

  v12 = byte_282EA7889;
  v13 = (v5)(a1, a2);
  v14 = sub_21D1E1DE0(v12, v13);

  if (v14)
  {
    v24 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21D18F3F8(0, *(v9 + 16) + 1, 1);
      v9 = v24;
    }

    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_21D18F3F8((v15 > 1), v16 + 1, 1);
      v9 = v24;
    }

    *(v9 + 16) = v16 + 1;
    *(v9 + v16 + 32) = v12;
  }

  (*(a2 + 16))(&v23, a1, a2);
  result = sub_21D6D8C8C(v23, v9);
  if (v18)
  {

    v19 = 0;
LABEL_19:
    *a3 = v19;
    return result;
  }

  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v20 = *(v9 + 16);
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = (result + 1) % v20;
  if ((v21 & 0x8000000000000000) == 0)
  {
    v19 = *(v9 + v21 + 32);

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t TTRRemindersListDataModelSourceLayoutContextType.forceListLayoutIfNeeded(forNavigatingTo:persistingPreferencesIfPossible:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = sub_21DBF669C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_21DBF66DC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) != *MEMORY[0x277D45170])
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v12 + 96))(v15, v11);
  (*(v8 + 32))(v10, v15, v7);
  result = (*(v8 + 88))(v10, v7);
  if (result == *MEMORY[0x277D45160])
  {
    result = (*(v8 + 96))(v10, v7);
    if (v10[1])
    {
      (*(a4 + 16))(&v30, a3, a4);
      if (v30)
      {
        v17 = sub_21DBFC64C();

        if ((v17 & 1) == 0)
        {
          if (qword_27CE56C28 != -1)
          {
            swift_once();
          }

          v18 = sub_21DBF84BC();
          __swift_project_value_buffer(v18, qword_27CE60720);
          swift_unknownObjectRetain();
          v19 = sub_21DBF84AC();
          v20 = sub_21DBFAEDC();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v28 = v22;
            *v21 = 136315138;
            swift_getObjectType();
            v23 = sub_21DBFC8EC();
            v25 = sub_21D0CDFB4(v23, v24, &v28);

            *(v21 + 4) = v25;
            _os_log_impl(&dword_21D0C9000, v19, v20, "%s: overriding currentLayout to list", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v22);
            MEMORY[0x223D46520](v22, -1, -1);
            MEMORY[0x223D46520](v21, -1, -1);
          }

          v29 = 0;
          return (*(a4 + 40))(&v29, v27 & 1, a3, a4);
        }
      }

      else
      {
      }
    }
  }

  else if (result != *MEMORY[0x277D45158])
  {
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void (*sub_21D6EFE24(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 56);
  return sub_21D6EFE50;
}

void sub_21D6EFE50(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  sub_21D6F0784(v2, 1);
}

uint64_t sub_21D6EFED8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D6EFF38(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D45BB2C;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(supportedLayouts:userDefaults:userDefaultsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F1434(a1, v12, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F1434(a1, v12, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t sub_21D6F01F0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);
    if (v4)
    {
      (*(v4 + 32))(&v20);
      v5 = v20;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v6 = sub_21DBF84BC();
      __swift_project_value_buffer(v6, qword_27CE60720);
      v7 = a2;
      v8 = sub_21DBF84AC();
      v9 = sub_21DBFAEDC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v22 = v11;
        *v10 = 136315394;
        v12 = [a2 stringRepresentation];
        v13 = sub_21DBFA16C();
        v15 = v14;

        v20 = v13;
        v21 = v15;
        MEMORY[0x223D42AA0](0x74756F79614CLL, 0xE600000000000000);
        v16 = sub_21D0CDFB4(v20, v21, &v22);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2080;
        if (v5)
        {
          v17 = 0x736E6D756C6F63;
        }

        else
        {
          v17 = 1953720684;
        }

        if (v5)
        {
          v18 = 0xE700000000000000;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        v19 = sub_21D0CDFB4(v17, v18, &v22);

        *(v10 + 14) = v19;
        _os_log_impl(&dword_21D0C9000, v8, v9, "TTRRemindersListDataModelSourceLayoutContext: handling user defaults change {key: %s, newValue: %s}", v10, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v11, -1, -1);
        MEMORY[0x223D46520](v10, -1, -1);
      }

      LOBYTE(v20) = v5;
      sub_21D6F0784(&v20, 0);
    }
  }

  return result;
}

uint64_t sub_21D6F0464()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    if (v1)
    {
      (*(v1 + 32))(&v7);
      v2 = v7;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v3 = sub_21DBF84BC();
      __swift_project_value_buffer(v3, qword_27CE60720);
      v4 = sub_21DBF84AC();
      v5 = sub_21DBFAEDC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_21D0C9000, v4, v5, "TTRRemindersListDataModelSourceLayoutContext: handling legacyTableViewBasedRemindersListEnabled change {newValue: %{BOOL}d}", v6, 8u);
        MEMORY[0x223D46520](v6, -1, -1);
      }

      sub_21D6F0C50(v2);
    }
  }

  return result;
}

void sub_21D6F05DC(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (!v3)
  {
LABEL_14:
    LOBYTE(v4) = 0;
    goto LABEL_15;
  }

  (*(v3 + 32))(&v14);
  v4 = v14;
  if ((sub_21D1E1DE0(v14, *(v1 + 16)) & 1) == 0)
  {
    if (qword_27CE56C28 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE60720);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      if (v4)
      {
        v10 = 0x736E6D756C6F63;
      }

      else
      {
        v10 = 1953720684;
      }

      if (v4)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      v12 = sub_21D0CDFB4(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "TTRRemindersListDataModelSourceLayoutContext: layout stored in user defaults is unsupported {layout: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    goto LABEL_14;
  }

LABEL_15:
  *a1 = v4;
}

void sub_21D6F0784(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (*(v2 + 56))
  {
    v4 = 0x736E6D756C6F63;
  }

  else
  {
    v4 = 1953720684;
  }

  if (*(v2 + 56))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (v3)
  {
    v6 = 0x736E6D756C6F63;
  }

  else
  {
    v6 = 1953720684;
  }

  if (v3)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

    if (sub_21D1E1DE0(v3, *(v2 + 16)))
    {
      oslog = v2;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE60720);
      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAEAC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v38[0] = v15;
        *v14 = 136315138;
        v16 = sub_21D0CDFB4(v6, v7, v38);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_21D0C9000, v12, v13, "TTRRemindersListDataModelSourceLayoutContext: currentLayout changed {newValue: %s}", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x223D46520](v15, -1, -1);
        MEMORY[0x223D46520](v14, -1, -1);
      }

      v17 = v2;
      *(v2 + 56) = v3;
      if ((a2 & 1) == 0)
      {
        goto LABEL_30;
      }

      v18 = *(v2 + 40);
      if (!v18)
      {
        goto LABEL_30;
      }

      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAEAC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v38[0] = v22;
        *v21 = 136315138;
        v23 = sub_21D0CDFB4(v6, v7, v38);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_21D0C9000, v19, v20, "TTRRemindersListDataModelSourceLayoutContext: setting user defaults {newValue: %s}", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x223D46520](v22, -1, -1);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      v24 = *(v18 + 88);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        *(v18 + 88) = v26;
        LOBYTE(v38[0]) = v3;
        (*(v18 + 48))(v38);
        v27 = *(v18 + 88);
        v25 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (!v25)
        {
          *(v18 + 88) = v28;

          v17 = oslog;
LABEL_30:
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            isa = v17[4].isa;
            ObjectType = swift_getObjectType();
            (*(isa + 1))(0, ObjectType, isa);
            swift_unknownObjectRelease();
          }

          return;
        }
      }

      __break(1u);
      return;
    }

    if (qword_27CE56C28 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE60720);
    osloga = sub_21DBF84AC();
    v32 = sub_21DBFAECC();
    if (os_log_type_enabled(osloga, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38[0] = v34;
      *v33 = 136315138;
      v35 = sub_21D0CDFB4(v6, v7, v38);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_21D0C9000, osloga, v32, "TTRRemindersListDataModelSourceLayoutContext: trying to set an unsupported currentLayout {newValue: %s}", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223D46520](v34, -1, -1);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D6F0C50(uint64_t result)
{
  v2 = *(v1 + 57);
  if (v2 == 2 || ((v2 ^ result) & 1) != 0)
  {
    *(v1 + 57) = result & 1;
    if ((*(v1 + 56) & 1) == 0)
    {
      v3 = v1;
      if (qword_27CE56C28 != -1)
      {
        swift_once();
      }

      v4 = sub_21DBF84BC();
      __swift_project_value_buffer(v4, qword_27CE60720);
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAEDC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_21D0C9000, v5, v6, "TTRRemindersListDataModelSourceLayoutContext: refresh due to change in legacyTableViewBasedRemindersListEnabled", v7, 2u);
        MEMORY[0x223D46520](v7, -1, -1);
      }

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = *(v3 + 32);
        ObjectType = swift_getObjectType();
        (*(v8 + 8))(1, ObjectType, v8);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.deinit()
{

  sub_21D157444(v0 + 24);

  return v0;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__deallocating_deinit()
{

  sub_21D157444(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartList:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_21D6F1094(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v12;
}

uint64_t TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)(id *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = [*a1 objectID];
  v6 = [v4 accountCapabilities];

  sub_21D0D32E4(a2, v17);
  v7 = v18;
  v8 = v19;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v12, v10);
  v14 = sub_21D6F126C(v5, v6, v12, v2, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v14;
}

uint64_t sub_21D6F1094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  (*(v9 + 32))(&v23 - v14, v13);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = [*a1 objectID];
  if (v17)
  {
    v19 = [v16 accountCapabilities];
  }

  else
  {
    v20 = [v16 account];
    v19 = [v20 capabilities];
  }

  (*(v9 + 16))(v11, v15, a4);
  v21 = sub_21D6F126C(v18, v19, v11, a3, a4, a5);
  (*(v9 + 8))(v15, a4);
  return v21;
}

uint64_t sub_21D6F126C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  if ([a2 supportsSections])
  {
    v12 = sub_21D1CDCD4(&unk_282EA62C8);
    sub_21D0D32E4(v25, v23);
    v21 = a1;
    v22 = 0;
    type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    v19 = sub_21D6F1434(v12, v17, &v21, v13, a5, a6);

    __swift_destroy_boxed_opaque_existential_0(v23);
    __swift_destroy_boxed_opaque_existential_0(v25);
    return v19;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v25);

    return 0;
  }
}

uint64_t sub_21D6F1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v14, v12);
  v15 = *a3;
  v16 = *(a3 + 8);
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 56) = 512;
  *(a4 + 16) = a1;
  if (v16 == 255)
  {
    v19 = 0;
    *(a4 + 40) = 0;
  }

  else
  {
    v26 = v15;
    v27 = v16 & 1;
    v17 = *(a6 + 32);
    v18 = v15;
    *(a4 + 40) = v17(&v26, a5, a6);
    v19 = (*(a6 + 8))(a5, a6);
    sub_21D6F19E4(v15, v16);
  }

  *(a4 + 48) = v19;
  sub_21D6F05DC(&v28 + 1);
  *(a4 + 56) = BYTE1(v28);
  v20 = *(a4 + 48);
  if (v20)
  {
    (*(v20 + 32))(&v28);
    v21 = v28;
  }

  else
  {
    v21 = 2;
  }

  *(a4 + 57) = v21;
  if (v16 != 255)
  {
    if (*(a4 + 40))
    {
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v15;
      *(v23 + 32) = v16 & 1;
      sub_21D6F1A0C(v15, v16);

      sub_21D0D0D40(sub_21D6F1A00, v23, &unk_282ECE138, sub_21D6F1A28);
    }

    sub_21D6F19E4(v15, v16);
  }

  if (*(a4 + 48))
  {
    v24 = swift_allocObject();
    swift_weakInit();

    sub_21D0D0D40(sub_21D6F19DC, v24, &unk_282ECE160, sub_21D6F1A4C);
  }

  (*(v11 + 8))(v14, a5);
  return a4;
}

unint64_t sub_21D6F1760()
{
  result = qword_280D15468;
  if (!qword_280D15468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D15468);
  }

  return result;
}

unint64_t sub_21D6F17B8()
{
  result = qword_27CE60738;
  if (!qword_27CE60738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60738);
  }

  return result;
}

void sub_21D6F19E4(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

id sub_21D6F1A0C(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.__allocating_init(baseTree:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.baseTree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(*(v3 + 88) + 24))(a1, v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t TTRTreeStorageDerivedUntouchedTree.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - v8;
  v10 = *(v5 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  (*(*(v5 + 88) + 32))(a1, a2, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.item(withID:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(v3 + 88) + 40))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.parent(of:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  v8 = *(v3 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  (*(*(v3 + 88) + 48))(a1, v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for TTRDerivedTreeLocation();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t TTRTreeStorageDerivedUntouchedTree.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_21D6F24DC(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for TTRDerivedTreeLocation();
  sub_21DBFC5CC();
  v3 = *(v2 - 8);
  swift_allocObject();
  v4 = sub_21DBFA60C();
  (*(v3 + 16))(v5, a1, v2);
  result = v4;

  sub_21D23C8B4();
  return result;
}

uint64_t sub_21D6F2610(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6F264C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D6F26A4()
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

uint64_t sub_21D6F277C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v30 = a2;
  v31 = sub_21DBF563C();
  v34 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = v12;
  v28 = v13;
  v15 = [v28 uuid];
  sub_21DBF568C();

  if (v12)
  {
    v16 = [v14 uuid];
    sub_21DBF568C();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v29 = v14;
  (*(v9 + 56))(v7, v17, 1, v8);
  v18 = v31;
  (*(v34 + 16))(v33, v30, v31);
  v19 = sub_21DBF566C();
  v20 = v11;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_21DBF566C();
    (*(v9 + 8))(v7, v8);
  }

  v22 = objc_allocWithZone(MEMORY[0x277D446F0]);
  v23 = v33;
  v24 = sub_21DBF55BC();
  v25 = [v22 initWithMemberIdentifier:v19 groupIdentifier:v21 isObsolete:0 modifiedOn:v24];

  (*(v34 + 8))(v23, v18);
  result = (*(v9 + 8))(v20, v8);
  *v32 = v25;
  return result;
}

uint64_t TTRRemindersListViewModel.Item.reminderCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
LABEL_8:
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) >= 2)
  {
    goto LABEL_8;
  }

LABEL_7:
  type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0;
  v9 = 3;
  if (result > 6)
  {
    if (result != 7)
    {
      v8 = *v6;
      if (result == 8)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }
  }

  else if ((result - 2) >= 5)
  {
    if (result)
    {
      v9 = 0;
      v8 = *v6;
    }
  }

  else
  {
    result = sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v8 = 0;
    v9 = 3;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t TTRRemindersListViewModel.Item.baseTreeCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_8;
    }

LABEL_7:
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 5) >= 4)
  {
    if ((EnumCaseMultiPayload - 9) < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_8:
  type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.sectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_4;
  }

  if ((EnumCaseMultiPayload - 2) < 7)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_4:
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    return sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
  }
}

uint64_t TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 8)
  {
    if ((EnumCaseMultiPayload - 2) >= 7)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

    else
    {
      sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.isReminderCase.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v1, v4, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
LABEL_6:
    sub_21D106CD8(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return 0;
  }

LABEL_10:
  sub_21D6F39C4(v4, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() < 3)
  {
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 1;
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.Item.isEligibleForAutoCompleteReminder.getter()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v0, v3, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 4)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        goto LABEL_10;
      }

LABEL_7:
      swift_storeEnumTagMultiPayload();
      return 0;
    }

LABEL_6:
    sub_21D106CD8(v3, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload < 2)
  {
    goto LABEL_6;
  }

LABEL_10:
  sub_21D6F39C4(v3, v6, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  swift_storeEnumTagMultiPayload();
  v9 = swift_getEnumCaseMultiPayload();
  if ((v9 - 1) < 2)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 1;
  }

  if (!v9)
  {
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

  return 0;
}

uint64_t TTRRemindersListViewModel.Item.iOSListCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    }

    else
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListTip);
      type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      v8 = v6[8];
      v9 = v6[9];
      v10 = v6[10];
      v11 = *(v6 + 2);
      *a1 = *v6;
      *(a1 + 8) = v8;
      *(a1 + 9) = v9;
      *(a1 + 10) = v10;
      *(a1 + 16) = v11;
      type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.HashtagsState);
    }

    else
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRTemplatePublicLinkData);
    }
  }

  type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D6F39C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TTRRemindersListViewModel.Item.macOSListCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 3)
    {
      if ((EnumCaseMultiPayload - 9) >= 2)
      {
        v8 = v6[8];
        v9 = v6[9];
        v10 = v6[10];
        v11 = *(v6 + 2);
        *a1 = *v6;
        *(a1 + 8) = v8;
        *(a1 + 9) = v9;
        *(a1 + 10) = v10;
        *(a1 + 16) = v11;
        type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  }

  else
  {
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

  type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.SectionCasesItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v10, type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem);
  v11 = 1;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    sub_21D6F39C4(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D105284(v7, a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_21D6F3EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v10, type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem);
  v11 = 1;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    sub_21D6F39C4(v10, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D105284(v7, a1, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106CD8(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v11 = 0;
  }

  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t TTRRemindersListViewModel.Item.editableCasesOnly.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v9, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D6F39C4(v9, v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v15);
      v14 = v15;
      if (v16 > 1u)
      {
        if (v16 == 2)
        {

          sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        if (!v16)
        {
          sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
          *a1 = v14;
          type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
          return swift_storeEnumTagMultiPayload();
        }
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader;
      v12 = v6;
      goto LABEL_8;
    }

LABEL_7:
    v11 = type metadata accessor for TTRRemindersListViewModel.Item;
    v12 = v9;
LABEL_8:
    sub_21D106CD8(v12, v11);
    goto LABEL_9;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) < 2)
  {
LABEL_9:
    type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_4:
  sub_21D6F39C4(v9, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRemindersListViewModel.Item.boardViewCasesOnly.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105284(v2, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_4;
    }

    if (EnumCaseMultiPayload)
    {
      sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_8;
    }

LABEL_7:
    sub_21D106CD8(v6, type metadata accessor for TTRRemindersListViewModel.Item);
    goto LABEL_8;
  }

  if ((EnumCaseMultiPayload - 5) < 4)
  {
    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 9) >= 2)
  {
LABEL_4:
    sub_21D6F39C4(v6, a1, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  }

LABEL_8:
  type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_21D6F456C()
{
  result = qword_27CE60748;
  if (!qword_27CE60748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5CD70);
    sub_21D6F45F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60748);
  }

  return result;
}

unint64_t sub_21D6F45F0()
{
  result = qword_27CE60750;
  if (!qword_27CE60750)
  {
    type metadata accessor for TTRRemindersListViewModel.SectionID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE60750);
  }

  return result;
}

char *_s19ReminderCasesInItemOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = &v14[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v18 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v19 = *(v11 + 48);
      v20 = v18;
      if (v19(&a2[v9], 1, v10))
      {
LABEL_11:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v9], &a2[v9], *(*(v21 - 8) + 64));
LABEL_65:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v25 = swift_getEnumCaseMultiPayload();
      if (v25 > 4)
      {
        if (v25 <= 7)
        {
          if (v25 == 5 || v25 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v25 != 8 && v25 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v25 > 2)
      {
        goto LABEL_50;
      }

      if (v25 == 1)
      {
        goto LABEL_49;
      }

      if (v25 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 1:
      v15 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v16 = *(v11 + 48);
      v17 = v15;
      if (v16(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      if (v24 > 2)
      {
        goto LABEL_50;
      }

      if (v24 == 1)
      {
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_63;
      }

      goto LABEL_50;
    case 0:
      v8 = *a2;
      *a1 = *a2;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(&a2[v9], 1, v10))
      {
        goto LABEL_11;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_50;
          }

          goto LABEL_63;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_63;
        }

LABEL_49:
        v27 = *&a2[v9];
        *&a1[v9] = v27;
        v28 = v27;
        swift_storeEnumTagMultiPayload();
LABEL_64:
        (*(v11 + 56))(&a1[v9], 0, 1, v10);
        goto LABEL_65;
      }

      if (v26 <= 2)
      {
        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_50;
          }

LABEL_63:
          memcpy(&a1[v9], &a2[v9], *(v11 + 64));
          goto LABEL_64;
        }

        goto LABEL_49;
      }

LABEL_50:
      v29 = sub_21DBF563C();
      (*(*(v29 - 8) + 16))(&a1[v9], &a2[v9], v29);
      swift_storeEnumTagMultiPayload();
      goto LABEL_64;
  }

  v22 = *(v6 + 64);

  return memcpy(a1, a2, v22);
}

void _s19ReminderCasesInItemOwxx(id *a1)
{
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    return;
  }

  v2 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v3 - 8) + 48))(a1 + v2, 1, v3))
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
      v5 = sub_21DBF563C();
      v6 = *(*(v5 - 8) + 8);

      v6(a1 + v2, v5);
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

  v7 = *(a1 + v2);
}

void **_s19ReminderCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_9:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_63:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v23 > 2)
      {
        goto LABEL_48;
      }

      if (v23 == 1)
      {
        goto LABEL_47;
      }

      if (v23 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 1:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_61;
        }

        goto LABEL_47;
      }

      if (v22 > 2)
      {
        goto LABEL_48;
      }

      if (v22 == 1)
      {
        goto LABEL_47;
      }

      if (v22 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_48;
    case 0:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_9;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_61;
        }

LABEL_47:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_62:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_63;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_48;
          }

LABEL_61:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_62;
        }

        goto LABEL_47;
      }

LABEL_48:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_62;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

void **_s19ReminderCasesInItemOwca(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v16 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v17 = *(v10 + 48);
      v18 = v16;
      if (v17(a2 + v8, 1, v9))
      {
LABEL_10:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v8, a2 + v8, *(*(v19 - 8) + 64));
LABEL_64:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 > 4)
      {
        if (v23 <= 7)
        {
          if (v23 == 5 || v23 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v23 != 8 && v23 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v23 > 2)
      {
        goto LABEL_49;
      }

      if (v23 == 1)
      {
        goto LABEL_48;
      }

      if (v23 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 1:
      v13 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v14 = *(v10 + 48);
      v15 = v13;
      if (v14(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 > 4)
      {
        if (v22 <= 7)
        {
          if (v22 == 5 || v22 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v22 != 8 && v22 != 9)
        {
          goto LABEL_62;
        }

        goto LABEL_48;
      }

      if (v22 > 2)
      {
        goto LABEL_49;
      }

      if (v22 == 1)
      {
        goto LABEL_48;
      }

      if (v22 != 2)
      {
        goto LABEL_62;
      }

      goto LABEL_49;
    case 0:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_10;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 > 4)
      {
        if (v24 <= 7)
        {
          if (v24 == 5 || v24 == 6)
          {
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v24 != 8 && v24 != 9)
        {
          goto LABEL_62;
        }

LABEL_48:
        v25 = *(a2 + v8);
        *(a1 + v8) = v25;
        v26 = v25;
        swift_storeEnumTagMultiPayload();
LABEL_63:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_64;
      }

      if (v24 <= 2)
      {
        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_49;
          }

LABEL_62:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_63;
        }

        goto LABEL_48;
      }

LABEL_49:
      v27 = sub_21DBF563C();
      (*(*(v27 - 8) + 16))(a1 + v8, a2 + v8, v27);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

char *_s19ReminderCasesInItemOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_48:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

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

      goto LABEL_46;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 <= 3)
      {
        if (v13 == 2 || v13 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v13 == 4 || v13 == 5 || v13 == 6)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    case 0:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_9;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_27;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_27:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_47:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_48;
      }

LABEL_46:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_47;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

char *_s19ReminderCasesInItemOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
LABEL_10:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
LABEL_49:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 3)
      {
        if (v14 == 2 || v14 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v14 == 4 || v14 == 5 || v14 == 6)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    case 1:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

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

      goto LABEL_47;
    case 0:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(&a2[v7], 1, v8))
      {
        goto LABEL_10;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_28;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
LABEL_28:
        v16 = sub_21DBF563C();
        (*(*(v16 - 8) + 32))(&a1[v7], &a2[v7], v16);
        swift_storeEnumTagMultiPayload();
LABEL_48:
        (*(v9 + 56))(&a1[v7], 0, 1, v8);
        goto LABEL_49;
      }

LABEL_47:
      memcpy(&a1[v7], &a2[v7], *(v9 + 64));
      goto LABEL_48;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_21D6F78DC()
{
  result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void **_s19BaseTreeCasesInItemOwCP(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = &v14[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_25;
      }

      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_55:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(a1, v3, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_86;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_58:
        v35 = *v3;
        *a1 = *v3;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_86;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_58;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_55;
      }

LABEL_85:
      memcpy(a1, v3, *(*(v15 - 8) + 64));
LABEL_86:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v37[5];
      v39 = a1 + v63;
      v40 = v3 + v63;
      v64 = *(v3 + v63 + 8);
      if (v64)
      {
        v84 = v3;
        v86 = a1;
        *v39 = *v40;
        *(v39 + 1) = v64;
        v65 = *(v40 + 2);
        v66 = *(v40 + 3);
        v67 = *(v40 + 4);
        v68 = *(v40 + 5);
        v69 = *(v40 + 6);
        v70 = *(v40 + 7);
        v71 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v39 + 2) = v65;
        *(v39 + 3) = v66;
        *(v39 + 4) = v67;
        *(v39 + 5) = v68;
        *(v39 + 6) = v69;
        *(v39 + 7) = v70;
        v39[64] = v71;
        *(v39 + 65) = *(v40 + 65);
        v72 = v40[120];
        if (v72 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v73 = *(v40 + 9);
          v74 = *(v40 + 10);
          v75 = *(v40 + 11);
          v76 = *(v40 + 12);
          v77 = *(v40 + 13);
          v78 = *(v40 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v39 + 9) = v73;
          *(v39 + 10) = v74;
          *(v39 + 11) = v75;
          *(v39 + 12) = v76;
          *(v39 + 13) = v77;
          *(v39 + 14) = v78;
          v39[120] = v79;
        }

        a1 = v86;
        v39[121] = v40[121];
        v3 = v84;
        goto LABEL_84;
      }

LABEL_81:
      v57 = *(v40 + 5);
      *(v39 + 4) = *(v40 + 4);
      *(v39 + 5) = v57;
      *(v39 + 6) = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      v58 = *(v40 + 1);
      *v39 = *v40;
      *(v39 + 1) = v58;
      v59 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v59;
LABEL_84:
      *(a1 + v37[6]) = *(v3 + v37[6]);
      *(a1 + v37[7]) = *(v3 + v37[7]);
      *(a1 + v37[8]) = *(v3 + v37[8]);
      *(a1 + v37[9]) = *(v3 + v37[9]);
      *(a1 + v37[10]) = *(v3 + v37[10]);
      v60 = v37[11];
      v61 = *(v3 + v60);
      *(a1 + v60) = v61;
      v62 = v61;
      goto LABEL_115;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 <= 4)
    {
      if (v25 > 2)
      {
LABEL_51:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 16))(a1, v3, v31);
        swift_storeEnumTagMultiPayload();
        goto LABEL_78;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_51;
        }

        goto LABEL_77;
      }

LABEL_54:
      v32 = *v3;
      *a1 = *v3;
      v33 = v32;
      swift_storeEnumTagMultiPayload();
      goto LABEL_78;
    }

    if (v25 > 7)
    {
      if (v25 == 8 || v25 == 9)
      {
        goto LABEL_54;
      }
    }

    else if (v25 == 5 || v25 == 6)
    {
      goto LABEL_51;
    }

LABEL_77:
    memcpy(a1, v3, *(*(v24 - 8) + 64));
LABEL_78:
    v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v38 = v37[5];
    v39 = a1 + v38;
    v40 = v3 + v38;
    v41 = *(v3 + v38 + 8);
    if (v41)
    {
      v83 = v3;
      v85 = a1;
      *v39 = *v40;
      *(v39 + 1) = v41;
      v42 = *(v40 + 2);
      v43 = *(v40 + 3);
      v44 = *(v40 + 4);
      v45 = *(v40 + 5);
      v46 = *(v40 + 6);
      v47 = *(v40 + 7);
      v48 = v40[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v42, v43, v44, v45, v46, v47, v48);
      *(v39 + 2) = v42;
      *(v39 + 3) = v43;
      *(v39 + 4) = v44;
      *(v39 + 5) = v45;
      *(v39 + 6) = v46;
      *(v39 + 7) = v47;
      v39[64] = v48;
      *(v39 + 65) = *(v40 + 65);
      v49 = v40[120];
      if (v49 == 255)
      {
        *(v39 + 72) = *(v40 + 72);
        *(v39 + 88) = *(v40 + 88);
        *(v39 + 104) = *(v40 + 104);
        v39[120] = v40[120];
      }

      else
      {
        v50 = *(v40 + 9);
        v51 = *(v40 + 10);
        v52 = *(v40 + 11);
        v53 = *(v40 + 12);
        v54 = *(v40 + 13);
        v55 = *(v40 + 14);
        v56 = v49 & 1;
        sub_21D0FB960(v50, v51, v52, v53, v54, v55, v49 & 1);
        *(v39 + 9) = v50;
        *(v39 + 10) = v51;
        *(v39 + 11) = v52;
        *(v39 + 12) = v53;
        *(v39 + 13) = v54;
        *(v39 + 14) = v55;
        v39[120] = v56;
      }

      a1 = v85;
      v39[121] = v40[121];
      v3 = v83;
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v18 = *(v11 + 48);
      v19 = v17;
      if (v18(v3 + v9, 1, v10))
      {
        goto LABEL_19;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_113;
        }

        goto LABEL_99;
      }

      if (v28 > 2)
      {
        goto LABEL_100;
      }

      if (v28 == 1)
      {
        goto LABEL_99;
      }

      if (v28 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_100;
    case 3:
      v20 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v21 = *(v11 + 48);
      v22 = v20;
      if (v21(v3 + v9, 1, v10))
      {
LABEL_19:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v9, v3 + v9, *(*(v23 - 8) + 64));
LABEL_115:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_113;
        }

        goto LABEL_99;
      }

      if (v29 > 2)
      {
        goto LABEL_100;
      }

      if (v29 == 1)
      {
        goto LABEL_99;
      }

      if (v29 != 2)
      {
        goto LABEL_113;
      }

      goto LABEL_100;
    case 4:
      v8 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(v3 + v9, 1, v10))
      {
        goto LABEL_19;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 > 4)
      {
        if (v30 <= 7)
        {
          if (v30 == 5 || v30 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v30 != 8 && v30 != 9)
        {
          goto LABEL_113;
        }

LABEL_99:
        v80 = *(v3 + v9);
        *(a1 + v9) = v80;
        v81 = v80;
        swift_storeEnumTagMultiPayload();
LABEL_114:
        (*(v11 + 56))(a1 + v9, 0, 1, v10);
        goto LABEL_115;
      }

      if (v30 <= 2)
      {
        if (v30 != 1)
        {
          if (v30 == 2)
          {
            goto LABEL_100;
          }

LABEL_113:
          memcpy(a1 + v9, v3 + v9, *(v11 + 64));
          goto LABEL_114;
        }

        goto LABEL_99;
      }

LABEL_100:
      v82 = sub_21DBF563C();
      (*(*(v82 - 8) + 16))(a1 + v9, v3 + v9, v82);
      swift_storeEnumTagMultiPayload();
      goto LABEL_114;
  }

LABEL_25:
  v26 = *(v6 + 64);

  return memcpy(a1, v3, v26);
}

void _s19BaseTreeCasesInItemOwxx(id *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      return;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 4)
    {
      if (v6 <= 7)
      {
        if (v6 != 5 && v6 != 6)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      if (v6 != 8 && v6 != 9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v6 > 2)
      {
        goto LABEL_25;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
LABEL_29:
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v9 = a1 + *(v8 + 20);
          if (*(v9 + 1))
          {

            sub_21D179EF0(*(v9 + 2), *(v9 + 3), *(v9 + 4), *(v9 + 5), *(v9 + 6), *(v9 + 7), v9[64]);
            v10 = v9[120];
            if (v10 != 255)
            {
              sub_21D1078C0(*(v9 + 9), *(v9 + 10), *(v9 + 11), *(v9 + 12), *(v9 + 13), *(v9 + 14), v10 & 1);
            }
          }

          v11 = *(a1 + *(v8 + 44));
          goto LABEL_33;
        }

LABEL_25:
        v7 = sub_21DBF563C();
        (*(*(v7 - 8) + 8))(a1, v7);
        goto LABEL_29;
      }
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
  {
    return;
  }

  v3 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v4 - 8) + 48))(a1 + v3, 1, v4))
  {
    return;
  }

  v5 = swift_getEnumCaseMultiPayload();
  if (v5 > 4)
  {
    if (v5 <= 7)
    {
      if (v5 != 5 && v5 != 6)
      {
        return;
      }

      goto LABEL_36;
    }

    if (v5 != 8 && v5 != 9)
    {
      return;
    }
  }

  else
  {
    if (v5 > 2)
    {
LABEL_36:
      v12 = sub_21DBF563C();
      v13 = *(*(v12 - 8) + 8);

      v13(a1 + v3, v12);
      return;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  v11 = *(a1 + v3);
LABEL_33:
}

void **_s19BaseTreeCasesInItemOwcp(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_53:
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 16))(a1, a2, v32);
          swift_storeEnumTagMultiPayload();
          goto LABEL_84;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_53;
          }

          goto LABEL_83;
        }

LABEL_56:
        v33 = *a2;
        *a1 = *a2;
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        goto LABEL_84;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_56;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_53;
      }

LABEL_83:
      memcpy(a1, a2, *(*(v13 - 8) + 64));
LABEL_84:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v61 = v35[5];
      v37 = a1 + v61;
      v38 = a2 + v61;
      v62 = *(a2 + v61 + 8);
      if (v62)
      {
        v82 = a2;
        v84 = a1;
        *v37 = *v38;
        *(v37 + 1) = v62;
        v63 = *(v38 + 2);
        v64 = *(v38 + 3);
        v65 = *(v38 + 4);
        v66 = *(v38 + 5);
        v67 = *(v38 + 6);
        v68 = *(v38 + 7);
        v69 = v38[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v63, v64, v65, v66, v67, v68, v69);
        *(v37 + 2) = v63;
        *(v37 + 3) = v64;
        *(v37 + 4) = v65;
        *(v37 + 5) = v66;
        *(v37 + 6) = v67;
        *(v37 + 7) = v68;
        v37[64] = v69;
        *(v37 + 65) = *(v38 + 65);
        v70 = v38[120];
        if (v70 == 255)
        {
          *(v37 + 72) = *(v38 + 72);
          *(v37 + 88) = *(v38 + 88);
          *(v37 + 104) = *(v38 + 104);
          v37[120] = v38[120];
        }

        else
        {
          v71 = *(v38 + 9);
          v72 = *(v38 + 10);
          v73 = *(v38 + 11);
          v74 = *(v38 + 12);
          v75 = *(v38 + 13);
          v76 = *(v38 + 14);
          v77 = v70 & 1;
          sub_21D0FB960(v71, v72, v73, v74, v75, v76, v70 & 1);
          *(v37 + 9) = v71;
          *(v37 + 10) = v72;
          *(v37 + 11) = v73;
          *(v37 + 12) = v74;
          *(v37 + 13) = v75;
          *(v37 + 14) = v76;
          v37[120] = v77;
        }

        a1 = v84;
        v37[121] = v38[121];
        a2 = v82;
        goto LABEL_82;
      }

LABEL_79:
      v55 = *(v38 + 5);
      *(v37 + 4) = *(v38 + 4);
      *(v37 + 5) = v55;
      *(v37 + 6) = *(v38 + 6);
      *(v37 + 106) = *(v38 + 106);
      v56 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v56;
      v57 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v57;
LABEL_82:
      *(a1 + v35[6]) = *(a2 + v35[6]);
      *(a1 + v35[7]) = *(a2 + v35[7]);
      *(a1 + v35[8]) = *(a2 + v35[8]);
      *(a1 + v35[9]) = *(a2 + v35[9]);
      *(a1 + v35[10]) = *(a2 + v35[10]);
      v58 = v35[11];
      v59 = *(a2 + v58);
      *(a1 + v58) = v59;
      v60 = v59;
      goto LABEL_113;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_49:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 16))(a1, a2, v29);
        swift_storeEnumTagMultiPayload();
        goto LABEL_76;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_49;
        }

        goto LABEL_75;
      }

LABEL_52:
      v30 = *a2;
      *a1 = *a2;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_76;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_52;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_49;
    }

LABEL_75:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_76:
    v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v36 = v35[5];
    v37 = a1 + v36;
    v38 = a2 + v36;
    v39 = *(a2 + v36 + 8);
    if (v39)
    {
      v81 = a2;
      v83 = a1;
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = *(v38 + 2);
      v41 = *(v38 + 3);
      v42 = *(v38 + 4);
      v43 = *(v38 + 5);
      v44 = *(v38 + 6);
      v45 = *(v38 + 7);
      v46 = v38[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v40, v41, v42, v43, v44, v45, v46);
      *(v37 + 2) = v40;
      *(v37 + 3) = v41;
      *(v37 + 4) = v42;
      *(v37 + 5) = v43;
      *(v37 + 6) = v44;
      *(v37 + 7) = v45;
      v37[64] = v46;
      *(v37 + 65) = *(v38 + 65);
      v47 = v38[120];
      if (v47 == 255)
      {
        *(v37 + 72) = *(v38 + 72);
        *(v37 + 88) = *(v38 + 88);
        *(v37 + 104) = *(v38 + 104);
        v37[120] = v38[120];
      }

      else
      {
        v48 = *(v38 + 9);
        v49 = *(v38 + 10);
        v50 = *(v38 + 11);
        v51 = *(v38 + 12);
        v52 = *(v38 + 13);
        v53 = *(v38 + 14);
        v54 = v47 & 1;
        sub_21D0FB960(v48, v49, v50, v51, v52, v53, v47 & 1);
        *(v37 + 9) = v48;
        *(v37 + 10) = v49;
        *(v37 + 11) = v50;
        *(v37 + 12) = v51;
        *(v37 + 13) = v52;
        *(v37 + 14) = v53;
        v37[120] = v54;
      }

      a1 = v83;
      v37[121] = v38[121];
      a2 = v81;
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v16 = *(v10 + 48);
      v17 = v15;
      if (v16(a2 + v8, 1, v9))
      {
        goto LABEL_17;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_111;
        }

        goto LABEL_97;
      }

      if (v26 > 2)
      {
        goto LABEL_98;
      }

      if (v26 == 1)
      {
        goto LABEL_97;
      }

      if (v26 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_98;
    case 3:
      v18 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v19 = *(v10 + 48);
      v20 = v18;
      if (v19(a2 + v8, 1, v9))
      {
LABEL_17:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v8, a2 + v8, *(*(v21 - 8) + 64));
LABEL_113:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_111;
        }

        goto LABEL_97;
      }

      if (v27 > 2)
      {
        goto LABEL_98;
      }

      if (v27 == 1)
      {
        goto LABEL_97;
      }

      if (v27 != 2)
      {
        goto LABEL_111;
      }

      goto LABEL_98;
    case 4:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(a2 + v8, 1, v9))
      {
        goto LABEL_17;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_98;
          }

          goto LABEL_111;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_111;
        }

LABEL_97:
        v78 = *(a2 + v8);
        *(a1 + v8) = v78;
        v79 = v78;
        swift_storeEnumTagMultiPayload();
LABEL_112:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_113;
      }

      if (v28 <= 2)
      {
        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_98;
          }

LABEL_111:
          memcpy(a1 + v8, a2 + v8, *(v10 + 64));
          goto LABEL_112;
        }

        goto LABEL_97;
      }

LABEL_98:
      v80 = sub_21DBF563C();
      (*(*(v80 - 8) + 16))(a1 + v8, a2 + v8, v80);
      swift_storeEnumTagMultiPayload();
      goto LABEL_112;
  }

LABEL_23:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v24);
}

void *_s19BaseTreeCasesInItemOwca(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.BaseTreeCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_54:
          v32 = sub_21DBF563C();
          (*(*(v32 - 8) + 16))(v3, v5, v32);
          swift_storeEnumTagMultiPayload();
          goto LABEL_85;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_54;
          }

          goto LABEL_84;
        }

LABEL_57:
        v33 = *v5;
        *v3 = *v5;
        v34 = v33;
        swift_storeEnumTagMultiPayload();
        goto LABEL_85;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_57;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_54;
      }

LABEL_84:
      memcpy(v3, v5, *(*(v13 - 8) + 64));
LABEL_85:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v66 = v35[5];
      v37 = v3 + v66;
      v38 = v5 + v66;
      if (*(v5 + v66 + 8))
      {
        v89 = v5;
        v91 = v3;
        *v37 = *v38;
        *(v37 + 1) = *(v38 + 1);
        v67 = *(v38 + 2);
        v68 = *(v38 + 3);
        v69 = *(v38 + 4);
        v70 = *(v38 + 5);
        v71 = *(v38 + 6);
        v72 = *(v38 + 7);
        v73 = v38[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v69, v70, v71, v72, v73);
        *(v37 + 2) = v67;
        *(v37 + 3) = v68;
        *(v37 + 4) = v69;
        *(v37 + 5) = v70;
        *(v37 + 6) = v71;
        *(v37 + 7) = v72;
        v37[64] = v73;
        v37[65] = v38[65];
        v37[66] = v38[66];
        v37[67] = v38[67];
        v37[68] = v38[68];
        v74 = v38[120];
        if (v74 == 255)
        {
          v82 = *(v38 + 72);
          v83 = *(v38 + 88);
          v84 = *(v38 + 104);
          v37[120] = v38[120];
          *(v37 + 104) = v84;
          *(v37 + 88) = v83;
          *(v37 + 72) = v82;
        }

        else
        {
          v75 = *(v38 + 9);
          v76 = *(v38 + 10);
          v77 = *(v38 + 11);
          v78 = *(v38 + 12);
          v79 = *(v38 + 13);
          v80 = *(v38 + 14);
          v81 = v74 & 1;
          sub_21D0FB960(v75, v76, v77, v78, v79, v80, v74 & 1);
          *(v37 + 9) = v75;
          *(v37 + 10) = v76;
          *(v37 + 11) = v77;
          *(v37 + 12) = v78;
          *(v37 + 13) = v79;
          *(v37 + 14) = v80;
          v37[120] = v81;
        }

        v3 = v91;
        v37[121] = v38[121];
        v5 = v89;
        goto LABEL_83;
      }

LABEL_80:
      v54 = *v38;
      v55 = *(v38 + 1);
      v56 = *(v38 + 3);
      *(v37 + 2) = *(v38 + 2);
      *(v37 + 3) = v56;
      *v37 = v54;
      *(v37 + 1) = v55;
      v57 = *(v38 + 4);
      v58 = *(v38 + 5);
      v59 = *(v38 + 6);
      *(v37 + 106) = *(v38 + 106);
      *(v37 + 5) = v58;
      *(v37 + 6) = v59;
      *(v37 + 4) = v57;
LABEL_83:
      *(v3 + v35[6]) = *(v5 + v35[6]);
      *(v3 + v35[7]) = *(v5 + v35[7]);
      *(v3 + v35[8]) = *(v5 + v35[8]);
      *(v3 + v35[9]) = *(v5 + v35[9]);
      *(v3 + v35[10]) = *(v5 + v35[10]);
      v63 = v35[11];
      v64 = *(v5 + v63);
      *(v3 + v63) = v64;
      v65 = v64;
      goto LABEL_114;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_50:
        v29 = sub_21DBF563C();
        (*(*(v29 - 8) + 16))(v3, v5, v29);
        swift_storeEnumTagMultiPayload();
        goto LABEL_77;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_50;
        }

        goto LABEL_76;
      }

LABEL_53:
      v30 = *v5;
      *v3 = *v5;
      v31 = v30;
      swift_storeEnumTagMultiPayload();
      goto LABEL_77;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_53;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_50;
    }

LABEL_76:
    memcpy(v3, v5, *(*(v22 - 8) + 64));
LABEL_77:
    v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v36 = v35[5];
    v37 = v3 + v36;
    v38 = v5 + v36;
    if (*(v5 + v36 + 8))
    {
      v88 = v5;
      v90 = v3;
      *v37 = *v38;
      *(v37 + 1) = *(v38 + 1);
      v39 = *(v38 + 2);
      v40 = *(v38 + 3);
      v41 = *(v38 + 4);
      v42 = *(v38 + 5);
      v43 = *(v38 + 6);
      v44 = *(v38 + 7);
      v45 = v38[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v39, v40, v41, v42, v43, v44, v45);
      *(v37 + 2) = v39;
      *(v37 + 3) = v40;
      *(v37 + 4) = v41;
      *(v37 + 5) = v42;
      *(v37 + 6) = v43;
      *(v37 + 7) = v44;
      v37[64] = v45;
      v37[65] = v38[65];
      v37[66] = v38[66];
      v37[67] = v38[67];
      v37[68] = v38[68];
      v46 = v38[120];
      if (v46 == 255)
      {
        v60 = *(v38 + 72);
        v61 = *(v38 + 88);
        v62 = *(v38 + 104);
        v37[120] = v38[120];
        *(v37 + 104) = v62;
        *(v37 + 88) = v61;
        *(v37 + 72) = v60;
      }

      else
      {
        v47 = *(v38 + 9);
        v48 = *(v38 + 10);
        v49 = *(v38 + 11);
        v50 = *(v38 + 12);
        v51 = *(v38 + 13);
        v52 = *(v38 + 14);
        v53 = v46 & 1;
        sub_21D0FB960(v47, v48, v49, v50, v51, v52, v46 & 1);
        *(v37 + 9) = v47;
        *(v37 + 10) = v48;
        *(v37 + 11) = v49;
        *(v37 + 12) = v50;
        *(v37 + 13) = v51;
        *(v37 + 14) = v52;
        v37[120] = v53;
      }

      v3 = v90;
      v37[121] = v38[121];
      v5 = v88;
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v15 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v16 = *(v10 + 48);
      v17 = v15;
      if (v16(v5 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v26 = swift_getEnumCaseMultiPayload();
      if (v26 > 4)
      {
        if (v26 <= 7)
        {
          if (v26 == 5 || v26 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v26 != 8 && v26 != 9)
        {
          goto LABEL_112;
        }

        goto LABEL_98;
      }

      if (v26 > 2)
      {
        goto LABEL_99;
      }

      if (v26 == 1)
      {
        goto LABEL_98;
      }

      if (v26 != 2)
      {
        goto LABEL_112;
      }

      goto LABEL_99;
    case 3:
      v18 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v19 = *(v10 + 48);
      v20 = v18;
      if (v19(v5 + v8, 1, v9))
      {
LABEL_18:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v3 + v8, v5 + v8, *(*(v21 - 8) + 64));
LABEL_114:
        swift_storeEnumTagMultiPayload();
        return v3;
      }

      v27 = swift_getEnumCaseMultiPayload();
      if (v27 > 4)
      {
        if (v27 <= 7)
        {
          if (v27 == 5 || v27 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v27 != 8 && v27 != 9)
        {
          goto LABEL_112;
        }

        goto LABEL_98;
      }

      if (v27 > 2)
      {
        goto LABEL_99;
      }

      if (v27 == 1)
      {
        goto LABEL_98;
      }

      if (v27 != 2)
      {
        goto LABEL_112;
      }

      goto LABEL_99;
    case 4:
      v7 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(v5 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v28 = swift_getEnumCaseMultiPayload();
      if (v28 > 4)
      {
        if (v28 <= 7)
        {
          if (v28 == 5 || v28 == 6)
          {
            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v28 != 8 && v28 != 9)
        {
          goto LABEL_112;
        }

LABEL_98:
        v85 = *(v5 + v8);
        *(v3 + v8) = v85;
        v86 = v85;
        swift_storeEnumTagMultiPayload();
LABEL_113:
        (*(v10 + 56))(v3 + v8, 0, 1, v9);
        goto LABEL_114;
      }

      if (v28 <= 2)
      {
        if (v28 != 1)
        {
          if (v28 == 2)
          {
            goto LABEL_99;
          }

LABEL_112:
          memcpy(v3 + v8, v5 + v8, *(v10 + 64));
          goto LABEL_113;
        }

        goto LABEL_98;
      }

LABEL_99:
      v87 = sub_21DBF563C();
      (*(*(v87 - 8) + 16))(v3 + v8, v5 + v8, v87);
      swift_storeEnumTagMultiPayload();
      goto LABEL_113;
  }

LABEL_24:
  v24 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v24);
}

uint64_t sub_21D6FB4A4()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
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
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v3;
        *a1 = *v3;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v3 + v14, 1, v15))
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
              goto LABEL_117;
            }

            goto LABEL_130;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_130;
          }

          goto LABEL_116;
        }

        if (v39 > 2)
        {
          goto LABEL_117;
        }

        if (v39 == 1)
        {
          goto LABEL_116;
        }

        if (v39 != 2)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v13 = *v3;
        *a1 = *v3;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v3 + v14, 1, v15))
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
              goto LABEL_117;
            }

            goto LABEL_130;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_130;
          }

          goto LABEL_116;
        }

        if (v38 > 2)
        {
          goto LABEL_117;
        }

        if (v38 == 1)
        {
          goto LABEL_116;
        }

        if (v38 != 2)
        {
          goto LABEL_130;
        }
      }

      goto LABEL_117;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 4)
      {
        if (v12 <= 7)
        {
          if (v12 == 5 || v12 == 6)
          {
            goto LABEL_67;
          }

          goto LABEL_93;
        }

        if (v12 != 8 && v12 != 9)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (v12 > 2)
        {
LABEL_67:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(a1, v3, v52);
          swift_storeEnumTagMultiPayload();
LABEL_94:
          v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v59 = v58[5];
          v60 = a1 + v59;
          v61 = v3 + v59;
          v62 = *(v3 + v59 + 8);
          if (v62)
          {
            v111 = v3;
            v114 = a1;
            *v60 = *v61;
            *(v60 + 1) = v62;
            v63 = *(v61 + 2);
            v64 = *(v61 + 3);
            v65 = *(v61 + 4);
            v66 = *(v61 + 5);
            v68 = *(v61 + 6);
            v67 = *(v61 + 7);
            v69 = v61[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v63, v64, v65, v66, v68, v67, v69);
            *(v60 + 2) = v63;
            *(v60 + 3) = v64;
            *(v60 + 4) = v65;
            *(v60 + 5) = v66;
            *(v60 + 6) = v68;
            *(v60 + 7) = v67;
            v60[64] = v69;
            *(v60 + 65) = *(v61 + 65);
            v70 = v61[120];
            if (v70 == 255)
            {
              *(v60 + 72) = *(v61 + 72);
              *(v60 + 88) = *(v61 + 88);
              *(v60 + 104) = *(v61 + 104);
              v60[120] = v61[120];
            }

            else
            {
              v71 = *(v61 + 9);
              v72 = *(v61 + 10);
              v73 = *(v61 + 11);
              v74 = *(v61 + 12);
              v75 = *(v61 + 13);
              v76 = *(v61 + 14);
              v77 = v70 & 1;
              sub_21D0FB960(v71, v72, v73, v74, v75, v76, v70 & 1);
              *(v60 + 9) = v71;
              *(v60 + 10) = v72;
              *(v60 + 11) = v73;
              *(v60 + 12) = v74;
              *(v60 + 13) = v75;
              *(v60 + 14) = v76;
              v60[120] = v77;
            }

            a1 = v114;
            v60[121] = v61[121];
            v3 = v111;
          }

          else
          {
            v78 = *(v61 + 5);
            *(v60 + 4) = *(v61 + 4);
            *(v60 + 5) = v78;
            *(v60 + 6) = *(v61 + 6);
            *(v60 + 106) = *(v61 + 106);
            v79 = *(v61 + 1);
            *v60 = *v61;
            *(v60 + 1) = v79;
            v80 = *(v61 + 3);
            *(v60 + 2) = *(v61 + 2);
            *(v60 + 3) = v80;
          }

          *(a1 + v58[6]) = *(v3 + v58[6]);
          *(a1 + v58[7]) = *(v3 + v58[7]);
          *(a1 + v58[8]) = *(v3 + v58[8]);
          *(a1 + v58[9]) = *(v3 + v58[9]);
          *(a1 + v58[10]) = *(v3 + v58[10]);
          v81 = v58[11];
          v82 = *(v3 + v81);
          *(a1 + v81) = v82;
          v83 = v82;
          goto LABEL_132;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_67;
          }

LABEL_93:
          memcpy(a1, v3, *(*(v11 - 8) + 64));
          goto LABEL_94;
        }
      }

      v53 = *v3;
      *a1 = *v3;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_94;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 4)
    {
      if (v22 <= 7)
      {
        if (v22 == 5 || v22 == 6)
        {
          goto LABEL_71;
        }

        goto LABEL_101;
      }

      if (v22 != 8 && v22 != 9)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v22 > 2)
      {
LABEL_71:
        v55 = sub_21DBF563C();
        (*(*(v55 - 8) + 16))(a1, v3, v55);
        swift_storeEnumTagMultiPayload();
LABEL_102:
        v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v85 = v84[5];
        v86 = a1 + v85;
        v87 = v3 + v85;
        v88 = *(v3 + v85 + 8);
        if (v88)
        {
          v115 = a1;
          *v86 = *v87;
          *(v86 + 1) = v88;
          v89 = *(v87 + 2);
          v90 = *(v87 + 3);
          v91 = *(v87 + 4);
          v92 = *(v87 + 5);
          v94 = *(v87 + 6);
          v93 = *(v87 + 7);
          v112 = v87[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v89, v90, v91, v92, v94, v93, v112);
          *(v86 + 2) = v89;
          *(v86 + 3) = v90;
          *(v86 + 4) = v91;
          *(v86 + 5) = v92;
          *(v86 + 6) = v94;
          *(v86 + 7) = v93;
          v86[64] = v112;
          *(v86 + 65) = *(v87 + 65);
          v95 = v87[120];
          if (v95 == 255)
          {
            *(v86 + 72) = *(v87 + 72);
            *(v86 + 88) = *(v87 + 88);
            *(v86 + 104) = *(v87 + 104);
            v86[120] = v87[120];
          }

          else
          {
            v96 = *(v87 + 9);
            v113 = *(v87 + 10);
            v97 = *(v87 + 11);
            v98 = *(v87 + 12);
            v99 = *(v87 + 13);
            v100 = *(v87 + 14);
            v101 = v95 & 1;
            sub_21D0FB960(v96, v113, v97, v98, v99, v100, v95 & 1);
            *(v86 + 9) = v96;
            *(v86 + 10) = v113;
            *(v86 + 11) = v97;
            *(v86 + 12) = v98;
            *(v86 + 13) = v99;
            *(v86 + 14) = v100;
            v86[120] = v101;
          }

          a1 = v115;
          v86[121] = v87[121];
        }

        else
        {
          v102 = *(v87 + 5);
          *(v86 + 4) = *(v87 + 4);
          *(v86 + 5) = v102;
          *(v86 + 6) = *(v87 + 6);
          *(v86 + 106) = *(v87 + 106);
          v103 = *(v87 + 1);
          *v86 = *v87;
          *(v86 + 1) = v103;
          v104 = *(v87 + 3);
          *(v86 + 2) = *(v87 + 2);
          *(v86 + 3) = v104;
        }

        *(a1 + v84[6]) = *(v3 + v84[6]);
        *(a1 + v84[7]) = *(v3 + v84[7]);
        *(a1 + v84[8]) = *(v3 + v84[8]);
        *(a1 + v84[9]) = *(v3 + v84[9]);
        *(a1 + v84[10]) = *(v3 + v84[10]);
        v105 = v84[11];
        v106 = *(v3 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_132;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_71;
        }

LABEL_101:
        memcpy(a1, v3, *(*(v21 - 8) + 64));
        goto LABEL_102;
      }
    }

    v56 = *v3;
    *a1 = *v3;
    v57 = v56;
    swift_storeEnumTagMultiPayload();
    goto LABEL_102;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v3;
      *(a1 + 8) = *(v3 + 8);
      *(a1 + 9) = *(v3 + 9);
      v19 = v3[2];
      a1[2] = v19;
      v20 = v19;
      goto LABEL_132;
    }

    v30 = *v3;
    *a1 = *v3;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v3 + v14, 1, v15))
    {
LABEL_28:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v14, v3 + v14, *(*(v26 - 8) + 64));
      goto LABEL_132;
    }

    v49 = swift_getEnumCaseMultiPayload();
    if (v49 > 4)
    {
      if (v49 <= 7)
      {
        if (v49 == 5 || v49 == 6)
        {
          goto LABEL_117;
        }

        goto LABEL_130;
      }

      if (v49 != 8 && v49 != 9)
      {
        goto LABEL_130;
      }

LABEL_116:
      v108 = *(v3 + v14);
      *(a1 + v14) = v108;
      v109 = v108;
      swift_storeEnumTagMultiPayload();
LABEL_131:
      (*(v16 + 56))(a1 + v14, 0, 1, v15);
      goto LABEL_132;
    }

    if (v49 <= 2)
    {
      if (v49 != 1)
      {
        if (v49 == 2)
        {
          goto LABEL_117;
        }

LABEL_130:
        memcpy(a1 + v14, v3 + v14, *(v16 + 64));
        goto LABEL_131;
      }

      goto LABEL_116;
    }

LABEL_117:
    v110 = sub_21DBF563C();
    (*(*(v110 - 8) + 16))(a1 + v14, v3 + v14, v110);
    swift_storeEnumTagMultiPayload();
    goto LABEL_131;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v3, 1, v27))
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, v3, *(*(v29 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v40 = *(v27 + 20);
        v41 = sub_21DBF6C1C();
        v42 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v42(a1 + v40, v3 + v40, v41);
        (*(v28 + 56))(a1, 0, 1, v27);
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

      goto LABEL_132;
    case 7:
      v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v3, 1, v33))
      {
        v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v35 - 8) + 64));
      }

      else
      {
        v50 = sub_21DBF563C();
        (*(*(v50 - 8) + 16))(a1, v3, v50);
        *(a1 + *(v33 + 20)) = *(v3 + *(v33 + 20));
        (*(v34 + 56))(a1, 0, 1, v33);
      }

      v51 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v51 + 20)) = *(v3 + *(v51 + 20));
      goto LABEL_132;
    case 8:
      *a1 = *v3;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, v3 + v8, v9);
LABEL_132:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_35:
  v36 = *(v6 + 64);

  return memcpy(a1, v3, v36);
}

void destroy for TTRRemindersListViewModel.Item(uint64_t a1)
{
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

void **initializeWithCopy for TTRRemindersListViewModel.Item(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(a2 + v12, 1, v13))
        {
          goto LABEL_26;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v11 = *a2;
        *a1 = *a2;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(a2 + v12, 1, v13))
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
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
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
        goto LABEL_33;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 <= 4)
      {
        if (v10 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v10 > 7)
      {
        if (v10 == 8 || v10 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v10 == 5 || v10 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        v102 = a2;
        v104 = a1;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v66 = *(v59 + 7);
        v67 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v66, v67);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v66;
        v58[64] = v67;
        *(v58 + 65) = *(v59 + 65);
        v68 = v59[120];
        if (v68 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v69 = *(v59 + 9);
          v70 = *(v59 + 10);
          v71 = *(v59 + 11);
          v72 = *(v59 + 12);
          v73 = *(v59 + 13);
          v74 = *(v59 + 14);
          v75 = v68 & 1;
          sub_21D0FB960(v69, v70, v71, v72, v73, v74, v68 & 1);
          *(v58 + 9) = v69;
          *(v58 + 10) = v70;
          *(v58 + 11) = v71;
          *(v58 + 12) = v72;
          *(v58 + 13) = v73;
          *(v58 + 14) = v74;
          v58[120] = v75;
        }

        a1 = v104;
        v58[121] = v59[121];
        a2 = v102;
        goto LABEL_98;
      }

LABEL_95:
      v76 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v76;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v77 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v77;
      v78 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v78;
LABEL_98:
      *(a1 + v56[6]) = *(a2 + v56[6]);
      *(a1 + v56[7]) = *(a2 + v56[7]);
      *(a1 + v56[8]) = *(a2 + v56[8]);
      *(a1 + v56[9]) = *(a2 + v56[9]);
      *(a1 + v56[10]) = *(a2 + v56[10]);
      v79 = v56[11];
      v80 = *(a2 + v79);
      *(a1 + v79) = v80;
      v81 = v80;
      goto LABEL_129;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 <= 4)
    {
      if (v20 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v20 > 7)
    {
      if (v20 == 8 || v20 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v20 == 5 || v20 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v19 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v82 = v56[5];
    v58 = a1 + v82;
    v59 = a2 + v82;
    v83 = *(a2 + v82 + 8);
    if (v83)
    {
      v103 = a2;
      v105 = a1;
      *v58 = *v59;
      *(v58 + 1) = v83;
      v84 = *(v59 + 2);
      v85 = *(v59 + 3);
      v86 = *(v59 + 4);
      v87 = *(v59 + 5);
      v88 = *(v59 + 6);
      v89 = *(v59 + 7);
      v90 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v90);
      *(v58 + 2) = v84;
      *(v58 + 3) = v85;
      *(v58 + 4) = v86;
      *(v58 + 5) = v87;
      *(v58 + 6) = v88;
      *(v58 + 7) = v89;
      v58[64] = v90;
      *(v58 + 65) = *(v59 + 65);
      v91 = v59[120];
      if (v91 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v92 = *(v59 + 9);
        v93 = *(v59 + 10);
        v94 = *(v59 + 11);
        v95 = *(v59 + 12);
        v96 = *(v59 + 13);
        v97 = *(v59 + 14);
        v98 = v91 & 1;
        sub_21D0FB960(v92, v93, v94, v95, v96, v97, v91 & 1);
        *(v58 + 9) = v92;
        *(v58 + 10) = v93;
        *(v58 + 11) = v94;
        *(v58 + 12) = v95;
        *(v58 + 13) = v96;
        *(v58 + 14) = v97;
        v58[120] = v98;
      }

      a1 = v105;
      v58[121] = v59[121];
      a2 = v103;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v17 = a2[2];
      a1[2] = v17;
      v18 = v17;
      goto LABEL_129;
    }

    v28 = *a2;
    *a1 = *a2;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(a2 + v12, 1, v13))
    {
LABEL_26:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v12, a2 + v12, *(*(v24 - 8) + 64));
      goto LABEL_129;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v99 = *(a2 + v12);
      *(a1 + v12) = v99;
      v100 = v99;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v14 + 56))(a1 + v12, 0, 1, v13);
      goto LABEL_129;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(a1 + v12, a2 + v12, *(v14 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v101 = sub_21DBF563C();
    (*(*(v101 - 8) + 16))(a1 + v12, a2 + v12, v101);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(a2, 1, v25))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v27 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v38 = *(v25 + 20);
        v39 = sub_21DBF6C1C();
        v40 = *(*(v39 - 8) + 16);
        sub_21DBF8E0C();
        v40(a1 + v38, a2 + v38, v39);
        (*(v26 + 56))(a1, 0, 1, v25);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (a1 + v41);
      v43 = (a2 + v41);
      v44 = v43[1];
      if (v44)
      {
        *v42 = *v43;
        v42[1] = v44;
        v45 = v43[2];
        v42[2] = v45;
        sub_21DBF8E0C();
        v46 = v45;
      }

      else
      {
        *v42 = *v43;
        v42[2] = v43[2];
      }

      goto LABEL_129;
    case 7:
      v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(a2, 1, v31))
      {
        v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v33 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(a1, a2, v48);
        *(a1 + *(v31 + 20)) = *(a2 + *(v31 + 20));
        (*(v32 + 56))(a1, 0, 1, v31);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
      goto LABEL_129;
    case 8:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

LABEL_33:
  v34 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v34);
}

void *_s18iOSListCasesInItemOwca(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v21 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v22 = *(v14 + 48);
        v23 = v21;
        if (v22(v5 + v12, 1, v13))
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
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v37 > 2)
        {
          goto LABEL_116;
        }

        if (v37 == 1)
        {
          goto LABEL_115;
        }

        if (v37 != 2)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v11 = *v5;
        *v3 = *v5;
        v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v14 = *(v13 - 8);
        v15 = *(v14 + 48);
        v16 = v11;
        if (v15(v5 + v12, 1, v13))
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
              goto LABEL_116;
            }

            goto LABEL_129;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_129;
          }

          goto LABEL_115;
        }

        if (v36 > 2)
        {
          goto LABEL_116;
        }

        if (v36 == 1)
        {
          goto LABEL_115;
        }

        if (v36 != 2)
        {
          goto LABEL_129;
        }
      }

      goto LABEL_116;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_34;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_66;
          }

          goto LABEL_92;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_66:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(v3, v5, v50);
          swift_storeEnumTagMultiPayload();
LABEL_93:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = v3 + v57;
          v59 = v5 + v57;
          if (*(v5 + v57 + 8))
          {
            v117 = v5;
            v120 = v3;
            *v58 = *v59;
            *(v58 + 1) = *(v59 + 1);
            v60 = *(v59 + 2);
            v61 = *(v59 + 3);
            v62 = *(v59 + 4);
            v63 = *(v59 + 5);
            v65 = *(v59 + 6);
            v64 = *(v59 + 7);
            v66 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v60, v61, v62, v63, v65, v64, v66);
            *(v58 + 2) = v60;
            *(v58 + 3) = v61;
            *(v58 + 4) = v62;
            *(v58 + 5) = v63;
            *(v58 + 6) = v65;
            *(v58 + 7) = v64;
            v58[64] = v66;
            v58[65] = v59[65];
            v58[66] = v59[66];
            v58[67] = v59[67];
            v58[68] = v59[68];
            v67 = v59[120];
            if (v67 == 255)
            {
              v81 = *(v59 + 72);
              v82 = *(v59 + 88);
              v83 = *(v59 + 104);
              v58[120] = v59[120];
              *(v58 + 104) = v83;
              *(v58 + 88) = v82;
              *(v58 + 72) = v81;
            }

            else
            {
              v68 = *(v59 + 9);
              v69 = *(v59 + 10);
              v70 = *(v59 + 11);
              v71 = *(v59 + 12);
              v72 = *(v59 + 13);
              v73 = *(v59 + 14);
              v74 = v67 & 1;
              sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v69;
              *(v58 + 11) = v70;
              *(v58 + 12) = v71;
              *(v58 + 13) = v72;
              *(v58 + 14) = v73;
              v58[120] = v74;
            }

            v3 = v120;
            v58[121] = v59[121];
            v5 = v117;
          }

          else
          {
            v75 = *v59;
            v76 = *(v59 + 1);
            v77 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v77;
            *v58 = v75;
            *(v58 + 1) = v76;
            v78 = *(v59 + 4);
            v79 = *(v59 + 5);
            v80 = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            *(v58 + 5) = v79;
            *(v58 + 6) = v80;
            *(v58 + 4) = v78;
          }

          *(v3 + v56[6]) = *(v5 + v56[6]);
          *(v3 + v56[7]) = *(v5 + v56[7]);
          *(v3 + v56[8]) = *(v5 + v56[8]);
          *(v3 + v56[9]) = *(v5 + v56[9]);
          *(v3 + v56[10]) = *(v5 + v56[10]);
          v84 = v56[11];
          v85 = *(v5 + v84);
          *(v3 + v84) = v85;
          v86 = v85;
          goto LABEL_131;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_66;
          }

LABEL_92:
          memcpy(v3, v5, *(*(v9 - 8) + 64));
          goto LABEL_93;
        }
      }

      v51 = *v5;
      *v3 = *v5;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_93;
    }

    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 == 5 || v20 == 6)
        {
          goto LABEL_70;
        }

        goto LABEL_100;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v20 > 2)
      {
LABEL_70:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(v3, v5, v53);
        swift_storeEnumTagMultiPayload();
LABEL_101:
        v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v88 = v87[5];
        v89 = v3 + v88;
        v90 = v5 + v88;
        if (*(v5 + v88 + 8))
        {
          *v89 = *v90;
          *(v89 + 1) = *(v90 + 1);
          v91 = *(v90 + 2);
          v92 = *(v90 + 3);
          v93 = *(v90 + 4);
          v94 = *(v90 + 5);
          v95 = *(v90 + 6);
          v118 = *(v90 + 7);
          v121 = v90[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v91, v92, v93, v94, v95, v118, v121);
          *(v89 + 2) = v91;
          *(v89 + 3) = v92;
          *(v89 + 4) = v93;
          *(v89 + 5) = v94;
          *(v89 + 6) = v95;
          *(v89 + 7) = v118;
          v89[64] = v121;
          v89[65] = v90[65];
          v89[66] = v90[66];
          v89[67] = v90[67];
          v89[68] = v90[68];
          v96 = v90[120];
          if (v96 == 255)
          {
            v108 = *(v90 + 72);
            v109 = *(v90 + 88);
            v110 = *(v90 + 104);
            v89[120] = v90[120];
            *(v89 + 104) = v110;
            *(v89 + 88) = v109;
            *(v89 + 72) = v108;
          }

          else
          {
            v119 = *(v90 + 10);
            v122 = *(v90 + 9);
            v97 = *(v90 + 11);
            v98 = *(v90 + 12);
            v99 = *(v90 + 13);
            v100 = *(v90 + 14);
            v101 = v96 & 1;
            sub_21D0FB960(v122, v119, v97, v98, v99, v100, v96 & 1);
            *(v89 + 9) = v122;
            *(v89 + 10) = v119;
            *(v89 + 11) = v97;
            *(v89 + 12) = v98;
            *(v89 + 13) = v99;
            *(v89 + 14) = v100;
            v89[120] = v101;
          }

          v89[121] = v90[121];
        }

        else
        {
          v102 = *v90;
          v103 = *(v90 + 1);
          v104 = *(v90 + 3);
          *(v89 + 2) = *(v90 + 2);
          *(v89 + 3) = v104;
          *v89 = v102;
          *(v89 + 1) = v103;
          v105 = *(v90 + 4);
          v106 = *(v90 + 5);
          v107 = *(v90 + 6);
          *(v89 + 106) = *(v90 + 106);
          *(v89 + 5) = v106;
          *(v89 + 6) = v107;
          *(v89 + 4) = v105;
        }

        *(v3 + v87[6]) = *(v5 + v87[6]);
        *(v3 + v87[7]) = *(v5 + v87[7]);
        *(v3 + v87[8]) = *(v5 + v87[8]);
        *(v3 + v87[9]) = *(v5 + v87[9]);
        *(v3 + v87[10]) = *(v5 + v87[10]);
        v111 = v87[11];
        v112 = *(v5 + v111);
        *(v3 + v111) = v112;
        v113 = v112;
        goto LABEL_131;
      }

      if (v20 != 1)
      {
        if (v20 == 2)
        {
          goto LABEL_70;
        }

LABEL_100:
        memcpy(v3, v5, *(*(v19 - 8) + 64));
        goto LABEL_101;
      }
    }

    v54 = *v5;
    *v3 = *v5;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_101;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v3 = *v5;
      *(v3 + 8) = *(v5 + 8);
      *(v3 + 9) = *(v5 + 9);
      *(v3 + 10) = *(v5 + 10);
      v17 = v5[2];
      v3[2] = v17;
      v18 = v17;
      goto LABEL_131;
    }

    v28 = *v5;
    *v3 = *v5;
    v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v14 = *(v13 - 8);
    v29 = *(v14 + 48);
    v30 = v28;
    if (v29(v5 + v12, 1, v13))
    {
LABEL_27:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v3 + v12, v5 + v12, *(*(v24 - 8) + 64));
      goto LABEL_131;
    }

    v47 = swift_getEnumCaseMultiPayload();
    if (v47 > 4)
    {
      if (v47 <= 7)
      {
        if (v47 == 5 || v47 == 6)
        {
          goto LABEL_116;
        }

        goto LABEL_129;
      }

      if (v47 != 8 && v47 != 9)
      {
        goto LABEL_129;
      }

LABEL_115:
      v114 = *(v5 + v12);
      *(v3 + v12) = v114;
      v115 = v114;
      swift_storeEnumTagMultiPayload();
LABEL_130:
      (*(v14 + 56))(v3 + v12, 0, 1, v13);
      goto LABEL_131;
    }

    if (v47 <= 2)
    {
      if (v47 != 1)
      {
        if (v47 == 2)
        {
          goto LABEL_116;
        }

LABEL_129:
        memcpy(v3 + v12, v5 + v12, *(v14 + 64));
        goto LABEL_130;
      }

      goto LABEL_115;
    }

LABEL_116:
    v116 = sub_21DBF563C();
    (*(*(v116 - 8) + 16))(v3 + v12, v5 + v12, v116);
    swift_storeEnumTagMultiPayload();
    goto LABEL_130;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v25 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v5, 1, v25))
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v3, v5, *(*(v27 - 8) + 64));
      }

      else
      {
        *v3 = *v5;
        v38 = *(v25 + 20);
        v39 = sub_21DBF6C1C();
        v40 = *(*(v39 - 8) + 16);
        sub_21DBF8E0C();
        v40(v3 + v38, v5 + v38, v39);
        (*(v26 + 56))(v3, 0, 1, v25);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (v3 + v41);
      v43 = (v5 + v41);
      if (v43[1])
      {
        *v42 = *v43;
        v42[1] = v43[1];
        v44 = v43[2];
        v42[2] = v44;
        sub_21DBF8E0C();
        v45 = v44;
      }

      else
      {
        v46 = *v43;
        v42[2] = v43[2];
        *v42 = v46;
      }

      goto LABEL_131;
    case 7:
      v31 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v5, 1, v31))
      {
        v33 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v3, v5, *(*(v33 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(v3, v5, v48);
        *(v3 + *(v31 + 20)) = *(v5 + *(v31 + 20));
        (*(v32 + 56))(v3, 0, 1, v31);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v3 + *(v49 + 20)) = *(v5 + *(v49 + 20));
      goto LABEL_131;
    case 8:
      *v3 = *v5;
      v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v8 = sub_21DBF8D7C();
      (*(*(v8 - 8) + 16))(v3 + v7, v5 + v7, v8);
LABEL_131:
      swift_storeEnumTagMultiPayload();
      return v3;
  }

LABEL_34:
  v34 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v34);
}

_BYTE *initializeWithTake for TTRRemindersListViewModel.Item(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(a2, 1, v20))
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1, a2, v27);
          a1[*(v20 + 20)] = a2[*(v20 + 20)];
          (*(v21 + 56))(a1, 0, 1, v20);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v28 + 20)] = *&a2[*(v28 + 20)];
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_89:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(a2, 1, v10))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v12 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v29 = *(v10 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          (*(v11 + 56))(a1, 0, 1, v10);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &a1[v31];
        v33 = &a2[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_89;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_87;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        goto LABEL_29;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_59:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&a1[v13], &a2[v13], v35);
        swift_storeEnumTagMultiPayload();
LABEL_88:
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
        goto LABEL_89;
      }

LABEL_87:
      memcpy(&a1[v13], &a2[v13], *(v15 + 64));
      goto LABEL_88;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_59;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_87;
    }

LABEL_29:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_89;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_9:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_67:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &a1[v37];
      v39 = &a2[v37];
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
      a1[v36[6]] = a2[v36[6]];
      a1[v36[7]] = a2[v36[7]];
      a1[v36[8]] = a2[v36[8]];
      a1[v36[9]] = a2[v36[9]];
      a1[v36[10]] = a2[v36[10]];
      *&a1[v36[11]] = *&a2[v36[11]];
      goto LABEL_89;
    }

LABEL_66:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_67;
  }

LABEL_32:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

_BYTE *_s18iOSListCasesInItemOwta(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v20 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(a2, 1, v20))
        {
          v22 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v22 - 8) + 64));
        }

        else
        {
          v27 = sub_21DBF563C();
          (*(*(v27 - 8) + 32))(a1, a2, v27);
          a1[*(v20 + 20)] = a2[*(v20 + 20)];
          (*(v21 + 56))(a1, 0, 1, v20);
        }

        v28 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v28 + 20)] = *&a2[*(v28 + 20)];
        goto LABEL_90;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_33;
      }

      *a1 = *a2;
      v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v17 = sub_21DBF8D7C();
      (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(a2, 1, v10))
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v12 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v29 = *(v10 + 20);
          v30 = sub_21DBF6C1C();
          (*(*(v30 - 8) + 32))(&a1[v29], &a2[v29], v30);
          (*(v11 + 56))(a1, 0, 1, v10);
        }

        v31 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v32 = &a1[v31];
        v33 = &a2[v31];
        *v32 = *v33;
        *(v32 + 2) = *(v33 + 2);
        goto LABEL_90;
      }

      goto LABEL_33;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(&a2[v13], 1, v14))
      {
        goto LABEL_30;
      }

      v34 = swift_getEnumCaseMultiPayload();
      if (v34 <= 3)
      {
        if (v34 == 2 || v34 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v34 == 4 || v34 == 5 || v34 == 6)
      {
LABEL_60:
        v35 = sub_21DBF563C();
        (*(*(v35 - 8) + 32))(&a1[v13], &a2[v13], v35);
        swift_storeEnumTagMultiPayload();
LABEL_89:
        (*(v15 + 56))(&a1[v13], 0, 1, v14);
        goto LABEL_90;
      }

LABEL_88:
      memcpy(&a1[v13], &a2[v13], *(v15 + 64));
      goto LABEL_89;
    }

    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(&a2[v13], 1, v14))
    {
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 3)
      {
        if (v26 == 2 || v26 == 3)
        {
          goto LABEL_60;
        }
      }

      else if (v26 == 4 || v26 == 5 || v26 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_88;
    }

LABEL_30:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_90;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 3)
    {
      if (v18 == 2 || v18 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v18 == 4 || v18 == 5 || v18 == 6)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 <= 3)
    {
      if (v8 == 2 || v8 == 3)
      {
        goto LABEL_10;
      }
    }

    else if (v8 == 4 || v8 == 5 || v8 == 6)
    {
LABEL_10:
      v9 = sub_21DBF563C();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      swift_storeEnumTagMultiPayload();
LABEL_68:
      v36 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v37 = v36[5];
      v38 = &a1[v37];
      v39 = &a2[v37];
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
      a1[v36[6]] = a2[v36[6]];
      a1[v36[7]] = a2[v36[7]];
      a1[v36[8]] = a2[v36[8]];
      a1[v36[9]] = a2[v36[9]];
      a1[v36[10]] = a2[v36[10]];
      *&a1[v36[11]] = *&a2[v36[11]];
      goto LABEL_90;
    }

LABEL_67:
    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_68;
  }

LABEL_33:
  v23 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v23);
}

uint64_t sub_21D701E34()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ReminderID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TTRRemindersListViewModel.HashtagsState(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TTRTemplatePublicLinkData(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for TTRRemindersListTips(319);
          if (v5 <= 0x3F)
          {
            swift_initEnumMetadataMultiPayload();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *_s20MacOSListCasesInItemOwCP(char *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v19 = *v3;
        *a1 = *v3;
        v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v11 = *(v10 - 8);
        v20 = *(v11 + 48);
        v21 = v19;
        if (v20(&v3[v9], 1, v10))
        {
LABEL_19:
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(&a1[v9], &v3[v9], *(*(v22 - 8) + 64));
          goto LABEL_117;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_115;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_115;
          }

          goto LABEL_101;
        }

        if (v30 > 2)
        {
          break;
        }

        if (v30 == 1)
        {
          goto LABEL_101;
        }

        if (v30 != 2)
        {
          goto LABEL_115;
        }

        break;
      case 4:
        v27 = *v3;
        *a1 = *v3;
        v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v11 = *(v10 - 8);
        v28 = *(v11 + 48);
        v29 = v27;
        if (v28(&v3[v9], 1, v10))
        {
          goto LABEL_19;
        }

        v32 = swift_getEnumCaseMultiPayload();
        if (v32 > 4)
        {
          if (v32 <= 7)
          {
            if (v32 == 5 || v32 == 6)
            {
              break;
            }

            goto LABEL_115;
          }

          if (v32 != 8 && v32 != 9)
          {
            goto LABEL_115;
          }

          goto LABEL_101;
        }

        if (v32 <= 2)
        {
          if (v32 != 1)
          {
            if (v32 == 2)
            {
              break;
            }

            goto LABEL_115;
          }

LABEL_101:
          v82 = *&v3[v9];
          *&a1[v9] = v82;
          v83 = v82;
          swift_storeEnumTagMultiPayload();
LABEL_116:
          (*(v11 + 56))(&a1[v9], 0, 1, v10);
          goto LABEL_117;
        }

        break;
      case 5:
        *a1 = *v3;
        a1[8] = v3[8];
        *(a1 + 9) = *(v3 + 9);
        v15 = *(v3 + 2);
        *(a1 + 2) = v15;
        v16 = v15;
LABEL_117:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        goto LABEL_20;
    }

LABEL_102:
    v84 = sub_21DBF563C();
    (*(*(v84 - 8) + 16))(&a1[v9], &v3[v9], v84);
    swift_storeEnumTagMultiPayload();
    goto LABEL_116;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 4)
      {
        if (v18 > 2)
        {
LABEL_53:
          v33 = sub_21DBF563C();
          (*(*(v33 - 8) + 16))(a1, v3, v33);
          swift_storeEnumTagMultiPayload();
          goto LABEL_80;
        }

        if (v18 != 1)
        {
          if (v18 == 2)
          {
            goto LABEL_53;
          }

          goto LABEL_79;
        }

LABEL_56:
        v34 = *v3;
        *a1 = *v3;
        v35 = v34;
        swift_storeEnumTagMultiPayload();
        goto LABEL_80;
      }

      if (v18 > 7)
      {
        if (v18 == 8 || v18 == 9)
        {
          goto LABEL_56;
        }
      }

      else if (v18 == 5 || v18 == 6)
      {
        goto LABEL_53;
      }

LABEL_79:
      memcpy(a1, v3, *(*(v17 - 8) + 64));
LABEL_80:
      v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v40 = v39[5];
      v41 = &a1[v40];
      v42 = &v3[v40];
      v43 = *&v3[v40 + 8];
      if (v43)
      {
        v85 = v3;
        v87 = a1;
        *v41 = *v42;
        *(v41 + 1) = v43;
        v44 = *(v42 + 2);
        v45 = *(v42 + 3);
        v46 = *(v42 + 4);
        v47 = *(v42 + 5);
        v49 = *(v42 + 6);
        v48 = *(v42 + 7);
        v50 = v42[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v44, v45, v46, v47, v49, v48, v50);
        *(v41 + 2) = v44;
        *(v41 + 3) = v45;
        *(v41 + 4) = v46;
        *(v41 + 5) = v47;
        *(v41 + 6) = v49;
        *(v41 + 7) = v48;
        v41[64] = v50;
        *(v41 + 65) = *(v42 + 65);
        v51 = v42[120];
        if (v51 == 255)
        {
          *(v41 + 72) = *(v42 + 72);
          *(v41 + 88) = *(v42 + 88);
          *(v41 + 104) = *(v42 + 104);
          v41[120] = v42[120];
        }

        else
        {
          v52 = *(v42 + 9);
          v53 = *(v42 + 10);
          v54 = *(v42 + 11);
          v55 = *(v42 + 12);
          v56 = *(v42 + 13);
          v57 = *(v42 + 14);
          v58 = v51 & 1;
          sub_21D0FB960(v52, v53, v54, v55, v56, v57, v51 & 1);
          *(v41 + 9) = v52;
          *(v41 + 10) = v53;
          *(v41 + 11) = v54;
          *(v41 + 12) = v55;
          *(v41 + 13) = v56;
          *(v41 + 14) = v57;
          v41[120] = v58;
        }

        a1 = v87;
        v41[121] = v42[121];
        v3 = v85;
        goto LABEL_86;
      }

      goto LABEL_83;
    case 1:
      v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v26 = swift_getEnumCaseMultiPayload();
      if (v26 <= 4)
      {
        if (v26 > 2)
        {
LABEL_57:
          v36 = sub_21DBF563C();
          (*(*(v36 - 8) + 16))(a1, v3, v36);
          swift_storeEnumTagMultiPayload();
          goto LABEL_88;
        }

        if (v26 != 1)
        {
          if (v26 == 2)
          {
            goto LABEL_57;
          }

          goto LABEL_87;
        }

LABEL_60:
        v37 = *v3;
        *a1 = *v3;
        v38 = v37;
        swift_storeEnumTagMultiPayload();
        goto LABEL_88;
      }

      if (v26 > 7)
      {
        if (v26 == 8 || v26 == 9)
        {
          goto LABEL_60;
        }
      }

      else if (v26 == 5 || v26 == 6)
      {
        goto LABEL_57;
      }

LABEL_87:
      memcpy(a1, v3, *(*(v25 - 8) + 64));
LABEL_88:
      v39 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v65 = v39[5];
      v41 = &a1[v65];
      v42 = &v3[v65];
      v66 = *&v3[v65 + 8];
      if (v66)
      {
        v86 = v3;
        v88 = a1;
        *v41 = *v42;
        *(v41 + 1) = v66;
        v67 = *(v42 + 2);
        v68 = *(v42 + 3);
        v69 = *(v42 + 4);
        v70 = *(v42 + 5);
        v72 = *(v42 + 6);
        v71 = *(v42 + 7);
        v73 = v42[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v67, v68, v69, v70, v72, v71, v73);
        *(v41 + 2) = v67;
        *(v41 + 3) = v68;
        *(v41 + 4) = v69;
        *(v41 + 5) = v70;
        *(v41 + 6) = v72;
        *(v41 + 7) = v71;
        v41[64] = v73;
        *(v41 + 65) = *(v42 + 65);
        v74 = v42[120];
        if (v74 == 255)
        {
          *(v41 + 72) = *(v42 + 72);
          *(v41 + 88) = *(v42 + 88);
          *(v41 + 104) = *(v42 + 104);
          v41[120] = v42[120];
        }

        else
        {
          v75 = *(v42 + 9);
          v76 = *(v42 + 10);
          v77 = *(v42 + 11);
          v78 = *(v42 + 12);
          v79 = *(v42 + 13);
          v80 = *(v42 + 14);
          v81 = v74 & 1;
          sub_21D0FB960(v75, v76, v77, v78, v79, v80, v74 & 1);
          *(v41 + 9) = v75;
          *(v41 + 10) = v76;
          *(v41 + 11) = v77;
          *(v41 + 12) = v78;
          *(v41 + 13) = v79;
          *(v41 + 14) = v80;
          v41[120] = v81;
        }

        a1 = v88;
        v41[121] = v42[121];
        v3 = v86;
        goto LABEL_86;
      }

LABEL_83:
      v59 = *(v42 + 5);
      *(v41 + 4) = *(v42 + 4);
      *(v41 + 5) = v59;
      *(v41 + 6) = *(v42 + 6);
      *(v41 + 106) = *(v42 + 106);
      v60 = *(v42 + 1);
      *v41 = *v42;
      *(v41 + 1) = v60;
      v61 = *(v42 + 3);
      *(v41 + 2) = *(v42 + 2);
      *(v41 + 3) = v61;
LABEL_86:
      a1[v39[6]] = v3[v39[6]];
      a1[v39[7]] = v3[v39[7]];
      a1[v39[8]] = v3[v39[8]];
      a1[v39[9]] = v3[v39[9]];
      a1[v39[10]] = v3[v39[10]];
      v62 = v39[11];
      v63 = *&v3[v62];
      *&a1[v62] = v63;
      v64 = v63;
      goto LABEL_117;
    case 2:
      v8 = *v3;
      *a1 = *v3;
      v9 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = *(v10 - 8);
      v12 = *(v11 + 48);
      v13 = v8;
      if (v12(&v3[v9], 1, v10))
      {
        goto LABEL_19;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 > 4)
      {
        if (v31 <= 7)
        {
          if (v31 == 5 || v31 == 6)
          {
            goto LABEL_102;
          }

          goto LABEL_115;
        }

        if (v31 != 8 && v31 != 9)
        {
          goto LABEL_115;
        }
      }

      else
      {
        if (v31 > 2)
        {
          goto LABEL_102;
        }

        if (v31 != 1)
        {
          if (v31 == 2)
          {
            goto LABEL_102;
          }

LABEL_115:
          memcpy(&a1[v9], &v3[v9], *(v11 + 64));
          goto LABEL_116;
        }
      }

      goto LABEL_101;
  }

LABEL_20:
  v23 = *(v6 + 64);

  return memcpy(a1, v3, v23);
}

void _s20MacOSListCasesInItemOwxx(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        return;
      }

      v3 = *(a1 + 16);
      goto LABEL_37;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload < 2)
  {
    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 4)
    {
      if (v6 <= 7)
      {
        if (v6 != 5 && v6 != 6)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      if (v6 != 8 && v6 != 9)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v6 > 2)
      {
        goto LABEL_29;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
LABEL_33:
          v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v10 = a1 + *(v9 + 20);
          if (*(v10 + 8))
          {

            sub_21D179EF0(*(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64));
            v11 = *(v10 + 120);
            if (v11 != 255)
            {
              sub_21D1078C0(*(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96), *(v10 + 104), *(v10 + 112), v11 & 1);
            }
          }

          v3 = *(a1 + *(v9 + 44));
          goto LABEL_37;
        }

LABEL_29:
        v8 = sub_21DBF563C();
        (*(*(v8 - 8) + 8))(a1, v8);
        goto LABEL_33;
      }
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 2)
  {
    return;
  }

LABEL_9:

  v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
  {
    return;
  }

  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        return;
      }

      goto LABEL_40;
    }

    if (v7 != 8 && v7 != 9)
    {
      return;
    }
  }

  else
  {
    if (v7 > 2)
    {
LABEL_40:
      v12 = sub_21DBF563C();
      v13 = *(*(v12 - 8) + 8);

      v13(a1 + v4, v12);
      return;
    }

    if (v7 != 1)
    {
      if (v7 != 2)
      {
        return;
      }

      goto LABEL_40;
    }
  }

  v3 = *(a1 + v4);
LABEL_37:
}

char *_s20MacOSListCasesInItemOwcp(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *a2;
        *a1 = *a2;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v18 = *(v10 + 48);
        v19 = v17;
        if (v18(&a2[v8], 1, v9))
        {
LABEL_17:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(&a1[v8], &a2[v8], *(*(v20 - 8) + 64));
          goto LABEL_115;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 > 4)
        {
          if (v28 <= 7)
          {
            if (v28 == 5 || v28 == 6)
            {
              break;
            }

            goto LABEL_113;
          }

          if (v28 != 8 && v28 != 9)
          {
            goto LABEL_113;
          }

          goto LABEL_99;
        }

        if (v28 > 2)
        {
          break;
        }

        if (v28 == 1)
        {
          goto LABEL_99;
        }

        if (v28 != 2)
        {
          goto LABEL_113;
        }

        break;
      case 4:
        v25 = *a2;
        *a1 = *a2;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v26 = *(v10 + 48);
        v27 = v25;
        if (v26(&a2[v8], 1, v9))
        {
          goto LABEL_17;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_113;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_113;
          }

          goto LABEL_99;
        }

        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            if (v30 == 2)
            {
              break;
            }

            goto LABEL_113;
          }

LABEL_99:
          v80 = *&a2[v8];
          *&a1[v8] = v80;
          v81 = v80;
          swift_storeEnumTagMultiPayload();
LABEL_114:
          (*(v10 + 56))(&a1[v8], 0, 1, v9);
          goto LABEL_115;
        }

        break;
      case 5:
        *a1 = *a2;
        a1[8] = a2[8];
        *(a1 + 9) = *(a2 + 9);
        v13 = *(a2 + 2);
        *(a1 + 2) = v13;
        v14 = v13;
LABEL_115:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        goto LABEL_18;
    }

LABEL_100:
    v82 = sub_21DBF563C();
    (*(*(v82 - 8) + 16))(&a1[v8], &a2[v8], v82);
    swift_storeEnumTagMultiPayload();
    goto LABEL_114;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_51:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 16))(a1, a2, v31);
          swift_storeEnumTagMultiPayload();
          goto LABEL_78;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_51;
          }

          goto LABEL_77;
        }

LABEL_54:
        v32 = *a2;
        *a1 = *a2;
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        goto LABEL_78;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_54;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_51;
      }

LABEL_77:
      memcpy(a1, a2, *(*(v15 - 8) + 64));
LABEL_78:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v38 = v37[5];
      v39 = &a1[v38];
      v40 = &a2[v38];
      v41 = *&a2[v38 + 8];
      if (v41)
      {
        v83 = a2;
        v85 = a1;
        *v39 = *v40;
        *(v39 + 1) = v41;
        v42 = *(v40 + 2);
        v43 = *(v40 + 3);
        v44 = *(v40 + 4);
        v45 = *(v40 + 5);
        v46 = *(v40 + 6);
        v47 = *(v40 + 7);
        v48 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v42, v43, v44, v45, v46, v47, v48);
        *(v39 + 2) = v42;
        *(v39 + 3) = v43;
        *(v39 + 4) = v44;
        *(v39 + 5) = v45;
        *(v39 + 6) = v46;
        *(v39 + 7) = v47;
        v39[64] = v48;
        *(v39 + 65) = *(v40 + 65);
        v49 = v40[120];
        if (v49 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v50 = *(v40 + 9);
          v51 = *(v40 + 10);
          v52 = *(v40 + 11);
          v53 = *(v40 + 12);
          v54 = *(v40 + 13);
          v55 = *(v40 + 14);
          v56 = v49 & 1;
          sub_21D0FB960(v50, v51, v52, v53, v54, v55, v49 & 1);
          *(v39 + 9) = v50;
          *(v39 + 10) = v51;
          *(v39 + 11) = v52;
          *(v39 + 12) = v53;
          *(v39 + 13) = v54;
          *(v39 + 14) = v55;
          v39[120] = v56;
        }

        a1 = v85;
        v39[121] = v40[121];
        a2 = v83;
        goto LABEL_84;
      }

      goto LABEL_81;
    case 1:
      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 4)
      {
        if (v24 > 2)
        {
LABEL_55:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(a1, a2, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_86;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_58:
        v35 = *a2;
        *a1 = *a2;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_86;
      }

      if (v24 > 7)
      {
        if (v24 == 8 || v24 == 9)
        {
          goto LABEL_58;
        }
      }

      else if (v24 == 5 || v24 == 6)
      {
        goto LABEL_55;
      }

LABEL_85:
      memcpy(a1, a2, *(*(v23 - 8) + 64));
LABEL_86:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v63 = v37[5];
      v39 = &a1[v63];
      v40 = &a2[v63];
      v64 = *&a2[v63 + 8];
      if (v64)
      {
        v84 = a2;
        v86 = a1;
        *v39 = *v40;
        *(v39 + 1) = v64;
        v65 = *(v40 + 2);
        v66 = *(v40 + 3);
        v67 = *(v40 + 4);
        v68 = *(v40 + 5);
        v69 = *(v40 + 6);
        v70 = *(v40 + 7);
        v71 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v65, v66, v67, v68, v69, v70, v71);
        *(v39 + 2) = v65;
        *(v39 + 3) = v66;
        *(v39 + 4) = v67;
        *(v39 + 5) = v68;
        *(v39 + 6) = v69;
        *(v39 + 7) = v70;
        v39[64] = v71;
        *(v39 + 65) = *(v40 + 65);
        v72 = v40[120];
        if (v72 == 255)
        {
          *(v39 + 72) = *(v40 + 72);
          *(v39 + 88) = *(v40 + 88);
          *(v39 + 104) = *(v40 + 104);
          v39[120] = v40[120];
        }

        else
        {
          v73 = *(v40 + 9);
          v74 = *(v40 + 10);
          v75 = *(v40 + 11);
          v76 = *(v40 + 12);
          v77 = *(v40 + 13);
          v78 = *(v40 + 14);
          v79 = v72 & 1;
          sub_21D0FB960(v73, v74, v75, v76, v77, v78, v72 & 1);
          *(v39 + 9) = v73;
          *(v39 + 10) = v74;
          *(v39 + 11) = v75;
          *(v39 + 12) = v76;
          *(v39 + 13) = v77;
          *(v39 + 14) = v78;
          v39[120] = v79;
        }

        a1 = v86;
        v39[121] = v40[121];
        a2 = v84;
        goto LABEL_84;
      }

LABEL_81:
      v57 = *(v40 + 5);
      *(v39 + 4) = *(v40 + 4);
      *(v39 + 5) = v57;
      *(v39 + 6) = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      v58 = *(v40 + 1);
      *v39 = *v40;
      *(v39 + 1) = v58;
      v59 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v59;
LABEL_84:
      a1[v37[6]] = a2[v37[6]];
      a1[v37[7]] = a2[v37[7]];
      a1[v37[8]] = a2[v37[8]];
      a1[v37[9]] = a2[v37[9]];
      a1[v37[10]] = a2[v37[10]];
      v60 = v37[11];
      v61 = *&a2[v60];
      *&a1[v60] = v61;
      v62 = v61;
      goto LABEL_115;
    case 2:
      v7 = *a2;
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(&a2[v8], 1, v9))
      {
        goto LABEL_17;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_100;
          }

          goto LABEL_113;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (v29 > 2)
        {
          goto LABEL_100;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_100;
          }

LABEL_113:
          memcpy(&a1[v8], &a2[v8], *(v10 + 64));
          goto LABEL_114;
        }
      }

      goto LABEL_99;
  }

LABEL_18:
  v21 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v21);
}

char *_s20MacOSListCasesInItemOwca(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v5 = a2;
  sub_21D106CD8(a1, type metadata accessor for TTRRemindersListViewModel.Item.MacOSListCasesInItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = *v5;
        *v3 = *v5;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v18 = *(v10 + 48);
        v19 = v17;
        if (v18(&v5[v8], 1, v9))
        {
LABEL_18:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(&v3[v8], &v5[v8], *(*(v20 - 8) + 64));
          goto LABEL_116;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 > 4)
        {
          if (v28 <= 7)
          {
            if (v28 == 5 || v28 == 6)
            {
              break;
            }

            goto LABEL_114;
          }

          if (v28 != 8 && v28 != 9)
          {
            goto LABEL_114;
          }

          goto LABEL_100;
        }

        if (v28 > 2)
        {
          break;
        }

        if (v28 == 1)
        {
          goto LABEL_100;
        }

        if (v28 != 2)
        {
          goto LABEL_114;
        }

        break;
      case 4:
        v25 = *v5;
        *v3 = *v5;
        v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v10 = *(v9 - 8);
        v26 = *(v10 + 48);
        v27 = v25;
        if (v26(&v5[v8], 1, v9))
        {
          goto LABEL_18;
        }

        v30 = swift_getEnumCaseMultiPayload();
        if (v30 > 4)
        {
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              break;
            }

            goto LABEL_114;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_114;
          }

          goto LABEL_100;
        }

        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            if (v30 == 2)
            {
              break;
            }

            goto LABEL_114;
          }

LABEL_100:
          v87 = *&v5[v8];
          *&v3[v8] = v87;
          v88 = v87;
          swift_storeEnumTagMultiPayload();
LABEL_115:
          (*(v10 + 56))(&v3[v8], 0, 1, v9);
          goto LABEL_116;
        }

        break;
      case 5:
        *v3 = *v5;
        v3[8] = v5[8];
        v3[9] = v5[9];
        v3[10] = v5[10];
        v13 = *(v5 + 2);
        *(v3 + 2) = v13;
        v14 = v13;
LABEL_116:
        swift_storeEnumTagMultiPayload();
        return v3;
      default:
        goto LABEL_19;
    }

LABEL_101:
    v89 = sub_21DBF563C();
    (*(*(v89 - 8) + 16))(&v3[v8], &v5[v8], v89);
    swift_storeEnumTagMultiPayload();
    goto LABEL_115;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = swift_getEnumCaseMultiPayload();
      if (v16 <= 4)
      {
        if (v16 > 2)
        {
LABEL_52:
          v31 = sub_21DBF563C();
          (*(*(v31 - 8) + 16))(v3, v5, v31);
          swift_storeEnumTagMultiPayload();
          goto LABEL_79;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            goto LABEL_52;
          }

          goto LABEL_78;
        }

LABEL_55:
        v32 = *v5;
        *v3 = *v5;
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }

      if (v16 > 7)
      {
        if (v16 == 8 || v16 == 9)
        {
          goto LABEL_55;
        }
      }

      else if (v16 == 5 || v16 == 6)
      {
        goto LABEL_52;
      }

LABEL_78:
      memcpy(v3, v5, *(*(v15 - 8) + 64));
LABEL_79:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v38 = v37[5];
      v39 = &v3[v38];
      v40 = &v5[v38];
      if (*&v5[v38 + 8])
      {
        v90 = v5;
        v92 = v3;
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v41 = *(v40 + 2);
        v42 = *(v40 + 3);
        v43 = *(v40 + 4);
        v44 = *(v40 + 5);
        v46 = *(v40 + 6);
        v45 = *(v40 + 7);
        v47 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v41, v42, v43, v44, v46, v45, v47);
        *(v39 + 2) = v41;
        *(v39 + 3) = v42;
        *(v39 + 4) = v43;
        *(v39 + 5) = v44;
        *(v39 + 6) = v46;
        *(v39 + 7) = v45;
        v39[64] = v47;
        v39[65] = v40[65];
        v39[66] = v40[66];
        v39[67] = v40[67];
        v39[68] = v40[68];
        v48 = v40[120];
        if (v48 == 255)
        {
          v62 = *(v40 + 72);
          v63 = *(v40 + 88);
          v64 = *(v40 + 104);
          v39[120] = v40[120];
          *(v39 + 104) = v64;
          *(v39 + 88) = v63;
          *(v39 + 72) = v62;
        }

        else
        {
          v49 = *(v40 + 9);
          v50 = *(v40 + 10);
          v51 = *(v40 + 11);
          v52 = *(v40 + 12);
          v53 = *(v40 + 13);
          v54 = *(v40 + 14);
          v55 = v48 & 1;
          sub_21D0FB960(v49, v50, v51, v52, v53, v54, v48 & 1);
          *(v39 + 9) = v49;
          *(v39 + 10) = v50;
          *(v39 + 11) = v51;
          *(v39 + 12) = v52;
          *(v39 + 13) = v53;
          *(v39 + 14) = v54;
          v39[120] = v55;
        }

        v3 = v92;
        v39[121] = v40[121];
        v5 = v90;
        goto LABEL_85;
      }

      goto LABEL_82;
    case 1:
      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 4)
      {
        if (v24 > 2)
        {
LABEL_56:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 16))(v3, v5, v34);
          swift_storeEnumTagMultiPayload();
          goto LABEL_87;
        }

        if (v24 != 1)
        {
          if (v24 == 2)
          {
            goto LABEL_56;
          }

          goto LABEL_86;
        }

LABEL_59:
        v35 = *v5;
        *v3 = *v5;
        v36 = v35;
        swift_storeEnumTagMultiPayload();
        goto LABEL_87;
      }

      if (v24 > 7)
      {
        if (v24 == 8 || v24 == 9)
        {
          goto LABEL_59;
        }
      }

      else if (v24 == 5 || v24 == 6)
      {
        goto LABEL_56;
      }

LABEL_86:
      memcpy(v3, v5, *(*(v23 - 8) + 64));
LABEL_87:
      v37 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v68 = v37[5];
      v39 = &v3[v68];
      v40 = &v5[v68];
      if (*&v5[v68 + 8])
      {
        v91 = v5;
        v93 = v3;
        *v39 = *v40;
        *(v39 + 1) = *(v40 + 1);
        v69 = *(v40 + 2);
        v70 = *(v40 + 3);
        v71 = *(v40 + 4);
        v72 = *(v40 + 5);
        v74 = *(v40 + 6);
        v73 = *(v40 + 7);
        v75 = v40[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v69, v70, v71, v72, v74, v73, v75);
        *(v39 + 2) = v69;
        *(v39 + 3) = v70;
        *(v39 + 4) = v71;
        *(v39 + 5) = v72;
        *(v39 + 6) = v74;
        *(v39 + 7) = v73;
        v39[64] = v75;
        v39[65] = v40[65];
        v39[66] = v40[66];
        v39[67] = v40[67];
        v39[68] = v40[68];
        v76 = v40[120];
        if (v76 == 255)
        {
          v84 = *(v40 + 72);
          v85 = *(v40 + 88);
          v86 = *(v40 + 104);
          v39[120] = v40[120];
          *(v39 + 104) = v86;
          *(v39 + 88) = v85;
          *(v39 + 72) = v84;
        }

        else
        {
          v77 = *(v40 + 9);
          v78 = *(v40 + 10);
          v79 = *(v40 + 11);
          v80 = *(v40 + 12);
          v81 = *(v40 + 13);
          v82 = *(v40 + 14);
          v83 = v76 & 1;
          sub_21D0FB960(v77, v78, v79, v80, v81, v82, v76 & 1);
          *(v39 + 9) = v77;
          *(v39 + 10) = v78;
          *(v39 + 11) = v79;
          *(v39 + 12) = v80;
          *(v39 + 13) = v81;
          *(v39 + 14) = v82;
          v39[120] = v83;
        }

        v3 = v93;
        v39[121] = v40[121];
        v5 = v91;
        goto LABEL_85;
      }

LABEL_82:
      v56 = *v40;
      v57 = *(v40 + 1);
      v58 = *(v40 + 3);
      *(v39 + 2) = *(v40 + 2);
      *(v39 + 3) = v58;
      *v39 = v56;
      *(v39 + 1) = v57;
      v59 = *(v40 + 4);
      v60 = *(v40 + 5);
      v61 = *(v40 + 6);
      *(v39 + 106) = *(v40 + 106);
      *(v39 + 5) = v60;
      *(v39 + 6) = v61;
      *(v39 + 4) = v59;
LABEL_85:
      v3[v37[6]] = v5[v37[6]];
      v3[v37[7]] = v5[v37[7]];
      v3[v37[8]] = v5[v37[8]];
      v3[v37[9]] = v5[v37[9]];
      v3[v37[10]] = v5[v37[10]];
      v65 = v37[11];
      v66 = *&v5[v65];
      *&v3[v65] = v66;
      v67 = v66;
      goto LABEL_116;
    case 2:
      v7 = *v5;
      *v3 = *v5;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      v12 = v7;
      if (v11(&v5[v8], 1, v9))
      {
        goto LABEL_18;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 > 4)
      {
        if (v29 <= 7)
        {
          if (v29 == 5 || v29 == 6)
          {
            goto LABEL_101;
          }

          goto LABEL_114;
        }

        if (v29 != 8 && v29 != 9)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v29 > 2)
        {
          goto LABEL_101;
        }

        if (v29 != 1)
        {
          if (v29 == 2)
          {
            goto LABEL_101;
          }

LABEL_114:
          memcpy(&v3[v8], &v5[v8], *(v10 + 64));
          goto LABEL_115;
        }
      }

      goto LABEL_100;
  }

LABEL_19:
  v21 = *(*(a3 - 8) + 64);

  return memcpy(v3, v5, v21);
}

void *sub_21D705BAC(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

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
LABEL_54:
        v21 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v22 = v21[5];
        v23 = (a1 + v22);
        v24 = (a2 + v22);
        v25 = v24[3];
        v23[2] = v24[2];
        v23[3] = v25;
        v26 = v24[1];
        *v23 = *v24;
        v23[1] = v26;
        *(v23 + 106) = *(v24 + 106);
        v27 = v24[6];
        v23[5] = v24[5];
        v23[6] = v27;
        v23[4] = v24[4];
        *(a1 + v21[6]) = *(a2 + v21[6]);
        *(a1 + v21[7]) = *(a2 + v21[7]);
        *(a1 + v21[8]) = *(a2 + v21[8]);
        *(a1 + v21[9]) = *(a2 + v21[9]);
        *(a1 + v21[10]) = *(a2 + v21[10]);
        *(a1 + v21[11]) = *(a2 + v21[11]);
        goto LABEL_76;
      }
    }

    else
    {
      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
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
        goto LABEL_13;
      }
    }

    memcpy(a1, a2, *(*(v10 - 8) + 64));
    goto LABEL_54;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        goto LABEL_17;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 <= 3)
      {
        if (v17 == 2 || v17 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v17 == 4 || v17 == 5 || v17 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    case 3:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
LABEL_17:
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v7, a2 + v7, *(*(v13 - 8) + 64));
LABEL_76:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_46;
      }

      goto LABEL_74;
    case 4:
      *a1 = *a2;
      v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(a2 + v7, 1, v8))
      {
        goto LABEL_17;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 3)
      {
        if (v19 == 2 || v19 == 3)
        {
          goto LABEL_46;
        }
      }

      else if (v19 == 4 || v19 == 5 || v19 == 6)
      {
LABEL_46:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 32))(a1 + v7, a2 + v7, v20);
        swift_storeEnumTagMultiPayload();
LABEL_75:
        (*(v9 + 56))(a1 + v7, 0, 1, v8);
        goto LABEL_76;
      }

LABEL_74:
      memcpy(a1 + v7, a2 + v7, *(v9 + 64));
      goto LABEL_75;
  }

LABEL_23:
  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *sub_21D7069A0(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D106CD8(a1, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_24;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      if (v12 <= 3)
      {
        if (v12 == 2 || v12 == 3)
        {
          goto LABEL_14;
        }
      }

      else if (v12 == 4 || v12 == 5 || v12 == 6)
      {
LABEL_14:
        v13 = sub_21DBF563C();
        (*(*(v13 - 8) + 32))(a1, a2, v13);
        swift_storeEnumTagMultiPayload();
LABEL_55:
        v22 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v23 = v22[5];
        v24 = (a1 + v23);
        v25 = (a2 + v23);
        v26 = v25[3];
        v24[2] = v25[2];
        v24[3] = v26;
        v27 = v25[1];
        *v24 = *v25;
        v24[1] = v27;
        *(v24 + 106) = *(v25 + 106);
        v28 = v25[6];
        v24[5] = v25[5];
        v24[6] = v28;
        v24[4] = v25[4];
        *(a1 + v22[6]) = *(a2 + v22[6]);
        *(a1 + v22[7]) = *(a2 + v22[7]);
        *(a1 + v22[8]) = *(a2 + v22[8]);
        *(a1 + v22[9]) = *(a2 + v22[9]);
        *(a1 + v22[10]) = *(a2 + v22[10]);
        *(a1 + v22[11]) = *(a2 + v22[11]);
        goto LABEL_77;
      }
    }

    else
    {
      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 <= 3)
      {
        if (v15 == 2 || v15 == 3)
        {
          goto LABEL_14;
        }
      }

      else if (v15 == 4 || v15 == 5 || v15 == 6)
      {
        goto LABEL_14;
      }
    }

    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_55;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 <= 3)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v18 == 4 || v18 == 5 || v18 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_75;
    case 3:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
LABEL_18:
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v8, a2 + v8, *(*(v14 - 8) + 64));
LABEL_77:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 3)
      {
        if (v19 == 2 || v19 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v19 == 4 || v19 == 5 || v19 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_75;
    case 4:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(a2 + v8, 1, v9))
      {
        goto LABEL_18;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 <= 3)
      {
        if (v20 == 2 || v20 == 3)
        {
          goto LABEL_47;
        }
      }

      else if (v20 == 4 || v20 == 5 || v20 == 6)
      {
LABEL_47:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 32))(a1 + v8, a2 + v8, v21);
        swift_storeEnumTagMultiPayload();
LABEL_76:
        (*(v10 + 56))(a1 + v8, 0, 1, v9);
        goto LABEL_77;
      }

LABEL_75:
      memcpy(a1 + v8, a2 + v8, *(v10 + 64));
      goto LABEL_76;
  }

LABEL_24:
  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}