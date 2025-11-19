uint64_t sub_21D42CABC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C2F0);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C2F0);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C2F0);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C2F0);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C308);
    return sub_21D0CF7E0(v12, &qword_27CE5C2F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42CCC8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16[-v11];
  v13 = *(*a1 + 208);
  swift_beginAccess();
  sub_21D0D3954(a1 + v13, v12, &qword_27CE5C298);
  swift_beginAccess();
  sub_21D0EB8DC(a2, a1 + v13, &qword_27CE5C298);
  swift_endAccess();
  sub_21D0D3954(v12, v9, &qword_27CE5C298);
  sub_21D0D3954(a2, &v9[*(v7 + 44)], &qword_27CE5C298);
  result = sub_21D0D3954(a3, &v9[*(v7 + 48)], &qword_27CE5C1C8);
  v15 = a1[11];
  if (v15)
  {

    v15(v9);
    sub_21D0D0E88(v15);
    sub_21D0CF7E0(v9, &qword_27CE5C2B8);
    return sub_21D0CF7E0(v12, &qword_27CE5C298);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D42CF60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21D22D4FC;

  return sub_21D401A74(v0);
}

uint64_t sub_21D42D000(unint64_t a1)
{
  v2 = v1;
  if (qword_27CE56750 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5C180);
  sub_21DBF8E0C();
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (a1 >> 62)
    {
      v8 = sub_21DBFBD7C();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRTemplatesListMonitorableDataView: did fetch data {count: %ld}", v7, 0xCu);
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

  v9 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 8);
  sub_21DBF8E0C();
  v11(ObjectType, v9);
  return swift_unknownObjectRelease();
}

void sub_21D42D1CC(void *a1)
{
  if (qword_27CE56750 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5C180);
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
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRTemplatesListMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

id sub_21D42D364()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 16) templatesContext];
  if (v2)
  {
    v3 = v2;
    v11[0] = 0;
    v4 = [v2 fetchTemplatesWithError_];
    v5 = v11[0];
    if (v4)
    {
      v6 = v4;
      sub_21D0D8CF0(0, &qword_27CE584C8);
      v1 = sub_21DBFA5EC();
      v7 = v5;
    }

    else
    {
      v1 = v11[0];
      sub_21DBF52DC();

      swift_willThrow();
    }
  }

  else
  {
    v8 = objc_opt_self();
    v9 = sub_21DBFA12C();
    [v8 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  return v1;
}

uint64_t dispatch thunk of TTRTemplatesListInteractorType.createList(from:name:storingUndoStepsIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D22D4FC;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_21D42D784(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowGroupMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE585A0);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE585D0);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE585D0);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D43E0B4;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_1714;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE585D0);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D42E0AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowAllRemindersMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C210);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C208);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C208);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D439C30;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_211;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C208);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D42E9D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C258);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C250);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C250);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D439F88;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_383;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C250);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D42F2FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowTaggedMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C270);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C268);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C268);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D43A318;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_543;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C268);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D42FC24(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v129 = a4;
  LODWORD(v7) = a2;
  v128 = sub_21DBF9D2C();
  v9 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_21DBF9D5C();
  v133 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C350);
  MEMORY[0x28223BE20](v84);
  v83 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v82 = &v77[-v14];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C358);
  v130 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v131 = &v77[-v15];
  v124 = sub_21DBF714C();
  v97 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_21DBF71BC();
  v99 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v121 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_21DBF70DC();
  v100 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v77[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_21DBF738C();
  v96 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v132 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_21DBF734C();
  v20 = *(v137 - 8);
  MEMORY[0x28223BE20](v137 - 8);
  v118 = &v77[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v77[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v77[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v80 = &v77[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v117 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v115 = &v77[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = v32;
  MEMORY[0x28223BE20](v33);
  v138 = &v77[-v34];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  v114 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v112 = &v77[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v113 = v35;
  MEMORY[0x28223BE20](v36);
  v136 = &v77[-v37];
  v105 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_remindersToPrefetchCount;
  v111 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_sortingStyle;
  v110 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_showCompleted;
  v109 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_countCompleted;
  v108 = OBJC_IVAR____TtC15RemindersUICore33TTRShowFlaggedMonitorableDataView_fetchSubtasks;
  v38 = *a5;
  v104 = *(*a5 + 216);
  v135 = a5;
  v103 = *(v38 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v107 = a1;
  if (*(a1 + 16) >= 1)
  {
    v134 = 0;
    v101 = (v29 + 48);
    v39 = (v20 + 104);
    v100 += 2;
    v85 = *MEMORY[0x277D454F8];
    v99 += 2;
    v98 = (v20 + 16);
    v78 = *MEMORY[0x277D45508];
    v97 += 2;
    v93 = (v96 + 1);
    v92 = (v20 + 8);
    v79 = (v130 + 8);
    v96 = v142;
    v95 = (v9 + 8);
    v94 = (v133 + 8);
    v90 = v27;
    v130 = v28;
    v102 = v7;
    v91 = a3;
    v89 = v24;
    v88 = (v20 + 104);
    while (1)
    {
      sub_21DBFC83C();
      if ((*v101)(v27, 1, v28) == 1)
      {
        break;
      }

      v41 = *&v27[*(v28 + 48)];
      v42 = sub_21DBF706C();
      (*(*(v42 - 8) + 8))(v27, v42);
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      v40 = *v39;
      v133 = *(a3 + 16);
      if (!v41)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v24 = *(a3 + v105);
      v40(v24, v85, v137);
LABEL_12:
      v43 = v24;
      (*v100)(v119, a3 + v111, v120);
      (*v99)(v121, a3 + v110, v122);
      v44 = v137;
      (*v98)(v118, v24, v137);
      (*v97)(v123, a3 + v108, v124);
      v45 = v132;
      sub_21DBF737C();
      v46 = v133;
      v47 = v134;
      sub_21DBF70FC();
      if (v47)
      {

        (*v93)(v45, v106);
        (*v92)(v24, v44);
        v48 = v136;
        *v136 = v47;
        v49 = 1;
        v134 = 0;
        v50 = v138;
      }

      else
      {
        v134 = 0;
        v87 = *(v130 + 48);
        v86 = v41;
        v51 = v84;
        v52 = *(v84 + 48);
        v53 = v82;
        v54 = v131;
        v55 = v46;
        v56 = v81;
        sub_21DBF76DC();
        *(v53 + v52) = sub_21DBF76BC();
        v57 = v83;
        sub_21D0D3954(v53, v83, &qword_27CE5C350);
        v58 = *&v57[*(v51 + 48)];
        v59 = sub_21DBF706C();
        v60 = v80;
        (*(*(v59 - 8) + 32))(v80, v57, v59);
        v50 = v138;
        sub_21DBF76CC();

        sub_21D0CF7E0(v53, &qword_27CE5C350);
        (*v79)(v54, v56);
        (*v93)(v132, v106);
        (*v92)(v43, v44);
        *(v60 + v87) = v58;
        v48 = v136;
        sub_21D0D523C(v60, v136, &qword_27CE5C348);
        v49 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v61 = sub_21DBF76AC();
      (*(*(v61 - 8) + 56))(v50, v49, 1, v61);
      v62 = v135;
      v133 = v135[2];
      v63 = v112;
      sub_21D0D3954(v48, v112, &qword_27CE5C340);
      v64 = v115;
      sub_21D0D3954(v50, v115, &qword_27CE5C1C8);
      v65 = (*(v114 + 80) + 24) & ~*(v114 + 80);
      v7 = (v113 + *(v117 + 80) + v65) & ~*(v117 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = v62;
      sub_21D0D523C(v63, v66 + v65, &qword_27CE5C340);
      sub_21D0D523C(v64, v66 + v7, &qword_27CE5C1C8);
      v142[2] = sub_21D43D3C8;
      v142[3] = v66;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v142[0] = sub_21D0D74FC;
      v142[1] = &block_descriptor_1124;
      v67 = _Block_copy(aBlock);

      v68 = v125;
      sub_21DBF9D4C();
      v140 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v69 = v127;
      v70 = v128;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v68, v69, v67);
      _Block_release(v67);
      (*v95)(v69, v70);
      (*v94)(v68, v126);

      sub_21D0CF7E0(v138, &qword_27CE5C1C8);
      sub_21D0CF7E0(v136, &qword_27CE5C340);
      LOBYTE(v7) = v102;
      if (v102)
      {
        *(v107 + 16) = 0;
        return;
      }

      v71 = v135;
      v72 = *(v135 + v104);
      os_unfair_lock_lock(v72);
      v73 = v103;
      v74 = v107;
      v75 = *(v71 + v103) != *(v107 + 16);
      *(v107 + 16) = v75;
      *(v71 + v73) = v75;
      os_unfair_lock_unlock(v72);
      v76 = *(v74 + 16);
      a3 = v91;
      v27 = v90;
      v28 = v130;
      v24 = v89;
      v39 = v88;
      if (v76 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v27, &qword_27CE5C360);
    if (v7)
    {
      v133 = *(a3 + 16);
      v40 = *v39;
LABEL_8:
      *v24 = *(a3 + v105);
      v40(v24, v78, v137);
      v41 = 0;
      goto LABEL_12;
    }

    v41 = 0;
LABEL_10:
    v133 = [*(a3 + 16) nonUserInteractiveStore];
    v40 = *v39;
    goto LABEL_11;
  }
}

void sub_21D430E60(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v102 = a4;
  LODWORD(v7) = a2;
  v101 = sub_21DBF9D2C();
  v111 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = sub_21DBF9D5C();
  v106 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C230);
  MEMORY[0x28223BE20](v73);
  v72 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v71 = &v66[-v13];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C238);
  v105 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v104 = &v66[-v14];
  v109 = sub_21DBF734C();
  v15 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v17 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C240);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v69 = &v66[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v97 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v95 = &v66[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = v25;
  MEMORY[0x28223BE20](v26);
  v108 = &v66[-v27];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  v94 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v66[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v66[-v30];
  v87 = OBJC_IVAR____TtC15RemindersUICore34TTRShowAssignedMonitorableDataView_remindersToPrefetchCount;
  v91 = OBJC_IVAR____TtC15RemindersUICore34TTRShowAssignedMonitorableDataView_sortingStyle;
  v90 = OBJC_IVAR____TtC15RemindersUICore34TTRShowAssignedMonitorableDataView_showCompleted;
  v89 = OBJC_IVAR____TtC15RemindersUICore34TTRShowAssignedMonitorableDataView_countCompleted;
  v32 = *a5;
  v86 = *(*a5 + 216);
  v107 = a5;
  v85 = *(v32 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v88 = a1;
  if (*(a1 + 16) >= 1)
  {
    v33 = 0;
    v83 = (v22 + 48);
    v82 = (v15 + 104);
    v78 = (v15 + 8);
    v74 = *MEMORY[0x277D454F8];
    v68 = (v105 + 8);
    v67 = *MEMORY[0x277D45508];
    v81 = v114;
    v80 = (v111 + 1);
    v79 = (v106 + 8);
    v84 = v7;
    v77 = a3;
    v103 = v17;
    v75 = v21;
    v111 = v31;
    v76 = v20;
    while (1)
    {
      sub_21DBFC83C();
      if ((*v83)(v20, 1, v21) == 1)
      {
        break;
      }

      v36 = *&v20[*(v21 + 48)];
      v37 = sub_21DBF713C();
      (*(*(v37 - 8) + 8))(v20, v37);
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      v35 = *v82;
      v34 = *(a3 + 16);
      if (!v36)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v17 = *(a3 + v87);
      v35(v17, v74, v109);
LABEL_12:
      sub_21DBF71FC();
      if (v33)
      {
        (*v78)(v17, v109);

        *v31 = v33;
        v38 = 1;
        v105 = 0;
        v39 = v108;
      }

      else
      {
        v105 = 0;
        v106 = *(v21 + 48);
        v40 = v73;
        v41 = *(v73 + 48);
        v42 = v71;
        v43 = v104;
        v44 = v70;
        sub_21DBF76DC();
        *(v42 + v41) = sub_21DBF76BC();
        v45 = v72;
        sub_21D0D3954(v42, v72, &qword_27CE5C230);
        v46 = *&v45[*(v40 + 48)];
        v47 = sub_21DBF713C();
        v48 = v69;
        (*(*(v47 - 8) + 32))(v69, v45, v47);
        v39 = v108;
        sub_21DBF76CC();

        sub_21D0CF7E0(v42, &qword_27CE5C230);
        v49 = v111;
        (*v68)(v43, v44);
        (*v78)(v103, v109);
        *(v48 + v106) = v46;
        sub_21D0D523C(v48, v49, &qword_27CE5C228);
        v38 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v50 = sub_21DBF76AC();
      (*(*(v50 - 8) + 56))(v39, v38, 1, v50);
      v51 = v107;
      v106 = v107[2];
      v52 = v92;
      sub_21D0D3954(v111, v92, &qword_27CE5C220);
      v53 = v95;
      sub_21D0D3954(v39, v95, &qword_27CE5C1C8);
      v54 = (*(v94 + 80) + 24) & ~*(v94 + 80);
      v55 = (v93 + *(v97 + 80) + v54) & ~*(v97 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v51;
      sub_21D0D523C(v52, v56 + v54, &qword_27CE5C220);
      sub_21D0D523C(v53, v56 + v55, &qword_27CE5C1C8);
      v114[2] = sub_21D439DD0;
      v114[3] = v56;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v114[0] = sub_21D0D74FC;
      v114[1] = &block_descriptor_294;
      v7 = _Block_copy(aBlock);

      v57 = v98;
      sub_21DBF9D4C();
      v112 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v58 = v100;
      v59 = v101;
      sub_21DBFBCBC();
      v31 = v111;
      MEMORY[0x223D438F0](0, v57, v58, v7);
      _Block_release(v7);
      (*v80)(v58, v59);
      (*v79)(v57, v99);

      sub_21D0CF7E0(v108, &qword_27CE5C1C8);
      sub_21D0CF7E0(v31, &qword_27CE5C220);
      LOBYTE(v7) = v84;
      if (v84)
      {
        *(v88 + 16) = 0;
        return;
      }

      v60 = v107;
      v61 = *(v107 + v86);
      os_unfair_lock_lock(v61);
      v62 = v85;
      v63 = v88;
      v64 = *(v60 + v85) != *(v88 + 16);
      *(v88 + 16) = v64;
      *(v60 + v62) = v64;
      os_unfair_lock_unlock(v61);
      v65 = *(v63 + 16);
      a3 = v77;
      v17 = v103;
      v20 = v76;
      v21 = v75;
      v33 = v105;
      if (v65 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v20, &qword_27CE5C240);
    if (v7)
    {
      v34 = *(a3 + 16);
      v35 = *v82;
LABEL_8:
      *v17 = *(a3 + v87);
      v35(v17, v67, v109);
      v36 = 0;
      goto LABEL_12;
    }

    v36 = 0;
LABEL_10:
    v34 = [*(a3 + 16) nonUserInteractiveStore];
    v35 = *v82;
    goto LABEL_11;
  }
}

void sub_21D431CB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v142 = a4;
  LODWORD(v7) = a2;
  v141 = sub_21DBF9D2C();
  v102 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = sub_21DBF9D5C();
  v146 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D0);
  MEMORY[0x28223BE20](v91);
  v90 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v89 = &v82[-v13];
  v137 = sub_21DBF746C();
  v14 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v16 = &v82[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2D8);
  v101 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v145 = &v82[-v17];
  v136 = sub_21DBF714C();
  v107 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v82[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = sub_21DBF71BC();
  v109 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v82[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = sub_21DBF70DC();
  v110 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v82[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v118 = sub_21DBF738C();
  v105 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v144 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = sub_21DBF734C();
  v22 = *(v151 - 8);
  MEMORY[0x28223BE20](v151 - 8);
  v130 = &v82[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v82[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0);
  MEMORY[0x28223BE20](v27 - 8);
  v129 = &v82[-v28];
  v117 = sub_21DBF76AC();
  v100 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v87 = &v82[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
  v30 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v86 = &v82[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v128 = *(v32 - 8);
  MEMORY[0x28223BE20](v32 - 8);
  v126 = &v82[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = v33;
  MEMORY[0x28223BE20](v34);
  v116 = &v82[-v35];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  v125 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v123 = &v82[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = v36;
  MEMORY[0x28223BE20](v37);
  v149 = &v82[-v38];
  v39 = *a5;
  v114 = *(*a5 + 216);
  v148 = a5;
  v113 = *(v39 + 224);
  v115 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_remindersToPrefetchCount;
  v122 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_sortingStyle;
  v121 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_showCompleted;
  v120 = OBJC_IVAR____TtC15RemindersUICore35TTRShowScheduledMonitorableDataView_countCompleted;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v119 = a1;
  if (*(a1 + 16) >= 1)
  {
    v147 = 0;
    v111 = (v30 + 48);
    v40 = (v22 + 104);
    v110 += 2;
    v92 = *MEMORY[0x277D454F8];
    v109 += 2;
    v108 = (v22 + 16);
    v107 += 13;
    v106 = (v14 + 104);
    v83 = *MEMORY[0x277D45508];
    v99 = (v14 + 8);
    v98 = (v105 + 8);
    LODWORD(v105) = *MEMORY[0x277D45460];
    v97 = (v22 + 8);
    v104 = (v100 + 7);
    v103 = *MEMORY[0x277D45528];
    v85 = v101 + 1;
    v84 = (v100 + 4);
    ++v102;
    v101 = (v146 + 8);
    v100 = v154;
    v95 = v16;
    v93 = (v22 + 104);
    v96 = a3;
    v112 = v7;
    v94 = v26;
    while (1)
    {
      v41 = v129;
      sub_21DBFC83C();
      v42 = v143;
      if ((*v111)(v41, 1, v143) == 1)
      {
        break;
      }

      v45 = *(v41 + *(v42 + 48));
      v46 = sub_21DBF6E4C();
      (*(*(v46 - 8) + 8))(v41, v46);
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      v44 = *v40;
      v43 = *(a3 + 16);
      if (!v45)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v26 = *(a3 + v115);
      v44(v26, v92, v151);
LABEL_12:
      (*v110)(v131, a3 + v122, v132);
      (*v109)(v133, a3 + v121, v134);
      (*v108)(v130, v26, v151);
      (*v107)(v135, v105, v136);
      v47 = v144;
      sub_21DBF737C();
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v48 = v137;
      (*v106)(v16, v103, v137);
      v49 = v147;
      sub_21DBF749C();
      v50 = v45;
      if (v49)
      {

        (*v99)(v16, v48);
        (*v98)(v47, v118);
        (*v97)(v26, v151);
        v51 = v149;
        *v149 = v49;
        v52 = 1;
        swift_storeEnumTagMultiPayload();
        v147 = 0;
        v53 = v117;
        v54 = v116;
      }

      else
      {
        v147 = 0;
        v146 = *(v143 + 48);
        (*v99)(v16, v48);
        v55 = v91;
        v56 = *(v91 + 48);
        v57 = v89;
        v58 = v145;
        v59 = v88;
        sub_21DBF76DC();
        *(v57 + v56) = sub_21DBF76BC();
        v60 = v50;
        v61 = v90;
        sub_21D0D3954(v57, v90, &qword_27CE5C2D0);
        v62 = *&v61[*(v55 + 48)];
        v63 = sub_21DBF6E4C();
        v64 = v86;
        (*(*(v63 - 8) + 32))(v86, v61, v63);
        v65 = v87;
        sub_21DBF76CC();

        sub_21D0CF7E0(v57, &qword_27CE5C2D0);
        (*v85)(v58, v59);
        (*v98)(v144, v118);
        (*v97)(v26, v151);
        *&v64[v146] = v62;
        v66 = v64;
        v51 = v149;
        sub_21D0D523C(v66, v149, &qword_27CE5C2C8);
        swift_storeEnumTagMultiPayload();
        v54 = v116;
        v53 = v117;
        (*v84)(v116, v65, v117);
        v52 = 0;
      }

      (*v104)(v54, v52, 1, v53);
      v67 = v148;
      v146 = v148[2];
      v68 = v123;
      sub_21D0D3954(v51, v123, &qword_27CE5C2C0);
      v69 = v126;
      sub_21D0D3954(v54, v126, &qword_27CE5C1C8);
      v70 = (*(v125 + 80) + 24) & ~*(v125 + 80);
      v71 = (v124 + *(v128 + 80) + v70) & ~*(v128 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = v67;
      sub_21D0D523C(v68, v72 + v70, &qword_27CE5C2C0);
      sub_21D0D523C(v69, v72 + v71, &qword_27CE5C1C8);
      v154[2] = sub_21D43CE60;
      v154[3] = v72;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v154[0] = sub_21D0D74FC;
      v154[1] = &block_descriptor_792;
      v73 = _Block_copy(aBlock);

      v74 = v138;
      sub_21DBF9D4C();
      v152 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v75 = v140;
      v7 = v141;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v74, v75, v73);
      _Block_release(v73);
      (*v102)(v75, v7);
      (*v101)(v74, v139);

      sub_21D0CF7E0(v54, &qword_27CE5C1C8);
      sub_21D0CF7E0(v149, &qword_27CE5C2C0);
      LOBYTE(v7) = v112;
      if (v112)
      {
        *(v119 + 16) = 0;
        return;
      }

      v76 = v148;
      v77 = *(v148 + v114);
      os_unfair_lock_lock(v77);
      v78 = v113;
      v79 = v119;
      v80 = *(v76 + v113) != *(v119 + 16);
      *(v119 + 16) = v80;
      *(v76 + v78) = v80;
      os_unfair_lock_unlock(v77);
      v81 = *(v79 + 16);
      a3 = v96;
      v16 = v95;
      v26 = v94;
      v40 = v93;
      if (v81 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v41, &qword_27CE5C2E0);
    if (v7)
    {
      v43 = *(a3 + 16);
      v44 = *v40;
LABEL_8:
      *v26 = *(a3 + v115);
      v44(v26, v83, v151);
      v45 = 0;
      goto LABEL_12;
    }

    v45 = 0;
LABEL_10:
    v43 = [*(a3 + 16) nonUserInteractiveStore];
    v44 = *v40;
    goto LABEL_11;
  }
}

void sub_21D4330E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowTodayGroupsMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C318);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C310);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C310);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D43D1A0;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_958;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C310);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D433A0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v101 = a4;
  v108 = a3;
  v109 = a2;
  v100 = sub_21DBF9D2C();
  v7 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21DBF9D5C();
  v9 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C380);
  MEMORY[0x28223BE20](v77);
  v76 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A910);
  v14 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v96 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v72 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v73 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v95 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v93 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  v92 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v90 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v27;
  MEMORY[0x28223BE20](v28);
  v30 = (&v72 - v29);
  v89 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle;
  v88 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted;
  v87 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_countCompleted;
  v31 = *a5;
  v85 = *(*a5 + 216);
  v106 = a5;
  v84 = *(v31 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v86 = a1;
  if (*(a1 + 16) >= 1)
  {
    v32 = 0;
    v83 = (v20 + 48);
    v72 = (v14 + 8);
    v82 = v112;
    v81 = (v7 + 8);
    v80 = (v9 + 8);
    v78 = v19;
    v103 = v26;
    v102 = v30;
    v79 = v18;
    while (1)
    {
      sub_21DBFC83C();
      if ((*v83)(v18, 1, v19) == 1)
      {
        sub_21D0CF7E0(v18, &qword_27CE5C388);
        v33 = 0;
      }

      else
      {
        v33 = *&v18[*(v19 + 48)];
        v34 = sub_21DBF6F2C();
        (*(*(v34 - 8) + 8))(v18, v34);
      }

      v35 = v96;
      v36 = *(v108 + 16);
      v37 = (v109 & 1) != 0 ? v36 : [v36 nonUserInteractiveStore];
      v38 = v37;
      sub_21DBF701C();
      if (v32)
      {

        *v30 = v32;
        v39 = 1;
        v104 = 0;
      }

      else
      {
        v104 = 0;
        v40 = *(v19 + 48);
        v41 = v77;
        v42 = *(v77 + 48);
        v43 = v75;
        v44 = v74;
        v45 = v35;
        sub_21DBF76DC();
        *(v43 + v42) = sub_21DBF76BC();
        v46 = v76;
        sub_21D0D3954(v43, v76, &qword_27CE5C380);
        v47 = *(v46 + *(v41 + 48));
        v48 = sub_21DBF6F2C();
        v49 = v73;
        (*(*(v48 - 8) + 32))(v73, v46, v48);
        sub_21DBF76CC();

        sub_21D0CF7E0(v43, &qword_27CE5C380);
        v50 = v45;
        v30 = v102;
        (*v72)(v50, v44);
        *(v49 + v40) = v47;
        v26 = v103;
        sub_21D0D523C(v49, v30, &qword_27CE5C378);
        v39 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v51 = sub_21DBF76AC();
      (*(*(v51 - 8) + 56))(v26, v39, 1, v51);
      v52 = v106;
      v105 = v106[2];
      v53 = v30;
      v54 = v90;
      sub_21D0D3954(v53, v90, &qword_27CE5C370);
      v55 = v26;
      v56 = v93;
      sub_21D0D3954(v55, v93, &qword_27CE5C1C8);
      v57 = (*(v92 + 80) + 24) & ~*(v92 + 80);
      v58 = (v91 + *(v95 + 80) + v57) & ~*(v95 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = v52;
      sub_21D0D523C(v54, v59 + v57, &qword_27CE5C370);
      sub_21D0D523C(v56, v59 + v58, &qword_27CE5C1C8);
      v112[2] = sub_21D43D580;
      v112[3] = v59;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v112[0] = sub_21D0D74FC;
      v112[1] = &block_descriptor_1213;
      v60 = _Block_copy(aBlock);

      v61 = v97;
      sub_21DBF9D4C();
      v110 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v62 = v99;
      v63 = v100;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v61, v62, v60);
      _Block_release(v60);
      v64 = v62;
      v30 = v102;
      v65 = v63;
      v26 = v103;
      (*v81)(v64, v65);
      (*v80)(v61, v98);

      sub_21D0CF7E0(v26, &qword_27CE5C1C8);
      sub_21D0CF7E0(v30, &qword_27CE5C370);
      if (v109)
      {
        break;
      }

      v66 = v106;
      v67 = *(v106 + v85);
      os_unfair_lock_lock(v67);
      v68 = v84;
      v69 = v86;
      v70 = *(v66 + v84) != *(v86 + 16);
      *(v86 + 16) = v70;
      *(v66 + v68) = v70;
      os_unfair_lock_unlock(v67);
      v71 = *(v69 + 16);
      v18 = v79;
      v19 = v78;
      v32 = v104;
      if (v71 <= 0)
      {
        return;
      }
    }

    *(v86 + 16) = 0;
  }
}

void sub_21D434650(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C288);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C280);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C280);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D43A4D0;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_632;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C280);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D434F78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v137 = a4;
  v149 = a3;
  v148 = a2;
  v138 = sub_21DBF9D2C();
  v141 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_21DBF9D5C();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3B0);
  MEMORY[0x28223BE20](v90);
  v89 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v88 = &v81[-v11];
  v115 = sub_21DBF563C();
  v104 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v13 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3B8);
  v102 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v133 = &v81[-v14];
  v132 = sub_21DBF714C();
  v105 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v81[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = sub_21DBF71BC();
  v107 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v128 = sub_21DBF70DC();
  v108 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v127 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_21DBF738C();
  v103 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v140 = &v81[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_21DBF734C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v126 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v81[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v81[-v26];
  v28 = sub_21DBF76AC();
  v101 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v86 = &v81[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v85 = &v81[-v32];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v125 = *(v33 - 8);
  MEMORY[0x28223BE20](v33 - 8);
  v123 = &v81[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = v34;
  MEMORY[0x28223BE20](v35);
  v146 = &v81[-v36];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  v122 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v120 = &v81[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = v37;
  MEMORY[0x28223BE20](v38);
  v145 = &v81[-v39];
  v40 = *a5;
  v111 = *(*a5 + 216);
  v144 = a5;
  v110 = *(v40 + 224);
  v112 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_remindersToPrefetchCount;
  v119 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_sortingStyle;
  v118 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_showCompleted;
  v117 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_countCompleted;
  v116 = OBJC_IVAR____TtC15RemindersUICore48TTRShowScheduledByDateBucketsMonitorableDataView_style;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v113 = a1;
  if (*(a1 + 16) >= 1)
  {
    v143 = 0;
    v109 = (v31 + 48);
    v41 = (v20 + 104);
    v108 += 2;
    v91 = *MEMORY[0x277D454F8];
    v107 += 2;
    v106 = (v20 + 16);
    v105 += 13;
    v82 = *MEMORY[0x277D45508];
    v98 = (v104 + 8);
    v97 = (v103 + 1);
    LODWORD(v104) = *MEMORY[0x277D45460];
    v96 = (v20 + 8);
    v103 = (v101 + 7);
    v84 = v102 + 1;
    v83 = (v101 + 4);
    v102 = (v141 + 8);
    v101 = (v139 + 8);
    v100 = v152;
    v95 = v13;
    v142 = v19;
    v94 = v24;
    v93 = v27;
    v99 = v28;
    v139 = v30;
    v92 = (v20 + 104);
    while (1)
    {
      sub_21DBFC83C();
      if ((*v109)(v27, 1, v30) == 1)
      {
        break;
      }

      v44 = *&v27[*(v30 + 48)];
      v45 = sub_21DBF75EC();
      (*(*(v45 - 8) + 8))(v27, v45);
      if ((v148 & 1) == 0)
      {
        goto LABEL_10;
      }

      v43 = *v41;
      v42 = *(v149 + 16);
      if (!v44)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v24 = *(v149 + v112);
      v43(v24, v91, v19);
LABEL_12:
      v46 = v149;
      (*v108)(v127, v149 + v119, v128);
      (*v107)(v129, v46 + v118, v130);
      (*v106)(v126, v24, v19);
      (*v105)(v131, v104, v132);
      v47 = v140;
      sub_21DBF737C();
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v48 = v133;
      v49 = v143;
      sub_21DBF766C();
      if (v49)
      {

        (*v98)(v13, v115);
        (*v97)(v47, v114);
        (*v96)(v24, v142);
        v50 = v145;
        *v145 = v49;
        v51 = 1;
        swift_storeEnumTagMultiPayload();
        v143 = 0;
        v52 = v99;
        v53 = v146;
      }

      else
      {
        v143 = 0;
        v141 = *(v139 + 48);
        (*v98)(v13, v115);
        v54 = v90;
        v55 = *(v90 + 48);
        v56 = v88;
        v57 = v87;
        sub_21DBF76DC();
        *(v56 + v55) = sub_21DBF76BC();
        v58 = v89;
        sub_21D0D3954(v56, v89, &qword_27CE5C3B0);
        v59 = *&v58[*(v54 + 48)];
        v60 = sub_21DBF75EC();
        v61 = v85;
        (*(*(v60 - 8) + 32))(v85, v58, v60);
        v62 = v86;
        sub_21DBF76CC();

        sub_21D0CF7E0(v56, &qword_27CE5C3B0);
        (*v84)(v48, v57);
        (*v97)(v140, v114);
        (*v96)(v24, v142);
        *(v61 + v141) = v59;
        v50 = v145;
        sub_21D0D523C(v61, v145, &qword_27CE5C3A8);
        swift_storeEnumTagMultiPayload();
        v53 = v146;
        v52 = v99;
        (*v83)(v146, v62, v99);
        v51 = 0;
      }

      (*v103)(v53, v51, 1, v52);
      v63 = v144;
      v141 = v144[2];
      v64 = v50;
      v65 = v120;
      sub_21D0D3954(v64, v120, &qword_27CE5C3A0);
      v66 = v53;
      v67 = v123;
      sub_21D0D3954(v66, v123, &qword_27CE5C1C8);
      v68 = (*(v122 + 80) + 24) & ~*(v122 + 80);
      v69 = (v121 + *(v125 + 80) + v68) & ~*(v125 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v63;
      sub_21D0D523C(v65, v70 + v68, &qword_27CE5C3A0);
      sub_21D0D523C(v67, v70 + v69, &qword_27CE5C1C8);
      v152[2] = sub_21D43DA3C;
      v152[3] = v70;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v152[0] = sub_21D0D74FC;
      v152[1] = &block_descriptor_1456;
      v71 = _Block_copy(aBlock);

      v72 = v134;
      sub_21DBF9D4C();
      v150 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v73 = v136;
      v74 = v138;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v72, v73, v71);
      _Block_release(v71);
      (*v102)(v73, v74);
      (*v101)(v72, v135);

      sub_21D0CF7E0(v146, &qword_27CE5C1C8);
      sub_21D0CF7E0(v145, &qword_27CE5C3A0);
      if (v148)
      {
        *(v113 + 16) = 0;
        return;
      }

      v75 = v144;
      v76 = *(v144 + v111);
      os_unfair_lock_lock(v76);
      v77 = v110;
      v78 = v113;
      v79 = *(v75 + v110) != *(v113 + 16);
      *(v113 + 16) = v79;
      *(v75 + v77) = v79;
      os_unfair_lock_unlock(v76);
      v80 = *(v78 + 16);
      v13 = v95;
      v19 = v142;
      v24 = v94;
      v27 = v93;
      v30 = v139;
      v41 = v92;
      if (v80 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v27, &qword_27CE5C3C0);
    if (v148)
    {
      v42 = *(v149 + 16);
      v43 = *v41;
LABEL_8:
      *v24 = *(v149 + v112);
      v43(v24, v82, v19);
      v44 = 0;
      goto LABEL_12;
    }

    v44 = 0;
LABEL_10:
    v42 = [*(v149 + 16) nonUserInteractiveStore];
    v43 = *v41;
    goto LABEL_11;
  }
}

void sub_21D4363C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v70 = a4;
  v69 = a3;
  LODWORD(v6) = a2;
  v68 = sub_21DBF9D2C();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21DBF9D5C();
  v72 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF76AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  MEMORY[0x28223BE20](v45);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v64 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  v61 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v59 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v43 - v23);
  v25 = *a5;
  v56 = *(*a5 + 216);
  v55 = *(v25 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v58 = a1;
  if (*(a1 + 16) >= 1)
  {
    v26 = 0;
    v53 = (v11 + 56);
    v44 = (v11 + 32);
    v52 = v75;
    v51 = (v71 + 8);
    v50 = (v72 + 8);
    v54 = v6;
    v48 = v13;
    v47 = v15;
    v49 = v24;
    v46 = v10;
    while (1)
    {
      v27 = TTRShowTemplateMonitorableDataView.fetchData(from:userInteractive:)(v15, v13, v70, v6 & 1);
      if (v26)
      {
        *v24 = v26;
        v28 = 1;
        swift_storeEnumTagMultiPayload();
        v71 = 0;
      }

      else
      {
        v71 = 0;
        *&v15[*(v45 + 48)] = v27;
        sub_21D0D523C(v15, v24, &qword_27CE5C1C0);
        swift_storeEnumTagMultiPayload();
        (*v44)(v20, v13, v10);
        v28 = 0;
      }

      v29 = v20;
      (*v53)(v20, v28, 1, v10);
      v72 = a5[2];
      v30 = v59;
      sub_21D0D3954(v24, v59, &qword_27CE5C1B8);
      v31 = v62;
      sub_21D0D3954(v20, v62, &qword_27CE5C1C8);
      v32 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v33 = (v60 + *(v64 + 80) + v32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = a5;
      sub_21D0D523C(v30, v34 + v32, &qword_27CE5C1B8);
      sub_21D0D523C(v31, v34 + v33, &qword_27CE5C1C8);
      v75[2] = sub_21D436CF0;
      v75[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v75[0] = sub_21D0D74FC;
      v75[1] = &block_descriptor_45;
      v6 = _Block_copy(aBlock);

      v35 = v65;
      sub_21DBF9D4C();
      v73 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v36 = v67;
      v37 = v68;
      v24 = v49;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v35, v36, v6);
      _Block_release(v6);
      (*v51)(v36, v37);
      (*v50)(v35, v66);

      v20 = v29;
      sub_21D0CF7E0(v29, &qword_27CE5C1C8);
      sub_21D0CF7E0(v24, &qword_27CE5C1B8);
      LOBYTE(v6) = v54;
      if (v54)
      {
        break;
      }

      v38 = *(a5 + v56);
      os_unfair_lock_lock(v38);
      v39 = v55;
      v40 = v58;
      v41 = *(a5 + v55) != *(v58 + 16);
      *(v58 + 16) = v41;
      *(a5 + v39) = v41;
      os_unfair_lock_unlock(v38);
      v42 = *(v40 + 16);
      v10 = v46;
      v13 = v48;
      v15 = v47;
      v26 = v71;
      if (v42 <= 0)
      {
        return;
      }
    }

    *(v58 + 16) = 0;
  }
}

void sub_21D436E78(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  LODWORD(v7) = a2;
  v92 = sub_21DBF9D2C();
  v9 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF9D5C();
  v11 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A8);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v60 - v15;
  v16 = sub_21DBF734C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0);
  v94 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v21 = &v60 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  MEMORY[0x28223BE20](v62);
  v61 = &v60 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v88 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8);
  v86 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v24;
  MEMORY[0x28223BE20](v25);
  v95 = &v60 - v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v27;
  MEMORY[0x28223BE20](v28);
  v80 = (&v60 - v29);
  v30 = *a5;
  v79 = *(*a5 + 216);
  v78 = *(v30 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v81 = a1;
  if (*(a1 + 16) >= 1)
  {
    v31 = 0;
    v76 = (v17 + 104);
    v71 = (v17 + 8);
    v75 = *MEMORY[0x277D45500];
    v60 = (v94 + 8);
    v74 = v98;
    v73 = (v9 + 8);
    v72 = (v11 + 8);
    v69 = v16;
    v68 = v19;
    v67 = v21;
    v70 = a3;
    v77 = v7;
    while (1)
    {
      v32 = *(a3 + 16);
      v33 = (v7 & 1) != 0 ? v32 : [v32 nonUserInteractiveStore];
      v34 = v33;
      v35 = a5;
      (*v76)(v19, v75, v16);
      sub_21DBF748C();
      if (v31)
      {
        (*v71)(v19, v16);

        v36 = v80;
        *v80 = v31;
        v37 = 1;
        v93 = 0;
        v38 = v95;
      }

      else
      {
        v93 = 0;
        v94 = *(v62 + 48);
        (*v71)(v19, v16);
        v39 = v66;
        v40 = *(v66 + 48);
        v41 = v64;
        v42 = v63;
        sub_21DBF76DC();
        *(v41 + v40) = sub_21DBF76BC();
        v43 = v65;
        sub_21D0D3954(v41, v65, &qword_27CE5C2A8);
        v44 = *(v43 + *(v39 + 48));
        v45 = sub_21DBF773C();
        v46 = v61;
        (*(*(v45 - 8) + 32))(v61, v43, v45);
        v38 = v95;
        sub_21DBF76CC();

        sub_21D0CF7E0(v41, &qword_27CE5C2A8);
        (*v60)(v21, v42);
        *(v46 + v94) = v44;
        v36 = v80;
        sub_21D0D523C(v46, v80, &qword_27CE5C2A0);
        v37 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v47 = sub_21DBF76AC();
      (*(*(v47 - 8) + 56))(v38, v37, 1, v47);
      v94 = v35[2];
      v48 = v82;
      sub_21D0D3954(v36, v82, &qword_27CE5C298);
      v49 = v86;
      sub_21D0D3954(v38, v86, &qword_27CE5C1C8);
      v50 = (*(v84 + 80) + 24) & ~*(v84 + 80);
      v7 = (v83 + *(v88 + 80) + v50) & ~*(v88 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = v35;
      sub_21D0D523C(v48, v51 + v50, &qword_27CE5C298);
      sub_21D0D523C(v49, v51 + v7, &qword_27CE5C1C8);
      v98[2] = sub_21D43D708;
      v98[3] = v51;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v98[0] = sub_21D0D74FC;
      v98[1] = &block_descriptor_1290;
      v52 = _Block_copy(aBlock);

      v53 = v89;
      sub_21DBF9D4C();
      v96 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v54 = v91;
      v55 = v92;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v53, v54, v52);
      _Block_release(v52);
      (*v73)(v54, v55);
      (*v72)(v53, v90);

      sub_21D0CF7E0(v95, &qword_27CE5C1C8);
      sub_21D0CF7E0(v36, &qword_27CE5C298);
      LOBYTE(v7) = v77;
      if (v77)
      {
        break;
      }

      v56 = *(v35 + v79);
      os_unfair_lock_lock(v56);
      v57 = v78;
      v58 = v81;
      v59 = *(v35 + v78) != *(v81 + 16);
      *(v81 + 16) = v59;
      *(v35 + v57) = v59;
      os_unfair_lock_unlock(v56);
      a3 = v70;
      v16 = v69;
      v19 = v68;
      v21 = v67;
      a5 = v35;
      v31 = v93;
      if (*(v58 + 16) <= 0)
      {
        return;
      }
    }

    *(v81 + 16) = 0;
  }
}

void sub_21D437A68(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v39 = a2;
  v45[20] = *MEMORY[0x277D85DE8];
  v38 = sub_21DBF9D2C();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21DBF9D5C();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v34 = a1;
  if (*(a1 + 16) >= 1)
  {
    v30 = 0;
    v29[1] = "ectionsMonitorableDataView>";
    v33 = v45;
    v32 = (v6 + 8);
    v31 = (v8 + 8);
    do
    {
      v10 = [*(v40 + 16) templatesContext];
      if (v10)
      {
        v11 = v10;
        aBlock[0] = 0;
        v12 = [v10 fetchTemplatesWithError_];
        v13 = aBlock[0];
        if (v12)
        {
          v14 = v12;
          sub_21D0D8CF0(0, &qword_27CE584C8);
          v15 = sub_21DBFA5EC();
          v16 = v13;

          v17 = 0;
          goto LABEL_9;
        }

        v20 = aBlock[0];
        v15 = sub_21DBF52DC();

        swift_willThrow();
      }

      else
      {
        v18 = objc_opt_self();
        v19 = sub_21DBFA12C();
        v15 = [v18 internalErrorWithDebugDescription_];

        swift_willThrow();
      }

      v30 = 0;
      v17 = 1;
LABEL_9:
      v42 = v17;
      v41 = v17;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = v15;
      *(v21 + 32) = v42;
      *(v21 + 33) = v41;
      v45[2] = sub_21D43D8C4;
      v45[3] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v45[0] = sub_21D0D74FC;
      v45[1] = &block_descriptor_1637;
      v22 = _Block_copy(aBlock);

      sub_21D43DE58(v15, v17);
      v23 = v35;
      sub_21DBF9D4C();
      v43 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v24 = v37;
      v25 = v38;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v23, v24, v22);
      _Block_release(v22);
      (*v32)(v24, v25);
      (*v31)(v23, v36);

      sub_21D43DEB8(v15, v17);
      if (v39)
      {
        *(v34 + 16) = 0;
        return;
      }

      v26 = *(a4 + 152);
      os_unfair_lock_lock(v26);
      v27 = v34;
      v28 = *(a4 + 160) != *(v34 + 16);
      *(v34 + 16) = v28;
      *(a4 + 160) = v28;
      os_unfair_lock_unlock(v26);
    }

    while (*(v27 + 16) > 0);
  }
}

void sub_21D438040(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7)
{
  v42 = a6;
  v41 = a5;
  v40 = a4;
  v39 = a3;
  v45 = a2;
  v38 = sub_21DBF9D2C();
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21DBF9D5C();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v34 = a1;
  if (*(a1 + 16) >= 1)
  {
    v13 = 0;
    v33 = v48;
    v32 = (v9 + 8);
    v31 = (v11 + 8);
    while (1)
    {
      v14 = sub_21DBCB4D4(v40, v41, v42 & 1, v45 & 1);
      v16 = v13;
      v17 = v13 == 0;
      v18 = (v13 ? v13 : v14);
      v19 = v13 ? 0 : v15;
      v20 = v17 ? v16 : 0;
      v43 = v20;
      v44 = a7[2];
      v21 = v16 != 0;
      v50 = v16 != 0;
      v49 = v16 != 0;
      v22 = swift_allocObject();
      *(v22 + 16) = a7;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v50;
      *(v22 + 41) = v49;
      v48[2] = sub_21D43A19C;
      v48[3] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v48[0] = sub_21D0D74FC;
      v48[1] = &block_descriptor_460;
      v23 = _Block_copy(aBlock);

      sub_21D43A0E8(v18, v19, v21);
      v24 = v35;
      sub_21DBF9D4C();
      v46 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v25 = v37;
      v26 = v38;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v24, v25, v23);
      _Block_release(v23);
      (*v32)(v25, v26);
      (*v31)(v24, v36);

      sub_21D43A134(v18, v19, v21);
      if (v45)
      {
        break;
      }

      v27 = a7[20];
      os_unfair_lock_lock(v27);
      v28 = v34;
      v29 = a7[21] != *(v34 + 16);
      *(v34 + 16) = v29;
      a7[21] = v29;
      os_unfair_lock_unlock(v27);
      v13 = v43;
      if (*(v28 + 16) <= 0)
      {
        return;
      }
    }

    *(v34 + 16) = 0;
  }
}

void sub_21D43853C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v144 = a4;
  LODWORD(v7) = a2;
  v143 = sub_21DBF9D2C();
  v148 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v142 = &v83[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = sub_21DBF9D5C();
  v116 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E8);
  MEMORY[0x28223BE20](v92);
  v91 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v90 = &v83[-v13];
  v123 = sub_21DBF5A2C();
  v110 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v139 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = sub_21DBF563C();
  v109 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F0);
  v108 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v147 = &v83[-v17];
  v138 = sub_21DBF714C();
  v111 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v83[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = sub_21DBF71BC();
  v113 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v83[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = sub_21DBF70DC();
  v114 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = sub_21DBF738C();
  v107 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v22 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_21DBF734C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v132 = &v83[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v83[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v29 - 8);
  v131 = &v83[-v30];
  v120 = sub_21DBF76AC();
  v106 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v88 = &v83[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  v32 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v87 = &v83[-v33];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v130 = *(v34 - 8);
  MEMORY[0x28223BE20](v34 - 8);
  v128 = &v83[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = v35;
  MEMORY[0x28223BE20](v36);
  v119 = &v83[-v37];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  v127 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v125 = &v83[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = v38;
  MEMORY[0x28223BE20](v39);
  v151 = &v83[-v40];
  v41 = *a5;
  v118 = *(*a5 + 216);
  v150 = a5;
  v117 = *(v41 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v124 = a1;
  if (*(a1 + 16) >= 1)
  {
    v42 = v23;
    v149 = 0;
    v115 = (v32 + 48);
    v43 = (v24 + 104);
    v114 += 13;
    v113 += 13;
    v112 = (v24 + 16);
    v111 += 13;
    v93 = *MEMORY[0x277D454F8];
    v103 = (v110 + 8);
    v102 = (v109 + 1);
    v84 = *MEMORY[0x277D45508];
    v101 = (v107 + 8);
    v100 = (v24 + 8);
    LODWORD(v110) = *MEMORY[0x277D45420];
    v109 = (v106 + 7);
    v86 = (v108 + 8);
    LODWORD(v108) = *MEMORY[0x277D45468];
    v85 = (v106 + 4);
    LODWORD(v107) = *MEMORY[0x277D45460];
    v106 = (v148 + 8);
    v105 = (v116 + 8);
    v104 = v155;
    LODWORD(v116) = v7;
    v98 = v16;
    v145 = v22;
    v96 = (v24 + 104);
    v99 = a3;
    v97 = v28;
    v95 = v23;
    while (1)
    {
      v44 = v131;
      sub_21DBFC83C();
      v45 = v146;
      if ((*v115)(v44, 1, v146) == 1)
      {
        break;
      }

      v48 = *(v44 + *(v45 + 48));
      v49 = sub_21DBF757C();
      (*(*(v49 - 8) + 8))(v44, v49);
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      v47 = *v43;
      v46 = *(a3 + 16);
      if (!v48)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v28 = *(a3 + 24);
      v47(v28, v93, v42);
LABEL_12:
      v50 = v28;
      (*v114)(v133, v110, v134);
      (*v113)(v135, v108, v136);
      (*v112)(v132, v28, v42);
      (*v111)(v137, v107, v138);
      sub_21DBF737C();
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v51 = v139;
      _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
      v52 = v149;
      sub_21DBF765C();
      v53 = v48;
      if (v52)
      {

        (*v103)(v51, v123);
        (*v102)(v16, v122);
        (*v101)(v22, v121);
        (*v100)(v28, v42);
        v54 = v151;
        *v151 = v52;
        v55 = 1;
        swift_storeEnumTagMultiPayload();
        v149 = 0;
        v56 = v120;
        v57 = v119;
      }

      else
      {
        v149 = 0;
        v148 = *(v146 + 48);
        (*v103)(v51, v123);
        (*v102)(v16, v122);
        v58 = v92;
        v59 = *(v92 + 48);
        v60 = v90;
        v94 = v53;
        v61 = v147;
        v62 = v89;
        sub_21DBF76DC();
        *(v60 + v59) = sub_21DBF76BC();
        v63 = v91;
        sub_21D0D3954(v60, v91, &qword_27CE5C1E8);
        v64 = *&v63[*(v58 + 48)];
        v65 = sub_21DBF757C();
        v66 = v87;
        (*(*(v65 - 8) + 32))(v87, v63, v65);
        v67 = v88;
        sub_21DBF76CC();

        sub_21D0CF7E0(v60, &qword_27CE5C1E8);
        (*v86)(v61, v62);
        (*v101)(v145, v121);
        (*v100)(v50, v42);
        *(v66 + v148) = v64;
        v54 = v151;
        sub_21D0D523C(v66, v151, &qword_27CE5C1E0);
        swift_storeEnumTagMultiPayload();
        v57 = v119;
        v56 = v120;
        (*v85)(v119, v67, v120);
        v55 = 0;
      }

      (*v109)(v57, v55, 1, v56);
      v68 = v150;
      v148 = v150[2];
      v69 = v125;
      sub_21D0D3954(v54, v125, &qword_27CE5C1D8);
      v70 = v128;
      sub_21D0D3954(v57, v128, &qword_27CE5C1C8);
      v71 = (*(v127 + 80) + 24) & ~*(v127 + 80);
      v72 = (v126 + *(v130 + 80) + v71) & ~*(v130 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      sub_21D0D523C(v69, v73 + v71, &qword_27CE5C1D8);
      sub_21D0D523C(v70, v73 + v72, &qword_27CE5C1C8);
      v155[2] = sub_21D439A00;
      v155[3] = v73;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v155[0] = sub_21D0D74FC;
      v155[1] = &block_descriptor_123_0;
      v7 = _Block_copy(aBlock);

      v74 = v140;
      sub_21DBF9D4C();
      v153 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v75 = v142;
      v76 = v143;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v74, v75, v7);
      _Block_release(v7);
      (*v106)(v75, v76);
      (*v105)(v74, v141);

      sub_21D0CF7E0(v57, &qword_27CE5C1C8);
      sub_21D0CF7E0(v151, &qword_27CE5C1D8);
      LOBYTE(v7) = v116;
      if (v116)
      {
        *(v124 + 16) = 0;
        return;
      }

      v77 = v150;
      v78 = *(v150 + v118);
      os_unfair_lock_lock(v78);
      v79 = v117;
      v80 = v124;
      v81 = *(v77 + v117) != *(v124 + 16);
      *(v124 + 16) = v81;
      *(v77 + v79) = v81;
      os_unfair_lock_unlock(v78);
      v82 = *(v80 + 16);
      a3 = v99;
      v16 = v98;
      v22 = v145;
      v28 = v97;
      v43 = v96;
      v42 = v95;
      if (v82 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v44, &qword_27CE5C1F8);
    if (v7)
    {
      v46 = *(a3 + 16);
      v47 = *v43;
LABEL_8:
      *v28 = *(a3 + 24);
      v47(v28, v84, v42);
      v48 = 0;
      goto LABEL_12;
    }

    v48 = 0;
LABEL_10:
    v46 = [*(a3 + 16) nonUserInteractiveStore];
    v47 = *v43;
    goto LABEL_11;
  }
}

uint64_t sub_21D439B78()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21D22C140;

  return sub_21D401A74(v0);
}

id sub_21D43A0E8(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_21D15751C(a1);
    a1 = a2;
  }

  return a1;
}

void sub_21D43A134(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_21D157878(a1);
    a1 = a2;
  }
}

void sub_21D43A670(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v58 = a3;
  v57 = a2;
  v56 = sub_21DBF9D2C();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_21DBF9D5C();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_21DBF760C();
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8);
  MEMORY[0x28223BE20](v13 - 8);
  v40 = &v37 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = (&v37 - v17);
  v19 = *a5;
  v47 = *(*a5 + 216);
  v46 = *(v19 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v48 = a1;
  if (*(a1 + 16) >= 1)
  {
    v20 = 0;
    v39 = (v10 + 32);
    v38 = (v10 + 56);
    v45 = v62;
    v44 = (v59 + 8);
    v43 = (v8 + 8);
    v42 = v12;
    v21 = v53;
    while (1)
    {
      sub_21DBF761C();
      v22 = v20;
      if (v20)
      {
        v59 = 0;
        *v18 = v20;
      }

      else
      {
        v23 = v40;
        v24 = v41;
        (*v39)(v40, v12, v41);
        (*v38)(v23, 0, 1, v24);
        sub_21D0D523C(v23, v18, &qword_27CE5C3D8);
        v59 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v25 = v49;
      sub_21D0D3954(v18, v49, &qword_27CE5C3D0);
      v63 = v22 != 0;
      v26 = (*(v51 + 80) + 24) & ~*(v51 + 80);
      v27 = v26 + v50;
      v28 = swift_allocObject();
      *(v28 + 16) = a5;
      sub_21D0D523C(v25, v28 + v26, &qword_27CE5C3D0);
      *(v28 + v27) = v63;
      v62[2] = sub_21D43DBF4;
      v62[3] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v62[0] = sub_21D0D74FC;
      v62[1] = &block_descriptor_1545;
      v29 = _Block_copy(aBlock);

      sub_21DBF9D4C();
      v60 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v30 = v55;
      v31 = v56;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v21, v30, v29);
      _Block_release(v29);
      (*v44)(v30, v31);
      (*v43)(v21, v54);

      sub_21D0CF7E0(v18, &qword_27CE5C3D0);
      if (v57)
      {
        break;
      }

      v32 = *(a5 + v47);
      os_unfair_lock_lock(v32);
      v33 = v46;
      v34 = v48;
      v35 = *(a5 + v46) != *(v48 + 16);
      *(v48 + 16) = v35;
      *(a5 + v33) = v35;
      os_unfair_lock_unlock(v32);
      v36 = *(v34 + 16);
      v12 = v42;
      v20 = v59;
      if (v36 <= 0)
      {
        return;
      }
    }

    *(v48 + 16) = 0;
  }
}

void sub_21D43AE08(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v27 = a2;
  v26 = sub_21DBF9D2C();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21DBF9D5C();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v23 = a1;
  if (*(a1 + 16) >= 1)
  {
    v22 = v31;
    v21 = (v6 + 8);
    v20 = (v8 + 8);
    while (1)
    {
      v11 = sub_21D5E4E78();
      v33 = 0;
      v32 = 0;
      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      *(v12 + 24) = v11;
      *(v12 + 32) = v33;
      *(v12 + 33) = v32;
      v31[2] = sub_21D43D8C4;
      v31[3] = v12;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v31[0] = sub_21D0D74FC;
      v31[1] = &block_descriptor_1379;
      v13 = _Block_copy(aBlock);

      sub_21D43DE58(v11, 0);
      sub_21DBF9D4C();
      v29 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v14 = v25;
      v15 = v26;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v10, v14, v13);
      _Block_release(v13);
      (*v21)(v14, v15);
      (*v20)(v10, v24);

      sub_21D43DEB8(v11, 0);
      if (v27)
      {
        break;
      }

      v16 = *(a4 + 152);
      os_unfair_lock_lock(v16);
      v17 = v23;
      v18 = *(a4 + 160) != *(v23 + 16);
      *(v23 + 16) = v18;
      *(a4 + 160) = v18;
      os_unfair_lock_unlock(v16);
      if (*(v17 + 16) <= 0)
      {
        return;
      }
    }

    *(v23 + 16) = 0;
  }
}

void sub_21D43B280(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v91 = a3;
  v90 = a2;
  v83 = sub_21DBF9D2C();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21DBF9D5C();
  v9 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C300);
  MEMORY[0x28223BE20](v66);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v60 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v14 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v86 = &v60 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  MEMORY[0x28223BE20](v62);
  v61 = &v60 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v79 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v77 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v60 - v24);
  v26 = *a5;
  v71 = *(*a5 + 216);
  v89 = a5;
  v70 = *(v26 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v72 = a1;
  if (*(a1 + 16) >= 1)
  {
    v27 = 0;
    v60 = (v14 + 8);
    v69 = v94;
    v68 = (v7 + 8);
    v67 = (v9 + 8);
    v85 = v21;
    v84 = v25;
    while (1)
    {
      v28 = *(v91 + 16);
      v29 = (v90 & 1) != 0 ? v28 : [v28 nonUserInteractiveStore];
      v30 = v29;
      sub_21DBF6CFC();
      if (v27)
      {

        *v25 = v27;
        v31 = 1;
        v87 = 0;
      }

      else
      {
        v87 = 0;
        v88 = *(v62 + 48);
        v32 = v66;
        v33 = *(v66 + 48);
        v34 = v64;
        v35 = v86;
        v36 = v63;
        sub_21DBF76DC();
        *(v34 + v33) = sub_21DBF76BC();
        v37 = v65;
        sub_21D0D3954(v34, v65, &qword_27CE5C300);
        v38 = *(v37 + *(v32 + 48));
        v39 = sub_21DBF6DBC();
        v40 = *(v39 - 8);
        v41 = v61;
        v21 = v85;
        (*(v40 + 32))(v61, v37, v39);
        (*(v40 + 56))(v41, 0, 1, v39);
        sub_21DBF76CC();

        v42 = v34;
        v25 = v84;
        sub_21D0CF7E0(v42, &qword_27CE5C300);
        (*v60)(v35, v36);
        *(v41 + v88) = v38;
        sub_21D0D523C(v41, v25, &qword_27CE5C2F8);
        v31 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v43 = sub_21DBF76AC();
      (*(*(v43 - 8) + 56))(v21, v31, 1, v43);
      v44 = v89;
      v88 = v89[2];
      v45 = v73;
      sub_21D0D3954(v25, v73, &qword_27CE5C2F0);
      v46 = v77;
      sub_21D0D3954(v21, v77, &qword_27CE5C1C8);
      v47 = (*(v75 + 80) + 24) & ~*(v75 + 80);
      v48 = (v74 + *(v79 + 80) + v47) & ~*(v79 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v44;
      sub_21D0D523C(v45, v49 + v47, &qword_27CE5C2F0);
      sub_21D0D523C(v46, v49 + v48, &qword_27CE5C1C8);
      v94[2] = sub_21D43D000;
      v94[3] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v94[0] = sub_21D0D74FC;
      v94[1] = &block_descriptor_875;
      v50 = _Block_copy(aBlock);

      v51 = v80;
      sub_21DBF9D4C();
      v92 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v52 = v82;
      v53 = v83;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v51, v52, v50);
      v54 = v50;
      v25 = v84;
      _Block_release(v54);
      v21 = v85;
      (*v68)(v52, v53);
      (*v67)(v51, v81);

      sub_21D0CF7E0(v21, &qword_27CE5C1C8);
      sub_21D0CF7E0(v25, &qword_27CE5C2F0);
      if (v90)
      {
        break;
      }

      v55 = v89;
      v56 = *(v89 + v71);
      os_unfair_lock_lock(v56);
      v57 = v70;
      v58 = v72;
      v59 = *(v55 + v70) != *(v72 + 16);
      *(v72 + 16) = v59;
      *(v55 + v57) = v59;
      os_unfair_lock_unlock(v56);
      v27 = v87;
      if (*(v58 + 16) <= 0)
      {
        return;
      }
    }

    *(v72 + 16) = 0;
  }
}

void sub_21D43BD68(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v110 = a4;
  v120 = a3;
  v119 = a2;
  v109 = sub_21DBF9D2C();
  v7 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = sub_21DBF9D5C();
  v113 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A8);
  MEMORY[0x28223BE20](v79);
  v78 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v77 = &v72[-v12];
  v13 = sub_21DBF71BC();
  v112 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0);
  v91 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v105 = &v72[-v16];
  v117 = sub_21DBF734C();
  v17 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v19 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v72[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v75 = &v72[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  v104 = *(v26 - 8);
  MEMORY[0x28223BE20](v26 - 8);
  v102 = &v72[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = v27;
  MEMORY[0x28223BE20](v28);
  v116 = &v72[-v29];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  v101 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v99 = &v72[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = v30;
  MEMORY[0x28223BE20](v31);
  v115 = &v72[-v32];
  v96 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount;
  v98 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v33 = *a5;
  v95 = *(*a5 + 216);
  v114 = a5;
  v94 = *(v33 + 224);
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v97 = a1;
  if (*(a1 + 16) >= 1)
  {
    v34 = v7;
    v35 = 0;
    v93 = (v24 + 48);
    v36 = (v17 + 104);
    v92 = (v112 + 104);
    v87 = (v112 + 8);
    v80 = *MEMORY[0x277D454F8];
    v86 = (v17 + 8);
    v74 = (v91 + 1);
    v73 = *MEMORY[0x277D45508];
    v91 = v123;
    v90 = *MEMORY[0x277D45470];
    v89 = (v34 + 8);
    v88 = (v113 + 8);
    v85 = v13;
    v84 = v15;
    v111 = v19;
    v83 = v22;
    v82 = v23;
    v81 = (v17 + 104);
    while (1)
    {
      sub_21DBFC83C();
      if ((*v93)(v22, 1, v23) == 1)
      {
        break;
      }

      v39 = *&v22[*(v23 + 48)];
      v40 = sub_21DBF773C();
      (*(*(v40 - 8) + 8))(v22, v40);
      if ((v119 & 1) == 0)
      {
        goto LABEL_10;
      }

      v38 = *v36;
      v37 = *(v120 + 16);
      if (!v39)
      {
        goto LABEL_8;
      }

LABEL_11:
      *v19 = *(v120 + v96);
      v38(v19, v80, v117);
LABEL_12:
      (*v92)(v15, v90, v13);
      v41 = v105;
      sub_21DBF74AC();
      if (v35)
      {

        (*v87)(v15, v13);
        (*v86)(v19, v117);
        v42 = v115;
        *v115 = v35;
        v43 = 1;
        v112 = 0;
        v44 = v116;
      }

      else
      {
        v112 = 0;
        v113 = *(v23 + 48);
        (*v87)(v15, v13);
        v45 = v79;
        v46 = *(v79 + 48);
        v47 = v77;
        v48 = v76;
        v49 = v41;
        sub_21DBF76DC();
        *(v47 + v46) = sub_21DBF76BC();
        v50 = v78;
        sub_21D0D3954(v47, v78, &qword_27CE5C2A8);
        v51 = *&v50[*(v45 + 48)];
        v52 = sub_21DBF773C();
        v53 = v75;
        (*(*(v52 - 8) + 32))(v75, v50, v52);
        v44 = v116;
        sub_21DBF76CC();

        sub_21D0CF7E0(v47, &qword_27CE5C2A8);
        (*v74)(v49, v48);
        (*v86)(v111, v117);
        *(v53 + v113) = v51;
        v54 = v115;
        sub_21D0D523C(v53, v115, &qword_27CE5C2A0);
        v42 = v54;
        v43 = 0;
      }

      swift_storeEnumTagMultiPayload();
      v55 = sub_21DBF76AC();
      (*(*(v55 - 8) + 56))(v44, v43, 1, v55);
      v56 = v114;
      v113 = v114[2];
      v57 = v99;
      sub_21D0D3954(v42, v99, &qword_27CE5C298);
      v58 = v102;
      sub_21D0D3954(v44, v102, &qword_27CE5C1C8);
      v59 = (*(v101 + 80) + 24) & ~*(v101 + 80);
      v60 = (v100 + *(v104 + 80) + v59) & ~*(v104 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v56;
      sub_21D0D523C(v57, v61 + v59, &qword_27CE5C298);
      sub_21D0D523C(v58, v61 + v60, &qword_27CE5C1C8);
      v123[2] = sub_21D43CCD8;
      v123[3] = v61;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v123[0] = sub_21D0D74FC;
      v123[1] = &block_descriptor_715;
      v62 = _Block_copy(aBlock);

      v63 = v106;
      sub_21DBF9D4C();
      v121 = MEMORY[0x277D84F90];
      sub_21D0D92F8(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
      v64 = v108;
      v65 = v109;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v63, v64, v62);
      _Block_release(v62);
      (*v89)(v64, v65);
      (*v88)(v63, v107);

      sub_21D0CF7E0(v116, &qword_27CE5C1C8);
      sub_21D0CF7E0(v115, &qword_27CE5C298);
      if (v119)
      {
        *(v97 + 16) = 0;
        return;
      }

      v66 = v114;
      v67 = *(v114 + v95);
      os_unfair_lock_lock(v67);
      v68 = v94;
      v69 = v97;
      v70 = *(v66 + v94) != *(v97 + 16);
      *(v97 + 16) = v70;
      *(v66 + v68) = v70;
      os_unfair_lock_unlock(v67);
      v71 = *(v69 + 16);
      v13 = v85;
      v15 = v84;
      v19 = v111;
      v22 = v83;
      v23 = v82;
      v35 = v112;
      v36 = v81;
      if (v71 <= 0)
      {
        return;
      }
    }

    sub_21D0CF7E0(v22, &qword_27CE5C2B0);
    if (v119)
    {
      v37 = *(v120 + 16);
      v38 = *v36;
LABEL_8:
      *v19 = *(v120 + v96);
      v38(v19, v73, v117);
      v39 = 0;
      goto LABEL_12;
    }

    v39 = 0;
LABEL_10:
    v37 = [*(v120 + 16) nonUserInteractiveStore];
    v38 = *v36;
    goto LABEL_11;
  }
}

uint64_t sub_21D43DBF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_21D42C5B4(v2, v3, v4);
}

uint64_t sub_21D43DDA4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E8);
  v3 = *(v1 + 16);

  return sub_21D402238(a1, v3);
}

id sub_21D43DE58(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_21DBF8E0C();
  }
}

uint64_t objectdestroy_1369Tm()
{

  sub_21D43DEB8(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void sub_21D43DEB8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_1375Tm()
{

  sub_21D43DEB8(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_53Tm()
{

  return swift_deallocObject();
}

uint64_t TTREditTodaySectionsModelObject.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21D43ED5C();
  sub_21DBF5D9C();

  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_21DBF8E0C();
}

uint64_t sub_21D43EC34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21D43ED5C();
  sub_21DBF5D9C();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
  return sub_21DBF8E0C();
}

uint64_t sub_21D43ECB8()
{
  swift_getKeyPath();
  sub_21D43ED5C();
  sub_21DBF5D8C();
}

unint64_t sub_21D43ED5C()
{
  result = qword_27CE5C400;
  if (!qword_27CE5C400)
  {
    type metadata accessor for TTREditTodaySectionsModelObject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C400);
  }

  return result;
}

uint64_t type metadata accessor for TTREditTodaySectionsModelObject()
{
  result = qword_27CE5C420;
  if (!qword_27CE5C420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTREditTodaySectionsModelObject.__allocating_init()()
{
  v0 = swift_allocObject();
  TTREditTodaySectionsModelObject.init()();
  return v0;
}

uint64_t TTREditTodaySectionsModelObject.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C408);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_21DBF5DAC();
  sub_21D43F368();
  swift_getKeyPath();
  sub_21D43F440();
  sub_21DBF5D8C();

  sub_21D0D0E88(0);
  *(v0 + 32) = v1;
  sub_21DBF5DAC();
  return v0;
}

uint64_t TTREditTodaySectionsModelObject.deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore31TTREditTodaySectionsModelObject___observationRegistrar;
  v2 = sub_21DBF5DBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTREditTodaySectionsModelObject.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore31TTREditTodaySectionsModelObject___observationRegistrar;
  v2 = sub_21DBF5DBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TTREditTodaySectionsModelObject.viewModelDidChange(to:)()
{
  swift_getKeyPath();
  sub_21D43ED5C();
  sub_21DBF5D9C();

  if (*(*(v0 + 16) + 16))
  {
    v1 = sub_21DBF9C9C();
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x28223BE20](v1);
  sub_21DBF950C();
}

uint64_t sub_21D43F17C()
{
  swift_getKeyPath();
  sub_21D43ED5C();
  sub_21DBF5D8C();
}

uint64_t TTREditTodaySectionsModelObject.show(_:)(uint64_t *a1)
{
  v2 = *a1;
  sub_21D43F368();
  swift_getKeyPath();
  sub_21D43F440();

  sub_21DBF5D8C();

  return sub_21D0D0E88(v2);
}

unint64_t sub_21D43F368()
{
  result = qword_27CE5C410;
  if (!qword_27CE5C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C410);
  }

  return result;
}

uint64_t sub_21D43F3BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_21D0D0E88(v5);
  return sub_21D0D0E78(v3);
}

unint64_t sub_21D43F440()
{
  result = qword_27CE5C418;
  if (!qword_27CE5C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5C408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C418);
  }

  return result;
}

uint64_t sub_21D43F4CC()
{
  result = sub_21DBF5DBC();
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

uint64_t sub_21D43F5B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
  sub_21DBF8E0C();
}

uint64_t REMNavigationSpecifier.init(watchKitUserActivityUserInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - v15;
  v26[1] = 0xD000000000000019;
  v26[2] = 0x800000021DC5C430;
  sub_21DBFBE2C();
  if (!*(a1 + 16) || (v17 = sub_21D17EA0C(v27), (v18 & 1) == 0))
  {

    sub_21D181D3C(v27);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_7;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v17, v28);
  sub_21D181D3C(v27);

  v19 = swift_dynamicCast();
  (*(v11 + 56))(v9, v19 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_7:
    v22 = &qword_27CE5EA20;
    v23 = v9;
    goto LABEL_8;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_21DBF670C();
  (*(v11 + 8))(v16, v10);
  v20 = sub_21DBF66FC();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v6, 1, v20))
  {
    (*(v21 + 32))(a2, v6, v20);
    return (*(v21 + 56))(a2, 0, 1, v20);
  }

  v22 = &unk_27CE650B0;
  v23 = v6;
LABEL_8:
  sub_21D0CF7E0(v23, v22);
  v24 = sub_21DBF66FC();
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

uint64_t REMNavigationSpecifier.watchKitApplicationLaunchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DBF54CC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21D43FA88(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v6 = sub_21DBFA69C();
      *(v6 + 16) = v4;
      v7 = v6 + 32;
      do
      {
        sub_21D0D3954(v5, v7, a3);
        v7 += 64;
        --v4;
      }

      while (v4);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    sub_21D0CF7E0(v5, a3);
    return v6;
  }

  return result;
}

uint64_t sub_21D43FB34()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C430);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C430);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRStackViewPredefinedContentPopulator.__allocating_init(stackView:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TTRStackViewPredefinedContentPopulator.init(stackView:)(a1);
  return v2;
}

uint64_t TTRStackViewPredefinedContentPopulator.init(stackView:)(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v10 - v6;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  memset(v10, 0, sizeof(v10));
  sub_21DBFBEFC();
  swift_getAssociatedConformanceWitness();
  v8 = sub_21DBFAC8C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  *(v2 + 40) = sub_21D43FA88(v10, v8, &unk_27CE5F120);
  *(v2 + 48) = 0;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_21D43FDE0()
{
  sub_21DBFA5BC();
  result = swift_beginAccess();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *(v0 + 40);
  if (v5 >= *(v2 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_21D0D3954(v2 + (v5 << 6) + 32, v4, &unk_27CE5F120);
  if (!v4[0])
  {
    sub_21D0CF7E0(v4, &unk_27CE5F120);
    return 0;
  }

  v3 = v4[0];
  sub_21D0CF7E0(v4, &unk_27CE5F120);
  if (([v3 isHidden] & 1) != 0 || (result = swift_dynamicCastUnknownClass()) == 0)
  {

    return 0;
  }

  return result;
}

uint64_t sub_21D43FF14@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  sub_21DBFA5BC();
  v10 = v18;
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = *(v3 + 40);
  if (v10 >= *(v12 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_21D0D3954(v12 + (v10 << 6) + 32, v17, &unk_27CE5F120);
  if (*&v17[0])
  {
    v19[0] = v17[0];
    v19[1] = v17[1];
    v20[0] = v17[2];
    v20[1] = v17[3];
    if ([*&v17[0] isHidden])
    {
      sub_21D442500(v19);
    }

    else
    {
      sub_21D0D3954(v20, v17, &qword_27CE5C690);
      sub_21D442500(v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
      v13 = swift_dynamicCast();
      v14 = *(*(a1 - 8) + 56);
      if (v13)
      {
        v15 = *(a1 - 8);
        v14(v9, 0, 1, a1);
        (*(v15 + 32))(a2, v9, a1);
        return (v14)(a2, 0, 1, a1);
      }

      v14(v9, 1, 1, a1);
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    sub_21D0CF7E0(v17, &unk_27CE5F120);
  }

  return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
}

uint64_t sub_21D440210()
{
  sub_21DBFA5BC();
  result = swift_beginAccess();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v0 + 40);
  if (v6 >= *(v2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_21D0D3954(v2 + (v6 << 6) + 32, v5, &unk_27CE5F120);
  v3 = v5[0];
  if (v5[0])
  {
    v4 = v5[0];
  }

  sub_21D0CF7E0(v5, &unk_27CE5F120);
  return v3;
}

void sub_21D4402F0(id a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  sub_21DBFA5BC();
  v7 = v17[0];
  swift_beginAccess();
  if (v17[0] < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(v4 + 40);
  if (v17[0] >= *(v8 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    a2 = sub_21D256CCC(a2);
    *(v4 + 40) = a2;
    goto LABEL_10;
  }

  sub_21D0D3954(v8 + (v17[0] << 6) + 32, v17, &unk_27CE5F120);
  v9 = v17[0];
  v10 = sub_21D0CF7E0(v17, &unk_27CE5F120);
  if (v9)
  {
    return;
  }

  v17[0] = 0;
  if (v7)
  {
    v11 = 0;
    do
    {
      v12 = v11 + 1;
      v15[0] = v11;
      v10 = sub_21D44050C(v17, v15, v4, &v16);
      v3 = v16;
      v17[0] = v16;
      v11 = v12;
    }

    while (v7 != v12);
  }

  else
  {
    v3 = 0;
  }

  v13 = a2(v10);
  [v13 setHidden_];
  v19 = 0u;
  v18 = 0u;
  v17[0] = v13;
  v17[1] = -1;
  v17[2] = 0;
  v17[3] = 0;
  swift_beginAccess();
  a2 = *(v4 + 40);
  a1 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 40) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v7 >= *(a2 + 2))
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_21D0F02F4(v17, a2 + 64 * v7 + 32, &unk_27CE5F120);
  *(v4 + 40) = a2;
  swift_endAccess();
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [*(v4 + 16) ttr:a1 insertArrangedSubview:v3 atIndex:?];
}

uint64_t sub_21D44050C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  result = swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = *(a3 + 40);
  if (v7 >= *(v9 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_21D0D3954(v9 + (v7 << 6) + 32, v11, &unk_27CE5F120);
  v10 = v11[0] != 0;
  result = sub_21D0CF7E0(v11, &unk_27CE5F120);
  if (!__OFADD__(v6, v10))
  {
    *a4 = v6 + v10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_21D4405DC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 24) != v2)
  {
    sub_21D4415B0();
  }
}

void sub_21D44065C(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  sub_21D4405DC(v3);
}

void (*sub_21D4406A4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  swift_beginAccess();
  *(v4 + 80) = *(v1 + 24);
  return sub_21D440730;
}

void sub_21D440730(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  sub_21D4405DC(v4);

  free(v1);
}

void sub_21D4407A0(double a1)
{
  swift_beginAccess();
  if (*(v1 + 32) != a1)
  {
    sub_21D4415B0();
  }
}

void sub_21D440820(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_21D4407A0(v3);
}

void (*sub_21D440868(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + 32);
  return sub_21D4408F4;
}

void sub_21D4408F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_21D4407A0(v4);

  free(v1);
}

void sub_21D440964(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48))
  {
    if (qword_27CE56758 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5C430);
    oslog = sub_21DBF84AC();
    v4 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v4, "performSubviewUpdates cannot be nested", v5, 2u);
      MEMORY[0x223D46520](v5, -1, -1);
    }
  }

  else
  {
    v6 = v2;
    *(v2 + 48) = 1;
    type metadata accessor for TTRStackViewPredefinedContentPopulator.SubviewUpdater();
    swift_beginAccess();
    swift_allocObject();
    v9 = sub_21DBF8E0C();
    v10 = sub_21D4420A8(v9);
    v11 = *(v2 + 16);
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = v10;
    v12[5] = v6;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_21D442548;
    *(v13 + 24) = v12;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_26;
    v14 = _Block_copy(aBlock);

    [v11 performBatchUpdates_];

    _Block_release(v14);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v6 + 48) = 0;
    }
  }
}

uint64_t sub_21D440C88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(a3);
  swift_beginAccess();
  v3 = sub_21DBF8E0C();
  sub_21D440E3C(v3);
}

uint64_t sub_21D440D10()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_21DBFBEFC();
  swift_getAssociatedConformanceWitness();
  v4 = sub_21DBFAC8C();
  result = (*(v1 + 8))(v3, AssociatedTypeWitness);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void sub_21D440E3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21D440D10();
  if (v4 != v5)
  {
    v11 = v4;
    v12 = v5;
    if (v5 < v4)
    {
      __break(1u);
    }

    else if (v4 < v5)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v13 = *(a1 + 16);
        if (v4 < v13 && v5 - 1 < v13)
        {
          v6 = 0;
          v15 = (v4 << 6) | 0x20;
          v16 = &qword_27CE59C80;
          __asm { FMOV            V0.2D, #-1.0 }

          v35 = _Q0;
          v36 = v5;
          while (1)
          {
            swift_beginAccess();
            v22 = *(v2 + 40);
            if (v11 >= *(v22 + 16))
            {
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              v10 = sub_21DBFBD7C();
LABEL_6:

              if (v6 == v10)
              {
                goto LABEL_54;
              }

LABEL_49:
              if (qword_27CE56758 != -1)
              {
                swift_once();
              }

              v31 = sub_21DBF84BC();
              __swift_project_value_buffer(v31, qword_27CE5C430);
              v32 = sub_21DBF84AC();
              v33 = sub_21DBFAECC();
              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                *v34 = 0;
                _os_log_impl(&dword_21D0C9000, v32, v33, "arrangedSubviews gets mutated unexpectedly", v34, 2u);
                MEMORY[0x223D46520](v34, -1, -1);
              }

              goto LABEL_54;
            }

            sub_21D0D3954(v22 + v15, v43, &unk_27CE5F120);
            sub_21D0D3954(a1 + v15, v42, v16);
            if (!*&v42[0])
            {
              break;
            }

            if (*&v42[0] == 1)
            {
              if (v43[0])
              {
                _VF = __OFADD__(v6++, 1);
                if (_VF)
                {
                  goto LABEL_58;
                }
              }

LABEL_16:
              v21 = v43;
              goto LABEL_17;
            }

            v25 = a1;
            v26 = v16;
            *v38 = v42[0];
            v39 = v42[1];
            v40 = v42[2];
            v41 = v42[3];
            v27 = *&v42[0];
            sub_21D442E0C(v38, v37);
            swift_beginAccess();
            v28 = *(v2 + 40);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 40) = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v28 = sub_21D256CCC(v28);
              *(v2 + 40) = v28;
            }

            if (v11 >= v28[2])
            {
              goto LABEL_56;
            }

            sub_21D0F02F4(v37, v28 + v15, &unk_27CE5F120);
            *(v2 + 40) = v28;
            swift_endAccess();
            sub_21D0D3954(v43, v37, &unk_27CE5F120);
            if (*&v37[0])
            {
              v30 = *&v37[0];
              sub_21D442500(v37);
              if (v27 == v30)
              {
                [v30 setHidden_];
              }

              else
              {
                if (v6 < 0)
                {
                  goto LABEL_61;
                }

                [*(v2 + 16) ttr:v6 replaceArrangedSubviewAtIndex:v27 withView:?];
                [v30 removeFromSuperview];
              }

              _VF = __OFADD__(v6++, 1);
              if (_VF)
              {
                goto LABEL_57;
              }
            }

            else
            {
              sub_21D0CF7E0(v37, &unk_27CE5F120);
              if (v6 < 0)
              {
                goto LABEL_62;
              }

              [*(v2 + 16) ttr:v27 insertArrangedSubview:v6 atIndex:?];
              _VF = __OFADD__(v6++, 1);
              if (_VF)
              {
                goto LABEL_57;
              }
            }

            v16 = v26;
            sub_21D442500(v38);
            sub_21D0CF7E0(v43, &unk_27CE5F120);
            a1 = v25;
            v12 = v36;
LABEL_18:
            ++v11;
            v15 += 64;
            if (v12 == v11)
            {
              goto LABEL_3;
            }
          }

          sub_21D0D3954(v43, v37, &unk_27CE5F120);
          if (*&v37[0])
          {
            *v38 = v37[0];
            v39 = v37[1];
            v40 = v37[2];
            v41 = v37[3];
            [*&v37[0] setHidden_];
            v39 = v35;
            sub_21D442E0C(v38, v37);
            swift_beginAccess();
            v23 = *(v2 + 40);
            v24 = swift_isUniquelyReferenced_nonNull_native();
            *(v2 + 40) = v23;
            if ((v24 & 1) == 0)
            {
              v23 = sub_21D256CCC(v23);
              *(v2 + 40) = v23;
            }

            if (v11 >= v23[2])
            {
              goto LABEL_59;
            }

            sub_21D0F02F4(v37, v23 + v15, &unk_27CE5F120);
            *(v2 + 40) = v23;
            swift_endAccess();
            _VF = __OFADD__(v6++, 1);
            if (_VF)
            {
              goto LABEL_60;
            }

            sub_21D442500(v38);
            goto LABEL_16;
          }

          sub_21D0CF7E0(v43, &unk_27CE5F120);
          v21 = v37;
LABEL_17:
          sub_21D0CF7E0(v21, &unk_27CE5F120);
          goto LABEL_18;
        }

LABEL_67:
        __break(1u);
        return;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_66;
  }

  v6 = 0;
LABEL_3:
  v7 = [*(v2 + 16) arrangedSubviews];
  if (v7)
  {
    v8 = v7;
    sub_21D114EC8();
    v9 = sub_21DBFA5EC();

    if (v9 >> 62)
    {
      goto LABEL_63;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  if (v6)
  {
    goto LABEL_49;
  }

LABEL_54:
  sub_21D4415B0();
}

uint64_t sub_21D441394(_OWORD *a1, _OWORD *a2, void (*a3)(_OWORD *, id *))
{
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  result = sub_21D440D10();
  if (result == v7)
  {
LABEL_2:
    v8 = v23;
    *a1 = v22;
    a1[1] = v8;
    v9 = v25;
    a1[2] = v24;
    a1[3] = v9;
    return result;
  }

  v10 = result;
  v11 = v7;
  if (v7 < result)
  {
    goto LABEL_19;
  }

  if (result < v7)
  {
    v12 = (result << 6) | 0x20;
    while (1)
    {
      result = swift_beginAccess();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      v13 = *(v3 + 40);
      if (v10 >= *(v13 + 16))
      {
        goto LABEL_18;
      }

      sub_21D0D3954(v13 + v12, v17, &unk_27CE5F120);
      if (*&v17[0])
      {
        *v18 = v17[0];
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        if ([*&v17[0] isHidden])
        {
          result = sub_21D442500(v18);
        }

        else
        {
          sub_21D0D3954(&v22, v17, &unk_27CE5F120);
          if (*&v17[0])
          {
            sub_21D0CF7E0(v17, &unk_27CE5F120);
          }

          else
          {
            sub_21D0CF7E0(&v22, &unk_27CE5F120);
            sub_21D0CF7E0(v17, &unk_27CE5F120);
            sub_21D442E0C(v18, &v22);
          }

          a3(a2, v18);
          result = sub_21D0CF7E0(a2, &unk_27CE5F120);
          v14 = v19;
          *a2 = *v18;
          a2[1] = v14;
          v15 = v21;
          a2[2] = v20;
          a2[3] = v15;
        }
      }

      else
      {
        result = sub_21D0CF7E0(v17, &unk_27CE5F120);
      }

      ++v10;
      v12 += 64;
      if (v11 == v10)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21D4415B0()
{
  v1 = *(v0 + 16);
  v2 = [v1 axis];
  if (v2 <= 1)
  {
    MEMORY[0x28223BE20](v2);
    sub_21D441394(v18, v17, sub_21D442E04);
    if (![v1 isLayoutMarginsRelativeArrangement])
    {
LABEL_15:
      sub_21D0CF7E0(v17, &unk_27CE5F120);
      sub_21D0CF7E0(v18, &unk_27CE5F120);
      return;
    }

    [v1 directionalLayoutMargins];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_21D0D3954(v18, v16, &unk_27CE5F120);
    if (!*&v16[0] || (v11 = v16[2], sub_21D442500(v16), sub_21D0D3954(v17, v16, &unk_27CE5F120), !*&v16[0]))
    {
      sub_21D0CF7E0(v16, &unk_27CE5F120);
LABEL_14:
      [v1 setDirectionalLayoutMargins_];
      goto LABEL_15;
    }

    v12 = v16[3];
    sub_21D442500(v16);
    v13 = [v1 axis];
    if (v13 == 1)
    {
      swift_beginAccess();
      if (*(v0 + 24))
      {
        v4 = v11;
      }

      swift_beginAccess();
      v8 = v12 - *(v0 + 32);
      goto LABEL_14;
    }

    if (!v13)
    {
      swift_beginAccess();
      if (*(v0 + 24))
      {
        v6 = v11;
      }

      swift_beginAccess();
      v10 = v12 - *(v0 + 32);
      goto LABEL_14;
    }
  }

  if (qword_27CE56758 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5C430);
  v15 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v15);
  sub_21DAEAB00("Unknown axis", 12, 2);
  __break(1u);
}

id sub_21D441898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21D0D3954(a1, v9, &unk_27CE5F120);
  if (v9[0])
  {
    v7 = v9[0];
    sub_21D442500(v9);
    [*(a3 + 16) setCustomSpacing:v7 afterView:*(a2 + 16)];
  }

  else
  {
    sub_21D0CF7E0(v9, &unk_27CE5F120);
  }

  return [*(a3 + 16) setAlignment:*(a2 + 8) forView:*a2 inAxis:a4];
}

uint64_t TTRStackViewPredefinedContentPopulator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.cachedView<A>(ofType:for:)()
{
  v1 = *(v0 + 16);
  result = sub_21DBFA5BC();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= *(v1 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  sub_21D0D3954(v1 + (v4 << 6) + 32, v5, &unk_27CE5F120);
  if (v5[0])
  {
    v3 = v5[0];
    sub_21D442500(v5);
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v5, &unk_27CE5F120);
  }

  return 0;
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.cachedViewAndUserInfo<A, B>(ofTypes:for:)@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_21DBFBA8C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  result = sub_21DBFA5BC();
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v27 >= *(v11 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_21D0D3954(v11 + (v27 << 6) + 32, v26, &unk_27CE5F120);
  if (*&v26[0])
  {
    v28[0] = v26[0];
    v28[1] = v26[1];
    v29[0] = v26[2];
    v29[1] = v26[3];
    v13 = *&v26[0];
    v14 = swift_dynamicCastUnknownClass();
    if (v14)
    {
      v15 = v14;
      sub_21D0D3954(v29, v26, &qword_27CE5C690);
      v16 = v13;
      sub_21D442500(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
      if (swift_dynamicCast())
      {
        (*(v7 + 56))(v6, 0, 1, a1);
        v17 = *(v7 + 32);
        v17(v10, v6, a1);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v19 = *(TupleTypeMetadata2 + 48);
        v20 = v25;
        *v25 = v15;
        v17(v20 + v19, v10, a1);
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v20, 0, 1, TupleTypeMetadata2);
      }

      (*(v7 + 56))(v6, 1, 1, a1);
      (*(v24 + 8))(v6, v4);
    }

    else
    {
      sub_21D442500(v28);
    }
  }

  else
  {
    sub_21D0CF7E0(v26, &unk_27CE5F120);
  }

  v21 = v25;
  v22 = swift_getTupleTypeMetadata2();
  return (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.makeVisible(_:for:alignment:beforeSpacing:endMarginIfLast:userInfo:)(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_21DBFA5BC();
  v13 = v18[4];
  sub_21D0D3954(a6, v18, &qword_27CE5C690);
  v17[0] = a1;
  v17[1] = a5;
  *&v17[2] = a2;
  *&v17[3] = a3;
  swift_beginAccess();
  v14 = *(v6 + 24);
  v15 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 24) = v14;
  if (result)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21D256CE0(v14);
  v14 = result;
  *(v7 + 24) = result;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v13 < v14[2])
  {
    sub_21D0F02F4(v17, &v14[8 * v13 + 4], &qword_27CE59C80);
    *(v7 + 24) = v14;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.makeHidden(for:)()
{
  v1 = v0;
  sub_21DBFA5BC();
  v2 = v6;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  v3 = *(v0 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v3;
  if (result)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_21D256CE0(v3);
  v3 = result;
  *(v1 + 24) = result;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2 < v3[2])
  {
    sub_21D0F02F4(v5, &v3[8 * v2 + 4], &qword_27CE59C80);
    *(v1 + 24) = v3;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21D4420A8(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v11 - v6;
  v11 = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  sub_21DBFBEFC();
  swift_getAssociatedConformanceWitness();
  v8 = sub_21DBFAC8C();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v9 = sub_21D43FA88(&v11, v8, &qword_27CE59C80);
  *(v2 + 16) = a1;
  *(v2 + 24) = v9;
  return v2;
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.deinit()
{

  return v0;
}

uint64_t TTRStackViewPredefinedContentPopulator.SubviewUpdater.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_21D4422D8(void *result, uint64_t a2, void (*a3)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    a3(0);
    v5 = sub_21DBFA69C();
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    *(v6 + 16) = a2;
    *(v6 + 32) = v4;
    v7 = a2 - 1;
    if (v7)
    {
      v8 = (v6 + 40);
      do
      {
        *v8++ = v4;
        v9 = v4;
        --v7;
      }

      while (v7);
    }

    v10 = v4;
    return v5;
  }

  return result;
}

void *sub_21D442368(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a5)
    {
      return MEMORY[0x277D84F90];
    }

    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BB0);
    v10 = sub_21DBFA69C();
    v11 = v10;
    v10[2] = a5;
    v10[4] = v9;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v12 = a5 - 1;
    if (v12)
    {
      v13 = v10 + 11;
      do
      {
        *(v13 - 3) = v9;
        *(v13 - 2) = a2;
        *(v13 - 1) = a3;
        *v13 = a4;
        v14 = v9;
        v13 += 4;
        --v12;
      }

      while (v12);
    }

    v15 = v9;
    return v11;
  }

  return result;
}

void *sub_21D442424(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a5)
    {
      return MEMORY[0x277D84F90];
    }

    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BA0);
    v10 = sub_21DBFA69C();
    v11 = v10;
    v10[2] = a5;
    v10[4] = v9;
    v10[5] = a2;
    v10[6] = a3;
    v10[7] = a4;
    v12 = a5 - 1;
    if (v12)
    {
      v13 = v10 + 11;
      do
      {
        sub_21D15751C(v9);
        *(v13 - 3) = v9;
        *(v13 - 2) = a2;
        *(v13 - 1) = a3;
        *v13 = a4;
        v13 += 4;
        --v12;
      }

      while (v12);
    }

    sub_21D15751C(v9);
    return v11;
  }

  return result;
}

void destroy for SubviewUpdate(uint64_t a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    if (*(a1 + 56))
    {

      __swift_destroy_boxed_opaque_existential_0(a1 + 32);
    }
  }
}

uint64_t initializeWithCopy for SubviewUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    goto LABEL_5;
  }

  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 56);
  v6 = v4;
  if (!v5)
  {
LABEL_5:
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    return a1;
  }

  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32, v5);
  return a1;
}

uint64_t assignWithCopy for SubviewUpdate(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      v9 = *(a2 + 7);
      v10 = v5;
      if (v9)
      {
        *(a1 + 56) = v9;
        (**(v9 - 8))(a1 + 32, (a2 + 2), v9);
        return a1;
      }

LABEL_16:
      v14 = a2[3];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v14;
      return a1;
    }

LABEL_11:
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    *(a1 + 32) = a2[2];
    *(a1 + 48) = v13;
    *a1 = v11;
    *(a1 + 16) = v12;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_0(a1 + 32);
    }

    goto LABEL_11;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  v7 = *(a2 + 7);
  if (!*(a1 + 56))
  {
    if (v7)
    {
      *(a1 + 56) = v7;
      (**(v7 - 8))(a1 + 32, (a2 + 2), v7);
      return a1;
    }

    goto LABEL_16;
  }

  v8 = (a1 + 32);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_16;
  }

  __swift_assign_boxed_opaque_existential_0(v8, a2 + 4);
  return a1;
}

