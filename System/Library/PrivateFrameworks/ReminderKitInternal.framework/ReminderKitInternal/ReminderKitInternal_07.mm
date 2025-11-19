__n128 sub_2300D4000@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v113[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v105 + 1) = v11;
  *&v104 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v104, v8);
  v19(&v96, 0);
  type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters(0);
  sub_230066350(&qword_280C9A448, type metadata accessor for REMRemindersListDataView.TodayGroupInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v104 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v112[5]);
      v31 = sub_23004E30C(v29, v30, &v104);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v96 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C00);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v104);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v112[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.TodayGroupInvocation();
    *&v104 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C00);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = v81;
    MEMORY[0x28223BE20](v43);
    v81[-6] = v112;
    v81[-5] = v113;
    v81[-4] = v92;
    v81[-3] = v37;
    v81[-2] = v36;
    v81[-1] = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v81[-8]);
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81[1] = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v112[0];
      v50 = [v112[0] resultStorages];
      v51 = sub_23030F658();

      *(&v105 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v104 = v51;
      sub_23004D5CC(&v104, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v111;
        __swift_destroy_boxed_opaque_existential_1(&v104);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v105 + 1) = v53;
        *&v104 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v104, v57);
        v58(&v96, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14C08);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(qword_280C9A2D8, &qword_27DB14C08);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v104 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v103);
            v72 = sub_23004E30C(v70, v71, &v104);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v96 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v104);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v100 = v108;
          v101 = v109;
          v102 = v110;
          v96 = v104;
          v97 = v105;
          v98 = v106;
          v99 = v107;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v101;
          v78 = v88;
          *(v88 + 64) = v100;
          *(v78 + 80) = v77;
          v79 = v102;
          v80 = v97;
          *v78 = v96;
          *(v78 + 16) = v80;
          result = v99;
          *(v78 + 32) = v98;
          *(v78 + 48) = result;
          *(v78 + 96) = v79;
          *(v78 + 104) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v104, &v96);
        sub_2301FEB10(&v96, 0, 0);
        sub_2300DA5F0(&v96);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v104);
      }
    }
  }

  return result;
}

void sub_2300D4A5C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v73 = a1;
  v70 = a2;
  v4 = sub_230310A58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v2;
  sub_23030E7E8();
  swift_allocObject();
  v7 = sub_23030E7D8();
  v8 = MEMORY[0x277D84F90];
  v9 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v10 = type metadata accessor for REMStoreObjectsContainer();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v9;
  v72 = (v11 + 3);
  v71 = v3;
  v12 = v8;
  v13 = v11;
  v11[4] = sub_23004C2B4(v12);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_280C9C460);
  v17 = *(v5 + 16);
  v15 = v5 + 16;
  v16 = v17;
  v18 = v77;
  v17(v77, v14, v4);
  v82 = v10;
  v81 = v13;
  v75 = v13;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v81, v18);
  v19(v80, 0);
  sub_2300DA658();
  v76 = v7;
  v20 = v74;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v79[5]);
      v31 = sub_23004E30C(v29, v30, &v81);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v80[0] = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BF0);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v81);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v35 = v22;
    v65 = v16;
    v66 = v14;
    v67 = v10;
    v68 = v15;
    v69 = v4;
    v36 = v21;
    v37 = v72;
    swift_beginAccess();
    v38 = *v37;
    v39 = objc_allocWithZone(MEMORY[0x277D44860]);

    v79[0] = [v39 init];
    v72 = type metadata accessor for REMRemindersListDataView.TodaySectionOrderingInvocation();
    v81 = v72;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BF0);
    v41 = sub_23030F948();
    v43 = v42;
    v74 = v63;
    MEMORY[0x28223BE20](v41);
    v63[-6] = v79;
    v63[-5] = &v83;
    v63[-4] = v73;
    v63[-3] = v36;
    v63[-2] = v35;
    v63[-1] = v38;
    v44 = sub_230310268();
    sub_2300535B4(v44, v41, v43, v44, sub_2300DB8F4, &v63[-8]);
    v64 = v35;
    v63[1] = v40;
    v73 = v36;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v45 = v79[0];
    v46 = [v79[0] resultStorages];
    v47 = sub_23030F658();

    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v81 = v47;
    sub_23004D5CC(&v81, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v48 = v78;
      __swift_destroy_boxed_opaque_existential_1(&v81);
      v49 = v67;
      v50 = swift_allocObject();
      v51 = v71;
      v50[2] = v71;
      v50[3] = v48;
      v52 = v51;
      v50[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v53 = v77;
      v65(v77, v66, v69);
      v82 = v49;
      v81 = v50;

      v54 = sub_23030E788();
      sub_23004BC18(&v81, v53);
      v54(v80, 0);
      v55 = [v45 resultData];
      v56 = sub_23030EA18();
      v58 = v57;

      sub_2300DA6AC();
      sub_23030E778();
      sub_23005FE3C(v56, v58);
      v59 = v45;
      v60 = v81;
      v61 = [v59 latestFetchResultToken];

      sub_23005FE3C(v73, v64);

      v62 = v70;
      *v70 = v60;
      v62[1] = v61;
    }

    else
    {
      sub_23004D5CC(&v81, v80);
      sub_2301FEB10(v80, 0, 0);
      sub_2300DA5F0(v80);
      swift_willThrow();
      sub_23005FE3C(v73, v64);

      __swift_destroy_boxed_opaque_existential_1(&v81);
    }
  }
}

__n128 sub_2300D55D4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v4 = v3;
  v90 = a1;
  v86 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v94 = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v89 = v12 + 3;
  v88 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v87 = v15;
  (v18)(v8);
  v102.n128_u64[1] = v11;
  *&v101 = v14;
  v93 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v101, v8);
  v19(&v95, 0);
  type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters(0);
  sub_230066350(&qword_280C978D8, type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation.Parameters);
  v20 = v92;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v101 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v107[5]);
      v31 = sub_23004E30C(v29, v30, &v101);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v95 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BC8);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v101);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v81 = v16;
    v82 = v11;
    v83 = v17;
    v84 = v8;
    v85 = v5;
    v92 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v89;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v107[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.ScheduledByDayInvocation();
    *&v101 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BC8);
    v43 = sub_23030F948();
    v45 = v44;
    v91 = &v79;
    MEMORY[0x28223BE20](v43);
    *(&v79 - 6) = v107;
    *(&v79 - 5) = &v108;
    *(&v79 - 4) = v90;
    *(&v79 - 3) = v37;
    *(&v79 - 2) = v36;
    *(&v79 - 1) = v39;
    v46 = sub_230310268();
    v47 = v92;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, (&v79 - 8));
    v92 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v79 = v42;
      v80 = v41;
      v89 = v36;
      v90 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v107[0];
      v50 = [v107[0] resultStorages];
      v51 = sub_23030F658();

      v102.n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v101 = v51;
      sub_23004D5CC(&v101, &v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v106;
        __swift_destroy_boxed_opaque_existential_1(&v101);
        v53 = v82;
        v54 = swift_allocObject();
        v55 = v88;
        v54[2] = v88;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v84;
        v81(v84, v87, v85);
        v102.n128_u64[1] = v53;
        *&v101 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v101, v57);
        v58(&v95, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BD0);
        v91 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_280C97920, &qword_27DB14BD0);
        v63 = v92;
        sub_23030E778();
        if (v63)
        {
          v92 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v101 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v100);
            v72 = sub_23004E30C(v70, v71, &v101);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v95 = v80;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v101);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v90, v89);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v97 = v103;
          v98 = v104;
          v99 = v105;
          v95 = v101;
          v96 = v102;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v90, v89);

          v77 = v98;
          v78 = v86;
          *(v86 + 32) = v97;
          *(v78 + 48) = v77;
          *(v78 + 64) = v99;
          result = v96;
          *v78 = v95;
          *(v78 + 16) = result;
          *(v78 + 80) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v101, &v95);
        sub_2301FEB10(&v95, 0, 0);
        sub_2300DA5F0(&v95);
        swift_willThrow();
        sub_23005FE3C(v90, v89);

        __swift_destroy_boxed_opaque_existential_1(&v101);
      }
    }
  }

  return result;
}

double sub_2300D6020@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v111[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v104 + 1) = v11;
  *&v103 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v103, v8);
  v19(&v96, 0);
  type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters(0);
  sub_230066350(&qword_280C97758, type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v103 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v110[5]);
      v31 = sub_23004E30C(v29, v30, &v103);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v96 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BB8);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v103);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v110[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation();
    *&v103 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BB8);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = v81;
    MEMORY[0x28223BE20](v43);
    v81[-6] = v110;
    v81[-5] = v111;
    v81[-4] = v92;
    v81[-3] = v37;
    v81[-2] = v36;
    v81[-1] = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v81[-8]);
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81[1] = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v110[0];
      v50 = [v110[0] resultStorages];
      v51 = sub_23030F658();

      *(&v104 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v103 = v51;
      sub_23004D5CC(&v103, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v109;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v104 + 1) = v53;
        *&v103 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v103, v57);
        v58(&v96, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BC0);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_280C97900, &qword_27DB14BC0);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v103 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v102);
            v72 = sub_23004E30C(v70, v71, &v103);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v96 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v103);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v98 = v105;
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v96 = v103;
          v97 = v104;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v99;
          v78 = v88;
          *(v88 + 32) = v98;
          *(v78 + 48) = v77;
          *(v78 + 64) = v100;
          v79 = v101;
          result = *&v96;
          v80 = v97;
          *v78 = v96;
          *(v78 + 16) = v80;
          *(v78 + 80) = v79;
          *(v78 + 88) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v103, &v96);
        sub_2301FEB10(&v96, 0, 0);
        sub_2300DA5F0(&v96);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }
    }
  }

  return result;
}

double sub_2300D6A7C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v4 = v3;
  v92 = a1;
  v88 = a3;
  v5 = sub_230310A58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111[0] = v3;
  sub_23030E7E8();
  swift_allocObject();
  v111[4] = sub_23030E7D8();
  v9 = MEMORY[0x277D84F90];
  v10 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v11 = type metadata accessor for REMStoreObjectsContainer();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v10;
  v91 = v12 + 3;
  v90 = v4;
  v13 = v9;
  v14 = v12;
  v12[4] = sub_23004C2B4(v13);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_280C9C460);
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v16 = v18;
  v89 = v15;
  (v18)(v8);
  *(&v104 + 1) = v11;
  *&v103 = v14;
  v95 = v14;

  v19 = sub_23030E7C8();
  sub_23004BC18(&v103, v8);
  v19(&v96, 0);
  type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters(0);
  sub_230066350(&qword_27DB14B98, type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation.Parameters);
  v20 = v94;
  v21 = sub_23030E7B8();
  if (v20)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v23 = sub_23030EF48();
    __swift_project_value_buffer(v23, qword_27DB17288);
    v24 = v20;
    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v103 = v28;
      *v27 = 136315394;
      swift_getErrorValue();
      v29 = Error.rem_errorDescription.getter(v110[5]);
      v31 = sub_23004E30C(v29, v30, &v103);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      *&v96 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BA0);
      v32 = sub_23030F948();
      v34 = sub_23004E30C(v32, v33, &v103);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_230044000, v25, v26, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v83 = v16;
    v84 = v11;
    v85 = v17;
    v86 = v8;
    v87 = v5;
    v94 = 0;
    v36 = v22;
    v37 = v21;
    v38 = v91;
    swift_beginAccess();
    v39 = *v38;
    v40 = objc_allocWithZone(MEMORY[0x277D44860]);

    v110[0] = [v40 init];
    v41 = type metadata accessor for REMRemindersListDataView.CompletedByDateBucketsInvocation();
    *&v103 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BA0);
    v43 = sub_23030F948();
    v45 = v44;
    v93 = v81;
    MEMORY[0x28223BE20](v43);
    v81[-6] = v110;
    v81[-5] = v111;
    v81[-4] = v92;
    v81[-3] = v37;
    v81[-2] = v36;
    v81[-1] = v39;
    v46 = sub_230310268();
    v47 = v94;
    sub_2300535B4(v46, v43, v45, v46, sub_2300DB8F4, &v81[-8]);
    v94 = v47;
    if (v47)
    {

      sub_23005FE3C(v37, v36);
    }

    else
    {
      v81[1] = v42;
      v82 = v41;
      v91 = v36;
      v92 = v37;

      sub_23030E7A8();
      swift_allocObject();
      v48 = sub_23030E798();
      v49 = v110[0];
      v50 = [v110[0] resultStorages];
      v51 = sub_23030F658();

      *(&v104 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v103 = v51;
      sub_23004D5CC(&v103, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v52 = v109;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v53 = v84;
        v54 = swift_allocObject();
        v55 = v90;
        v54[2] = v90;
        v54[3] = v52;
        v56 = v55;
        v54[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v57 = v86;
        v83(v86, v89, v87);
        *(&v104 + 1) = v53;
        *&v103 = v54;

        v58 = sub_23030E788();
        sub_23004BC18(&v103, v57);
        v58(&v96, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14BA8);
        v93 = v48;
        v59 = [v49 resultData];
        v60 = sub_23030EA18();
        v62 = v61;

        sub_2300DB1C0(&qword_27DB14BB0, &qword_27DB14BA8);
        v63 = v94;
        sub_23030E778();
        if (v63)
        {
          v94 = v54;
          sub_23005FE3C(v60, v62);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v64 = sub_23030EF48();
          __swift_project_value_buffer(v64, qword_27DB17288);
          v65 = v63;
          v66 = sub_23030EF38();
          v67 = sub_230310288();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v103 = v69;
            *v68 = 136315394;
            swift_getErrorValue();
            v70 = Error.rem_errorDescription.getter(v102);
            v72 = sub_23004E30C(v70, v71, &v103);

            *(v68 + 4) = v72;
            *(v68 + 12) = 2080;
            *&v96 = v82;
            v73 = sub_23030F948();
            v75 = sub_23004E30C(v73, v74, &v103);

            *(v68 + 14) = v75;
            _os_log_impl(&dword_230044000, v66, v67, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v69, -1, -1);
            MEMORY[0x231914180](v68, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v92, v91);
        }

        else
        {
          sub_23005FE3C(v60, v62);
          v98 = v105;
          v99 = v106;
          v100 = v107;
          v101 = v108;
          v96 = v103;
          v97 = v104;
          v76 = [v49 latestFetchResultToken];

          sub_23005FE3C(v92, v91);

          v77 = v99;
          v78 = v88;
          *(v88 + 32) = v98;
          *(v78 + 48) = v77;
          *(v78 + 64) = v100;
          v79 = v101;
          result = *&v96;
          v80 = v97;
          *v78 = v96;
          *(v78 + 16) = v80;
          *(v78 + 80) = v79;
          *(v78 + 88) = v76;
        }
      }

      else
      {
        sub_23004D5CC(&v103, &v96);
        sub_2301FEB10(&v96, 0, 0);
        sub_2300DA5F0(&v96);
        swift_willThrow();
        sub_23005FE3C(v92, v91);

        __swift_destroy_boxed_opaque_existential_1(&v103);
      }
    }
  }

  return result;
}

