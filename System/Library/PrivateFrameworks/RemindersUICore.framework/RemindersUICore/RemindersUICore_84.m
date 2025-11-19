uint64_t TTRShowSiriFoundInAppsDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
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

uint64_t TTRShowSiriFoundInAppsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = sub_21DBF773C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  *&v13[*(v8 + 48)] = a3;
  v57 = v4;
  v16 = *(v4 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
  if (!v16)
  {
    v26 = a3;
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0);
  }

  v17 = a3;
  if (v16 != a1)
  {
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0);
  }

  v18 = v17;
  v19 = sub_21DBF6E3C();
  sub_21D4F5F28(v19);
  v21 = v20;

  v55 = v13;
  if (a3)
  {
    v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v23 = v57;
    swift_beginAccess();
    if (*(v23 + v22))
    {
      v24 = v18;

      sub_21D4F9F64(v24, v21);

      v25 = v57;
    }

    else
    {
      v27 = *(v23 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900);
      v28 = v18;
      v29 = sub_21DBFB12C();
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      v31 = sub_21D87E81C(v27, sub_21D1947D8, v30, v28, v29);
      *(v57 + v22) = v31;

      v25 = v57;

      swift_beginAccess();
      v31[3] = &protocol witness table for TTRShowSiriFoundInAppsDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = v55;
  }

  else
  {

    v25 = v57;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5C2A0);

  v32 = sub_21DBF716C();
  (*(v15 + 8))(v10, v14);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_30:

LABEL_31:
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_21DBFBEEC();
    v58 = *v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8);
    v49 = sub_21DBFA1AC();
    v51 = v50;

    v58 = v49;
    v59 = v51;
    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
    v52 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v52);
    *(&v54 - 4) = v25;
    *(&v54 - 3) = v13;
    *(&v54 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v13, &qword_27CE5C2A0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v33 = sub_21DBFBD7C();
  if (!v33)
  {

    v35 = MEMORY[0x277D84F90];
LABEL_21:
    v13 = v55;
    v25 = v57;
    if (*(v35 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v43 = sub_21DBFC40C();
    }

    else
    {
      v43 = MEMORY[0x277D84F98];
    }

    v60[0] = v43;
    v44 = sub_21DBF8E0C();
    sub_21D1931C0(v44, 1, v60);

    v45 = v60[0];
    v46 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v25 + v46))
    {

      sub_21D188810(v45);
      v48 = v47;

      TTRBatchFetchManager<A>.override(objects:)(v48);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v60[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v60[0];
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223D44740](v34, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = [v36 objectID];
      v60[0] = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = v38;
        sub_21D18E6B8((v39 > 1), v40 + 1, 1);
        v38 = v42;
        v35 = v60[0];
      }

      ++v34;
      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
    }

    while (v33 != v34);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D8C796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
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

uint64_t sub_21D8C7A38()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
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

uint64_t sub_21D8C7AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0) + 48));

  return TTRShowSiriFoundInAppsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowSiriFoundInAppsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D8C7C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
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

void TTRShowSiriFoundInAppsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE636B0);
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
    *(v5 + 14) = sub_21D0CDFB4(0x6E756F4669726973, 0xEF737070416E4964, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSiriFoundInAppsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.init(store:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v7 = sub_21DBF70DC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = a3;
  return v3;
}

char *TTRShowSiriFoundInAppsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v50 = a2;
  v5 = v4;
  v49 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A8);
  MEMORY[0x28223BE20](v46);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  v10 = sub_21DBF71BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v52 = &v43 - v15;
  v53 = sub_21DBF734C();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  sub_21DBFC83C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_21D0CF7E0(v21, &qword_27CE5C2B0);
    if (a4)
    {
      v23 = v5;
      v24 = *(v5 + 16);
      v25 = 0;
LABEL_6:
      v29 = MEMORY[0x277D45508];
      v30 = v16;
      goto LABEL_10;
    }

    v25 = 0;
    goto LABEL_8;
  }

  v26 = *(v22 + 48);
  v27 = a4;
  v25 = *&v21[v26];
  v28 = sub_21DBF773C();
  (*(*(v28 - 8) + 8))(v21, v28);
  if ((v27 & 1) == 0)
  {
LABEL_8:
    v23 = v5;
    v24 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v23 = v5;
  v24 = *(v5 + 16);
  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_9:
  v30 = v16;
  v29 = MEMORY[0x277D454F8];
LABEL_10:
  v31 = v10;
  *v18 = *(v23 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount);
  v32 = v30;
  (*(v30 + 104))(v18, *v29, v53);
  (*(v11 + 104))(v13, *MEMORY[0x277D45470], v31);
  v33 = v51;
  v34 = v52;
  sub_21DBF74AC();
  v35 = v25;
  if (v33)
  {

    (*(v11 + 8))(v13, v31);
  }

  else
  {
    (*(v11 + 8))(v13, v31);
    v51 = 0;
    v37 = v45;
    v36 = v46;
    v38 = *(v46 + 48);
    v39 = v48;
    v43 = v35;
    sub_21DBF76DC();
    *(v39 + v38) = sub_21DBF76BC();
    v40 = v47;
    sub_21D0D3954(v39, v47, &qword_27CE5C2A8);
    v13 = *(v40 + *(v36 + 48));
    v41 = sub_21DBF773C();
    (*(*(v41 - 8) + 32))(v49, v40, v41);
    sub_21DBF76CC();

    sub_21D0CF7E0(v39, &qword_27CE5C2A8);
    (*(v44 + 8))(v34, v37);
  }

  (*(v32 + 8))(v18, v53);
  return v13;
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8C8660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowSiriFoundInAppsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D8C86BC(uint64_t a1)
{
  v36 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v38 = sub_21DBF773C();
  MEMORY[0x28223BE20](v38);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v37 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
  if (v18)
  {
    v34 = v2;
    v35 = v15;
    v32 = v5;
    v33 = v3;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v8, &qword_27CE5C298);
    sub_21DBFC83C();
    sub_21D0CF7E0(v8, &qword_27CE5C298);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
    if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE5C2B0);
    }

    else
    {

      v21 = *(v35 + 32);
      v22 = v38;
      v21(v13, v11, v38);
      v21(v17, v13, v22);
      v41 = v36;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80);
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v37;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

      v27 = v32;
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

      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v25;
      *(&v32 - 3) = v17;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      (*(v33 + 8))(v27, v34);
      (*(v35 + 8))(v17, v22);
    }
  }
}

uint64_t sub_21D8C8D18(void *a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v3 + 16) = a3;
  v10 = a1;

  sub_21D8C62E0();

  (*(v9 + 8))(a2, v8);
  return v3;
}

void sub_21D8C8E30(void *a1)
{
  if (qword_27CE56E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE636B0);
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
    *(v5 + 14) = sub_21D0CDFB4(0x6E756F4669726973, 0xEF737070416E4964, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSiriFoundInAppsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D8C91F8()
{
  result = sub_21DBF70DC();
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

uint64_t sub_21D8C92F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void TTRReminderLocationPickerModel.item(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *v3;
  v31 = *(*v3 + 16);
  if (v31)
  {
    v4 = a2;
    v5 = 0;
    v6 = (v32 + 80);
    while (v5 < *(v32 + 16))
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 5);
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v14 = v13 >> 5;
      v33 = v10;
      v34 = v9;
      if (v13 >> 5 > 2)
      {
        if (v14 == 3)
        {
          sub_21D5800C8(v7, v8, v9, v10, v11, v12, v13);
          v15 = sub_21D8CA438(v7);
          v16 = v26;
        }

        else if (v14 == 4)
        {
          sub_21D5800C8(v7, v8, v9, v10, v11, v12, v13);
          v17 = [v7 title];
          v18 = sub_21DBFA16C();
          v20 = v19;

          v36 = v18;
          v37 = v20;
          MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
          v21 = [v7 subtitle];
          v22 = sub_21DBFA16C();
          v24 = v23;

          MEMORY[0x223D42AA0](v22, v24);
          v4 = a2;

          v15 = v36;
          v16 = v37;
        }

        else
        {
          if (v13 == 160 && (v8 | v7 | v9 | v10 | v11 | v12) == 0)
          {
            v16 = 0xEC0000007265746ELL;
          }

          else
          {
            v16 = 0xEB00000000746978;
          }

          v15 = 0x45656C6369686576;
        }
      }

      else if (v14)
      {
        sub_21D5800C8(v7, v8, v9, v10, v11, v12, v13);
        sub_21DBF8E0C();
        v15 = v7;
        v16 = v8;
      }

      else
      {
        v25 = v7;
        v15 = 0x4C746E6572727563;
        v16 = 0xEF6E6F697461636FLL;
      }

      if (v15 == a1 && v16 == v4)
      {

LABEL_25:
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v34;
        *(a3 + 24) = v33;
        *(a3 + 32) = v11;
        *(a3 + 40) = v12;
        *(a3 + 48) = v13;
        return;
      }

      v28 = sub_21DBFC64C();

      if (v28)
      {
        goto LABEL_25;
      }

      ++v5;
      sub_21D5801B4(v7, v8, v34, v33, v11, v12, v13);
      v6 += 56;
      if (v31 == v5)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = -2;
  }
}

void TTRReminderLocationPickerModel.Item.geoServiceAddress.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48) >> 5;
  if (v2 > 2)
  {
    if (v2 != 3 && v2 == 4)
    {
      v6 = *v1;
      *a1 = *v1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2;
      v4 = v6;
      return;
    }

LABEL_10:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 40);
  if (v2 == 1)
  {
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = v3;
  }

  else
  {
    *a1 = *(v1 + 32);
    *(a1 + 8) = v3;
    *(a1 + 16) = 1;
    sub_21DBF8E0C();
  }
}

unint64_t TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = *(v0 + 24);
  v26 = *(v0 + 16);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = v12 >> 5;
  if (v12 >> 5 <= 2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (v11)
        {
          v14 = sub_21DBFA12C();
        }

        else
        {
          v14 = 0;
        }

        v23 = [objc_opt_self() ttr:v14 localizedAddressTitleForLabel:v26 contact:?];

        v16 = sub_21DBFA16C();
        sub_21D8CA7E4(v10);
      }

      else
      {
        v22 = v3;
        sub_21DBF8E0C();
        sub_21DBF4C8C();
        v27 = v11;
        v28 = v10;
        sub_21D176F0C();
        v27 = sub_21DBFBB0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
        sub_21D1ADAA8();
        sub_21DBFA07C();
        (*(v2 + 8))(v6, v22);

        return v26;
      }
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF516C();
      if (v7)
      {
        v19 = v26;
        v25 = v18;
        sub_21D5800C8(v7, v8, v26, v9, v11, v10, v12);
        sub_21D8CAAE8(v7, 1);
        sub_21D5801B4(v7, v8, v19, v9, v11, v10, v12);
        return v25;
      }

      else
      {
        sub_21DBF516C();
        return v18;
      }
    }

    return v16;
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v15 = [v7 title];
      v16 = sub_21DBFA16C();

      v17 = [v7 subtitle];
      sub_21DBFA16C();

      return v16;
    }

    if (v26 | v8 | v7 | v9 | v11 | *(v0 + 40) || v12 != 160)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_21:
        v16 = sub_21DBF516C();
        sub_21DBF516C();
        return v16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_21;
    }

    swift_once();
    goto LABEL_21;
  }

  v20 = [v7 name];
  if (v20)
  {
    v21 = v20;
    v16 = sub_21DBFA16C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF516C();
  }

  sub_21D8CAAE8(v7, 0);
  return v16;
}

uint64_t TTRReminderLocationPickerModel.Item.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return sub_21D8CA438(*v0);
    }

    else if (v2 == 4)
    {
      v4 = [*v0 title];
      v5 = sub_21DBFA16C();

      v10 = v5;
      MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
      v6 = [v1 subtitle];
      v7 = sub_21DBFA16C();
      v9 = v8;

      MEMORY[0x223D42AA0](v7, v9);

      return v10;
    }

    else
    {
      return 0x45656C6369686576;
    }
  }

  else if (v2)
  {
    sub_21DBF8E0C();
    return v1;
  }

  else
  {
    return 0x4C746E6572727563;
  }
}

uint64_t TTRReminderLocationPickerModel.Item.accessibilityIdentifier.getter()
{
  v1 = v0->i64[0];
  v2 = v0[3].u8[0];
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      return sub_21D8CA438(v0->i64[0]);
    }

    else if (v3 == 4)
    {
      v5 = [v0->i64[0] title];
      v6 = sub_21DBFA16C();

      v14 = v6;
      MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
      v7 = [v1 subtitle];
      v8 = sub_21DBFA16C();
      v10 = v9;

      MEMORY[0x223D42AA0](v8, v10);

      return v14;
    }

    else
    {
      v11 = vorrq_s8(v0[1], v0[2]);
      v12 = v1 | *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v0->i64[1];
      if (v2 == 160 && v12 == 0)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v3)
  {
    sub_21DBF8E0C();
    return v1;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t TTRReminderLocationPickerModel.Placemark.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v7 = 0x616D6563616C702ELL;
    v2 = [v1 description];
    v3 = sub_21DBFA16C();
    v5 = v4;

    MEMORY[0x223D42AA0](v3, v5);

    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v7 = 0;
    MEMORY[0x223D42AA0](0x28726F7272652ELL, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21DBFC14C();
LABEL_5:
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return v7;
  }

  if (v1)
  {
    return 0x64616F4C746F6E2ELL;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t TTRReminderLocationPickerModel.Placemark.normalizedMapRegionForLocationTrigger.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  v3 = *v0;
  v4 = sub_21DBFADDC();
  sub_21D57EF34(v2, 0);
  return v4;
}

unint64_t TTRReminderLocationPickerModel.Item.titleForLocationTrigger.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  if (!(v7 >> 5) || v7 >> 5 == 5 && (!(v3 | v2 | v1 | v4 | v5 | v6) && v7 == 160 || v7 == 160 && v1 == 1 && !(v3 | v2 | v4 | v5 | v6)))
  {
    TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v9 = v8;
  }

  else
  {
    v9 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
  }

  return v9;
}

id TTRReminderLocationPickerModel.Placemark.clPlacemark.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void TTRReminderLocationPickerModel.Placemark.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((v6 >> 61) > 2)
  {
    if (v6 >> 61 == 3)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    }

    v9 = v8;
    v7 = 1;
  }

  else
  {
    if ((v6 >> 61) >= 2)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 2;
    v8 = 1;
  }

  sub_21D47B42C(v3, v4, v5, v6);
  v3 = v8;
LABEL_9:
  *a2 = v3;
  *(a2 + 8) = v7;
}

uint64_t sub_21D8CA438(void *a1)
{
  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0xE800000000000000;
    v4 = 0x64656C7469746E55;
  }

  v7 = [a1 location];
  if (v7)
  {
    v8 = v7;
    [v7 coordinate];
  }

  sub_21DBFAA2C();
  MEMORY[0x223D42AA0](44, 0xE100000000000000);
  v9 = [a1 location];
  if (v9)
  {
    v10 = v9;
    [v9 coordinate];
  }

  sub_21DBFAA2C();
  v11 = [a1 region];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      [v13 radius];
    }
  }

  MEMORY[0x223D42AA0](v15, 0xE000000000000000);

  MEMORY[0x223D42AA0](64, 0xE100000000000000);
  sub_21DBFAA2C();
  MEMORY[0x223D42AA0](8250, 0xE200000000000000);
  MEMORY[0x223D42AA0](v4, v6);

  return 0;
}

uint64_t _s15RemindersUICore30TTRReminderLocationPickerModelV9PlacemarkO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 != 1)
    {
      if (v2)
      {
        if (v5 != 2 || v4 != 1)
        {
          goto LABEL_14;
        }
      }

      else if (v5 != 2 || v4 != 0)
      {
        goto LABEL_14;
      }

      sub_21D57ED3C(*a2, *(a2 + 8));
      v6 = 1;
      LOBYTE(v3) = 2;
      goto LABEL_23;
    }

    if (v5 == 1)
    {
      LOBYTE(v3) = 1;
      sub_21D57ED3C(*a2, 1u);
      sub_21D57ED3C(v2, 1u);
      v6 = 1;
      goto LABEL_23;
    }

LABEL_14:
    sub_21D57ED3C(*a2, *(a2 + 8));
    sub_21D57ED3C(v2, v3);
    v6 = 0;
    goto LABEL_23;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  sub_21D57ED3C(*a2, 0);
  sub_21D57ED3C(v2, 0);
  sub_21D57ED3C(v4, 0);
  sub_21D57ED3C(v2, 0);
  v7 = sub_21D8CA438(v2);
  v9 = v8;
  if (v7 == sub_21D8CA438(v4) && v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21DBFC64C();
  }

  sub_21D57EF34(v4, 0);
  sub_21D57EF34(v2, 0);
  LOBYTE(v3) = 0;
  LOBYTE(v5) = 0;
LABEL_23:
  sub_21D57EF34(v2, v3);
  sub_21D57EF34(v4, v5);
  return v6 & 1;
}

uint64_t sub_21D8CA7E4(uint64_t a1)
{
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() stringFromPostalAddress:a1 style:0];
  v7 = sub_21DBFA16C();
  v9 = v8;

  sub_21DBF4C8C();
  v13[0] = v7;
  v13[1] = v9;
  sub_21D176F0C();
  v10 = sub_21DBFBB0C();

  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v11 = sub_21DBFA07C();
  (*(v3 + 8))(v5, v2);

  return v11;
}

uint64_t sub_21D8CA968(void *a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D20;
  [a1 coordinate];
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v5;
  [a1 coordinate];
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = v6;
  v7 = sub_21DBFA13C();

  return v7;
}

uint64_t sub_21D8CAAE8(void *a1, char a2)
{
  v4 = [a1 postalAddress];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21D8CA7E4(v4);
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }
  }

  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v6 = sub_21DBFA16C();
    v13 = v12;

    if (a2)
    {
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        return v6;
      }
    }
  }

  v15 = [a1 location];
  if (v15)
  {
    v16 = v15;
    v6 = sub_21D8CA968(v15);
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      return v6;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t initializeWithCopy for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D5800C8(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D5800C8(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_21D5801B4(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_21D5801B4(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderLocationPickerModel.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 49))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 48) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderLocationPickerModel.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_21D8CAEFC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_21D8CAF28(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 48) = *(result + 48) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -96;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderLocationPickerModel.Placemark(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D57ED3C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D57EF34(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRReminderLocationPickerModel.Placemark(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D57EF34(v4, v5);
  return a1;
}

uint64_t sub_21D8CB02C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63718);
  v1 = __swift_project_value_buffer(v0, qword_27CE63718);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8CB144(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v8 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }

  return swift_unknownObjectRelease();
}

void (*sub_21D8CB2F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D8CB390;
}

void sub_21D8CB390(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v3[3] = *v3[5];
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
      sub_21DBFA1AC();
      MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
      v8 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();
    }
  }

  free(v3);
}

