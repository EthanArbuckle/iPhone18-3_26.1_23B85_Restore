uint64_t sub_10010DB7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010DC18, 0, 0);
}

uint64_t sub_10010DC18()
{
  v115 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 48) = 0;
  v3 = sub_1000CEAB4(v2, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v3, (v0 + 40));
  swift_endAccess();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Checking for first unlock.", v6, 2u);
  }

  v7 = *(v0 + 152);

  v8 = MKBUserUnlockedSinceBoot();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 162);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v114 = v16;
      *v15 = 136446210;
      v17 = StaticString.description.getter();
      v19 = sub_1000A2E68(v17, v18, &v114);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v15, 0xCu);
      sub_1000A462C(v16);
    }

    v20 = 1;
  }

  else
  {
    if (v11)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v21, 2u);
    }

    v20 = 0;
  }

  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  sub_10010A23C(&qword_1001E3650, &qword_1001E3648, &unk_100143730);
  v22 = swift_allocError();
  *v23 = v20;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v22;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3648, &unk_100143730);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {
    v46 = *(v0 + 152);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v49, 2u);
    }

    v50 = *(v0 + 152);

    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    v52 = type metadata accessor for Logger();
    (*(*(v52 - 8) + 8))(v50, v52);
    v53 = *(v0 + 104);
    goto LABEL_44;
  }

  v24 = *(v0 + 104);

  *(v0 + 112) = v22;
  v25 = *(*(type metadata accessor for DataStore.DataStoreError(0) - 8) + 64) + 15;
  v26 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      v27 = *(v0 + 152);

      v28 = *v26;
      v29 = *v26;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 136);
        v33 = *(v0 + 144);
        v112 = v28;
        v34 = *(v0 + 162);
        v35 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v114 = v110;
        *v35 = 136446466;
        v36 = StaticString.description.getter();
        v38 = sub_1000A2E68(v36, v37, &v114);

        *(v35 + 4) = v38;
        v28 = v112;
        *(v35 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
        swift_allocError();
        *v39 = v112;
        swift_storeEnumTagMultiPayload();
        v40 = v29;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v108 = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "DaemonActivity %{public}s failed with unknown user: %{public}@", v35, 0x16u);
        sub_1000A5148(v108, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v110);
      }

      v42 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v43 = v28;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v44 = type metadata accessor for Logger();
      (*(*(v44 - 8) + 8))(v42, v44);

      v45 = *(v0 + 112);
LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v26);
  }

  v54 = *(v0 + 112);

  *(v0 + 120) = v22;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v68 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v68 = swift_allocError();
      *v96 = 0;
    }

    v97 = *(v0 + 152);
    swift_errorRetain();
    swift_errorRetain();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      swift_errorRetain();
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v102;
      *v101 = v102;
      _os_log_impl(&_mh_execute_header, v98, v99, "The preflight error %@ did not result in a TTR.", v100, 0xCu);
      sub_1000A5148(v101, &unk_1001E1820, &qword_100140020);
    }

    v103 = *(v0 + 152);

    sub_10010C040(v68);
    swift_willThrow();

    v104 = type metadata accessor for Logger();
    (*(*(v104 - 8) + 8))(v103, v104);
    v105 = *(v0 + 120);
    goto LABEL_44;
  }

  v55 = *(v0 + 120);

  *(v0 + 128) = v22;
  v56 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      v57 = *(v0 + 152);

      v59 = *v56;
      v58 = v56[1];

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v114 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1000A2E68(v59, v58, &v114);
        _os_log_impl(&_mh_execute_header, v60, v61, "askForTime response handling did not find ask request identifier %s", v62, 0xCu);
        sub_1000A462C(v63);
      }

      v64 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v65 = v59;
      v65[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v66 = type metadata accessor for Logger();
      (*(*(v66 - 8) + 8))(v64, v66);

      v67 = *(v0 + 128);
      goto LABEL_44;
    }

    sub_10010A020(v56);
  }

  v69 = *(v0 + 152);

  v70 = *(v0 + 128);

  swift_errorRetain();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);
    v75 = *(v0 + 162);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v114 = v78;
    *v76 = 136446466;
    v79 = StaticString.description.getter();
    v81 = sub_1000A2E68(v79, v80, &v114);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2114;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v76 + 14) = v82;
    *v77 = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "DaemonActivity %{public}s failed with: %{public}@.", v76, 0x16u);
    sub_1000A5148(v77, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v78);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v113 = *(v0 + 162);
    v83 = *(v0 + 152);
    v109 = *(v0 + 136);
    v111 = *(v0 + 144);
    v84 = *(*(sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000) - 8) + 64) + 15;
    v85 = swift_task_alloc();
    v86 = type metadata accessor for TaskPriority();
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
    v87 = type metadata accessor for Logger();
    v88 = *(v87 - 8);
    v89 = *(v88 + 64);
    v90 = swift_task_alloc();
    (*(v88 + 16))(v90, v83, v87);
    v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    (*(v88 + 32))(v92 + v91, v90, v87);
    v93 = v92 + ((v91 + v89 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v93 = v109;
    *(v93 + 8) = v111;
    *(v93 + 16) = v113;
    *(v92 + ((v91 + v89 + 31) & 0xFFFFFFFFFFFFFFF8)) = v22;

    swift_errorRetain();
    sub_1000A2630(0, 0, v85, &unk_100143740, v92);
  }

  v94 = *(v0 + 152);
  sub_10010C040(v22);
  swift_willThrow();

  v95 = type metadata accessor for Logger();
  (*(*(v95 - 8) + 8))(v94, v95);
LABEL_45:
  v106 = *(v0 + 8);

  return v106();
}

uint64_t sub_10010EAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010EAF0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_10010CC80(v2, v3, v5, v4);
}

uint64_t sub_10010EBB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_10010C8BC(v2, v3, v4, v5, v6);
}

uint64_t sub_10010EC78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_10010C55C(v2, v3, v4);
}

uint64_t sub_10010ED2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010EDC8, 0, 0);
}