double sub_2300D7574@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(void))
{
  v97 = a8;
  v98 = a3;
  v94 = a1;
  v95 = a7;
  v102 = a6;
  v99 = a4;
  v100 = a5;
  v12 = v11;
  v101 = a2;
  v90 = a9;
  v96 = a10;
  v13 = sub_230310A58();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = (&v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120[0] = v11;
  sub_23030E7E8();
  swift_allocObject();
  v120[4] = sub_23030E7D8();
  v17 = MEMORY[0x277D84F90];
  v18 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v19 = type metadata accessor for REMStoreObjectsContainer();
  v20 = swift_allocObject();
  v20[2] = v12;
  v20[3] = v18;
  v93 = v20 + 3;
  v92 = v12;
  v20[4] = sub_23004C2B4(v17);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280C9C460);
  v24 = *(v14 + 16);
  v22 = (v14 + 16);
  v23 = v24;
  v91 = v21;
  (v24)(v16);
  *(&v113 + 1) = v19;
  *&v112 = v20;
  v104 = v20;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v112, v16);
  v25(&v105, 0);
  v98(0);
  sub_230066350(v99, v100);
  v26 = v103;
  v27 = sub_23030E7B8();
  if (v26)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_27DB17288);
    v30 = v26;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v112 = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v119[5]);
      v37 = sub_23004E30C(v35, v36, &v112);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *&v105 = v95(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v97);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, &v112);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v88 = v23;
    v89 = v19;
    v98 = v22;
    v99 = v16;
    v100 = v13;
    v102 = a11;
    v42 = v28;
    v43 = v27;
    v44 = v93;
    swift_beginAccess();
    v45 = *v44;
    v46 = objc_allocWithZone(MEMORY[0x277D44860]);

    v119[0] = [v46 init];
    v47 = v95(0);
    v103 = 0;
    v95 = v47;
    *&v112 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v97);
    v49 = sub_23030F948();
    v51 = v50;
    v101 = &v87;
    MEMORY[0x28223BE20](v49);
    *(&v87 - 6) = v119;
    *(&v87 - 5) = v120;
    *(&v87 - 4) = v94;
    *(&v87 - 3) = v43;
    *(&v87 - 2) = v42;
    *(&v87 - 1) = v45;
    v52 = sub_230310268();
    v53 = v103;
    sub_2300535B4(v52, v49, v51, v52, v102, (&v87 - 8));
    v103 = v53;
    if (v53)
    {

      sub_23005FE3C(v43, v42);
    }

    else
    {
      v96 = v48;
      v97 = v43;
      v102 = v42;

      sub_23030E7A8();
      swift_allocObject();
      v54 = sub_23030E798();
      v55 = v119[0];
      v56 = [v119[0] resultStorages];
      v57 = sub_23030F658();

      *(&v113 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
      *&v112 = v57;
      sub_23004D5CC(&v112, &v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
      if (swift_dynamicCast())
      {
        v58 = v118;
        __swift_destroy_boxed_opaque_existential_1(&v112);
        v59 = v89;
        v60 = swift_allocObject();
        v61 = v92;
        v60[2] = v92;
        v60[3] = v58;
        v62 = v61;
        v60[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
        v63 = v99;
        v88(v99, v91, v100);
        *(&v113 + 1) = v59;
        *&v112 = v60;

        v64 = sub_23030E788();
        sub_23004BC18(&v112, v63);
        v64(&v105, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B90);
        v101 = v54;
        v65 = [v55 resultData];
        v66 = sub_23030EA18();
        v68 = v67;

        sub_2300DB1C0(&qword_280C978F8, &qword_27DB14B90);
        v69 = v103;
        sub_23030E778();
        if (v69)
        {
          v103 = v60;
          sub_23005FE3C(v66, v68);
          if (qword_27DB13C28 != -1)
          {
            swift_once();
          }

          v70 = sub_23030EF48();
          __swift_project_value_buffer(v70, qword_27DB17288);
          v71 = v69;
          v72 = sub_23030EF38();
          v73 = sub_230310288();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v112 = v75;
            *v74 = 136315394;
            swift_getErrorValue();
            v76 = Error.rem_errorDescription.getter(v111);
            v78 = sub_23004E30C(v76, v77, &v112);

            *(v74 + 4) = v78;
            *(v74 + 12) = 2080;
            *&v105 = v95;
            v79 = sub_23030F948();
            v81 = sub_23004E30C(v79, v80, &v112);

            *(v74 + 14) = v81;
            _os_log_impl(&dword_230044000, v72, v73, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v74, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x231914180](v75, -1, -1);
            MEMORY[0x231914180](v74, -1, -1);
          }

          swift_willThrow();
          sub_23005FE3C(v97, v102);
        }

        else
        {
          sub_23005FE3C(v66, v68);
          v107 = v114;
          v108 = v115;
          v109 = v116;
          v110 = v117;
          v105 = v112;
          v106 = v113;
          v82 = [v55 latestFetchResultToken];

          sub_23005FE3C(v97, v102);

          v83 = v108;
          v84 = v90;
          *(v90 + 32) = v107;
          *(v84 + 48) = v83;
          *(v84 + 64) = v109;
          v85 = v110;
          result = *&v105;
          v86 = v106;
          *v84 = v105;
          *(v84 + 16) = v86;
          *(v84 + 80) = v85;
          *(v84 + 88) = v82;
        }
      }

      else
      {
        sub_23004D5CC(&v112, &v105);
        sub_2301FEB10(&v105, 0, 0);
        sub_2300DA5F0(&v105);
        swift_willThrow();
        sub_23005FE3C(v97, v102);

        __swift_destroy_boxed_opaque_existential_1(&v112);
      }
    }
  }

  return result;
}

void sub_2300D7FBC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v98 = a1;
  v94 = a3;
  v96 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  v6 = MEMORY[0x28223BE20](v96);
  v97 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v83 - v8;
  v101 = sub_230310A58();
  v9 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a2;
  v108 = v3;
  sub_23030E7E8();
  swift_allocObject();
  v12 = sub_23030E7D8();
  v13 = MEMORY[0x277D84F90];
  v14 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v15 = type metadata accessor for REMStoreObjectsContainer();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v14;
  v17 = v16 + 3;
  v95 = v4;
  v18 = v13;
  v19 = v16;
  v16[4] = sub_23004C2B4(v18);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v20 = v101;
  v21 = __swift_project_value_buffer(v101, qword_280C9C460);
  v24 = *(v9 + 16);
  v22 = v9 + 16;
  v23 = v24;
  v24(v11, v21, v20);
  v107 = v15;
  v106 = v19;
  v100 = v19;

  v25 = sub_23030E7C8();
  sub_23004BC18(&v106, v11);
  v25(&v105, 0);
  sub_2300DA584();
  v26 = v99;
  v27 = sub_23030E7B8();
  if (v26)
  {
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_27DB17288);
    v30 = v26;
    v31 = sub_23030EF38();
    v32 = sub_230310288();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v106 = v34;
      *v33 = 136315394;
      swift_getErrorValue();
      v35 = Error.rem_errorDescription.getter(v104[5]);
      v37 = sub_23004E30C(v35, v36, &v106);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v105 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B60);
      v38 = sub_23030F948();
      v40 = sub_23004E30C(v38, v39, &v106);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_230044000, v31, v32, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v88 = v23;
    v89 = v21;
    v90 = v11;
    v91 = v22;
    v87 = v15;
    v99 = v12;
    v41 = v28;
    v42 = v27;
    swift_beginAccess();
    v43 = *v17;
    v44 = objc_allocWithZone(MEMORY[0x277D44860]);

    v104[0] = [v44 init];
    v86 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation();
    v106 = v86;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B60);
    v46 = sub_23030F948();
    v48 = v47;
    v92 = &v83;
    MEMORY[0x28223BE20](v46);
    *(&v83 - 6) = v104;
    *(&v83 - 5) = &v108;
    *(&v83 - 4) = v98;
    *(&v83 - 3) = v42;
    v98 = v42;
    *(&v83 - 2) = v41;
    *(&v83 - 1) = v43;
    v49 = sub_230310268();
    sub_2300535B4(v49, v46, v48, v49, sub_2300DA5D8, (&v83 - 8));
    v83 = v45;
    v85 = v41;
    v84 = 0;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v50 = v104[0];
    v51 = [v104[0] resultStorages];
    v52 = sub_23030F658();

    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v106 = v52;
    sub_23004D5CC(&v106, &v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v53 = v103;
      __swift_destroy_boxed_opaque_existential_1(&v106);
      v54 = v87;
      v55 = swift_allocObject();
      v56 = v95;
      v55[2] = v95;
      v55[3] = v53;
      v57 = v56;
      v55[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v58 = v90;
      v88(v90, v89, v101);
      v107 = v54;
      v106 = v55;

      v59 = sub_23030E788();
      sub_23004BC18(&v106, v58);
      v59(&v105, 0);
      v60 = [v50 resultData];
      v61 = sub_23030EA18();
      v63 = v62;

      sub_230066350(&qword_27DB14B78, type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);
      v64 = v97;
      v65 = v84;
      sub_23030E778();
      if (v65)
      {
        v97 = v55;
        v101 = v50;
        sub_23005FE3C(v61, v63);
        if (qword_27DB13C28 != -1)
        {
          swift_once();
        }

        v66 = sub_23030EF48();
        __swift_project_value_buffer(v66, qword_27DB17288);
        v67 = v65;
        v68 = sub_23030EF38();
        v69 = sub_230310288();

        v70 = os_log_type_enabled(v68, v69);
        v71 = v86;
        if (v70)
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v106 = v73;
          *v72 = 136315394;
          swift_getErrorValue();
          v74 = Error.rem_errorDescription.getter(v102);
          v76 = sub_23004E30C(v74, v75, &v106);

          *(v72 + 4) = v76;
          *(v72 + 12) = 2080;
          v105 = v71;
          v77 = sub_23030F948();
          v79 = sub_23004E30C(v77, v78, &v106);

          *(v72 + 14) = v79;
          _os_log_impl(&dword_230044000, v68, v69, "Failed to decode the result of REMSwiftInvocable {error: %s, invocation: %s}", v72, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x231914180](v73, -1, -1);
          MEMORY[0x231914180](v72, -1, -1);
        }

        swift_willThrow();
        sub_23005FE3C(v98, v85);
      }

      else
      {
        sub_23005FE3C(v61, v63);
        v80 = v93;
        sub_2300DB268(v64, v93, type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);
        v81 = v94;
        sub_2300DB2D0(v80, v94, type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);
        v82 = [v50 latestFetchResultToken];

        sub_23005FE3C(v98, v85);

        sub_2300DB338(v80, type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result);

        *(v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B80) + 28)) = v82;
      }
    }

    else
    {
      sub_23004D5CC(&v106, &v105);
      sub_2301FEB10(&v105, 0, 0);
      sub_2300DA5F0(&v105);
      swift_willThrow();
      sub_23005FE3C(v98, v85);

      __swift_destroy_boxed_opaque_existential_1(&v106);
    }
  }
}

uint64_t sub_2300D8B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000230340520 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2300D8C1C(uint64_t a1)
{
  v2 = sub_230067AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300D8C58(uint64_t a1)
{
  v2 = sub_230067AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersInCalendarDataView.Invocation.Parameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230067AC4();
  sub_230311448();
  sub_230310D88();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMRemindersInCalendarDataView.Invocation.Result.remindersResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_23006C734(v2, v3, v4, v5);
}

uint64_t sub_2300D8DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E696D6572 && a2 == 0xEF746C7573655273;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303404C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2300D8EE4(uint64_t a1)
{
  v2 = sub_23006CB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300D8F20(uint64_t a1)
{
  v2 = sub_23006CB88();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMRemindersInCalendarDataView.Invocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMRemindersInCalendarDataView.Invocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMRemindersInCalendarDataView.Invocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMRemindersInCalendarDataView.Invocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2300D9098()
{
  v1 = [v0 name];
  v2 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  return v2;
}

void sub_2300D9108(void **a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = sub_23030E9F8();
  sub_23004CBA4(0, &qword_280C9C478);
  sub_23004CD24();
  v7 = sub_23030F638();
  v13[0] = 0;
  v8 = [a2 resultFromPerformingSwiftInvocation:a3 parametersData:v6 storages:v7 error:v13];

  v9 = v13[0];
  if (v8)
  {
    v10 = *a1;
    *a1 = v8;
    v11 = v9;
  }

  else
  {
    v12 = v13[0];
    sub_23030E808();

    swift_willThrow();
  }
}

uint64_t _s19ReminderKitInternal30REMRemindersInCalendarDataViewC09ReminderseF6ResultV0iJ0O2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_23006C734(*a2, *(a2 + 8), v8, 0);
      sub_23006C734(v3, v2, v4, 0);
      v16 = sub_2300A702C(v3, v7);
      sub_23006C8F0(v3, v2, v4, 0);
      sub_23006C8F0(v7, v6, v8, 0);
      return v16 & 1;
    }

    goto LABEL_8;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
LABEL_8:
    sub_23006C734(*a2, *(a2 + 8), v8, v9);
    sub_23006C734(v3, v2, v4, v5);
    sub_23006C8F0(v3, v2, v4, v5);
    v12 = v7;
    v13 = v6;
    v14 = v8;
    v15 = v9;
LABEL_11:
    sub_23006C8F0(v12, v13, v14, v15);
    return 0;
  }

  sub_23006C734(*a2, *(a2 + 8), v8, 1);
  sub_23006C734(v3, v2, v4, 1);
  sub_23006C734(v7, v6, v8, 1);
  sub_23006C734(v3, v2, v4, 1);
  if ((sub_2300A702C(v3, v7) & 1) == 0 || (sub_2300A702C(v2, v6) & 1) == 0)
  {
    sub_23006C8F0(v3, v2, v4, 1);
    sub_23006C8F0(v7, v6, v8, 1);
    sub_23006C8F0(v7, v6, v8, 1);
    v12 = v3;
    v13 = v2;
    v14 = v4;
    v15 = 1;
    goto LABEL_11;
  }

  v10 = sub_2300A702C(v4, v8);
  sub_23006C8F0(v3, v2, v4, 1);
  sub_23006C8F0(v7, v6, v8, 1);
  sub_23006C8F0(v7, v6, v8, 1);
  sub_23006C8F0(v3, v2, v4, 1);
  result = 1;
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2300D948C()
{
  result = qword_280C98AD8;
  if (!qword_280C98AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AD8);
  }

  return result;
}

unint64_t sub_2300D94E4()
{
  result = qword_27DB14B10;
  if (!qword_27DB14B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B10);
  }

  return result;
}

unint64_t sub_2300D9544()
{
  result = qword_27DB14B18;
  if (!qword_27DB14B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B18);
  }

  return result;
}

void *assignWithCopy for REMRemindersInCalendarDataView.FetchResultToken(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a1[1];
  a1[1] = v3;
  v5 = v3;

  return a1;
}

void *assignWithTake for REMRemindersInCalendarDataView.FetchResultToken(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t initializeWithCopy for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_23006C734(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_23006C734(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_23006C8F0(v8, v9, v10, v11);
  *(a1 + 32) = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;
  v14 = v12;

  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_23006C8F0(v6, v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMRemindersInCalendarDataView.RemindersInCalendarResult(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t assignWithCopy for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_23006C734(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_23006C8F0(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_23006C8F0(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void *assignWithCopy for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for REMRemindersInCalendarDataView.RemindersInCalendarResult.RemindersResult.IncrementalResult(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersInCalendarDataView.Invocation.Parameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMRemindersInCalendarDataView.Invocation.Parameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t initializeWithCopy for REMRemindersInCalendarDataView.Invocation.Result(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_23006C734(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithCopy for REMRemindersInCalendarDataView.Invocation.Result(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_23006C734(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_23006C8F0(v8, v9, v10, v11);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for REMRemindersInCalendarDataView.Invocation.Result(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_23006C8F0(v6, v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMRemindersInCalendarDataView.Invocation.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for REMRemindersInCalendarDataView.Invocation.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_2300D9D1C()
{
  result = qword_27DB14B20;
  if (!qword_27DB14B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B20);
  }

  return result;
}

unint64_t sub_2300D9D74()
{
  result = qword_27DB14B28;
  if (!qword_27DB14B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B28);
  }

  return result;
}

unint64_t sub_2300D9DCC()
{
  result = qword_27DB14B30;
  if (!qword_27DB14B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B30);
  }

  return result;
}

unint64_t sub_2300D9E24()
{
  result = qword_27DB14B38;
  if (!qword_27DB14B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B38);
  }

  return result;
}

unint64_t sub_2300D9E7C()
{
  result = qword_27DB14B40;
  if (!qword_27DB14B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B40);
  }

  return result;
}

unint64_t sub_2300D9ED4()
{
  result = qword_27DB14B48;
  if (!qword_27DB14B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B48);
  }

  return result;
}

unint64_t sub_2300D9F2C()
{
  result = qword_27DB14B50;
  if (!qword_27DB14B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B50);
  }

  return result;
}

unint64_t sub_2300D9F84()
{
  result = qword_280C98A80;
  if (!qword_280C98A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A80);
  }

  return result;
}

unint64_t sub_2300D9FDC()
{
  result = qword_280C98A88;
  if (!qword_280C98A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A88);
  }

  return result;
}

unint64_t sub_2300DA034()
{
  result = qword_280C98A98;
  if (!qword_280C98A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98A98);
  }

  return result;
}

unint64_t sub_2300DA08C()
{
  result = qword_280C98AA0;
  if (!qword_280C98AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AA0);
  }

  return result;
}

unint64_t sub_2300DA0E4()
{
  result = qword_280C98AC8;
  if (!qword_280C98AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AC8);
  }

  return result;
}

unint64_t sub_2300DA13C()
{
  result = qword_280C98AD0;
  if (!qword_280C98AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AD0);
  }

  return result;
}

unint64_t sub_2300DA194()
{
  result = qword_280C98AB0;
  if (!qword_280C98AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AB0);
  }

  return result;
}

unint64_t sub_2300DA1EC()
{
  result = qword_280C98AB8;
  if (!qword_280C98AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AB8);
  }

  return result;
}

