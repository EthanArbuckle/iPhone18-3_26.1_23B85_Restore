void *sub_261AE4110(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static RemindersInCalendarUtilities.triggerSync(reason:)(uint64_t *a1)
{
  v2 = sub_261CFE1B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  if (v7 >= 3)
  {
    *v6 = v8;
    v6[1] = v7;
    v9 = MEMORY[0x277D45D08];
  }

  else
  {
    v9 = qword_279AFAF30[v7];
  }

  (*(v3 + 104))(v6, *v9, v2);
  sub_261AE4288(v8, v7);
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  sub_261CFE1A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_261AE4288(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    return sub_261CFD104();
  }

  return result;
}

id sub_261AE429C()
{
  result = [objc_allocWithZone(MEMORY[0x277D44850]) initUserInteractive_];
  qword_280D21E98 = result;
  return result;
}

uint64_t AppIntentsServicesRefresher.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for REMStoreIntentPerformer()
{
  result = qword_280D21FF8;
  if (!qword_280D21FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261AE4350()
{
  sub_261AE4410();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261AE4410()
{
  if (!qword_280D22DA0)
  {
    sub_261CFD7E4();
    v0 = sub_261D00154();
    if (!v1)
    {
      atomic_store(v0, &qword_280D22DA0);
    }
  }
}

uint64_t REMStoreIntentPerformer.init(store:)(void *a1)
{
  v3 = OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now;
  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer____lazy_storage___contactStore) = 0;
  *(v1 + 16) = a1;
  type metadata accessor for REMRemindersAppIntentDataView();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v1 + 24) = v6;
  v7 = a1;
  return v1;
}

uint64_t AppDependencyManager.ttrAdd(dependency:)(void *a1)
{
  sub_261AE4630();
  sub_261D002D4();
  *(swift_allocObject() + 16) = a1;
  sub_261AE46EC();
  v2 = a1;
  sub_261CFC694();

  return sub_261AE47C8(v4);
}

uint64_t sub_261AE45F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261AE4630()
{
  result = qword_280D22870;
  if (!qword_280D22870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22870);
  }

  return result;
}

unint64_t sub_261AE4688()
{
  result = qword_280D22868;
  if (!qword_280D22868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22868);
  }

  return result;
}

unint64_t sub_261AE46EC()
{
  result = qword_280D21DD0;
  if (!qword_280D21DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DD0);
  }

  return result;
}

uint64_t sub_261AE4738()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AE47C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2A0, &qword_261D11748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s17TriggerSyncReasonOwxx(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t type metadata accessor for AppEntityID()
{
  result = qword_280D22918;
  if (!qword_280D22918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppDependencyManager.ttrAdd(dependency:)(uint64_t a1)
{
  LOBYTE(v4[0]) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261AE498C(a1, v4);
  v2 = swift_allocObject();
  sub_261AE49F0(v4, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE298, &qword_261D11740);
  sub_261CFC694();

  return sub_261AE47C8(v5);
}

uint64_t sub_261AE4954()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261AE498C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261AE49F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t AppIntentsServicesRefresher.setUpSubscriptionForRefreshUponStoreChange<A>(refreshScheduler:debounceInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a1;
  v63 = a2;
  v65 = v5;
  v64 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_261D00154();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v51 - v11;
  v13 = sub_261CFED54();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20]();
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261AE5058(&qword_280D22D78, MEMORY[0x277D44ED0]);
  v61 = v13;
  v66 = v13;
  v67 = a3;
  v52 = v17;
  v68 = v17;
  v69 = a4;
  v18 = sub_261CFF7C4();
  v57 = *(v18 - 8);
  v19 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = v51 - v20;
  WitnessTable = swift_getWitnessTable();
  v59 = v18;
  v66 = v18;
  v67 = a3;
  v51[2] = WitnessTable;
  v68 = WitnessTable;
  v69 = a4;
  v22 = sub_261CFF7B4();
  v55 = *(v22 - 8);
  v56 = v22;
  v23 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = v51 - v24;
  v25 = sub_261CFECD4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20]();
  v29 = v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v29, *MEMORY[0x277D44DF8], v25);
  v30 = sub_261CFECC4();
  result = (*(v26 + 8))(v29, v25);
  if (v30)
  {
    v32 = v9;
    if (qword_280D21E70 != -1)
    {
      swift_once();
    }

    v33 = v8;
    v34 = sub_261CFF7A4();
    __swift_project_value_buffer(v34, qword_280D21E78);
    v35 = sub_261CFF784();
    v36 = sub_261CFFE84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261AE2000, v35, v36, "AppIntentsServicesRefresher will start subscription to refresh upon store change", v37, 2u);
      MEMORY[0x26671D560](v37, -1, -1);
    }

    v38 = *MEMORY[0x277D44C98];
    sub_261CFFB54();
    sub_261AE52A0();
    v39 = v16;
    sub_261CFED44();
    v40 = AssociatedTypeWitness;
    v41 = *(AssociatedTypeWitness - 8);
    v51[0] = *(v41 + 56);
    v51[1] = v41 + 56;
    (v51[0])(v12, 1, 1, AssociatedTypeWitness);
    v42 = v54;
    v43 = v61;
    sub_261CFF854();
    v52 = a4;
    v44 = *(v32 + 8);
    v44(v12, v8);
    (*(v60 + 8))(v39, v43);
    (v51[0])(v12, 1, 1, v40);
    v45 = v53;
    v46 = v59;
    sub_261CFF864();
    v44(v12, v33);
    (*(v57 + 8))(v42, v46);
    v47 = v56;
    swift_getWitnessTable();
    v48 = v65;
    v49 = sub_261CFF7E4();
    (*(v55 + 8))(v45, v47);
    v50 = v48[2];
    v48[2] = v49;
  }

  return result;
}

uint64_t sub_261AE5058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE50A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D21E78);
  v1 = __swift_project_value_buffer(v0, qword_280D21E78);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_261AE5228(uint64_t a1, uint64_t *a2)
{
  v3 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_261CFF794();
}

uint64_t sub_261AE52A0()
{
  v0 = sub_261CFFEF4();
  v15 = *(v0 - 8);
  v16 = v0;
  v1 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_261CFFED4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_261CFF8C4() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = sub_261CFF8A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261AE55B4();
  v17 = sub_261CFED54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA240, &qword_261D024E8);
  v11 = sub_261CFFAC4();
  v14[1] = v12;
  v14[2] = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D851C8], v6);
  sub_261CFFF24();
  (*(v7 + 8))(v10, v6);
  sub_261CFF8B4();
  v17 = MEMORY[0x277D84F90];
  sub_261AE5058(&unk_280D21DE0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA248, &qword_261D024F0);
  sub_261AE5600();
  sub_261D001D4();
  (*(v15 + 104))(v3, *MEMORY[0x277D85260], v16);
  return sub_261CFFF14();
}

unint64_t sub_261AE55B4()
{
  result = qword_280D21DD8;
  if (!qword_280D21DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DD8);
  }

  return result;
}