uint64_t assignWithTake for SubviewUpdate(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
LABEL_7:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    goto LABEL_8;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

    if (*(a1 + 56))
    {
      __swift_destroy_boxed_opaque_existential_0(a1 + 32);
    }

    goto LABEL_7;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 32);
  }

LABEL_8:
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for SubviewUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubviewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21D442BA8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

void destroy for SubviewInfo(uint64_t a1)
{
  if (*(a1 + 56))
  {

    __swift_destroy_boxed_opaque_existential_0(a1 + 32);
  }
}

uint64_t initializeWithCopy for SubviewInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 56);
  v6 = v4;
  if (v5)
  {
    *(a1 + 56) = v5;
    (**(v5 - 8))(a1 + 32, a2 + 32, v5);
  }

  else
  {
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
  }

  return a1;
}

uint64_t assignWithCopy for SubviewInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v7)
    {
      *(a1 + 56) = v7;
      (**(v7 - 8))(a1 + 32, a2 + 32);
      return a1;
    }

LABEL_7:
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    return a1;
  }

  v8 = (a1 + 32);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(v8, (a2 + 32));
  return a1;
}

uint64_t assignWithTake for SubviewInfo(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 32);
  }

  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  return a1;
}

void sub_21D442E44(unsigned __int8 a1, uint64_t a2, id a3)
{
  v7 = a1;
  swift_beginAccess();
  v8 = *(a2 + 40);
  if (*(v8 + 16) <= v7)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v4 = sub_21D256CCC(v4);
    *(a2 + 40) = v4;
  }

  else
  {
    sub_21D0D3954(v8 + (v7 << 6) + 32, v18, &unk_27CE5F120);
    v9 = v18[0];
    sub_21D0CF7E0(v18, &unk_27CE5F120);
    if (v9)
    {
      return;
    }

    v3 = 0;
    v10 = -1;
    v11 = 32;
    v4 = &unk_27CE5F120;
    while (v10 - v7 != -1)
    {
      v12 = *(a2 + 40);
      if (++v10 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = v11 + 64;
      sub_21D0D3954(v12 + v11, v18, &unk_27CE5F120);
      v14 = v18[0] != 0;
      sub_21D0CF7E0(v18, &unk_27CE5F120);
      v11 = v13;
      v15 = __OFADD__(v3, v14);
      v3 += v14;
      if (v15)
      {
        __break(1u);
        break;
      }
    }

    v16 = sub_21D6BC658();
    [v16 setHidden_];
    v20 = 0u;
    v19 = 0u;
    v18[0] = v16;
    v18[1] = -1;
    v18[2] = 0;
    v18[3] = 0;
    swift_beginAccess();
    v4 = *(a2 + 40);
    a3 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 40) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v4[2] <= v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_21D0F02F4(v18, &v4[8 * v7 + 4], &unk_27CE5F120);
  *(a2 + 40) = v4;
  swift_endAccess();
  if (v3 < 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [*(a2 + 16) ttr:a3 insertArrangedSubview:v3 atIndex:?];
}

uint64_t TTRRemindersListEditableSectionNameViewModel.sectionHeaderTitle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20));
  v4 = v3[5];
  v6 = v3[3];
  v19 = v3[4];
  v5 = v19;
  v20 = v4;
  v7 = v3[5];
  v21[0] = v3[6];
  *(v21 + 10) = *(v3 + 106);
  v8 = v3[3];
  v10 = v3[1];
  v17 = v3[2];
  v9 = v17;
  v18 = v8;
  v11 = v3[1];
  v16[0] = *v3;
  v12 = v16[0];
  v16[1] = v11;
  *(a1 + 106) = *(v3 + 106);
  v13 = v3[6];
  a1[5] = v7;
  a1[6] = v13;
  a1[3] = v6;
  a1[4] = v5;
  a1[1] = v10;
  a1[2] = v9;
  *a1 = v12;
  return sub_21D443144(v16, &v15);
}