unint64_t sub_2300DA244()
{
  result = qword_280C98AE0;
  if (!qword_280C98AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AE0);
  }

  return result;
}

unint64_t sub_2300DA29C()
{
  result = qword_280C98AE8;
  if (!qword_280C98AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AE8);
  }

  return result;
}

unint64_t sub_2300DA2F4()
{
  result = qword_280C98AF8;
  if (!qword_280C98AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98AF8);
  }

  return result;
}

unint64_t sub_2300DA34C()
{
  result = qword_280C98B00;
  if (!qword_280C98B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B00);
  }

  return result;
}

unint64_t sub_2300DA3A4()
{
  result = qword_280C97510;
  if (!qword_280C97510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97510);
  }

  return result;
}

unint64_t sub_2300DA3FC()
{
  result = qword_280C97518;
  if (!qword_280C97518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97518);
  }

  return result;
}

uint64_t sub_2300DA450(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002303404E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000230340500 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C64657461647075 && a2 == 0xEE00734449747369)
  {

    return 2;
  }

  else
  {
    v5 = sub_230311048();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_2300DA584()
{
  result = qword_27DB14B58;
  if (!qword_27DB14B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14B58);
  }

  return result;
}

uint64_t sub_2300DA5F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2300DA658()
{
  result = qword_27DB14BE8;
  if (!qword_27DB14BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14BE8);
  }

  return result;
}

unint64_t sub_2300DA6AC()
{
  result = qword_27DB14BF8;
  if (!qword_27DB14BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14BF8);
  }

  return result;
}

unint64_t sub_2300DA700()
{
  result = qword_27DB14C50;
  if (!qword_27DB14C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14C50);
  }

  return result;
}

unint64_t sub_2300DA754()
{
  result = qword_27DB14C60;
  if (!qword_27DB14C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14C60);
  }

  return result;
}

unint64_t sub_2300DA7A8()
{
  result = qword_27DB14C80;
  if (!qword_27DB14C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14C80);
  }

  return result;
}

unint64_t sub_2300DA7FC()
{
  result = qword_27DB14D30;
  if (!qword_27DB14D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D30);
  }

  return result;
}

unint64_t sub_2300DA850()
{
  result = qword_27DB14D38;
  if (!qword_27DB14D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D38);
  }

  return result;
}

unint64_t sub_2300DA8A4()
{
  result = qword_280C992E8;
  if (!qword_280C992E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C992E8);
  }

  return result;
}

unint64_t sub_2300DA8F8()
{
  result = qword_27DB14D58;
  if (!qword_27DB14D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D58);
  }

  return result;
}

unint64_t sub_2300DA94C()
{
  result = qword_27DB14D68;
  if (!qword_27DB14D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D68);
  }

  return result;
}

unint64_t sub_2300DA9A0()
{
  result = qword_27DB14D70;
  if (!qword_27DB14D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D70);
  }

  return result;
}

unint64_t sub_2300DA9F4()
{
  result = qword_27DB14D80;
  if (!qword_27DB14D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D80);
  }

  return result;
}

unint64_t sub_2300DAA48()
{
  result = qword_27DB14D90;
  if (!qword_27DB14D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D90);
  }

  return result;
}

unint64_t sub_2300DAA9C()
{
  result = qword_27DB14D98;
  if (!qword_27DB14D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14D98);
  }

  return result;
}

unint64_t sub_2300DAAF0()
{
  result = qword_27DB14DB0;
  if (!qword_27DB14DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14DA8);
    sub_230066350(&qword_27DB14DB8, type metadata accessor for REMHashtagLabelDetailed_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14DB0);
  }

  return result;
}

unint64_t sub_2300DABA4()
{
  result = qword_280C97E28;
  if (!qword_280C97E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E28);
  }

  return result;
}

unint64_t sub_2300DABF8()
{
  result = qword_280C9B418;
  if (!qword_280C9B418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14DC8);
    sub_230066350(qword_280C9B4E8, type metadata accessor for REMHashtagLabel_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B418);
  }

  return result;
}

unint64_t sub_2300DACAC()
{
  result = qword_27DB14DD0;
  if (!qword_27DB14DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14DD0);
  }

  return result;
}

unint64_t sub_2300DAD00()
{
  result = qword_27DB14DE0;
  if (!qword_27DB14DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14DE0);
  }

  return result;
}

unint64_t sub_2300DAD54()
{
  result = qword_27DB14DE8;
  if (!qword_27DB14DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14DE8);
  }

  return result;
}

unint64_t sub_2300DADD0()
{
  result = qword_27DB14DF8;
  if (!qword_27DB14DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14DF8);
  }

  return result;
}

unint64_t sub_2300DAE24()
{
  result = qword_27DB14E08;
  if (!qword_27DB14E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14E08);
  }

  return result;
}

unint64_t sub_2300DAE78()
{
  result = qword_280C97440;
  if (!qword_280C97440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97440);
  }

  return result;
}

unint64_t sub_2300DAECC()
{
  result = qword_280C97460;
  if (!qword_280C97460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97460);
  }

  return result;
}

unint64_t sub_2300DAF20()
{
  result = qword_280C97438;
  if (!qword_280C97438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97438);
  }

  return result;
}

unint64_t sub_2300DAF74()
{
  result = qword_280C9A0E8[0];
  if (!qword_280C9A0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9A0E8);
  }

  return result;
}

unint64_t sub_2300DAFC8()
{
  result = qword_280C9A0D8;
  if (!qword_280C9A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A0D8);
  }

  return result;
}

unint64_t sub_2300DB01C()
{
  result = qword_280C9A088;
  if (!qword_280C9A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A088);
  }

  return result;
}

unint64_t sub_2300DB070()
{
  result = qword_280C9A078;
  if (!qword_280C9A078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9A078);
  }

  return result;
}

unint64_t sub_2300DB0C4()
{
  result = qword_27DB14E38;
  if (!qword_27DB14E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14E38);
  }

  return result;
}

unint64_t sub_2300DB118()
{
  result = qword_27DB14E48;
  if (!qword_27DB14E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14E48);
  }

  return result;
}

unint64_t sub_2300DB16C()
{
  result = qword_27DB14E50;
  if (!qword_27DB14E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14E50);
  }

  return result;
}

uint64_t sub_2300DB1C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2300DB214()
{
  result = qword_27DB14EB8;
  if (!qword_27DB14EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14EB8);
  }

  return result;
}

uint64_t sub_2300DB268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300DB2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2300DB338(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2300DB398()
{
  result = qword_27DB14EE8;
  if (!qword_27DB14EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14EE8);
  }

  return result;
}

unint64_t sub_2300DB3EC()
{
  result = qword_27DB14F08;
  if (!qword_27DB14F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14F00);
    sub_230066350(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    sub_230066350(&qword_280C9C340, type metadata accessor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F08);
  }

  return result;
}

unint64_t sub_2300DB4D8()
{
  result = qword_280C97640;
  if (!qword_280C97640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97640);
  }

  return result;
}

unint64_t sub_2300DB52C()
{
  result = qword_280C97638;
  if (!qword_280C97638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97638);
  }

  return result;
}

unint64_t sub_2300DB580()
{
  result = qword_280C97618;
  if (!qword_280C97618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97618);
  }

  return result;
}

unint64_t sub_2300DB5D4()
{
  result = qword_280C97610;
  if (!qword_280C97610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97610);
  }

  return result;
}

unint64_t sub_2300DB628()
{
  result = qword_27DB14F20;
  if (!qword_27DB14F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F20);
  }

  return result;
}

unint64_t sub_2300DB67C()
{
  result = qword_27DB14F30;
  if (!qword_27DB14F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F30);
  }

  return result;
}

unint64_t sub_2300DB6D0()
{
  result = qword_27DB14F48;
  if (!qword_27DB14F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F48);
  }

  return result;
}

unint64_t sub_2300DB724()
{
  result = qword_27DB14F50;
  if (!qword_27DB14F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F50);
  }

  return result;
}

unint64_t sub_2300DB778()
{
  result = qword_27DB14F60;
  if (!qword_27DB14F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F60);
  }

  return result;
}

unint64_t sub_2300DB7CC()
{
  result = qword_27DB14F68;
  if (!qword_27DB14F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14F68);
  }

  return result;
}

unint64_t sub_2300DB820()
{
  result = qword_280C9B748;
  if (!qword_280C9B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14F78);
    sub_230066350(&qword_280C9B758, type metadata accessor for REMReminder_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B748);
  }

  return result;
}

uint64_t REMManualOrderingListType.description.getter(unsigned __int16 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0x64656E6E6970;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0x6D65526465766173;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6574616C706D6574;
  }

  else
  {
    if (a1 == 1)
    {
      return 0xD000000000000013;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x646567676174;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D536D6F74737563;
  }
}

uint64_t sub_2300DBA3C(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 <= 2u)
  {
    if (a1 != 1 && a1 != 2)
    {
      goto LABEL_10;
    }

LABEL_8:
    v2 = 0;
    return v1 | (v2 << 16);
  }

  if (a1 == 3 || a1 == 4 || a1 == 5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v2 = a1 != 6;
  if (a1 == 6)
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  return v1 | (v2 << 16);
}

unint64_t ACAccount.rem_loggableDescription.getter()
{
  v1 = v0;
  sub_230310848();

  v2 = [v0 accountDescription];
  if (v2)
  {
    v3 = v2;
    v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v6 = v5;

    v17 = v4;
    v18 = v6;
    v7 = sub_23030F948();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x231911790](v7, v9);

  MEMORY[0x231911790](0x69746E656469202CLL, 0xEE00203A72656966);
  v10 = [v1 identifier];
  if (!v10)
  {
    sub_23004CBA4(0, &qword_27DB14A70);
    v10 = sub_230310468();
  }

  v11 = v10;
  v12 = [v10 description];
  v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v15 = v14;

  MEMORY[0x231911790](v13, v15);

  MEMORY[0x231911790](41, 0xE100000000000000);
  return 0xD000000000000015;
}

id ACAccount.rem_childCalDAVAccountEnabledForReminders.getter()
{
  result = [v0 displayAccount];
  if (result)
  {
    v2 = result;
    v3 = [result childAccountsWithAccountTypeIdentifier_];
    if (v3)
    {
      v4 = v3;
      sub_23004CBA4(0, &qword_280C99CD0);
      v5 = sub_23030FCD8();

      if (v5 >> 62)
      {
        result = sub_2303106D8();
        if (result)
        {
LABEL_5:
          if ((v5 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x231912650](0, v5);
          }

          else
          {
            if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_21;
            }

            v6 = *(v5 + 32);
          }

          v7 = v6;
          result = [v6 enabledDataclasses];
          if (result)
          {
            v8 = result;

            v9 = [v8 containsObject_];

            if (v9)
            {
              if (![v7 accountPropertyForKey_])
              {

                memset(v10, 0, sizeof(v10));
                sub_2300DA5F0(v10);
                return v7;
              }

              sub_2303105E8();
              swift_unknownObjectRelease();

              sub_2300DA5F0(v10);
            }

            else
            {
            }

            return 0;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_5;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2300DBE10()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB14F88);
  v1 = __swift_project_value_buffer(v0, qword_27DB14F88);
  if (qword_280C97090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ReminderKitInternal::REMSiriSearchDataView::ListsResult __swiftcall REMSiriSearchDataView.ListsResult.init(lists:smartLists:)(Swift::OpaquePointer lists, Swift::OpaquePointer smartLists)
{
  v2->_rawValue = lists._rawValue;
  v2[1]._rawValue = smartLists._rawValue;
  result.smartLists = smartLists;
  result.lists = lists;
  return result;
}

uint64_t sub_2300DBEF0()
{
  if (*v0)
  {
    return 0x73694C7472616D73;
  }

  else
  {
    return 0x737473696CLL;
  }
}

uint64_t sub_2300DBF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737473696CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73694C7472616D73 && a2 == 0xEA00000000007374)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2300DC00C(uint64_t a1)
{
  v2 = sub_2300DC25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300DC048(uint64_t a1)
{
  v2 = sub_2300DC25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSiriSearchDataView.ListsResult_Codable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300DC25C();

  sub_230311448();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FB0);
  sub_2300DC2B0();
  sub_230310DF8();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FC0);
    sub_2300DC364();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2300DC25C()
{
  result = qword_27DB14FA8;
  if (!qword_27DB14FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14FA8);
  }

  return result;
}

unint64_t sub_2300DC2B0()
{
  result = qword_27DB14FB8;
  if (!qword_27DB14FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14FB0);
    sub_2300E0F98(&qword_280C9C348, type metadata accessor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14FB8);
  }

  return result;
}

unint64_t sub_2300DC364()
{
  result = qword_27DB14FC8;
  if (!qword_27DB14FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14FC0);
    sub_2300E0F98(qword_280C9AC10, type metadata accessor for REMSmartList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14FC8);
  }

  return result;
}

uint64_t REMSiriSearchDataView.ListsResult_Codable.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300DC25C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FB0);
  v13 = 0;
  sub_2300DC648();
  sub_230310CE8();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14FC0);
  v13 = 1;
  sub_2300DC6FC();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2300DC648()
{
  result = qword_27DB14FD8;
  if (!qword_27DB14FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14FB0);
    sub_2300E0F98(&qword_280C9C340, type metadata accessor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14FD8);
  }

  return result;
}

unint64_t sub_2300DC6FC()
{
  result = qword_27DB14FE0;
  if (!qword_27DB14FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14FC0);
    sub_2300E0F98(&qword_280C9B750, type metadata accessor for REMSmartList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14FE0);
  }

  return result;
}

uint64_t static REMSiriSearchDataView.fetchReminders(store:criteria:fetchOptions:diffingAgainst:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() defaultFetchOptions];
  }

  Options_Codable = type metadata accessor for REMReminderFetchOptions_Codable();
  v20.receiver = objc_allocWithZone(Options_Codable);
  v20.super_class = Options_Codable;
  v11 = a3;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  [v12 copyFromFetchOptions_];

  LOBYTE(v19[0]) = 0;
  v26 = 0;
  *&v21 = a2;
  *(&v21 + 1) = v12;
  v22 = 0;
  v23 = 0;
  v24 = 51;
  v25 = 0;
  v13 = objc_allocWithZone(type metadata accessor for REMSiriSearchDataView.RemindersByCriteriaInvocation());

  v14 = v12;
  v15 = [v13 initWithFetchResultTokenToDiffAgainst_];
  sub_2300BC0F4(v15, &v21, v19);

  if (v4)
  {

    sub_2300E03D4(&v21);
  }

  else
  {
    v16 = v19[0];
    v17 = v19[1];
    if (v19[0] >> 62)
    {
      sub_23004CBA4(0, &qword_27DB14808);

      a1 = sub_230310AF8();
    }

    else
    {

      sub_230311078();
      sub_23004CBA4(0, &qword_27DB14808);
      a1 = v16;
    }

    sub_2300E03D4(&v21);
  }

  return a1;
}