unint64_t sub_261AE5600()
{
  result = qword_280D21DF8;
  if (!qword_280D21DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA248, &qword_261D024F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21DF8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UpdateSectionIsCollapsedAppIntent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken.init(dataRepresentation:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFF624();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_261CFF614();
  if (!v1)
  {
    return (*(v4 + 32))(a1, v7, v3);
  }

  return result;
}

void sub_261AE57D0()
{
  v0 = sub_261CFD844();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_261AE58FC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

uint64_t sub_261AE58A4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261AE58FC()
{
  if (!qword_280D21EF8[0])
  {
    type metadata accessor for RecurrentInstanceSpecifier(255);
    v0 = sub_261D00154();
    if (!v1)
    {
      atomic_store(v0, qword_280D21EF8);
    }
  }
}

uint64_t sub_261AE5968(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void static RemindersInCalendarUtilities.fetchScheduledReminders(store:diffingAgainst:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v97 = a3;
  v94 = sub_261CFF5D4();
  v90 = *(v94 - 8);
  v5 = *(v90 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v92 = &v85[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v91 = &v85[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v85[-v11];
  MEMORY[0x28223BE20](v10);
  v93 = &v85[-v12];
  v13 = sub_261CFF5E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v85[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  v19 = *(ResultToken - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](ResultToken);
  v98 = &v85[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC318, &qword_261D098E0);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v85[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC320, &qword_261D098E8);
  v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v85[-v28];
  v30 = sub_261CFF5F4();
  v95 = *(v30 - 8);
  v96 = v30;
  v31 = *(v95 + 64);
  MEMORY[0x28223BE20](v30);
  v101 = &v85[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = [a1 nonUserInteractiveStore];
  sub_261AE64CC(a2, v25);
  if ((*(v19 + 48))(v25, 1, ResultToken) == 1)
  {
    sub_261AE6A40(v25, &qword_27FEDC318, &qword_261D098E0);
    v33 = sub_261CFF624();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  }

  else
  {
    v34 = sub_261CFF624();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v29, v25, v34);
    sub_261AE6824(v25);
    (*(v35 + 56))(v29, 0, 1, v34);
  }

  sub_261CFF634();
  v36 = v101;
  v37 = v99;
  v38 = v100;
  sub_261CFF574();
  sub_261AE6A40(v29, &qword_27FEDC320, &qword_261D098E8);
  if (v37)
  {

    return;
  }

  sub_261CFF584();
  sub_261CFF594();
  v39 = (*(v14 + 88))(v17, v13);
  v40 = v39;
  LODWORD(v99) = *MEMORY[0x277D45780];
  if (v39 == v99)
  {
    (*(v14 + 96))(v17, v13);
    v56 = *v17;
    if (qword_280D21E50 != -1)
    {
      swift_once();
    }

    v57 = sub_261CFF7A4();
    __swift_project_value_buffer(v57, qword_280D21E58);
    sub_261CFD104();
    v58 = sub_261CFF784();
    v59 = sub_261CFFE84();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v98;
    if (v60)
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      if ((v56 & 0xC000000000000001) != 0)
      {
        v63 = sub_261D00274();
      }

      else
      {
        v63 = *(v56 + 16);
      }

      *(v62 + 4) = v63;

      _os_log_impl(&dword_261AE2000, v58, v59, "RemindersInCalendarUtilities: finished fetching {resultType: reload, matchedReminderIDs: %ld}", v62, 0xCu);
      MEMORY[0x26671D560](v62, -1, -1);

      v36 = v101;
    }

    else
    {
    }

    sub_261AE6AA0(v56);
    v67 = v66;

    (*(v95 + 8))(v36, v96);
    v68 = 0;
    v69 = 0;
    goto LABEL_32;
  }

  v41 = *MEMORY[0x277D45778];
  v88 = v39;
  if (v39 == v41)
  {
    v87 = 0;
    (*(v14 + 96))(v17, v13);
    v42 = v90;
    v43 = v93;
    v44 = v17;
    v45 = v94;
    (*(v90 + 32))(v93, v44, v94);
    v46 = v92;
    if (qword_280D21E50 != -1)
    {
      swift_once();
    }

    v47 = sub_261CFF7A4();
    __swift_project_value_buffer(v47, qword_280D21E58);
    v48 = *(v42 + 16);
    v49 = v89;
    v48(v89, v43, v45);
    v50 = v91;
    v48(v91, v43, v45);
    v48(v46, v43, v45);
    v51 = sub_261CFF784();
    v52 = sub_261CFFE84();
    if (os_log_type_enabled(v51, v52))
    {
      v86 = v52;
      v53 = swift_slowAlloc();
      *v53 = 134218496;
      v54 = sub_261CFF5A4();
      if ((v54 & 0xC000000000000001) != 0)
      {
        v55 = sub_261D00274();
      }

      else
      {
        v55 = *(v54 + 16);
      }

      v70 = v91;

      v65 = *(v42 + 8);
      v65(v49, v45);
      *(v53 + 4) = v55;
      *(v53 + 12) = 2048;
      v71 = sub_261CFF5B4();
      if ((v71 & 0xC000000000000001) != 0)
      {
        v72 = sub_261D00274();
      }

      else
      {
        v72 = *(v71 + 16);
      }

      v65(v70, v94);
      *(v53 + 14) = v72;
      *(v53 + 22) = 2048;
      v73 = sub_261CFF5C4();
      if ((v73 & 0xC000000000000001) != 0)
      {
        v74 = sub_261D00274();
      }

      else
      {
        v74 = *(v73 + 16);
      }

      v45 = v94;
      v65(v92, v94);
      *(v53 + 24) = v74;
      _os_log_impl(&dword_261AE2000, v51, v86, "RemindersInCalendarUtilities: finished fetching {resultType: incremental, matchedReminderIDs: %ld, removedReminderIDs: %ld, updatedListIDs: %ld}", v53, 0x20u);
      MEMORY[0x26671D560](v53, -1, -1);
    }

    else
    {
      v64 = *(v42 + 8);
      v64(v46, v45);
      v64(v50, v45);
      v65 = v64;
      v64(v49, v45);
    }

    v75 = v93;
    v76 = sub_261CFF5A4();
    sub_261AE6AA0(v76);
    v67 = v77;

    v78 = sub_261CFF5B4();
    sub_261AE6AA0(v78);
    v68 = v79;

    v80 = sub_261CFF5C4();
    sub_261AE6AA0(v80);
    v69 = v81;

    v65(v75, v45);
    (*(v95 + 8))(v101, v96);
    v40 = v88;
    v61 = v98;
LABEL_32:
    v82 = v40 != v99;
    v83 = v97;
    *v97 = v67;
    v83[1] = v68;
    v83[2] = v69;
    *(v83 + 24) = v82;
    Result = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResult(0);
    sub_261AE7010(v61, v83 + *(Result + 20));
    return;
  }

  sub_261D00604();
  __break(1u);
}

uint64_t sub_261AE6438()
{
  result = sub_261CFD4E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261AE64CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC318, &qword_261D098E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ListEntity()
{
  result = qword_280D22750;
  if (!qword_280D22750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AE659C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_261AE6608()
{
  result = type metadata accessor for AppEntityID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t AppEntityID.init(objectID:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 entityName];
  v5 = sub_261CFFA74();
  v7 = v6;

  v8 = [a1 uuid];
  v9 = type metadata accessor for AppEntityID();
  v10 = a2 + *(v9 + 20);
  sub_261CFD834();

  v11 = *(v9 + 24);
  v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwcp(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_261AE6824(uint64_t a1)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 8))(a1, ResultToken);
  return a1;
}

uint64_t sub_261AE6894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFD4E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_261AE694C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s34ScheduledRemindersFetchResultTokenVwxx(uint64_t a1)
{
  v2 = sub_261CFF624();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_261AE6A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_261AE6AA0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_261D00274())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  v3 = sub_261D00314();
LABEL_6:
  if (sub_261B57A9C() == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      sub_261CFCDA4();
      sub_261CFD104();
      sub_261D00234();
      sub_261CFEE04();
      sub_261BEE0C8();
      sub_261CFFDA4();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);
      sub_261CFCDA4();
      sub_261CFD104();
      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_261D002A4())
        {
LABEL_55:
          sub_261AE6F74();

          return;
        }

        sub_261CFEE04();
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_261BEE120(v36);
    }
  }

  if (v2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261D00234();
    sub_261CFEE04();
    sub_261BEE0C8();
    sub_261CFFDA4();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);
    sub_261CFCDA4();
    sub_261CFD104();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_261D002A4())
    {
      goto LABEL_55;
    }

    sub_261CFEE04();
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_261D000E4();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_261AE7010(uint64_t a1, uint64_t a2)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 32))(a2, a1, ResultToken);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResult.latestFetchResultToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResult(0) + 20);

  return sub_261AE7110(v3, a1);
}

uint64_t sub_261AE7110(uint64_t a1, uint64_t a2)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 16))(a2, a1, ResultToken);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResult.remindersResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_261AE7220(v2, v3, v4, v5);
}

uint64_t sub_261AE7220(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_261CFD104();
    sub_261CFD104();
    v4 = vars8;
  }

  return sub_261CFD104();
}

char *initializeWithCopy for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = sub_261CFD844();
  v9 = *(*(v8 - 8) + 16);
  sub_261CFD104();
  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 16))(v11, v12, v16);
    v11[*(v13 + 20)] = v12[*(v13 + 20)];
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_261AE7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s29ScheduledRemindersFetchResultVwxx(uint64_t a1, uint64_t a2)
{
  sub_261AE75C4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v4 = *(a2 + 20);
  v5 = sub_261CFF624();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_261AE75C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t _s29ScheduledRemindersFetchResultV17IncrementalResultVwxx(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

uint64_t AppEntityID.entityIdentifierString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_261CFD414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFD404();
  sub_261CFD3D4();
  v11 = *v0;
  v12 = v1[1];
  sub_261CFD104();
  MEMORY[0x266719A60](v11, v12);
  v29 = 47;
  v30 = 0xE100000000000000;
  v13 = type metadata accessor for AppEntityID();
  v14 = v1 + *(v13 + 20);
  v15 = sub_261CFD804();
  MEMORY[0x26671C210](v15);

  MEMORY[0x266719A80](v29, v30);
  sub_261AE7A78(v1 + *(v13 + 24), v5);
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
  {
    sub_261AE6A40(v5, &qword_27FEDA108, &unk_261D020C0);
  }

  else
  {
    sub_261C182AC();
    sub_261C87BE8(v5);
  }

  sub_261CFD374();
  v17 = sub_261CFD3F4();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v20 = sub_261CFF7A4();
    __swift_project_value_buffer(v20, qword_27FEDDBA8);
    v21 = sub_261CFF784();
    v22 = sub_261CFFE74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      swift_beginAccess();
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958]);
      v25 = sub_261D005F4();
      v27 = sub_261B879C8(v25, v26, &v31);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_261AE2000, v21, v22, "AppEntityID#entityIdentifierString: failed to obtain URL string from URLComponents {urlComponents: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x26671D560](v24, -1, -1);
      MEMORY[0x26671D560](v23, -1, -1);
    }

    v19 = 0;
  }

  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t sub_261AE7A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AppEntityID(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(a2 + 20);
  v6 = sub_261CFD844();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v8 - 8) + 48))(a1 + v7, 1, v8);
  if (!result)
  {
    v10 = sub_261CFD4E4();
    v11 = *(*(v10 - 8) + 8);

    return v11(a1 + v7, v10);
  }

  return result;
}

uint64_t sub_261AE7BF8(const char *a1, uint64_t a2, char a3)
{
  v5 = sub_261CFF6F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v10 = sub_261CFF724();
  __swift_project_value_buffer(v10, qword_280D26FD0);
  sub_261CFF6E4();
  v11 = sub_261CFF704();
  v12 = sub_261CFFFF4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_261CFF6D4();
      _os_signpost_emit_with_name_impl(&dword_261AE2000, v11, v12, v15, a1, "", v14, 2u);
      MEMORY[0x26671D560](v14, -1, -1);
LABEL_12:

      return (*(v6 + 8))(v9, v5);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v17;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261AE7DD4()
{
  v0 = sub_261CFF724();
  __swift_allocate_value_buffer(v0, qword_280D26FD0);
  __swift_project_value_buffer(v0, qword_280D26FD0);
  return sub_261CFF714();
}

uint64_t sub_261AE7E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261AE7EB8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261AF4BDC;

  return sub_261AE7F64();
}

uint64_t sub_261AE7F64()
{
  v1 = sub_261CFC6C4();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_261CFC6E4();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();
  v7 = type metadata accessor for ReminderEntity();
  v0[8] = v7;
  v8 = *(MEMORY[0x277CB9C08] + 4);
  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_261AE5058(&qword_280D22358, type metadata accessor for ReminderEntity);
  v0[10] = v10;
  *v9 = v0;
  v9[1] = sub_261AE8618;

  return MEMORY[0x28210B468](v7, v10);
}

uint64_t type metadata accessor for ReminderEntity()
{
  result = qword_280D22310;
  if (!qword_280D22310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AE814C()
{
  result = type metadata accessor for AppEntityID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261AE8268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE82B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SectionEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261AE82F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE833C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE8384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE83CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261AE8618(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 56);
    v8 = *(v4 + 32);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 88) = a1 & 1;

    return MEMORY[0x2822009F8](sub_261AE877C, 0, 0);
  }
}

uint64_t sub_261AE877C()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 80);
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    (*(v7 + 104))(v6, *MEMORY[0x277CB9BE0], v8);
    sub_261CFC714();
    (*(v7 + 8))(v6, v8);
    sub_261CFC6D4();
    (*(v5 + 8))(v3, v4);
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 32);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_261AE88A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AE8978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 24));
  result = sub_261CFCA04();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AE8A28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 44));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8A80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 48));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8AD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 52));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8B2C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 52));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8B7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 56));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8BD0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 56));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8C20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 60));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8C74(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 60));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8CC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 64));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8D18(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 64));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8D68@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 68));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8DBC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 68));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8E0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 72));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE8E60(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 72));
  return sub_261CFD2E4();
}

uint64_t sub_261AE8F20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AE8FCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AE90D0()
{
  v1 = type metadata accessor for ListEntity();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v0 + v3 + v1[5];
  v8 = *(v7 + 8);

  v9 = type metadata accessor for AppEntityID();
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v13 - 8) + 48))(v7 + v12, 1, v13))
  {
    v14 = sub_261CFD4E4();
    (*(*(v14 - 8) + 8))(v7 + v12, v14);
  }

  v15 = *(v5 + v1[6]);

  v16 = *(v5 + v1[7]);

  v17 = *(v5 + v1[8]);

  v18 = *(v5 + v1[9]);

  v19 = *(v5 + v1[10]);

  v20 = *(v5 + v1[11]);

  v21 = *(v5 + v1[12]);

  v22 = *(v5 + v1[13]);

  v23 = *(v5 + v1[14]);

  v24 = *(v5 + v1[15]);

  v25 = *(v5 + v1[16]);

  v26 = *(v5 + v1[17]);

  v27 = *(v5 + v1[18]);

  v28 = (v5 + v1[19]);
  if (*v28)
  {
    v29 = v28[1];
  }

  v30 = *(v5 + v1[22]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261AE9330(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AE93EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AE949C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE94DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9544@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDA1D8;
  return result;
}

uint64_t sub_261AE9590(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDA1D8 = v1;
  return result;
}

uint64_t sub_261AE95DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AE9618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AE9644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AE96B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_261AE96F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AE98AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AE98D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AE992C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity() + 32));

  return sub_261CFCDA4();
}

uint64_t sub_261AE9A8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9ACC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9B0C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9B4C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDA510;
  return result;
}

uint64_t sub_261AE9B98(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDA510 = v1;
  return result;
}