void sub_21D8CB54C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D8CB5AC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowCustomSmartListDataModelSource.__allocating_init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, _BYTE *a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v39) = a5;
  v11 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList) = 0;
  v13 = &qword_27CE63000;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v11 + v12) = a2;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted) = a3;
  sub_21D0D32E4(a6, v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = &qword_27CE63000;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  v25 = v11 + v22;
  v26 = a4;
  (*(v24 + 16))(v25, a4, v23);
  *(v11 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v11 + 16) = v39 & 1;
  if (a2)
  {
    v27 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v40 = a2;
    v41 = 1;
    v28 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
    v29 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
    v30 = __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v28);
    v39 = &v39;
    v31 = MEMORY[0x28223BE20](v30);
    v32 = v26;
    v34 = &v39 - v33;
    (*(v35 + 16))(&v39 - v33, v31);
    v36 = *(v29 + 8);

    a2 = sub_21D6F1094(&v40, v34, v27, v28, v36);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(v32, v23);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = &qword_27CE63000;
    v20 = &qword_27CE63000;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(a4, v23);
  }

  *(v11 + v13[230]) = a2;

  v37 = *(v11 + v20[234]);
  swift_beginAccess();
  *(v37 + 24) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t TTRShowCustomSmartListDataModelSource.init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v39) = a5;
  v11 = *a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList) = 0;
  v13 = &qword_27CE63000;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v12) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted) = v11;
  sub_21D0D32E4(a6, v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = &qword_27CE63000;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  v25 = v6 + v22;
  v26 = a4;
  (*(v24 + 16))(v25, a4, v23);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v39 & 1;
  if (a2)
  {
    v27 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v40 = a2;
    v41 = 1;
    v28 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
    v29 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
    v30 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v28);
    v39 = &v39;
    v31 = MEMORY[0x28223BE20](v30);
    v32 = v26;
    v34 = &v39 - v33;
    (*(v35 + 16))(&v39 - v33, v31);
    v36 = *(v29 + 8);

    a2 = sub_21D6F1094(&v40, v34, v27, v28, v36);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(v32, v23);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = &qword_27CE63000;
    v20 = &qword_27CE63000;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(a4, v23);
  }

  *(v6 + v13[230]) = a2;

  v37 = *(v6 + v20[234]);
  swift_beginAccess();
  *(v37 + 24) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_21D8CBE24(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_27CE56E08;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE63718);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowCustomSmartListDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = sub_21D8CD56C(v6);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_27CE56E08 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE63718);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "TTRShowCustomSmartListDataModelSource start asynchronously", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = 10;
    sub_21D8CFD7C(&v16);
  }
}

void sub_21D8CC01C(void *a1, char a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;
  v14 = [v13 objectID];
  v15 = v14;
  if (v12)
  {
    v16 = [v12 objectID];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        v18 = sub_21DBFB63C();

        if (v18)
        {
          goto LABEL_13;
        }

LABEL_8:
        if (*(v2 + 16) == 1)
        {
          v19 = [v13 sortingStyle];
          v20 = sub_21DBFA16C();
          v22 = v21;
          if (v20 == sub_21DBFA16C() && v22 == v23)
          {
          }

          else
          {
            v24 = sub_21DBFC64C();

            if ((v24 & 1) == 0)
            {
              v27 = [v13 sortingStyle];
              sub_21DBFAF7C();

              goto LABEL_18;
            }
          }
        }

        sub_21DBF707C();
LABEL_18:
        v25 = v29;
        (*(v6 + 16))(v29, v10, v5);
        v26 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        (*(v6 + 40))(v2 + v26, v25, v5);
        swift_endAccess();
        v30[0] = 0;
        sub_21D8CFD7C(v30);

        (*(v6 + 8))(v10, v5);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v15 = v16;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (a2)
  {

    sub_21D852368();
  }
}

uint64_t sub_21D8CC3C4@<X0>(_OWORD *a1@<X8>)
{
  v68 = sub_21DBF773C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v60 - v5;
  v6 = sub_21DBF6C9C();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v70 = &v60 - v11;
  v73 = sub_21DBFB1AC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21DBF714C();
  v86 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21DBF734C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21DBF70DC();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63760);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58568);
  v80 = *(v22 - 8);
  v81 = v22;
  MEMORY[0x28223BE20](v22);
  v69 = &v60 - v23;
  v24 = sub_21DBF71BC();
  v78 = *(v24 - 8);
  v79 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  result = swift_beginAccess();
  v29 = *(v1 + v27);
  if (v29)
  {
    v76 = a1;
    v30 = v29;

    v31 = sub_21D8526E8(v26);

    v32 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    (*(v82 + 16))(v18, v1 + v32, v84);
    (*(v83 + 104))(v16, *MEMORY[0x277D45500], v85);
    v33 = v77;
    (*(v86 + 104))(v14, *MEMORY[0x277D45460], v77);
    sub_21DBF6CAC();
    v60 = v30;
    v61 = v31;
    v62 = v26;
    (*(v86 + 8))(v14, v33);
    (*(v83 + 8))(v16, v85);
    (*(v82 + 8))(v18, v84);
    v35 = v80;
    v34 = v81;
    (*(v80 + 56))(v21, 0, 1, v81);
    v36 = v69;
    (*(v35 + 32))();
    v37 = v70;
    v38 = sub_21DBF76DC();
    v39 = v72;
    MEMORY[0x223D3F430](v38);
    v40 = *(v74 + 8);
    v41 = v37;
    v42 = v75;
    v40(v41, v75);
    v43 = v71;
    v44 = v73;
    if ((*(v71 + 48))(v39, 1, v73) == 1)
    {

      (*(v35 + 8))(v36, v34);
      (*(v78 + 8))(v62, v79);
      result = sub_21D0CF7E0(v39, &qword_27CE58560);
      v45 = v76;
      v76[2] = 0u;
      v45[3] = 0u;
      *v45 = 0u;
      v45[1] = 0u;
    }

    else
    {
      v46 = v64;
      (*(v43 + 32))(v64, v39, v44);
      v47 = v63;
      v48 = sub_21DBF76DC();
      v49 = v66;
      MEMORY[0x223D3F440](v48);
      v40(v47, v42);
      v86 = sub_21DBF718C();
      (*(v67 + 8))(v49, v68);
      v50 = v36;
      v51 = v65;
      v52 = v81;
      sub_21DBF76DC();
      v85 = sub_21DBF6C2C();
      v40(v51, v42);
      v53 = sub_21DBFB18C();
      v54 = sub_21DBFB19C();
      v55 = sub_21DBFB17C();
      v57 = v56;

      (*(v43 + 8))(v46, v44);
      (*(v80 + 8))(v50, v52);
      result = (*(v78 + 8))(v62, v79);
      v58 = v76;
      v59 = v61;
      *v76 = v86;
      *(v58 + 1) = v59;
      *(v58 + 2) = v85;
      *(v58 + 24) = 0;
      *(v58 + 4) = v53;
      *(v58 + 20) = v54;
      *(v58 + 6) = v55;
      *(v58 + 7) = v57;
    }
  }

  else
  {
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_21D8CCE24()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TTRShowCustomSmartListDataModelSourceDeleteCompletedContext(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v3 + v4) = [v2 objectID];
  v5 = *MEMORY[0x277D45940];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  return v3;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.__allocating_init(customSmartList:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = [a1 objectID];

  *(v2 + v3) = v4;
  v5 = *MEMORY[0x277D45940];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v2 + v3, v5, v6);
  return v2;
}

id sub_21D8CCFFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store);
    v11 = *(v1 + v3);
    v6 = type metadata accessor for TTRShowCustomSmartListTipKitDataModelSource();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v11;
    v8 = v5;
    v4 = v11;
    v9 = &protocol witness table for TTRTipKitDataModelSourceBase;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v7;
  a1[3] = v6;
  a1[4] = v9;

  return v4;
}

double sub_21D8CD0C0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v27 = *(v1 + v14);
    if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) + 40))
    {
      v15 = MEMORY[0x277D45468];
    }

    else
    {
      v15 = MEMORY[0x277D45470];
    }

    (*(v8 + 104))(v13, *v15, v7);
    (*(v8 + 16))(v10, v13, v7);
    v26 = v6;
    v16 = v3;
    v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v18 = v6;
    v19 = v16;
    (*(v4 + 16))(v18, v1 + v17, v16);
    v20 = type metadata accessor for TTRShowCustomSmartListPrintingDataModelSource(0);
    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v27;
    (*(v8 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted, v10, v7);
    (*(v4 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle, v26, v19);
    *(a1 + 24) = v20;
    *(a1 + 32) = &protocol witness table for TTRShowCustomSmartListPrintingDataModelSource;
    *a1 = v21;
    v23 = *(v8 + 8);
    v24 = v22;
    v23(v13, v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTRShowCustomSmartListPrintingDataModelSource.__allocating_init(smartList:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D8CD474()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 accountCapabilities];
    v5 = [v4 supportsTemplates];

    if (v5)
    {
      type metadata accessor for TTRShowCustomSmartListTemplateContext();
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D8CD56C(void *a1)
{
  v178 = sub_21DBFB11C();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v164 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v174);
  v175 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v173 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v6 - 8);
  v172 = &v164 - v7;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  MEMORY[0x28223BE20](v199);
  v197 = (&v164 - v8);
  v188 = sub_21DBF76AC();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v186 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v196 = &v164 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637E8);
  MEMORY[0x28223BE20](v182);
  v181 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v185 = &v164 - v14;
  v195 = sub_21DBF70DC();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v193 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_21DBF71BC();
  v16 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v201 = (&v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  v169 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v171 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v170 = &v164 - v21;
  MEMORY[0x28223BE20](v22);
  v183 = &v164 - v23;
  MEMORY[0x28223BE20](v24);
  v180 = &v164 - v25;
  MEMORY[0x28223BE20](v26);
  v189 = &v164 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v164 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v164 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v164 - v35;
  v168 = sub_21DBF719C();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v179 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v164 - v39;
  v41 = sub_21DBF6C5C();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v191 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v164 - v45;
  sub_21DBF72BC();
  v47 = sub_21DBF72DC();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v36, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v48 = sub_21DBFAE4C();
  v49 = sub_21DBFB1AC();
  (*(*(v49 - 8) + 56))(v33, 1, 1, v49);
  v50 = v33;
  v51 = v30;
  MEMORY[0x223D3F3F0](v40, v48, v50);
  v184 = v18;
  v52 = *(v18 + 48);
  v53 = v42[2];
  v54 = v30;
  v190 = v46;
  v200 = v41;
  v55 = v198;
  v53(v54, v46, v41);
  *(v51 + v52) = 0;
  v56 = *(v55 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance);
  if (*(v56 + 40) == 1)
  {
    v57 = v192;
    (*(v16 + 104))(v201, *MEMORY[0x277D45468], v192);
  }

  else
  {
    swift_beginAccess();
    *v201 = *(v56 + 48);
    v57 = v192;
    (*(v16 + 104))();
    sub_21DBF8E0C();
  }

  v58 = *(v55 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted);
  v59 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v60 = v194;
  v61 = v55 + v59;
  v62 = v193;
  v63 = v195;
  (v194)[2](v193, v61, v195);
  type metadata accessor for TTRShowCustomSmartListMonitorableDataView(0);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  (*(v16 + 32))(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v201, v57);
  *(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v58;
  (v60)[4](v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v62, v63);
  *(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = 0;
  v65 = v197;
  sub_21D0D3954(v51, v197, &qword_27CE5C288);
  swift_storeEnumTagMultiPayload();
  v66 = a1;
  v67 = v191;
  v68 = v196;
  v69 = TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(v191, v196, v65, 1);
  v193 = v51;
  v194 = v66;
  v166 = 0;
  v195 = v64;
  sub_21D0CF7E0(v65, &qword_27CE5C280);
  v201 = v42;
  v70 = v42[4];
  v71 = v185;
  v72 = v200;
  v70(v185, v67, v200);
  v73 = v184;
  *(v71 + *(v184 + 48)) = v69;
  v74 = v182;
  v75 = *(v182 + 48);
  v197 = *(v187 + 32);
  v76 = v188;
  v197(v71 + v75, v68, v188);
  v77 = v181;
  sub_21D0D3954(v71, v181, &qword_27CE637E8);
  v78 = *(v73 + 48);
  v79 = *&v77[v78];
  v196 = *(v74 + 48);
  v80 = v189;
  v81 = v72;
  v192 = (v42 + 4);
  v82 = v70;
  v70(v189, v77, v81);
  *(v80 + v78) = v79;
  v197(v186, &v77[v196], v76);
  v83 = v180;
  sub_21D0D3954(v80, v180, &qword_27CE5C288);
  if (*&v83[*(v73 + 48)])
  {
    v165 = *&v83[*(v73 + 48)];
    v196 = v201[1];
    ++v201;
    v84 = v200;
    (v196)(v83, v200);
    v85 = v183;
    sub_21D0D3954(v80, v183, &qword_27CE5C288);
    v86 = *(v73 + 48);
    v87 = *(v85 + v86);
    v88 = v170;
    v82(v170, v85, v84);
    *&v88[v86] = v87;
    v89 = v88;
    v192 = sub_21D0D8CF0(0, &qword_280D1B900);

    v90 = sub_21DBFB12C();
    v181 = v90;
    sub_21DBF60DC();
    v191 = sub_21DBF60BC();
    v91 = sub_21DBF60AC();
    v180 = v91;
    v197 = *MEMORY[0x277D76648];
    v182 = *MEMORY[0x277D76768];
    v92 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D408);
    v93 = swift_allocObject();
    v94 = *(*v93 + 104);
    v95 = *(v169 + 56);
    v95(v93 + v94, 1, 1, v73);
    v96 = (v93 + *(*v93 + 136));
    *v96 = 0;
    v96[1] = 0;
    *(v93 + *(*v93 + 112)) = v90;
    *(v93 + *(*v93 + 120)) = v91;
    sub_21D0D3954(v89, v93 + *(*v93 + 96), &qword_27CE5C288);
    swift_storeEnumTagMultiPayload();
    v97 = v172;
    sub_21D0D3954(v89, v172, &qword_27CE5C288);
    v95(v97, 0, 1, v73);
    swift_beginAccess();
    v98 = v197;
    v99 = v92;
    v181 = v181;
    v100 = v180;
    sub_21D8D43F0(v97, v93 + v94);
    swift_endAccess();
    sub_21DBF9D4C();
    v205[6] = MEMORY[0x277D84F90];
    sub_21D66282C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
    sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
    sub_21DBFBCBC();
    (*(v177 + 104))(v176, *MEMORY[0x277D85260], v178);
    v101 = sub_21DBFB14C();
    v102 = v171;
    sub_21D0D3954(v89, v171, &qword_27CE5C288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D410);
    v103 = swift_allocObject();
    *(v103 + 72) = 0u;
    *(v103 + 88) = 0u;
    *(v103 + 104) = 0;
    *(v103 + 108) = -1;
    *(v103 + 120) = 0;
    *(v103 + 128) = 1;
    v104 = *(*v103 + 216);
    v105 = swift_slowAlloc();
    *(v103 + v104) = v105;
    *(v103 + *(*v103 + 224)) = 0;
    v106 = v191;
    *(v103 + 16) = v101;
    *(v103 + 24) = v106;
    v107 = v195;
    *(v103 + 32) = v100;
    *(v103 + 40) = v107;
    sub_21D0D3954(v102, v103 + *(*v103 + 208), &qword_27CE5C288);
    swift_storeEnumTagMultiPayload();
    *v105 = 0;

    sub_21D0CF7E0(v102, &qword_27CE5C288);
    sub_21D0CF7E0(v89, &qword_27CE5C288);
    v108 = v182;
    *(v103 + 48) = v197;
    *(v103 + 56) = v108;
    *(v103 + 64) = 1;
    *(v93 + *(*v93 + 128)) = v103;
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    v111 = v198;
    swift_weakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = v109;
    *(v112 + 24) = v110;
    v113 = *(v103 + 72);
    *(v103 + 72) = sub_21D5047B4;
    *(v103 + 80) = v112;

    sub_21D0D0E88(v113);

    v114 = *(v93 + *(*v93 + 128));
    v115 = swift_allocObject();
    swift_weakInit();
    v116 = *(v114 + 88);
    *(v114 + 88) = sub_21D5047BC;
    *(v114 + 96) = v115;

    v117 = v116;
    v118 = v111;
    sub_21D0D0E88(v117);

    v119 = swift_allocObject();
    swift_weakInit();
    v120 = swift_allocObject();
    swift_weakInit();
    v121 = swift_allocObject();
    *(v121 + 16) = v119;
    *(v121 + 24) = v120;
    v122 = (v93 + *(*v93 + 136));
    v123 = *v122;
    *v122 = sub_21D5047C4;
    v122[1] = v121;

    sub_21D0D0E88(v123);

    v124 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    *(v111 + v124) = v93;

    v125 = v183;
    sub_21D0D3954(v189, v183, &qword_27CE5C288);

    v126 = v179;
    MEMORY[0x223D3F400]();
    (v196)(v125, v200);
    v127 = v111 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v128 = *(v127 + 1), ObjectType = swift_getObjectType(), v130 = (*(*(v128 + 8) + 8))(ObjectType), v123 = v131, swift_unknownObjectRelease(), (v123 & 1) != 0))
    {
      v130 = 30;
    }

    v132 = v130 * 1.5;
    v133 = v193;
    if (COERCE__INT64(fabs(v132)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v132 > -9.22337204e18)
      {
        if (v132 < 9.22337204e18)
        {
          v123 = sub_21DA68CBC(v132);
          if (qword_27CE56E08 == -1)
          {
LABEL_13:
            v134 = sub_21DBF84BC();
            __swift_project_value_buffer(v134, qword_27CE63718);
            sub_21DBF8E0C();
            v135 = sub_21DBF84AC();
            v136 = sub_21DBFAEAC();

            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              v205[0] = v138;
              *v137 = 136315138;
              v139 = v133;
              if (v123 >> 62)
              {
                v140 = sub_21DBFBD7C();
              }

              else
              {
                v140 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v204 = v140;
              sub_21D679D9C();
              v141 = sub_21DBFBC0C();
              v143 = sub_21D0CDFB4(v141, v142, v205);

              *(v137 + 4) = v143;
              _os_log_impl(&dword_21D0C9000, v135, v136, "Fetching initial set of reminders {count: %s}", v137, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v138);
              MEMORY[0x223D46520](v138, -1, -1);
              MEMORY[0x223D46520](v137, -1, -1);

              v118 = v198;
            }

            else
            {
              v139 = v133;
            }

            v153 = [v194 store];
            v154 = sub_21DBFB12C();
            v155 = swift_allocObject();
            *(v155 + 16) = 0;
            v156 = v165;
            v157 = sub_21D87E81C(v153, sub_21D554248, v155, v156, v154);
            swift_beginAccess();
            v157[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
            swift_unknownObjectWeakAssign();
            sub_21DAB0AFC(v123);

            v158 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
            swift_beginAccess();
            *(v118 + v158) = v157;

            if (*(v118 + v124))
            {

              sub_21D400B14(1);
            }

            v202 = 0;
            v203 = 0xE000000000000000;
            sub_21DBFBEEC();
            v202 = *v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
            v159 = sub_21DBFA1AC();
            v161 = v160;

            v202 = v159;
            v203 = v161;
            MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
            v162 = sub_21DBFAEDC();
            MEMORY[0x28223BE20](v162);
            *(&v164 - 4) = v118;
            *(&v164 - 3) = v194;
            *(&v164 - 2) = v126;
            v163 = v186;
            *(&v164 - 1) = v186;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
            sub_21DBF625C();

            sub_21D0CF7E0(v189, &qword_27CE5C288);
            sub_21D0CF7E0(v185, &qword_27CE637E8);
            sub_21D0CF7E0(v139, &qword_27CE5C288);
            (v196)(v190, v200);
            (*(v167 + 8))(v126, v168);
            (*(v187 + 8))(v163, v188);
            return 1;
          }

LABEL_28:
          swift_once();
          goto LABEL_13;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v144 = v201[1];
  v145 = v200;
  v144(v83, v200);
  v146 = v193;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v147 = sub_21DBF84BC();
  __swift_project_value_buffer(v147, qword_27CE63718);
  v148 = sub_21DBF84AC();
  v149 = sub_21DBFAEBC();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    *v150 = 0;
    _os_log_impl(&dword_21D0C9000, v148, v149, "startSynchronously failed, missing initial fetch result token", v150, 2u);
    v151 = v150;
    v145 = v200;
    MEMORY[0x223D46520](v151, -1, -1);
  }

  sub_21D0CF7E0(v80, &qword_27CE5C288);
  sub_21D0CF7E0(v185, &qword_27CE637E8);
  sub_21D0CF7E0(v146, &qword_27CE5C288);
  v144(v190, v145);
  (*(v187 + 8))(v186, v188);
  return 0;
}

uint64_t TTRShowCustomSmartListMonitorableDataView.__allocating_init(smartList:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v10;
}

uint64_t TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v59 = a1;
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63798);
  MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v73 = &v53 - v10;
  v11 = sub_21DBF714C();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21DBF71BC();
  v17 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v78 = sub_21DBF734C();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v63 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v53 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v53 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  sub_21DBFC83C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5D400);
    v77 = 0;
  }

  else
  {
    v77 = *&v30[*(v31 + 48)];
    v32 = sub_21DBF6C5C();
    (*(*(v32 - 8) + 8))(v30, v32);
  }

  v61 = *(v5 + 16);
  v33 = [v61 store];
  v34 = v33;
  if (a4)
  {
    v76 = v33;
    if (!v77)
    {
      v35 = MEMORY[0x277D45508];
      goto LABEL_9;
    }
  }

  else
  {
    v76 = [v33 nonUserInteractiveStore];
  }

  v35 = MEMORY[0x277D454F8];
LABEL_9:
  *v27 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount);
  (*(v23 + 104))(v27, *v35, v78);
  v36 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted);
  v37 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v62 = v34;
  if (v36 > 1)
  {
    v38 = v75;
    (*(v17 + 16))(v22, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v75);
    v39 = (*(v17 + 88))(v22, v38);
    if (v39 == *MEMORY[0x277D45478])
    {
      (*(v17 + 8))(v22, v38);
    }

    else if (v39 == *MEMORY[0x277D45480])
    {
      (*(v17 + 8))(v22, v75);
    }

    else if (v39 != *MEMORY[0x277D45470] && v39 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  (*(v65 + 16))(v64, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v66);
  (*(v17 + 16))(v19, v5 + v37, v75);
  v40 = v78;
  (*(v23 + 16))(v63, v27, v78);
  (*(v68 + 104))(v67, *MEMORY[0x277D45460], v69);
  v41 = v74;
  sub_21DBF737C();
  v42 = v72;
  v43 = v73;
  v45 = v76;
  v44 = v77;
  sub_21DBF6CBC();
  if (v42)
  {

    (*(v70 + 8))(v41, v71);
    (*(v23 + 8))(v27, v40);
  }

  else
  {
    v46 = v54;
    v47 = *(v54 + 48);
    v48 = v58;
    v76 = v45;
    v77 = v44;
    v49 = v57;
    sub_21DBF76DC();
    *(v48 + v47) = sub_21DBF76BC();
    v50 = v55;
    sub_21D0D3954(v48, v55, &qword_27CE63798);
    v41 = *(v50 + *(v46 + 48));
    v51 = sub_21DBF6C5C();
    (*(*(v51 - 8) + 32))(v59, v50, v51);
    sub_21DBF76CC();

    sub_21D0CF7E0(v48, &qword_27CE63798);
    (*(v56 + 8))(v43, v49);
    (*(v70 + 8))(v74, v71);
    (*(v23 + 8))(v27, v78);
  }

  return v41;
}

uint64_t sub_21D8CFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v11 = result;
  if (result)
  {
    v12 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a2, a3, a4, ObjectType, v12);
    result = swift_unknownObjectRelease();
  }

  *a5 = v11 == 0;
  return result;
}