void static REMSiriSearchDataView.fetchLists(store:criteria:diffingAgainst:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for REMSiriSearchDataView.ListsByCriteriaInvocation()) initWithFetchResultTokenToDiffAgainst_];
  sub_2300BCC08(v6, a1, &v11);

  if (!v3)
  {
    v7 = v11;
    v8 = v12;
    if (v11 >> 62)
    {
      sub_23004CBA4(0, &qword_27DB14FE8);

      v9 = sub_230310AF8();

      if (!(*(&v7 + 1) >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {

      sub_230311078();
      sub_23004CBA4(0, &qword_27DB14FE8);
      v9 = v7;
      if (!(*(&v7 + 1) >> 62))
      {
LABEL_4:

        sub_230311078();
        sub_23004CBA4(0, &qword_27DB14FF0);
        v10 = *(&v7 + 1);
LABEL_5:

        *a3 = v9;
        a3[1] = v10;
        return;
      }
    }

    sub_23004CBA4(0, &qword_27DB14FF0);

    v10 = sub_230310AF8();

    goto LABEL_5;
  }
}

id REMSiriSearchDataView.ListsByCriteriaInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

uint64_t static REMSiriSearchDataView.fetchReminders(store:inCustomSmartList:diffingAgainst:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
  v9 = a2;
  v10 = REMSmartList_Codable.init(_:)(v9);
  type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  swift_storeEnumTagMultiPayload();
  *&v8[v6[10]] = 51;
  type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  swift_storeEnumTagMultiPayload();
  *v8 = v10;
  v8[8] = 0x80;
  v8[v6[9]] = 0;
  v8[v6[11]] = 2;
  v8[v6[12]] = 0;
  v11 = [objc_allocWithZone(type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation()) initWithFetchResultTokenToDiffAgainst_];
  v12 = v47;
  sub_2300BD6E0(v11, v8, v39);
  if (v12)
  {
    v13 = v12;
    sub_2300E042C(v8);
  }

  else
  {
    v32 = 0;

    v37[6] = v44;
    v37[7] = v45;
    v38 = v46;
    v37[0] = v39[0];
    v37[1] = v39[1];
    v37[2] = v40;
    v37[3] = v41;
    v37[4] = v42;
    v37[5] = v43;
    v14 = v40;
    v15 = *(&v43 + 1);
    v17 = *(&v44 + 1);
    v16 = v44;
    v18 = v45;
    v35 = *&v39[0];

    v34 = *(&v14 + 1);

    v33 = v15;
    v36 = v18 >> 64;
    v47 = v18;
    sub_2300E0488(v16);
    v19 = qword_27DB13AE0;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_27DB14F88);
    v21 = v9;

    v22 = sub_23030EF38();
    v23 = sub_2303102A8();

    v24 = v14 >> 62;
    if (os_log_type_enabled(v22, v23))
    {
      v30[1] = v17;
      v31 = v16;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27 = [v21 objectID];
      *(v25 + 4) = v27;
      *v26 = v27;
      *(v25 + 12) = 2048;
      if (v24)
      {
        v28 = sub_2303106D8();
      }

      else
      {
        v28 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 14) = v28;

      _os_log_impl(&dword_230044000, v22, v23, "SIRISEARCH_DATAVIEW RESULT {name: REMRemindersListDataView_CustomSmartListInvocation, smartList.objectID: %@, prefetchedReminders.count: %ld}", v25, 0x16u);
      sub_230061918(v26, &qword_27DB15000);
      MEMORY[0x231914180](v26, -1, -1);
      MEMORY[0x231914180](v25, -1, -1);

      v16 = v31;
    }

    else
    {
    }

    if (v24)
    {
      sub_23004CBA4(0, &qword_27DB14808);

      v13 = sub_230310AF8();
    }

    else
    {

      sub_230311078();
      sub_23004CBA4(0, &qword_27DB14808);

      v13 = v14;
    }

    sub_2300E04C8(v16);
    sub_230061918(v37, &qword_27DB14FF8);

    sub_2300E042C(v8);
  }

  return v13;
}

unint64_t sub_2300DD07C()
{
  v1 = 0x6169726574697263;
  v2 = 0x66664F6863746566;
  if (*v0 != 2)
  {
    v2 = 0x6D694C6863746566;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2300DD108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2300E1A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300DD130(uint64_t a1)
{
  v2 = sub_2300E0508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300DD16C(uint64_t a1)
{
  v2 = sub_2300E0508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15008);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v14 = v1[2];
  v15 = v8;
  v13 = *(v1 + 24);
  v12 = v1[4];
  v11[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E0508();

  sub_230311448();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15018);
  sub_2300E055C();
  sub_230310DF8();

  if (!v2)
  {
    v17 = v15;
    v16 = 1;
    type metadata accessor for REMReminderFetchOptions_Codable();
    sub_2300E0F98(&qword_27DB15030, type metadata accessor for REMReminderFetchOptions_Codable);
    sub_230310DF8();
    LOBYTE(v17) = 2;
    sub_230310D88();
    LOBYTE(v17) = 3;
    sub_230310D88();
  }

  return (*(v5 + 8))(v7, v4);
}

void REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15038);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E0508();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15018);
    v21 = 0;
    sub_2300E0610();
    sub_230310CE8();
    v9 = v22;
    type metadata accessor for REMReminderFetchOptions_Codable();
    v21 = 1;
    sub_2300E0F98(&qword_27DB15050, type metadata accessor for REMReminderFetchOptions_Codable);
    sub_230310CE8();
    v20 = v22;
    LOBYTE(v22) = 2;
    v10 = sub_230310C78();
    v19 = v11;
    v18 = v10;
    LOBYTE(v22) = 3;
    v12 = sub_230310C78();
    v13 = v8;
    v15 = v14;
    (*(v6 + 8))(v13, v5);
    v16 = v20;
    *a2 = v9;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19 & 1;
    *(a2 + 32) = v12;
    *(a2 + 40) = v15 & 1;

    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2300DD7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6169726574697263 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2300DD828(uint64_t a1)
{
  v2 = sub_2300E06C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300DD864(uint64_t a1)
{
  v2 = sub_2300E06C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15058);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E06C4();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15018);
  sub_2300E055C();
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSiriSearchDataView.ListsByCriteriaInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15068);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E06C4();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15018);
    sub_2300E0610();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id _s19ReminderKitInternal29REMPrivacyPermissionsDataViewC45IncompleteRemindersCountWithDueDateInvocationC29fetchResultTokenToDiffAgainstAESo08REMFetchpQ0CSg_tcfc_0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMSiriSearchDataView.ListsByCriteriaInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id _s19ReminderKitInternal29REMPrivacyPermissionsDataViewC45IncompleteRemindersCountWithDueDateInvocationC5coderAESgSo7NSCoderC_tcfc_0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id _s19ReminderKitInternal23REMComplicationDataViewC20FetchModelInvocationC6ResultCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2300DDD24(char a1)
{
  result = 0x657079546D657469;
  switch(a1)
  {
    case 1:
      result = 0x44497463656A626FLL;
      break;
    case 2:
      result = 0x49746E756F636361;
      break;
    case 3:
      result = 0x44497473696CLL;
      break;
    case 4:
      result = 0x466C617574786574;
      break;
    case 5:
      result = 0x4E79616C70736964;
      break;
    case 6:
      result = 0x656C706D6F437369;
      break;
    case 7:
      result = 0x6974656C706D6F63;
      break;
    case 8:
      result = 0x7461636F4C736168;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 10:
      result = 0x65746144657564;
      break;
    case 11:
      result = 0x6144657544736168;
      break;
    case 12:
      result = 0x6465696669646F6DLL;
      break;
    case 13:
      result = 0x6E6F697461657263;
      break;
    case 14:
      result = 0x7272756365527369;
      break;
    case 15:
      result = 0x656767616C467369;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 18:
      result = 0x657079547473696CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2300DDF6C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2300DDFC8()
{
  sub_23030F9C8();
}

uint64_t sub_2300DE008()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2300DE060@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2300E1B90();
  *a1 = result;
  return result;
}

uint64_t sub_2300DE0C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2300E1B90();
  *a1 = result;
  return result;
}

uint64_t sub_2300DE0EC(uint64_t a1)
{
  v2 = sub_2300E0718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300DE128(uint64_t a1)
{
  v2 = sub_2300E0718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300DE164(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2300DDD24(*a1);
  v5 = v4;
  if (v3 == sub_2300DDD24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2300DE1EC()
{
  v1 = *v0;
  sub_230311358();
  sub_2300DDD24(v1);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2300DE250()
{
  sub_2300DDD24(*v0);
  sub_23030F9C8();
}

uint64_t sub_2300DE2A4()
{
  v1 = *v0;
  sub_230311358();
  sub_2300DDD24(v1);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2300DE304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2300E1C30();
  *a1 = result;
  return result;
}

unint64_t sub_2300DE334@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2300DDD24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t REMSearchCriterion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v56 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v57 = &v56 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v56 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v56 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15070);
  v64 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  v24 = type metadata accessor for REMSearchCriterion();
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_2300E0718();
  v28 = v65;
  sub_230311428();
  if (v28)
  {
    v29 = v66;
  }

  else
  {
    v56 = v18;
    v30 = v62;
    v31 = v63;
    v65 = v24;
    v68 = 0;
    sub_2300E076C();
    v32 = v23;
    sub_230310CE8();
    switch(v67)
    {
      case 1:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150A8);
        v68 = 1;
        sub_2300E0990();
        sub_230310CE8();
        v63 = v21;
        v35 = v67;
        v36 = v61;
        if (v67 >> 62)
        {
          goto LABEL_23;
        }

        goto LABEL_13;
      case 2:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150A8);
        v68 = 1;
        sub_2300E0990();
        sub_230310CE8();
        v63 = v21;
        v35 = v67;
        v36 = v61;
        if (v67 >> 62)
        {
LABEL_23:
          sub_23004CBA4(0, &qword_280C9C478);

          v40 = sub_230310AF8();
        }

        else
        {
LABEL_13:

          sub_230311078();
          sub_23004CBA4(0, &qword_280C9C478);
          v40 = v35;
        }

        v41 = v64;

        (*(v41 + 8))(v23, v63);
        *v26 = v40;
        v42 = v66;
        goto LABEL_22;
      case 3:
        type metadata accessor for REMObjectID_Codable();
        v68 = 1;
        sub_2300E0F98(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
        sub_230310CE8();
        v37 = v67;
        v68 = 2;
        sub_2300E093C();
        sub_230310CE8();
        (*(v64 + 8))(v23, v21);
        v51 = v67;
        *v26 = v37;
        v26[8] = v51;
        goto LABEL_21;
      case 4:
      case 5:
      case 9:
        LOBYTE(v67) = 1;
        v46 = sub_230310C98();
        v48 = v47;
        v68 = 2;
        sub_2300E08E8();
        sub_230310CE8();
        (*(v64 + 8))(v32, v21);
        v53 = v67;
        *v26 = v46;
        *(v26 + 1) = v48;
        v26[16] = v53;
        goto LABEL_21;
      case 6:
      case 8:
      case 11:
      case 14:
      case 15:
        LOBYTE(v67) = 1;
        v49 = sub_230310CA8();
        (*(v64 + 8))(v23, v21);
        *v26 = v49 & 1;
        goto LABEL_21;
      case 7:
        sub_23030EB58();
        LOBYTE(v67) = 1;
        sub_2300E0F98(&qword_280C9B738, MEMORY[0x277CC9578]);
        v38 = v20;
        sub_230310C88();
        LOBYTE(v67) = 2;
        v39 = v56;
        sub_230310C88();
        (*(v64 + 8))(v32, v21);
        v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        sub_2300E0878(v38, v26);
        sub_2300E0878(v39, &v26[v52]);
        goto LABEL_21;
      case 10:
        sub_23030EB58();
        LOBYTE(v67) = 1;
        sub_2300E0F98(&qword_280C9B738, MEMORY[0x277CC9578]);
        sub_230310C88();
        LOBYTE(v67) = 2;
        sub_230310C88();
        (*(v64 + 8))(v23, v21);
        v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        sub_2300E0878(v58, v26);
        sub_2300E0878(v30, &v26[v55]);
        goto LABEL_21;
      case 12:
        sub_23030EB58();
        LOBYTE(v67) = 1;
        sub_2300E0F98(&qword_280C9B738, MEMORY[0x277CC9578]);
        sub_230310C88();
        LOBYTE(v67) = 2;
        v34 = v57;
        sub_230310C88();
        (*(v64 + 8))(v23, v21);
        v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        sub_2300E0878(v60, v26);
        sub_2300E0878(v34, &v26[v50]);
        goto LABEL_21;
      case 13:
        sub_23030EB58();
        LOBYTE(v67) = 1;
        sub_2300E0F98(&qword_280C9B738, MEMORY[0x277CC9578]);
        sub_230310C88();
        LOBYTE(v67) = 2;
        sub_230310C88();
        (*(v64 + 8))(v23, v21);
        v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
        sub_2300E0878(v59, v26);
        sub_2300E0878(v31, &v26[v54]);
        goto LABEL_21;
      case 16:
      case 17:
        LOBYTE(v67) = 1;
        v43 = sub_230310C98();
        v45 = v44;
        (*(v64 + 8))(v23, v21);
        *v26 = v43;
        *(v26 + 1) = v45;
        goto LABEL_21;
      case 18:
        v68 = 1;
        sub_2300E07C0();
        sub_230310CE8();
        (*(v64 + 8))(v23, v21);
        *v26 = v67;
        goto LABEL_21;
      default:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150B8);
        v68 = 1;
        sub_2300E0A44(&qword_27DB150C0, sub_2300E0ABC);
        sub_230310CE8();
        (*(v64 + 8))(v23, v21);
        *v26 = v67;
LABEL_21:
        v42 = v66;
        v36 = v61;
LABEL_22:
        swift_storeEnumTagMultiPayload();
        sub_2300E0814(v26, v36);
        v29 = v42;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void REMSearchCriterion.encode(to:)(void *a1)
{
  v2 = v1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v4 = MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v102 = &v96 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v96 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v100 = &v96 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v97 = &v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v96 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v96 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v96 - v19;
  v105 = sub_23030EBB8();
  v96 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for REMSearchCriterion();
  MEMORY[0x28223BE20](v22);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150D0);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v26 = &v96 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E0718();
  v109 = v26;
  sub_230311448();
  sub_2300E0B10(v2, v24);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = *v24;
      LOBYTE(v112) = 1;
      v114 = 0;
      sub_2300E0B74();
      v38 = v108;
      v39 = v109;
      v60 = v107;
      sub_230310DF8();
      v102 = v60;
      if (v60)
      {
        goto LABEL_28;
      }

      if (v59 >> 62)
      {
        v83 = sub_2303106D8();
        if (!v83)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v83 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v83)
        {
          goto LABEL_67;
        }
      }

      v112 = MEMORY[0x277D84F90];
      sub_2303109B8();
      if (v83 < 0)
      {
        goto LABEL_70;
      }

      v84 = 0;
      v85 = v59;
      v103 = v59 & 0xC000000000000001;
      v86 = (v96 + 8);
      v107 = v85;
      do
      {
        if (v103)
        {
          v87 = MEMORY[0x231912650](v84);
        }

        else
        {
          v87 = *(v85 + 8 * v84 + 32);
        }

        v88 = v87;
        v89 = type metadata accessor for REMObjectID_Codable();
        v90 = objc_allocWithZone(v89);
        v91 = [v88 uuid];
        v92 = v104;
        sub_23030EBA8();

        v93 = sub_23030EB88();
        (*v86)(v92, v105);
        v94 = [v88 entityName];
        if (!v94)
        {
          _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v94 = sub_23030F8B8();
          v39 = v109;
        }

        ++v84;
        v110.receiver = v90;
        v110.super_class = v89;
        objc_msgSendSuper2(&v110, sel_initWithUUID_entityName_, v93, v94);

        sub_230310988();
        sub_2303109C8();
        sub_2303109D8();
        sub_230310998();
        v85 = v107;
      }

      while (v83 != v84);
      goto LABEL_63;
    case 2u:
      v37 = *v24;
      LOBYTE(v112) = 2;
      v114 = 0;
      sub_2300E0B74();
      v38 = v108;
      v39 = v109;
      v40 = v107;
      sub_230310DF8();
      v102 = v40;
      if (v40)
      {
LABEL_28:
        (*(v106 + 8))(v39, v38);

        return;
      }

      if (!(v37 >> 62))
      {
        v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          goto LABEL_14;
        }

LABEL_67:

        v95 = MEMORY[0x277D84F90];
LABEL_68:
        v112 = v95;
        v114 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150A8);
        sub_2300E0D78();
        sub_230310DF8();

        (*(v106 + 8))(v39, v38);
        return;
      }

      v41 = sub_2303106D8();
      if (!v41)
      {
        goto LABEL_67;
      }

LABEL_14:
      v112 = MEMORY[0x277D84F90];
      sub_2303109B8();
      if ((v41 & 0x8000000000000000) == 0)
      {
        v42 = 0;
        v43 = v37;
        v103 = v37 & 0xC000000000000001;
        v44 = (v96 + 8);
        v107 = v43;
        do
        {
          if (v103)
          {
            v45 = MEMORY[0x231912650](v42);
          }

          else
          {
            v45 = *(v43 + 8 * v42 + 32);
          }

          v46 = v45;
          v47 = type metadata accessor for REMObjectID_Codable();
          v48 = objc_allocWithZone(v47);
          v49 = [v46 uuid];
          v50 = v104;
          sub_23030EBA8();

          v51 = sub_23030EB88();
          (*v44)(v50, v105);
          v52 = [v46 entityName];
          if (!v52)
          {
            _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
            v52 = sub_23030F8B8();
            v39 = v109;
          }

          ++v42;
          v111.receiver = v48;
          v111.super_class = v47;
          objc_msgSendSuper2(&v111, sel_initWithUUID_entityName_, v51, v52);

          sub_230310988();
          sub_2303109C8();
          sub_2303109D8();
          sub_230310998();
          v43 = v107;
        }

        while (v41 != v42);
LABEL_63:

        v95 = v112;
        v38 = v108;
        goto LABEL_68;
      }

      __break(1u);
LABEL_70:
      __break(1u);
      return;
    case 3u:
      v53 = *v24;
      v54 = v24[8];
      LOBYTE(v112) = 3;
      v114 = 0;
      sub_2300E0B74();
      v55 = v108;
      v56 = v109;
      v57 = v107;
      sub_230310DF8();
      if (v57)
      {
        (*(v106 + 8))(v56, v55);
      }

      else
      {
        v75 = type metadata accessor for REMObjectID_Codable();
        v76 = objc_allocWithZone(v75);
        v53 = v53;
        v77 = [v53 uuid];
        v78 = v104;
        sub_23030EBA8();

        v79 = sub_23030EB88();
        (*(v96 + 8))(v78, v105);
        v80 = [v53 entityName];
        if (!v80)
        {
          _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v80 = sub_23030F8B8();
        }

        v113.receiver = v76;
        v113.super_class = v75;
        v81 = objc_msgSendSuper2(&v113, sel_initWithUUID_entityName_, v79, v80);

        v112 = v81;
        v114 = 1;
        sub_2300E0F98(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
        v82 = v108;
        sub_230310DF8();

        LOBYTE(v112) = v54;
        v114 = 2;
        sub_2300E0D24();
        sub_230310DF8();
        (*(v106 + 8))(v56, v82);
      }

      return;
    case 4u:
      v33 = v24[16];
      v34 = 4;
      goto LABEL_34;
    case 5u:
      v33 = v24[16];
      v34 = 5;
      goto LABEL_34;
    case 6u:
      v32 = 6;
      goto LABEL_47;
    case 7u:
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      sub_2300E0878(v24, v20);
      sub_2300E0878(&v24[v58], v18);
      v36 = 7;
      goto LABEL_43;
    case 8u:
      v32 = 8;
      goto LABEL_47;
    case 9u:
      v33 = v24[16];
      v34 = 9;
LABEL_34:
      LOBYTE(v112) = v34;
      v114 = 0;
      sub_2300E0B74();
      v65 = v108;
      v64 = v109;
      v66 = v107;
      sub_230310DF8();
      if (v66)
      {
        (*(v106 + 8))(v64, v65);
LABEL_37:
      }

      else
      {
        LOBYTE(v112) = 1;
        sub_230310DA8();

        LOBYTE(v112) = v33;
        v114 = 2;
        sub_2300E0CD0();
        sub_230310DF8();
        (*(v106 + 8))(v64, v65);
      }

      return;
    case 0xAu:
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      v20 = v98;
      sub_2300E0878(v24, v98);
      v18 = v97;
      sub_2300E0878(&v24[v72], v97);
      v36 = 10;
      goto LABEL_43;
    case 0xBu:
      v32 = 11;
      goto LABEL_47;
    case 0xCu:
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      v20 = v100;
      sub_2300E0878(v24, v100);
      v18 = v99;
      sub_2300E0878(&v24[v35], v99);
      v36 = 12;
      goto LABEL_43;
    case 0xDu:
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15090) + 48);
      v20 = v102;
      sub_2300E0878(v24, v102);
      v18 = v101;
      sub_2300E0878(&v24[v67], v101);
      v36 = 13;