uint64_t sub_261AE9BE4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  v11 = v0[12];

  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = v0[21];

  v21 = v0[22];

  v22 = v0[23];

  v23 = v0[24];

  v24 = v0[25];

  v25 = v0[27];

  v26 = v0[28];

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_261AE9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_261AE9DA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *_s19RemindersAppIntents32CreateRemindersPerformingContextV12IntendedListOwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261B49FA0(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_261AE9E90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AE9F88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA018@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDAA08;
  return result;
}

uint64_t sub_261AEA064(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDAA08 = v1;
  return result;
}

double sub_261AEA0D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 72);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AEA164@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 96);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_261AEA1CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

double sub_261AEA264@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 136);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA2A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA2E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 152);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 176);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 184);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA3D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 192);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA420()
{
  v1 = sub_261CFD7E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261AEA4A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA4D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA528@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA63C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 52));

  return sub_261CFCDA4();
}

uint64_t sub_261AEA684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA704@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 72));

  return sub_261CFCDA4();
}

uint64_t sub_261AEA800@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA88C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 68));

  return sub_261CFCDA4();
}

uint64_t sub_261AEA8D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEA954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEA9E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 64));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAA28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEAA54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEAAA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEAB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 56));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAB7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEABA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEACF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 40));

  return sub_261CFCDA4();
}

double sub_261AEAD68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_261AEADC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 36));

  return sub_261CFCDA4();
}

double sub_261AEAE30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  result = *&v8;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_261AEAE8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 32));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAEDC@<X0>(uint64_t *a1@<X8>)
{
  result = AppEntityID.entityIdentifierString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AEAF08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEAF34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEAF88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AEB014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 28));

  return sub_261CFCDA4();
}

uint64_t sub_261AEB05C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_261AEB098@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB0D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB118@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDB108;
  return result;
}

uint64_t sub_261AEB164(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDB108 = v1;
  return result;
}

double sub_261AEB1D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AEB214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_261CFCBB4();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

double sub_261AEB264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_261AEB2D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB314@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB354@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB394@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB3D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB414@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEB4AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

double sub_261AEB4EC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AEB52C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB56C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

BOOL sub_261AEB6E0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_261AEB72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_261AEB798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s20CategorizedRemindersVwxx_0(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

uint64_t sub_261AEB884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AEB90C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB94C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEB994@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEB9C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEBA14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AEBB28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for GroupEntity() + 28));

  return sub_261CFCDA4();
}

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC13ConfigurationVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC12PlatterStyleVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  return a1;
}

uint64_t sub_261AEBC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_261AEBD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_261AEBE80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AEBEB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261AEBEF8()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AEBF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEBF90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEBFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

double sub_261AEC08C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFCA04();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261AEC114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_261CFCA04();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261AEC15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_261CFCA04();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261AEC1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_261CFCA04();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261AEC1F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC234@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC29C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDB8F8;
  return result;
}

uint64_t sub_261AEC2E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDB8F8 = v1;
  return result;
}

uint64_t sub_261AEC3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC3F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC438@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC478@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC530@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDBB20;
  return result;
}

uint64_t sub_261AEC57C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDBB20 = v1;
  return result;
}

uint64_t sub_261AEC608@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC634@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC68C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC6B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC6E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC764@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC7A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC7E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC82C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEC884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEC8C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

__n128 sub_261AEC9D8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_261AECA14(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_261AECA50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 32));
  return result;
}

uint64_t sub_261AECA88(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_261AECABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_261AECAF4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_261AECB28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_261AECB60(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_261AECB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_261AECC5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t _s21ReminderEditingModuleVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_261AECD64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AECDA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AECDE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AECE44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AECE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AECEC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AECF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
    v9 = *(*(ResultToken - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, ResultToken);
  }
}

uint64_t sub_261AECFF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
    v8 = *(*(ResultToken - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, ResultToken);
  }

  return result;
}

void *_s29ScheduledRemindersFetchResultV12ReloadResultVwCP_0(void *a1, void *a2)
{
  *a1 = *a2;
  sub_261CFD104();
  return a1;
}

void **_s9ListColorVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

void **_s9ListColorVwca_0(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **_s9ListColorVwta_0(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_261AED170@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AED1A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AED1E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AED2AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AED2D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AED304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AED388()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AED580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AED5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AED5EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AED6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

__n128 sub_261AED6E0@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 32);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_261AED71C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_261AED758@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_261AED790(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_261AED7C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_261AED7FC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_261AED830(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_261AED8E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AED98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_261AEDA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFE794();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261AEDB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AEDB40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AEDB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_261AEDCA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_261CFD7E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_261AEDE44@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEDE84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEDEC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEDF74()
{
  v1 = sub_261CFD7E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261AEDFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE03C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE07C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE0BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE0FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE13C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE370@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEE3B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AEE3F0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEE4A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE4E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE524@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE5A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE5E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE624@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE6A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE6E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEE724@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 88);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEE764@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEE68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEEA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEEE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEF68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEEFEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEF02C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF06C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF0D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF13C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEF1CC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 72);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF20C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF24C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF28C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF2CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF30C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF34C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF3B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF444@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 160);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF484@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 168);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF4DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF51C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF55C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEF59C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF5DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

double sub_261AEF61C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFEC24();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF65C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF69C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF840@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEF880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFBC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFC08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFEC24();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFD10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity() + 28));

  return sub_261CFCDA4();
}

double sub_261AEFD60@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFDA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDD9F8;
  return result;
}

uint64_t sub_261AEFDEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDD9F8 = v1;
  return result;
}

double sub_261AEFE5C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFE9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AEFEE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEFF0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AEFF80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

double sub_261AEFFC0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF00F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

double sub_261AF0138@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AF0178@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_261CFD844();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_261AF02F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_261CFD844();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_261AF046C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF04D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

double sub_261AF0544@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF060C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF064C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF06B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDDD30;
  return result;
}

uint64_t sub_261AF0700(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDDD30 = v1;
  return result;
}

uint64_t sub_261AF0748()
{
  v1 = (type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + v3);

  v6 = v1[7];
  v7 = sub_261CFD4E4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261AF085C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_261CFD4E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF0908(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_261CFD4E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AF09AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF09D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF0A4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AF0AB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0AF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

double sub_261AF0B84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_261AF0BC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 56);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0C04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

double sub_261AF0C6C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 80);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_261AF0CD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 96);
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_261AF0D1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0D5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0DF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0E34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 152);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF0EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 176);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

id sub_261AF0F90@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_261AF0FC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AF1008()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261AF1048()
{
  v1 = sub_261CFE724();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261AF1130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF115C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF11E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDE020;
  return result;
}

uint64_t sub_261AF122C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDE020 = v1;
  return result;
}

double sub_261AF1274@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_261CFCBB4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_261AF12BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1390@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for GroupEntity() + 24));
  result = sub_261CFCA04();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AF13E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for GroupEntity() + 32));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF143C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for GroupEntity() + 32));
  return sub_261CFD2E4();
}

uint64_t sub_261AF1494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF1540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *_s22DeleteRemindersRequestVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFD104();
  v4 = v3;
  return a1;
}

uint64_t _s6ListIDOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261CCFD68(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

void *_s12ReminderLiteVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  sub_261CFD104();
  return a1;
}

uint64_t sub_261AF16D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_261AF1794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFD7E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261AF18D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1910(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t sub_261AF19C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1A00(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v4 = *a1;
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t sub_261AF1A3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 44));
  result = sub_261CFCA04();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AF1ADC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 52));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1B30(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 52));
  return sub_261CFCA14();
}

double sub_261AF1CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 80));
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

double sub_261AF1DE0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 92));
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1E38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 96));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1E8C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 96));
  return sub_261CFCA14();
}

uint64_t sub_261AF1EDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 100));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF1F30(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 100));
  return sub_261CFCA14();
}

uint64_t sub_261AF1FD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 112));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF202C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 116));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2084@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 120));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF20E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF2190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AF2240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF226C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF22A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF22D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2328@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF23B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity() + 60));

  return sub_261CFCDA4();
}

uint64_t sub_261AF23FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2450@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2518@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_261AF268C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_261AF27C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF281C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF285C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2968@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2994@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF29C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2A48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2BC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261AF2C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCA04();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261AF2CD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];
  sub_261CFD104();
  return sub_261CFCA14();
}

double sub_261AF2D34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SectionEntity() + 28));
  sub_261CFD2D4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2D8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SectionEntity() + 32));
  result = sub_261CFD2D4();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2DE0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for SectionEntity() + 32));
  return sub_261CFD2E4();
}

uint64_t sub_261AF2E78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SectionEntity() + 40));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF2ED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SectionEntityID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF2F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SectionEntityID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AF3044@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF3084@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t sub_261AF30D4(uint64_t result)
{
  if (result)
  {
    return sub_261CFCDA4();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ListBadgeEntity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_261CFCDA4();
  return v2 + 16;
}

uint64_t *_s29ScheduledRemindersFetchResultV12ReloadResultVwca(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_261CFD104();

  return a1;
}

uint64_t *_s29ScheduledRemindersFetchResultV12ReloadResultVwta(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_261AF31F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AF3228(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261AF3248(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_261AF32B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_261AF338C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = sub_261CFFD44();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_261CFFD24();
  swift_unknownObjectRetain();
  v16 = sub_261CFFD14();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v7;
  *(v17 + 56) = a1;
  sub_261AF38F0(0, 0, v14, a5, v17);
}

uint64_t sub_261AF34C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF358C;

  return sub_261CBFAE0((v5 + 5), a5);
}

uint64_t sub_261AF358C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261AF4BD8, v5, v4);
}

uint64_t sub_261AF36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v11 = *(a7 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = sub_261AF358C;

  return (v15)(v7 + 5, a5, a6, a7);
}