uint64_t sub_21D8CFD7C(unsigned __int8 *a1)
{
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v104 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_21DBF71BC();
  v102 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v101 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  v98 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v95 - v14;
  v16 = sub_21DBF719C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21DBF6C5C();
  v19 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v106 = v19;
  v105 = v21;
  if (!v21)
  {
    v112 = v2;
    v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    v23 = v113;
    swift_beginAccess();
    v24 = *(v23 + v22);
    if (v24)
    {
      v25 = [v24 objectID];
      v26 = 1;
    }

    else
    {
      v25 = 0;
      v26 = 2;
    }

    v99 = v3;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v27 = qword_280D1AA18;
    type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
    v28 = swift_allocObject();
    v29 = sub_21D193548(v25, v26, v27, v28);

    v30 = v113;
    *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v29;

    swift_beginAccess();
    v29[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
    swift_unknownObjectWeakAssign();

    v31 = *(v30 + v22);
    if (v31)
    {
      v32 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
      v117 = v31;
      v118 = 1;
      v33 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
      v34 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
      v35 = __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v33);
      v36 = MEMORY[0x28223BE20](v35);
      v38 = &v95 - v37;
      (*(v39 + 16))(&v95 - v37, v36);
      v40 = *(v34 + 8);
      v41 = v31;
      v42 = sub_21D6F1094(&v117, v38, v32, v33, v40);
      if (v42)
      {
        swift_beginAccess();
        *(v42 + 32) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      v42 = 0;
    }

    v2 = v112;
    v3 = v99;
    v19 = v106;
    v21 = v105;
    *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = v42;
  }

  v112 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (v21 == 10 || *(v113 + v112))
  {
    v43 = v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 1);
      ObjectType = swift_getObjectType();
      v116[0] = v21;
      (*(*(v44 + 8) + 16))(v116, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v46 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  v47 = v113;
  swift_beginAccess();
  v48 = *(v47 + v46);
  if (v48)
  {
    v49 = v48;
    sub_21DBF72BC();
    v50 = sub_21DBF72DC();
    (*(*(v50 - 8) + 56))(v15, 0, 1, v50);
    MEMORY[0x223D3F930](MEMORY[0x277D84F90], v15, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    v96 = v49;
    v51 = sub_21DBFAE4C();
    v52 = sub_21DBFB1AC();
    v53 = v100;
    (*(*(v52 - 8) + 56))(v100, 1, 1, v52);
    MEMORY[0x223D3F3F0](v18, v51, v53);
    v54 = *(v113 + v112);
    if (v54)
    {
      v55 = *(*v54 + 104);
      swift_beginAccess();
      v56 = v54 + v55;
      v57 = v97;
      sub_21D0D3954(v56, v97, &qword_27CE5D400);
      v58 = v107;
      if ((*(v98 + 48))(v57, 1, v107) == 1)
      {
        sub_21D0CF7E0(v57, &qword_27CE5D400);
        v59 = 0;
      }

      else
      {
        v59 = *&v57[*(v58 + 48)];
        (*(v19 + 8))(v57, v111);
      }
    }

    else
    {
      v59 = 0;
      v58 = v107;
    }

    v61 = *(v58 + 48);
    v62 = v109;
    v97 = *(v19 + 16);
    v98 = v19 + 16;
    (v97)(v109, v110, v111);
    *&v62[v61] = v59;
    v63 = v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v100 = v59;
    if (Strong)
    {
      v65 = *(v63 + 1);
      v66 = swift_getObjectType();
      v67 = *(v65 + 8);
      v99 = v3;
      v68 = *(v67 + 8);
      v69 = v59;
      v70 = v68(v66, v67);
      v3 = v99;
      v71 = v70;
      LOBYTE(v66) = v72;
      swift_unknownObjectRelease();
      v73 = v101;
      v74 = v102;
      if ((v66 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v75 = v59;
      v73 = v101;
      v74 = v102;
    }

    v71 = 30;
LABEL_29:
    v102 = v71;
    v76 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance);
    v77 = v108;
    v78 = v2;
    if (*(v76 + 40) == 1)
    {
      (*(v74 + 104))(v73, *MEMORY[0x277D45468], v108);
    }

    else
    {
      swift_beginAccess();
      *v73 = *(v76 + 48);
      (*(v74 + 104))(v73, *MEMORY[0x277D45480], v77);
      sub_21DBF8E0C();
    }

    v79 = v113;
    v80 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted);
    v81 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v82 = v104;
    (*(v3 + 16))(v104, v79 + v81, v78);
    type metadata accessor for TTRShowCustomSmartListMonitorableDataView(0);
    v83 = swift_allocObject();
    v84 = v96;
    *(v83 + 16) = v96;
    (*(v74 + 32))(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v73, v108);
    *(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v80;
    (*(v3 + 32))(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v82, v78);
    v85 = v103;
    *(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = v102;
    v86 = *(v107 + 48);
    v87 = v109;
    (v97)(v85, v109, v111);
    *(v85 + v86) = v100;
    v88 = v112;
    swift_beginAccess();
    v89 = v84;
    sub_21D4FFEFC((v79 + v88), v85, v83, v79, v105);
    sub_21D0CF7E0(v85, &qword_27CE5C288);
    swift_endAccess();
    v114 = *v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
    v114 = sub_21DBFA1AC();
    v115 = v90;
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v91 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v91);
    *(&v95 - 2) = v79;
    *(&v95 - 1) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    sub_21D0CF7E0(v87, &qword_27CE5C288);
    return (*(v106 + 8))(v110, v111);
  }

  v60 = v112;
  if (*(v113 + v112))
  {

    sub_21D737E08();
  }

  v93 = v113;
  *(v113 + v60) = 0;

  v94 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v93 + v94) = 0;
}

uint64_t sub_21D8D0A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_21D8D0B20(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v6 = a1;

      sub_21D4F9F64(v6, a2);
    }

    else
    {
      v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        v9 = a1;
        v10 = v8;
        v11 = [v10 store];
        sub_21D0D8CF0(0, &qword_280D1B900);
        v12 = v2;
        v13 = sub_21DBFB12C();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        v15 = sub_21D87E81C(v11, sub_21D1947D8, v14, v9, v13);

        *(v12 + v5) = v15;

        swift_beginAccess();
        v15[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

uint64_t sub_21D8D0CF0()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate);

  return __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
}

uint64_t TTRShowCustomSmartListDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
  return v0;
}

uint64_t TTRShowCustomSmartListDataModelSource.__deallocating_deinit()
{
  TTRShowCustomSmartListDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
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
  sub_21D8CFD7C(&v2);
}

uint64_t sub_21D8D0F68(char a1)
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
  return sub_21D8CFD7C(&v3);
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.listLayoutDidChange(shouldForceUpdate:)(Swift::Bool shouldForceUpdate)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 32))(shouldForceUpdate, ObjectType);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D8D102C(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 32))(a1 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8D10C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3F400]();
    (*(v13 + 24))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t TTRShowCustomSmartListDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
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

uint64_t TTRShowCustomSmartListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v9 = sub_21DBF719C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_21DBF6C5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v60 = v18;
  v20(v17, a2);
  v61 = v13;
  v21 = *(v13 + 48);
  v64 = v17;
  *&v17[v21] = a3;
  v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!v23)
  {
    v39 = a3;
    return sub_21D0CF7E0(v64, &qword_27CE5C288);
  }

  v24 = a3;
  if (v23 != a1)
  {
    return sub_21D0CF7E0(v64, &qword_27CE5C288);
  }

  v25 = sub_21DBF6E3C();
  sub_21D4F5F28(v25);
  v27 = v26;

  sub_21D8D0B20(a3, v27);

  v28 = v62;
  sub_21D0D3954(v64, v62, &qword_27CE5C288);

  MEMORY[0x223D3F400]();
  v58 = *(v19 + 8);
  v59 = v19 + 8;
  v58(v28, v60);
  v29 = sub_21DBF716C();
  (*(v10 + 8))(v12, v9);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_24:

LABEL_25:
    v46 = v64;
    v47 = v62;
    sub_21D0D3954(v64, v62, &qword_27CE5C288);

    v48 = sub_21DBF6C2C();
    v58(v47, v60);
    v49 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v50 = *(v5 + v49);
    *(v5 + v49) = v48;

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_21DBFBEEC();
    v65 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
    v51 = sub_21DBFA1AC();
    v53 = v52;

    v65 = v51;
    v66 = v53;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v54 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v54);
    *(&v56 - 4) = v5;
    *(&v56 - 3) = v46;
    *(&v56 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v64, &qword_27CE5C288);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_24;
  }

  v30 = sub_21DBFBD7C();
  if (!v30)
  {
    v57 = v5;

    v32 = MEMORY[0x277D84F90];
LABEL_15:
    v5 = v57;
    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v40 = sub_21DBFC40C();
    }

    else
    {
      v40 = MEMORY[0x277D84F98];
    }

    v67[0] = v40;
    v41 = sub_21DBF8E0C();
    sub_21D1931C0(v41, 1, v67);

    v42 = v67[0];
    v43 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v5 + v43))
    {

      sub_21D188810(v42);
      v45 = v44;

      TTRBatchFetchManager<A>.override(objects:)(v45);
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_5:
  v57 = v5;
  v67[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v67[0];
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v33 objectID];
      v67[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21D18E6B8((v36 > 1), v37 + 1, 1);
        v32 = v67[0];
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
    }

    while (v30 != v31);

    goto LABEL_15;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D8D1940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a4;
  v6 = sub_21DBF719C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v17 = result;
  if (result)
  {
    v27 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = v30;
    sub_21D0D3954(v30, v14, &qword_27CE5C288);

    v19 = sub_21DBF6C2C();
    v29 = v4;
    v25 = v19;
    v20 = sub_21DBF6C5C();
    v21 = *(v20 - 8);
    v26 = v6;
    v22 = *(v21 + 8);
    v22(v14, v20);
    sub_21D0D3954(v18, v11, &qword_27CE5C288);

    MEMORY[0x223D3F400]();
    v22(v11, v20);
    v23 = v25;
    (*(v27 + 24))(v25, v8, v31, ObjectType);
    swift_unknownObjectRelease();

    result = (*(v32 + 8))(v8, v26);
  }

  *v33 = v17 == 0;
  return result;
}

uint64_t sub_21D8D1C00()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
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