uint64_t sub_10010EDC8()
{
  v115 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 48) = 0;
  v3 = sub_1000CEAB4(v2, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v3, (v0 + 40));
  swift_endAccess();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Checking for first unlock.", v6, 2u);
  }

  v7 = *(v0 + 152);

  v8 = MKBUserUnlockedSinceBoot();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 162);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v114 = v16;
      *v15 = 136446210;
      v17 = StaticString.description.getter();
      v19 = sub_1000A2E68(v17, v18, &v114);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v15, 0xCu);
      sub_1000A462C(v16);
    }

    v20 = 1;
  }

  else
  {
    if (v11)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v21, 2u);
    }

    v20 = 0;
  }

  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  sub_10010A23C(&qword_1001E3660, &qword_1001E3658, &qword_100143780);
  v22 = swift_allocError();
  *v23 = v20;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v22;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E3658, &qword_100143780);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {
    v46 = *(v0 + 152);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v49, 2u);
    }

    v50 = *(v0 + 152);

    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    v52 = type metadata accessor for Logger();
    (*(*(v52 - 8) + 8))(v50, v52);
    v53 = *(v0 + 104);
    goto LABEL_44;
  }

  v24 = *(v0 + 104);

  *(v0 + 112) = v22;
  v25 = *(*(type metadata accessor for DataStore.DataStoreError(0) - 8) + 64) + 15;
  v26 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      v27 = *(v0 + 152);

      v28 = *v26;
      v29 = *v26;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 136);
        v33 = *(v0 + 144);
        v112 = v28;
        v34 = *(v0 + 162);
        v35 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v114 = v110;
        *v35 = 136446466;
        v36 = StaticString.description.getter();
        v38 = sub_1000A2E68(v36, v37, &v114);

        *(v35 + 4) = v38;
        v28 = v112;
        *(v35 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
        swift_allocError();
        *v39 = v112;
        swift_storeEnumTagMultiPayload();
        v40 = v29;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v108 = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "DaemonActivity %{public}s failed with unknown user: %{public}@", v35, 0x16u);
        sub_1000A5148(v108, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v110);
      }

      v42 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v43 = v28;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v44 = type metadata accessor for Logger();
      (*(*(v44 - 8) + 8))(v42, v44);

      v45 = *(v0 + 112);
LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v26);
  }

  v54 = *(v0 + 112);

  *(v0 + 120) = v22;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v68 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v68 = swift_allocError();
      *v96 = 0;
    }

    v97 = *(v0 + 152);
    swift_errorRetain();
    swift_errorRetain();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      swift_errorRetain();
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v102;
      *v101 = v102;
      _os_log_impl(&_mh_execute_header, v98, v99, "The preflight error %@ did not result in a TTR.", v100, 0xCu);
      sub_1000A5148(v101, &unk_1001E1820, &qword_100140020);
    }

    v103 = *(v0 + 152);

    sub_10010C040(v68);
    swift_willThrow();

    v104 = type metadata accessor for Logger();
    (*(*(v104 - 8) + 8))(v103, v104);
    v105 = *(v0 + 120);
    goto LABEL_44;
  }

  v55 = *(v0 + 120);

  *(v0 + 128) = v22;
  v56 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      v57 = *(v0 + 152);

      v59 = *v56;
      v58 = v56[1];

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v114 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1000A2E68(v59, v58, &v114);
        _os_log_impl(&_mh_execute_header, v60, v61, "askForTime response handling did not find ask request identifier %s", v62, 0xCu);
        sub_1000A462C(v63);
      }

      v64 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v65 = v59;
      v65[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v66 = type metadata accessor for Logger();
      (*(*(v66 - 8) + 8))(v64, v66);

      v67 = *(v0 + 128);
      goto LABEL_44;
    }

    sub_10010A020(v56);
  }

  v69 = *(v0 + 152);

  v70 = *(v0 + 128);

  swift_errorRetain();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);
    v75 = *(v0 + 162);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v114 = v78;
    *v76 = 136446466;
    v79 = StaticString.description.getter();
    v81 = sub_1000A2E68(v79, v80, &v114);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2114;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v76 + 14) = v82;
    *v77 = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "DaemonActivity %{public}s failed with: %{public}@.", v76, 0x16u);
    sub_1000A5148(v77, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v78);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v113 = *(v0 + 162);
    v83 = *(v0 + 152);
    v109 = *(v0 + 136);
    v111 = *(v0 + 144);
    v84 = *(*(sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000) - 8) + 64) + 15;
    v85 = swift_task_alloc();
    v86 = type metadata accessor for TaskPriority();
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
    v87 = type metadata accessor for Logger();
    v88 = *(v87 - 8);
    v89 = *(v88 + 64);
    v90 = swift_task_alloc();
    (*(v88 + 16))(v90, v83, v87);
    v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    (*(v88 + 32))(v92 + v91, v90, v87);
    v93 = v92 + ((v91 + v89 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v93 = v109;
    *(v93 + 8) = v111;
    *(v93 + 16) = v113;
    *(v92 + ((v91 + v89 + 31) & 0xFFFFFFFFFFFFFFF8)) = v22;

    swift_errorRetain();
    sub_1000A2630(0, 0, v85, &unk_100143B38, v92);
  }

  v94 = *(v0 + 152);
  sub_10010C040(v22);
  swift_willThrow();

  v95 = type metadata accessor for Logger();
  (*(*(v95 - 8) + 8))(v94, v95);
LABEL_45:
  v106 = *(v0 + 8);

  return v106(0);
}

uint64_t sub_10010FC5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 163) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 162) = a3;
  *(v5 + 136) = a1;

  return _swift_task_switch(sub_10010FCF8, 0, 0);
}

uint64_t sub_10010FCF8()
{
  v115 = v0;
  *(v0 + 40) = 0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  *(v0 + 48) = 0;
  v3 = sub_1000CEAB4(v2, *(v0 + 162), &_mh_execute_header);
  swift_beginAccess();
  os_activity_scope_enter(v3, (v0 + 40));
  swift_endAccess();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Checking for first unlock.", v6, 2u);
  }

  v7 = *(v0 + 152);

  v8 = MKBUserUnlockedSinceBoot();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 162);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v114 = v16;
      *v15 = 136446210;
      v17 = StaticString.description.getter();
      v19 = sub_1000A2E68(v17, v18, &v114);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device does not have the simplified_agent feature flag enabled. ScreenTimeAgent shouldn't run the DaemonActivity for %{public}s", v15, 0xCu);
      sub_1000A462C(v16);
    }

    v20 = 1;
  }

  else
  {
    if (v11)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device has not been unlocked, and STAgent has been called. The caller will receive an error.", v21, 2u);
    }

    v20 = 0;
  }

  sub_1000A0F2C(&qword_1001E38A8, &qword_100143B18);
  sub_10010A23C(&qword_1001E38B0, &qword_1001E38A8, &qword_100143B18);
  v22 = swift_allocError();
  *v23 = v20;
  swift_willThrow();
  swift_beginAccess();
  os_activity_scope_leave((v0 + 40));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v0 + 104) = v22;
  swift_errorRetain();
  sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
  sub_1000A0F2C(&qword_1001E38A8, &qword_100143B18);
  if (swift_dynamicCast() && (*(v0 + 160) & 1) == 0)
  {
    v46 = *(v0 + 152);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "ScreenTimeAgent was started before first unlock. An error will be returned to our caller.", v49, 2u);
    }

    v50 = *(v0 + 152);

    swift_allocError();
    *v51 = 0;
    swift_willThrow();
    v52 = type metadata accessor for Logger();
    (*(*(v52 - 8) + 8))(v50, v52);
    v53 = *(v0 + 104);
    goto LABEL_44;
  }

  v24 = *(v0 + 104);

  *(v0 + 112) = v22;
  v25 = *(*(type metadata accessor for DataStore.DataStoreError(0) - 8) + 64) + 15;
  v26 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      v27 = *(v0 + 152);

      v28 = *v26;
      v29 = *v26;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 136);
        v33 = *(v0 + 144);
        v112 = v28;
        v34 = *(v0 + 162);
        v35 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v114 = v110;
        *v35 = 136446466;
        v36 = StaticString.description.getter();
        v38 = sub_1000A2E68(v36, v37, &v114);

        *(v35 + 4) = v38;
        v28 = v112;
        *(v35 + 12) = 2114;
        sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
        swift_allocError();
        *v39 = v112;
        swift_storeEnumTagMultiPayload();
        v40 = v29;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v41;
        *v108 = v41;
        _os_log_impl(&_mh_execute_header, v30, v31, "DaemonActivity %{public}s failed with unknown user: %{public}@", v35, 0x16u);
        sub_1000A5148(v108, &unk_1001E1820, &qword_100140020);

        sub_1000A462C(v110);
      }

      v42 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v43 = v28;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v44 = type metadata accessor for Logger();
      (*(*(v44 - 8) + 8))(v42, v44);

      v45 = *(v0 + 112);