uint64_t type metadata accessor for TTRRemindersListEditableSectionNameViewModel()
{
  result = qword_280D0DEA8;
  if (!qword_280D0DEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TTRRemindersListEditableSectionNameViewModel.init(item:sectionHeaderTitle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21D105694(a1, a3, type metadata accessor for TTRRemindersListViewModel.Item);
  v5 = a3 + *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 106) = *(a2 + 106);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v9;
  return result;
}

Swift::String_optional __swiftcall TTRRemindersListEditableSectionNameViewModel.placeholderTitle(listLayout:)(RemindersUICore::TTRRemindersListLayout listLayout)
{
  v2 = v1;
  v3 = listLayout;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  sub_21D1D338C(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_4;
  }

  if ((EnumCaseMultiPayload - 2) < 7)
  {
    sub_21D106A38(v10, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_4:
    (*(v5 + 56))(v13, 1, 1, v4);
LABEL_5:
    v16 = 0;
    v17 = 0;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D105694(v10, v13, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    sub_21D106A38(v10, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    goto LABEL_5;
  }

  sub_21D105694(v13, v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v25);
  if (v26 > 1u)
  {
    if (v26 != 2)
    {
      sub_21D106A38(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      goto LABEL_5;
    }

    if (v14)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_26;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_26:
      v21 = sub_21DBF516C();
      v23 = v22;
      sub_21D106A38(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      v16 = v21;
      v17 = v23;
      goto LABEL_29;
    }

LABEL_27:
    swift_once();
    goto LABEL_26;
  }

  if (!v26)
  {

    if (v14)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_26;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF516C();
  v20 = v19;
  sub_21D106A38(v7, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  v17 = v20;
  v16 = v18;
LABEL_29:
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_21D443844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v33 - v10);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v8);
  v12 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v11, v8);
  sub_21D106A38(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106A38(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v12)
  {
    v13 = *(a3 + 20);
    v14 = *(a1 + v13 + 80);
    v15 = *(a1 + v13 + 48);
    v50 = *(a1 + v13 + 64);
    v51 = v14;
    v16 = *(a1 + v13 + 80);
    v52[0] = *(a1 + v13 + 96);
    *(v52 + 10) = *(a1 + v13 + 106);
    v17 = *(a1 + v13 + 16);
    v47[0] = *(a1 + v13);
    v47[1] = v17;
    v18 = *(a1 + v13 + 48);
    v20 = *(a1 + v13);
    v19 = *(a1 + v13 + 16);
    v48 = *(a1 + v13 + 32);
    v49 = v18;
    v44 = v50;
    v45 = v16;
    v46[0] = *(a1 + v13 + 96);
    *(v46 + 10) = *(a1 + v13 + 106);
    v40 = v20;
    v41 = v19;
    v42 = v48;
    v43 = v15;
    v21 = (a2 + v13);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[3];
    v53[2] = v21[2];
    v53[3] = v24;
    v25 = v21[1];
    v26 = v21[2];
    v27 = *v21;
    v53[0] = v22;
    v53[1] = v25;
    *(v56 + 10) = *(v21 + 106);
    v28 = v21[5];
    v56[0] = v21[6];
    v29 = v21[5];
    v30 = v21[3];
    v54 = v21[4];
    v55 = v29;
    v37 = v54;
    v38 = v28;
    v39[0] = v21[6];
    *(v39 + 10) = *(v21 + 106);
    v33 = v27;
    v34 = v23;
    v35 = v26;
    v36 = v30;
    sub_21D443144(v47, v59);
    sub_21D443144(v53, v59);
    v31 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(&v40, &v33);
    v57[4] = v37;
    v57[5] = v38;
    v58[0] = v39[0];
    *(v58 + 10) = *(v39 + 10);
    v57[0] = v33;
    v57[1] = v34;
    v57[2] = v35;
    v57[3] = v36;
    sub_21D179E9C(v57);
    v59[4] = v44;
    v59[5] = v45;
    v60[0] = v46[0];
    *(v60 + 10) = *(v46 + 10);
    v59[0] = v40;
    v59[1] = v41;
    v59[2] = v42;
    v59[3] = v43;
    sub_21D179E9C(v59);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v28 - v8);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  v10 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
  sub_21D106A38(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106A38(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v10)
  {
    v11 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v12 = (a1 + *(v11 + 20));
    v13 = v12[5];
    v14 = v12[3];
    v45 = v12[4];
    v46 = v13;
    v15 = v12[5];
    v47[0] = v12[6];
    *(v47 + 10) = *(v12 + 106);
    v16 = v12[1];
    v17 = v12[3];
    v43 = v12[2];
    v44 = v17;
    v18 = v12[1];
    v42[0] = *v12;
    v42[1] = v18;
    v39 = v45;
    v40 = v15;
    v41[0] = v12[6];
    *(v41 + 10) = *(v12 + 106);
    v37 = v43;
    v38 = v14;
    v35 = v42[0];
    v36 = v16;
    v19 = (a2 + *(v11 + 20));
    *(v50 + 10) = *(v19 + 106);
    v20 = v19[6];
    v21 = v19[4];
    v22 = v19[3];
    v49 = v19[5];
    v50[0] = v20;
    v24 = v19[1];
    v23 = v19[2];
    v48[3] = v19[3];
    v48[4] = v21;
    v48[2] = v23;
    v25 = v19[1];
    v48[0] = *v19;
    v48[1] = v25;
    v32 = v21;
    v33 = v49;
    v34[0] = v19[6];
    *(v34 + 10) = *(v19 + 106);
    v28 = v48[0];
    v29 = v24;
    v30 = v23;
    v31 = v22;
    sub_21D443144(v42, v53);
    sub_21D443144(v48, v53);
    v26 = _s15RemindersUICore25TTRRemindersListViewModelC18SectionHeaderTitleV2eeoiySbAE_AEtFZ_0(&v35, &v28);
    v51[4] = v32;
    v51[5] = v33;
    v52[0] = v34[0];
    *(v52 + 10) = *(v34 + 10);
    v51[0] = v28;
    v51[1] = v29;
    v51[2] = v30;
    v51[3] = v31;
    sub_21D179E9C(v51);
    v53[4] = v39;
    v53[5] = v40;
    v54[0] = v41[0];
    *(v54 + 10) = *(v41 + 10);
    v53[0] = v35;
    v53[1] = v36;
    v53[2] = v37;
    v53[3] = v38;
    sub_21D179E9C(v53);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void **initializeBufferWithCopyOfBuffer for TTRRemindersListEditableSectionNameViewModel(void **a1, void **a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = a3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
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

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
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

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v125 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *v3;
        *a1 = *v3;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, v3, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = v3 + v57;
      v60 = *(v3 + v57 + 8);
      if (v60)
      {
        v123 = v3;
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v66 = *(v59 + 6);
        v65 = *(v59 + 7);
        v118 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v118);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v66;
        *(v58 + 7) = v65;
        v58[64] = v118;
        *(v58 + 65) = *(v59 + 65);
        v67 = v59[120];
        if (v67 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v68 = *(v59 + 9);
          v119 = *(v59 + 10);
          v69 = *(v59 + 11);
          v70 = *(v59 + 12);
          v71 = *(v59 + 13);
          v72 = *(v59 + 14);
          v73 = v67 & 1;
          sub_21D0FB960(v68, v119, v69, v70, v71, v72, v67 & 1);
          *(v58 + 9) = v68;
          *(v58 + 10) = v119;
          *(v58 + 11) = v69;
          *(v58 + 12) = v70;
          *(v58 + 13) = v71;
          *(v58 + 14) = v72;
          v58[120] = v73;
        }

        v6 = v125;
        v58[121] = v59[121];
        v3 = v123;
        goto LABEL_98;
      }

LABEL_95:
      v74 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v74;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v75 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v75;
      v76 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v76;
LABEL_98:
      *(a1 + v56[6]) = *(v3 + v56[6]);
      *(a1 + v56[7]) = *(v3 + v56[7]);
      *(a1 + v56[8]) = *(v3 + v56[8]);
      *(a1 + v56[9]) = *(v3 + v56[9]);
      *(a1 + v56[10]) = *(v3 + v56[10]);
      v77 = v56[11];
      v78 = *(v3 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v126 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *v3;
      *a1 = *v3;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, v3, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v56[5];
    v58 = a1 + v80;
    v59 = v3 + v80;
    v81 = *(v3 + v80 + 8);
    if (v81)
    {
      v124 = v3;
      *v58 = *v59;
      *(v58 + 1) = v81;
      v82 = *(v59 + 2);
      v83 = *(v59 + 3);
      v84 = *(v59 + 4);
      v85 = *(v59 + 5);
      v86 = *(v59 + 6);
      v87 = *(v59 + 7);
      v120 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v120);
      *(v58 + 2) = v82;
      *(v58 + 3) = v83;
      *(v58 + 4) = v84;
      *(v58 + 5) = v85;
      *(v58 + 6) = v86;
      *(v58 + 7) = v87;
      v58[64] = v120;
      *(v58 + 65) = *(v59 + 65);
      v88 = v59[120];
      if (v88 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v89 = *(v59 + 9);
        v121 = *(v59 + 10);
        v90 = *(v59 + 11);
        v91 = *(v59 + 12);
        v92 = *(v59 + 13);
        v93 = *(v59 + 14);
        v94 = v88 & 1;
        sub_21D0FB960(v89, v121, v90, v91, v92, v93, v88 & 1);
        *(v58 + 9) = v89;
        *(v58 + 10) = v121;
        *(v58 + 11) = v90;
        *(v58 + 12) = v91;
        *(v58 + 13) = v92;
        *(v58 + 14) = v93;
        v58[120] = v94;
      }

      v6 = v126;
      v58[121] = v59[121];
      v3 = v124;
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
      v20 = v3[2];
      a1[2] = v20;
      v21 = v20;
      goto LABEL_129;
    }

    v31 = *v3;
    *a1 = *v3;
    v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v17 = *(v16 - 8);
    v32 = *(v17 + 48);
    v33 = v31;
    if (v32(v3 + v15, 1, v16))
    {
LABEL_28:
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
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
      v95 = *(v3 + v15);
      *(a1 + v15) = v95;
      v96 = v95;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
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
        memcpy(a1 + v15, v3 + v15, *(v17 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v97 = sub_21DBF563C();
    (*(*(v97 - 8) + 16))(a1 + v15, v3 + v15, v97);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v3, 1, v28))
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, v3, *(*(v30 - 8) + 64));
      }

      else
      {
        *a1 = *v3;
        v39 = *(v28 + 20);
        v40 = sub_21DBF6C1C();
        v122 = *(*(v40 - 8) + 16);
        sub_21DBF8E0C();
        v122(a1 + v39, v3 + v39, v40);
        (*(v29 + 56))(a1, 0, 1, v28);
      }

      v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v42 = (a1 + v41);
      v43 = (v3 + v41);
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
      v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v3, 1, v34))
      {
        v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v3, *(*(v36 - 8) + 64));
      }

      else
      {
        v48 = sub_21DBF563C();
        (*(*(v48 - 8) + 16))(a1, v3, v48);
        *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
        (*(v35 + 56))(a1, 0, 1, v34);
      }

      v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
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
  v98 = *(v6 + 20);
  v99 = a1 + v98;
  v100 = v3 + v98;
  v101 = *(v3 + v98 + 8);
  *v99 = *(v3 + v98);
  *(v99 + 1) = v101;
  v102 = *(v3 + v98 + 16);
  v103 = *(v100 + 3);
  v104 = *(v100 + 4);
  v105 = *(v100 + 5);
  v106 = *(v100 + 6);
  v107 = *(v100 + 7);
  v108 = v100[64];
  sub_21DBF8E0C();
  sub_21D2A7DB4(v102, v103, v104, v105, v106, v107, v108);
  *(v99 + 2) = v102;
  *(v99 + 3) = v103;
  *(v99 + 4) = v104;
  *(v99 + 5) = v105;
  *(v99 + 6) = v106;
  *(v99 + 7) = v107;
  v99[64] = v108;
  *(v99 + 65) = *(v100 + 65);
  v109 = v100[120];
  if (v109 == 255)
  {
    *(v99 + 72) = *(v100 + 72);
    *(v99 + 88) = *(v100 + 88);
    *(v99 + 104) = *(v100 + 104);
    v99[120] = v100[120];
  }

  else
  {
    v110 = *(v100 + 9);
    v111 = *(v100 + 10);
    v112 = *(v100 + 11);
    v113 = *(v100 + 12);
    v114 = *(v100 + 13);
    v115 = *(v100 + 14);
    v116 = v109 & 1;
    sub_21D0FB960(v110, v111, v112, v113, v114, v115, v109 & 1);
    *(v99 + 9) = v110;
    *(v99 + 10) = v111;
    *(v99 + 11) = v112;
    *(v99 + 12) = v113;
    *(v99 + 13) = v114;
    *(v99 + 14) = v115;
    v99[120] = v116;
  }

  v99[121] = v100[121];
  return a1;
}

void destroy for TTRRemindersListEditableSectionNameViewModel(id *a1, uint64_t a2)
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
  v22 = a1 + *(a2 + 20);

  sub_21D179EF0(*(v22 + 2), *(v22 + 3), *(v22 + 4), *(v22 + 5), *(v22 + 6), *(v22 + 7), v22[64]);
  v23 = v22[120];
  if (v23 != 255)
  {
    v24 = *(v22 + 9);
    v25 = *(v22 + 10);
    v26 = *(v22 + 11);
    v27 = *(v22 + 12);
    v28 = *(v22 + 13);
    v29 = *(v22 + 14);

    sub_21D1078C0(v24, v25, v26, v27, v28, v29, v23 & 1);
  }
}

void **initializeWithCopy for TTRRemindersListEditableSectionNameViewModel(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
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
      v125 = a3;
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
        v121 = a2;
        v123 = a1;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        a3 = v125;
        v57[121] = v58[121];
        a2 = v121;
        a1 = v123;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(a1 + v55[6]) = *(a2 + v55[6]);
      *(a1 + v55[7]) = *(a2 + v55[7]);
      *(a1 + v55[8]) = *(a2 + v55[8]);
      *(a1 + v55[9]) = *(a2 + v55[9]);
      *(a1 + v55[10]) = *(a2 + v55[10]);
      v78 = v55[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v126 = a3;
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
    v81 = v55[5];
    v57 = a1 + v81;
    v58 = a2 + v81;
    v82 = *(a2 + v81 + 8);
    if (v82)
    {
      v122 = a2;
      v124 = a1;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      a3 = v126;
      v57[121] = v58[121];
      a2 = v122;
      a1 = v124;
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
      v98 = *(a2 + v13);
      *(a1 + v13) = v98;
      v99 = v98;
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
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(a1 + v13, a2 + v13, v100);
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
  v101 = *(a3 + 20);
  v102 = a1 + v101;
  v103 = a2 + v101;
  v104 = *(a2 + v101 + 8);
  *v102 = *(a2 + v101);
  *(v102 + 1) = v104;
  v105 = *(a2 + v101 + 16);
  v106 = *(a2 + v101 + 24);
  v107 = *(a2 + v101 + 32);
  v108 = *(a2 + v101 + 40);
  v109 = *(a2 + v101 + 48);
  v110 = *(a2 + v101 + 56);
  v111 = *(a2 + v101 + 64);
  sub_21DBF8E0C();
  sub_21D2A7DB4(v105, v106, v107, v108, v109, v110, v111);
  *(v102 + 2) = v105;
  *(v102 + 3) = v106;
  *(v102 + 4) = v107;
  *(v102 + 5) = v108;
  *(v102 + 6) = v109;
  *(v102 + 7) = v110;
  v102[64] = v111;
  *(v102 + 65) = *(v103 + 65);
  v112 = v103[120];
  if (v112 == 255)
  {
    *(v102 + 72) = *(v103 + 72);
    *(v102 + 88) = *(v103 + 88);
    *(v102 + 104) = *(v103 + 104);
    v102[120] = v103[120];
  }

  else
  {
    v113 = *(v103 + 9);
    v114 = *(v103 + 10);
    v115 = *(v103 + 11);
    v116 = *(v103 + 12);
    v117 = *(v103 + 13);
    v118 = *(v103 + 14);
    v119 = v112 & 1;
    sub_21D0FB960(v113, v114, v115, v116, v117, v118, v112 & 1);
    *(v102 + 9) = v113;
    *(v102 + 10) = v114;
    *(v102 + 11) = v115;
    *(v102 + 12) = v116;
    *(v102 + 13) = v117;
    *(v102 + 14) = v118;
    v102[120] = v119;
  }

  v102[121] = v103[121];
  return a1;
}

void **assignWithCopy for TTRRemindersListEditableSectionNameViewModel(void **a1, void **a2, uint64_t a3)
{
  v4 = a2;
  if (a1 == a2)
  {
    goto LABEL_129;
  }

  sub_21D106A38(a1, type metadata accessor for TTRRemindersListViewModel.Item);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *v4;
        *a1 = *v4;
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
        *a1 = *v4;
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
      v156 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, v4, v48);
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
        v49 = *v4;
        *a1 = *v4;
        v50 = v49;
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
      memcpy(a1, v4, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = v4 + v55;
      if (*(v4 + v55 + 8))
      {
        v154 = v4;
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v63 = *(v57 + 6);
        v62 = *(v57 + 7);
        v149 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v63, v62, v149);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v63;
        *(v56 + 7) = v62;
        v56[64] = v149;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v64 = v57[120];
        if (v64 == 255)
        {
          v77 = *(v57 + 72);
          v78 = *(v57 + 88);
          v79 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v79;
          *(v56 + 88) = v78;
          *(v56 + 72) = v77;
        }

        else
        {
          v65 = *(v57 + 9);
          v150 = *(v57 + 10);
          v66 = *(v57 + 11);
          v67 = *(v57 + 12);
          v68 = *(v57 + 13);
          v69 = *(v57 + 14);
          v70 = v64 & 1;
          sub_21D0FB960(v65, v150, v66, v67, v68, v69, v64 & 1);
          *(v56 + 9) = v65;
          *(v56 + 10) = v150;
          *(v56 + 11) = v66;
          *(v56 + 12) = v67;
          *(v56 + 13) = v68;
          *(v56 + 14) = v69;
          v56[120] = v70;
        }

        a3 = v156;
        v56[121] = v57[121];
        v4 = v154;
        goto LABEL_97;
      }

LABEL_94:
      v71 = *v57;
      v72 = *(v57 + 1);
      v73 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v73;
      *v56 = v71;
      *(v56 + 1) = v72;
      v74 = *(v57 + 4);
      v75 = *(v57 + 5);
      v76 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v75;
      *(v56 + 6) = v76;
      *(v56 + 4) = v74;
      a3 = v156;
LABEL_97:
      *(a1 + v54[6]) = *(v4 + v54[6]);
      *(a1 + v54[7]) = *(v4 + v54[7]);
      *(a1 + v54[8]) = *(v4 + v54[8]);
      *(a1 + v54[9]) = *(v4 + v54[9]);
      *(a1 + v54[10]) = *(v4 + v54[10]);
      v80 = v54[11];
      v81 = *(v4 + v80);
      *(a1 + v80) = v81;
      v82 = v81;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v156 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, v4, v51);
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
      v52 = *v4;
      *a1 = *v4;
      v53 = v52;
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
    memcpy(a1, v4, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v54[5];
    v56 = a1 + v83;
    v57 = v4 + v83;
    if (*(v4 + v83 + 8))
    {
      v155 = v4;
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v84 = *(v57 + 2);
      v85 = *(v57 + 3);
      v86 = *(v57 + 4);
      v87 = *(v57 + 5);
      v88 = *(v57 + 6);
      v89 = *(v57 + 7);
      v151 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v84, v85, v86, v87, v88, v89, v151);
      *(v56 + 2) = v84;
      *(v56 + 3) = v85;
      *(v56 + 4) = v86;
      *(v56 + 5) = v87;
      *(v56 + 6) = v88;
      *(v56 + 7) = v89;
      v56[64] = v151;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v90 = v57[120];
      if (v90 == 255)
      {
        v97 = *(v57 + 72);
        v98 = *(v57 + 88);
        v99 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v99;
        *(v56 + 88) = v98;
        *(v56 + 72) = v97;
      }

      else
      {
        v91 = *(v57 + 9);
        v152 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v90 & 1;
        sub_21D0FB960(v91, v152, v92, v93, v94, v95, v90 & 1);
        *(v56 + 9) = v91;
        *(v56 + 10) = v152;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v156;
      v56[121] = v57[121];
      v4 = v155;
      goto LABEL_97;
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *v4;
      *(a1 + 8) = *(v4 + 8);
      *(a1 + 9) = *(v4 + 9);
      *(a1 + 10) = *(v4 + 10);
      v18 = v4[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *v4;
    *a1 = *v4;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(v4 + v13, 1, v14))
    {
LABEL_27:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, v4 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v100 = *(v4 + v13);
      *(a1 + v13) = v100;
      v101 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(a1 + v13, v4 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v102 = sub_21DBF563C();
    (*(*(v102 - 8) + 16))(a1 + v13, v4 + v13, v102);
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
      memcpy(a1, v4, *(*(v28 - 8) + 64));
    }

    else
    {
      *a1 = *v4;
      v37 = *(v26 + 20);
      v38 = sub_21DBF6C1C();
      v153 = *(*(v38 - 8) + 16);
      sub_21DBF8E0C();
      v153(a1 + v37, v4 + v37, v38);
      (*(v27 + 56))(a1, 0, 1, v26);
    }

    v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v40 = (a1 + v39);
    v41 = (v4 + v39);
    if (v41[1])
    {
      *v40 = *v41;
      v40[1] = v41[1];
      v42 = v41[2];
      v40[2] = v42;
      sub_21DBF8E0C();
      v43 = v42;
    }

    else
    {
      v44 = *v41;
      v40[2] = v41[2];
      *v40 = v44;
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
      memcpy(a1, v4, *(*(v34 - 8) + 64));
    }

    else
    {
      v46 = sub_21DBF563C();
      (*(*(v46 - 8) + 16))(a1, v4, v46);
      *(a1 + *(v32 + 20)) = *(v4 + *(v32 + 20));
      (*(v33 + 56))(a1, 0, 1, v32);
    }

    v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(a1 + *(v47 + 20)) = *(v4 + *(v47 + 20));
    goto LABEL_128;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_34:
    memcpy(a1, v4, *(*(v6 - 8) + 64));
    goto LABEL_129;
  }

  *a1 = *v4;
  v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v9 = sub_21DBF8D7C();
  (*(*(v9 - 8) + 16))(a1 + v8, v4 + v8, v9);
LABEL_128:
  swift_storeEnumTagMultiPayload();
LABEL_129:
  v103 = *(a3 + 20);
  v104 = a1 + v103;
  v105 = v4 + v103;
  *v104 = *(v4 + v103);
  *(v104 + 1) = *(v4 + v103 + 8);
  sub_21DBF8E0C();

  v106 = *(v105 + 2);
  v107 = *(v105 + 3);
  v108 = *(v105 + 4);
  v109 = *(v105 + 5);
  v110 = *(v105 + 6);
  v111 = *(v105 + 7);
  v112 = v105[64];
  sub_21D2A7DB4(v106, v107, v108, v109, v110, v111, v112);
  v113 = *(v104 + 2);
  v114 = *(v104 + 3);
  v115 = *(v104 + 4);
  v116 = *(v104 + 5);
  v117 = *(v104 + 6);
  v118 = *(v104 + 7);
  *(v104 + 2) = v106;
  *(v104 + 3) = v107;
  *(v104 + 4) = v108;
  *(v104 + 5) = v109;
  *(v104 + 6) = v110;
  *(v104 + 7) = v111;
  v119 = v104[64];
  v104[64] = v112;
  sub_21D179EF0(v113, v114, v115, v116, v117, v118, v119);
  v104[65] = v105[65];
  v104[66] = v105[66];
  v104[67] = v105[67];
  v104[68] = v105[68];
  v120 = v105[120];
  if (v104[120] == 255)
  {
    if (v120 == 255)
    {
      v145 = *(v105 + 72);
      v146 = *(v105 + 88);
      v147 = *(v105 + 104);
      v104[120] = v105[120];
      *(v104 + 104) = v147;
      *(v104 + 88) = v146;
      *(v104 + 72) = v145;
    }

    else
    {
      v135 = *(v105 + 9);
      v136 = *(v105 + 10);
      v137 = *(v105 + 11);
      v138 = *(v105 + 12);
      v139 = *(v105 + 13);
      v140 = *(v105 + 14);
      v141 = v120 & 1;
      sub_21D0FB960(v135, v136, v137, v138, v139, v140, v120 & 1);
      *(v104 + 9) = v135;
      *(v104 + 10) = v136;
      *(v104 + 11) = v137;
      *(v104 + 12) = v138;
      *(v104 + 13) = v139;
      *(v104 + 14) = v140;
      v104[120] = v141;
    }
  }

  else if (v120 == 255)
  {
    sub_21D2E979C((v104 + 72));
    v142 = *(v105 + 88);
    v143 = *(v105 + 104);
    v144 = v105[120];
    *(v104 + 72) = *(v105 + 72);
    v104[120] = v144;
    *(v104 + 104) = v143;
    *(v104 + 88) = v142;
  }

  else
  {
    v121 = *(v105 + 9);
    v122 = *(v105 + 10);
    v123 = *(v105 + 11);
    v124 = *(v105 + 12);
    v125 = *(v105 + 13);
    v126 = *(v105 + 14);
    v127 = v120 & 1;
    sub_21D0FB960(v121, v122, v123, v124, v125, v126, v120 & 1);
    v128 = *(v104 + 9);
    v129 = *(v104 + 10);
    v130 = *(v104 + 11);
    v131 = *(v104 + 12);
    v132 = *(v104 + 13);
    v133 = *(v104 + 14);
    v134 = v104[120];
    *(v104 + 9) = v121;
    *(v104 + 10) = v122;
    *(v104 + 11) = v123;
    *(v104 + 12) = v124;
    *(v104 + 13) = v125;
    *(v104 + 14) = v126;
    v104[120] = v127;
    sub_21D1078C0(v128, v129, v130, v131, v132, v133, v134);
  }

  v104[121] = v105[121];
  return a1;
}

_BYTE *initializeWithTake for TTRRemindersListEditableSectionNameViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = *(a3 + 20);
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = v44[5];
  v43[4] = v44[4];
  v43[5] = v45;
  v43[6] = v44[6];
  *(v43 + 106) = *(v44 + 106);
  v46 = v44[1];
  *v43 = *v44;
  v43[1] = v46;
  v47 = v44[3];
  v43[2] = v44[2];
  v43[3] = v47;
  return a1;
}

_BYTE *assignWithTake for TTRRemindersListEditableSectionNameViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D106A38(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          v22 = *(v21 - 8);
          if ((*(v22 + 48))(a2, 1, v21))
          {
            v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
            memcpy(a1, a2, *(*(v23 - 8) + 64));
          }

          else
          {
            v26 = sub_21DBF563C();
            (*(*(v26 - 8) + 32))(a1, a2, v26);
            a1[*(v21 + 20)] = a2[*(v21 + 20)];
            (*(v22 + 56))(a1, 0, 1, v21);
          }

          v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
          *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
          goto LABEL_88;
        }

        if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_33;
        }

        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          v12 = *(v11 - 8);
          if ((*(v12 + 48))(a2, 1, v11))
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
            memcpy(a1, a2, *(*(v13 - 8) + 64));
          }

          else
          {
            *a1 = *a2;
            v28 = *(v11 + 20);
            v29 = sub_21DBF6C1C();
            (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
            (*(v12 + 56))(a1, 0, 1, v11);
          }

          v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
          v31 = &a1[v30];
          v32 = &a2[v30];
          *v31 = *v32;
          *(v31 + 2) = *(v32 + 2);
          goto LABEL_88;
        }

        goto LABEL_33;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = &a1[v36];
            v38 = &a2[v36];
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            a1[v35[6]] = a2[v35[6]];
            a1[v35[7]] = a2[v35[7]];
            a1[v35[8]] = a2[v35[8]];
            a1[v35[9]] = a2[v35[9]];
            a1[v35[10]] = a2[v35[10]];
            *&a1[v35[11]] = *&a2[v35[11]];
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

LABEL_33:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_89;
      }

      if (EnumCaseMultiPayload != 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(&a2[v14], 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(&a1[v14], 0, 1, v15);
          goto LABEL_88;
        }

LABEL_86:
        memcpy(&a1[v14], &a2[v14], *(v16 + 64));
        goto LABEL_87;
      }

      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(&a2[v14], 1, v15))
      {
        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }
    }