uint64_t sub_21D8D1C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288) + 48));

  return TTRShowCustomSmartListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21D8D1E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowCustomSmartListDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63718);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = 0xE000000000000000;
    v13 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_21DBFA16C();
      v12 = v17;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x223D42AA0](v16, v12);

    MEMORY[0x223D42AA0](0x73694C7472616D73, 0xEB00000000203A74);

    v18 = sub_21D0CDFB4(0, 0xE000000000000000, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowCustomSmartListDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

id TTRShowCustomSmartListPrintingDataModelSource.store.getter()
{
  v1 = [*(v0 + 16) store];

  return v1;
}

uint64_t TTRShowCustomSmartListPrintingDataModelSource.init(smartList:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
  v7 = sub_21DBF71BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle;
  v9 = sub_21DBF70DC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowCustomSmartListPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v82 = retstr;
  v3 = sub_21DBF6F4C();
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v101 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21DBF6F8C();
  v76 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v103 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v75 - v7;
  v91 = sub_21DBF6C5C();
  v84 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v83 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF719C();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x28223BE20](v9);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0);
  v78 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v90 = &v75 - v11;
  v12 = sub_21DBF714C();
  v99 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v98 = (&v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21DBF734C();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x28223BE20](v14);
  v97 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21DBF71BC();
  v16 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v94 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21DBF70DC();
  v18 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF738C();
  v86 = *(v21 - 8);
  v87 = v21;
  MEMORY[0x28223BE20](v21);
  v89 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E08 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE63718);

    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    v26 = os_log_type_enabled(v24, v25);
    v102 = v3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v75 = v12;
      v28 = v2;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = [v28[2] objectID];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch smartList tree {listID: %@}", v29, 0xCu);
      sub_21D0CF7E0(v30, &unk_27CE60070);
      v32 = v30;
      v3 = v102;
      MEMORY[0x223D46520](v32, -1, -1);
      v33 = v29;
      v2 = v28;
      v12 = v75;
      MEMORY[0x223D46520](v33, -1, -1);
    }

    v34 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
    (*(v18 + 16))(v20, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle, v92);
    (*(v16 + 16))(v94, v2 + v34, v93);
    (*(v95 + 104))(v97, *MEMORY[0x277D45500], v96);
    (*(v99 + 104))(v98, *MEMORY[0x277D45450], v12);
    v35 = v89;
    sub_21DBF737C();
    v36 = [v2[2] store];
    v37 = v100;
    sub_21DBF6CBC();
    if (v37)
    {
      (*(v86 + 8))(v35, v87);

      return;
    }

    v75 = 0;
    v2 = &v111;

    v12 = v83;
    v38 = sub_21DBF76DC();
    MEMORY[0x223D3F400](v38);
    v18 = v84 + 8;
    v100 = *(v84 + 8);
    v39 = v91;
    (v100)(v12, v91);
    sub_21DBF76DC();
    v16 = sub_21DBF6C2C();
    (v100)(v12, v39);
    v40 = sub_21DBF718C();
    v20 = *(v40 + 16);
    if (!v20)
    {
      break;
    }

    v84 = v16;
    v118 = MEMORY[0x277D84F90];
    v100 = v40;
    sub_21D18E6F8(0, v20, 0);
    if (*(v100 + 16))
    {
      v18 = 0;
      v12 = v118;
      v41 = v100 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
      v98 = (v77 + 88);
      v99 = v76 + 16;
      LODWORD(v97) = *MEMORY[0x277D453E0];
      LODWORD(v92) = *MEMORY[0x277D453D8];
      v91 = (v77 + 96);
      v42 = *(v76 + 72);
      v95 = *(v76 + 16);
      v96 = (v76 + 8);
      v93 = v42;
      v94 = v20 - 1;
      do
      {
        v43 = v103;
        (v95)(v103, v41, v119);
        v44 = v101;
        sub_21DBF6F5C();
        v45 = (*v98)(v44, v3);
        if (v45 == v97)
        {
          (*v91)(v44, v3);
          v46 = v44;
          v47 = *v44;
          v48 = *(v44 + 1);
          v49 = *(v46 + 2);

          *&v106 = v48;
          *(&v106 + 1) = v49;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          LODWORD(v110[0]) = 192;
          BYTE4(v110[0]) = 3;
          *(v110 + 5) = v104;
          BYTE7(v110[0]) = v105;
          *(v110 + 8) = 0u;
          *(&v110[1] + 8) = 0u;
          *(&v110[2] + 8) = 0u;
          WORD4(v110[3]) = 255;
          nullsub_1(&v106, v50, v51);
        }

        else
        {
          if (v45 != v92)
          {
            sub_21DBFC63C();
            __break(1u);
            return;
          }

          sub_21D6EEF24(&v106);
          v43 = v103;
        }

        v20 = sub_21DBF6F7C();
        v115 = v110[0];
        v116 = v110[1];
        v117[0] = v110[2];
        *(v117 + 10) = *(&v110[2] + 10);
        v111 = v106;
        v112 = v107;
        v113 = v108;
        v114 = v109;
        (*v96)(v43, v119);
        v108 = v113;
        v109 = v114;
        v110[2] = v117[0];
        v110[3] = v117[1];
        v110[0] = v115;
        v110[1] = v116;
        v106 = v111;
        v107 = v112;
        v118 = v12;
        v16 = *(v12 + 16);
        v52 = *(v12 + 24);
        if (v16 >= v52 >> 1)
        {
          sub_21D18E6F8((v52 > 1), v16 + 1, 1);
          v12 = v118;
        }

        *(v12 + 16) = v16 + 1;
        v53 = v12 + 136 * v16;
        v54 = v106;
        v55 = v107;
        v56 = v109;
        *(v53 + 64) = v108;
        *(v53 + 80) = v56;
        *(v53 + 32) = v54;
        *(v53 + 48) = v55;
        v57 = v110[0];
        v58 = v110[1];
        v59 = v110[3];
        *(v53 + 128) = v110[2];
        *(v53 + 144) = v59;
        *(v53 + 96) = v57;
        *(v53 + 112) = v58;
        *(v53 + 160) = v20;
        if (v94 == v18)
        {

          v16 = v84;
          goto LABEL_20;
        }

        v41 += v93;
        ++v18;
        v3 = v102;
      }

      while (v18 < *(v100 + 16));
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v60 = [v16 name];
  v119 = sub_21DBFA16C();
  v103 = v61;

  type metadata accessor for TTRListColors();
  *(&v107 + 1) = sub_21DBF63FC();
  *&v108 = &protocol witness table for REMSmartList;
  *&v106 = v16;
  v101 = v16;
  static TTRListColors.color(for:)(&v106, &v111);
  sub_21D0CF7E0(&v106, &qword_27CE59DC0);
  v62 = v111;
  v63 = v112;
  v64 = *(&v113 + 1);
  v100 = v113;
  v65 = v114;
  v106 = v111;
  v107 = v112;
  v66 = *(&v112 + 1);
  v108 = v113;
  LOBYTE(v109) = v114;
  v102 = TTRListColors.Color.nativeColor.getter();
  sub_21D1078C0(v62, *(&v62 + 1), v63, v66, v100, v64, v65);
  v67 = v81;
  v68 = v88;
  sub_21DBF715C();
  v69 = sub_21DBF72DC();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  if (v71 == 1)
  {

    (*(v79 + 8))(v68, v80);
    (*(v78 + 8))(v90, v85);
    (*(v86 + 8))(v89, v87);
    sub_21D0CF7E0(v67, &qword_27CE5D378);
    v72 = 0;
  }

  else
  {
    v72 = sub_21DBF72AC();

    (*(v79 + 8))(v68, v80);
    (*(v78 + 8))(v90, v85);
    (*(v86 + 8))(v89, v87);
    (*(v70 + 8))(v67, v69);
  }

  v73 = v82;
  v74 = v103;
  v82->listName._countAndFlagsBits = v119;
  v73->listName._object = v74;
  v73->listColor.super.isa = v102;
  v73->count.value = v72;
  v73->count.is_nil = v71 == 1;
  v73->sections._rawValue = v12;
  v73->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
}

id sub_21D8D302C()
{
  v1 = [*(*v0 + 16) store];

  return v1;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.init(customSmartList:)(void *a1)
{
  v3 = sub_21DBF806C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 objectID];

  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D45940], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete, v7, v3);
  return v1;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8D3320@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCustomSmartListMonitorableDataView.init(smartList:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v11 = sub_21DBF71BC();
  (*(*(v11 - 8) + 32))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v9;
  v12 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle;
  v13 = sub_21DBF70DC();
  (*(*(v13 - 8) + 32))(v5 + v12, a4, v13);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v5;
}

uint64_t sub_21D8D34A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D8D3540(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF6C5C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C280);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C280);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5D400);
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
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80);
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

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
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

void sub_21D8D3BAC(void *a1)
{
  v2 = v1;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63718);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v35);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = 0xE000000000000000;
    v38 = 0;
    v39 = 0xE000000000000000;
    v36 = 0x73694C7472616D73;
    v37 = 0xEB00000000203A74;
    v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = [v15 description];
      v17 = sub_21DBFA16C();
      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x223D42AA0](v17, v13);

    MEMORY[0x223D42AA0](v36, v37);

    v19 = sub_21D0CDFB4(v38, v39, &v35);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowCustomSmartListDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v22 = [v21 objectID];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v25 = sub_21DBF52CC();
      LODWORD(v24) = [v24 isNoSuchObjectError:v25 forObjectID:v23];

      if (v24)
      {
        v26 = v23;
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEBC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v23;
          v31 = v26;
          _os_log_impl(&dword_21D0C9000, v27, v28, "List got deleted {listObjectID: %{public}@}", v29, 0xCu);
          sub_21D0CF7E0(v30, &unk_27CE60070);
          MEMORY[0x223D46520](v30, -1, -1);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        v32 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          (*(v33 + 40))(ObjectType, v33);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_21D8D42B4()
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

uint64_t sub_21D8D43F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D8D44F8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;
  if (v2 != v5)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.setter(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v5 != v3)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t sub_21D8D45B0(int a1)
{
  v2 = v1;
  v91 = a1;
  v98 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  MEMORY[0x28223BE20](v98);
  v99 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v97 = &v87 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v92);
  v95 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v87 - v10;
  MEMORY[0x28223BE20](v11);
  v90 = &v87 - v12;
  MEMORY[0x28223BE20](v13);
  v93 = &v87 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v87 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v89 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v94 = &v87 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v87 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v87 - v33;
  v35 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  v96 = v35;
  sub_21D569DB4(&v2[v35], v23);
  v100 = v25;
  v36 = *(v25 + 48);
  v37 = v36(v23, 1, v24);
  v102 = v24;
  if (v37 != 1)
  {
    sub_21D8D7C90(v23, v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63810);
    v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D0) - 8);
    v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_21DC08D00;
    v44 = v43 + v42;
    v45 = v41[14];
    sub_21D8D7CF8(v34, v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v44 + v45) = 1;
    v101 = sub_21D1782FC(v43);
    swift_setDeallocating();
    sub_21D0CF7E0(v44, &qword_27CE581D0);
    swift_deallocClassInstance();
    sub_21D8D7D60(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v40 = v2;
    v46 = &qword_27CE63000;
    v47 = &qword_27CE63000;
    goto LABEL_21;
  }

  sub_21D0CF7E0(v23, &qword_27CE5FB90);
  v38 = sub_21D1782FC(MEMORY[0x277D84F90]);
  v39 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v88 = v39;
  sub_21D569DB4(&v2[v39], v20);
  v40 = v2;
  if (v36(v20, 1, v24) == 1)
  {
    v101 = v38;
    sub_21D0CF7E0(v20, &qword_27CE5FB90);
  }

  else
  {
    sub_21D8D7C90(v20, v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v38;
    sub_21D47950C(1, v31, isUniquelyReferenced_nonNull_native);
    v40 = v2;
    sub_21D8D7D60(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v101 = v106;
  }

  v49 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(&v40[v49], v17);
  v50 = v102;
  v51 = v36(v17, 1, v102);
  v46 = &qword_27CE63000;
  v52 = v95;
  if (v51 == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5FB90);
    v47 = &qword_27CE63000;
    goto LABEL_21;
  }

  v53 = v94;
  sub_21D8D7C90(v17, v94, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v54 = v93;
  sub_21D8D7CF8(v53, v93, type metadata accessor for TTRRemindersListViewModel.ItemID);
  (*(v100 + 7))(v54, 0, 1, v50);
  v55 = *(v92 + 48);
  sub_21D569DB4(v54, v52);
  sub_21D569DB4(&v40[v88], v52 + v55);
  if (v36(v52, 1, v50) == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE5FB90);
    v56 = v36((v52 + v55), 1, v50);
    v57 = v101;
    v47 = &qword_27CE63000;
    if (v56 == 1)
    {
      sub_21D0CF7E0(v52, &qword_27CE5FB90);
LABEL_18:
      sub_21D8D7D60(v94, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v58 = v90;
  sub_21D569DB4(v52, v90);
  if (v36((v52 + v55), 1, v50) == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE5FB90);
    sub_21D8D7D60(v58, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v57 = v101;
    v47 = &qword_27CE63000;
LABEL_13:
    sub_21D0CF7E0(v52, &qword_27CE5F2E0);
    goto LABEL_14;
  }

  v61 = v89;
  sub_21D8D7C90(v52 + v55, v89, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v62 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v58, v61);
  sub_21D8D7D60(v61, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v54, &qword_27CE5FB90);
  sub_21D8D7D60(v58, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v52, &qword_27CE5FB90);
  v57 = v101;
  v47 = &qword_27CE63000;
  if (v62)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v40[v47[255]] == 1 && (v59 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected, swift_beginAccess(), v40[v59] != 1))
  {
    v60 = 2;
  }

  else
  {
    v60 = 0;
  }

  v63 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v57;
  v64 = v94;
  sub_21D47950C(v60, v94, v63);
  sub_21D8D7D60(v64, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v101 = v105;
LABEL_21:
  v65 = v97;
  v66 = 3;
  if (v40[v47[255]] == 1)
  {
    v67 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
    swift_beginAccess();
    if (v40[v67])
    {
      v66 = 3;
    }

    else
    {
      v66 = 4;
    }
  }

  LODWORD(v92) = v66;
  swift_beginAccess();
  LODWORD(v95) = v40[16];
  swift_beginAccess();
  LODWORD(v94) = v40[17];
  swift_beginAccess();
  LODWORD(v93) = v40[18];
  v68 = v46[254];
  swift_beginAccess();
  sub_21D569DB4(&v40[v68], v103);
  sub_21D569DB4(&v40[v96], v104);
  v69 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
  swift_beginAccess();
  v70 = *&v40[v69];
  v71 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  v72 = *&v40[v71];
  v73 = v98;
  v74 = *(v98 + 28);
  v75 = *(v100 + 7);
  v76 = v102;
  v75(&v65[v74], 1, 1, v102);
  v100 = v40;
  v77 = v73[8];
  v75(&v65[v77], 1, 1, v76);
  v78 = v65;
  *v65 = v95;
  v65[1] = v94;
  v65[2] = v93;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D322950(v103, &v65[v74]);
  v79 = v100;
  sub_21D322950(v104, &v65[v77]);
  *&v65[v73[9]] = v70;
  v80 = &v65[v73[10]];
  *v80 = v92;
  *(v80 + 1) = v101;
  *&v65[v73[11]] = v72;
  v81 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  v82 = v99;
  sub_21D8D7CF8(&v79[v81], v99, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  LOBYTE(v70) = _s15RemindersUICore39TTRRemindersBoardCellPresentationStatesV2eeoiySbAC_ACtFZ_0(v82, v78);
  sub_21D8D7D60(v82, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  if ((v70 & 1) == 0)
  {
    swift_beginAccess();
    sub_21D8D8054(v78, &v79[v81]);
    swift_endAccess();
    if (v91)
    {
      v83 = &v79[OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange];
      swift_beginAccess();
      v84 = *v83;
      if (!*v83)
      {
        sub_21D8D7D60(v78, type metadata accessor for TTRRemindersBoardCellPresentationStates);
        return swift_endAccess();
      }

      swift_endAccess();

      v84(v85);
      sub_21D0D0E88(v84);
    }
  }

  return sub_21D8D7D60(v78, type metadata accessor for TTRRemindersBoardCellPresentationStates);
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_21D8D523C;
}

void sub_21D8D523C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t sub_21D8D52C8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 17);
  *(v3 + 17) = v2;
  if (v2 != v5)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.hasActiveDragAndDrop.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 17);
  return sub_21D8D53B0;
}

void sub_21D8D53B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 17);
  *(v2 + 17) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t sub_21D8D543C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 18);
  *(v3 + 18) = v2;
  if (v2 != v5)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.hasActiveColumnReordering.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 18);
  return sub_21D8D5524;
}

void sub_21D8D5524(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 18);
  *(v2 + 18) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t sub_21D8D5588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21D569DB4(a1, &v6 - v3);
  return TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(v4);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_21D569DB4(v1 + v14, v13);
  sub_21D569DB4(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    sub_21D569DB4(v13, v9);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      sub_21D8D7C90(&v13[v15], v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v18 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
      sub_21D8D7D60(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D8D7D60(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v13, &qword_27CE5FB90);
      if (v18)
      {
        return sub_21D0CF7E0(a1, &qword_27CE5FB90);
      }

      goto LABEL_7;
    }

    sub_21D8D7D60(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5F2E0);
LABEL_7:
    swift_beginAccess();
    sub_21D31E91C(a1, v1 + v14);
    swift_endAccess();
    sub_21D8D45B0(1);
    return sub_21D0CF7E0(a1, &qword_27CE5FB90);
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v13, &qword_27CE5FB90);
  return sub_21D0CF7E0(a1, &qword_27CE5FB90);
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v5[10] = v9;
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[11] = v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(v12);
    v5[13] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  v5[14] = v13;
  v5[15] = v15;
  swift_beginAccess();
  sub_21D569DB4(v1 + v15, v14);
  return sub_21D8D5AEC;
}

void sub_21D8D5AEC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[13];
    v3 = v2[14];
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[9];
    sub_21D569DB4(v3, v5);
    TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(v5);
    goto LABEL_11;
  }

  v8 = v2[14];
  v9 = v2[11];
  v10 = v2[7];
  v11 = v2[8];
  v12 = *(v2[10] + 48);
  sub_21D569DB4(v2[6] + v2[15], v9);
  sub_21D569DB4(v8, v9 + v12);
  v13 = *(v11 + 48);
  if (v13(v9, 1, v10) != 1)
  {
    v14 = v2[7];
    sub_21D569DB4(v2[11], v2[13]);
    v15 = v13(v9 + v12, 1, v14);
    v16 = v2[13];
    if (v15 != 1)
    {
      v20 = v2[11];
      v21 = v2[9];
      sub_21D8D7C90(v9 + v12, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v22 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v21);
      sub_21D8D7D60(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D8D7D60(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v20, &qword_27CE5FB90);
      if (v22)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_21D8D7D60(v2[13], type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_8:
    sub_21D0CF7E0(v2[11], &qword_27CE5F2E0);
LABEL_9:
    v17 = v2[14];
    v18 = v2[15];
    v19 = v2[6];
    swift_beginAccess();
    sub_21D31E91C(v17, v19 + v18);
    swift_endAccess();
    sub_21D8D45B0(1);
    goto LABEL_10;
  }

  if (v13(v9 + v12, 1, v2[7]) != 1)
  {
    goto LABEL_8;
  }

  sub_21D0CF7E0(v2[11], &qword_27CE5FB90);
LABEL_10:
  v4 = v2[13];
  v3 = v2[14];
  v6 = v2[11];
  v5 = v2[12];
  v7 = v2[9];
LABEL_11:
  sub_21D0CF7E0(v3, &qword_27CE5FB90);
  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_21D8D5D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_21D569DB4(v2 + v4, a2);
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v8);
  return sub_21D8D5EDC;
}

uint64_t (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDsWithContextMenu.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D8D5F9C;
}

uint64_t sub_21D8D5FAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  sub_21D569DB4(a1, &v17[-v12]);
  v14 = *a2;
  v15 = *a5;
  swift_beginAccess();
  sub_21D569DB4(v14 + v15, v10);
  swift_beginAccess();
  sub_21D31E91C(v13, v14 + v15);
  swift_endAccess();
  sub_21D8D6210(v10, a5);
  sub_21D0CF7E0(v10, &qword_27CE5FB90);
  return sub_21D0CF7E0(v13, &qword_27CE5FB90);
}

uint64_t sub_21D8D6100(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  v8 = *a2;
  swift_beginAccess();
  sub_21D569DB4(v2 + v8, v7);
  swift_beginAccess();
  sub_21D31E91C(a1, v2 + v8);
  swift_endAccess();
  sub_21D8D6210(v7, a2);
  sub_21D0CF7E0(a1, &qword_27CE5FB90);
  return sub_21D0CF7E0(v7, &qword_27CE5FB90);
}

uint64_t sub_21D8D6210(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v13 + 56);
  sub_21D569DB4(v2 + v16, v15);
  sub_21D569DB4(a1, &v15[v17]);
  v18 = *(v6 + 48);
  if (v18(v15, 1, v5) == 1)
  {
    if (v18(&v15[v17], 1, v5) == 1)
    {
      return sub_21D0CF7E0(v15, &qword_27CE5FB90);
    }

    goto LABEL_6;
  }

  sub_21D569DB4(v15, v11);
  if (v18(&v15[v17], 1, v5) == 1)
  {
    sub_21D8D7D60(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v15, &qword_27CE5F2E0);
    return sub_21D8D45B0(1);
  }

  sub_21D8D7C90(&v15[v17], v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v11, v8);
  sub_21D8D7D60(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D8D7D60(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v15, &qword_27CE5FB90);
  if ((v20 & 1) == 0)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.mouseOverItemID.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v8);
  return sub_21D8D65F8;
}

void sub_21D8D6604(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 72);
  if (a2)
  {
    sub_21D569DB4(*(*a1 + 96), v8);
    sub_21D569DB4(v9 + v6, v7);
    swift_beginAccess();
    sub_21D31E91C(v8, v9 + v6);
    swift_endAccess();
    sub_21D8D6210(v7, a3);
    sub_21D0CF7E0(v7, &qword_27CE5FB90);
  }

  else
  {
    sub_21D569DB4(v9 + v6, v8);
    swift_beginAccess();
    sub_21D31E91C(v5, v9 + v6);
    swift_endAccess();
    sub_21D8D6210(v8, a3);
  }

  sub_21D0CF7E0(v8, &qword_27CE5FB90);
  sub_21D0CF7E0(v5, &qword_27CE5FB90);
  free(v5);
  free(v8);
  free(v7);

  free(v4);
}