LABEL_44:

      goto LABEL_45;
    }

    sub_10010A020(v26);
  }

  v54 = *(v0 + 112);

  *(v0 + 120) = v22;
  swift_errorRetain();
  if (swift_dynamicCast() && (*(v0 + 161) & 1) == 0)
  {

    if (qword_1001E7008)
    {
      v68 = qword_1001E7008;
    }

    else
    {
      sub_1000D3FA4();
      v68 = swift_allocError();
      *v96 = 0;
    }

    v97 = *(v0 + 152);
    swift_errorRetain();
    swift_errorRetain();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138412290;
      swift_errorRetain();
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v102;
      *v101 = v102;
      _os_log_impl(&_mh_execute_header, v98, v99, "The preflight error %@ did not result in a TTR.", v100, 0xCu);
      sub_1000A5148(v101, &unk_1001E1820, &qword_100140020);
    }

    v103 = *(v0 + 152);

    sub_10010C040(v68);
    swift_willThrow();

    v104 = type metadata accessor for Logger();
    (*(*(v104 - 8) + 8))(v103, v104);
    v105 = *(v0 + 120);
    goto LABEL_44;
  }

  v55 = *(v0 + 120);

  *(v0 + 128) = v22;
  v56 = swift_task_alloc();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      v57 = *(v0 + 152);

      v59 = *v56;
      v58 = v56[1];

      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v114 = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_1000A2E68(v59, v58, &v114);
        _os_log_impl(&_mh_execute_header, v60, v61, "askForTime response handling did not find ask request identifier %s", v62, 0xCu);
        sub_1000A462C(v63);
      }

      v64 = *(v0 + 152);
      sub_10010EAA8(&qword_1001E2A08, type metadata accessor for DataStore.DataStoreError);
      swift_allocError();
      *v65 = v59;
      v65[1] = v58;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v66 = type metadata accessor for Logger();
      (*(*(v66 - 8) + 8))(v64, v66);

      v67 = *(v0 + 128);
      goto LABEL_44;
    }

    sub_10010A020(v56);
  }

  v69 = *(v0 + 152);

  v70 = *(v0 + 128);

  swift_errorRetain();
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v74 = *(v0 + 136);
    v73 = *(v0 + 144);
    v75 = *(v0 + 162);
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v114 = v78;
    *v76 = 136446466;
    v79 = StaticString.description.getter();
    v81 = sub_1000A2E68(v79, v80, &v114);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2114;
    swift_errorRetain();
    v82 = _swift_stdlib_bridgeErrorToNSError();
    *(v76 + 14) = v82;
    *v77 = v82;
    _os_log_impl(&_mh_execute_header, v71, v72, "DaemonActivity %{public}s failed with: %{public}@.", v76, 0x16u);
    sub_1000A5148(v77, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v78);
  }

  if ((*(v0 + 163) & 1) == 0 && &class metadata base offset for TapToRadarService && &type metadata accessor for TapToRadarService && &nominal type descriptor for TapToRadarService && &type metadata for TapToRadarService)
  {
    v113 = *(v0 + 162);
    v83 = *(v0 + 152);
    v109 = *(v0 + 136);
    v111 = *(v0 + 144);
    v84 = *(*(sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000) - 8) + 64) + 15;
    v85 = swift_task_alloc();
    v86 = type metadata accessor for TaskPriority();
    (*(*(v86 - 8) + 56))(v85, 1, 1, v86);
    v87 = type metadata accessor for Logger();
    v88 = *(v87 - 8);
    v89 = *(v88 + 64);
    v90 = swift_task_alloc();
    (*(v88 + 16))(v90, v83, v87);
    v91 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    (*(v88 + 32))(v92 + v91, v90, v87);
    v93 = v92 + ((v91 + v89 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v93 = v109;
    *(v93 + 8) = v111;
    *(v93 + 16) = v113;
    *(v92 + ((v91 + v89 + 31) & 0xFFFFFFFFFFFFFFF8)) = v22;

    swift_errorRetain();
    sub_1000A2630(0, 0, v85, &unk_100143B20, v92);
  }

  v94 = *(v0 + 152);
  sub_10010C040(v22);
  swift_willThrow();

  v95 = type metadata accessor for Logger();
  (*(*(v95 - 8) + 8))(v94, v95);
LABEL_45:
  v106 = *(v0 + 8);

  return v106();
}

void sub_100110B8C()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
  v1 = __error();
  v2 = [NSString stringWithUTF8String:strerror(*v1)];
  [v3 handleFailureInFunction:v0 file:@"main.m" lineNumber:36 description:{@"Failed to set temporary directory: %@ (%d)", v2, *__error()}];
}

void sub_100110C4C()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"int main(int, const char * _Nonnull *)"];
  v1 = __error();
  v2 = [NSString stringWithUTF8String:strerror(*v1)];
  [v3 handleFailureInFunction:v0 file:@"main.m" lineNumber:37 description:{@"Failed to create temporary directory: %@ (%d)", v2, *__error()}];
}

void sub_100110EBC(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 138543618;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v4, 0x12u);
}

void sub_100110F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STAgentListenerDelegate.m" lineNumber:67 description:{@"Unexpected Mach service name %@", a3}];
}

void sub_100110FD0()
{
  sub_100006438();
  v4 = @"com.apple.private.contacts";
  v5 = v0;
  v6 = @"com.apple.private.contactsui";
  v7 = v0;
  v8 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have a required entitlement: any of %{public}@, %{public}@, %{public}@", v3, 0x2Au);
}

void sub_10011106C()
{
  sub_100006438();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have required %{public}@ entitlement", v2, 0x16u);
}

void sub_100111154(void *a1, NSObject *a2)
{
  v3 = 138543618;
  v4 = STAskMachServiceName;
  v5 = 1024;
  v6 = [a1 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v3, 0x12u);
}

void sub_1001111F8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Client %{public}@ does not have required %{public}@ entitlement", &v3, 0x16u);
}