uint64_t sub_261AF3818(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261AF36C8(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_261AF38F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_261AF4808(a3, v27 - v11);
  v13 = sub_261CFFD44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_261CFCDA4();
  if (v15 == 1)
  {
    sub_261AE7E50(v12);
  }

  else
  {
    sub_261CFFD34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_261CFFCF4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_261CFFAD4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_261CFCDA4();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_261AE7E50(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_261AE7E50(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_261AF3BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF3C74;

  return sub_261CBFE90((v5 + 5), a5);
}

uint64_t sub_261AF3C74()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261AF3DB0, v5, v4);
}

uint64_t sub_261AF3DB0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261AF3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v11 = *(a7 + 96);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v7[4] = v13;
  *v13 = v7;
  v13[1] = sub_261AF358C;

  return (v15)(v7 + 5, a5, a6, a7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_261AF3FA0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261AF3E10(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.commitEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 88);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF4BDC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.cancelEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261AF43A8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261AF4518(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_261CFFD44();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_261CFFD24();
  sub_261CFCDA4();
  v14 = sub_261CFFD14();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = v7;
  *(v15 + 40) = a1;
  sub_261AF38F0(0, 0, v12, a5, v15);
}

uint64_t sub_261AF4640(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261AF3BB0(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_261AF4744(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261AF34C8(a1, v4, v5, v6, v7);
}

uint64_t sub_261AF4808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261AF4878(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4970;

  return v7(a1);
}

uint64_t sub_261AF4970()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261AF4A68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261AF4BDC;

  return sub_261AF4878(a1, v5);
}

uint64_t sub_261AF4B20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return sub_261AF4878(a1, v5);
}

uint64_t sub_261AF4BE0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FED9EF8);
  v1 = __swift_project_value_buffer(v0, qword_27FED9EF8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ListEntity.ListKind.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6D536D6F74737563;
  }

  else
  {
    result = 1953720684;
  }

  *v0;
  return result;
}

uint64_t sub_261AF4D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D536D6F74737563;
  }

  else
  {
    v4 = 1953720684;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEF7473694C747261;
  }

  if (*a2)
  {
    v6 = 0x6D536D6F74737563;
  }

  else
  {
    v6 = 1953720684;
  }

  if (*a2)
  {
    v7 = 0xEF7473694C747261;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261AF4DAC()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF4E34()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261AF4EA8()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261AF4F38(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x6D536D6F74737563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEF7473694C747261;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261AF4F8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FED9F10);
  __swift_project_value_buffer(v15, qword_27FED9F10);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261AF528C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v29 - v5;
  v43 = sub_261CFD674();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = sub_261CFD6A4();
  v45 = *(v42 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA140, &qword_261D021E8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C0, &unk_261D021F0);
  v44 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_261D01400;
  v19 = v18 + v17;
  v35 = *(v15 + 48);
  *(v18 + v17) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v30 = v9;
  v20(v9);
  sub_261CFD6C4();
  v21 = *(v45 + 56);
  v45 += 56;
  v32 = v21;
  v22 = v40;
  v21(v40, 1, 1, v42);
  v23 = sub_261CFD074();
  v31 = *(*(v23 - 8) + 56);
  v24 = v41;
  v31(v41, 1, 1, v23);
  v33 = v19;
  v25 = v24;
  sub_261CFD0A4();
  v26 = (v19 + v39);
  v39 = *(v44 + 48);
  *v26 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v30, v36, v43);
  sub_261CFD6C4();
  v32(v22, 1, 1, v42);
  v31(v25, 1, 1, v23);
  sub_261CFD0A4();
  v27 = sub_261C39864(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F28 = v27;
  return result;
}

uint64_t ListEntity.ListLayout.rawValue.getter()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 1953720684;
  }

  *v0;
  return result;
}

uint64_t sub_261AF585C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736E6D756C6F63;
  }

  else
  {
    v4 = 1953720684;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x736E6D756C6F63;
  }

  else
  {
    v6 = 1953720684;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261AF58FC()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF5978()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261AF59E0()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261AF5A64(uint64_t *a1@<X8>)
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

uint64_t sub_261AF5AD0(uint64_t a1)
{
  v2 = sub_261AFF648();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF5B40(uint64_t a1)
{
  v2 = sub_261AFFB04();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261AF5B8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FED9F30);
  __swift_project_value_buffer(v15, qword_27FED9F30);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t (*static ListEntity.ListType.typeDisplayRepresentation.modify())()
{
  if (qword_27FED97D8 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FED9F30);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261AF5F48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v30 - v5;
  v37 = sub_261CFD674();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v42 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFFA44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFD6A4();
  v30 = v13;
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA138, &qword_261D021D8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B0, &qword_261D021E0);
  v43 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_261D01400;
  v33 = *(v15 + 48);
  *(v18 + v17) = 0;
  v19 = v18 + v17;
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v36 = v6 + 104;
  v38 = v20;
  v20(v42);
  sub_261CFD6C4();
  v21 = *(v44 + 56);
  v44 += 56;
  v31 = v21;
  v22 = v40;
  v21(v40, 1, 1, v13);
  v23 = sub_261CFD074();
  v24 = *(*(v23 - 8) + 56);
  v25 = v41;
  v24(v41, 1, 1, v23);
  v32 = v19;
  v26 = v25;
  sub_261CFD0A4();
  v27 = (v19 + v39);
  v39 = *(v43 + 48);
  *v27 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v42, v35, v37);
  sub_261CFD6C4();
  v31(v22, 1, 1, v30);
  v24(v26, 1, 1, v23);
  sub_261CFD0A4();
  v28 = sub_261C39A4C(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F48 = v28;
  return result;
}

uint64_t sub_261AF64E0@<X0>(char *a1@<X8>)
{
  v2 = sub_261D00554();

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

uint64_t ListEntity.ListType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65697265636F7267;
  }

  else
  {
    result = 0x647261646E617473;
  }

  *v0;
  return result;
}

uint64_t sub_261AF658C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65697265636F7267;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x65697265636F7267;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261AF6638()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF66C0()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261AF6734()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF67C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_261AF6820(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x65697265636F7267;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261AF6898(uint64_t a1)
{
  v2 = sub_261AFF54C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF6908(uint64_t a1)
{
  v2 = sub_261AFFF48();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261AF6954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FED9F50);
  __swift_project_value_buffer(v15, qword_27FED9F50);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261AF6C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_261AF6CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v105 = v78 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v106 = v78 - v5;
  v6 = sub_261CFD674();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFD6A4();
  v97 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v101 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA128, &qword_261D021C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A0, &qword_261D021C8);
  v104 = v18;
  v19 = *(v18 - 8);
  v90 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v83 = v21;
  *(v21 + 16) = xmmword_261D01410;
  v102 = v21 + v20;
  v84 = *(v18 + 48);
  *(v21 + v20) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v87 = *MEMORY[0x277CC9110];
  v22 = v88 + 104;
  v23 = *(v88 + 104);
  v23(v9);
  sub_261CFD6C4();
  v95 = *(v15 + 56);
  v95(v106, 1, 1, v14);
  v100 = sub_261CFD074();
  v24 = *(v100 - 8);
  v94 = *(v24 + 56);
  v99 = v24 + 56;
  v94(v105, 1, 1, v100);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA130, &qword_261D021D0);
  v93 = v15 + 56;
  v25 = *(v15 + 72);
  v96 = *(v15 + 80);
  v91 = (v96 + 32) & ~v96;
  v103 = 2 * v25;
  v89 = 3 * v25;
  v92 = v25;
  v26 = swift_allocObject();
  v86 = xmmword_261D01420;
  v82 = v26;
  *(v26 + 16) = xmmword_261D01420;
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = v87;
  v28 = v6;
  v29 = v6;
  v30 = v22;
  (v23)(v9, v87, v29);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v28;
  (v23)(v9, v27, v28);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = v27;
  (v23)(v9, v27, v28);
  v88 = v30;
  v32 = v23;
  sub_261CFD6C4();
  v33 = v102;
  v35 = v105;
  v34 = v106;
  sub_261CFD094();
  v82 = v33 + v90;
  v84 = *(v104 + 48);
  *v82 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v85;
  v32(v9, v31, v85);
  v37 = v32;
  sub_261CFD6C4();
  v95(v34, 1, 1, v97);
  v94(v35, 1, 1, v100);
  *(swift_allocObject() + 16) = xmmword_261D01400;
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = v87;
  v39 = v36;
  v37(v9, v87, v36);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v38, v36);
  sub_261CFD6C4();
  v40 = v105;
  v41 = v106;
  sub_261CFD094();
  v84 = 2 * v90;
  v79 = v102 + 2 * v90;
  v80 = *(v104 + 48);
  *v79 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v87, v39);
  sub_261CFD6C4();
  v95(v41, 1, 1, v97);
  v94(v40, 1, 1, v100);
  v82 = v91 + 4 * v92;
  v42 = swift_allocObject();
  v81 = xmmword_261D01430;
  v78[1] = v42;
  *(v42 + 16) = xmmword_261D01430;
  sub_261CFF9B4();
  sub_261CFD874();
  v43 = v87;
  v44 = v85;
  v37(v9, v87, v85);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v44);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v44);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v44);
  sub_261CFD6C4();
  v46 = v105;
  v45 = v106;
  sub_261CFD094();
  v80 = v102 + v84 + v90;
  v84 = *(v104 + 48);
  *v80 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v44);
  sub_261CFD6C4();
  v95(v45, 1, 1, v97);
  v94(v46, 1, 1, v100);
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  sub_261CFF9B4();
  sub_261CFD874();
  v47 = v85;
  v37(v9, v43, v85);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v47);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v47);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v9, v43, v47);
  v48 = v37;
  sub_261CFD6C4();
  v49 = v105;
  v50 = v106;
  sub_261CFD094();
  v84 = 4 * v90;
  *&v81 = v102 + 4 * v90;
  v82 = *(v104 + 48);
  *v81 = 4;
  sub_261CFF9B4();
  sub_261CFD874();
  v51 = v43;
  v52 = v85;
  v48(v9, v51, v85);
  sub_261CFD6C4();
  v95(v50, 1, 1, v97);
  v94(v49, 1, 1, v100);
  v80 = swift_allocObject();
  *(v80 + 16) = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  v53 = v87;
  v54 = v52;
  v48(v9, v87, v52);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55 = v52;
  v56 = v48;
  v48(v9, v53, v55);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v57 = v53;
  v56(v9, v53, v54);
  v58 = v56;
  v78[0] = v56;
  sub_261CFD6C4();
  v60 = v105;
  v59 = v106;
  sub_261CFD094();
  v82 = v102 + v84 + v90;
  v84 = *(v104 + 48);
  *v82 = 5;
  sub_261CFF9B4();
  sub_261CFD874();
  v58(v9, v57, v54);
  sub_261CFD6C4();
  v95(v59, 1, 1, v97);
  v94(v60, 1, 1, v100);
  *&v81 = swift_allocObject();
  *(v81 + 16) = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  v61 = v78[0];
  (v78[0])(v9, v57, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  v62 = v105;
  v63 = v106;
  sub_261CFD094();
  v82 = v102 + 6 * v90;
  v84 = *(v104 + 48);
  *v82 = 7;
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  v95(v63, 1, 1, v97);
  v94(v62, 1, 1, v100);
  *&v81 = swift_allocObject();
  *(v81 + 16) = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  v65 = v105;
  v64 = v106;
  sub_261CFD094();
  v84 = 8 * v90;
  *&v81 = v102 + 7 * v90;
  v82 = *(v104 + 48);
  *v81 = 6;
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v9, v57, v54);
  sub_261CFD6C4();
  v95(v64, 1, 1, v97);
  v94(v65, 1, 1, v100);
  v80 = swift_allocObject();
  *(v80 + 16) = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = v87;
  v67 = v85;
  v61(v9, v87, v85);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68 = v61;
  v61(v9, v66, v67);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v69 = v67;
  v61(v9, v66, v67);
  sub_261CFD6C4();
  v70 = v105;
  v71 = v106;
  sub_261CFD094();
  v80 = v102 + v84;
  *&v81 = *(v104 + 48);
  *v80 = 8;
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v66, v69);
  sub_261CFD6C4();
  v95(v71, 1, 1, v97);
  v94(v70, 1, 1, v100);
  v79 = swift_allocObject();
  *(v79 + 16) = v86;
  v82 = 0xD000000000000011;
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v66, v69);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v66, v69);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v66, v69);
  sub_261CFD6C4();
  v73 = v105;
  v72 = v106;
  sub_261CFD094();
  v84 += v102 + v90;
  v90 = *(v104 + 48);
  *v84 = 9;
  sub_261CFF9B4();
  sub_261CFD874();
  v74 = v87;
  v68(v9, v87, v69);
  sub_261CFD6C4();
  v95(v72, 1, 1, v97);
  v94(v73, 1, 1, v100);
  *(swift_allocObject() + 16) = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  v75 = v85;
  v68(v9, v74, v85);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v74, v75);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v9, v74, v75);
  sub_261CFD6C4();
  sub_261CFD094();
  v76 = sub_261C39C34(v83);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F68 = v76;
  return result;
}