uint64_t sub_21D8D67A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  swift_bridgeObjectRetain_n();
  sub_21D320EEC(v5, v8);
  LOBYTE(v7) = v9;

  if ((v7 & 1) == 0)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t sub_21D8D683C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = sub_21DBF8E0C();
  sub_21D320EEC(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D8D80B8;
}

void sub_21D8D6958(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  v7 = sub_21DBF8E0C();
  if (a2)
  {
    v8 = sub_21DBF8E0C();
    sub_21D320EEC(v8, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_21D8D45B0(1);
    }
  }

  else
  {
    sub_21D320EEC(v7, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      sub_21D8D45B0(1);
    }
  }

  free(v3);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelected.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D8D6A6C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelected.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8D6B6C;
}

void sub_21D8D6B6C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  return sub_21D8D7CF8(v1 + v3, a1, type metadata accessor for TTRRemindersBoardCellPresentationStates);
}

uint64_t sub_21D8D6C30@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D8D6CD0(uint64_t *a1, void *a2)
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

  v7 = (*a2 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.__allocating_init(showsInfoButtonWhenSelected:)(char a1)
{
  v2 = swift_allocObject();
  TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)(a1);
  return v2;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v27 = &v26 - v7;
  v9 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  v13 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v16 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu) = MEMORY[0x277D84FA0];
  v17 = v16;
  v15(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect) = v17;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected) = 0;
  v18 = (v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  *v18 = 0;
  v18[1] = 0;
  v15(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_showsInfoButtonWhenSelected) = a1;
  v15(v8, 1, 1, v14);
  v19 = v5;
  v15(v5, 1, 1, v14);
  v20 = sub_21D1782FC(MEMORY[0x277D84F90]);
  v21 = v10[9];
  v15(&v12[v21], 1, 1, v14);
  v22 = v10[10];
  v15(&v12[v22], 1, 1, v14);
  *v12 = 0;
  v12[2] = 0;
  sub_21D322950(v27, &v12[v21]);
  sub_21D322950(v19, &v12[v22]);
  v23 = MEMORY[0x277D84FA0];
  *&v12[v10[11]] = MEMORY[0x277D84FA0];
  v24 = &v12[v10[12]];
  *v24 = 3;
  *(v24 + 1) = v20;
  *&v12[v10[13]] = v23;
  sub_21D8D7C90(v12, v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D8D45B0(1);
  return v1;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.prepareToInsertAndEdit(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v11 - 8);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v32 = a1;
  sub_21D8D7CF8(a1, v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v30 = *(v5 + 56);
  v30(v18, 0, 1, v4);
  v20 = *(v8 + 56);
  v33 = v2;
  sub_21D569DB4(v2 + v19, v10);
  sub_21D569DB4(v18, &v10[v20]);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5FB90);
    }

    goto LABEL_6;
  }

  sub_21D569DB4(v10, v15);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90);
    sub_21D8D7D60(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0);
LABEL_7:
    v23 = v31;
    sub_21D8D7CF8(v32, v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v30(v23, 0, 1, v4);
    v24 = v33;
    swift_beginAccess();
    sub_21D322950(v23, v24 + v19);
    swift_endAccess();
    return sub_21D8D45B0(0);
  }

  v25 = &v10[v20];
  v26 = v29;
  sub_21D8D7C90(v25, v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v27 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v26);
  sub_21D8D7D60(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v18, &qword_27CE5FB90);
  sub_21D8D7D60(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v10, &qword_27CE5FB90);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, &qword_27CE5FB90);

  sub_21D8D7D60(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90);
  return v0;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, &qword_27CE5FB90);

  sub_21D8D7D60(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90);

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC20hasActiveDragAndDropSbvs_0(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 17);
  *(v1 + 17) = a1;
  if (v5 != v3)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC25hasActiveColumnReorderingSbvs_0(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 18);
  *(v1 + 18) = a1;
  if (v5 != v3)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.requestHandleMouseOver(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  sub_21D569DB4(a1, &v11[-v7]);
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v5);
  swift_beginAccess();
  sub_21D31E91C(v8, v1 + v9);
  swift_endAccess();
  sub_21D8D6210(v5, &OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID);
  sub_21D0CF7E0(v5, &qword_27CE5FB90);
  return sub_21D0CF7E0(v8, &qword_27CE5FB90);
}

uint64_t _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC15isMultiSelectedSbvs_0(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

Swift::Void __swiftcall TTRRemindersBoardCellPresentationStatesPresenterCapability.requestHandleContextMenuStateChange(_:)(Swift::OpaquePointer_optional a1)
{
  if (a1.value._rawValue)
  {
    v2 = sub_21DBF8E0C();
    v3 = sub_21D19EE98(v2);

    v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
    swift_beginAccess();
    v5 = *(v1 + v4);
    *(v1 + v4) = v3;
    v6 = sub_21DBF8E0C();
    sub_21D320EEC(v6, v5);
    LOBYTE(v4) = v7;

    if (v4)
    {
      return;
    }
  }

  else
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v10 = MEMORY[0x277D84FA0];
    *(v1 + v8) = MEMORY[0x277D84FA0];
    sub_21D320EEC(v10, v9);
    LOBYTE(v8) = v11;

    if (v8)
    {
      return;
    }
  }

  sub_21D8D45B0(1);
}

uint64_t sub_21D8D7B48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  sub_21D569DB4(a1, &v11[-v7]);
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v5);
  swift_beginAccess();
  sub_21D31E91C(v8, v1 + v9);
  swift_endAccess();
  sub_21D8D6210(v5, &OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID);
  sub_21D0CF7E0(v5, &qword_27CE5FB90);
  return sub_21D0CF7E0(v8, &qword_27CE5FB90);
}

uint64_t sub_21D8D7C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8D7CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8D7D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_21D569DB4(v4 + v5, a3);
}

uint64_t keypath_get_15Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return sub_21DBF8E0C();
}

uint64_t type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability()
{
  result = qword_27CE63800;
  if (!qword_27CE63800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D8D7F28()
{
  sub_21D322C1C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersBoardCellPresentationStates(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21D8D8054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t TTRVisualFormatBuilder.init(metrics:views:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  a3[1] = a2;
  a3[2] = v3;
  *a3 = result;
  return result;
}

Swift::Void __swiftcall TTRVisualFormatBuilder.add(_:options:)(Swift::String _, NSLayoutFormatOptions options)
{
  v4 = objc_opt_self();
  v5 = sub_21DBFA12C();
  sub_21D188D70(*v2);
  sub_21D188F5C(v6);

  v7 = sub_21DBF9E5C();

  sub_21D188F70(v2[1]);
  v8 = sub_21DBF9E5C();

  v9 = [v4 constraintsWithVisualFormat:v5 options:options metrics:v7 views:v8];

  sub_21D3677A0();
  v10 = sub_21DBFA5EC();

  sub_21D562934(v10);
}

Swift::Void __swiftcall TTRVisualFormatBuilder.activateConstraints()()
{
  v0 = objc_opt_self();
  sub_21D3677A0();
  v1 = sub_21DBFA5DC();
  [v0 activateConstraints_];
}

uint64_t destroy for TTRVisualFormatBuilder()
{
}

void *sub_21D8D82EC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRVisualFormatBuilder(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRVisualFormatBuilder(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

id REMColor.nativeColor.getter()
{
  [v0 red];
  v2 = v1;
  [v0 green];
  v4 = v3;
  [v0 blue];
  v6 = v5;
  [v0 alpha];
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v9 initWithRed:v2 green:v4 blue:v6 alpha:v8];
}

uint64_t TTRTreeStorageDerivedRerootedTree.__allocating_init(upstreamTree:rootItem:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)(a1, a2);
  return v4;
}

char *TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + 2) = a1;
  v5 = *(v4 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v2[v5], a2, AssociatedTypeWitness);
  return v2;
}

uint64_t TTRTreeStorageDerivedRerootedTree.numberOfChildren(of:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v49 = &v41 - v21;
  v22 = a1;
  v24 = v23;
  (*(v13 + 16))(v17, v22, v23, v20);
  v50 = v18;
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v17, v24);
    return 1;
  }

  else
  {
    v41 = v13;
    v42 = v24;
    v43 = v5;
    v44 = v4;
    (*(v50 + 32))(v49, v17, AssociatedTypeWitness);
    v26 = AssociatedConformanceWitness;
    v27 = *(AssociatedConformanceWitness + 24);
    v27(AssociatedTypeWitness, AssociatedConformanceWitness);
    v28 = v46;
    v27(AssociatedTypeWitness, v26);
    swift_getAssociatedConformanceWitness();
    v29 = sub_21DBFA10C();
    v30 = *(v47 + 8);
    v30(v28, v7);
    v30(v11, v7);
    swift_beginAccess();
    v51 = v2[2];
    if (v29)
    {
      v31 = v50;
      v32 = v48;
      (*(v50 + 56))(v48, 1, 1, AssociatedTypeWitness);
      v33 = v44;
      v34 = *(v44 + 24);
      swift_unknownObjectRetain();
      v35 = v34(v32, v43, v33);
      (*(v41 + 8))(v32, v42);
      swift_unknownObjectRelease();
      (*(v31 + 8))(v49, AssociatedTypeWitness);
    }

    else
    {
      v37 = v49;
      v36 = v50;
      v38 = v48;
      (*(v50 + 16))(v48, v49, AssociatedTypeWitness);
      (*(v36 + 56))(v38, 0, 1, AssociatedTypeWitness);
      v39 = v44;
      v40 = *(v44 + 24);
      swift_unknownObjectRetain();
      v35 = v40(v38, v43, v39);
      (*(v41 + 8))(v38, v42);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v37, AssociatedTypeWitness);
    }

    return v35;
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.child(_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v43 = a1;
  v46 = a3;
  v6 = *(*(*(*v4 + 88) + 8) + 8);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = v6;
  v42 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_21DBFBA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v45 = &v37 - v24;
  (*(v16 + 16))(v20, a2, v15, v23);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v20, v15);
    return (*(v21 + 16))(v46, v4 + *(*v4 + 104), AssociatedTypeWitness);
  }

  else
  {
    v37 = v16;
    v38 = v15;
    (*(v21 + 32))(v45, v20, AssociatedTypeWitness);
    v26 = *(AssociatedConformanceWitness + 24);
    v26(AssociatedTypeWitness, AssociatedConformanceWitness);
    v27 = v4 + 2;
    v28 = v39;
    v26(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedConformanceWitness();
    v29 = sub_21DBFA10C();
    v30 = *(v40 + 8);
    v30(v28, v10);
    v30(v14, v10);
    swift_beginAccess();
    v47 = *v27;
    v31 = v41;
    if (v29)
    {
      (*(v21 + 56))(v41, 1, 1, AssociatedTypeWitness);
      v32 = v44;
      v33 = *(v44 + 32);
      swift_unknownObjectRetain();
      v33(v43, v31, v42, v32);
      (*(v37 + 8))(v31, v38);
      swift_unknownObjectRelease();
      return (*(v21 + 8))(v45, AssociatedTypeWitness);
    }

    else
    {
      v34 = v45;
      (*(v21 + 16))(v41, v45, AssociatedTypeWitness);
      (*(v21 + 56))(v31, 0, 1, AssociatedTypeWitness);
      v35 = v44;
      v36 = *(v44 + 32);
      swift_unknownObjectRetain();
      v36(v43, v31, v42, v35);
      (*(v37 + 8))(v31, v38);
      swift_unknownObjectRelease();
      return (*(v21 + 8))(v34, AssociatedTypeWitness);
    }
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = *v2;
  v5 = *(*(v4[11] + 8) + 8);
  v6 = v4[10];
  swift_getAssociatedTypeWitness();
  v19 = v6;
  v20 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = v4[13];
  v14 = swift_checkMetadataState();
  v12(v14, AssociatedConformanceWitness);
  v15 = v21;
  swift_getAssociatedConformanceWitness();
  LOBYTE(AssociatedConformanceWitness) = sub_21DBFA10C();
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  if (AssociatedConformanceWitness)
  {
    v16 = *(v14 - 8);
    v17 = v22;
    (*(v16 + 16))(v22, &v3[v13], v14);
    return (*(v16 + 56))(v17, 0, 1, v14);
  }

  else
  {
    swift_beginAccess();
    v23 = *(v3 + 2);
    return (*(v20 + 40))(v15, v19);
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v34 - v9;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v11;
  v39 = v6;
  v40 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v21 = *(AssociatedConformanceWitness + 24);
  v41 = a1;
  v21(AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v34 = *(*v3 + 104);
  (v21)(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = sub_21DBFA10C();
  v22 = *(v14 + 8);
  v22(v16, v13);
  v22(v20, v13);
  if (a1)
  {
    v23 = 1;
    v25 = v42;
    v24 = v43;
  }

  else
  {
    swift_beginAccess();
    v44 = v3[2];
    v27 = v40;
    v26 = v41;
    v29 = v38;
    v28 = v39;
    (*(v40 + 48))(v41, v39, v40);
    v25 = v42;
    if ((*(v42 + 48))(v29, 1, AssociatedTypeWitness) == 1)
    {
      (*(v36 + 8))(v29, v37);
      v44 = v3[2];
      if (!TTRTreeContentsQueryable.contains(_:)(v26, v28, v27))
      {
        v23 = 1;
        v24 = v43;
        return (*(v25 + 56))(v24, v23, 1, AssociatedTypeWitness);
      }

      v30 = v3 + v34;
      v24 = v43;
      (*(v25 + 16))(v43, v30, AssociatedTypeWitness);
    }

    else
    {
      v31 = *(v25 + 32);
      v32 = v35;
      v31(v35, v29, AssociatedTypeWitness);
      v24 = v43;
      v31(v43, v32, AssociatedTypeWitness);
    }

    v23 = 0;
  }

  return (*(v25 + 56))(v24, v23, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageDerivedRerootedTree.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for TTRDerivedTreeLocation();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v21 = *(v9 + 16);
  v22 = v13;
  v21(&v20 - v11, a1, v10);
  v14 = v4;
  (*(v5 + 16))(v7, v12, v4);
  v15 = *(AssociatedTypeWitness - 8);
  LODWORD(a1) = (*(v15 + 48))(v7, 1, AssociatedTypeWitness);
  v16 = *(v5 + 8);
  v16(v7, v14);
  if (a1 == 1)
  {
    v16(v12, v14);
    (*(v15 + 16))(v12, v20 + *(*v20 + 104), AssociatedTypeWitness);
    (*(v15 + 56))(v12, 0, 1, AssociatedTypeWitness);
  }

  v18 = v22;
  v17 = v23;
  (v21)(v23, v12, v22);
  (*(v9 + 56))(v17, 0, 1, v18);
  return (*(v9 + 8))(v12, v18);
}

uint64_t TTRTreeStorageDerivedRerootedTree.convertToImmediateUpstream(_:for:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedTypeWitness();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = sub_21DBFBA8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v17 = MEMORY[0x28223BE20](v16);
  v34 = a1;
  v35 = &v32 - v18;
  v19 = a1;
  v21 = v20;
  (*(v11 + 16))(v15, v19, v10, v17);
  if ((*(v21 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v10);
    type metadata accessor for TTRDerivedTreeLocation();
    return sub_21DBFA68C();
  }

  else
  {
    (*(v21 + 32))(v35, v15, AssociatedTypeWitness);
    v23 = *(AssociatedConformanceWitness + 24);
    v23(AssociatedTypeWitness, AssociatedConformanceWitness);
    v23(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedConformanceWitness();
    v24 = sub_21DBFA10C();
    v25 = *(v33 + 8);
    v25(v6, v4);
    v25(v9, v4);
    v26 = type metadata accessor for TTRDerivedTreeLocation();
    sub_21DBFC5CC();
    v27 = *(v26 - 8);
    swift_allocObject();
    v29 = sub_21DBFA60C();
    v30 = v28;
    if (v24)
    {
      v31 = v32;
      (*(v21 + 56))(v32, 1, 1, AssociatedTypeWitness);
      TTRDerivedTreeLocation.init(parent:index:)(v31, *(v34 + *(v26 + 36)), AssociatedTypeWitness, AssociatedConformanceWitness, v30);
    }

    else
    {
      (*(v27 + 16))(v28, v34, v26);
    }

    sub_21D23C8B4();
    (*(v21 + 8))(v35, AssociatedTypeWitness);
    return v29;
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.deinit()
{
  swift_unknownObjectRelease();
  v1 = *(*v0 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  return v0;
}

uint64_t TTRTreeStorageDerivedRerootedTree.__deallocating_deinit()
{
  TTRTreeStorageDerivedRerootedTree.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D8DA2C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D8DA300(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D8DA33C()
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t TTRHelpAnchor.IOSHelpTopic.identifier.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.IOSHelpTopic.version.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.IOSHelpTopic.helpTopicID.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void sub_21D8DA4C8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 systemVersion];

  v2 = sub_21DBFA16C();
  v4 = v3;

  qword_27CE63818 = v2;
  unk_27CE63820 = v4;
}

uint64_t static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter()
{
  if (qword_27CE56E10 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE63818;
  sub_21DBF8E0C();
  return v0;
}

void __swiftcall TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)(RemindersUICore::TTRHelpAnchor::IOSHelpTopic *__return_ptr retstr, Swift::String identifier, Swift::String helpTopicID, Swift::String version)
{
  retstr->identifier = identifier;
  retstr->version = version;
  retstr->helpTopicID = helpTopicID;
}

uint64_t static TTRHelpAnchor.IOSHelpTopic.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRHelpAnchor.MacOSHelpAnchor.helpAnchor.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRHelpAnchor.MacOSHelpAnchor.book.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRHelpAnchor::MacOSHelpAnchor __swiftcall TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)(Swift::String helpAnchor)
{
  v1[1]._countAndFlagsBits = 0xD000000000000018;
  v1[1]._object = 0x800000021DC6FA20;
  *v1 = helpAnchor;
  result.helpAnchor = helpAnchor;
  return result;
}

uint64_t static TTRHelpAnchor.MacOSHelpAnchor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21DBFC64C();
    }
  }

  return result;
}

uint64_t TTRHelpAnchor.iOSHelpTopic.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_21D8DA800(v2, v3);
}

uint64_t sub_21D8DA800(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

__n128 TTRHelpAnchor.iOSHelpTopic.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21D4F432C(*v1, *(v1 + 8));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

uint64_t TTRHelpAnchor.macOSHelpAnchor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D8DA8CC(v2, v3);
}

uint64_t sub_21D8DA8CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

__n128 TTRHelpAnchor.macOSHelpAnchor.setter(uint64_t a1)
{
  sub_21D8DA944(*(v1 + 48), *(v1 + 56));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  return result;
}

uint64_t sub_21D8DA944(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void __swiftcall TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)(RemindersUICore::TTRHelpAnchor *__return_ptr retstr, RemindersUICore::TTRHelpAnchor::IOSHelpTopic_optional *iOSHelpTopic, RemindersUICore::TTRHelpAnchor::MacOSHelpAnchor_optional macOSHelpAnchor)
{
  v8 = *macOSHelpAnchor.value.helpAnchor._countAndFlagsBits;
  helpTopicID = iOSHelpTopic->value.helpTopicID;
  v5 = *(macOSHelpAnchor.value.helpAnchor._countAndFlagsBits + 16);
  v6 = *(macOSHelpAnchor.value.helpAnchor._countAndFlagsBits + 24);
  sub_21D4F432C(0, 0);
  version = iOSHelpTopic->value.version;
  retstr->iOSHelpTopic.value.identifier = iOSHelpTopic->value.identifier;
  retstr->iOSHelpTopic.value.version = version;
  sub_21D8DA944(0, 0);
  retstr->iOSHelpTopic.value.helpTopicID = helpTopicID;
  retstr->macOSHelpAnchor.value.helpAnchor = v8;
  retstr->macOSHelpAnchor.value.book._countAndFlagsBits = v5;
  retstr->macOSHelpAnchor.value.book._object = v6;
}

id static HLPHelpViewController.viewController(forShowing:)(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v1 = sub_21DBFA12C();
  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() helpViewControllerWithIdentifier:v1 version:v2];

  if (!v3)
  {
    return 0;
  }

  [v3 setShowTopicViewOnLoad_];
  [v3 setDisplayHelpTopicsOnly_];
  v4 = sub_21DBFA12C();
  [v3 setSelectedHelpTopicID_];

  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v5 setModalPresentationStyle_];

  return v5;
}

uint64_t TTRLearnMoreContent.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t _s15RemindersUICore13TTRHelpAnchorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v44 = a1[6];
  v43 = a1[7];
  v45 = a1[8];
  v46 = a1[9];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[5];
  v42 = a2[6];
  v41 = a2[7];
  v39 = a2[8];
  v40 = a2[9];
  if (!v3)
  {
    v37 = *a1;
    v23 = a2[1];
    sub_21D8DA800(v2, 0);
    if (!v8)
    {
      sub_21D8DA800(v9, 0);
      v3 = 0;
      v22 = v37;
      goto LABEL_21;
    }

    v47 = v9;
    sub_21D8DA800(v9, v8);
    v24 = v37;
    v3 = 0;
    goto LABEL_15;
  }

  v38 = a2[4];
  v47 = *a2;
  if (!v8)
  {
    v24 = *a1;
    v23 = 0;
    sub_21D8DA800(v2, v3);
    sub_21D8DA800(v9, 0);
    sub_21D8DA800(v24, v3);

LABEL_15:
    sub_21D4F432C(v24, v3);
    v25 = v47;
    v26 = v23;
LABEL_17:
    sub_21D4F432C(v25, v26);
    return 0;
  }

  if ((v2 != v9 || v3 != v8) && (v13 = a2[3], v14 = a1[2], v15 = a1[4], v16 = *a1, v17 = a1[3], v18 = sub_21DBFC64C(), v4 = v17, v2 = v16, v6 = v15, v5 = v14, v11 = v13, (v18 & 1) == 0) || (v5 != v10 || v4 != v11) && (v19 = v6, v20 = v2, v21 = sub_21DBFC64C(), v2 = v20, v6 = v19, (v21 & 1) == 0))
  {
    v27 = v2;
    sub_21D8DA800(v2, v3);
    sub_21D8DA800(v47, v8);
    sub_21D8DA800(v27, v3);
    sub_21D4F432C(v47, v8);

    v25 = v27;
    v26 = v3;
    goto LABEL_17;
  }

  if (v6 == v38 && v7 == v12)
  {
    v22 = v2;
    sub_21D8DA800(v2, v3);
    sub_21D8DA800(v47, v8);
    sub_21D8DA800(v22, v3);
    sub_21D4F432C(v47, v8);

LABEL_21:
    sub_21D4F432C(v22, v3);
LABEL_22:
    if (v43)
    {
      v29 = v44;
      v31 = v41;
      v30 = v42;
      if (v41)
      {
        if (v44 == v42 && v43 == v41 || (sub_21DBFC64C() & 1) != 0)
        {
          if (v45 == v39 && v46 == v40)
          {
            sub_21D8DA8CC(v44, v43);
            sub_21D8DA8CC(v42, v41);
            sub_21D8DA8CC(v44, v43);
            sub_21D8DA944(v42, v41);

            v32 = v44;
            v33 = v43;
LABEL_39:
            sub_21D8DA944(v32, v33);
            return 1;
          }

          v35 = sub_21DBFC64C();
          sub_21D8DA8CC(v44, v43);
          sub_21D8DA8CC(v42, v41);
          sub_21D8DA8CC(v44, v43);
          sub_21D8DA944(v42, v41);

          sub_21D8DA944(v44, v43);
          if (v35)
          {
            return 1;
          }
        }

        else
        {
          sub_21D8DA8CC(v44, v43);
          sub_21D8DA8CC(v42, v41);
          sub_21D8DA8CC(v44, v43);
          sub_21D8DA944(v42, v41);

          sub_21D8DA944(v44, v43);
        }

        return 0;
      }

      sub_21D8DA8CC(v44, v43);
      sub_21D8DA8CC(v42, 0);
      sub_21D8DA8CC(v44, v43);
    }

    else
    {
      v29 = v44;
      sub_21D8DA8CC(v44, 0);
      v31 = v41;
      v30 = v42;
      if (!v41)
      {
        sub_21D8DA8CC(v42, 0);
        v32 = v44;
        v33 = 0;
        goto LABEL_39;
      }

      sub_21D8DA8CC(v42, v41);
    }

    sub_21D8DA944(v29, v43);
    sub_21D8DA944(v30, v31);
    return 0;
  }

  v34 = v2;
  v36 = sub_21DBFC64C();
  sub_21D8DA800(v34, v3);
  sub_21D8DA800(v47, v8);
  sub_21D8DA800(v34, v3);
  sub_21D4F432C(v47, v8);

  sub_21D4F432C(v34, v3);
  result = 0;
  if (v36)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_21D8DB418()
{
  result = qword_27CE63828;
  if (!qword_27CE63828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63828);
  }

  return result;
}

uint64_t destroy for TTRHelpAnchor(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  result = *(a1 + 56);
  if (result)
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRHelpAnchor(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v11;
    return a1;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = *(a2 + 56);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRHelpAnchor(void *a1, void *a2)
{
  v4 = a2[1];
  if (a1[1])
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
      sub_21D8DB738(a1);
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

  v9 = a2[7];
  if (a1[7])
  {
    if (v9)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];
      sub_21DBF8E0C();

      a1[8] = a2[8];
      a1[9] = a2[9];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D7F5A5C((a1 + 6));
      v10 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v10;
    }
  }

  else if (v9)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v11 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v11;
  }

  return a1;
}

uint64_t assignWithTake for TTRHelpAnchor(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;
      *(a1 + 8) = v4;

      v5 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v5;

      v6 = *(a2 + 40);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = v6;

      if (!*(a1 + 56))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    sub_21D8DB738(a1);
  }

  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 56))
  {
LABEL_10:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    return a1;
  }