void sub_100111280(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100011708();
  sub_10001173C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1001113C8()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100111580(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000116D8(&_mh_execute_header, a3, a3, "Could not deserialize incoming ask for time request: %{public}@", a2);
}

void sub_1001115D0()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001117AC(void *a1, NSObject *a2)
{
  v3 = [a1 payloadDictionary];
  sub_1000116CC();
  sub_1000116D8(&_mh_execute_header, a2, v4, "Could not deserialize incoming ask for time response: %@", v5);
}

void sub_100111878()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001118E8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000116D8(&_mh_execute_header, a3, a3, "Unable to get requested resouce name for request: %{public}@", a2);
}

void sub_100111AD8(id *a1, NSObject *a2)
{
  v3 = [*a1 payloadDictionary];
  sub_1000116CC();
  sub_1000116D8(&_mh_execute_header, a2, v4, "Could not deserialize incoming v2 ask response: %{public}@", v5);
}

void sub_100111B68(uint64_t *a1)
{
  v1 = *a1;
  sub_100011708();
  sub_10001173C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100111EC0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000116CC();
  sub_10001173C();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

void sub_100111FAC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) requestIdentifier];
  sub_1000116CC();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch catergory for resource identifier: %{public}@ with error: %{public}@", v6, 0x16u);
}

void sub_10011205C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000116CC();
  sub_10001173C();
  _os_log_fault_impl(v3, v4, OS_LOG_TYPE_FAULT, v5, v6, 0x16u);
}

void sub_100112148()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001121C4()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100112268(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize value to data: %{public}@", &v2, 0xCu);
}

void sub_1001122E0(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 valueClass];
  sub_100006438();
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to unarchive value of class: %{public}@ : %{public}@", v5, 0x16u);
}

void sub_100112370()
{
  sub_100006438();
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "Failed to unarchive value for key: %{public}@ : %{public}@", v1, 0x16u);
}

void sub_1001123E8()
{
  v3 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[STConcreteContactStorePrimitives numberOfContactsForOpaqueFamilyMember:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [v3 handleFailureInFunction:v0 file:@"STConcreteContactStorePrimitives.m" lineNumber:30 description:{@"expected FAFamilyMember got %@", v2}];
}

void sub_100112494(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get number of contacts: %{public}@", &v2, 0xCu);
}

void sub_1001128B4(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STConcreteIDSTransportPrimitives _sendData:toDestinations:options:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nprimativeIdentifierResult.type == STResultTypeFailure", &v1, 0xCu);
}

void sub_1001129AC()
{
  LODWORD(v2) = 136446722;
  *(&v2 + 4) = "[STConcreteIDSTransportPrimitives _sendOversizedData:toDestinations:sendOptions:]";
  sub_100019340();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed writing oversized data to url: %@, \nerror: %{public}@", v2, DWORD2(v2));
}

void sub_100112B1C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STConcreteIDSTransportPrimitives addObserver:forReachabilityChangesOfPrimitiveDestinations:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nUnable to add reachability observer. Observer is not delegate", &v1, 0xCu);
}

void sub_100112C14()
{
  v1 = 136446467;
  v2 = "[STConcreteIDSTransportPrimitives service:account:incomingData:fromID:context:]";
  sub_100019340();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nUnable to handle incoming message from: %{private}@", &v1, 0x16u);
}

void sub_100112C9C()
{
  LODWORD(v2) = 136446723;
  *(&v2 + 4) = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  sub_100019368(&_mh_execute_header, v0, v1, "[v2] %{public}s: \nFailed to read data from resourceURL: %{private}@, error: %{public}@", v2, DWORD2(v2));
}

void sub_100112D24(void *a1, NSObject *a2)
{
  [a1 fileSize];
  v3 = 136446466;
  v4 = "[STConcreteIDSTransportPrimitives service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to handle incoming resouce. File too large; %{public}llu bytes", &v3, 0x16u);
}

void sub_100112E34(uint64_t a1, NSObject *a2)
{
  objc_opt_class();
  sub_1000116CC();
  v4 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "handleConfigurationChange: Expected legacy configuration (NSDictionary) got: %{public}@", v5, 0xCu);
}

void sub_100113044(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Did invalidate service: %{public}@ error: %{public}@", &v3, 0x16u);
}

void sub_1001130CC(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection: Missing entitlement: %{private}@.", &v2, 0xCu);
}

void sub_1001131CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STConduit.m" lineNumber:53 description:{@"%@ must be invalidated before it's deallocated", a2}];
}

void sub_100113240(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STConduit.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_10011338C()
{
  objc_opt_class();
  sub_1000116CC();
  v1 = v0;
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100113418()
{
  objc_opt_class();
  sub_1000116CC();
  v1 = v0;
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001134A4()
{
  objc_opt_class();
  sub_1000116CC();
  v1 = v0;
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100113530()
{
  objc_opt_class();
  sub_1000116CC();
  v1 = v0;
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100113858(void *a1)
{
  v1 = [a1 dsid];
  sub_1000116CC();
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001138E4(void *a1)
{
  v1 = [a1 dsid];
  sub_1000116CC();
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001139F8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Unable to read settings configuration for user: %{public}@ - %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100113A74(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get communication configuration for child user: %{public}@", &v2, 0xCu);
}

void sub_100113AEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Failed to get downtime configuration for user: %{public}@", &v2, 0xCu);
}

void sub_100113B64(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138478083;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Failed to transform change: %{private}@ with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100113BDC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to transform changes: %{private}@ with error: %{public}@", &v3, 0x16u);
}

void sub_100113C64(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:72 description:@"Store being loaded must have a configuration"];
}

void sub_100113D40()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Failed to load store %{public}@: %{public}@", v2, 0x16u);
}

void sub_100113F64(void *a1)
{
  v1 = a1;
  v3 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STDaemonPersistenceController _loadLocalPersistentStore]_block_invoke"];
  [v3 handleFailureInFunction:v2 file:@"STDaemonPersistenceController.m" lineNumber:272 description:{@"Failed to load local persistent store: %@", v1}];
}

void sub_100114004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:284 description:{@"Failed to create data vault directory: %@", a3}];
}

void sub_100114078(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = __error();
  v6 = [NSString stringWithUTF8String:strerror(*v5)];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDaemonPersistenceController.m" lineNumber:287 description:{@"Failed to enable data vault: %@ (%d)", v6, *__error()}];
}

void sub_1001141FC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 changeIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Skipping core data change: %{public}@ - type is not Device State ", a1, 0xCu);
}

void sub_100114344(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write device: %{public}@ - %{public}@", &v4, 0x16u);
}