LABEL_30:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_88;
  }

LABEL_89:
  v42 = *(a3 + 20);
  v43 = &a1[v42];
  v44 = &a2[v42];
  v45 = *(v44 + 1);
  *v43 = *v44;
  *(v43 + 1) = v45;

  v46 = v44[64];
  v47 = *(v43 + 2);
  v48 = *(v43 + 3);
  v49 = *(v43 + 4);
  v50 = *(v43 + 5);
  v51 = *(v43 + 6);
  v52 = *(v43 + 7);
  v53 = *(v44 + 2);
  *(v43 + 1) = *(v44 + 1);
  *(v43 + 2) = v53;
  *(v43 + 3) = *(v44 + 3);
  v54 = v43[64];
  v43[64] = v46;
  sub_21D179EF0(v47, v48, v49, v50, v51, v52, v54);
  *(v43 + 65) = *(v44 + 65);
  v43[67] = v44[67];
  v43[68] = v44[68];
  v55 = v43[120];
  if (v55 == 255)
  {
LABEL_93:
    *(v43 + 72) = *(v44 + 72);
    *(v43 + 88) = *(v44 + 88);
    *(v43 + 104) = *(v44 + 104);
    v43[120] = v44[120];
    goto LABEL_94;
  }

  v56 = v44[120];
  if (v56 == 255)
  {
    sub_21D2E979C((v43 + 72));
    goto LABEL_93;
  }

  v57 = *(v43 + 9);
  v58 = *(v43 + 10);
  v59 = *(v43 + 11);
  v60 = *(v43 + 12);
  v61 = *(v43 + 13);
  v62 = *(v43 + 14);
  *(v43 + 72) = *(v44 + 72);
  *(v43 + 88) = *(v44 + 88);
  *(v43 + 104) = *(v44 + 104);
  v43[120] = v56 & 1;
  sub_21D1078C0(v57, v58, v59, v60, v61, v62, v55 & 1);