LABEL_7:
  v8 = *(a2 + 56);
  if (!v8)
  {
    sub_21D7F5A5C(a1 + 48);
    goto LABEL_10;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  return a1;
}

id TTRExtensionContextInputItem.attributedTitle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRExtensionContextInputItem.attributedContentText.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRExtensionContextInputItem.init(attributedTitle:attributedContentText:attachments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRNSExtensionContextProvider.__allocating_init(extensionContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

char *TTRNSExtensionContextProvider.inputItems.getter()
{
  v1 = [*(v0 + 16) inputItems];
  v2 = sub_21DBFA5EC();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      sub_21D0CEB98(v4, v17);
      sub_21D0CEB98(v17, v16);
      sub_21D0D8CF0(0, &qword_27CE63830);
      if (swift_dynamicCast())
      {
        v6 = [v15 attributedTitle];
        v7 = [v15 attributedContentText];
        v8 = [v15 attachments];
        if (v8)
        {
          v9 = v8;
          sub_21D0D8CF0(0, &qword_280D0C308);
          v10 = sub_21DBFA5EC();
        }

        else
        {

          v10 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0(v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_21D213DCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_21D213DCC((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v13 = &v5[24 * v12];
        *(v13 + 4) = v6;
        *(v13 + 5) = v7;
        *(v13 + 6) = v10;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v17);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t TTRNSExtensionContextProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for TTRExtensionContextInputItem(id *a1)
{
}

void *sub_21D8DBC14(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRExtensionContextInputItem(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRExtensionContextInputItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t TTRRemindersBoardPresentationTreeUpdates.updates(forColumnID:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *&v19 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v21 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D8DC230(&v2[*(v21 + 20)], v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v10 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdatesForColumn(0);
  v11 = &a2[*(v10 + 20)];
  v12 = a2;
  v13 = type metadata accessor for TTRRemindersBoardColumnPresentationTrees(0);
  v14 = *(v13 + 24);
  sub_21D8DC230(v19, v11 + v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AE8);
  v15 = swift_allocObject();
  v19 = *(v9 + 40);
  *(v15 + 16) = v19;
  sub_21D8DC230(v11 + v14, v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AF0);
  v16 = swift_allocObject();
  v16[2] = v15;
  sub_21D8DC14C(v6, v16 + *(*v16 + 104), type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D8DC230(v9, v11, type metadata accessor for TTRRemindersBoardPresentationTrees);
  *(v11 + *(v13 + 20)) = v16;
  swift_unknownObjectRetain();
  sub_21D8E062C(v9, type metadata accessor for TTRRemindersBoardPresentationTrees);
  v17 = *(v20 + *(v21 + 24));
  *v12 = v22;
  *&v12[*(v10 + 24)] = v17;
  return sub_21DBF8E0C();
}

uint64_t sub_21D8DC0BC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v10 = a4(0);
  result = sub_21D8DC14C(a2, &a6[*(v10 + 20)], a5);
  *&a6[*(v10 + 24)] = a3;
  return result;
}

uint64_t sub_21D8DC14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8DC230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8DC2B0(void (*a1)(void))
{
  a1(0);

  return sub_21DBF8E0C();
}

_BYTE *initializeBufferWithCopyOfBuffer for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v6 = &a1[v5];
    v8 = &a2[v5];
    v9 = *&a2[v5 + 24];
    *&a1[v5 + 24] = v9;
    (**(v9 - 8))(&a1[v5], &a2[v5]);
    *(v6 + 40) = *(v8 + 40);
    *(v6 + 7) = *(v8 + 7);
    v91 = v6;
    v92 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    v10 = *(v92 + 28);
    v11 = &v6[v10];
    v88 = v8;
    v12 = &v8[v10];
    *v11 = v8[v10];
    *(v11 + 1) = *&v8[v10 + 1];
    v13 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
    v14 = *(v13 + 28);
    v15 = v11;
    v16 = &v11[v14];
    v17 = v12;
    v18 = &v12[v14];
    v19 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v86 = *(v19 - 8);
    v20 = *(v86 + 48);
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    v89 = v20;
    v94 = v13;
    if (v20(v18, 1, v19))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
      memcpy(v16, v18, *(*(v21 - 8) + 64));
      v22 = a2;
      v23 = v15;
      v24 = v17;
      v25 = a1;
      goto LABEL_51;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v39 = *v18;
      v28 = v16;
      *v16 = *v18;
      v40 = v39;
      swift_storeEnumTagMultiPayload();
      v22 = a2;
      v23 = v15;
      goto LABEL_17;
    }

    v22 = a2;
    v28 = v16;
    if (EnumCaseMultiPayload != 1)
    {
      v23 = v15;
      if (!EnumCaseMultiPayload)
      {
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = swift_getEnumCaseMultiPayload();
        v24 = v17;
        if (v30 > 4)
        {
          v25 = a1;
          if (v30 <= 7)
          {
            if (v30 == 5 || v30 == 6)
            {
              goto LABEL_27;
            }

            goto LABEL_38;
          }

          if (v30 != 8 && v30 != 9)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = a1;
          if (v30 > 2)
          {
LABEL_27:
            v44 = sub_21DBF563C();
            (*(*(v44 - 8) + 16))(v28, v18, v44);
            swift_storeEnumTagMultiPayload();
            goto LABEL_49;
          }

          if (v30 != 1)
          {
            if (v30 == 2)
            {
              goto LABEL_27;
            }

LABEL_38:
            memcpy(v28, v18, *(*(v29 - 8) + 64));
            goto LABEL_49;
          }
        }

        v45 = *v18;
        *v28 = *v18;
        v46 = v45;
        swift_storeEnumTagMultiPayload();
        goto LABEL_49;
      }

      memcpy(v28, v18, *(v86 + 64));
LABEL_17:
      v24 = v17;
      v25 = a1;
LABEL_50:
      (*(v86 + 56))(v28, 0, 1, v19);
LABEL_51:
      v51 = *(v13 + 32);
      v52 = &v23[v51];
      v53 = &v24[v51];
      if (v89(&v24[v51], 1, v19))
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v52, v53, *(*(v54 - 8) + 64));
LABEL_97:
        *&v23[v94[9]] = *&v24[v94[9]];
        v75 = v94[10];
        v76 = &v23[v75];
        v77 = &v24[v75];
        *v76 = *v77;
        *(v76 + 1) = *(v77 + 1);
        *&v23[v94[11]] = *&v24[v94[11]];
        *&v91[*(v92 + 32)] = *&v88[*(v92 + 32)];
        *&v25[*(a3 + 24)] = *&v22[*(a3 + 24)];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        swift_unknownObjectRetain();
        sub_21DBF8E0C();
        return v25;
      }

      v55 = swift_getEnumCaseMultiPayload();
      if (v55 == 2)
      {
        v65 = *v53;
        *v52 = *v53;
        v66 = v65;
        goto LABEL_95;
      }

      if (v55 != 1)
      {
        if (v55)
        {
          memcpy(v52, v53, *(v86 + 64));
LABEL_96:
          (*(v86 + 56))(v52, 0, 1, v19);
          goto LABEL_97;
        }

        v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v57 = swift_getEnumCaseMultiPayload();
        if (v57 > 4)
        {
          if (v57 <= 7)
          {
            if (v57 == 5 || v57 == 6)
            {
              goto LABEL_74;
            }

            goto LABEL_85;
          }

          if (v57 != 8 && v57 != 9)
          {
            goto LABEL_85;
          }
        }

        else
        {
          if (v57 > 2)
          {
LABEL_74:
            v69 = sub_21DBF563C();
            (*(*(v69 - 8) + 16))(v52, v53, v69);
            swift_storeEnumTagMultiPayload();
            goto LABEL_95;
          }

          if (v57 != 1)
          {
            if (v57 == 2)
            {
              goto LABEL_74;
            }

LABEL_85:
            memcpy(v52, v53, *(*(v56 - 8) + 64));
            goto LABEL_95;
          }
        }

        v70 = *v53;
        *v52 = *v53;
        v71 = v70;
        swift_storeEnumTagMultiPayload();
        goto LABEL_95;
      }

      v90 = v23;
      v83 = v19;
      v85 = v22;
      v58 = *v53;
      *v52 = *v53;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      v62 = *(v61 + 48);
      v63 = v58;
      if (v62(v53 + v59, 1, v60))
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v52 + v59, v53 + v59, *(*(v64 - 8) + 64));
        v19 = v83;
        v22 = v85;
        v23 = v90;
LABEL_95:
        swift_storeEnumTagMultiPayload();
        goto LABEL_96;
      }

      v67 = v59;
      v68 = swift_getEnumCaseMultiPayload();
      v19 = v83;
      v22 = v85;
      if (v68 > 4)
      {
        v23 = v90;
        if (v68 <= 7)
        {
          if (v68 == 5 || v68 == 6)
          {
            goto LABEL_86;
          }

          goto LABEL_93;
        }

        if (v68 != 8 && v68 != 9)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v23 = v90;
        if (v68 > 2)
        {
LABEL_86:
          v72 = sub_21DBF563C();
          (*(*(v72 - 8) + 16))(v52 + v67, v53 + v67, v72);
          swift_storeEnumTagMultiPayload();
LABEL_94:
          (*(v61 + 56))(v52 + v67, 0, 1, v60);
          goto LABEL_95;
        }

        if (v68 != 1)
        {
          if (v68 == 2)
          {
            goto LABEL_86;
          }

LABEL_93:
          memcpy(v52 + v67, v53 + v67, *(v61 + 64));
          goto LABEL_94;
        }
      }

      v73 = *(v53 + v67);
      *(v52 + v67) = v73;
      v74 = v73;
      swift_storeEnumTagMultiPayload();
      goto LABEL_94;
    }

    v82 = v19;
    v84 = a2;
    v31 = *v18;
    *v16 = *v18;
    v81 = v16;
    v32 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    v36 = v31;
    v37 = v32;
    if (v35(v18 + v32, 1, v33))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      v28 = v81;
      memcpy(v81 + v37, v18 + v37, *(*(v38 - 8) + 64));
      v19 = v82;
      v22 = v84;
      v23 = v15;
      v24 = v17;
      v25 = a1;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      goto LABEL_50;
    }

    v28 = v81;
    v79 = v33;
    v80 = v34;
    v41 = v37;
    v42 = swift_getEnumCaseMultiPayload();
    v19 = v82;
    v23 = v15;
    if (v42 > 4)
    {
      v22 = v84;
      v24 = v17;
      v43 = v80;
      if (v42 <= 7)
      {
        v25 = a1;
        if (v42 == 5 || v42 == 6)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }

      v25 = a1;
      if (v42 != 8 && v42 != 9)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v22 = v84;
      v24 = v17;
      v43 = v80;
      if (v42 > 2)
      {
        v25 = a1;
LABEL_40:
        v47 = sub_21DBF563C();
        (*(*(v47 - 8) + 16))(v81 + v41, v18 + v41, v47);
        v48 = v79;
        swift_storeEnumTagMultiPayload();
LABEL_48:
        (*(v80 + 56))(v81 + v41, 0, 1, v48);
        goto LABEL_49;
      }

      v25 = a1;
      if (v42 != 1)
      {
        if (v42 == 2)
        {
          goto LABEL_40;
        }

LABEL_47:
        memcpy(v81 + v41, v18 + v41, *(v43 + 64));
        v48 = v79;
        goto LABEL_48;
      }
    }

    v49 = *(v18 + v41);
    *(v81 + v41) = v49;
    v50 = v49;
    v48 = v79;
    swift_storeEnumTagMultiPayload();
    goto LABEL_48;
  }

  v26 = *a2;
  *a1 = *a2;
  v25 = (v26 + ((v4 + 16) & ~v4));

  return v25;
}

uint64_t destroy for TTRRemindersBoardPresentationTreeUpdates(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  __swift_destroy_boxed_opaque_existential_0(v2);
  swift_unknownObjectRelease();

  v3 = v2 + *(type metadata accessor for TTRRemindersBoardPresentationTrees(0) + 28);
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v5 = (v3 + *(v4 + 28));
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(*(v6 - 8) + 48);
  if (!v7(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
LABEL_45:
      v23 = *v5;
LABEL_46:

      goto LABEL_2;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_2;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 != 5 && v11 != 6)
          {
            goto LABEL_2;
          }

LABEL_41:
          v21 = sub_21DBF563C();
          (*(*(v21 - 8) + 8))(v5, v21);
          goto LABEL_2;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 > 2)
        {
          goto LABEL_41;
        }

        if (v11 != 1)
        {
          if (v11 != 2)
          {
            goto LABEL_2;
          }

          goto LABEL_41;
        }
      }

      goto LABEL_45;
    }

    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v15 - 8) + 48))(v5 + v14, 1, v15))
    {
      goto LABEL_2;
    }

    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 4)
    {
      if (v16 <= 7)
      {
        if (v16 == 5)
        {
          goto LABEL_62;
        }

        v17 = v16 == 6;
LABEL_60:
        if (!v17)
        {
          goto LABEL_2;
        }

LABEL_62:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 8))(v5 + v14, v25);
        goto LABEL_2;
      }

      if (v16 != 8)
      {
        v27 = v14;
        if (v16 != 9)
        {
          goto LABEL_2;
        }

        goto LABEL_72;
      }
    }

    else
    {
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          goto LABEL_62;
        }

        v17 = v16 == 4;
        goto LABEL_60;
      }

      if (v16 != 1)
      {
        v17 = v16 == 2;
        goto LABEL_60;
      }
    }

    v27 = v14;