void sub_100114578()
{
  objc_opt_class();
  sub_1000116CC();
  v1 = v0;
  sub_100025118();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001146D4(void *a1)
{
  v1 = [a1 changeIdentifier];
  objc_opt_class();
  sub_1000116CC();
  v3 = v2;
  sub_100025118();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_100114778(char a1, char a2)
{
  if (a1)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v4 = v3;
  if (a2)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v11 = v5;
  sub_100025118();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100114934()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nError saving payload: %{public}@", v1, 0x16u);
}

void sub_1001149B4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 type];
  v7[0] = 136446722;
  sub_10001932C();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nError archiving payloadType: %{public}@, error: %{public}@", v7, 0x20u);
}

void sub_100114A68(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STEnqueuePayloadOperation main]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nNo family organization, ending without saving", &v1, 0xCu);
}

void sub_100114AEC()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nFailed to fetch local user: %{public}@", v1, 0x16u);
}

void sub_100114B6C(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STEventRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_100114BEC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to fetch local user: %{public}@", &v2, 0xCu);
}

void sub_100114C64()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114D88()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114DC4()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100114E00()
{
  sub_1000116F0();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001150AC(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Failed to fetch family members: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100115114(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Failed to fetch local user: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011524C(void *a1)
{
  v1 = [a1 error];
  sub_1000116CC();
  sub_100039824();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100115340(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 uniqueIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Local blueprint does not exist in checkin response: %@", a1, 0xCu);
}

void sub_1001155C0(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [sub_100039858() objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"None";
  }

  [v2 setObject:v5 forKeyedSubscript:@"identifier"];

  v6 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v6);

  v7 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v8 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v9);

  v10 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v10);

  v11 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v11);

  v12 = [v1 objectForKeyedSubscript:@"configurations"];
  v13 = v12;
  if (v12)
  {
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
    [v2 setObject:v14 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v2 setObject:&off_1001B21E8 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  sub_100039824();
  _os_log_fault_impl(v15, v16, v17, v18, v19, 0xCu);
}

void sub_1001157F0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v5 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v6 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v6);

  v7 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v7);

  v8 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v10 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v11 = [v2 objectForKeyedSubscript:@"configurations"];
  v12 = v11;
  if (v11)
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
    [v3 setObject:v13 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v3 setObject:&off_1001B21E8 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  sub_100039824();
  _os_log_fault_impl(v14, v15, v16, v17, v18, 0x16u);
}

void sub_100115AF0()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115B2C()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115B68()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100115BA4(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100011708();
  sub_100039864(&_mh_execute_header, v1, v2, "Found more than 1 user with the same apple id (%{public}@): %{public}@");
}

void sub_100115C0C(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Ignoring usage request from %{public}@, this user is not a parent", v3, v4, v5, v6, v7);
}

void sub_100115C74(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v1, v2, "Failed to save that all of %{public}@'s devices are new_usage: %{public}@");
}

void sub_100115CDC(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "Can't fulfill usage request, cannot find user with Apple ID: %{public}@", v3, v4, v5, v6, v7);
}

void sub_100116090()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011610C(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "Can't persist usage, cannot find user with Apple ID: %{public}@", v3, v4, v5, v6, v7);
}

void sub_1001161DC()
{
  sub_1000116F0();
  sub_1000397F4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100116350(void *a1)
{
  v1 = [a1 updatedObjects];
  sub_1000116CC();
  sub_100039824();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10011645C(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STFamilySettingsManager prepareSettingsPayloadsWithCompletion:]_block_invoke";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: \nFailed to fetch users: %{public}@", &v2, 0x16u);
}

void sub_100116550(void *a1, NSObject *a2)
{
  v3 = [a1 error];
  sub_1000116CC();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to handle family settings payload: %{public}@", v4, 0xCu);
}

void sub_100116B28(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STFetchUsageOperation.m" lineNumber:275 description:{@"Invalid parameter not satisfying: %@", @"reporter"}];
}

void sub_100116C08(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 directory];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to purge store at url: %{public}@ - with error: %{public}@", &v6, 0x16u);
}

void sub_100116DF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to read data from filepath: %{public}@  - file is too large. Removing file instead.", &v2, 0xCu);
}

void sub_100116E68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to remove oversized file at filepath: %{public}@", &v2, 0xCu);
}

void sub_100116F48(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_100026648(&_mh_execute_header, a2, a3, "Failed to find a regular file in directory: %{public}@ - with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1001173CC(void *a1, NSObject *a2)
{
  v3 = [a1 dsid];
  v4[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to resolve user alias: %{private}@", v4, 0x16u);
}

void sub_10011763C(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STIDSMessageTransport _sendAcknowledgementMessageForResponseIdentifier:toDestination:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s \nUnable to get return address", &v1, 0xCu);
}

void sub_1001177B8()
{
  v3[0] = 136446723;
  sub_100042CC8();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nReceived 'didDeliver' callback for message: \nprimitiveMessageIdentifier: %{private}@, \nprimitiveDestination: %{private}@", v3, 0x20u);
}

void sub_1001178B8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIDSTransport.m" lineNumber:80 description:{@"%@ must be invalidated before it's deallocated", a2}];
}

void sub_10011792C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STIDSTransport.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_1001179A8()
{
  sub_100019340();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100117AAC(id *a1, id *a2, NSObject *a3)
{
  v5 = [*a1 UUID];
  v6 = [*a2 error];
  v7 = 136446722;
  v8 = "[STIDSTransport sendPayload:]_block_invoke";
  v9 = 2112;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nSend payload operation error \npayloadUUID: %@ \nerror: %{public}@", &v7, 0x20u);
}

void sub_100117C08()
{
  sub_100019340();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100117C8C()
{
  v2 = 136446723;
  v3 = "[STIDSTransport service:account:identifier:didSendWithSuccess:error:context:]";
  sub_100019340();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naccount: %{private}@, \nidentifier: %{public}@ \ndidSendWithSuccess == NO", &v2, 0x20u);
}

void sub_100117D24()
{
  v3 = 136446722;
  v4 = "[STIDSTransport service:account:incomingResourceAtURL:fromID:context:]";
  sub_100019340();
  v5 = v0;
  v6 = v1;
  _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nCould not read data from URL %{public}@: %{public}@", &v3, 0x20u);
}

void sub_100117DB8(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 payloadType];
  v6[0] = 136446722;
  sub_100046898();
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "[local] %{public}s: \npayloadType: %@ \nFailed to generate payload data: %{public}@", v6, 0x20u);
}

void sub_100117E70(void *a1, NSObject *a2)
{
  v3 = [a1 payloadType];
  v4[0] = 136446466;
  sub_100046898();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[local] %{public}s: \nUnable to forward payload to local transport: service provided no destinations \npayloadType: %@,", v4, 0x16u);
}

void sub_100117F10(uint64_t a1, NSObject *a2)
{
  v2 = 136446466;
  v3 = "[STLocalIDSTransport service:account:incomingData:fromID:context:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[local] %{public}s: \nDid receive unrecognizable data, NSKeyedUnarchiver fail, error: %{public}@", &v2, 0x16u);
}

void sub_100118244(uint64_t a1)
{
  sub_100049A4C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100049A30(&_mh_execute_header, v1, v2, "Did delete web usage for %{public}@", v3, v4, v5, v6, v7);
}

void sub_1001182AC(void *a1)
{
  [a1 count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v1, v2, "Will delete web usage for multiple urls: %lu urls", v3, v4, v5, v6, v7);
}

void sub_100118324(uint64_t a1)
{
  [*(a1 + 32) count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v1, v2, "Did delete web usage for multiple urls: %lu urls", v3, v4, v5, v6, v7);
}

void sub_100118478(uint64_t a1)
{
  sub_100049A4C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100049A30(&_mh_execute_header, v1, v2, "Did delete web usage during %{public}@", v3, v4, v5, v6, v7);
}

void sub_1001185B0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STMessageTrackingTransportService sendMessage:toAddresses:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to send message: Could not generate return address.", &v1, 0xCu);
}