LABEL_43:
      LOBYTE(v112) = v36;
      v114 = 0;
      sub_2300E0B74();
      v70 = v108;
      v69 = v109;
      v73 = v107;
      sub_230310DF8();
      if (!v73)
      {
        LOBYTE(v112) = 1;
        sub_2300E0C1C();
        sub_230310DF8();
        LOBYTE(v112) = 2;
        sub_230310DF8();
      }

      sub_230061918(v18, &unk_27DB15AA0);
      sub_230061918(v20, &unk_27DB15AA0);
      goto LABEL_49;
    case 0xEu:
      v32 = 14;
      goto LABEL_47;
    case 0xFu:
      v32 = 15;
LABEL_47:
      LOBYTE(v112) = v32;
      v114 = 0;
      sub_2300E0B74();
      v70 = v108;
      v69 = v109;
      v74 = v107;
      sub_230310DF8();
      if (!v74)
      {
        LOBYTE(v112) = 1;
        sub_230310DB8();
      }

      goto LABEL_49;
    case 0x10u:
      v31 = 16;
      goto LABEL_30;
    case 0x11u:
      v31 = 17;
LABEL_30:
      LOBYTE(v112) = v31;
      v114 = 0;
      sub_2300E0B74();
      v62 = v108;
      v61 = v109;
      v63 = v107;
      sub_230310DF8();
      if (!v63)
      {
        LOBYTE(v112) = 1;
        sub_230310DA8();
      }

      (*(v106 + 8))(v61, v62);
      goto LABEL_37;
    case 0x12u:
      v68 = *v24;
      LOBYTE(v112) = 18;
      v114 = 0;
      sub_2300E0B74();
      v70 = v108;
      v69 = v109;
      v71 = v107;
      sub_230310DF8();
      if (!v71)
      {
        LOBYTE(v112) = v68;
        v114 = 1;
        sub_2300E0BC8();
        sub_230310DF8();
      }

LABEL_49:
      (*(v106 + 8))(v69, v70);
      return;
    default:
      v27 = *v24;
      LOBYTE(v112) = 0;
      v114 = 0;
      sub_2300E0B74();
      v29 = v108;
      v28 = v109;
      v30 = v107;
      sub_230310DF8();
      if (!v30)
      {
        v112 = v27;
        v114 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150B8);
        sub_2300E0A44(&qword_27DB15108, sub_2300E0E2C);
        sub_230310DF8();
      }

      (*(v106 + 8))(v28, v29);
      goto LABEL_37;
  }
}

uint64_t sub_2300E03D4(uint64_t a1)
{

  return a1;
}

uint64_t sub_2300E042C(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.CustomSmartListInvocation.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2300E0488(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_2300E04C8(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2300E0508()
{
  result = qword_27DB15010;
  if (!qword_27DB15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15010);
  }

  return result;
}

unint64_t sub_2300E055C()
{
  result = qword_27DB15020;
  if (!qword_27DB15020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15018);
    sub_2300E0F98(&qword_27DB15028, type metadata accessor for REMSearchCriterion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15020);
  }

  return result;
}

unint64_t sub_2300E0610()
{
  result = qword_27DB15040;
  if (!qword_27DB15040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15018);
    sub_2300E0F98(&qword_27DB15048, type metadata accessor for REMSearchCriterion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15040);
  }

  return result;
}

unint64_t sub_2300E06C4()
{
  result = qword_27DB15060;
  if (!qword_27DB15060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15060);
  }

  return result;
}

unint64_t sub_2300E0718()
{
  result = qword_27DB15078;
  if (!qword_27DB15078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15078);
  }

  return result;
}

unint64_t sub_2300E076C()
{
  result = qword_27DB15080;
  if (!qword_27DB15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15080);
  }

  return result;
}

unint64_t sub_2300E07C0()
{
  result = qword_27DB15088;
  if (!qword_27DB15088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15088);
  }

  return result;
}

uint64_t sub_2300E0814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMSearchCriterion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300E0878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2300E08E8()
{
  result = qword_27DB15098;
  if (!qword_27DB15098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15098);
  }

  return result;
}

unint64_t sub_2300E093C()
{
  result = qword_27DB150A0;
  if (!qword_27DB150A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150A0);
  }

  return result;
}

unint64_t sub_2300E0990()
{
  result = qword_27DB150B0;
  if (!qword_27DB150B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB150A8);
    sub_2300E0F98(&qword_280C9C5D0, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150B0);
  }

  return result;
}

uint64_t sub_2300E0A44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB150B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2300E0ABC()
{
  result = qword_27DB150C8;
  if (!qword_27DB150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150C8);
  }

  return result;
}

uint64_t sub_2300E0B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMSearchCriterion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2300E0B74()
{
  result = qword_27DB150D8;
  if (!qword_27DB150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150D8);
  }

  return result;
}

unint64_t sub_2300E0BC8()
{
  result = qword_27DB150E0;
  if (!qword_27DB150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150E0);
  }

  return result;
}

unint64_t sub_2300E0C1C()
{
  result = qword_27DB150E8;
  if (!qword_27DB150E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB15AA0);
    sub_2300E0F98(&qword_280C9B760, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150E8);
  }

  return result;
}

unint64_t sub_2300E0CD0()
{
  result = qword_27DB150F0;
  if (!qword_27DB150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150F0);
  }

  return result;
}

unint64_t sub_2300E0D24()
{
  result = qword_27DB150F8;
  if (!qword_27DB150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB150F8);
  }

  return result;
}

unint64_t sub_2300E0D78()
{
  result = qword_27DB15100;
  if (!qword_27DB15100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB150A8);
    sub_2300E0F98(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15100);
  }

  return result;
}

unint64_t sub_2300E0E2C()
{
  result = qword_27DB15110;
  if (!qword_27DB15110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15110);
  }

  return result;
}

unint64_t sub_2300E0E84()
{
  result = qword_27DB15118;
  if (!qword_27DB15118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15118);
  }

  return result;
}

unint64_t sub_2300E0EE4()
{
  result = qword_280C99D40;
  if (!qword_280C99D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14F78);
    sub_2300E0F98(qword_280C9ACE8, type metadata accessor for REMReminder_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99D40);
  }

  return result;
}

uint64_t sub_2300E0F98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2300E0FE4()
{
  result = qword_27DB15120;
  if (!qword_27DB15120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15120);
  }

  return result;
}

unint64_t sub_2300E1044()
{
  result = qword_27DB15128;
  if (!qword_27DB15128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15128);
  }

  return result;
}

void destroy for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t a1)
{

  v2 = *(a1 + 8);
}

uint64_t initializeWithCopy for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v7;
  v8 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v8;
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSiriSearchDataView.RemindersByCriteriaInvocation.Parameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_s11CodingErrorOwca(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

uint64_t _s4BaseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4BaseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2300E15A4()
{
  result = qword_27DB15130;
  if (!qword_27DB15130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15130);
  }

  return result;
}

unint64_t sub_2300E15FC()
{
  result = qword_27DB15138;
  if (!qword_27DB15138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15138);
  }

  return result;
}

unint64_t sub_2300E1654()
{
  result = qword_27DB15140;
  if (!qword_27DB15140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15140);
  }

  return result;
}

unint64_t sub_2300E16AC()
{
  result = qword_27DB15148;
  if (!qword_27DB15148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15148);
  }

  return result;
}

unint64_t sub_2300E1704()
{
  result = qword_27DB15150;
  if (!qword_27DB15150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15150);
  }

  return result;
}

unint64_t sub_2300E175C()
{
  result = qword_27DB15158;
  if (!qword_27DB15158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15158);
  }

  return result;
}

unint64_t sub_2300E17B4()
{
  result = qword_27DB15160;
  if (!qword_27DB15160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15160);
  }

  return result;
}

unint64_t sub_2300E180C()
{
  result = qword_27DB15168;
  if (!qword_27DB15168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15168);
  }

  return result;
}

unint64_t sub_2300E1864()
{
  result = qword_27DB15170;
  if (!qword_27DB15170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15170);
  }

  return result;
}

unint64_t sub_2300E18BC()
{
  result = qword_27DB15178;
  if (!qword_27DB15178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15178);
  }

  return result;
}

unint64_t sub_2300E1914()
{
  result = qword_27DB15180;
  if (!qword_27DB15180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15180);
  }

  return result;
}

unint64_t sub_2300E196C()
{
  result = qword_27DB15188;
  if (!qword_27DB15188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15188);
  }

  return result;
}

unint64_t sub_2300E19C4()
{
  result = qword_27DB15190;
  if (!qword_27DB15190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15190);
  }

  return result;
}

uint64_t sub_2300E1A18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6169726574697263 && a2 == 0xE800000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230340630 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F6863746566 && a2 == 0xEB00000000746573 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D694C6863746566 && a2 == 0xEA00000000007469)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2300E1B90()
{
  v0 = sub_230310C08();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2300E1BDC()
{
  result = qword_27DB15198;
  if (!qword_27DB15198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15198);
  }

  return result;
}

uint64_t sub_2300E1C30()
{
  v0 = sub_230311228();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

uint64_t REMSmartListSection.PredefinedSectionType.Today.remObjectID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (!*v0)
  {
    sub_23030EB68();
    v15 = sub_23030EBB8();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v9, 1, v15);
    if (result != 1)
    {
      sub_2300E2008();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_23030EB88();
      (*(v16 + 8))(v9, v15);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (*v0 == 1)
  {
    sub_23030EB68();
    v10 = sub_23030EBB8();
    v11 = *(v10 - 8);
    result = (*(v11 + 48))(v7, 1, v10);
    if (result != 1)
    {
      sub_2300E2008();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = sub_23030EB88();
      (*(v11 + 8))(v7, v10);
LABEL_7:
      v17 = [ObjCClassFromMetadata objectIDWithUUID_];
LABEL_10:
      v21 = v17;

      return v21;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_23030EB68();
  v18 = sub_23030EBB8();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v4, 1, v18);
  if (result != 1)
  {
    sub_2300E2008();
    v20 = swift_getObjCClassFromMetadata();
    v14 = sub_23030EB88();
    (*(v19 + 8))(v4, v18);
    v17 = [v20 objectIDWithUUID_];
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_2300E2008()
{
  result = qword_280C96EB0;
  if (!qword_280C96EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C96EB0);
  }

  return result;
}

uint64_t sub_2300E2074(uint64_t a1)
{
  v2 = sub_2300E2760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300E20B0(uint64_t a1)
{
  v2 = sub_2300E2760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300E20EC()
{
  v1 = 0x6C6C417961646F74;
  if (*v0 != 1)
  {
    v1 = 0x6E6F4E7961646F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F5465726F666562;
  }
}

uint64_t sub_2300E215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2300E3210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300E2184(uint64_t a1)
{
  v2 = sub_2300E2664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300E21C0(uint64_t a1)
{
  v2 = sub_2300E2664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300E21FC(uint64_t a1)
{
  v2 = sub_2300E270C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300E2238(uint64_t a1)
{
  v2 = sub_2300E270C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300E2274(uint64_t a1)
{
  v2 = sub_2300E26B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300E22B0(uint64_t a1)
{
  v2 = sub_2300E26B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSmartListSection.PredefinedSectionType.Today.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151A0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151A8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151B0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300E2664();
  sub_230311448();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2300E270C();
      v9 = v21;
      sub_230310D48();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2300E26B8();
      v9 = v24;
      sub_230310D48();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2300E2760();
    sub_230310D48();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2300E2664()
{
  result = qword_27DB151C0;
  if (!qword_27DB151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB151C0);
  }

  return result;
}

unint64_t sub_2300E26B8()
{
  result = qword_27DB151C8;
  if (!qword_27DB151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB151C8);
  }

  return result;
}

unint64_t sub_2300E270C()
{
  result = qword_27DB151D0;
  if (!qword_27DB151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB151D0);
  }

  return result;
}

unint64_t sub_2300E2760()
{
  result = qword_27DB151D8;
  if (!qword_27DB151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB151D8);
  }

  return result;
}

uint64_t REMSmartListSection.PredefinedSectionType.Today.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t REMSmartListSection.PredefinedSectionType.Today.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151E0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151E8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151F0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB151F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2300E2664();
  v15 = v36;
  sub_230311428();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_230310D08();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_2300DB8E0();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_230310918();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8);
      *v24 = &type metadata for REMSmartListSection.PredefinedSectionType.Today;
      sub_230310C38();
      sub_2303108F8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2300E270C();
          sub_230310C28();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2300E26B8();
          v26 = v17;
          sub_230310C28();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2300E2760();
        sub_230310C28();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_2300E2D9C()
{
  result = qword_27DB15200;
  if (!qword_27DB15200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15200);
  }

  return result;
}

unint64_t sub_2300E2E24()
{
  result = qword_27DB15208;
  if (!qword_27DB15208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15208);
  }

  return result;
}

unint64_t sub_2300E2EFC()
{
  result = qword_27DB15218;
  if (!qword_27DB15218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15218);
  }

  return result;
}

unint64_t sub_2300E2F54()
{
  result = qword_27DB15220;
  if (!qword_27DB15220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15220);
  }

  return result;
}

unint64_t sub_2300E2FAC()
{
  result = qword_27DB15228;
  if (!qword_27DB15228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15228);
  }

  return result;
}

unint64_t sub_2300E3004()
{
  result = qword_27DB15230;
  if (!qword_27DB15230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15230);
  }

  return result;
}