LABEL_72:
    v23 = *(v5 + v27);
    goto LABEL_46;
  }

LABEL_2:
  v8 = (v3 + *(v4 + 32));
  if (v7(v8, 1, v6))
  {
    goto LABEL_3;
  }

  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 2)
  {
    goto LABEL_49;
  }

  if (v12 == 1)
  {

    v18 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v19 - 8) + 48))(v8 + v18, 1, v19))
    {
      goto LABEL_3;
    }

    v20 = swift_getEnumCaseMultiPayload();
    if (v20 > 4)
    {
      if (v20 <= 7)
      {
        if (v20 != 5 && v20 != 6)
        {
          goto LABEL_3;
        }

LABEL_63:
        v26 = sub_21DBF563C();
        (*(*(v26 - 8) + 8))(v8 + v18, v26);
        goto LABEL_3;
      }

      if (v20 != 8 && v20 != 9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v20 > 2)
      {
        goto LABEL_63;
      }

      if (v20 != 1)
      {
        if (v20 != 2)
        {
          goto LABEL_3;
        }

        goto LABEL_63;
      }
    }

    v24 = *(v8 + v18);
    goto LABEL_50;
  }

  if (v12)
  {
    goto LABEL_3;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 4)
  {
    if (v13 > 2)
    {
      goto LABEL_42;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_3;
      }

LABEL_42:
      v22 = sub_21DBF563C();
      (*(*(v22 - 8) + 8))(v8, v22);
      goto LABEL_3;
    }

    goto LABEL_49;
  }

  if (v13 > 7)
  {
    if (v13 != 8 && v13 != 9)
    {
      goto LABEL_3;
    }

LABEL_49:
    v24 = *v8;
LABEL_50:

    goto LABEL_3;
  }

  if (v13 == 5 || v13 == 6)
  {
    goto LABEL_42;
  }

LABEL_3:

  swift_unknownObjectRelease();
}

_BYTE *initializeWithCopy for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  v6 = *&a2[v3 + 24];
  *&a1[v3 + 24] = v6;
  (**(v6 - 8))(&a1[v3], &a2[v3]);
  *(v4 + 40) = *(v5 + 40);
  *(v4 + 7) = *(v5 + 7);
  v77 = v4;
  v78 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v78 + 28);
  v8 = &v4[v7];
  v76 = v5;
  v9 = &v5[v7];
  *v8 = *v9;
  *(v8 + 1) = *(v9 + 1);
  v10 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v10[7];
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  v82 = v14;
  v75 = v15;
  if (v16(v13, 1, v14))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
    memcpy(v12, v13, *(*(v17 - 8) + 64));
    goto LABEL_47;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v30 = *v13;
    v19 = v12;
    *v12 = *v13;
    v31 = v30;
    goto LABEL_45;
  }

  v19 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    v72 = v16;
    v73 = v10;
    v22 = *v13;
    *v12 = *v13;
    v71 = v12;
    v23 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    v27 = v22;
    v28 = v23;
    if (v26(v13 + v23, 1, v24))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      v19 = v71;
      memcpy(v71 + v28, v13 + v28, *(*(v29 - 8) + 64));
      v10 = v73;
      v16 = v72;
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v19 = v71;
    v69 = v28;
    v70 = v24;
    v32 = swift_getEnumCaseMultiPayload();
    if (v32 > 4)
    {
      v10 = v73;
      v16 = v72;
      v33 = v25;
      if (v32 <= 7)
      {
        if (v32 == 5 || v32 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v32 != 8 && v32 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = v73;
      v16 = v72;
      v33 = v25;
      if (v32 > 2)
      {
LABEL_36:
        v37 = sub_21DBF563C();
        v38 = v69;
        (*(*(v37 - 8) + 16))(v71 + v69, v13 + v69, v37);
        v39 = v70;
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v25 + 56))(v71 + v38, 0, 1, v39);
        goto LABEL_45;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        v38 = v69;
        memcpy(v71 + v69, v13 + v69, *(v33 + 64));
        v39 = v70;
        goto LABEL_44;
      }
    }

    v38 = v69;
    v40 = *(v13 + v69);
    *(v71 + v69) = v40;
    v41 = v40;
    v39 = v70;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_24;
        }

        goto LABEL_35;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_24:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 16))(v19, v13, v34);
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_24;
        }

LABEL_35:
        memcpy(v19, v13, *(*(v20 - 8) + 64));
        goto LABEL_45;
      }
    }

    v35 = *v13;
    *v19 = *v13;
    v36 = v35;
    swift_storeEnumTagMultiPayload();
    goto LABEL_45;
  }

  memcpy(v12, v13, *(v15 + 64));
LABEL_46:
  (*(v15 + 56))(v19, 0, 1, v82);
LABEL_47:
  v42 = v10[8];
  v43 = &v8[v42];
  v44 = &v9[v42];
  if (!v16(&v9[v42], 1, v82))
  {
    v46 = swift_getEnumCaseMultiPayload();
    if (v46 == 2)
    {
      v56 = *v44;
      *v43 = *v44;
      v57 = v56;
      goto LABEL_91;
    }

    if (v46 != 1)
    {
      if (v46)
      {
        memcpy(v43, v44, *(v75 + 64));
LABEL_92:
        (*(v75 + 56))(v43, 0, 1, v82);
        goto LABEL_93;
      }

      v47 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v48 = swift_getEnumCaseMultiPayload();
      if (v48 > 4)
      {
        if (v48 <= 7)
        {
          if (v48 == 5 || v48 == 6)
          {
            goto LABEL_70;
          }

          goto LABEL_81;
        }

        if (v48 != 8 && v48 != 9)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v48 > 2)
        {
LABEL_70:
          v59 = sub_21DBF563C();
          (*(*(v59 - 8) + 16))(v43, v44, v59);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v48 != 1)
        {
          if (v48 == 2)
          {
            goto LABEL_70;
          }

LABEL_81:
          memcpy(v43, v44, *(*(v47 - 8) + 64));
          goto LABEL_91;
        }
      }

      v60 = *v44;
      *v43 = *v44;
      v61 = v60;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v74 = v10;
    v49 = *v44;
    *v43 = *v44;
    v50 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    v54 = v49;
    if (v53(v44 + v50, 1, v51))
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v43 + v50, v44 + v50, *(*(v55 - 8) + 64));
      v10 = v74;
LABEL_91:
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v58 = swift_getEnumCaseMultiPayload();
    if (v58 > 4)
    {
      v10 = v74;
      if (v58 <= 7)
      {
        if (v58 == 5 || v58 == 6)
        {
          goto LABEL_82;
        }

        goto LABEL_89;
      }

      if (v58 != 8 && v58 != 9)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v10 = v74;
      if (v58 > 2)
      {
LABEL_82:
        v62 = sub_21DBF563C();
        (*(*(v62 - 8) + 16))(v43 + v50, v44 + v50, v62);
        swift_storeEnumTagMultiPayload();
LABEL_90:
        (*(v52 + 56))(v43 + v50, 0, 1, v51);
        goto LABEL_91;
      }

      if (v58 != 1)
      {
        if (v58 == 2)
        {
          goto LABEL_82;
        }

LABEL_89:
        memcpy(v43 + v50, v44 + v50, *(v52 + 64));
        goto LABEL_90;
      }
    }

    v63 = *(v44 + v50);
    *(v43 + v50) = v63;
    v64 = v63;
    swift_storeEnumTagMultiPayload();
    goto LABEL_90;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  memcpy(v43, v44, *(*(v45 - 8) + 64));
LABEL_93:
  *&v8[v10[9]] = *&v9[v10[9]];
  v65 = v10[10];
  v66 = &v8[v65];
  v67 = &v9[v65];
  *v66 = *v67;
  *(v66 + 1) = *(v67 + 1);
  *&v8[v10[11]] = *&v9[v10[11]];
  *&v77[*(v78 + 32)] = *&v76[*(v78 + 32)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  return a1;
}

_BYTE *assignWithCopy for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  __swift_assign_boxed_opaque_existential_1(&a1[v4], &a2[v4]);
  v7 = v6[6];
  v5[5] = v6[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5[6] = v7;
  v5[7] = v6[7];
  sub_21DBF8E0C();

  v129 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v130 = v6;
  v8 = *(v129 + 28);
  v9 = v5 + v8;
  v10 = v6 + v8;
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v134 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v134[7];
  v12 = &v9[v11];
  v13 = &v10[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v127 = *(v14 - 8);
  v15 = *(v127 + 48);
  v16 = v15(v12, 1, v14);
  v133 = v14;
  v17 = v15(v13, 1, v14);
  if (v16)
  {
    if (!v17)
    {
      v18 = v14;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v31 = *v13;
        *v12 = *v13;
        v32 = v31;
        goto LABEL_81;
      }

      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v12, v13, *(v127 + 64));
LABEL_82:
          (*(v127 + 56))(v12, 0, 1, v18);
          goto LABEL_83;
        }

        v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v21 = swift_getEnumCaseMultiPayload();
        if (v21 > 4)
        {
          if (v21 <= 7)
          {
            if (v21 == 5 || v21 == 6)
            {
              goto LABEL_40;
            }

            goto LABEL_60;
          }

          if (v21 != 8 && v21 != 9)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v21 > 2)
          {
LABEL_40:
            v40 = sub_21DBF563C();
            (*(*(v40 - 8) + 16))(v12, v13, v40);
            swift_storeEnumTagMultiPayload();
            goto LABEL_81;
          }

          if (v21 != 1)
          {
            if (v21 == 2)
            {
              goto LABEL_40;
            }

LABEL_60:
            memcpy(v12, v13, *(*(v20 - 8) + 64));
            goto LABEL_81;
          }
        }

        v41 = *v13;
        *v12 = *v13;
        v42 = v41;
        swift_storeEnumTagMultiPayload();
        goto LABEL_81;
      }

      v26 = *v13;
      *v12 = *v13;
      v117 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v120 = v12;
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v115 = *(v27 - 8);
      v28 = *(v115 + 48);
      v29 = v26;
      if (v28(v13 + v117, 1, v27))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        v12 = v120;
        memcpy(v120 + v117, v13 + v117, *(*(v30 - 8) + 64));
        v18 = v133;
LABEL_81:
        swift_storeEnumTagMultiPayload();
        goto LABEL_82;
      }

      v114 = v27;
      v36 = swift_getEnumCaseMultiPayload();
      v18 = v133;
      if (v36 > 4)
      {
        v12 = v120;
        if (v36 <= 7)
        {
          v37 = v115;
          if (v36 == 5 || v36 == 6)
          {
            goto LABEL_61;
          }

          goto LABEL_79;
        }

        v37 = v115;
        if (v36 != 8 && v36 != 9)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v12 = v120;
        if (v36 > 2)
        {
LABEL_61:
          v46 = v117;
          v47 = sub_21DBF563C();
          (*(*(v47 - 8) + 16))(v12 + v46, v13 + v46, v47);
          v48 = v114;
          swift_storeEnumTagMultiPayload();
LABEL_80:
          (*(v115 + 56))(v12 + v46, 0, 1, v48);
          goto LABEL_81;
        }

        v37 = v115;
        if (v36 != 1)
        {
          if (v36 == 2)
          {
            goto LABEL_61;
          }

LABEL_79:
          v46 = v117;
          memcpy(v12 + v117, v13 + v117, *(v37 + 64));
          v48 = v114;
          goto LABEL_80;
        }
      }

      v49 = *(v13 + v117);
      *(v120 + v117) = v49;
      v46 = v117;
      v50 = v49;
      v48 = v114;
      swift_storeEnumTagMultiPayload();
      goto LABEL_80;
    }

LABEL_13:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
    memcpy(v12, v13, *(*(v22 - 8) + 64));
    v18 = v14;
    goto LABEL_83;
  }

  if (v17)
  {
    sub_21D8E062C(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
    goto LABEL_13;
  }

  v18 = v14;
  if (v3 == a2)
  {
    goto LABEL_83;
  }

  sub_21D8E062C(v12, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 == 2)
  {
    v38 = *v13;
    *v12 = *v13;
    v39 = v38;
    swift_storeEnumTagMultiPayload();
    goto LABEL_83;
  }

  if (v23 != 1)
  {
    if (v23)
    {
      memcpy(v12, v13, *(v127 + 64));
      goto LABEL_83;
    }

    v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 4)
    {
      if (v25 <= 7)
      {
        if (v25 == 5 || v25 == 6)
        {
          goto LABEL_65;
        }

        goto LABEL_167;
      }

      if (v25 != 8 && v25 != 9)
      {
        goto LABEL_167;
      }
    }

    else
    {
      if (v25 > 2)
      {
LABEL_65:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(v12, v13, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_186;
      }

      if (v25 != 1)
      {
        if (v25 == 2)
        {
          goto LABEL_65;
        }

LABEL_167:
        memcpy(v12, v13, *(*(v24 - 8) + 64));
        goto LABEL_186;
      }
    }

    v52 = *v13;
    *v12 = *v13;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_186;
  }

  v121 = *v13;
  *v12 = *v13;
  v124 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v116 = *(v33 - 8);
  v118 = *(v116 + 48);
  v34 = v121;
  if (!v118(v13 + v124, 1, v33))
  {
    v122 = v33;
    v43 = swift_getEnumCaseMultiPayload();
    v18 = v133;
    if (v43 > 4)
    {
      v44 = v116;
      if (v43 <= 7)
      {
        v45 = v124;
        if (v43 == 5 || v43 == 6)
        {
          goto LABEL_170;
        }

        goto LABEL_184;
      }

      v45 = v124;
      if (v43 != 8 && v43 != 9)
      {
        goto LABEL_184;
      }
    }

    else
    {
      v44 = v116;
      if (v43 > 2)
      {
        v45 = v124;
LABEL_170:
        v107 = sub_21DBF563C();
        (*(*(v107 - 8) + 16))(v12 + v45, v13 + v45, v107);
        v108 = v122;
        swift_storeEnumTagMultiPayload();
LABEL_185:
        (*(v116 + 56))(v12 + v45, 0, 1, v108);
        goto LABEL_186;
      }

      v45 = v124;
      if (v43 != 1)
      {
        if (v43 == 2)
        {
          goto LABEL_170;
        }

LABEL_184:
        memcpy(v12 + v45, v13 + v45, *(v44 + 64));
        v108 = v122;
        goto LABEL_185;
      }
    }

    v109 = *(v13 + v124);
    *(v12 + v124) = v109;
    v110 = v109;
    v108 = v122;
    swift_storeEnumTagMultiPayload();
    goto LABEL_185;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  memcpy(v12 + v124, v13 + v124, *(*(v35 - 8) + 64));
  v18 = v133;
LABEL_186:
  swift_storeEnumTagMultiPayload();
LABEL_83:
  v54 = v134[8];
  v55 = &v9[v54];
  v56 = &v10[v54];
  v57 = v15(&v9[v54], 1, v18);
  v58 = v18;
  v59 = v57;
  v60 = v15(v56, 1, v58);
  if (v59)
  {
    if (!v60)
    {
      v61 = v133;
      v62 = swift_getEnumCaseMultiPayload();
      if (v62 == 2)
      {
        v76 = *v56;
        *v55 = *v56;
        v77 = v76;
        goto LABEL_164;
      }

      if (v62 != 1)
      {
        if (v62)
        {
          memcpy(v55, v56, *(v127 + 64));
LABEL_165:
          (*(v127 + 56))(v55, 0, 1, v61);
          goto LABEL_166;
        }

        v63 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 > 4)
        {
          if (v64 <= 7)
          {
            if (v64 == 5 || v64 == 6)
            {
              goto LABEL_123;
            }

            goto LABEL_143;
          }

          if (v64 != 8 && v64 != 9)
          {
            goto LABEL_143;
          }
        }

        else
        {
          if (v64 > 2)
          {
LABEL_123:
            v88 = sub_21DBF563C();
            (*(*(v88 - 8) + 16))(v55, v56, v88);
            swift_storeEnumTagMultiPayload();
            goto LABEL_164;
          }

          if (v64 != 1)
          {
            if (v64 == 2)
            {
              goto LABEL_123;
            }

LABEL_143:
            memcpy(v55, v56, *(*(v63 - 8) + 64));
            goto LABEL_164;
          }
        }

        v89 = *v56;
        *v55 = *v56;
        v90 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_164;
      }

      v125 = v3;
      v69 = *v56;
      *v55 = *v56;
      v70 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v71 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v123 = v55;
      v72 = *(v71 - 8);
      v73 = *(v72 + 48);
      v74 = v69;
      if (v73(v56 + v70, 1, v71))
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        v55 = v123;
        memcpy(v123 + v70, v56 + v70, *(*(v75 - 8) + 64));
        v3 = v125;
        v61 = v133;
LABEL_164:
        swift_storeEnumTagMultiPayload();
        goto LABEL_165;
      }

      v119 = v70;
      v84 = swift_getEnumCaseMultiPayload();
      v3 = v125;
      if (v84 > 4)
      {
        v61 = v133;
        v85 = v72;
        v55 = v123;
        if (v84 <= 7)
        {
          if (v84 == 5 || v84 == 6)
          {
            goto LABEL_144;
          }

          goto LABEL_162;
        }

        if (v84 != 8 && v84 != 9)
        {
          goto LABEL_162;
        }
      }

      else
      {
        v61 = v133;
        v85 = v72;
        v55 = v123;
        if (v84 > 2)
        {
LABEL_144:
          v92 = sub_21DBF563C();
          v93 = v119;
          (*(*(v92 - 8) + 16))(v55 + v119, v56 + v119, v92);
          swift_storeEnumTagMultiPayload();
LABEL_163:
          (*(v85 + 56))(v55 + v93, 0, 1, v71);
          goto LABEL_164;
        }

        if (v84 != 1)
        {
          if (v84 == 2)
          {
            goto LABEL_144;
          }

LABEL_162:
          v93 = v119;
          memcpy(v55 + v119, v56 + v119, *(v85 + 64));
          goto LABEL_163;
        }
      }

      v93 = v119;
      v94 = *(v56 + v119);
      *(v55 + v119) = v94;
      v95 = v94;
      swift_storeEnumTagMultiPayload();
      goto LABEL_163;
    }

    goto LABEL_95;
  }

  if (!v60)
  {
    if (v3 == a2)
    {
      goto LABEL_166;
    }

    sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v66 = swift_getEnumCaseMultiPayload();
    if (v66 == 2)
    {
      v86 = *v56;
      *v55 = *v56;
      v87 = v86;
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    if (v66 != 1)
    {
      if (v66)
      {
        v65 = *(v127 + 64);
        goto LABEL_96;
      }

      v67 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 4)
      {
        if (v68 <= 7)
        {
          if (v68 == 5 || v68 == 6)
          {
            goto LABEL_148;
          }

          goto LABEL_168;
        }

        if (v68 != 8 && v68 != 9)
        {
          goto LABEL_168;
        }
      }

      else
      {
        if (v68 > 2)
        {
LABEL_148:
          v96 = sub_21DBF563C();
          (*(*(v96 - 8) + 16))(v55, v56, v96);
          swift_storeEnumTagMultiPayload();
          goto LABEL_189;
        }

        if (v68 != 1)
        {
          if (v68 == 2)
          {
            goto LABEL_148;
          }

LABEL_168:
          memcpy(v55, v56, *(*(v67 - 8) + 64));
          goto LABEL_189;
        }
      }

      v97 = *v56;
      *v55 = *v56;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
      goto LABEL_189;
    }

    v126 = v3;
    v78 = *v56;
    *v55 = *v56;
    v128 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v79 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v80 = *(v79 - 8);
    v81 = *(v80 + 48);
    v82 = v78;
    if (v81(v56 + v128, 1, v79))
    {
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v55 + v128, v56 + v128, *(*(v83 - 8) + 64));
      v3 = v126;
LABEL_189:
      swift_storeEnumTagMultiPayload();
      goto LABEL_166;
    }

    v91 = swift_getEnumCaseMultiPayload();
    v3 = v126;
    if (v91 > 4)
    {
      if (v91 <= 7)
      {
        if (v91 == 5 || v91 == 6)
        {
          goto LABEL_174;
        }

        goto LABEL_187;
      }

      if (v91 != 8 && v91 != 9)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (v91 > 2)
      {
LABEL_174:
        v111 = sub_21DBF563C();
        (*(*(v111 - 8) + 16))(v55 + v128, v56 + v128, v111);
        swift_storeEnumTagMultiPayload();
LABEL_188:
        (*(v80 + 56))(v55 + v128, 0, 1, v79);
        goto LABEL_189;
      }

      if (v91 != 1)
      {
        if (v91 == 2)
        {
          goto LABEL_174;
        }

LABEL_187:
        memcpy(v55 + v128, v56 + v128, *(v80 + 64));
        goto LABEL_188;
      }
    }

    v112 = *(v56 + v128);
    *(v55 + v128) = v112;
    v113 = v112;
    swift_storeEnumTagMultiPayload();
    goto LABEL_188;
  }

  sub_21D8E062C(v55, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_95:
  v65 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
LABEL_96:
  memcpy(v55, v56, v65);
LABEL_166:
  *&v9[v134[9]] = *&v10[v134[9]];
  sub_21DBF8E0C();

  v99 = v134[10];
  v100 = &v9[v99];
  v101 = &v10[v99];
  *v100 = *v101;
  *(v100 + 1) = *(v101 + 1);
  sub_21DBF8E0C();

  *&v9[v134[11]] = *&v10[v134[11]];
  sub_21DBF8E0C();

  v102 = *(v129 + 32);
  v103 = (v5 + v102);
  v104 = (v130 + v102);
  v105 = v104[1];
  *v103 = *v104;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v103[1] = v105;
  *&v3[*(a3 + 24)] = *&a2[*(a3 + 24)];
  sub_21DBF8E0C();

  return v3;
}