void sub_100118634(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136446723;
  *&v3[4] = "[STMessageTrackingTransportService sendMessage:toAddresses:]_block_invoke";
  *&v3[12] = 2113;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2114;
  sub_100019368(&_mh_execute_header, a2, a3, "[v2] %{public}s: \nFailed to send message: %{private}@ error: %{public}@", *v3, *&v3[8], *&v3[16], a2);
}

void sub_1001186C4()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to update ledger item to state: Sending - Missing ledger item for message identifier: %{public}@.", v1, 0x16u);
}

void sub_100118744(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = 136446723;
  sub_10004D7B0();
  sub_100019368(&_mh_execute_header, v2, v3, "[v2] %{public}s: Will not send message identifier: %{public}@ - to: %{private}@", v4);
}

void sub_1001187C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = @"Failed";
  *&v4[4] = "[STMessageTrackingTransportService transport:didSendMessageWithIdentifier:result:]";
  *v4 = 136446722;
  *&v4[12] = 2114;
  if (a1 == 2)
  {
    v3 = @"Sent";
  }

  *&v4[14] = v3;
  *&v4[22] = 2114;
  sub_100019368(&_mh_execute_header, a2, a3, "[v2] %{public}s: Failed to update ledger item to state: %{public}@ - Missing ledger item for message identifier: %{public}@.", *v4, *&v4[8], *&v4[16], a2);
}

void sub_100118868(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136446722;
  sub_10004D7B0();
  sub_100019368(&_mh_execute_header, v2, v3, "[v2] %{public}s: Did fail to send message identifier: %{public}@ error: %{public}@", v4);
}

void sub_1001188E8()
{
  v1[0] = 136446466;
  sub_10001932C();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v2] %{public}s: Failed to update ledger item to state: Delivered - Missing ledger item for message identifier: %{public}@.", v1, 0x16u);
}

void sub_100118968(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STPersistBlueprintsOperation is exiting; fetchLocalUserInContext received error %@", &v2, 0xCu);
}

void sub_1001189E0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save blueprints: %{public}@", &v2, 0xCu);
}

void sub_100118A58(void *a1, NSObject *a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [sub_100039858() objectForKeyedSubscript:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"None";
  }

  [v4 setObject:v7 forKeyedSubscript:@"identifier"];

  v8 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v8);

  v9 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v10 = [sub_100039858() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v11 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v11);

  v12 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v12);

  v13 = [sub_100039858() objectForKeyedSubscript:?];
  sub_100039800(v13);

  v14 = [v3 objectForKeyedSubscript:@"configurations"];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    [v4 setObject:v16 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v4 setObject:&off_1001B2278 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  v17 = 138543362;
  v18 = v4;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpectedly received local organization blueprint in payload. Ignoring blueprint: %{public}@", &v17, 0xCu);
}

void sub_100118C90(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v8 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v9 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v9);

  v10 = [sub_10003984C() objectForKeyedSubscript:?];
  sub_100039884(v10);

  v11 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v12 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v13 = [sub_10003984C() objectForKeyedSubscript:?];
  [sub_1000397E4() setObject:? forKeyedSubscript:?];

  v14 = [v5 objectForKeyedSubscript:@"configurations"];
  v15 = v14;
  if (v14)
  {
    v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 count]);
    [v6 setObject:v16 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  else
  {
    [v6 setObject:&off_1001B2278 forKeyedSubscript:@"NumberOfConfigurations"];
  }

  v17 = 138543618;
  v18 = a1;
  v19 = 2114;
  v20 = v6;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unknown organization class name in blueprint payload: %{public}@. Ignoring blueprint: %{public}@", &v17, 0x16u);
}

void sub_100118EF0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive genesis state store: %{public}@", &v2, 0xCu);
}

void sub_100118F68(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive genesis state store: %{public}@", &v2, 0xCu);
}

void sub_100118FE0(void *a1, void *a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"STPersistentHistoryCleanupManager.m" lineNumber:57 description:@"deleteHistoryRequest not initialized"];
}

void sub_100119044(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fetch history after date failed with error: %@", &v2, 0xCu);
}

void sub_1001190BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Fetch history after token failed with error: %@", &v2, 0xCu);
}

void sub_10011921C(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[STPersistentIDSMessageTransportMessageAddressMap _loadMessageAddressesByPrimitiveDestinationFromKeyValueStore:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to load message address map from key-value store.", &v1, 0xCu);
}

void sub_100119388(void *a1, NSObject *a2)
{
  v3 = [a1 userDSID];
  v4[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v2] %{public}s: \nFailed to resolve raw address for user: %{private}@", v4, 0x16u);
}

void sub_100119584()
{
  sub_10001932C();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100119680(os_log_t log)
{
  v1 = 136446210;
  v2 = "+[STPersistentIDSMessageTransportMessageIdentifierMap _loadMessageIdentifiersByPrimitiveIdentifierFromKeyValueStore:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[v2] %{public}s: \nOversized message identifier map was purged after previously purging it.", &v1, 0xCu);
}

void sub_100119704()
{
  sub_10001932C();
  sub_1000312A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100119800(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Enumerated item was not ledger item: %{public}@", &v2, 0xCu);
}

void sub_100119878(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000547A0(a1 a2)];
  v5 = [v4 absoluteString];
  *v3 = 138412290;
  *v2 = v5;
  sub_1000547B4(&_mh_execute_header, v6, v7, "Ignoring app %@ (no bundle identifier)");
}

void sub_100119960(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_1000116CC();
  sub_100054790();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001199EC(void *a1)
{
  v2 = [a1 displayName];
  v8 = [a1 bundleIdentifier];
  sub_100054790();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100119AA8()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Failed to get application record for %{public}@ %{public}@", v2, 0x16u);
}

void sub_100119B2C(uint64_t a1, uint64_t a2)
{
  v4 = [sub_1000547A0(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  sub_1000547B4(&_mh_execute_header, v5, v6, "Removing app: %@");
}

void sub_100119BF0(void *a1)
{
  [a1 count];
  sub_100054790();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100119CDC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STPersistUsageOperation.m" lineNumber:51 description:@"The specified moc doesn't match the moc of the user device state"];
}

void sub_100119EE4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 coreDuetIdentifier];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to persist fetched usage: %{public}@ %{public}@", &v6, 0x16u);
}

void sub_10011A114(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STXPCEventDispatcher.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_10011A1CC(uint64_t a1, void *a2)
{
  v2 = [a2 stream];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v3, v4, "Received event for %{public}s on stream %{public}@", v5, v6, v7, v8, v9);
}

void sub_10011A264(uint64_t a1, void *a2)
{
  v2 = [a2 stream];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v3, v4, "Dropping unhandled event for %{public}s on stream %{public}@", v5, v6, v7, v8, v9);
}

void sub_10011A2FC(void *a1, NSObject *a2)
{
  v3 = [a1 stream];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received event unknown event on stream %{public}@", &v4, 0xCu);
}

void sub_10011A398(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STXPCEventDispatcher.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

void sub_10011A59C(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Failed to fetch blueprints to deduplicate configurations: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011A604(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Failed to fetch blueprints: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011A66C(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "Failed to fetch blueprints to upgrade to version 2 categories: %{public}@", v2, 0xCu);
}

void sub_10011A6E0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STProcessPayloadQueueOperation main]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: \nStarted", &v1, 0xCu);
}

void sub_10011A764(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to save payloads: %{public}@", &v2, 0xCu);
}

void sub_10011A7DC(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STProcessPayloadQueueOperation _processPayloadQueue]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: \nFinished", &v1, 0xCu);
}