unint64_t sub_2300E305C()
{
  result = qword_27DB15238;
  if (!qword_27DB15238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15238);
  }

  return result;
}

unint64_t sub_2300E30B4()
{
  result = qword_27DB15240;
  if (!qword_27DB15240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15240);
  }

  return result;
}

unint64_t sub_2300E310C()
{
  result = qword_27DB15248;
  if (!qword_27DB15248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15248);
  }

  return result;
}

unint64_t sub_2300E3164()
{
  result = qword_27DB15250;
  if (!qword_27DB15250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15250);
  }

  return result;
}

unint64_t sub_2300E31BC()
{
  result = qword_27DB15258;
  if (!qword_27DB15258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15258);
  }

  return result;
}

uint64_t sub_2300E3210(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F5465726F666562 && a2 == 0xEB00000000796164 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C417961646F74 && a2 == 0xEB00000000796144 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F4E7961646F74 && a2 == 0xEE007961446C6C41)
  {

    return 2;
  }

  else
  {
    v5 = sub_230311048();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2300E335C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *a2;
  if (!*(result + 16))
  {
    v6 = __OFADD__(v5, 1);
    v10 = v5 + 1;
    if (!v6)
    {
      *a2 = v10;
      swift_getAssociatedTypeWitness();
      v11 = *(swift_getTupleTypeMetadata2() + 48);
      *a3 = v4;
      sub_23006AEDC(a3 + v11);
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  if (*(result + 16) != 1)
  {
    v6 = __OFADD__(v4, v5);
    v12 = v4 + v5;
    if (!v6)
    {
      v16 = v12;
      swift_getAssociatedTypeWitness();
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v14 = *(TupleTypeMetadata3 + 64);
      v15 = *(TupleTypeMetadata3 + 48);
      *a3 = v16;
      sub_23006AEDC(a3 + v15);
      sub_23006AEDC(a3 + v14);
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *a2 = v7;
  v6 = __OFADD__(v4, v7);
  v8 = v4 + v7;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (!v6)
  {
    *a3 = v9;
    swift_getAssociatedTypeWitness();
LABEL_11:
    type metadata accessor for Patch();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t patch<A>(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Collection<>.diff(_:)(a2, a3, a4, a5, &v11);
  v9 = Diff.patch<A>(from:to:)(a1, a2, a3, a4);

  return v9;
}

uint64_t Patch.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = 10308;
      v23 = 0xE200000000000000;
      v21 = v10;
      v11 = sub_230310E58();
      MEMORY[0x231911790](v11);

      MEMORY[0x231911790](41, 0xE100000000000000);
      return v22;
    }

    else
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v16 = *(TupleTypeMetadata3 + 48);
      (*(v2 + 32))(v5, &v7[*(TupleTypeMetadata3 + 64)], v1);
      v22 = 0;
      v23 = 0xE000000000000000;
      MEMORY[0x231911790](10325, 0xE200000000000000);
      v21 = v10;
      v17 = sub_230310E58();
      MEMORY[0x231911790](v17);

      MEMORY[0x231911790](44, 0xE100000000000000);
      sub_230311008();
      MEMORY[0x231911790](41, 0xE100000000000000);
      v12 = v22;
      v18 = *(v2 + 8);
      v18(v5, v1);
      v18(&v7[v16], v1);
    }
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v2 + 32))(v5, &v7[*(TupleTypeMetadata2 + 48)], v1);
    v22 = 0;
    v23 = 0xE000000000000000;
    MEMORY[0x231911790](10313, 0xE200000000000000);
    v21 = v10;
    v14 = sub_230310E58();
    MEMORY[0x231911790](v14);

    MEMORY[0x231911790](44, 0xE100000000000000);
    sub_230311008();
    MEMORY[0x231911790](41, 0xE100000000000000);
    v12 = v22;
    (*(v2 + 8))(v5, v1);
  }

  return v12;
}

void *sub_2300E39B4(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = *(v5 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  if (v9 <= ((v9 + v7) & ~v7) + v8)
  {
    v9 = ((v9 + v6) & ~v6) + v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || (v10 + 1) > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));

    return v3;
  }

  v15 = *(a2 + v10);
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v10 <= 3)
    {
      v17 = v10;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a2;
      }

      else if (v17 == 3)
      {
        v18 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v18 = *a2;
      }

LABEL_27:
      v19 = (v18 | (v16 << (8 * v10))) + 3;
      v15 = v18 + 3;
      if (v10 < 4)
      {
        v15 = v19;
      }

      goto LABEL_29;
    }

    if (v17)
    {
      v18 = *a2;
      goto LABEL_27;
    }
  }

LABEL_29:
  v20 = ~v7;
  *a1 = *a2;
  if (v15 == 2)
  {
    v21 = (a2 + v7 + 8) & v20;
    v22 = *(v5 + 16);
    v22((a1 + v7 + 8) & v20, v21, v4);
    v22((v8 + v7 + ((v3 + v7 + 8) & v20)) & v20, (v8 + v7 + v21) & v20, v4);
    *(v3 + v10) = 2;
  }

  else if (v15 == 1)
  {
    *(a1 + v10) = 1;
  }

  else
  {
    (*(v5 + 16))((a1 + v7 + 8) & v20, (a2 + v7 + 8) & v20, v4);
    *(v3 + v10) = 0;
  }

  return v3;
}

unsigned __int8 *sub_2300E3BE0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  if (v6 <= ((v6 + v4) & ~v4) + v5)
  {
    v6 = ((v6 + v4) & ~v4) + v5;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = result[v6];
  v8 = v7 - 3;
  if (v7 >= 3)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_19;
      }

      v10 = *result;
    }

    else if (v9 == 2)
    {
      v10 = *result;
    }

    else if (v9 == 3)
    {
      v10 = *result | (result[2] << 16);
    }

    else
    {
      v10 = *result;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 3;
    v7 = v10 + 3;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_19:
  v12 = ~v4;
  if (v7 == 2)
  {
    v13 = &result[v4 + 8] & v12;
    v17 = *(v3 + 8);
    v17(v13, v2);
    v14 = (v5 + v4 + v13) & v12;
    v15 = v2;
    v16 = v17;
  }

  else
  {
    if (v7 == 1)
    {
      return result;
    }

    v16 = *(v3 + 8);
    v14 = &result[v4 + 8] & v12;
    v15 = *(a2 + 16);
  }

  return v16(v14, v15);
}

void *sub_2300E3D9C(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ((v5 + 8) & ~v5) + v6;
  if (v7 <= ((v7 + v5) & ~v5) + v6)
  {
    v7 = ((v7 + v5) & ~v5) + v6;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_20:
  v14 = ~v5;
  *result = *a2;
  if (v9 == 2)
  {
    v16 = (result + v5 + 8) & v14;
    v17 = &a2[v5 + 8] & v14;
    v18 = *(v4 + 16);
    v19 = result;
    v18(v16, v17, v3);
    v18((v6 + v5 + v16) & v14, (v6 + v5 + v17) & v14, v3);
    result = v19;
    v15 = 2;
  }

  else if (v9 == 1)
  {
    v15 = 1;
  }

  else
  {
    v20 = result;
    (*(v4 + 16))((result + v5 + 8) & v14, &a2[v5 + 8] & v14, v3);
    result = v20;
    v15 = 0;
  }

  *(result + v8) = v15;
  return result;
}

unsigned __int16 *sub_2300E3F8C(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  if (v9 <= ((v9 + v7) & ~v7) + v8)
  {
    v9 = ((v9 + v7) & ~v7) + v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v11 = v14 + 3;
          goto LABEL_23;
        }

        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v11 = (v14 | (v12 << (8 * v10))) + 3;
      goto LABEL_23;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_23:
  v15 = ~v7;
  if (v11 == 2)
  {
    v17 = (a1 + v7 + 8) & v15;
    v18 = *(v6 + 8);
    v28 = *(v5 - 8);
    v19 = v5;
    v18(v17, v5);
    v18((v8 + v7 + v17) & v15, v19);
    v5 = v19;
    v6 = v28;
  }

  else if (v11 != 1)
  {
    v16 = v5;
    (*(v6 + 8))((a1 + v7 + 8) & v15, v5);
    v5 = v16;
  }

  v20 = *(a2 + v10);
  v21 = v20 - 3;
  if (v20 < 3)
  {
    goto LABEL_43;
  }

  if (v10 <= 3)
  {
    v22 = v10;
  }

  else
  {
    v22 = 4;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *a2;
      if (v10 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v22 == 3)
      {
        v23 = *a2 | (*(a2 + 2) << 16);
        if (v10 < 4)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v23 = *a2;
      if (v10 < 4)
      {
LABEL_42:
        v20 = (v23 | (v21 << (8 * v10))) + 3;
        goto LABEL_43;
      }
    }

LABEL_40:
    v20 = v23 + 3;
    goto LABEL_43;
  }

  if (v22)
  {
    v23 = *a2;
    if (v10 < 4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_43:
  *a1 = *a2;
  if (v20 == 2)
  {
    v25 = *(v6 + 16);
    v26 = v5;
    v25((a1 + v7 + 8) & v15, (a2 + v7 + 8) & v15);
    (v25)((v8 + v7 + ((a1 + v7 + 8) & v15)) & v15, (v8 + v7 + ((a2 + v7 + 8) & v15)) & v15, v26);
    v24 = 2;
  }

  else if (v20 == 1)
  {
    v24 = 1;
  }

  else
  {
    (*(v6 + 16))((a1 + v7 + 8) & v15, (a2 + v7 + 8) & v15, v5);
    v24 = 0;
  }

  *(a1 + v10) = v24;
  return a1;
}

void *sub_2300E42C8(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = ((v5 + 8) & ~v5) + v6;
  if (v7 <= ((v7 + v5) & ~v5) + v6)
  {
    v7 = ((v7 + v5) & ~v5) + v6;
  }

  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 3;
    v9 = v12 + 3;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_20:
  v14 = ~v5;
  *result = *a2;
  if (v9 == 2)
  {
    v16 = (result + v5 + 8) & v14;
    v17 = &a2[v5 + 8] & v14;
    v18 = *(v4 + 32);
    v19 = result;
    v18(v16, v17, v3);
    v18((v6 + v5 + v16) & v14, (v6 + v5 + v17) & v14, v3);
    result = v19;
    v15 = 2;
  }

  else if (v9 == 1)
  {
    v15 = 1;
  }

  else
  {
    v20 = result;
    (*(v4 + 32))((result + v5 + 8) & v14, &a2[v5 + 8] & v14, v3);
    result = v20;
    v15 = 0;
  }

  *(result + v8) = v15;
  return result;
}

unsigned __int16 *sub_2300E44B8(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  if (v9 <= ((v9 + v7) & ~v7) + v8)
  {
    v9 = ((v9 + v7) & ~v7) + v8;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a1 + v10);
  v12 = v11 - 3;
  if (v11 >= 3)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = *a1 | (*(a1 + 2) << 16);
          if (v10 < 4)
          {
            goto LABEL_22;
          }

LABEL_20:
          v11 = v14 + 3;
          goto LABEL_23;
        }

        v14 = *a1;
        if (v10 >= 4)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      v11 = (v14 | (v12 << (8 * v10))) + 3;
      goto LABEL_23;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = *a1;
    if (v10 < 4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_23:
  v15 = ~v7;
  if (v11 == 2)
  {
    v17 = (a1 + v7 + 8) & v15;
    v18 = *(v6 + 8);
    v28 = *(v5 - 8);
    v19 = v5;
    v18(v17, v5);
    v18((v8 + v7 + v17) & v15, v19);
    v5 = v19;
    v6 = v28;
  }

  else if (v11 != 1)
  {
    v16 = v5;
    (*(v6 + 8))((a1 + v7 + 8) & v15, v5);
    v5 = v16;
  }

  v20 = *(a2 + v10);
  v21 = v20 - 3;
  if (v20 < 3)
  {
    goto LABEL_43;
  }

  if (v10 <= 3)
  {
    v22 = v10;
  }

  else
  {
    v22 = 4;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *a2;
      if (v10 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v22 == 3)
      {
        v23 = *a2 | (*(a2 + 2) << 16);
        if (v10 < 4)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v23 = *a2;
      if (v10 < 4)
      {
LABEL_42:
        v20 = (v23 | (v21 << (8 * v10))) + 3;
        goto LABEL_43;
      }
    }

LABEL_40:
    v20 = v23 + 3;
    goto LABEL_43;
  }

  if (v22)
  {
    v23 = *a2;
    if (v10 < 4)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_43:
  *a1 = *a2;
  if (v20 == 2)
  {
    v25 = *(v6 + 32);
    v26 = v5;
    v25((a1 + v7 + 8) & v15, (a2 + v7 + 8) & v15);
    (v25)((v8 + v7 + ((a1 + v7 + 8) & v15)) & v15, (v8 + v7 + ((a2 + v7 + 8) & v15)) & v15, v26);
    v24 = 2;
  }

  else if (v20 == 1)
  {
    v24 = 1;
  }

  else
  {
    (*(v6 + 32))((a1 + v7 + 8) & v15, (a2 + v7 + 8) & v15, v5);
    v24 = 0;
  }

  *(a1 + v10) = v24;
  return a1;
}

uint64_t sub_2300E47F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v6 + v4) & ~v4) + v5;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_16:
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

  return (v9 | v14) + 254;
}

void sub_2300E495C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  v9 = ((v8 + v6) & ~v6) + v7;
  if (v8 > v9)
  {
    v9 = v8;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_41:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v9] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_26;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_2300E4B64(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = ((v3 + 8) & ~v3) + v4;
  v6 = ((v5 + v3) & ~v3) + v4;
  if (v5 > v6)
  {
    v6 = v5;
  }

  v7 = 8;
  if (v6 > 8)
  {
    v7 = v6;
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        return v8;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    LODWORD(v8) = v11 + 3;
    if (v7 >= 4)
    {
      return v8;
    }

    else
    {
      return v12;
    }
  }

  return v8;
}

void sub_2300E4C54(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v6 + v4) & ~v4) + v5;
  if (a2 > 2)
  {
    if (v6 > v7)
    {
      v7 = v6;
    }

    if (v7 <= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2 - 3;
    if (v8 < 4)
    {
      a1[v8] = (v9 >> (8 * v8)) + 3;
      if (v8)
      {
        v11 = v9 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v11;
          a1[2] = BYTE2(v11);
        }

        else if (v8 == 2)
        {
          *a1 = v11;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      a1[v8] = 3;
      bzero(a1, v8);
      *a1 = v9;
    }
  }

  else
  {
    if (v6 > v7)
    {
      v7 = v6;
    }

    if (v7 <= 8)
    {
      v7 = 8;
    }

    a1[v7] = a2;
  }
}

uint64_t sub_2300E4D8C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15260);
  v1 = __swift_project_value_buffer(v0, qword_27DB15260);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMStore.clearAutoCategorizationLocalCorrectionsOfListsOwnedByCurrentUser(completion:)(void (*a1)(id, uint64_t), uint64_t a2)
{
  v5 = [v2 daemonController];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 unitTest_forceSupportsAutoCategorizationModels];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 BOOLValue];
    }

    else
    {
      if (qword_280C97260 != -1)
      {
        swift_once();
      }

      v25 = 0;
      REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(&v25);
      v9 = aBlock < 2u;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = a1;
    *(v13 + 32) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    swift_retain_n();
    v15 = sub_23030F8B8();
    v23 = sub_2300E6ED4;
    v24 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E5348;
    v22 = &block_descriptor_1;
    v16 = _Block_copy(&aBlock);

    v23 = sub_2300E7CC4;
    v24 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E53A8;
    v22 = &block_descriptor_6;
    v17 = _Block_copy(&aBlock);

    [v6 asyncStorePerformerWithReason:v15 loadHandler:v16 errorHandler:v17];
    _Block_release(v17);
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = objc_opt_self();
    sub_2300E5190();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = sub_23030F8B8();
    v18 = [v10 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v12];

    a1(v18, 1);
  }
}