LABEL_94:
  v43[121] = v44[121];
  return a1;
}

uint64_t sub_21D44AAB0()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRCrossDeviceIdentifier.ExternalIdentifier.entityName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRCrossDeviceIdentifier.ExternalIdentifier.accountName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRCrossDeviceIdentifier.ExternalIdentifier.externalIdentifier.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void __swiftcall TTRCrossDeviceIdentifier.ExternalIdentifier.init(entityName:accountName:externalIdentifier:)(RemindersUICore::TTRCrossDeviceIdentifier::ExternalIdentifier *__return_ptr retstr, Swift::String entityName, Swift::String accountName, Swift::String externalIdentifier)
{
  retstr->entityName = entityName;
  retstr->accountName = accountName;
  retstr->externalIdentifier = externalIdentifier;
}

uint64_t static TTRCrossDeviceIdentifier.ExternalIdentifier.== infix(_:_:)(void *a1, void *a2)
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

uint64_t sub_21D44ACDC(void *a1, void *a2)
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

uint64_t TTRCrossDeviceIdentifier.init(url:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  TTRCrossDeviceIdentifier.ExternalIdentifier.init(url:)(v8, &v22);
  v10 = v23;
  v11 = (v5 + 8);
  if (v23)
  {
    v12 = v22;
    v13 = *v11;
    v20 = v25;
    v21 = v24;
    result = v13(a1, v4);
    *a2 = v12;
    *(a2 + 8) = v10;
    v15 = v20;
    *(a2 + 16) = v21;
    *(a2 + 32) = v15;
    *(a2 + 48) = 0;
  }

  else
  {
    (v9)(v8, a1, v4);
    v16 = sub_21DBF53FC();
    v17 = [objc_opt_self() objectIDWithURL_];

    v18 = *v11;
    (*v11)(a1, v4);
    result = v18(v8, v4);
    if (v17)
    {
      *a2 = v17;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0;
      v19 = 1;
    }

    else
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v19 = -1;
    }

    *(a2 + 48) = v19;
  }

  return result;
}