void sub_10011A860(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to fetch enqueued payloads: %{public}@", &v2, 0xCu);
}

void sub_10011AF6C(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "Failed to process message: %{public}@ - %{public}@");
}

void sub_10011AFD8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to process sent message: %{public}@ - %{public}@", &v4, 0x16u);
}

void sub_10011B060(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "Failed to process change %{public}@ - %{public}@");
}

void sub_10011B0CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 3)
  {
    v2 = *(&off_1001A5280 + v1);
  }

  sub_100011708();
  sub_100026648(&_mh_execute_header, v3, v4, "Failed to process directive. Ending background activity: %{public}@ - error: %{public}@");
}

void sub_10011B304(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "Failed to get current setup configuration for user: %{public}@ - %{public}@");
}

void sub_10011B41C(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[STReactorCore reactorDirectiveForSendingResponseForResult:downtimeConfigurationsByUserID:]");
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a1 processedDirective];
  v7 = [v6 data];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v2 handleFailureInFunction:v3 file:@"STReactorCore.m" lineNumber:131 description:{@"expected %@, got %@", v5, v9}];
}

void sub_10011B548()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B5F8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B6A8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B758()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B808()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B8B8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011B968()
{
  v13 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [sub_10006BB88(v4 v5];
}

void sub_10011BA30()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BAE0()
{
  v13 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [sub_10006BB88(v4 v5];
}

void sub_10011BBA8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BC58()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BD08()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BDB8()
{
  v1 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]"];
  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = sub_10006BB70();
  v5 = NSStringFromClass(v4);
  [sub_10006BB60() handleFailureInFunction:? file:? lineNumber:? description:?];
}

void sub_10011BE68(uint64_t *a1)
{
  v16 = +[NSAssertionHandler currentHandler];
  v2 = [NSString stringWithUTF8String:"[STReactorDirectiveProcessor processDirective:]_block_invoke"];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *a1;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [sub_10006BB88(v7 v8];
}

void sub_10011C3A8(void *a1)
{
  v1 = [a1 messages];
  [v1 count];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Processing status messages: %lu", v4, v5, v6, v7, v8);
}

void sub_10011C430(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 inReplyTo];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Ignoring status message: %{public}@", a1, 0xCu);
}

void sub_10011C510()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011C5E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100070FA4();
  sub_1000116FC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10011C73C(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sub_1000116CC();
  v3 = v2;
  sub_100014414(&_mh_execute_header, v4, v5, "%{public}@ : Finished", v6, v7, v8, v9, v10);
}

void sub_10011C7C4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011C834()
{
  v1[0] = 136446467;
  sub_100042CC8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{private}@ \nInvalid IDS device destination", v1, 0x16u);
}

void sub_10011C8B4(void *a1, NSObject *a2)
{
  v3 = [a1 address];
  v4 = 136446466;
  v5 = "[STResolveIDSDestinationsOperation _resolveDestinationsFromLocal]_block_invoke";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{public}@ \nInvalid IDS user destination", &v4, 0x16u);
}

void sub_10011C960(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 address];
  v7[0] = 136446723;
  sub_100042CC8();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \naddress: %{private}@, \nuserDSID: %{private}@ \nInvalid STCoreUser", v7, 0x20u);
}

void sub_10011CA14()
{
  v2[0] = 136446723;
  sub_100042CC8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to fetch user with altID: %{private}@, error: %{public}@", v2, 0x20u);
}

void sub_10011CAA4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STRestrictionsMigrator.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"features"}];
}

void sub_10011CB20()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CB5C()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011CBD8()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CCB0()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CD88()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011CED4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011D020()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011D16C()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011D1A8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve local user: %{public}@", &v3, 0xCu);
}

void sub_10011D224(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STDefaultUserPolicyApplicator.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"user.managedObjectContext"}];
}

void sub_10011D2A0(uint8_t *a1, void *a2, const __CFString **a3, NSObject *a4)
{
  v7 = [a2 unsignedIntValue] - 1;
  if (v7 > 3)
  {
    v8 = @"STDefaultUserPolicyNone";
  }

  else
  {
    v8 = off_1001A5858[v7];
  }

  *a1 = 138543362;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "\tFailed to apply %{public}@", a1, 0xCu);
}

void sub_10011D374(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "There was more than 1 user device state: %{public}@", &v2, 0xCu);
}

void sub_10011D3EC(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "There was an error fetching usage blocks: %{public}@", &v2, 0xCu);
}