unint64_t sub_2300E5190()
{
  result = qword_27DB15278;
  if (!qword_27DB15278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB15278);
  }

  return result;
}

void sub_2300E51DC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2300E7C70;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2302190BC;
  v10[3] = &block_descriptor_80;
  v9 = _Block_copy(v10);

  [a1 clearAutoCategorizationLocalCorrectionsOfListsOwnedByCurrentUserWithSupportsAutoCategorizationModels:a2 & 1 completion:v9];
  _Block_release(v9);
}

void sub_2300E52D0(void *a1, void (*a2)(void *, _BOOL8))
{
  v4 = a1 != 0;
  v5 = a1;
  v6 = a1;
  a2(a1, v4);
  sub_2300E7C78(a1, v4);

  sub_2300E7C78(a1, v4);
}

uint64_t sub_2300E5348(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_2300E53A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2300E5430()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2300E5524;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000042, 0x8000000230340770, sub_2300E6EE0, v2, v4);
}

uint64_t sub_2300E5524()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2300E5658;
  }

  else
  {

    v2 = sub_2300E5640;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2300E5658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2300E56BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(v5 + 16);
  v11(&v28 - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  v14 = [a2 daemonController];
  if (v14)
  {
    v29 = v14;
    v15 = [a2 unitTest_forceSupportsAutoCategorizationModels];
    v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v15)
    {
      v16 = v15;
      v17 = [v15 BOOLValue];
    }

    else
    {
      if (qword_280C97260 != -1)
      {
        swift_once();
      }

      v37 = 0;
      REMGenerativeModelsAvailabilityManager.modelsAvailability(feature:)(&v37);
      v17 = aBlock < 2u;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    *(v23 + 24) = sub_2300E7BB0;
    *(v23 + 32) = v13;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_2300E7BB0;
    *(v24 + 24) = v13;
    swift_retain_n();
    v25 = sub_23030F8B8();
    v35 = sub_2300E7CA4;
    v36 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2300E5348;
    v34 = &block_descriptor_71;
    v26 = _Block_copy(&aBlock);

    v35 = sub_2300E7CC4;
    v36 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_2300E53A8;
    v34 = &block_descriptor_74;
    v27 = _Block_copy(&aBlock);

    [v29 asyncStorePerformerWithReason:v25 loadHandler:v26 errorHandler:v27];
    _Block_release(v27);
    _Block_release(v26);

    swift_unknownObjectRelease();

    return (*(v5 + 8))(v30, v4);
  }

  else
  {
    v18 = objc_opt_self();
    sub_2300E5190();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = sub_23030F8B8();
    v21 = [v18 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v20];

    aBlock = v21;
    sub_23030FE58();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_2300E5B3C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
    return sub_23030FE58();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
    return sub_23030FE68();
  }
}

uint64_t sub_2300E5BB0(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = sub_23030FEA8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_230319068;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_230319078;
  v12[5] = v11;
  v13 = a1;
  sub_2300E7380(0, 0, v7, &unk_230319088, v12);
}

uint64_t sub_2300E5D24(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2300E5D9C, 0, 0);
}

uint64_t sub_2300E5D9C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2300E5E90;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000042, 0x8000000230340770, sub_2300E7CC8, v2, v4);
}

uint64_t sub_2300E5E90()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2300E6028;
  }

  else
  {

    v2 = sub_2300E5FAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2300E5FAC()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2300E6028()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = sub_23030E7F8();

  (*(v2 + 16))(v2, v3);
  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

void REMStore.fetchAutoCategorizationSuggestedSections(listName:reminderTitles:existingSections:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = [v6 daemonController];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    v16[6] = a5;
    v16[7] = a6;
    v16[8] = ObjectType;
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    swift_retain_n();

    v18 = sub_23030F8B8();
    v29 = sub_2300E6EE8;
    v30 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2300E5348;
    v28 = &block_descriptor_17;
    v19 = _Block_copy(&aBlock);

    v29 = sub_2300E6EFC;
    v30 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2300E53A8;
    v28 = &block_descriptor_20;
    v20 = _Block_copy(&aBlock);

    [v15 asyncStorePerformerWithReason:v18 loadHandler:v19 errorHandler:v20];
    _Block_release(v20);
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = objc_opt_self();
    sub_2300E5190();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = sub_23030F8B8();
    v24 = [v21 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v23];

    a5(v24, 1);
  }
}

void sub_2300E63CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = sub_23030F8B8();
  v15 = sub_23030FF18();
  v16 = sub_23030FF18();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a6;
  v17[7] = a7;
  v17[8] = a8;
  aBlock[4] = sub_2300E7AEC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300E695C;
  aBlock[3] = &block_descriptor_57;
  v18 = _Block_copy(aBlock);

  [a1 fetchAutoCategorizationSuggestedSectionsForListName:v19 reminderTitles:v15 existingSections:v16 completion:v18];
  _Block_release(v18);
}

void sub_2300E6560(void *a1, id a2, uint64_t a3, unint64_t a4, int a5, int a6, void (*a7)(id, uint64_t), int a8, uint64_t a9)
{
  if (a2)
  {
    v11 = 1;
    v12 = a2;
  }

  else
  {
    v12 = a1;
    if (a1)
    {
      swift_bridgeObjectRetain_n();
      v11 = 0;
    }

    else
    {
      if (qword_27DB13AE8 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB15260);

      v14 = sub_23030EF38();
      v15 = sub_230310298();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v36 = v33;
        v37 = a9;
        *v16 = 136315906;
        swift_getMetatypeMetadata();
        v17 = sub_23030F948();
        v19 = sub_23004E30C(v17, v18, &v36);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_23004E30C(a3, a4, &v36);
        *(v16 + 22) = 2080;
        v20 = sub_23030FF48();
        v22 = sub_23004E30C(v20, v21, &v36);

        *(v16 + 24) = v22;
        *(v16 + 32) = 2080;
        v23 = sub_23030FF48();
        v25 = sub_23004E30C(v23, v24, &v36);

        *(v16 + 34) = v25;
        _os_log_impl(&dword_230044000, v14, v15, "%s#fetchAutoCategorizationSuggestedSections : 'suggestions' and 'error' were both nil {listName: %s, reminderTitles: %s, existingSections: %s}", v16, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x231914180](v33, -1, -1);
        MEMORY[0x231914180](v16, -1, -1);
      }

      v26 = objc_opt_self();
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000BELL, 0x80000002303408C0);
      MEMORY[0x231911790](a3, a4);
      MEMORY[0x231911790](0xD000000000000012, 0x8000000230340980);
      v27 = sub_23030FF48();
      MEMORY[0x231911790](v27);

      MEMORY[0x231911790](0xD000000000000014, 0x80000002303409A0);
      v28 = sub_23030FF48();
      MEMORY[0x231911790](v28);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v29 = sub_23030F8B8();

      v12 = [v26 internalErrorWithDebugDescription_];

      v30 = v12;
      v11 = 1;
    }
  }

  v31 = a2;
  v32 = a2;
  a7(v12, v11);
  sub_2300E7B20(v12, v11);
  sub_2300E7B20(v12, v11);
}

uint64_t sub_2300E695C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23030F658();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t REMStore.fetchAutoCategorizationSuggestedSections(listName:reminderTitles:existingSections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2300E6A24, 0, 0);
}

uint64_t sub_2300E6A24()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15280);
  *v6 = v0;
  v6[1] = sub_2300E6B44;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000053, 0x80000002303407F0, sub_2300E6F28, v4, v7);
}

uint64_t sub_2300E6B44()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2300E6C7C;
  }

  else
  {

    v2 = sub_2300E6C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2300E6C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2300E6CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15288);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  REMStore.fetchAutoCategorizationSuggestedSections(listName:reminderTitles:existingSections:completion:)(a3, a4, a5, v18, sub_2300E7A74, v15);
}

uint64_t sub_2300E6E54(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15288);
    return sub_23030FE58();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15288);
    return sub_23030FE68();
  }
}

uint64_t sub_2300E6F38()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2300E7CA0;

  return sub_2300E5D24(v2, v3);
}

uint64_t sub_2300E6FE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2300E7CA0;

  return v6();
}

uint64_t sub_2300E70CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2300E7CA0;

  return sub_2300E6FE4(v2, v3, v4);
}

uint64_t sub_2300E718C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23009646C;

  return v7();
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2300E72B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23009646C;

  return sub_2300E718C(a1, v4, v5, v6);
}

uint64_t sub_2300E7380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2300E763C(a3, v23 - v10);
  v12 = sub_23030FEA8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2300E76AC(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23030FE98();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23030FE48();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23030F968() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2300E76AC(a3);

    return v21;
  }

LABEL_8:
  sub_2300E76AC(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2300E763C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300E76AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2300E7714(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2300E780C;

  return v6(a1);
}

uint64_t sub_2300E780C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2300E7904(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2300E7CA0;

  return sub_2300E7714(a1, v4);
}

uint64_t sub_2300E79BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23009646C;

  return sub_2300E7714(a1, v4);
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

void sub_2300E7B20(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_50Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2300E7BD8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2 & 1, v9);
}

void sub_2300E7C78(id a1, char a2)
{
  if (a2)
  {
  }
}

void DateComponents.init(testing_parsedFrom:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v59 - v9;
  v10 = sub_23030EE08();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23030EE68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v65 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  v23 = sub_23030EB58();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v60 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v63 = &v59 - v27;
  v28 = sub_23030E758();
  v72 = *(v28 - 8);
  v73 = v28;
  MEMORY[0x28223BE20](v28);
  v66 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v13;
  v30 = *(v13 + 56);
  v76 = v12;
  v30(v17, 1, 1, v12);

  v64 = a1;
  v31 = a1;
  v32 = a2;
  Date.init(testing_parsedFrom:timeZone:)(v31, a2, v17, v22);
  v33 = v24;
  v34 = *(v24 + 48);
  v35 = v23;
  if (v34(v22, 1, v23) != 1)
  {

    v41 = v24;
    v42 = v63;
    (*(v33 + 32))(v63, v22, v23);
    v43 = objc_opt_self();
    v44 = sub_23030EAA8();
    v45 = v70;
    sub_23030EE58();
    v46 = sub_23030EE38();
    (*(v71 + 8))(v45, v76);
    v47 = [v43 rem:v44 dateComponentsWithDate:v46 timeZone:0 isAllDay:?];

LABEL_7:
    v53 = v67;
    v52 = v68;
    v54 = v66;

    sub_23030E678();
    (*(v41 + 8))(v42, v35);
    v55 = v74;
    sub_230055F74(v74, v53, &qword_27DB147E0);
    v56 = v69;
    if ((*(v52 + 48))(v53, 1, v69) == 1)
    {
      sub_230061918(v55, &qword_27DB147E0);
      sub_230061918(v53, &qword_27DB147E0);
    }

    else
    {
      v57 = v61;
      (*(v52 + 32))(v61, v53, v56);
      v58 = v62;
      (*(v52 + 16))(v62, v57, v56);
      (*(v52 + 56))(v58, 0, 1, v56);
      sub_23030E738();
      sub_230061918(v55, &qword_27DB147E0);
      (*(v52 + 8))(v57, v56);
    }

    v38 = v75;
    v40 = v72;
    v39 = v73;
    (*(v72 + 32))(v75, v54, v73);
    v37 = 0;
    goto LABEL_11;
  }

  sub_230061918(v22, &unk_27DB15AA0);
  v30(v17, 1, 1, v76);

  v36 = v65;
  Date.init(testing_allDayParsedFrom:timeZone:)(v64, v32, v17, v65);
  if (v34(v36, 1, v23) == 1)
  {
    sub_230061918(v74, &qword_27DB147E0);

    sub_230061918(v36, &unk_27DB15AA0);
    v37 = 1;
    v38 = v75;
    v40 = v72;
    v39 = v73;
LABEL_11:
    (*(v40 + 56))(v38, v37, 1, v39);
    return;
  }

  v41 = v24;
  v42 = v60;
  (*(v33 + 32))(v60, v36, v23);
  v48 = objc_opt_self();
  v49 = sub_23030EAA8();
  v50 = v70;
  sub_23030EE58();
  v51 = sub_23030EE38();
  (*(v71 + 8))(v50, v76);
  v46 = [v48 rem:v49 dateComponentsWithDate:v51 timeZone:1 isAllDay:?];

  if (v46)
  {

    v47 = [v46 rem_strippingTimeZone];
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t DateComponents.testing_localizedDescription.getter()
{
  v1 = sub_23030ED38();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_23030EB58();
  v3 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v57 - v10;
  MEMORY[0x28223BE20](v9);
  v67 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  v18 = sub_23030EE68();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v57 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v57 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - v24;
  v65 = v0;
  sub_23030E748();
  v26 = *(v19 + 48);
  v27 = v26(v17, 1, v18);
  v62 = v26;
  if (v27 == 1)
  {
    sub_23030EE58();
    if (v26(v17, 1, v18) != 1)
    {
      sub_230061918(v17, &qword_27DB147D8);
    }
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
  }

  v28 = objc_opt_self();
  v29 = sub_23030E668();
  v66 = v25;
  v30 = sub_23030EE38();
  v31 = [v28 rem:v29 dateWithDateComponents:v30 timeZone:?];

  if (v31)
  {
    sub_23030EB18();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v64;
  v34 = v3;
  (*(v3 + 56))(v11, v32, 1, v64);
  v35 = v11;
  v36 = v67;
  sub_2300E0878(v35, v67);
  sub_230055F74(v36, v8, &unk_27DB15AA0);
  if ((*(v3 + 48))(v8, 1, v33) == 1)
  {
    sub_230061918(v8, &unk_27DB15AA0);
    sub_230061918(v36, &unk_27DB15AA0);
    (*(v19 + 8))(v66, v18);
    return 63;
  }

  else
  {
    (*(v3 + 32))(v68, v8, v33);
    v38 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v39 = v59;
    sub_23030EBF8();
    v40 = sub_23030EC38();
    (*(v60 + 8))(v39, v61);
    [v38 setLocale_];

    v41 = sub_23030EE38();
    [v38 setTimeZone_];

    [v38 setDateStyle_];
    v42 = sub_23030E668();
    LODWORD(v39) = [v42 rem_isAllDayDateComponents];

    [v38 setTimeStyle_];
    v43 = sub_23030EAA8();
    v44 = [v38 stringFromDate_];

    v45 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v47 = v46;

    v73 = v45;
    v74 = v47;
    v71 = 11501794;
    v72 = 0xA300000000000000;
    v69 = 32;
    v70 = 0xE100000000000000;
    sub_2300A85F0();
    v48 = sub_230310568();
    v50 = v49;

    v73 = v48;
    v74 = v50;
    v51 = v63;
    sub_23030E748();
    if (v62(v51, 1, v18) == 1)
    {
      sub_230061918(v51, &qword_27DB147D8);
      MEMORY[0x231911790](0x6974616F6C662820, 0xEB0000000029676ELL);

      (*(v3 + 8))(v68, v33);
      sub_230061918(v67, &unk_27DB15AA0);
      (*(v19 + 8))(v66, v18);
    }

    else
    {
      v52 = v58;
      (*(v19 + 32))(v58, v51, v18);
      v53 = v57;
      sub_23030EE58();
      sub_2300E8D3C();
      v54 = sub_23030F818();
      v55 = *(v19 + 8);
      v55(v53, v18);
      if (v54)
      {
      }

      else
      {
        v71 = 10272;
        v72 = 0xE200000000000000;
        v56 = sub_23030EE28();
        MEMORY[0x231911790](v56);

        MEMORY[0x231911790](41, 0xE100000000000000);
        MEMORY[0x231911790](v71, v72);
      }

      v55(v52, v18);
      (*(v34 + 8))(v68, v33);
      sub_230061918(v67, &unk_27DB15AA0);
      v55(v66, v18);
    }

    return v73;
  }
}

unint64_t sub_2300E8D3C()
{
  result = qword_27DB15298;
  if (!qword_27DB15298)
  {
    sub_23030EE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15298);
  }

  return result;
}

uint64_t DateComponents.nextDate(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v44 = sub_23030ED78();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030ED88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23030ED68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_23030EE08();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_23030E758();
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v21;
  v22 = *(v21 + 16);
  v45 = v23;
  v22(v20, v3);
  v48 = v20;
  sub_23030E5E8();
  if ((v24 & 1) == 0)
  {
    sub_23030E648();
    if ((v25 & 1) == 0)
    {
      sub_23030E628();
      if ((v26 & 1) == 0)
      {
        sub_23030E5F8();
        sub_23030E658();
      }
    }
  }

  v27 = v14;
  sub_23030EDC8();
  v28 = *MEMORY[0x277CC9878];
  v29 = *(v10 + 104);
  v38 = v9;
  v29(v12, v28, v9);
  v30 = v5;
  (*(v6 + 104))(v8, *MEMORY[0x277CC9900], v5);
  v32 = v39;
  v31 = v40;
  v33 = v44;
  (*(v39 + 104))(v40, *MEMORY[0x277CC98E8], v44);
  sub_23030EDD8();
  (*(v32 + 8))(v31, v33);
  (*(v6 + 8))(v8, v30);
  (*(v10 + 8))(v12, v38);
  (*(v41 + 8))(v27, v43);
  v34 = sub_23030EB58();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v17, 1, v34) == 1)
  {
    sub_230061918(v17, &unk_27DB15AA0);
    sub_23030EB48();
    return (*(v42 + 8))(v48, v45);
  }

  else
  {
    (*(v42 + 8))(v48, v45);
    return (*(v35 + 32))(v47, v17, v34);
  }
}