void *TTRCrossDeviceIdentifier.ExternalIdentifier.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF54AC();
  v6 = v5;
  v7 = sub_21DBFA16C();
  if (!v6)
  {

    goto LABEL_25;
  }

  if (v4 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v11 = sub_21DBF548C();
  if (!v12)
  {
LABEL_25:
    v32 = sub_21DBF54CC();
    result = (*(*(v32 - 8) + 8))(a1, v32);
LABEL_32:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v13 = v12;
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (v15 = v11, v16 = *(sub_21DBF536C() + 16), , v16 != 3))
  {
    v33 = sub_21DBF54CC();
    (*(*(v33 - 8) + 8))(a1, v33);
LABEL_31:

    goto LABEL_32;
  }

  result = sub_21DBF536C();
  if (result[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v19 = result[6];
    v18 = result[7];
    sub_21DBF8E0C();

    if ((sub_21DBFA39C() & 1) == 0 || (v20 = sub_21DBFA28C(), sub_21D3F969C(v20, v19, v18), , sub_21D44BEC8(), v21 = sub_21DBFBB9C(), !v22))
    {
      v34 = sub_21DBF54CC();
      (*(*(v34 - 8) + 8))(a1, v34);
LABEL_30:

      goto LABEL_31;
    }

    v23 = v22;
    v36 = v21;

    result = sub_21DBF536C();
    if (result[2] >= 3uLL)
    {
      v25 = result[8];
      v24 = result[9];
      sub_21DBF8E0C();

      if (sub_21DBFA39C())
      {
        v26 = sub_21DBFA28C();
        sub_21D3F969C(v26, v25, v24);

        v27 = sub_21DBFBB9C();
        v29 = v28;
        v30 = sub_21DBF54CC();
        (*(*(v30 - 8) + 8))(a1, v30);

        if (v29)
        {
          v31 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v31 = v27 & 0xFFFFFFFFFFFFLL;
          }

          result = v23;
          if (v31)
          {
            *a2 = v15;
            *(a2 + 8) = v13;
            *(a2 + 16) = v36;
            *(a2 + 24) = v23;
            *(a2 + 32) = v27;
            *(a2 + 40) = v29;
            return result;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v35 = sub_21DBF54CC();
        (*(*(v35 - 8) + 8))(a1, v35);
      }

      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

void TTRCrossDeviceIdentifier.urlRepresentation.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 48))
  {
    v2 = [*v1 urlRepresentation];
    sub_21DBF546C();
  }

  else
  {
    TTRCrossDeviceIdentifier.ExternalIdentifier.urlRepresentation.getter(a1);
  }
}

uint64_t TTRCrossDeviceIdentifier.ExternalIdentifier.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = sub_21D44B7E8(v7, v8);
  v13 = v12;
  v14 = sub_21D44B7E8(v10, v9);
  v16 = v15;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_21DBFBEEC();
  v17 = sub_21DBFA16C();
  v19 = v18;

  v25 = v17;
  v26 = v19;
  MEMORY[0x223D42AA0](3092282, 0xE300000000000000);
  MEMORY[0x223D42AA0](v5, v6);
  MEMORY[0x223D42AA0](47, 0xE100000000000000);
  MEMORY[0x223D42AA0](2974561, 0xE300000000000000);
  MEMORY[0x223D42AA0](v11, v13);
  MEMORY[0x223D42AA0](47, 0xE100000000000000);
  MEMORY[0x223D42AA0](762607717, 0xE400000000000000);
  MEMORY[0x223D42AA0](v14, v16);
  sub_21DBF54BC();
  v20 = sub_21DBF54CC();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v4, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v21 + 32))(v24, v4, v20);
  }

  return result;
}