uint64_t sub_261AF8CFC(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }

  return sub_261CFD104();
}

RemindersAppIntents::ListEntity::SortingStyle_optional __swiftcall ListEntity.SortingStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ListEntity.SortingStyle.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x637341656C746974;
    if (v1 != 8)
    {
      v6 = 0x736544656C746974;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    v7 = 0xD000000000000014;
    if (v1 != 5)
    {
      v7 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x746C7561666564;
    v3 = 0xD000000000000016;
    v4 = 0xD000000000000016;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C61756E616DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_261AF8F2C()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C27448(v3, v1);
  return sub_261D006F4();
}

uint64_t sub_261AF8F7C()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C27448(v3, v1);
  return sub_261D006F4();
}

uint64_t sub_261AF8FCC@<X0>(uint64_t *a1@<X8>)
{
  result = ListEntity.SortingStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AF907C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_261AF9118(uint64_t a1)
{
  v2 = sub_261AFF69C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF9188(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }

  return sub_261CFD104();
}

uint64_t sub_261AF91EC(uint64_t a1)
{
  v2 = sub_261B0038C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ListEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ListEntity() + 20);

  return sub_261AF92C8(a1, v3);
}

uint64_t sub_261AF92C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ListEntity.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 24));
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261AF93B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ListEntity() + 24));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.name.modify(uint64_t *a1))()
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
  v5 = *(v1 + *(type metadata accessor for ListEntity() + 24));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t ListEntity.nameUpdatableProperty.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 28));

  return sub_261CFCDA4();
}

uint64_t ListEntity.$color.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 32));

  return sub_261CFCDA4();
}

double sub_261AF95B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 32));
  sub_261CFD2D4();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_261AF9618(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a2 + *(type metadata accessor for ListEntity() + 32));
  sub_261AF9844(v3, v2);
  return sub_261CFD2E4();
}

uint64_t ListEntity.color.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(v1 + *(type metadata accessor for ListEntity() + 32));
  v8 = a1[1];
  v7 = *a1;
  return sub_261CFD2E4();
}

void (*ListEntity.color.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  *(v3 + 112) = *(v1 + *(type metadata accessor for ListEntity() + 32));
  sub_261CFD2D4();
  return sub_261AF97AC;
}

void sub_261AF97AC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[7] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[14];
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v3[12] = v9;
  v3[13] = v10;
  if (a2)
  {
    sub_261AF9844(v4, v5);
    sub_261CFD2E4();
    v12 = v3[2];
    v13 = v3[3];
    v14 = v3[4];
    v15 = v3[5];
    v16 = v3[6];
    sub_261AF98C8(*v3, v3[1]);
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v3);
}

uint64_t sub_261AF9844(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_261CFD104();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();

    return sub_261CFCDA4();
  }

  return result;
}

uint64_t sub_261AF98C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ListEntity.$badge.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 36));

  return sub_261CFCDA4();
}

double sub_261AF99B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ListEntity() + 36));
  sub_261CFD2D4();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_261AF9A14(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a2 + *(type metadata accessor for ListEntity() + 36));
  sub_261AF9C0C(v3, v2);
  return sub_261CFD2E4();
}

uint64_t ListEntity.badge.setter(__int128 *a1)
{
  v3 = *(a1 + 4);
  v4 = *(v1 + *(type metadata accessor for ListEntity() + 36));
  v7 = a1[1];
  v6 = *a1;
  return sub_261CFD2E4();
}

void (*ListEntity.badge.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = *(v1 + *(type metadata accessor for ListEntity() + 36));
  sub_261CFD2D4();
  return sub_261AF9B80;
}

void sub_261AF9B80(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[5] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[10];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;
  if (a2)
  {
    sub_261AF9C0C(v4, v5);
    sub_261CFD2E4();
    v10 = v3[2];
    v11 = v3[3];
    v12 = v3[4];
    sub_261AF9C70(*v3, v3[1]);
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v3);
}

uint64_t sub_261AF9C0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261CFCDA4();

    return sub_261CFCDA4();
  }

  return result;
}

uint64_t sub_261AF9C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ListEntity.$parent.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 40));

  return sub_261CFCDA4();
}

uint64_t sub_261AF9D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &unk_27FEDD950, &unk_261D01440);
  v11 = *(a2 + *(type metadata accessor for ListEntity() + 40));
  sub_261AFB668(v10, v8, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  return sub_261AE6A40(v10, &unk_27FEDD950, &unk_261D01440);
}

uint64_t ListEntity.parent.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ListEntity() + 40));
  sub_261AFB668(a1, v6, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  return sub_261AE6A40(a1, &unk_27FEDD950, &unk_261D01440);
}

void (*ListEntity.parent.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  a1[3] = *(v1 + *(type metadata accessor for ListEntity() + 40));
  sub_261CFD2D4();
  return sub_261AF9FEC;
}

void sub_261AF9FEC(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_261AFB668(v5, v4, &unk_27FEDD950, &unk_261D01440);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (a2)
  {
    sub_261AFB668(v4, v7, &unk_27FEDD950, &unk_261D01440);
    sub_261CFD2E4();
    sub_261AE6A40(v4, &unk_27FEDD950, &unk_261D01440);
  }

  else
  {
    sub_261CFD2E4();
  }

  sub_261AE6A40(v5, &unk_27FEDD950, &unk_261D01440);
  free(v5);
  free(v4);

  free(v7);
}

uint64_t ListEntity.participants.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 44));
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261AFA110(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 44));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.participants.modify(uint64_t *a1))()
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
  v5 = *(v1 + *(type metadata accessor for ListEntity() + 44));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t ListEntity.sections.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 48));
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261AFA2A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ListEntity() + 48));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.sections.modify(uint64_t *a1))()
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
  v5 = *(v1 + *(type metadata accessor for ListEntity() + 48));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

void sub_261AFA3C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ListEntity.$isPinned.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 52));

  return sub_261CFCDA4();
}

uint64_t ListEntity.isPinned.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 52));
  sub_261CFD2D4();
  return v3;
}

uint64_t (*ListEntity.isPinned.modify(void *a1))()
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 52));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$showsCompleted.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 56));

  return sub_261CFCDA4();
}

uint64_t ListEntity.showsCompleted.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 56));
  sub_261CFD2D4();
  return v3;
}

uint64_t (*ListEntity.showsCompleted.modify(void *a1))()
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 56));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$autoCategorize.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 60));

  return sub_261CFCDA4();
}

uint64_t ListEntity.autoCategorize.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 60));
  sub_261CFD2D4();
  return v3;
}

uint64_t (*ListEntity.autoCategorize.modify(void *a1))()
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 60));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$listLayout.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 64));

  return sub_261CFCDA4();
}

uint64_t ListEntity.listLayout.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for ListEntity() + 64));
  return sub_261CFD2E4();
}

uint64_t (*ListEntity.listLayout.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 64));
  sub_261CFD2D4();
  return sub_261AFA8A8;
}

uint64_t sub_261AFA8A8(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 9) = *(a1 + 8);
  return sub_261CFD2E4();
}

uint64_t ListEntity.$sortingStyle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 68));

  return sub_261CFCDA4();
}

uint64_t ListEntity.sortingStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for ListEntity() + 68));
  return sub_261CFD2E4();
}

uint64_t (*ListEntity.sortingStyle.modify(void *a1))()
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 68));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$listType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ListEntity() + 72));

  return sub_261CFCDA4();
}

uint64_t ListEntity.listType.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for ListEntity() + 72));
  return sub_261CFD2E4();
}

uint64_t (*ListEntity.listType.modify(void *a1))()
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity() + 72));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t sub_261AFAAFC()
{
  v32 = sub_261CFF9A4();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFFA24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v26 - v7;
  v8 = sub_261CFD674();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_261CFD6A4();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_261CFD234();
  __swift_allocate_value_buffer(v19, qword_27FED9F70);
  v28 = __swift_project_value_buffer(v19, qword_27FED9F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v9 + 104);
  v26[1] = v9 + 104;
  v21(v12, v20, v8);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v23 = v31;
  v22 = v32;
  (*(v0 + 104))(v31, *MEMORY[0x277CC9BD8], v32);
  sub_261CFF9C4();
  (*(v0 + 8))(v23, v22);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v21(v12, v20, v27);
  v24 = v33;
  sub_261CFD6C4();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_261CFD224();
}

uint64_t sub_261AFAFB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_261AFB080(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static ListEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED97F8 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FED9F70);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261AFB1F4@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_261AFB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = sub_261CFD234();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

uint64_t ListEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = sub_261CFFA24();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  sub_261CFFA14();
  sub_261CFFA04();
  v22 = type metadata accessor for ListEntity();
  v23 = *(v1 + *(v22 + 24));
  sub_261CFCA04();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  v24 = *(v2 + *(v22 + 88));
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v15 + 16))(v19, v21, v14);
  (*(v15 + 56))(v28, 1, 1, v14);
  sub_261AFB668(v11, v27, &qword_27FEDA6F0, &qword_261D01450);
  sub_261CFD0A4();
  sub_261AE6A40(v11, &qword_27FEDA6F0, &qword_261D01450);
  return (*(v15 + 8))(v21, v14);
}

uint64_t sub_261AFB668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t ListEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = *(*(sub_261CFFA24() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = sub_261CFD004();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v10 = sub_261CFD6A4();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261AFB8A4, 0, 0);
}

uint64_t sub_261AFB8A4()
{
  v1 = v0[17];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[5];
  sub_261CFD664();
  v7 = sub_261CFD074();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_261CFCFE4();
  sub_261AE694C(&qword_27FED9F90, MEMORY[0x277CBA238]);
  LOBYTE(v6) = sub_261D001B4();
  v8 = *(v4 + 8);
  v8(v3, v5);
  if (v6)
  {
    v9 = v0[16];
    v34 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[8];
    v13 = v0[6];
    sub_261CFFA14();
    sub_261CFFA04();
    v14 = *(v13 + *(type metadata accessor for ListEntity() + 24));
    sub_261CFCA04();
    v15 = v0[2];
    v16 = v0[3];
    sub_261CFF9E4();

    sub_261CFFA04();
    sub_261CFD684();
    (*(v10 + 8))(v34, v11);
    (*(v10 + 32))(v34, v9, v11);
  }

  v17 = v0[11];
  v18 = v0[9];
  v19 = v0[5];
  sub_261CFCFF4();
  LOBYTE(v19) = sub_261D001B4();
  v8(v17, v18);
  if (v19)
  {
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[6];
    v23 = *(v22 + *(type metadata accessor for ListEntity() + 88));
    AnyListEntityLazyImage.displayRepresentationImage.getter();
    sub_261AE6A40(v20, &qword_27FEDA6F0, &qword_261D01450);
    sub_261AFBC20(v21, v20);
  }

  v24 = v0[17];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[12];
  v28 = v0[13];
  v29 = v0[7];
  v33 = v0[11];
  v35 = v0[8];
  v30 = v0[4];
  (*(v25 + 16))(v0[16], v24, v26);
  (*(v25 + 56))(v29, 1, 1, v26);
  sub_261AFB668(v28, v27, &qword_27FEDA6F0, &qword_261D01450);
  sub_261CFD0A4();
  sub_261AE6A40(v28, &qword_27FEDA6F0, &qword_261D01450);
  (*(v25 + 8))(v24, v26);

  v31 = v0[1];

  return v31();
}