uint64_t DateComponents.fifteenMinuteBin.getter()
{
  v0 = sub_23030E6A8();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  result = sub_23030E6D8();
  if (v4)
  {
    return 0;
  }

  if ((v2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = __OFADD__(result / 15, 4 * v2);
  result = result / 15 + 4 * v2;
  if (v5)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t DateComponents.dayOfWeekWithCurrentCalendar.getter()
{
  v0 = sub_23030EE08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EDC8();
  v4 = DateComponents.dayOfWeek(with:)();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t DateComponents.dayOfWeek(with:)()
{
  v0 = sub_23030EDE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_23030E708();
  if (v12)
  {
    v13 = result;
    sub_23030ED98();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_230061918(v6, &unk_27DB15AA0);
      return v13;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      (*(v1 + 104))(v3, *MEMORY[0x277CC99B8], v0);
      v14 = sub_23030EDF8();
      (*(v1 + 8))(v3, v0);
      (*(v8 + 8))(v10, v7);
      return v14;
    }
  }

  return result;
}

uint64_t DateComponents.applying(other:)@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v36[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147E0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v36[-v11];
  sub_23030E728();
  v13 = sub_23030EE08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v10, 1, v13) == 1)
  {
    sub_23030E728();
    if (v15(v10, 1, v13) != 1)
    {
      sub_230061918(v10, &qword_27DB147E0);
    }
  }

  else
  {
    (*(v14 + 32))(v12, v10, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
  }

  sub_23030E748();
  v16 = sub_23030EE68();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v4, 1, v16) == 1)
  {
    sub_23030E748();
    if (v18(v4, 1, v16) != 1)
    {
      sub_230061918(v4, &qword_27DB147D8);
    }
  }

  else
  {
    (*(v17 + 32))(v6, v4, v16);
    (*(v17 + 56))(v6, 0, 1, v16);
  }

  v19 = sub_23030E698();
  if (v20)
  {
    v44 = sub_23030E698();
    v43 = v21;
  }

  else
  {
    v44 = v19;
    v43 = 0;
  }

  v22 = sub_23030E6B8();
  if (v23)
  {
    v42 = sub_23030E6B8();
    v41 = v24;
  }

  else
  {
    v42 = v22;
    v41 = 0;
  }

  v25 = sub_23030E6C8();
  if (v26)
  {
    v40 = sub_23030E6C8();
    v39 = v27;
  }

  else
  {
    v40 = v25;
    v39 = 0;
  }

  v28 = sub_23030E688();
  if (v29)
  {
    v38 = sub_23030E688();
    v37 = v30;
  }

  else
  {
    v38 = v28;
    v37 = 0;
  }

  v45 = v6;
  sub_23030E6A8();
  if (v31)
  {
    sub_23030E6A8();
  }

  sub_23030E6D8();
  if (v32)
  {
    sub_23030E6D8();
  }

  sub_23030E6E8();
  if (v33)
  {
    sub_23030E6E8();
  }

  sub_23030E5D8();
  if (v34)
  {
    sub_23030E5D8();
  }

  return sub_23030E718();
}

uint64_t RangeReplaceableCollection.apply(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v97 = a3;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v82 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v71 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v80 = sub_23030F808();
  v15 = *(v80 - 8);
  v16 = MEMORY[0x28223BE20](v80);
  v79 = &v71 - v17;
  v99 = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v98 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v100 = v9;
  v22 = &v71 - v21;
  v23 = swift_getAssociatedTypeWitness();
  v86 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v84 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v108 = &v71 - v26;
  v27 = type metadata accessor for Patch();
  v101 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v104 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v29;
  MEMORY[0x28223BE20](v28);
  v107 = &v71 - v30;
  v31 = *(*(a2 - 8) + 16);
  v102 = a2;
  v103 = a4;
  v32 = a4;
  v33 = v23;
  v31(v32, v5, a2);
  result = sub_23030FD78();
  if (!result)
  {
    return result;
  }

  v35 = 0;
  v95 = (v101 + 32);
  v96 = (v101 + 16);
  v91 = (v86 + 32);
  v94 = (v18 + 8);
  v77 = (v18 + 16);
  v76 = (v11 + 16);
  v75 = (v18 + 32);
  v74 = (v11 + 32);
  v90 = (v86 + 16);
  v73 = (v15 + 8);
  v92 = (v86 + 8);
  v93 = v27;
  v78 = a1;
  v89 = v22;
  v105 = v23;
  while (1)
  {
    v40 = sub_23030FD58();
    sub_23030FD08();
    if (v40)
    {
      result = (*(v101 + 16))(v107, a1 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v35, v27);
      v41 = v104;
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = sub_2303108C8();
      v41 = v104;
      if (v72 != 8)
      {
        goto LABEL_18;
      }

      v109 = result;
      (*v96)(v107, &v109, v27);
      result = swift_unknownObjectRelease();
      v42 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
LABEL_15:
        __break(1u);
        return result;
      }
    }

    (*v95)(v41, v107, v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v106 = v42;
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v36 = swift_getTupleTypeMetadata2();
    (*v91)(v108, &v41[*(v36 + 48)], v33);
    v37 = v98;
    sub_230310048();
    sub_230310068();
    v38 = *v94;
    v39 = v99;
    (*v94)(v37, v99);
    (*v90)(v84, v108, v33);
    sub_230310158();
    v38(v22, v39);
    (*v92)(v108, v33);
LABEL_4:
    v27 = v93;
    result = sub_23030FD78();
    ++v35;
    if (v106 == result)
    {
      return result;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v98;
    sub_230310048();
    sub_230310068();
    v45 = *v94;
    v46 = v99;
    (*v94)(v44, v99);
    v47 = v108;
    sub_230310168();
    (*v92)(v47, v33);
    v45(v22, v46);
    goto LABEL_4;
  }

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v49 = *(TupleTypeMetadata3 + 48);
  (*v91)(v108, &v41[*(TupleTypeMetadata3 + 64)], v33);
  v50 = v98;
  sub_230310048();
  sub_230310068();
  v51 = *v94;
  v52 = v99;
  (*v94)(v50, v99);
  result = sub_23030F7F8();
  if (result)
  {
    v53 = *v77;
    v87 = v51;
    v54 = v81;
    v53(v81, v22, v52);
    v55 = TupleTypeMetadata2;
    v53(&v54[*(TupleTypeMetadata2 + 48)], v89, v52);
    v56 = v82;
    (*v76)(v82, v54, v55);
    v57 = *(v55 + 48);
    v88 = v49;
    v58 = *v75;
    v59 = v79;
    (*v75)(v79, v56, v52);
    v60 = &v56[v57];
    v61 = v87;
    v87(v60, v52);
    (*v74)(v56, v54, v55);
    v62 = *(v55 + 48);
    v63 = v80;
    v58(&v59[*(v80 + 36)], &v56[v62], v52);
    v61(v56, v52);
    v64 = v61;
    sub_2300EA6EC(v105, v105);
    v65 = v86;
    swift_allocObject();
    v66 = sub_23030FCF8();
    (*(v65 + 16))(v67, v108, v105);
    sub_23030FDE8();
    v109 = v66;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_230310188();
    v68 = v59;
    v33 = v105;
    v69 = v63;
    v22 = v89;
    (*v73)(v68, v69);
    v64(v22, v52);
    v70 = *(v65 + 8);
    v70(v108, v33);
    v70(&v104[v88], v33);
    a1 = v78;
    goto LABEL_4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v111 = a3;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v120 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v90 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v81 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = sub_23030F808();
  v118 = *(v88 - 8);
  v14 = MEMORY[0x28223BE20](v88);
  v100 = &v81 - v15;
  v113 = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v92 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v81 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - v21;
  v114 = v9;
  v23 = swift_getAssociatedTypeWitness();
  v94 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v101 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v81 - v26;
  v28 = type metadata accessor for ExtendedPatch();
  v115 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v30;
  MEMORY[0x28223BE20](v29);
  v119 = &v81 - v32;
  v33 = *(*(a2 - 8) + 16);
  v116 = a2;
  v117 = a4;
  v33(a4, v5, a2);
  result = sub_23030FD78();
  if (result)
  {
    v35 = 0;
    v109 = (v115 + 32);
    v110 = (v115 + 16);
    v99 = (v94 + 32);
    v108 = (v16 + 8);
    v87 = (v16 + 16);
    v86 = (v120 + 16);
    v85 = (v16 + 32);
    v84 = (v120 + 32);
    v103 = (v94 + 16);
    v83 = (v118 + 8);
    v105 = (v94 + 8);
    v97 = v22;
    v106 = v31;
    v107 = v23;
    v120 = v27;
    v104 = v28;
    v98 = a1;
    while (1)
    {
      v40 = sub_23030FD58();
      sub_23030FD08();
      if (v40)
      {
        result = (*(v115 + 16))(v119, a1 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v35, v28);
      }

      else
      {
        result = sub_2303108C8();
        if (v82 != 8)
        {
          goto LABEL_22;
        }

        v121 = result;
        (*v110)(v119, &v121, v28);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v35, 1))
      {
        break;
      }

      (*v109)(v31, v119, v28);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v118 = v35 + 1;
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v102 = *(swift_getTupleTypeMetadata3() + 64);
          v47 = v112;
          sub_230310048();
          sub_230310068();
          v48 = *v108;
          v49 = v113;
          (*v108)(v47, v113);
          v50 = v92;
          sub_230310048();
          sub_230310068();
          v51 = v50;
          v22 = v97;
          v48(v51, v49);
          sub_230310168();
          (*v103)(v101, v120, v107);
          v31 = v106;
          sub_230310158();
          v52 = *v105;
          (*v105)(v120, v107);
          v53 = v47;
          v27 = v120;
          v48(v53, v49);
          v54 = v49;
          v23 = v107;
          v48(v22, v54);
          v28 = v104;
          v52(&v102[v31], v23);
        }

        else
        {
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v96 = *(TupleTypeMetadata3 + 48);
          (*v99)(v27, &v31[*(TupleTypeMetadata3 + 64)], v23);
          v56 = v112;
          sub_230310048();
          sub_230310068();
          v57 = *v108;
          v58 = v113;
          (*v108)(v56, v113);
          result = sub_23030F7F8();
          if ((result & 1) == 0)
          {
            goto LABEL_21;
          }

          v59 = *v87;
          v60 = v89;
          (*v87)(v89, v22, v58);
          v61 = TupleTypeMetadata2;
          v59(&v60[*(TupleTypeMetadata2 + 48)], v22, v58);
          v62 = *v86;
          v102 = v57;
          v63 = v90;
          v62(v90, v60, v61);
          v64 = *(v61 + 48);
          v65 = v58;
          v66 = *v85;
          v67 = v100;
          v95 = v35;
          v68 = v65;
          v66(v100, v63);
          v69 = &v63[v64];
          v70 = v102;
          (v102)(v69, v68);
          (*v84)(v63, v60, v61);
          v71 = *(v61 + 48);
          v23 = v107;
          v72 = v88;
          (v66)(&v67[*(v88 + 36)], &v63[v71], v68);
          v73 = v68;
          v74 = v68;
          v35 = v95;
          v70(v63, v73);
          sub_2300EA6EC(v23, v23);
          v75 = v94;
          swift_allocObject();
          v76 = sub_23030FCF8();
          (*(v75 + 16))(v77, v120, v23);
          v121 = sub_2300E9BC0(v76);
          sub_23030FDE8();
          swift_getWitnessTable();
          swift_getWitnessTable();
          v78 = v100;
          sub_230310188();
          v79 = v78;
          v22 = v97;
          (*v83)(v79, v72);
          (v102)(v22, v74);
          v80 = *(v75 + 8);
          v27 = v120;
          v80(v120, v23);
          v31 = v106;
          v80(&v106[v96], v23);
        }

        a1 = v98;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          v42 = v112;
          sub_230310048();
          sub_230310068();
          v43 = *v108;
          v44 = v42;
          v27 = v120;
          v45 = v113;
          (*v108)(v44, v113);
          sub_230310168();
          (*v105)(v27, v23);
          v46 = v45;
          v31 = v106;
          v43(v22, v46);
        }

        else
        {
          v36 = swift_getTupleTypeMetadata2();
          (*v99)(v27, &v31[*(v36 + 48)], v23);
          v37 = v112;
          sub_230310048();
          sub_230310068();
          v38 = *v108;
          v39 = v113;
          (*v108)(v37, v113);
          (*v103)(v101, v120, v23);
          v27 = v120;
          v31 = v106;
          sub_230310158();
          v38(v22, v39);
          (*v105)(v27, v23);
        }

        v28 = v104;
      }

      result = sub_23030FD78();
      ++v35;
      if (v118 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}