uint64_t TTRCrossDeviceIdentifier.description.getter()
{
  if (*(v0 + 48))
  {
    v1 = [*v0 description];
    v2 = sub_21DBFA16C();
    v4 = v3;

    MEMORY[0x223D42AA0](v2, v4);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return 0x44497463656A626FLL;
  }

  else
  {
    sub_21DBFBEEC();

    v6 = TTRCrossDeviceIdentifier.ExternalIdentifier.description.getter();
    MEMORY[0x223D42AA0](v6);

    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return 0xD000000000000013;
  }
}

uint64_t sub_21D44B7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  sub_21DBF4BEC();
  sub_21D176F0C();
  v8 = sub_21DBFBB6C();
  v10 = v9;
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if (v10)
  {
    v16 = v8;
    v17 = v10;
    sub_21DBF8E0C();
    sub_21DBF4BEC();
    v13 = sub_21DBFBB6C();
    v15 = v14;
    v11(v7, v4);

    if (v15)
    {

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t TTRCrossDeviceIdentifier.ExternalIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v1, v2);
  MEMORY[0x223D42AA0](0x6E756F636361202CLL, 0xEE003A656D614E74);
  MEMORY[0x223D42AA0](v3, v4);
  MEMORY[0x223D42AA0](0xD000000000000015, 0x800000021DC5C570);
  MEMORY[0x223D42AA0](v5, v6);
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 40;
}