uint64_t sub_21D8E062C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  *(v4 + 4) = *&a2[v3 + 32];
  v6 = *&a2[v3 + 16];
  *v4 = *&a2[v3];
  *(v4 + 1) = v6;
  *(v4 + 40) = *&a2[v3 + 40];
  *(v4 + 7) = *&a2[v3 + 56];
  v55 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v7 = *(v55 + 28);
  v8 = &v4[v7];
  v9 = &v5[v7];
  *v8 = v5[v7];
  *(v8 + 1) = *&v5[v7 + 1];
  v10 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v11 = v10[7];
  v12 = &v8[v11];
  v13 = &v9[v11];
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 48);
  if (v15(v13, 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
    goto LABEL_36;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v47 = v10;
    v52 = v15;
    *v12 = *v13;
    v20 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v49 = v12;
    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13 + v20, 1, v21))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      v12 = v49;
      memcpy(v49 + v20, v13 + v20, *(*(v23 - 8) + 64));
      v15 = v52;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v10 = v47;
      goto LABEL_35;
    }

    v45 = v21;
    v46 = v20;
    v24 = swift_getEnumCaseMultiPayload();
    if (v24 <= 3)
    {
      v12 = v49;
      v15 = v52;
      if (v24 == 2 || v24 == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = v49;
      v15 = v52;
      if (v24 == 4 || v24 == 5 || v24 == 6)
      {
LABEL_20:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 32))(v12 + v46, v13 + v46, v25);
        v26 = v45;
        swift_storeEnumTagMultiPayload();
LABEL_33:
        (*(v22 + 56))(v12 + v46, 0, 1, v26);
        goto LABEL_34;
      }
    }

    memcpy(v12 + v46, v13 + v46, *(v22 + 64));
    v26 = v45;
    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
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
LABEL_9:
      v19 = sub_21DBF563C();
      (*(*(v19 - 8) + 32))(v12, v13, v19);
      swift_storeEnumTagMultiPayload();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      goto LABEL_35;
    }

    memcpy(v12, v13, *(*(v51 - 8) + 64));
    goto LABEL_25;
  }

  memcpy(v12, v13, *(v54 + 64));
LABEL_35:
  (*(v54 + 56))(v12, 0, 1, v14);
LABEL_36:
  v27 = v10[8];
  v28 = &v8[v27];
  v29 = &v9[v27];
  if (!v15(&v9[v27], 1, v14))
  {
    v31 = swift_getEnumCaseMultiPayload();
    if (v31 != 1)
    {
      if (v31)
      {
        memcpy(v28, v29, *(v54 + 64));
LABEL_69:
        (*(v54 + 56))(v28, 0, 1, v14);
        goto LABEL_70;
      }

      v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_44;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_44:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(v28, v29, v34);
        swift_storeEnumTagMultiPayload();
LABEL_68:
        swift_storeEnumTagMultiPayload();
        goto LABEL_69;
      }

      memcpy(v28, v29, *(*(v32 - 8) + 64));
      goto LABEL_68;
    }

    *v28 = *v29;
    v53 = v28;
    v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v29 + v35, 1, v36))
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v53 + v35, v29 + v35, *(*(v38 - 8) + 64));
      v28 = v53;
      goto LABEL_68;
    }

    v48 = v35;
    v50 = v36;
    v39 = swift_getEnumCaseMultiPayload();
    if (v39 <= 3)
    {
      v28 = v53;
      if (v39 != 2)
      {
        v40 = v48;
        if (v39 == 3)
        {
LABEL_55:
          v41 = sub_21DBF563C();
          (*(*(v41 - 8) + 32))(v28 + v40, v29 + v40, v41);
          v42 = v50;
          swift_storeEnumTagMultiPayload();
LABEL_67:
          (*(v37 + 56))(v28 + v40, 0, 1, v42);
          goto LABEL_68;
        }

LABEL_66:
        memcpy(v28 + v40, v29 + v40, *(v37 + 64));
        v42 = v50;
        goto LABEL_67;
      }
    }

    else
    {
      v28 = v53;
      if (v39 != 4)
      {
        v40 = v48;
        if (v39 == 5 || v39 == 6)
        {
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    v43 = sub_21DBF563C();
    v40 = v48;
    (*(*(v43 - 8) + 32))(v28 + v48, v29 + v48, v43);
    v42 = v50;
    swift_storeEnumTagMultiPayload();
    goto LABEL_67;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  memcpy(v28, v29, *(*(v30 - 8) + 64));
LABEL_70:
  *&v8[v10[9]] = *&v9[v10[9]];
  *&v8[v10[10]] = *&v9[v10[10]];
  *&v8[v10[11]] = *&v9[v10[11]];
  *&v4[*(v55 + 32)] = *&v5[*(v55 + 32)];
  result = a1;
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return result;
}

_BYTE *assignWithTake for TTRRemindersBoardPresentationTreeUpdates(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = &a1[v3];
  v5 = &a2[v3];
  __swift_destroy_boxed_opaque_existential_0(&a1[v3]);
  v6 = *(v5 + 1);
  *v4 = *v5;
  *(v4 + 1) = v6;
  v7 = *(v5 + 5);
  v8 = *(v5 + 6);
  *(v4 + 4) = *(v5 + 4);
  *(v4 + 5) = v7;
  swift_unknownObjectRelease();
  v9 = *(v5 + 7);
  *(v4 + 6) = v8;
  *(v4 + 7) = v9;

  v89 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v10 = *(v89 + 28);
  v11 = &v4[v10];
  v12 = &v5[v10];
  *v11 = v5[v10];
  v11[1] = v5[v10 + 1];
  v11[2] = v5[v10 + 2];
  v93 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v13 = v93[7];
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v88 = *(v16 - 8);
  v17 = *(v88 + 48);
  v18 = v17(v14, 1, v16);
  v19 = v17(v15, 1, v16);
  if (v18)
  {
    if (!v19)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(v14, v15, *(v88 + 64));
LABEL_61:
          (*(v88 + 56))(v14, 0, 1, v16);
          goto LABEL_62;
        }

        v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v22 = swift_getEnumCaseMultiPayload();
        if (v22 <= 3)
        {
          if (v22 == 2 || v22 == 3)
          {
            goto LABEL_9;
          }
        }

        else if (v22 == 4 || v22 == 5 || v22 == 6)
        {
LABEL_9:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 32))(v14, v15, v23);
          swift_storeEnumTagMultiPayload();
LABEL_60:
          swift_storeEnumTagMultiPayload();
          goto LABEL_61;
        }

        memcpy(v14, v15, *(*(v21 - 8) + 64));
        goto LABEL_60;
      }

      v86 = v16;
      *v14 = *v15;
      v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v84 = v14;
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v15 + v29, 1, v30))
      {
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        v14 = v84;
        memcpy(v84 + v29, v15 + v29, *(*(v32 - 8) + 64));
        v16 = v86;
        goto LABEL_60;
      }

      v81 = v31;
      v82 = v29;
      v80 = v30;
      v35 = swift_getEnumCaseMultiPayload();
      if (v35 <= 3)
      {
        v16 = v86;
        if (v35 != 2)
        {
          v36 = v82;
          if (v35 == 3)
          {
LABEL_34:
            v37 = sub_21DBF563C();
            v38 = v84;
            (*(*(v37 - 8) + 32))(v84 + v36, v15 + v36, v37);
            v39 = v80;
            swift_storeEnumTagMultiPayload();
LABEL_59:
            (*(v81 + 56))(&v38[v82], 0, 1, v39);
            v14 = v38;
            goto LABEL_60;
          }

LABEL_58:
          v38 = v84;
          memcpy(v84 + v36, v15 + v36, *(v81 + 64));
          v39 = v80;
          goto LABEL_59;
        }
      }

      else
      {
        v16 = v86;
        if (v35 != 4)
        {
          v36 = v82;
          if (v35 == 5 || v35 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_58;
        }
      }

      v44 = sub_21DBF563C();
      v38 = v84;
      (*(*(v44 - 8) + 32))(v84 + v82, v15 + v82, v44);
      v39 = v80;
      swift_storeEnumTagMultiPayload();
      goto LABEL_59;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
LABEL_13:
    memcpy(v14, v15, v24);
    goto LABEL_62;
  }

  if (a1 == a2)
  {
    goto LABEL_62;
  }

  sub_21D8E062C(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 == 1)
  {
    *v14 = *v15;
    v87 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v33 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v85 = *(v33 - 8);
    if ((*(v85 + 48))(v15 + v87, 1, v33))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v14 + v87, v15 + v87, *(*(v34 - 8) + 64));
      goto LABEL_138;
    }

    v83 = v33;
    v40 = swift_getEnumCaseMultiPayload();
    if (v40 <= 3)
    {
      if (v40 != 2)
      {
        v41 = v87;
        if (v40 == 3)
        {
LABEL_50:
          v42 = sub_21DBF563C();
          (*(*(v42 - 8) + 32))(v14 + v41, v15 + v41, v42);
          v43 = v83;
          swift_storeEnumTagMultiPayload();
LABEL_137:
          (*(v85 + 56))(v14 + v41, 0, 1, v43);
          goto LABEL_138;
        }

LABEL_136:
        memcpy(v14 + v41, v15 + v41, *(v85 + 64));
        v43 = v83;
        goto LABEL_137;
      }
    }

    else if (v40 != 4)
    {
      v41 = v87;
      if (v40 == 5 || v40 == 6)
      {
        goto LABEL_50;
      }

      goto LABEL_136;
    }

    v79 = sub_21DBF563C();
    v41 = v87;
    (*(*(v79 - 8) + 32))(v14 + v87, v15 + v87, v79);
    v43 = v83;
    swift_storeEnumTagMultiPayload();
    goto LABEL_137;
  }

  if (v25)
  {
    v24 = *(v88 + 64);
    goto LABEL_13;
  }

  v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 3)
  {
    if (v27 == 2 || v27 == 3)
    {
      goto LABEL_21;
    }

LABEL_57:
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_138;
  }

  if (v27 != 4 && v27 != 5 && v27 != 6)
  {
    goto LABEL_57;
  }

LABEL_21:
  v28 = sub_21DBF563C();
  (*(*(v28 - 8) + 32))(v14, v15, v28);
  swift_storeEnumTagMultiPayload();
LABEL_138:
  swift_storeEnumTagMultiPayload();
LABEL_62:
  v45 = v93[8];
  v46 = &v11[v45];
  v47 = &v12[v45];
  v48 = v17(&v11[v45], 1, v16);
  v49 = v17(v47, 1, v16);
  if (v48)
  {
    if (!v49)
    {
      v50 = swift_getEnumCaseMultiPayload();
      if (v50 != 1)
      {
        if (v50)
        {
          memcpy(v46, v47, *(v88 + 64));
LABEL_122:
          (*(v88 + 56))(v46, 0, 1, v16);
          goto LABEL_123;
        }

        v51 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v52 = swift_getEnumCaseMultiPayload();
        if (v52 <= 3)
        {
          if (v52 == 2 || v52 == 3)
          {
            goto LABEL_70;
          }
        }

        else if (v52 == 4 || v52 == 5 || v52 == 6)
        {
LABEL_70:
          v53 = sub_21DBF563C();
          (*(*(v53 - 8) + 32))(v46, v47, v53);
          swift_storeEnumTagMultiPayload();
LABEL_121:
          swift_storeEnumTagMultiPayload();
          goto LABEL_122;
        }

        memcpy(v46, v47, *(*(v51 - 8) + 64));
        goto LABEL_121;
      }

      *v46 = *v47;
      v59 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v60 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v47 + v59, 1, v60))
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v46 + v59, v47 + v59, *(*(v62 - 8) + 64));
        goto LABEL_121;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 <= 3)
      {
        if (v67 == 2 || v67 == 3)
        {
          goto LABEL_95;
        }
      }

      else if (v67 == 4 || v67 == 5 || v67 == 6)
      {
LABEL_95:
        v68 = sub_21DBF563C();
        (*(*(v68 - 8) + 32))(v46 + v59, v47 + v59, v68);
        swift_storeEnumTagMultiPayload();
LABEL_120:
        (*(v61 + 56))(v46 + v59, 0, 1, v60);
        goto LABEL_121;
      }

      memcpy(v46 + v59, v47 + v59, *(v61 + 64));
      goto LABEL_120;
    }

    goto LABEL_73;
  }

  if (!v49)
  {
    if (a1 == a2)
    {
      goto LABEL_123;
    }

    sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 != 1)
    {
      if (v55)
      {
        v54 = *(v88 + 64);
        goto LABEL_74;
      }

      v56 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v57 = swift_getEnumCaseMultiPayload();
      if (v57 <= 3)
      {
        if (v57 == 2 || v57 == 3)
        {
          goto LABEL_82;
        }
      }

      else if (v57 == 4 || v57 == 5 || v57 == 6)
      {
LABEL_82:
        v58 = sub_21DBF563C();
        (*(*(v58 - 8) + 32))(v46, v47, v58);
        swift_storeEnumTagMultiPayload();
LABEL_141:
        swift_storeEnumTagMultiPayload();
        goto LABEL_123;
      }

      memcpy(v46, v47, *(*(v56 - 8) + 64));
      goto LABEL_141;
    }

    *v46 = *v47;
    v63 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v64 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v47 + v63, 1, v64))
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v46 + v63, v47 + v63, *(*(v66 - 8) + 64));
      goto LABEL_141;
    }

    v69 = swift_getEnumCaseMultiPayload();
    if (v69 <= 3)
    {
      if (v69 == 2 || v69 == 3)
      {
        goto LABEL_111;
      }
    }

    else if (v69 == 4 || v69 == 5 || v69 == 6)
    {
LABEL_111:
      v70 = sub_21DBF563C();
      (*(*(v70 - 8) + 32))(v46 + v63, v47 + v63, v70);
      swift_storeEnumTagMultiPayload();
LABEL_140:
      (*(v65 + 56))(v46 + v63, 0, 1, v64);
      goto LABEL_141;
    }

    memcpy(v46 + v63, v47 + v63, *(v65 + 64));
    goto LABEL_140;
  }

  sub_21D8E062C(v46, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_73:
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
LABEL_74:
  memcpy(v46, v47, v54);
LABEL_123:
  *&v11[v93[9]] = *&v12[v93[9]];

  v71 = v93[10];
  v72 = &v11[v71];
  v73 = &v12[v71];
  *v72 = *v73;
  *(v72 + 1) = *(v73 + 1);

  *&v11[v93[11]] = *&v12[v93[11]];

  v74 = *(v89 + 32);
  v75 = &v4[v74];
  v76 = &v5[v74];
  v77 = v76[1];
  *v75 = *v76;
  swift_unknownObjectRelease();
  v75[1] = v77;
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}