uint64_t sub_261AFBC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ListEntity.listKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListEntity();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t ListEntity.listKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ListEntity();
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t ListEntity.init(id:name:listKind:color:badge:parent:cloudKitContainerProvider:existingShare:participants:sections:isPinned:showsCompleted:autoCategorize:listLayout:sortingStyle:type:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t *a19, unsigned __int8 a20)
{
  v155 = a8;
  v156 = a7;
  v153 = a3;
  v152 = a2;
  v169 = a1;
  v136 = a20;
  v146 = a16;
  v145 = a15;
  v144 = a14;
  v151 = a13;
  v149 = a12;
  v150 = a11;
  v154 = a10;
  v175 = a19;
  v173 = a18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v148 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v147 = v122 - v28;
  v139 = sub_261CFEC94();
  v29 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v140 = v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_261CFD674();
  v31 = *(v174 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v174);
  v34 = v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_261CFD884();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_261CFFA44();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = sub_261CFD6A4();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *a4;
  v45 = a5[1];
  v164 = *a5;
  v163 = v45;
  v46 = a5[3];
  v162 = a5[2];
  v161 = v46;
  v47 = a5[5];
  v160 = a5[4];
  v159 = v47;
  v158 = a5[6];
  v48 = *a6;
  v167 = a6[1];
  v168 = v48;
  v49 = a6[3];
  v157 = a6[2];
  v166 = v49;
  v165 = a6[4];
  v137 = *a17;
  v138 = *v173;
  v143 = *v175;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v131 = sub_261AFF54C();
  v142 = sub_261CFCA44();
  *a9 = v142;
  v50 = type metadata accessor for ListEntity();
  v51 = *(v50 + 24);
  v52 = v50;
  v172 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v141 = sub_261CFCB24();
  *(a9 + v51) = v141;
  v176 = a9;
  v135 = *(v52 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  v53 = v38;
  sub_261CFD874();
  v55 = (v31 + 104);
  v56 = *(v31 + 104);
  v57 = v34;
  v58 = v34;
  LODWORD(v175) = *MEMORY[0x277CC9110];
  v54 = v175;
  v59 = v174;
  v56(v58, v175, v174);
  v170 = v56;
  v173 = v55;
  sub_261CFD6B4();
  v60 = MEMORY[0x2667199E0](v44, &type metadata for UpdateListNameAppIntent);
  *(a9 + v135) = v60;
  v134 = v172[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v56(v57, v54, v59);
  v171 = v44;
  sub_261CFD6B4();
  v61 = sub_261AFF5A0();
  v135 = MEMORY[0x2667199D0](v44, &type metadata for UpdateListColorAppIntent, v61);
  v62 = v176;
  *(v176 + v134) = v135;
  v63 = v172;
  v132 = v172[9];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v64 = v53;
  sub_261CFD874();
  v65 = v175;
  v66 = v174;
  v67 = v170;
  v170(v57, v175, v174);
  v68 = v171;
  sub_261CFD6B4();
  v69 = sub_261AFF5F4();
  v134 = MEMORY[0x2667199D0](v68, &type metadata for UpdateListBadgeAppIntent, v69);
  *(v62 + v132) = v134;
  v130 = v63[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v67(v57, v65, v66);
  v70 = v171;
  sub_261CFD6B4();
  v71 = sub_261AE694C(&qword_280D22670, type metadata accessor for GroupEntity);
  v132 = MEMORY[0x2667199D0](v70, &type metadata for UpdateListParentAppIntent, v71);
  *(v62 + v130) = v132;
  v129 = v63[11];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v72 = v175;
  v73 = v174;
  v74 = v170;
  v170(v57, v175, v174);
  sub_261CFD6B4();
  v130 = sub_261CFCA84();
  *(v176 + v129) = v130;
  v128 = v63[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v74(v57, v72, v73);
  sub_261CFD6B4();
  sub_261AE694C(&qword_280D224E0, type metadata accessor for SectionEntity);
  v129 = sub_261CFCA54();
  v75 = v176;
  *(v176 + v128) = v129;
  v76 = v172;
  v127 = v172[13];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v77 = v175;
  v74(v57, v175, v73);
  v78 = v171;
  sub_261CFD6B4();
  v128 = MEMORY[0x2667199F0](v78, &type metadata for UpdateListIsPinnedAppIntent);
  *(v75 + v127) = v128;
  v126 = v76[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v74(v57, v77, v73);
  v79 = v171;
  sub_261CFD6B4();
  v127 = MEMORY[0x2667199F0](v79, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v75 + v126) = v127;
  v80 = v75;
  v125 = v76[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v175;
  v82 = v174;
  v74(v57, v175, v174);
  sub_261CFD6B4();
  v126 = MEMORY[0x2667199F0](v79, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v80 + v125) = v126;
  v124 = v76[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  v122[1] = v64;
  sub_261CFD874();
  v74(v57, v81, v82);
  sub_261CFD6B4();
  v83 = sub_261AFF648();
  v125 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListListLayoutAppIntent, v83);
  v84 = v176;
  *(v176 + v124) = v125;
  v123 = v76[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v170;
  v170(v57, v175, v82);
  sub_261CFD6B4();
  v86 = sub_261AFF69C();
  v124 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListSortingStyleAppIntent, v86);
  *(v84 + v123) = v124;
  v87 = v76[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v85(v57, v175, v174);
  sub_261CFD6B4();
  v88 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListTypeAppIntent, v131);
  *(v84 + v87) = v88;
  v89 = (v84 + v76[19]);
  *v89 = 0;
  v89[1] = 0;
  v175 = v89;
  v90 = v76[20];
  v173 = v88;
  v174 = v90;
  *(v84 + v90) = 0;
  sub_261B01DC4(v169, v84 + v76[5], type metadata accessor for AppEntityID);
  v91 = v133;
  *(v84 + v76[21]) = v133;
  if (v91 == 1)
  {
    v92 = sub_261D00614();
  }

  else
  {
    v92 = 1;
  }

  LODWORD(v171) = v136 & 1;
  LODWORD(v170) = v92 & 1;
  v93 = type metadata accessor for AnyListEntityLazyImage();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  v96 = swift_allocObject();
  v177 = MEMORY[0x277D84F90];
  v97 = v166;
  v98 = v165;
  sub_261AF9C0C(v168, v167);
  v99 = v164;
  v100 = v163;
  v101 = v162;
  sub_261AF9844(v164, v163);
  sub_261AE694C(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  v102 = sub_261CFECB4();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  *(v96 + 128) = sub_261CFECA4();
  v105 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v106 = sub_261CFD074();
  (*(*(v106 - 8) + 56))(v96 + v105, 1, 1, v106);
  *(v96 + 16) = v170;
  *(v96 + 17) = *v184;
  *(v96 + 20) = *&v184[3];
  v108 = v167;
  v107 = v168;
  *(v96 + 24) = v168;
  *(v96 + 32) = v108;
  v109 = v157;
  *(v96 + 40) = v157;
  *(v96 + 48) = v97;
  *(v96 + 56) = v98;
  *(v96 + 64) = v99;
  *(v96 + 72) = v100;
  *(v96 + 80) = v101;
  v110 = v161;
  v111 = v160;
  *(v96 + 88) = v161;
  *(v96 + 96) = v111;
  v112 = v159;
  v113 = v158;
  *(v96 + 104) = v159;
  *(v96 + 112) = v113;
  *(v96 + 120) = v171;
  *(v96 + 121) = 1;
  *(v176 + v172[22]) = v96;
  LOBYTE(v177) = v144 & 1;
  sub_261CFD2E4();
  LOBYTE(v177) = v145 & 1;
  sub_261CFD2E4();
  LOBYTE(v177) = v146 & 1;
  sub_261CFD2E4();
  LOBYTE(v177) = v137;
  sub_261CFD2E4();
  LOBYTE(v177) = v138;
  sub_261CFD2E4();
  LOBYTE(v98) = v143;
  LOBYTE(v177) = v143;
  sub_261CFD2E4();
  v177 = v164;
  v178 = v163;
  v179 = v162;
  v180 = v110;
  v181 = v111;
  v182 = v112;
  v183 = v113;
  sub_261CFD2E4();
  v177 = v107;
  v178 = v108;
  v179 = v109;
  v180 = v166;
  v181 = v165;
  sub_261CFD2E4();
  v114 = v156;
  v115 = v147;
  sub_261AFB668(v156, v147, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v115, v148, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v115, &unk_27FEDD950, &unk_261D01440);
  v116 = v155;
  v117 = v175;
  v118 = v154;
  *v175 = v155;
  v117[1] = v118;
  v119 = v150;
  *(v176 + v174) = v150;
  v177 = v149;
  sub_261AF30D4(v116);
  v120 = v119;
  sub_261CFCA14();
  v177 = v151;
  sub_261CFCA14();
  v177 = v152;
  v178 = v153;
  sub_261CFCA14();
  LOBYTE(v177) = v98;
  sub_261CFCA14();

  sub_261AF31F8(v116);
  sub_261AE6A40(v114, &unk_27FEDD950, &unk_261D01440);
  return sub_261B013AC(v169, type metadata accessor for AppEntityID);
}

uint64_t ListEntity.init(id:name:listKind:color:badge:parent:cloudKitContainerProvider:existingShare:participants:sections:isPinned:showsCompleted:autoCategorize:listLayout:sortingStyle:listType:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, void *a19, unsigned __int8 a20)
{
  v152 = a8;
  v155 = a7;
  v154 = a3;
  v153 = a2;
  v163 = a1;
  v134 = a20;
  v145 = a16;
  v144 = a15;
  v143 = a14;
  v151 = a13;
  v150 = a12;
  v149 = a11;
  v148 = a10;
  v172 = a19;
  v170 = a18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v147 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v146 = &v119 - v28;
  v137 = sub_261CFEC94();
  v29 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v138 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_261CFD674();
  v31 = *(v171 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v171);
  v34 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_261CFD884();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_261CFFA44();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = sub_261CFD6A4();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *a4;
  v45 = a5[1];
  v139 = *a5;
  v161 = v45;
  v46 = a5[3];
  v160 = a5[2];
  v159 = v46;
  v47 = a5[5];
  v158 = a5[4];
  v157 = v47;
  v156 = a5[6];
  v48 = *a6;
  v166 = a6[1];
  v167 = v48;
  v49 = a6[3];
  v165 = a6[2];
  v140 = v49;
  v133 = a6[4];
  v135 = *a17;
  v136 = *v170;
  v162 = *v172;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v128 = sub_261AFF54C();
  v142 = sub_261CFCA44();
  *a9 = v142;
  v50 = type metadata accessor for ListEntity();
  v51 = *(v50 + 24);
  v52 = v50;
  v169 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v141 = sub_261CFCB24();
  *(a9 + v51) = v141;
  v173 = a9;
  v132 = *(v52 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  v53 = v38;
  sub_261CFD874();
  v55 = (v31 + 104);
  v56 = *(v31 + 104);
  v57 = v34;
  v58 = v34;
  LODWORD(v172) = *MEMORY[0x277CC9110];
  v54 = v172;
  v59 = v171;
  v56(v58, v172, v171);
  v164 = v56;
  v170 = v55;
  sub_261CFD6B4();
  v60 = MEMORY[0x2667199E0](v44, &type metadata for UpdateListNameAppIntent);
  *(a9 + v132) = v60;
  v131 = v169[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v56(v57, v54, v59);
  v168 = v44;
  sub_261CFD6B4();
  v61 = sub_261AFF5A0();
  v132 = MEMORY[0x2667199D0](v44, &type metadata for UpdateListColorAppIntent, v61);
  v62 = v173;
  *(v173 + v131) = v132;
  v63 = v169;
  v129 = v169[9];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v64 = v53;
  sub_261CFD874();
  v65 = v172;
  v66 = v171;
  v67 = v164;
  v164(v57, v172, v171);
  v68 = v168;
  sub_261CFD6B4();
  v69 = sub_261AFF5F4();
  v131 = MEMORY[0x2667199D0](v68, &type metadata for UpdateListBadgeAppIntent, v69);
  *(v62 + v129) = v131;
  v127 = v63[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v67(v57, v65, v66);
  v70 = v168;
  sub_261CFD6B4();
  v71 = sub_261AE694C(&qword_280D22670, type metadata accessor for GroupEntity);
  v129 = MEMORY[0x2667199D0](v70, &type metadata for UpdateListParentAppIntent, v71);
  *(v62 + v127) = v129;
  v126 = v63[11];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v72 = v172;
  v73 = v171;
  v74 = v164;
  v164(v57, v172, v171);
  sub_261CFD6B4();
  v127 = sub_261CFCA84();
  *(v173 + v126) = v127;
  v125 = v63[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v74(v57, v72, v73);
  sub_261CFD6B4();
  sub_261AE694C(&qword_280D224E0, type metadata accessor for SectionEntity);
  v126 = sub_261CFCA54();
  v75 = v173;
  *(v173 + v125) = v126;
  v76 = v169;
  v124 = v169[13];
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v77 = v172;
  v74(v57, v172, v73);
  v78 = v168;
  sub_261CFD6B4();
  v125 = MEMORY[0x2667199F0](v78, &type metadata for UpdateListIsPinnedAppIntent);
  *(v75 + v124) = v125;
  v123 = v76[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v74(v57, v77, v73);
  v79 = v168;
  sub_261CFD6B4();
  v124 = MEMORY[0x2667199F0](v79, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v75 + v123) = v124;
  v80 = v75;
  v122 = v76[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v172;
  v82 = v171;
  v74(v57, v172, v171);
  sub_261CFD6B4();
  v123 = MEMORY[0x2667199F0](v79, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v80 + v122) = v123;
  v121 = v76[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  v119 = v64;
  sub_261CFD874();
  v74(v57, v81, v82);
  sub_261CFD6B4();
  v83 = sub_261AFF648();
  v122 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListListLayoutAppIntent, v83);
  v84 = v173;
  *(v173 + v121) = v122;
  v120 = v76[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v164;
  v164(v57, v172, v82);
  sub_261CFD6B4();
  v86 = sub_261AFF69C();
  v121 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListSortingStyleAppIntent, v86);
  *(v84 + v120) = v121;
  v87 = v76[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v85(v57, v172, v171);
  sub_261CFD6B4();
  v88 = MEMORY[0x2667199C0](v79, &type metadata for UpdateListTypeAppIntent, v128);
  *(v84 + v87) = v88;
  v89 = (v84 + v76[19]);
  *v89 = 0;
  v89[1] = 0;
  v172 = v89;
  v90 = v76[20];
  v170 = v88;
  v171 = v90;
  *(v84 + v90) = 0;
  sub_261B01DC4(v163, v84 + v76[5], type metadata accessor for AppEntityID);
  v91 = v130;
  *(v84 + v76[21]) = v130;
  if (v91 == 1)
  {
    v92 = sub_261D00614();
  }

  else
  {
    v92 = 1;
  }

  LODWORD(v168) = v134 & 1;
  v93 = v92 & 1;
  v94 = type metadata accessor for AnyListEntityLazyImage();
  v95 = *(v94 + 48);
  v96 = *(v94 + 52);
  v97 = swift_allocObject();
  v174 = MEMORY[0x277D84F90];
  v98 = v140;
  v99 = v133;
  sub_261AF9C0C(v167, v166);
  v100 = v139;
  v101 = v158;
  sub_261AF9844(v139, v161);
  sub_261AE694C(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0);
  sub_261D001D4();
  v102 = sub_261CFECB4();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  *(v97 + 128) = sub_261CFECA4();
  v105 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v106 = sub_261CFD074();
  (*(*(v106 - 8) + 56))(v97 + v105, 1, 1, v106);
  *(v97 + 16) = v93;
  *(v97 + 17) = *v181;
  *(v97 + 20) = *&v181[3];
  v107 = v166;
  *(v97 + 24) = v167;
  *(v97 + 32) = v107;
  *(v97 + 40) = v165;
  *(v97 + 48) = v98;
  *(v97 + 56) = v99;
  *(v97 + 64) = v100;
  v108 = v161;
  v109 = v160;
  *(v97 + 72) = v161;
  *(v97 + 80) = v109;
  v110 = v159;
  *(v97 + 88) = v159;
  *(v97 + 96) = v101;
  v111 = v157;
  v112 = v156;
  *(v97 + 104) = v157;
  *(v97 + 112) = v112;
  *(v97 + 120) = v168;
  *(v97 + 121) = 1;
  *(v173 + v169[22]) = v97;
  LOBYTE(v174) = v143 & 1;
  sub_261CFD2E4();
  LOBYTE(v174) = v144 & 1;
  sub_261CFD2E4();
  LOBYTE(v174) = v145 & 1;
  sub_261CFD2E4();
  LOBYTE(v174) = v135;
  sub_261CFD2E4();
  LOBYTE(v174) = v136;
  sub_261CFD2E4();
  LOBYTE(v174) = v162;
  sub_261CFD2E4();
  v174 = v100;
  v175 = v108;
  v176 = v109;
  v177 = v110;
  v178 = v158;
  v179 = v111;
  v180 = v112;
  sub_261CFD2E4();
  v174 = v167;
  v175 = v166;
  v176 = v165;
  v177 = v98;
  v178 = v99;
  sub_261CFD2E4();
  v113 = v155;
  v114 = v146;
  sub_261AFB668(v155, v146, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v114, v147, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v114, &unk_27FEDD950, &unk_261D01440);
  v115 = v171;
  v116 = v172;
  v117 = v148;
  *v172 = v152;
  v116[1] = v117;
  *(v173 + v115) = v149;
  v174 = v150;
  sub_261CFCA14();
  v174 = v151;
  sub_261CFCA14();
  v174 = v153;
  v175 = v154;
  sub_261CFCA14();
  LOBYTE(v174) = v162 & 1;
  sub_261CFCA14();
  sub_261AE6A40(v113, &unk_27FEDD950, &unk_261D01440);
  return sub_261B013AC(v163, type metadata accessor for AppEntityID);
}

uint64_t sub_261AFE67C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_261CFCA04();
  return v4;
}

uint64_t sub_261AFE6DC@<X0>(void *a1@<X8>)
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FED9F88;
  return sub_261CFCDA4();
}

uint64_t static ListEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FED9F88;
  return sub_261CFCDA4();
}

uint64_t sub_261AFE840@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_261CFD234();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_261AFE8EC(uint64_t a1)
{
  v2 = sub_261AE694C(&qword_280D227A0, type metadata accessor for ListEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261AFE96C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return ListEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261AFEA14(uint64_t a1)
{
  v2 = sub_261AE694C(&qword_280D22770, type metadata accessor for ListEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261AFEA90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FED9F88 = result;
  return result;
}

uint64_t static ListEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FED9F88 = v1;
}

uint64_t (*static ListEntity.defaultQuery.modify())()
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static ListEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ListEntity();
  v1 = sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity);

  return MEMORY[0x28210DE00](sub_261AFECB0, 0, v0, v1);
}

void sub_261AFECB0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x28223BE20](v2) + 76));
  if (*v5 && (v6 = v5[1], (v7 = (*v5)()) != 0))
  {
    v8 = v7;
    v9 = *(a1 + *(v2 + 80));
    if (v9)
    {
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 standardOptions];
      sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity);
      sub_261CFF884();
    }

    else
    {
      sub_261B01DC4(a1, v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
      v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v15 = swift_allocObject();
      sub_261B01E2C(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
      v16 = [objc_opt_self() standardOptions];
      sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity);
      sub_261CFF874();
    }
  }

  else
  {
    sub_261B01D70();
    swift_allocError();
    *v13 = 12;
    swift_willThrow();
  }
}

uint64_t sub_261AFEF58(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = a1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261AFEFE8, 0, 0);
}

uint64_t sub_261AFEFE8()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v3 = (v1 + *(type metadata accessor for ListEntity() + 20));
  v4 = *(type metadata accessor for AppEntityID() + 20);
  v5 = *v3;
  v6 = v3[1];
  v7 = objc_allocWithZone(MEMORY[0x277D44700]);
  v8 = sub_261CFD814();
  v9 = sub_261CFFA54();
  v10 = [v7 initWithUUID:v8 entityName:v9];

  *(v0 + 16) = 0;
  v11 = [v2 createShareForListWithID:v10 appIconData:0 error:v0 + 16];

  if (*(v0 + 16))
  {
    *(v0 + 16);

    swift_willThrow();
    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }

  else
  {
    sub_261D00334();

    v12 = objc_allocWithZone(MEMORY[0x277D44700]);
    v13 = sub_261CFD814();
    v14 = sub_261CFFA54();
    v15 = [v12 initWithUUID:v13 entityName:v14];

    v16 = [v15 description];
    v17 = sub_261CFFA74();
    v19 = v18;

    MEMORY[0x26671C210](v17, v19);

    v23 = sub_261CF3338(0xD000000000000028, 0x8000000261D148B0, 0xD00000000000006ALL, 0x8000000261D148E0, 383, v11);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x277D85DE8];

    return v24(v23);
  }
}

uint64_t ListEntity.ListKind.localizedStringResource.getter()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

unint64_t sub_261AFF54C()
{
  result = qword_27FEDB010;
  if (!qword_27FEDB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB010);
  }

  return result;
}

unint64_t sub_261AFF5A0()
{
  result = qword_27FEDB030;
  if (!qword_27FEDB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB030);
  }

  return result;
}

unint64_t sub_261AFF5F4()
{
  result = qword_27FEDB040;
  if (!qword_27FEDB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB040);
  }

  return result;
}