void sub_10011D534()
{
  sub_1000116CC();
  sub_10008B948();
  sub_10001173C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void sub_10011D74C(void *a1)
{
  [a1 screenTimeEnabled];
  sub_100039834();
  sub_10008B93C();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
}

void sub_10011D920()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011DC0C(void *a1)
{
  v1 = [a1 name];
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Device name is now: %{private}@", v4, v5, v6, v7, v8);
}

void sub_10011E378(void *a1)
{
  v1 = [a1 error];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_10011E408()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E5E4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Device that is missing usage object also has no assigned user. Unable to add usage object to device. Device will be removed.", buf, 2u);
}

void sub_10011E6F4(id *a1)
{
  v1 = [*a1 familyError];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_10011E788()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E7C4()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011E868()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011EA44()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011EAB4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011EC6C()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011ECDC(void *a1)
{
  v1 = [a1 managingOrganization];
  objc_opt_class();
  sub_1000116CC();
  sub_100014414(&_mh_execute_header, v2, v3, "Fetching restrictions blueprint from organization: %@", v4, v5, v6, v7, v8);
}

void sub_10011ED64(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Fetching blueprints returned empty results: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011EDCC(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "Failed to fetch blueprints: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011EE34(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_100039864(&_mh_execute_header, v1, v2, "Failed to fetch user with dsid: %@, %{public}@");
}

void sub_10011EF70(uint64_t a1)
{
  sub_10000604C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "failed to update user device state: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011EFD8(uint64_t a1)
{
  sub_10000604C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "failed to fetch user: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011F0A8()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F0E4()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011F280()
{
  sub_100039834();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011F3D0(uint64_t a1)
{
  sub_10000604C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100011720(&_mh_execute_header, v1, v2, "Failed to fetch local user: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011F438()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F4DC()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F858()
{
  sub_1000116F0();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011F894(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "Cannot fetch or update location sharing modification value. Fetched user not in a family organization: %@", v3, v4, v5, v6, v7);
}

void sub_10011F8FC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1000116CC();
  sub_100039864(&_mh_execute_header, v3, v4, "Failed to fetch user with dsid: %@, %{public}@");
}

void sub_10011F9DC(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_10001173C();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);
}

void sub_10011FB44(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  sub_100039834();
  sub_10008B948();
  sub_100039864(&_mh_execute_header, v1, v2, "Failed to save locationSharingModificationAllowed value for user with dsid: %@: %{public}@");
}

void sub_10011FBB0(uint64_t *a1)
{
  sub_100039840(a1, __stack_chk_guard);
  v2 = *(v1 + 40);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v3, v4, "For fetching restrictions, failed to fetch actual dsid of local user: %{public}@", v5, v6, v7, v8, v9);
}

void sub_10011FC1C(uint64_t a1)
{
  sub_10000604C(a1, __stack_chk_guard);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v1, v2, "When retrieving communication safety state, failed to fetch user: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10011FC84()
{
  sub_1000116CC();
  sub_1000116FC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011FE94(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_100039834();
  sub_100006030(&_mh_execute_header, v2, v3, "Failed to fetch family circle for local user. Error: %{public}@", v4, v5, v6, v7, v8);
}

void sub_10011FF40(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  sub_1000116CC();
  sub_10008B93C();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void sub_10011FFD4(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STRemoteManagementRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_100120054(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

void sub_1001200D0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"destinations.count"}];
}

void sub_10012014C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STSendPayloadWithIDSTransportOperation.m" lineNumber:121 description:@"Missing fromID"];
}

void sub_1001201C0()
{
  v2[0] = 136446466;
  sub_10008D16C();
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[v1] %{public}s: \nFailed to write temporary file for IDS sendResourceAtURL \nerror: %{public}@", v2, 0x16u);
}

void sub_100120244()
{
  v2[0] = 136446466;
  sub_10008D16C();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to delete temporary file after IDS \nsendResourceAtURL: %{public}@", v2, 0x16u);
}

void sub_1001202C8(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [*(a1 + 32) payloadType];
  [a2 length];
  v7[0] = 136446722;
  sub_10008D16C();
  v8 = v5;
  v9 = 1024;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nReturnUUID is nil \nFailed to send data payloadType: %{public}@, size: %d bytes", v7, 0x1Cu);
}

void sub_100120398(uint64_t a1, NSObject *a2)
{
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot transform change identifier of type: %{public}@", &v4, 0xCu);
}

void sub_100120430(uint64_t a1)
{
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed STStatusRequest.initWithCoder: %{public}@", &v1, 0xCu);
}

void sub_1001204B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to update user device state: %{public}@", &v2, 0xCu);
}

void sub_10012059C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STTransportPayloadManager.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"!self.isInvalid"}];
}

void sub_10012068C()
{
  v2 = 136446722;
  sub_10001932C();
  sub_100019368(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to resolve destinations %{public}@: %{public}@", v2);
}

void sub_100120708(os_log_t log)
{
  v1 = 136446210;
  v2 = "[STTransportPayloadManager transport:didReceiveData:altURI:appleID:serverReceivedTime:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[v1] %{public}s: \nFailed to unarchive transport payload", &v1, 0xCu);
}

void sub_100120800()
{
  v2 = 136446722;
  sub_10001932C();
  sub_100019368(&_mh_execute_header, v0, v1, "[v1] %{public}s: \nFailed to resolve destinations %{public}@: %{public}@", v2);
}

void sub_1001208F0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to initialize payload: %{public}@", &v2, 0xCu);
}

void sub_1001209AC(void *a1, NSObject *a2)
{
  v3 = [a1 underlyingPayload];
  v5 = 138543362;
  v6 = objc_opt_class();
  v4 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create request for underlying payload: %{public}@", &v5, 0xCu);
}

void sub_100120A5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to update: %{public}@ for address: %{public}@", &v3, 0x16u);
}

void sub_100120E68()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:391 description:{@"Unexpected operation %@", v0}];
}

void sub_100120EE0()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:380 description:{@"Unexpected operation %@", v0}];
}

void sub_100120F58()
{
  sub_10009BB58();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"STUsageManager.m" lineNumber:369 description:{@"Unexpected operation %@", v0}];
}

void sub_100120FD0(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 object];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v4, v5, "Did receive notification %{public}@ for %{public}@", v6, v7, v8, v9, v10);
}

void sub_100121074(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [*(a1 + 32) object];
  sub_1000585FC();
  sub_100058614(&_mh_execute_header, v4, v5, "Did reset usage in response to %{public}@ for %{public}@", v6, v7, v8, v9, v10);
}

void sub_10012111C()
{
  sub_1000116CC();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Next weekly report rollup not scheduled: %{public}@ is already set, so %{public}@ is ignored", v2, 0x16u);
}

void sub_10012131C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "failed to post notification for notification “%{public}@”: %{public}@");
}

void sub_100121388(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "failed to post notification “%{public}@”: %{public}@");
}

void sub_1001213F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100011708();
  sub_100026648(&_mh_execute_header, v2, v3, "failed to remove notification for notification “%{public}@”: %{public}@");
}

void sub_100121460(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received unknown ask for time action %{public}@", &v2, 0xCu);
}

void sub_1001214D8(uint64_t a1, NSObject *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 2114;
  v5 = @"com.apple.private.screen-time.persistence";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting admin store connection from “%{public}@” without entitlement: %{public}@", &v2, 0x16u);
}

void sub_100121564(void *a1)
{
  v1 = [a1 identifier];
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome event for ask for time request: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1001215EC(void *a1)
{
  v1 = [a1 identifier];
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome event for ask for time response: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100121674(void *a1)
{
  v1 = [a1 identifier];
  sub_10009E2A0(&_mh_execute_header, v2, v3, "Failed to create biome child state for downtimeStateEvent: %{public}@", v4, v5, v6, v7, 2u);
}

void sub_1001217D4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler returning error: %{public}@", &v2, 0xCu);
}

void sub_10012184C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "STRegionRatings loadRegionRatingsDataWithCompletionHandler returning error: %{public}@", &v3, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}