void REMList.crossDeviceIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 externalIdentifier];
  if (v4)
  {
    v5 = sub_21DBFA16C();
    v7 = v6;

    v8 = [objc_opt_self() cdEntityName];
    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = [v2 account];
    v13 = [v12 name];

    v14 = sub_21DBFA16C();
    v16 = v15;
  }

  else
  {
    v9 = [v2 objectID];
    v11 = 0;
    v14 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = v4 == 0;
}

id REMStore.fetchList(with:)(uint64_t *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if ((a1[6] & 1) == 0)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = sub_21DBFA12C();
    v25[0] = 0;
    v3 = [v1 fetchAllListsWithExternalIdentifier:v7 error:v25];

    v8 = v25[0];
    if (!v3)
    {
      v4 = v25[0];
LABEL_21:
      v21 = v4;
      sub_21DBF52DC();

      swift_willThrow();
      return v3;
    }

    sub_21D0D8CF0(0, &qword_280D17690);
    v9 = sub_21DBFA5EC();
    v10 = v8;

    if (v9 >> 62)
    {
LABEL_32:
      if (sub_21DBFBD7C() < 2 || (v24 = sub_21DBFBD7C()) == 0)
      {
LABEL_34:
        if (sub_21DBFBD7C())
        {
          goto LABEL_26;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24 <= 1)
      {
        goto LABEL_25;
      }
    }

    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v3 = v12;
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v14 = [v12 account];
      v15 = [v14 name];

      v16 = sub_21DBFA16C();
      v18 = v17;

      if (v16 == v5 && v6 == v18)
      {

LABEL_23:

        return v3;
      }

      v20 = sub_21DBFC64C();

      if (v20)
      {
        goto LABEL_23;
      }

      ++v11;
    }

    while (v13 != v24);
    if (v9 >> 62)
    {
      goto LABEL_34;
    }

LABEL_25:
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_26:
      if ((v9 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223D44740](0, v9);
      }

      else
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v22 = *(v9 + 32);
      }

      v3 = v22;

      return v3;
    }

LABEL_35:

    return 0;
  }

  v2 = *a1;
  v25[0] = 0;
  v3 = [v1 fetchListWithObjectID:v2 error:v25];
  v4 = v25[0];
  if (!v3)
  {
    goto LABEL_21;
  }

  return v3;
}

unint64_t sub_21D44BEC8()
{
  result = qword_280D178E8;
  if (!qword_280D178E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178E8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRListColors.Color(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D0FB960(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRListColors.Color(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D0FB960(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  sub_21D1078C0(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRListColors.Color(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  sub_21D1078C0(v4, v6, v5, v7, v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListColors.Color(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListColors.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t destroy for TTRListColors.SymbolicColor()
{
}

void *initializeWithCopy for TTRListColors.SymbolicColor(void *a1, void *a2)
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
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRListColors.SymbolicColor(void *a1, void *a2)
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

  return a1;
}

void *assignWithTake for TTRListColors.SymbolicColor(void *a1, void *a2)
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

uint64_t getEnumTagSinglePayload for TTRListColors.SymbolicColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TTRListColors.SymbolicColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D44C380()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C448);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C448);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_21D44C48C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  return sub_21D44C548();
}

void TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_21D44C548();
}

uint64_t sub_21D44C548()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  result = swift_beginAccess();
  v5 = *(v0 + 48);
  if (*(v0 + 16))
  {
    if (v5)
    {
      return result;
    }

    v6 = sub_21DBFA89C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    sub_21DBFA84C();

    v8 = sub_21DBFA83C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;

    v11 = sub_21D1B5178(0, 0, v3, &unk_21DC16338, v9);
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    sub_21DBFA96C();

    v11 = 0;
  }

  *(v0 + 48) = v11;
}