unint64_t sub_261AFF648()
{
  result = qword_27FEDB080;
  if (!qword_27FEDB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB080);
  }

  return result;
}

unint64_t sub_261AFF69C()
{
  result = qword_27FEDB090;
  if (!qword_27FEDB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB090);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_261AFF73C()
{
  result = qword_27FED9FA8;
  if (!qword_27FED9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FA8);
  }

  return result;
}

unint64_t sub_261AFF7D8()
{
  result = qword_27FED9FC0;
  if (!qword_27FED9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FC0);
  }

  return result;
}

unint64_t sub_261AFF82C(uint64_t a1)
{
  result = sub_261AFF854();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261AFF854()
{
  result = qword_27FED9FC8;
  if (!qword_27FED9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FC8);
  }

  return result;
}

unint64_t sub_261AFF8AC()
{
  result = qword_27FED9FD0;
  if (!qword_27FED9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FD0);
  }

  return result;
}

unint64_t sub_261AFF904()
{
  result = qword_27FED9FD8;
  if (!qword_27FED9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FD8);
  }

  return result;
}

unint64_t sub_261AFF95C()
{
  result = qword_27FED9FE0;
  if (!qword_27FED9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FE0);
  }

  return result;
}

unint64_t sub_261AFFA04()
{
  result = qword_27FED9FF8;
  if (!qword_27FED9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FF8);
  }

  return result;
}

unint64_t sub_261AFFA58()
{
  result = qword_27FEDA000;
  if (!qword_27FEDA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA000);
  }

  return result;
}

unint64_t sub_261AFFAAC()
{
  result = qword_280D227B8;
  if (!qword_280D227B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227B8);
  }

  return result;
}

unint64_t sub_261AFFB04()
{
  result = qword_27FEDA008;
  if (!qword_27FEDA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA008);
  }

  return result;
}

unint64_t sub_261AFFB74()
{
  result = qword_27FEDA010;
  if (!qword_27FEDA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA010);
  }

  return result;
}

unint64_t sub_261AFFBD0()
{
  result = qword_27FEDA018;
  if (!qword_27FEDA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA018);
  }

  return result;
}

unint64_t sub_261AFFC28()
{
  result = qword_27FEDA020;
  if (!qword_27FEDA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA020);
  }

  return result;
}

unint64_t sub_261AFFC7C(uint64_t a1)
{
  result = sub_261AFFCA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261AFFCA4()
{
  result = qword_27FEDA028;
  if (!qword_27FEDA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA028);
  }

  return result;
}

unint64_t sub_261AFFCFC()
{
  result = qword_27FEDA030;
  if (!qword_27FEDA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA030);
  }

  return result;
}

unint64_t sub_261AFFD54()
{
  result = qword_27FEDA038;
  if (!qword_27FEDA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA038);
  }

  return result;
}

unint64_t sub_261AFFDAC()
{
  result = qword_27FEDA040;
  if (!qword_27FEDA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA040);
  }

  return result;
}

unint64_t sub_261AFFE48()
{
  result = qword_27FEDA058;
  if (!qword_27FEDA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA058);
  }

  return result;
}

unint64_t sub_261AFFE9C()
{
  result = qword_27FEDA060;
  if (!qword_27FEDA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA060);
  }

  return result;
}

unint64_t sub_261AFFEF0()
{
  result = qword_280D227C0;
  if (!qword_280D227C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227C0);
  }

  return result;
}

unint64_t sub_261AFFF48()
{
  result = qword_27FEDA068;
  if (!qword_27FEDA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA068);
  }

  return result;
}

unint64_t sub_261AFFFB8()
{
  result = qword_27FEDA070;
  if (!qword_27FEDA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA070);
  }

  return result;
}

unint64_t sub_261B00014()
{
  result = qword_27FEDA078;
  if (!qword_27FEDA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA078);
  }

  return result;
}

unint64_t sub_261B0006C()
{
  result = qword_27FEDA080;
  if (!qword_27FEDA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA080);
  }

  return result;
}

unint64_t sub_261B000C0(uint64_t a1)
{
  result = sub_261B000E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261B000E8()
{
  result = qword_27FEDA088;
  if (!qword_27FEDA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA088);
  }

  return result;
}

unint64_t sub_261B00140()
{
  result = qword_27FEDA090;
  if (!qword_27FEDA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA090);
  }

  return result;
}

unint64_t sub_261B00198()
{
  result = qword_27FEDA098;
  if (!qword_27FEDA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA098);
  }

  return result;
}

unint64_t sub_261B001F0()
{
  result = qword_27FEDA0A0;
  if (!qword_27FEDA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0A0);
  }

  return result;
}

unint64_t sub_261B0028C()
{
  result = qword_27FEDA0B8;
  if (!qword_27FEDA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0B8);
  }

  return result;
}

unint64_t sub_261B002E0()
{
  result = qword_27FEDA0C0;
  if (!qword_27FEDA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0C0);
  }

  return result;
}

unint64_t sub_261B00334()
{
  result = qword_280D227B0;
  if (!qword_280D227B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227B0);
  }

  return result;
}

unint64_t sub_261B0038C()
{
  result = qword_27FEDA0C8;
  if (!qword_27FEDA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0C8);
  }

  return result;
}

unint64_t sub_261B00450()
{
  result = qword_27FEDA0D0;
  if (!qword_27FEDA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0D0);
  }

  return result;
}

unint64_t sub_261B004AC()
{
  result = qword_27FEDA0D8;
  if (!qword_27FEDA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0D8);
  }

  return result;
}

unint64_t sub_261B0054C()
{
  result = qword_27FEDA0E8;
  if (!qword_27FEDA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0E8);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ListEntity(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID();
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v37 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFD104();
    v37(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    v22 = a3[7];
    *(v7 + a3[6]) = *(a2 + a3[6]);
    *(v7 + v22) = *(a2 + v22);
    v23 = a3[9];
    *(v7 + a3[8]) = *(a2 + a3[8]);
    *(v7 + v23) = *(a2 + v23);
    v24 = a3[11];
    *(v7 + a3[10]) = *(a2 + a3[10]);
    *(v7 + v24) = *(a2 + v24);
    v25 = a3[13];
    *(v7 + a3[12]) = *(a2 + a3[12]);
    *(v7 + v25) = *(a2 + v25);
    v26 = a3[15];
    *(v7 + a3[14]) = *(a2 + a3[14]);
    *(v7 + v26) = *(a2 + v26);
    v27 = a3[17];
    *(v7 + a3[16]) = *(a2 + a3[16]);
    *(v7 + v27) = *(a2 + v27);
    v28 = a3[19];
    *(v7 + a3[18]) = *(a2 + a3[18]);
    v38 = (v7 + v28);
    v36 = a2 + v28;
    v35 = *(a2 + v28);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    if (v35)
    {
      v29 = *(v36 + 1);
      *v38 = v35;
      v38[1] = v29;
      sub_261CFCDA4();
    }

    else
    {
      *v38 = *v36;
    }

    v30 = a3[20];
    v31 = a3[21];
    v32 = *(a2 + v30);
    *(v7 + v30) = v32;
    *(v7 + v31) = *(a2 + v31);
    *(v7 + a3[22]) = *(a2 + a3[22]);
    v33 = v32;
  }

  sub_261CFCDA4();
  return v7;
}

uint64_t destroy for ListEntity(uint64_t *a1, int *a2)
{
  v4 = *a1;

  v5 = a1 + a2[5];
  v6 = *(v5 + 1);

  v7 = type metadata accessor for AppEntityID();
  v8 = *(v7 + 20);
  v9 = sub_261CFD844();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = *(v7 + 24);
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v11 - 8) + 48))(&v5[v10], 1, v11))
  {
    v12 = sub_261CFD4E4();
    (*(*(v12 - 8) + 8))(&v5[v10], v12);
  }

  v13 = *(a1 + a2[6]);

  v14 = *(a1 + a2[7]);

  v15 = *(a1 + a2[8]);

  v16 = *(a1 + a2[9]);

  v17 = *(a1 + a2[10]);

  v18 = *(a1 + a2[11]);

  v19 = *(a1 + a2[12]);

  v20 = *(a1 + a2[13]);

  v21 = *(a1 + a2[14]);

  v22 = *(a1 + a2[15]);

  v23 = *(a1 + a2[16]);

  v24 = *(a1 + a2[17]);

  v25 = *(a1 + a2[18]);

  v26 = (a1 + a2[19]);
  if (*v26)
  {
    v27 = v26[1];
  }

  v28 = *(a1 + a2[22]);
}

void *initializeWithCopy for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v10 = type metadata accessor for AppEntityID();
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  v35 = *(*(v12 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFD104();
  v35(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = sub_261CFD4E4();
    (*(*(v19 - 8) + 16))(v14, v15, v19);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  v20 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  v36 = (a1 + v26);
  v34 = a2 + v26;
  v33 = *(a2 + v26);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  if (v33)
  {
    v27 = *(v34 + 1);
    *v36 = v33;
    v36[1] = v27;
    sub_261CFCDA4();
  }

  else
  {
    *v36 = *v34;
  }

  v28 = a3[20];
  v29 = a3[21];
  v30 = *(a2 + v28);
  *(a1 + v28) = v30;
  *(a1 + v29) = *(a2 + v29);
  *(a1 + a3[22]) = *(a2 + a3[22]);
  v31 = v30;
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ListEntity(void *a1, void *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v10 = *(a1 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 8);
  sub_261CFD104();

  v11 = type metadata accessor for AppEntityID();
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 24))(&v8[v12], &v9[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v8[v14];
  v16 = &v9[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  LODWORD(v12) = v19(v15, 1, v17);
  v20 = v19(v16, 1, v17);
  if (v12)
  {
    if (!v20)
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v15, v16, v21);
      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    sub_261B013AC(v15, type metadata accessor for RecurrentInstanceSpecifier);
LABEL_6:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v15, v16, *(*(v22 - 8) + 64));
    goto LABEL_7;
  }

  v66 = sub_261CFD4E4();
  (*(*(v66 - 8) + 24))(v15, v16, v66);
  v15[*(v17 + 20)] = v16[*(v17 + 20)];
LABEL_7:
  v23 = a3[6];
  v24 = *(a1 + v23);
  *(a1 + v23) = *(a2 + v23);
  sub_261CFCDA4();

  v25 = a3[7];
  v26 = *(a1 + v25);
  *(a1 + v25) = *(a2 + v25);
  sub_261CFCDA4();

  v27 = a3[8];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);
  sub_261CFCDA4();

  v29 = a3[9];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);
  sub_261CFCDA4();

  v31 = a3[10];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);
  sub_261CFCDA4();

  v33 = a3[11];
  v34 = *(a1 + v33);
  *(a1 + v33) = *(a2 + v33);
  sub_261CFCDA4();

  v35 = a3[12];
  v36 = *(a1 + v35);
  *(a1 + v35) = *(a2 + v35);
  sub_261CFCDA4();

  v37 = a3[13];
  v38 = *(a1 + v37);
  *(a1 + v37) = *(a2 + v37);
  sub_261CFCDA4();

  v39 = a3[14];
  v40 = *(a1 + v39);
  *(a1 + v39) = *(a2 + v39);
  sub_261CFCDA4();

  v41 = a3[15];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);
  sub_261CFCDA4();

  v43 = a3[16];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);
  sub_261CFCDA4();

  v45 = a3[17];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);
  sub_261CFCDA4();

  v47 = a3[18];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);
  sub_261CFCDA4();

  v49 = a3[19];
  v50 = (a1 + v49);
  v51 = a2 + v49;
  v52 = *(a1 + v49);
  v53 = *(a2 + v49);
  if (!v52)
  {
    if (v53)
    {
      v56 = *(v51 + 1);
      *v50 = v53;
      v50[1] = v56;
      sub_261CFCDA4();
      goto LABEL_14;
    }

LABEL_13:
    *v50 = *v51;
    goto LABEL_14;
  }

  if (!v53)
  {
    v57 = v50[1];

    goto LABEL_13;
  }

  v54 = *(v51 + 1);
  v55 = v50[1];
  *v50 = v53;
  v50[1] = v54;
  sub_261CFCDA4();

LABEL_14:
  v58 = a3[20];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  *(a1 + v58) = v60;
  v61 = v60;

  *(a1 + a3[21]) = *(a2 + a3[21]);
  v62 = a3[22];
  v63 = *(a2 + v62);
  v64 = *(a1 + v62);
  *(a1 + v62) = v63;
  sub_261CFCDA4();

  return a1;
}