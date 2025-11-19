uint64_t RemoteBrowsingClient.requestRemoteSyncableCounts(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v121 = *(v128 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v128, v5);
  v114 = v6;
  v115 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v127 = &v100 - v9;
  v126 = sub_1B4F64964();
  v119 = *(v126 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v126, v11);
  v118 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = &v100 - v15;
  v108 = sub_1B4F67BD4();
  v107 = *(v108 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108, v17);
  v106 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1B4F67BA4();
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105, v20);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D0, &qword_1B4F6CD38);
  v117 = *(v125 - 8);
  v22 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v125, v23);
  v124 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v113 = &v100 - v27;
  v109 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v129 = &v100 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D8, &qword_1B4F6CD40);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v100 - v36;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for ActivityTracer();
  v102 = __swift_project_value_buffer(v38, qword_1EB8F5550);
  (*(v33 + 16))(v37, a1, v32);
  v40 = *(v2 + 16);
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v132 = 220;
  v111 = v32;
  v122 = *(v39 + 32);
  v42 = sub_1B4F658E4();
  v123 = v42;
  v112 = v33;
  v43 = sub_1B4E21468(&qword_1EB8F44E0, &qword_1EB8F44D8, &qword_1B4F6CD40);
  v110 = v37;
  v44 = v43;
  v45 = sub_1B4E21468(&qword_1EB8F44E8, &qword_1EB8F44D8, &qword_1B4F6CD40);
  v122(&v132, v37, v32, v42, v44, v45, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v46 = swift_allocObject();
  *(v46 + 16) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v46 + 24) = 49;
  *(v46 + 32) = 2;
  v47 = v46;
  v48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v49 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestRemoteSyncableCounts", v48, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v50 = swift_allocObject();
  *(v50 + 44) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = 0;
  *(v47 + 40) = v50;
  v122 = v47;

  v51 = v102;
  sub_1B4F67BC4();
  v52 = v103;
  sub_1B4F67B84();
  v53 = v107;
  v54 = *(v107 + 16);
  v55 = v106;
  v56 = v108;
  v54(v106, v51, v108);
  v57 = type metadata accessor for Signpost();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v60 = swift_allocObject();
  v61 = v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v61 = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v61 + 8) = 49;
  *(v61 + 16) = 2;
  v62 = v104;
  v63 = v105;
  (*(v104 + 16))(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v52, v105);
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v54((v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v64 = swift_allocObject();
  *(v64 + 24) = 0;
  (*(v53 + 8))(v55, v56);
  (*(v62 + 8))(v52, v63);
  *(v64 + 16) = 0;
  v101 = v60;
  *(v60 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v64;
  v65 = v122;
  v131 = v122;
  v66 = sub_1B4F67F94();
  v108 = v66;
  v68 = v67;
  sub_1B4F64944();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v60;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68;
  v107 = v68;
  *(v69 + 48) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v69 + 56) = 49;
  *(v69 + 64) = 2;

  v70 = v127;
  sub_1B4F675F4();
  v71 = v117;
  v72 = *(v117 + 16);
  v105 = v117 + 16;
  v106 = v72;
  v74 = v124;
  v73 = v125;
  (v72)(v124, v129, v125);
  v104 = *(v71 + 80);
  v102 = v109 + ((v104 + 16) & ~v104);
  v75 = (v104 + 16) & ~v104;
  v103 = v75;
  v76 = swift_allocObject();
  v77 = *(v71 + 32);
  v100 = v71 + 32;
  v109 = v77;
  v77((v76 + v75), v74, v73);
  v78 = v121;
  v79 = v115;
  v80 = v128;
  (*(v121 + 16))(v115, v70, v128);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v82 = (v114 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (*(v78 + 32))(v83 + v81, v79, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E214E4;
  v84[1] = v76;
  v85 = v113;
  sub_1B4F675F4();
  v87 = v118;
  v86 = v119;
  v88 = v126;
  (*(v119 + 16))(v118, v130, v126);
  v89 = (*(v86 + 80) + 49) & ~*(v86 + 80);
  v90 = (v116 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  v92 = v107;
  *(v91 + 16) = v108;
  *(v91 + 24) = v92;
  *(v91 + 32) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v91 + 40) = 49;
  *(v91 + 48) = 2;
  (*(v86 + 32))(v91 + v89, v87, v88);
  *(v91 + v90) = v101;
  *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v122;
  v94 = v124;
  v93 = v125;
  (v106)(v124, v85, v125);
  v95 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v109(&v103[v96], v94, v93);
  v97 = (v96 + v95);
  *v97 = sub_1B4E21690;
  v97[1] = v91;

  sub_1B4F675F4();
  v98 = *(v71 + 8);
  v98(v85, v93);
  (*(v78 + 8))(v127, v128);
  (*(v86 + 8))(v130, v126);
  v98(v129, v93);
  (*(v112 + 8))(v110, v111);
}

void sub_1B4E1832C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v64 = a5;
  v65 = a6;
  v63 = a3;
  v67 = a9;
  v68 = a10;
  v72 = *MEMORY[0x1E69E9840];
  v14 = sub_1B4F64964();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  if (a2)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    (*(v15 + 16))(v23, a8, v14);

    sub_1B4DE3B04(a1, 1);
    v29 = sub_1B4F67C34();
    v30 = sub_1B4F685C4();

    sub_1B4DDC730(a1, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      state.opaque[0] = v62;
      *v31 = 136446978;
      *(v31 + 4) = sub_1B4DC4F88(v63, a4, &state);
      *(v31 + 12) = 2082;
      v32 = sub_1B4F689D4();
      v34 = sub_1B4DC4F88(v32, v33, &state);

      *(v31 + 14) = v34;
      *(v31 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v36 = v35;
      v37 = *(v15 + 8);
      v37(v19, v14);
      v37(v23, v14);
      *(v31 + 24) = v36;
      *(v31 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v39 = *(*(v70 - 8) + 64);
      v40 = MEMORY[0x1EEE9AC00](ErrorValue, v69);
      (*(v42 + 16))(&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_1B4F67F94();
      v45 = sub_1B4DC4F88(v43, v44, &state);

      *(v31 + 34) = v45;
      _os_log_impl(&dword_1B4DC2000, v29, v30, "[%{public}s] %{public}s ended in %fs -> %{public}s", v31, 0x2Au);
      v46 = v62;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v46, -1, -1);
      v47 = v31;
LABEL_10:
      MEMORY[0x1B8C831D0](v47, -1, -1);

      goto LABEL_13;
    }

    (*(v15 + 8))(v23, v14);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v48 = sub_1B4F67C54();
    __swift_project_value_buffer(v48, qword_1EDB70E18);
    (*(v15 + 16))(v27, a8, v14);

    v29 = sub_1B4F67C34();
    v49 = sub_1B4F685E4();

    if (os_log_type_enabled(v29, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      state.opaque[0] = v51;
      *v50 = 136446722;
      *(v50 + 4) = sub_1B4DC4F88(v63, a4, &state);
      *(v50 + 12) = 2082;
      v52 = sub_1B4F689D4();
      v54 = sub_1B4DC4F88(v52, v53, &state);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v56 = v55;
      v57 = *(v15 + 8);
      v57(v19, v14);
      v57(v27, v14);
      *(v50 + 24) = v56;
      _os_log_impl(&dword_1B4DC2000, v29, v49, "[%{public}s] %{public}s ended in %fs", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v51, -1, -1);
      v47 = v50;
      goto LABEL_10;
    }

    (*(v15 + 8))(v27, v14);
  }

LABEL_13:
  v58 = *(v67 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v58 + 24));
  sub_1B4DDF3A4((v58 + 16));
  os_unfair_lock_unlock((v58 + 24));
  v59 = *(v68 + 40);
  os_unfair_lock_lock((v59 + 44));
  if (*(v59 + 40) == 1)
  {
    v60 = *(v59 + 16);
    state = *(v59 + 24);
    os_activity_scope_leave(&state);
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 16) = v60;
    *(v59 + 40) = 0;
  }

  os_unfair_lock_unlock((v59 + 44));
  v61 = *MEMORY[0x1E69E9840];
}

void sub_1B4E18984(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C8, &unk_1B4F6CE80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45C8, &unk_1B4F6CE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45C8, &unk_1B4F6CE80);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E190B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C0, &qword_1B4F6CE78);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45C0, &qword_1B4F6CE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45C0, &qword_1B4F6CE78);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E197DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F4528, &qword_1B4F6CDD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F4528, &qword_1B4F6CDD8);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E19F08(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v64 = a5;
  v65 = a6;
  v63 = a3;
  v67 = a9;
  v68 = a10;
  v72 = *MEMORY[0x1E69E9840];
  v14 = sub_1B4F64964();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  if (a2)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    (*(v15 + 16))(v23, a8, v14);

    sub_1B4E219A8(a1, 1);
    v29 = sub_1B4F67C34();
    v30 = sub_1B4F685C4();

    sub_1B4DDACF4(a1, 1, MEMORY[0x1E69E7CF8]);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      state.opaque[0] = v62;
      *v31 = 136446978;
      *(v31 + 4) = sub_1B4DC4F88(v63, a4, &state);
      *(v31 + 12) = 2082;
      v32 = sub_1B4F689D4();
      v34 = sub_1B4DC4F88(v32, v33, &state);

      *(v31 + 14) = v34;
      *(v31 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v36 = v35;
      v37 = *(v15 + 8);
      v37(v19, v14);
      v37(v23, v14);
      *(v31 + 24) = v36;
      *(v31 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v39 = *(*(v70 - 8) + 64);
      v40 = MEMORY[0x1EEE9AC00](ErrorValue, v69);
      (*(v42 + 16))(&v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v40);
      v43 = sub_1B4F67F94();
      v45 = sub_1B4DC4F88(v43, v44, &state);

      *(v31 + 34) = v45;
      _os_log_impl(&dword_1B4DC2000, v29, v30, "[%{public}s] %{public}s ended in %fs -> %{public}s", v31, 0x2Au);
      v46 = v62;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v46, -1, -1);
      v47 = v31;
LABEL_10:
      MEMORY[0x1B8C831D0](v47, -1, -1);

      goto LABEL_13;
    }

    (*(v15 + 8))(v23, v14);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v48 = sub_1B4F67C54();
    __swift_project_value_buffer(v48, qword_1EDB70E18);
    (*(v15 + 16))(v27, a8, v14);

    v29 = sub_1B4F67C34();
    v49 = sub_1B4F685E4();

    if (os_log_type_enabled(v29, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      state.opaque[0] = v51;
      *v50 = 136446722;
      *(v50 + 4) = sub_1B4DC4F88(v63, a4, &state);
      *(v50 + 12) = 2082;
      v52 = sub_1B4F689D4();
      v54 = sub_1B4DC4F88(v52, v53, &state);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v56 = v55;
      v57 = *(v15 + 8);
      v57(v19, v14);
      v57(v27, v14);
      *(v50 + 24) = v56;
      _os_log_impl(&dword_1B4DC2000, v29, v49, "[%{public}s] %{public}s ended in %fs", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v51, -1, -1);
      v47 = v50;
      goto LABEL_10;
    }

    (*(v15 + 8))(v27, v14);
  }

LABEL_13:
  v58 = *(v67 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v58 + 24));
  sub_1B4DDF3A4((v58 + 16));
  os_unfair_lock_unlock((v58 + 24));
  v59 = *(v68 + 40);
  os_unfair_lock_lock((v59 + 44));
  if (*(v59 + 40) == 1)
  {
    v60 = *(v59 + 16);
    state = *(v59 + 24);
    os_activity_scope_leave(&state);
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 16) = v60;
    *(v59 + 40) = 0;
  }

  os_unfair_lock_unlock((v59 + 44));
  v61 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1A574(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45B8, &qword_1B4F6CE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45B8, &qword_1B4F6CE70);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1ACA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B0, &qword_1B4F6CE68);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45B0, &qword_1B4F6CE68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45B0, &qword_1B4F6CE68);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1B3CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A8, &qword_1B4F6CE60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45A8, &qword_1B4F6CE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45A8, &qword_1B4F6CE60);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1BAF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A0, &qword_1B4F6CE58);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F45A0, &qword_1B4F6CE58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F45A0, &qword_1B4F6CE58);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1C224(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4568, &qword_1B4F6CE18);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F4568, &qword_1B4F6CE18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F4568, &qword_1B4F6CE18);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1C950(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4558, &qword_1B4F6CE08);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F4558, &qword_1B4F6CE08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F4558, &qword_1B4F6CE08);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF3A4((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1D07C(void *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = a8;
  v67 = a6;
  v68 = a7;
  v66 = a4;
  v70 = a10;
  v71 = a11;
  v75 = *MEMORY[0x1E69E9840];
  v15 = sub_1B4F64964();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v64[-v23];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v64[-v27];
  if (a3)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v29 = sub_1B4F67C54();
    __swift_project_value_buffer(v29, qword_1EDB70E18);
    (*(v16 + 16))(v24, a9, v15);

    sub_1B4E218D4(a1, a2, 1);
    v30 = sub_1B4F67C34();
    v31 = sub_1B4F685C4();

    sub_1B4E21804(a1, a2, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v65 = v31;
      v33 = v32;
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v66, a5, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v37;
      *(v33 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v39 = v38;
      v40 = *(v16 + 8);
      v40(v20, v15);
      v40(v24, v15);
      *(v33 + 24) = v39;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v42 = *(*(v73 - 8) + 64);
      v43 = MEMORY[0x1EEE9AC00](ErrorValue, v72);
      (*(v45 + 16))(&v64[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)], v43);
      v46 = sub_1B4F67F94();
      v48 = sub_1B4DC4F88(v46, v47, &state);

      *(v33 + 34) = v48;
      _os_log_impl(&dword_1B4DC2000, v30, v65, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      v49 = v33;
LABEL_10:
      MEMORY[0x1B8C831D0](v49, -1, -1);

      goto LABEL_13;
    }

    (*(v16 + 8))(v24, v15);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    (*(v16 + 16))(v28, a9, v15);

    v30 = sub_1B4F67C34();
    v51 = sub_1B4F685E4();

    if (os_log_type_enabled(v30, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      state.opaque[0] = v53;
      *v52 = 136446722;
      *(v52 + 4) = sub_1B4DC4F88(v66, a5, &state);
      *(v52 + 12) = 2082;
      v54 = sub_1B4F689D4();
      v56 = sub_1B4DC4F88(v54, v55, &state);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v58 = v57;
      v59 = *(v16 + 8);
      v59(v20, v15);
      v59(v28, v15);
      *(v52 + 24) = v58;
      _os_log_impl(&dword_1B4DC2000, v30, v51, "[%{public}s] %{public}s ended in %fs", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v53, -1, -1);
      v49 = v52;
      goto LABEL_10;
    }

    (*(v16 + 8))(v28, v15);
  }

LABEL_13:
  v60 = *(v70 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v60 + 24));
  sub_1B4DDF3A4((v60 + 16));
  os_unfair_lock_unlock((v60 + 24));
  v61 = *(v71 + 40);
  os_unfair_lock_lock((v61 + 44));
  if (*(v61 + 40) == 1)
  {
    v62 = *(v61 + 16);
    state = *(v61 + 24);
    os_activity_scope_leave(&state);
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = v62;
    *(v61 + 40) = 0;
  }

  os_unfair_lock_unlock((v61 + 44));
  v63 = *MEMORY[0x1E69E9840];
}

void sub_1B4E1D6E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v77 = a7;
  v75 = a6;
  v73 = a4;
  v74 = a5;
  v72 = a2;
  v78 = a9;
  v79 = a8;
  v83 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v71 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4548, &qword_1B4F6CDF8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = (&v71 - v27);
  sub_1B4E21A90(a1, &v71 - v27, &qword_1EB8F4548, &qword_1B4F6CDF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4F67C54();
    __swift_project_value_buffer(v30, qword_1EDB70E18);
    v31 = v11;
    (*(v12 + 16))(v19, v77, v11);

    v32 = v29;
    v33 = sub_1B4F67C34();
    v34 = sub_1B4F685C4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      state.opaque[0] = v36;
      *v35 = 136446978;
      *(v35 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v35 + 12) = 2082;
      v37 = sub_1B4F689D4();
      v39 = v31;
      v40 = sub_1B4DC4F88(v37, v38, &state);

      *(v35 + 14) = v40;
      *(v35 + 22) = 2048;
      v41 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v39);
      v44(v19, v39);
      *(v35 + 24) = v43;
      *(v35 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v81 - 8) + 64);
      v47 = MEMORY[0x1EEE9AC00](ErrorValue, v80);
      (*(v49 + 16))(&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
      v50 = sub_1B4F67F94();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v35 + 34) = v52;
      _os_log_impl(&dword_1B4DC2000, v33, v34, "[%{public}s] %{public}s ended in %fs -> %{public}s", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v36, -1, -1);
      MEMORY[0x1B8C831D0](v35, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v19, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4F67C54();
    __swift_project_value_buffer(v53, qword_1EDB70E18);
    v54 = v11;
    (*(v12 + 16))(v23, v77, v11);

    v55 = sub_1B4F67C34();
    v56 = sub_1B4F685E4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      state.opaque[0] = v58;
      *v57 = 136446722;
      *(v57 + 4) = sub_1B4DC4F88(v72, a3, &state);
      *(v57 + 12) = 2082;
      v59 = sub_1B4F689D4();
      v61 = v54;
      v62 = sub_1B4DC4F88(v59, v60, &state);

      *(v57 + 14) = v62;
      *(v57 + 22) = 2048;
      v63 = v76;
      sub_1B4F64944();
      sub_1B4F648E4();
      v65 = v64;
      v66 = *(v12 + 8);
      v66(v63, v61);
      v66(v23, v61);
      *(v57 + 24) = v65;
      _os_log_impl(&dword_1B4DC2000, v55, v56, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v58, -1, -1);
      MEMORY[0x1B8C831D0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v23, v54);
    }

    sub_1B4DD2BC4(v28, &qword_1EB8F4548, &qword_1B4F6CDF8);
  }

  v67 = *(v79 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v67 + 24));
  sub_1B4DDF388((v67 + 16));
  os_unfair_lock_unlock((v67 + 24));
  v68 = *(v78 + 40);
  os_unfair_lock_lock((v68 + 44));
  if (*(v68 + 40) == 1)
  {
    v69 = *(v68 + 16);
    state = *(v68 + 24);
    os_activity_scope_leave(&state);
    *(v68 + 24) = 0;
    *(v68 + 32) = 0;
    *(v68 + 16) = v69;
    *(v68 + 40) = 0;
  }

  os_unfair_lock_unlock((v68 + 44));
  v70 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B4E1E108(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C8, &unk_1B4F6CE80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4208, &qword_1B4F6CC28);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45C8, &unk_1B4F6CE80);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1E31C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C0, &qword_1B4F6CE78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45C0, &qword_1B4F6CE78);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1E530(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F4528, &qword_1B4F6CDD8);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

void sub_1B4E1E744(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v21 - v16;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v18 = a1;
    a5(&v21);
    sub_1B4DDC730(a1, 1);
  }

  else
  {
    a3(v15);
    v19 = sub_1B4F67654();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_1B4E219CC, v20);

    (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_1B4E1E8E4(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45B8, &qword_1B4F6CE70);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1EAF8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B0, &qword_1B4F6CE68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43E8, &qword_1B4F6CCE0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45B0, &qword_1B4F6CE68);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1ED0C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A8, &qword_1B4F6CE60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F0, &qword_1B4F6CCE8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45A8, &qword_1B4F6CE60);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1EF20(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A0, &qword_1B4F6CE58);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D0, &qword_1B4F6CD38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F45A0, &qword_1B4F6CE58);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

void sub_1B4E1F134(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v24 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4590, &qword_1B4F6CE48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v24 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4598, &qword_1B4F6CE50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v24 - v19;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v21 = a1;
    v24(v14);
    sub_1B4DD2BC4(v14, &qword_1EB8F4590, &qword_1B4F6CE48);
  }

  else
  {
    v25 = a1;

    a3(&v25);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v24;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    (*(v16 + 8))(v20, v15);
    sub_1B4DDACF4(a1, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1B4E1F374(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4568, &qword_1B4F6CE18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4560, &qword_1B4F6CE10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F4568, &qword_1B4F6CE18);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1F588(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4558, &qword_1B4F6CE08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F4558, &qword_1B4F6CE08);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

void sub_1B4E1F79C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v21 - v16;
  if (a2)
  {
    v22 = a1;
    v23 = 0;
    v24 = 1;
    v18 = a1;
    a5(&v22);
    sub_1B4E21804(v22, v23, v24);
  }

  else
  {
    a3(v15);
    v19 = sub_1B4F67654();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v19(sub_1B4E21D6C, v20);

    (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_1B4E1F93C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4548, &qword_1B4F6CDF8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F4548, &qword_1B4F6CDF8);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_1B4E1FB50(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4530, &qword_1B4F6CDE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v26 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4538, &qword_1B4F6CDE8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v26 - v20;
  if (a2)
  {
    *v14 = a1;
    swift_storeEnumTagMultiPayload();
    v22 = a1;
    v27(v14);
    return sub_1B4DD2BC4(v14, &qword_1EB8F4530, &qword_1B4F6CDE0);
  }

  else
  {
    a3(v19);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(v25 + 24) = a6;

    v24(sub_1B4E21D2C, v25);

    return (*(v16 + 8))(v21, v15);
  }
}

void sub_1B4E1FD64(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v26[1] = a3;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v26 - v9;
  v11 = sub_1B4F66354();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (v26 - v20);
  sub_1B4E21A90(a1, v26 - v20, &qword_1EB8F4528, &qword_1B4F6CDD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v21;
    v22 = v31;
    v32 = 1;
    v23 = v31;
    v29(&v31);
  }

  else
  {
    (*(v12 + 32))(v16, v21, v11);
    v27(v16);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v29;
    *(v25 + 24) = v30;

    v24(sub_1B4DDDFD0, v25);

    (*(v28 + 8))(v10, v6);
    (*(v12 + 8))(v16, v11);
  }
}

void sub_1B4E20044(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v26 = a3;
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - v9;
  v11 = sub_1B4F651C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4510, &qword_1B4F6CDC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (&v26 - v20);
  sub_1B4E21A90(a1, &v26 - v20, &qword_1EB8F4510, &qword_1B4F6CDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v21;
    v22 = v31;
    v32 = 0;
    v33 = 1;
    v23 = v31;
    v29(&v31);

    sub_1B4E21804(v31, v32, v33);
  }

  else
  {
    (*(v12 + 32))(v16, v21, v11);
    v27(v16);
    v24 = sub_1B4F67654();
    v25 = swift_allocObject();
    *(v25 + 16) = v29;
    *(v25 + 24) = v30;

    v24(sub_1B4E21D6C, v25);

    (*(v28 + 8))(v10, v6);
    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1B4E20328(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v32[1] = a3;
  v33 = a2;
  v36 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4518, &qword_1B4F6CDC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v32 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4520, &qword_1B4F6CDD0);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v32 - v13;
  v15 = sub_1B4F651C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4510, &qword_1B4F6CDC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (v32 - v24);
  sub_1B4E21A90(v36, v32 - v24, &qword_1EB8F4510, &qword_1B4F6CDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    *v9 = *v25;
    swift_storeEnumTagMultiPayload();
    v27 = v26;
    v37(v9);

    return sub_1B4DD2BC4(v9, &qword_1EB8F4518, &qword_1B4F6CDC8);
  }

  else
  {
    (*(v16 + 32))(v20, v25, v15);
    v33(v20);
    v29 = v35;
    v30 = sub_1B4F67654();
    v31 = swift_allocObject();
    *(v31 + 16) = v37;
    *(v31 + 24) = v38;

    v30(sub_1B4E21830, v31);

    (*(v34 + 8))(v14, v29);
    return (*(v16 + 8))(v20, v15);
  }
}

void sub_1B4E20674(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(id *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  if (a2)
  {
    v21 = a1;
    v22 = 0;
    v23 = 1;
    v17 = a1;
    a5(&v21);
    sub_1B4E21804(v21, v22, v23);
  }

  else
  {
    v21 = a1;

    a3(&v21);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4E21810, v19);

    (*(v12 + 8))(v16, v11);
    sub_1B4DDACF4(a1, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1B4E20844(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1B4E20A40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_1B4E20AB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = 19;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F67474();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D38, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CD0F0], MEMORY[0x1E69CD0F8]);

  v16 = a1;
  v15 = 20;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1B4F67284();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D3C, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CCF78], MEMORY[0x1E69CCF80]);

  v16 = a1;
  v15 = 27;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F674B4();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D40, v11, ObjectType, v12, &protocol witness table for XPCClient, MEMORY[0x1E69CD158], MEMORY[0x1E69CD160]);

  v16 = a1;
  v15 = 21;
  v13 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v15, sub_1B4E21D1C, v13, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E20D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC76FC(a1, a2, a3, v13, a5, a6, a7);
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

unint64_t sub_1B4E21010()
{
  result = qword_1EB8F42F0;
  if (!qword_1EB8F42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F42F0);
  }

  return result;
}

unint64_t sub_1B4E21094()
{
  result = qword_1EB8F42F8;
  if (!qword_1EB8F42F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E21118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F42F8);
  }

  return result;
}

unint64_t sub_1B4E21118()
{
  result = qword_1EB8F4300;
  if (!qword_1EB8F4300)
  {
    sub_1B4F66674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4300);
  }

  return result;
}

uint64_t sub_1B4E213A0(uint64_t a1, uint64_t (*a2)(void, void, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4E21468(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B4E214B0(void (*a1)(void), uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  sub_1B4F51BD0(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t sub_1B4E214F8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_1B4F64964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1B4E216A8(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1B4E21804(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B4DD2B70(a1, a2);
  }
}

uint64_t sub_1B4E21870(__int128 *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

id sub_1B4E218D4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B4DD3014(a1, a2);
  }
}

id sub_1B4E219A8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1B4E219CC(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_1B4E21A44(uint64_t a1)
{
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  (*(v1 + 16))();
  return v5(a1);
}

uint64_t sub_1B4E21A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B4E21B10(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t sub_1B4E21CBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E21DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4DDED70;

  return WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(a1, a2, a3, a4, a5, a6);
}

uint64_t WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  v7[25] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  v7[32] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v10 = sub_1B4F666C4();
  v7[39] = v10;
  v11 = *(v10 - 8);
  v7[40] = v11;
  v12 = *(v11 + 64) + 15;
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v13 = sub_1B4F66484();
  v7[43] = v13;
  v14 = *(v13 - 8);
  v7[44] = v14;
  v15 = *(v14 + 64) + 15;
  v7[45] = swift_task_alloc();
  v16 = sub_1B4F67074();
  v7[46] = v16;
  v17 = *(v16 - 8);
  v7[47] = v17;
  v18 = *(v17 + 64) + 15;
  v7[48] = swift_task_alloc();
  v19 = sub_1B4F649E4();
  v7[49] = v19;
  v20 = *(v19 - 8);
  v7[50] = v20;
  v21 = *(v20 + 64) + 15;
  v7[51] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D8, &qword_1B4F6CF80) - 8) + 64) + 15;
  v7[52] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v7[53] = v23;
  v24 = *(v23 - 8);
  v7[54] = v24;
  v25 = *(v24 + 64) + 15;
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v26 = sub_1B4F66874();
  v7[57] = v26;
  v27 = *(v26 - 8);
  v7[58] = v27;
  v28 = *(v27 + 64) + 15;
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E22240, 0, 0);
}

uint64_t sub_1B4E22240()
{
  v1 = v0[56];
  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[30];
  v7 = *(v6 + 16);
  v0[64] = v7;
  v0[65] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xAB2E000000000000;
  v7(v3);
  v8 = v0[11];
  v9 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F6CF50;
  *(inited + 32) = v5;
  *(inited + 40) = v4;

  v11 = sub_1B4E2A75C(inited);
  swift_setDeallocating();
  sub_1B4E2A8C4(inited + 32);
  (*(v9 + 232))(v11, v8, v9);

  v12 = swift_task_alloc();
  v0[66] = v12;
  *(v12 + 16) = "SeymourClient/WorkoutPlanScheduleConflictQuerying.swift";
  *(v12 + 24) = 55;
  *(v12 + 32) = 2;
  *(v12 + 40) = 24;
  *(v12 + 48) = v1;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  v0[67] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v0[68] = v15;
  *v14 = v0;
  v14[1] = sub_1B4E22448;

  return MEMORY[0x1EEE6DE38](v0 + 23, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E2A918, v12, v15);
}

uint64_t sub_1B4E22448()
{
  v2 = *v1;
  v3 = (*v1)[67];
  v11 = *v1;
  (*v1)[69] = v0;

  v4 = v2[66];
  if (v0)
  {

    v5 = sub_1B4E22B50;
  }

  else
  {
    v6 = v2[56];
    v7 = v2[53];
    v8 = v2[54];
    v2[70] = v2[23];

    v9 = *(v8 + 8);
    v2[71] = v9;
    v2[72] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 8);
    v5 = sub_1B4E225B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4E225B4()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[52];
  sub_1B4E24444(v0[70], MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C0], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v0[52], &qword_1EB8F45D8, &qword_1B4F6CF80);
    v4 = sub_1B4F64F54();
    sub_1B4E2CB3C(&qword_1EB8F45F8, MEMORY[0x1E69CB148]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB138], v4);
    swift_willThrow();
    v7 = v0[62];
    v6 = v0[63];
    v8 = v0[60];
    v9 = v0[61];
    v10 = v0[59];
    v12 = v0[55];
    v11 = v0[56];
    v14 = v0[51];
    v13 = v0[52];
    v15 = v0[48];
    v48 = v0[45];
    v50 = v0[42];
    v52 = v0[41];
    v54 = v0[38];
    v56 = v0[37];
    v58 = v0[36];
    v60 = v0[35];
    v62 = v0[34];
    v64 = v0[33];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[69];
    v19 = v0[63];
    v20 = v0[57];
    v21 = v0[58];
    v23 = v0[51];
    v22 = v0[52];
    v24 = v0[49];
    v25 = v0[50];
    v26 = v0[27];
    v27 = v0[28];
    v28 = v0[25];
    v29 = v0[26];
    v30 = *(v21 + 32);
    v0[73] = v30;
    v0[74] = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v19, v22, v20);
    (*(v25 + 104))(v23, *MEMORY[0x1E6969A48], v24);
    v31 = sub_1B4F64E74();
    (*(v25 + 8))(v23, v24);

    v32 = sub_1B4E2AD30(v31, v29, v26);
    v0[75] = v32;

    if (v32[2])
    {
      v33 = v0[31];
      (*(v0[30] + 8))(v0[29]);
      v34 = v0[16];
      v35 = v0[17];
      __swift_project_boxed_opaque_existential_1(v0 + 13, v34);
      v66 = (*(v35 + 280) + **(v35 + 280));
      v36 = *(*(v35 + 280) + 4);
      v37 = swift_task_alloc();
      v0[76] = v37;
      *v37 = v0;
      v37[1] = sub_1B4E22CC8;

      return v66(v34, v35);
    }

    else
    {

      v38 = v0[62];
      v40 = v0[60];
      v39 = v0[61];
      v41 = v0[59];
      v42 = v0[56];
      v43 = v0[55];
      v45 = v0[51];
      v44 = v0[52];
      v49 = v0[48];
      v51 = v0[45];
      v53 = v0[42];
      v55 = v0[41];
      v57 = v0[38];
      v59 = v0[37];
      v61 = v0[36];
      v63 = v0[35];
      v65 = v0[34];
      v67 = v0[33];
      (*(v0[58] + 8))(v0[63], v0[57]);

      v46 = v0[1];
      v47 = MEMORY[0x1E69E7CD0];

      return v46(v47);
    }
  }
}

uint64_t sub_1B4E22B50()
{
  (*(v0[54] + 8))(v0[56], v0[53]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v22 = v0[69];
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[59];
  v7 = v0[55];
  v6 = v0[56];
  v9 = v0[51];
  v8 = v0[52];
  v10 = v0[48];
  v13 = v0[45];
  v14 = v0[42];
  v15 = v0[41];
  v16 = v0[38];
  v17 = v0[37];
  v18 = v0[36];
  v19 = v0[35];
  v20 = v0[34];
  v21 = v0[33];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B4E22CC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 608);
  v8 = *v2;
  v3[77] = a1;
  v3[78] = v1;

  if (v1)
  {
    v5 = v3[75];

    v6 = sub_1B4E24298;
  }

  else
  {
    v6 = sub_1B4E22DE8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B4E22DE8()
{
  v1 = v0[77];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[40];
  v5 = sub_1B4E2AEFC(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v102 = v2;
  v111 = (v4 + 32);
  v108 = v3;
  v109 = (v3 + 8);
  v97 = (v2 + 8);
  v99 = v4;
  v104 = v1;

  v19 = 0;
  v110 = v0;
  v94 = v10;
  v95 = v1 + 56;
  while (v9)
  {
    v20 = v19;
LABEL_11:
    v21 = v0[45];
    v23 = v0[41];
    v22 = v0[42];
    v24 = v0[39];
    (*(v102 + 16))(v0[48], *(v104 + 48) + *(v102 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v0[46]);
    sub_1B4F67064();
    sub_1B4F67054();
    v25 = *v111;
    (*v111)(v23, v22, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v5;
    v11 = sub_1B4DF43BC(v21);
    v27 = v5[2];
    v28 = (v12 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_53;
    }

    v31 = v12;
    v106 = v25;
    if (v5[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v11;
        sub_1B4E28860();
        v11 = v42;
        v5 = v114;
      }
    }

    else
    {
      v32 = v0[45];
      sub_1B4E26A6C(v30, isUniquelyReferenced_nonNull_native);
      v11 = sub_1B4DF43BC(v32);
      if ((v31 & 1) != (v33 & 1))
      {
        v92 = v0[43];

        return sub_1B4F68DB4();
      }
    }

    v9 &= v9 - 1;
    v113 = v0[48];
    v35 = v0[45];
    v34 = v0[46];
    v36 = v0[43];
    v37 = v0[41];
    v38 = v0[39];
    if (v31)
    {
      (*(v99 + 40))(v5[7] + *(v99 + 72) * v11, v0[41], v0[39]);
      (*v109)(v35, v36);
      v11 = (*v97)(v113, v34);
    }

    else
    {
      v5[(v11 >> 6) + 8] |= 1 << v11;
      v39 = v11;
      (*(v108 + 16))(v5[6] + *(v108 + 72) * v11, v35, v36);
      v106(v5[7] + *(v99 + 72) * v39, v37, v38);
      (*(v108 + 8))(v35, v36);
      v11 = (*v97)(v113, v34);
      v40 = v5[2];
      v29 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v29)
      {
        goto LABEL_54;
      }

      v5[2] = v41;
    }

    v19 = v20;
    v0 = v110;
    v10 = v94;
    v6 = v95;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v20 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v43 = v0[78];
  v44 = v0[77];
  v45 = v0[75];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  v46 = sub_1B4E2B674(v45, v5);
  v0[79] = v46;
  swift_bridgeObjectRelease_n();

  v47 = v46[2];
  v48 = MEMORY[0x1E69E7CC0];
  if (!v47)
  {
LABEL_40:
    v83 = v0[65];
    v84 = v0[55];
    v85 = v0[31];
    (v0[64])(v0[29], v0[30]);
    v86 = v0[21];
    v87 = v0[22];
    __swift_project_boxed_opaque_existential_1(v0 + 18, v86);
    v88 = sub_1B4DF2208(v48);

    (*(v87 + 232))(v88, v86, v87);

    v89 = swift_task_alloc();
    v0[80] = v89;
    *(v89 + 16) = "SeymourClient/WorkoutPlanScheduleConflictQuerying.swift";
    *(v89 + 24) = 55;
    *(v89 + 32) = 2;
    *(v89 + 40) = 46;
    *(v89 + 48) = v84;
    v90 = *(MEMORY[0x1E69E8920] + 4);
    v91 = swift_task_alloc();
    v0[81] = v91;
    *v91 = v0;
    v91[1] = sub_1B4E23634;
    v18 = v0[68];
    v16 = sub_1B4E2CC48;
    v11 = (v0 + 24);
    v15 = 0x80000001B4F808E0;
    v12 = 0;
    v13 = 0;
    v14 = 0xD000000000000013;
    v17 = v89;

    return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v49 = v0[44];
  v107 = v0[32];
  v115 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v47, 0);
  v48 = v115;
  v50 = v46 + 8;
  v51 = -1 << *(v46 + 32);
  v11 = sub_1B4F688B4();
  v52 = v11;
  v53 = 0;
  v54 = *(v46 + 9);
  v103 = v46;
  v105 = (v49 + 32);
  v96 = v46 + 9;
  v98 = v47;
  v100 = v54;
  v101 = v46 + 8;
  while ((v52 & 0x8000000000000000) == 0 && v52 < 1 << *(v46 + 32))
  {
    v58 = v52 >> 6;
    if ((v50[v52 >> 6] & (1 << v52)) == 0)
    {
      goto LABEL_48;
    }

    if (v54 != *(v46 + 9))
    {
      goto LABEL_49;
    }

    v112 = v53;
    v59 = v110[43];
    v60 = v110[37];
    v61 = v110[38];
    v62 = v110[36];
    (*(v108 + 16))(v61, v46[6] + *(v108 + 72) * v52, v59);
    v63 = (v46[7] + 16 * v52);
    v64 = *v63;
    v65 = v63[1];
    (*v105)(v60, v61, v59);
    v66 = (v60 + *(v107 + 48));
    *v66 = v64;
    v66[1] = v65;
    sub_1B4E21A90(v60, v62, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v67 = (v62 + *(v107 + 48));
    v69 = *v67;
    v68 = v67[1];

    v70 = sub_1B4F66AD4();
    v72 = v71;

    sub_1B4DD2BC4(v60, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v11 = (*(v108 + 8))(v62, v59);
    v74 = *(v115 + 16);
    v73 = *(v115 + 24);
    if (v74 >= v73 >> 1)
    {
      v11 = sub_1B4E257A4((v73 > 1), v74 + 1, 1);
    }

    *(v115 + 16) = v74 + 1;
    v75 = v115 + 16 * v74;
    *(v75 + 32) = v70;
    *(v75 + 40) = v72;
    v46 = v103;
    v55 = 1 << *(v103 + 32);
    if (v52 >= v55)
    {
      goto LABEL_50;
    }

    v50 = v101;
    v76 = v101[v58];
    if ((v76 & (1 << v52)) == 0)
    {
      goto LABEL_51;
    }

    v54 = v100;
    if (v100 != *(v103 + 9))
    {
      goto LABEL_52;
    }

    v77 = v76 & (-2 << (v52 & 0x3F));
    if (v77)
    {
      v55 = __clz(__rbit64(v77)) | v52 & 0x7FFFFFFFFFFFFFC0;
      v56 = v98;
      v57 = v112;
    }

    else
    {
      v78 = v58 << 6;
      v56 = v98;
      v79 = &v96[v58];
      v80 = v58 + 1;
      v57 = v112;
      while (v80 < (v55 + 63) >> 6)
      {
        v82 = *v79++;
        v81 = v82;
        v78 += 64;
        ++v80;
        if (v82)
        {
          v11 = sub_1B4DF3104(v52, v100, 0);
          v55 = __clz(__rbit64(v81)) + v78;
          goto LABEL_23;
        }
      }

      v11 = sub_1B4DF3104(v52, v100, 0);
    }

LABEL_23:
    v53 = v57 + 1;
    v52 = v55;
    if (v53 == v56)
    {
      v0 = v110;
      goto LABEL_40;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1B4E23634()
{
  v2 = *v1;
  v3 = (*v1)[81];
  v13 = *v1;
  (*v1)[82] = v0;

  if (v0)
  {
    v4 = v2[80];
    v5 = v2[79];

    v6 = sub_1B4E237A0;
  }

  else
  {
    v7 = v2[80];
    v8 = v2[72];
    v9 = v2[71];
    v10 = v2[55];
    v11 = v2[53];
    v2[83] = v2[24];

    v9(v10, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v6 = sub_1B4E23934;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B4E237A0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 504);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  (*(v0 + 568))(*(v0 + 440), *(v0 + 424));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  (*(v4 + 8))(v2, v3);
  v26 = *(v0 + 656);
  v6 = *(v0 + 496);
  v5 = *(v0 + 504);
  v7 = *(v0 + 480);
  v8 = *(v0 + 488);
  v9 = *(v0 + 472);
  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  v14 = *(v0 + 384);
  v17 = *(v0 + 360);
  v18 = *(v0 + 336);
  v19 = *(v0 + 328);
  v20 = *(v0 + 304);
  v21 = *(v0 + 296);
  v22 = *(v0 + 288);
  v23 = *(v0 + 280);
  v24 = *(v0 + 272);
  v25 = *(v0 + 264);

  v15 = *(v0 + 8);

  return v15();
}

unint64_t sub_1B4E23934()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 464);
  v3 = sub_1B4E2B844(MEMORY[0x1E69E7CC0]);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v149 = (v2 + 8);
  v152 = v2;
  v137 = (v2 + 40);
  v146 = v1;

  v9 = 0;
  v140 = v8;
  for (i = v1 + 56; ; v4 = i)
  {
    v156 = v3;
    if (!v7)
    {
      break;
    }

    v14 = v9;
LABEL_11:
    v16 = v154[61];
    v15 = v154[62];
    v17 = v154[57];
    v18 = *(v152 + 72);
    v19 = *(v152 + 16);
    v19(v15, *(v146 + 48) + v18 * (__clz(__rbit64(v7)) | (v14 << 6)), v17);
    v20 = sub_1B4F66784();
    v22 = v21;
    v19(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1B4DF4344(v20, v22);
    v26 = v156[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_52;
    }

    v30 = v25;
    if (v156[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v24;
        sub_1B4E285E0();
        v24 = v41;
      }
    }

    else
    {
      sub_1B4E266EC(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1B4DF4344(v20, v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_47;
      }
    }

    v7 &= v7 - 1;
    if (v30)
    {
      v10 = v154[61];
      v11 = v154[62];
      v12 = v154[57];
      v13 = v24;

      v3 = v156;
      (*v137)(v156[7] + v13 * v18, v10, v12);
      (*v149)(v11, v12);
    }

    else
    {
      v32 = v154[74];
      v33 = v154[73];
      v34 = v154[61];
      v35 = v154[62];
      v36 = v154[57];
      v3 = v156;
      v156[(v24 >> 6) + 8] |= 1 << v24;
      v37 = (v156[6] + 16 * v24);
      *v37 = v20;
      v37[1] = v22;
      v33(v156[7] + v24 * v18, v34, v36);
      result = (*v149)(v35, v36);
      v39 = v156[2];
      v28 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v28)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v156[2] = v40;
    }

    v9 = v14;
    v8 = v140;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v42 = v154;
  v43 = v154[83];
  v44 = v154[79];
  v45 = v154[33];
  v147 = v154[32];

  v46 = sub_1B4E2BA30(MEMORY[0x1E69E7CC0]);
  v47 = v44 + 64;
  v48 = -1;
  v49 = -1 << *(v44 + 32);
  if (-v49 < 64)
  {
    v48 = ~(-1 << -v49);
  }

  v50 = v48 & *(v44 + 64);
  v51 = (63 - v49) >> 6;
  v132 = v45 + 8;
  v133 = v46;
  v144 = v44;

  v52 = 0;
  for (j = v47; v50; v42 = v95)
  {
LABEL_30:
    while (1)
    {
      v57 = v42[44];
      v59 = v42[34];
      v58 = v42[35];
      v60 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v61 = v60 | (v52 << 6);
      v135 = *(v57 + 72);
      v138 = *(v57 + 16);
      v138(v58, *(v144 + 48) + v135 * v61, v42[43]);
      v62 = (*(v144 + 56) + 16 * v61);
      v63 = *v62;
      v64 = v62[1];
      v65 = (v58 + *(v147 + 48));
      *v65 = v63;
      v65[1] = v64;
      sub_1B4E21A90(v58, v59, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v66 = (v59 + *(v147 + 48));
      v67 = *v66;
      v68 = v66[1];

      v69 = sub_1B4F66AD4();
      v71 = v70;

      if (v156[2])
      {
        break;
      }

LABEL_25:
      v53 = v42[43];
      v54 = v42[44];
      v55 = v42[34];
      sub_1B4DD2BC4(v42[35], &qword_1EB8F45D0, &qword_1B4F6CF78);
      (*(v54 + 8))(v55, v53);
      v47 = j;
      if (!v50)
      {
        goto LABEL_26;
      }
    }

    v72 = sub_1B4DF4344(v69, v71);
    v74 = v73;

    if ((v74 & 1) == 0)
    {
      goto LABEL_25;
    }

    v75 = v42[74];
    v76 = v42;
    v77 = v42[73];
    v79 = v42[59];
    v78 = v42[60];
    v80 = v42[57];
    v81 = v42[44];
    v128 = v76[43];
    v125 = v76[34];
    v126 = v77;
    v129 = v76[33];
    v130 = v76[35];
    (*(v152 + 16))(v79, v156[7] + *(v152 + 72) * v72, v80);
    v126(v78, v79, v80);
    v127 = *(v81 + 8);
    v127(v125, v128);
    sub_1B4E21A90(v130, v129, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v82 = *(v132 + *(v147 + 48));

    v83 = sub_1B4F667C4();
    v85 = v84;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B4DF43BC(v129);
    v88 = v133[2];
    v89 = (v87 & 1) == 0;
    v28 = __OFADD__(v88, v89);
    v90 = v88 + v89;
    if (v28)
    {
      goto LABEL_55;
    }

    v91 = v87;
    if (v133[3] >= v90)
    {
      v94 = v85;
      if ((v86 & 1) == 0)
      {
        v107 = result;
        sub_1B4E28354();
        result = v107;
      }
    }

    else
    {
      v92 = v154[33];
      sub_1B4E26304(v90, v86);
      result = sub_1B4DF43BC(v92);
      if ((v91 & 1) != (v93 & 1))
      {
        goto LABEL_53;
      }

      v94 = v85;
    }

    v95 = v154;
    v96 = v154[60];
    v131 = v154[57];
    if (v91)
    {
      v97 = v154[35];
      v98 = (v133[7] + 16 * result);
      v99 = v98[1];
      *v98 = v83;
      v98[1] = v94;

      (*v149)(v96, v131);
      sub_1B4DD2BC4(v97, &qword_1EB8F45D0, &qword_1B4F6CF78);
    }

    else
    {
      v100 = v154[43];
      v101 = v154[35];
      v102 = v154[33];
      v133[(result >> 6) + 8] |= 1 << result;
      v103 = result;
      v138(v133[6] + result * v135, v102, v100);
      v104 = (v133[7] + 16 * v103);
      *v104 = v83;
      v104[1] = v94;
      (*v149)(v96, v131);
      result = sub_1B4DD2BC4(v101, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v105 = v133[2];
      v28 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v28)
      {
        goto LABEL_56;
      }

      v133[2] = v106;
      v95 = v154;
    }

    v47 = j;
    v127(v95[33], v95[43]);
  }

LABEL_26:
  while (1)
  {
    v56 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v56 >= v51)
    {
      v108 = v42[82];
      v109 = v42[79];
      v110 = v42[63];

      v111 = swift_task_alloc();
      *(v111 + 16) = v110;
      sub_1B4E297B8(sub_1B4E2BC20, v111, v133);
      v112 = v42;
      v114 = v113;

      v157 = sub_1B4DEEC7C(v114);
      v115 = v112[62];
      v117 = v112[60];
      v116 = v112[61];
      v118 = v112[59];
      v119 = v112[56];
      v120 = v112[55];
      v122 = v112[51];
      v121 = v112[52];
      v134 = v112[48];
      v136 = v112[45];
      v139 = v112[42];
      v142 = v112[41];
      v145 = v112[38];
      v148 = v112[37];
      v150 = v112[36];
      v151 = v112[35];
      v153 = v112[34];
      v155 = v112[33];
      (*(v112[58] + 8))(v112[63], v112[57]);

      v123 = v112[1];

      return v123(v157);
    }

    v50 = *(v47 + 8 * v56);
    ++v52;
    if (v50)
    {
      v52 = v56;
      goto LABEL_30;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  v124 = v154[43];
LABEL_47:

  return sub_1B4F68DB4();
}

uint64_t sub_1B4E24298()
{
  v1 = v0[63];
  v2 = v0[57];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  (*(v3 + 8))(v1, v2);
  v25 = v0[78];
  v5 = v0[62];
  v4 = v0[63];
  v6 = v0[60];
  v7 = v0[61];
  v8 = v0[59];
  v10 = v0[55];
  v9 = v0[56];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[48];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[41];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[34];
  v24 = v0[33];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B4E24444@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = -1 << *(a1 + 32);
  v9 = sub_1B4F688B4();
  v10 = 1;
  if (v9 != 1 << *(a1 + 32))
  {
    sub_1B4E2A4E4(v9, *(a1 + 36), a1, a2, a4);
    v10 = 0;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

uint64_t sub_1B4E24570(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F8, &qword_1B4F6D0D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_1B4F66484();
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = &v9[*(v5 + 56)];
  *v13 = v10;
  *(v13 + 1) = v11;

  if (v10 == sub_1B4F667C4() && v11 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B4F68D54();
  }

  sub_1B4DD2BC4(v9, &qword_1EB8F46F8, &qword_1B4F6D0D0);
  return v15 & 1;
}

uint64_t sub_1B4E246C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a3;
  v42 = a5;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
  v9 = *(v8 - 8);
  v38 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - v12;
  v14 = sub_1B4DE34E8(101, v11);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4F67C54();
  __swift_project_value_buffer(v15, qword_1EDB71F48);
  v16 = sub_1B4F67C34();
  v17 = sub_1B4F685E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    v35 = swift_slowAlloc();
    v43 = v35;
    *v19 = 134218498;
    *(v19 + 4) = v14;
    *(v19 + 12) = 2080;
    v20 = sub_1B4F689D4();
    v36 = v13;
    v22 = a2;
    v23 = a4;
    v24 = sub_1B4DC4F88(v20, v21, &v43);
    v25 = v42;
    v13 = v36;

    *(v19 + 14) = v24;
    a4 = v23;
    a2 = v22;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v25;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v26 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B8C831D0](v26, -1, -1);
    v27 = v19;
    v8 = v37;
    MEMORY[0x1B8C831D0](v27, -1, -1);
  }

  (*(v9 + 16))(v13, v39, v8);
  v28 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  *(v29 + 24) = a2;
  v30 = v42;
  *(v29 + 32) = v41;
  *(v29 + 40) = a4;
  *(v29 + 48) = v30;
  (*(v9 + 32))(v29 + v28, v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v31 = sub_1B4F67654();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B4E2CB84;
  *(v32 + 24) = v29;

  v31(sub_1B4E219CC, v32);
}

uint64_t sub_1B4E24A04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a3;
  v42 = a5;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v9 = *(v8 - 8);
  v38 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - v12;
  v14 = sub_1B4DE34E8(101, v11);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4F67C54();
  __swift_project_value_buffer(v15, qword_1EDB71F48);
  v16 = sub_1B4F67C34();
  v17 = sub_1B4F685E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    v35 = swift_slowAlloc();
    v43 = v35;
    *v19 = 134218498;
    *(v19 + 4) = v14;
    *(v19 + 12) = 2080;
    v20 = sub_1B4F689D4();
    v36 = v13;
    v22 = a2;
    v23 = a4;
    v24 = sub_1B4DC4F88(v20, v21, &v43);
    v25 = v42;
    v13 = v36;

    *(v19 + 14) = v24;
    a4 = v23;
    a2 = v22;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v25;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v26 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B8C831D0](v26, -1, -1);
    v27 = v19;
    v8 = v37;
    MEMORY[0x1B8C831D0](v27, -1, -1);
  }

  (*(v9 + 16))(v13, v39, v8);
  v28 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  *(v29 + 24) = a2;
  v30 = v42;
  *(v29 + 32) = v41;
  *(v29 + 40) = a4;
  *(v29 + 48) = v30;
  (*(v9 + 32))(v29 + v28, v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v31 = sub_1B4F67654();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B4E2CB14;
  *(v32 + 24) = v29;

  v31(sub_1B4DDE050, v32);
}

uint64_t sub_1B4E24D48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a3;
  v42 = a5;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
  v9 = *(v8 - 8);
  v38 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - v12;
  v14 = sub_1B4DE34E8(101, v11);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v15 = sub_1B4F67C54();
  __swift_project_value_buffer(v15, qword_1EDB71F48);
  v16 = sub_1B4F67C34();
  v17 = sub_1B4F685E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v8;
    v19 = v18;
    v35 = swift_slowAlloc();
    v43 = v35;
    *v19 = 134218498;
    *(v19 + 4) = v14;
    *(v19 + 12) = 2080;
    v20 = sub_1B4F689D4();
    v36 = v13;
    v22 = a2;
    v23 = a4;
    v24 = sub_1B4DC4F88(v20, v21, &v43);
    v25 = v42;
    v13 = v36;

    *(v19 + 14) = v24;
    a4 = v23;
    a2 = v22;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v25;
    _os_log_impl(&dword_1B4DC2000, v16, v17, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v26 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B8C831D0](v26, -1, -1);
    v27 = v19;
    v8 = v37;
    MEMORY[0x1B8C831D0](v27, -1, -1);
  }

  (*(v9 + 16))(v13, v39, v8);
  v28 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  *(v29 + 24) = a2;
  v30 = v42;
  *(v29 + 32) = v41;
  *(v29 + 40) = a4;
  *(v29 + 48) = v30;
  (*(v9 + 32))(v29 + v28, v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v31 = sub_1B4F67654();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1B4E2CA80;
  *(v32 + 24) = v29;

  v31(sub_1B4E2CB0C, v32);
}

uint64_t sub_1B4E2508C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB71F48);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a2;
    v16 = a7;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v14 = 134218498;
    *(v14 + 4) = a3;
    *(v14 + 12) = 2080;
    v18 = sub_1B4F689D4();
    v20 = sub_1B4DC4F88(v18, v19, &v23);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v16;
    a2 = v15;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Finished P->A conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C831D0](v17, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  v23 = a1;
  if (a2)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
    return sub_1B4F682A4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E25298(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB71F48);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a2;
    v16 = a1;
    v17 = a7;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v14 = 134218498;
    *(v14 + 4) = a3;
    *(v14 + 12) = 2080;
    v19 = sub_1B4F689D4();
    v21 = sub_1B4DC4F88(v19, v20, &v24);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v17;
    a1 = v16;
    a2 = v15;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Finished P->A conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B8C831D0](v18, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  if (a2)
  {
    v24 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E2549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a1;
  v35 = a5;
  v34 = a4;
  v9 = sub_1B4F64ED4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (v32 - v18);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v20 = sub_1B4F67C54();
  __swift_project_value_buffer(v20, qword_1EDB71F48);
  v21 = sub_1B4F67C34();
  v22 = sub_1B4F685E4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32[1] = a7;
    v33 = v9;
    v24 = v23;
    v25 = v10;
    v26 = swift_slowAlloc();
    v38 = v26;
    *v24 = 134218498;
    *(v24 + 4) = a2;
    *(v24 + 12) = 2080;
    v27 = sub_1B4F689D4();
    v29 = sub_1B4DC4F88(v27, v28, &v38);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v36;
    _os_log_impl(&dword_1B4DC2000, v21, v22, "Finished P->A conversion: %ld:%s:%lu", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v10 = v25;
    MEMORY[0x1B8C831D0](v30, -1, -1);
    v9 = v33;
    MEMORY[0x1B8C831D0](v24, -1, -1);
  }

  sub_1B4E21A90(v37, v19, &qword_1EB8F45B8, &qword_1B4F6CE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
    return sub_1B4F682A4();
  }

  else
  {
    (*(v10 + 32))(v14, v19, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
    return sub_1B4F682B4();
  }
}

char *sub_1B4E257A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B4E25A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4E257C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4748, &unk_1B4F6D120, MEMORY[0x1E69CB098]);
  *v3 = result;
  return result;
}

size_t sub_1B4E25808(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4660, &qword_1B4F6D030, MEMORY[0x1E69CB608]);
  *v3 = result;
  return result;
}

size_t sub_1B4E2584C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0]);
  *v3 = result;
  return result;
}

char *sub_1B4E25890(char *a1, int64_t a2, char a3)
{
  result = sub_1B4E25B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4E258B0(char *a1, int64_t a2, char a3)
{
  result = sub_1B4E25C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4E258D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4670, &qword_1B4F6D040, MEMORY[0x1E69CB780]);
  *v3 = result;
  return result;
}

char *sub_1B4E25914(char *a1, int64_t a2, char a3)
{
  result = sub_1B4E25D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B4E25934(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4658, &qword_1B4F6D028, type metadata accessor for RemoteBrowsingJournalEntry);
  *v3 = result;
  return result;
}

size_t sub_1B4E25978(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4638, &qword_1B4F6D018, MEMORY[0x1E69CCD48]);
  *v3 = result;
  return result;
}

size_t sub_1B4E259BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4618, &qword_1B4F6CFF8, MEMORY[0x1E69CB178]);
  *v3 = result;
  return result;
}

size_t sub_1B4E25A00(size_t a1, int64_t a2, char a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4600, &qword_1B4F6CFD8, MEMORY[0x1E69CCCE0]);
  *v3 = result;
  return result;
}

char *sub_1B4E25A44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25B78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4690, &qword_1B4F6D068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25C84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D0, &qword_1B4F6D058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25D94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4668, &qword_1B4F6D038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1B4E25E88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1B4E26064(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4740, &qword_1B4F6D118);
  v38 = a2;
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4E26304(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B4F66484();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  v49 = a2;
  result = sub_1B4F68BA4();
  v15 = result;
  if (*(v12 + 16))
  {
    v54 = v11;
    v45 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v46 = (v7 + 16);
    v47 = v12;
    v48 = v7;
    v50 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v29 = v26 | (v16 << 6);
      v30 = *(v12 + 48);
      v53 = *(v48 + 72);
      v31 = v30 + v53 * v29;
      if (v49)
      {
        (*v50)(v54, v31, v6);
        v32 = (*(v12 + 56) + 16 * v29);
        v33 = *v32;
        v51 = v32[1];
        v52 = v33;
      }

      else
      {
        (*v46)(v54, v31, v6);
        v34 = (*(v12 + 56) + 16 * v29);
        v35 = *v34;
        v51 = v34[1];
        v52 = v35;
      }

      v36 = *(v15 + 40);
      sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
      result = sub_1B4F67F14();
      v37 = -1 << *(v15 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v22 + 8 * v39);
          if (v43 != -1)
          {
            v23 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v50)(*(v15 + 48) + v53 * v23, v54, v6);
      v24 = (*(v15 + 56) + 16 * v23);
      v25 = v51;
      *v24 = v52;
      v24[1] = v25;
      ++*(v15 + 16);
      v12 = v47;
    }

    v27 = v16;
    while (1)
    {
      v16 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v28 = v17[v16];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v20 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v12 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v17, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v44;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_1B4E266EC(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_1B4F66874();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
  v47 = a2;
  result = sub_1B4F68BA4();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1B4E26A6C(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = sub_1B4F666C4();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v59, v8);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F66484();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v60 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
  v54 = a2;
  result = sub_1B4F68BA4();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = v11;
    v21 = (v15 + 64);
    v22 = 1 << *(v15 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v15 + 64);
    v25 = (v22 + 63) >> 6;
    v50 = (v20 + 16);
    v51 = v20;
    v48 = v3;
    v49 = v6 + 16;
    v52 = v15;
    v53 = v6;
    v55 = (v6 + 32);
    v56 = (v20 + 32);
    v26 = result + 64;
    v27 = v20;
    while (v24)
    {
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_17:
      v32 = v29 | (v19 << 6);
      v33 = *(v15 + 48);
      v57 = *(v27 + 72);
      v34 = v33 + v57 * v32;
      if (v54)
      {
        (*v56)(v60, v34, v10);
        v35 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 32))(v58, v35 + v36 * v32, v59);
      }

      else
      {
        (*v50)(v60, v34, v10);
        v37 = *(v15 + 56);
        v36 = *(v53 + 72);
        (*(v53 + 16))(v58, v37 + v36 * v32, v59);
      }

      v38 = *(v18 + 40);
      sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
      result = sub_1B4F67F14();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v26 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v26 + 8 * v41);
          if (v45 != -1)
          {
            v28 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v40) & ~*(v26 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      (*v56)((*(v18 + 48) + v57 * v28), v60, v10);
      result = (*v55)(*(v18 + 56) + v36 * v28, v58, v59);
      ++*(v18 + 16);
      v27 = v51;
      v15 = v52;
    }

    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v25)
      {
        break;
      }

      v31 = v21[v19];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v24 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v54 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v21, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_1B4E26F14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E0, &qword_1B4F6D0B8);
  v36 = a2;
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1B4DC933C(v25, v37);
      }

      else
      {
        sub_1B4DC40A0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B4DC933C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4E271D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1B4E2C940((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1B4DF47F4(v24, &v38);
        sub_1B4DC4F2C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1B4F68934();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1B4E2C940(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B4E27490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A0, &qword_1B4F6D078);
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F6D130[v21]);
      result = sub_1B4F68EC4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B4E27728(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4698, &qword_1B4F6D070);
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F6DCB8[v21]);
      result = sub_1B4F68EC4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B4E279C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4680, &qword_1B4F6D050);
  v37 = a2;
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4E27C64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4678, &qword_1B4F6D048);
  v40 = a2;
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 24 * v22);
      v27 = *v26;
      v28 = v26[2];
      v41 = v26[1];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v27;
      v18[1] = v41;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4E27F34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4620, &qword_1B4F6D000);
  v36 = a2;
  result = sub_1B4F68BA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B4E2C940(v25, v37);
      }

      else
      {
        sub_1B4DC4F2C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B4E2C940(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_1B4E281EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4740, &qword_1B4F6D118);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1B4E28354()
{
  v1 = v0;
  v37 = sub_1B4F66484();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  v5 = *v0;
  v6 = sub_1B4F68B94();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v39;
        v22 = *(v39 + 72) * v20;
        v23 = v36;
        v24 = v37;
        (*(v39 + 16))(v36, *(v5 + 48) + v22, v37);
        v25 = 16 * v20;
        v26 = (*(v5 + 56) + 16 * v20);
        v27 = *v26;
        v28 = v26[1];
        v29 = v38;
        (*(v21 + 32))(*(v38 + 48) + v22, v23, v24);
        v30 = (*(v29 + 56) + v25);
        *v30 = v27;
        v30[1] = v28;
        v5 = v35;

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B4E285E0()
{
  v1 = v0;
  v37 = sub_1B4F66874();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
  v5 = *v0;
  v6 = sub_1B4F68B94();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B4E28860()
{
  v1 = v0;
  v45 = sub_1B4F666C4();
  v48 = *(v45 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45, v3);
  v44 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1B4F66484();
  v47 = *(v43 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v43, v6);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
  v8 = *v0;
  v9 = sub_1B4F68B94();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1B4E28BB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E0, &qword_1B4F6D0B8);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1B4DC40A0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B4DC933C(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B4E28D5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46C8, &qword_1B4F6D0A0);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E28EB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1B4DF47F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B4DC4F2C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B4E2C940(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E2905C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A0, &qword_1B4F6D078);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E291C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4698, &qword_1B4F6D070);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E29324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4680, &qword_1B4F6D050);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E2948C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4678, &qword_1B4F6D048);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4E29614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4620, &qword_1B4F6D000);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B4DC4F2C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B4E2C940(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_1B4E297B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 > 0xD)
  {
    v15 = 8 * (v9 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      sub_1B4E29BC4(v16, v10, a3, v6);
      MEMORY[0x1B8C831D0](v16, -1, -1);
      goto LABEL_4;
    }

    v11 = v15;
  }

  MEMORY[0x1EEE9AC00](a1, v11);
  v13 = v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v13, v12);
  sub_1B4E29938(v13, v10, a3, v6);
  if (v4)
  {
    swift_willThrow();
  }

LABEL_4:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B4E29938(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *))
{
  v38 = a4;
  v32 = a2;
  v33 = a1;
  v5 = sub_1B4F66484();
  v6 = *(*(v5 - 8) + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v5, v7);
  v39 = a3;
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v36 = v8 + 16;
  v37 = v8;
  v34 = 0;
  v35 = (v8 + 8);
  while (v17)
  {
    v41 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v11 << 6);
    v20 = v40;
LABEL_11:
    v23 = v39;
    (*(v37 + 16))(v20, v39[6] + *(v37 + 72) * v19, v5, v9);
    v24 = v19;
    v25 = (v23[7] + 16 * v19);
    v26 = v5;
    v27 = v25[1];
    v42[0] = *v25;
    v42[1] = v27;

    v28 = v43;
    v29 = v38(v20, v42);
    v43 = v28;
    if (v28)
    {

      (*v35)(v20, v26);
      return;
    }

    v30 = v29;

    (*v35)(v20, v26);
    v5 = v26;
    v17 = v41;
    if (v30)
    {
      *(v33 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1B4E29D94(v33, v32, v34, v39);
        return;
      }
    }
  }

  v21 = v11;
  v20 = v40;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v22 = v13[v11];
    ++v21;
    if (v22)
    {
      v41 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1B4E29BC4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B4E29938(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1B4E29C54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E2B11C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t *sub_1B4E29CF0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E2A91C(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1B4E29D94(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v53 = sub_1B4F66484();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = v41 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  result = sub_1B4F68BB4();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v44;
  }

  v17 = 0;
  v41[1] = v7 + 16;
  v42 = result;
  v51 = v7 + 32;
  v18 = result + 64;
  v41[0] = a4;
  v43 = v7;
  v19 = v53;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[6];
    v50 = *(v7 + 72);
    v25 = v45;
    (*(v7 + 16))(v45, v24 + v50 * v23, v19);
    v26 = (a4[7] + 16 * v23);
    v27 = *v26;
    v28 = v26[1];
    v47 = *(v7 + 32);
    v48 = v27;
    v47(v52, v25, v19);
    v15 = v42;
    v29 = *(v42 + 40);
    sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
    v49 = v28;

    result = sub_1B4F67F14();
    v30 = -1 << *(v15 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v7 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v7 = v43;
LABEL_26:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v15 + 48) + v33 * v50, v52, v53);
    v38 = (*(v15 + 56) + 16 * v33);
    v39 = v49;
    *v38 = v48;
    v38[1] = v39;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41[0];
    v16 = v46;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = v44[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v46 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4E2A13C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v53 = sub_1B4F66484();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = v41 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4718, &qword_1B4F6D0F0);
  result = sub_1B4F68BB4();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *v44;
  }

  v17 = 0;
  v41[1] = v7 + 16;
  v42 = result;
  v51 = v7 + 32;
  v18 = result + 64;
  v41[0] = a4;
  v43 = v7;
  v19 = v53;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v46 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[6];
    v50 = *(v7 + 72);
    v25 = v45;
    (*(v7 + 16))(v45, v24 + v50 * v23, v19);
    v26 = (a4[7] + 16 * v23);
    v27 = *v26;
    v28 = v26[1];
    v47 = *(v7 + 32);
    v48 = v27;
    v47(v52, v25, v19);
    v15 = v42;
    v29 = *(v42 + 40);
    sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
    v49 = v28;

    result = sub_1B4F67F14();
    v30 = -1 << *(v15 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v7 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v18 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v7 = v43;
LABEL_26:
    *(v18 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v47)(*(v15 + 48) + v33 * v50, v52, v53);
    v38 = (*(v15 + 56) + 16 * v33);
    v39 = v49;
    *v38 = v48;
    v38[1] = v39;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41[0];
    v16 = v46;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = v44[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v46 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4E2A4E4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1B4E2A5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (2)
    {
      v6 = *(v23 + v4);
      v7 = *(v3 + 40);
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v9 = ~(-1 << *(v3 + 32));
      for (i = result & v9; ; i = (i + 1) & v9)
      {
        v11 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v11) == 0)
        {
          break;
        }

        v12 = *(*(v3 + 48) + i);
        v13 = sub_1B4F652E4();
        v15 = v14;
        if (v13 == sub_1B4F652E4() && v15 == v16)
        {

          goto LABEL_4;
        }

        v18 = sub_1B4F68D54();

        if (v18)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v11;
      *(*(v3 + 48) + i) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (!v20)
      {
        *(v3 + 16) = v21;
LABEL_4:
        if (++v4 == v22)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B4E2A75C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B4F68E84();

      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1B4F68D54();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1B4E2A91C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a2;
  v68 = a4;
  v69 = a5;
  v56 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  v6 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54 - v12;
  v14 = sub_1B4F66484();
  v15 = *(*(v14 - 8) + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v70 = a3;
  v22 = *(a3 + 64);
  v59 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v57 = 0;
  v58 = (v23 + 63) >> 6;
  v65 = v17 + 16;
  v66 = v17;
  v63 = (v17 + 8);
  v64 = v9;
  v61 = v20;
  v62 = v13;
  while (v25)
  {
    v28 = v20;
    v71 = (v25 - 1) & v25;
    v29 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_12:
    v32 = v70;
    v33 = *(v66 + 16);
    v33(v28, v70[6] + *(v66 + 72) * v29, v14, v18);
    v34 = v32[7];
    v60 = v29;
    v35 = (v34 + 16 * v29);
    v36 = v14;
    v38 = *v35;
    v37 = v35[1];
    v39 = v62;
    (v33)(v62, v28, v36);
    v40 = v67;
    v41 = (v39 + *(v67 + 48));
    *v41 = v38;
    v41[1] = v37;
    v42 = v64;
    sub_1B4E21A90(v39, v64, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v43 = (v42 + *(v40 + 48));
    v45 = *v43;
    v44 = v43[1];
    swift_bridgeObjectRetain_n();
    v46 = sub_1B4F66AD4();
    v48 = v47;

    if (v46 == v68 && v48 == v69)
    {

      sub_1B4DD2BC4(v39, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v26 = *v63;
      (*v63)(v42, v36);

      v27 = v61;
      v26(v61, v36);
      v14 = v36;
      v20 = v27;
      v25 = v71;
    }

    else
    {
      v50 = sub_1B4F68D54();

      sub_1B4DD2BC4(v39, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v51 = *v63;
      (*v63)(v42, v36);

      v52 = v61;
      v51(v61, v36);
      v14 = v36;
      v20 = v52;
      v25 = v71;
      if ((v50 & 1) == 0)
      {
        *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
LABEL_20:
          sub_1B4E2A13C(v56, v55, v57, v70);
          return;
        }
      }
    }
  }

  v30 = v21;
  while (1)
  {
    v21 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v21 >= v58)
    {
      goto LABEL_20;
    }

    v31 = *(v59 + 8 * v21);
    ++v30;
    if (v31)
    {
      v28 = v20;
      v71 = (v31 - 1) & v31;
      v29 = __clz(__rbit64(v31)) | (v21 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1B4E2AD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v17 = swift_slowAlloc();

      v14 = sub_1B4E29CF0(v17, v9, a1, a2, a3);
      MEMORY[0x1B8C831D0](v17, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  bzero(v18 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1B4E2A91C((v18 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

unint64_t sub_1B4E2AEFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4728, &qword_1B4F6D100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
    v9 = sub_1B4F68BB4();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v11, v7, &qword_1EB8F4728, &qword_1B4F6D100);
      result = sub_1B4DF43BC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1B4F66484();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_1B4F666C4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v15, &v7[v10], v19);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B4E2B11C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v61 = a2;
  v62 = a1;
  v72 = sub_1B4F666C4();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v72, v7);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = &v60 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v86 = &v60 - v18;
  v85 = sub_1B4F66484();
  v19 = *(*(v85 - 8) + 64);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v85, v20);
  v84 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v24 = 0;
  v80 = a3;
  v25 = *(a3 + 64);
  v64 = a3 + 64;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v81 = v15;
  v76 = v15 + 8;
  v77 = v21;
  v29 = (v26 + 63) >> 6;
  v67 = v5 + 32;
  v68 = v5 + 16;
  v73 = (v21 + 8);
  v74 = v21 + 16;
  v71 = v5;
  v66 = v5 + 8;
  v75 = v29;
  while (v28)
  {
    v83 = (v28 - 1) & v28;
    v30 = __clz(__rbit64(v28)) | (v24 << 6);
    v31 = v81;
LABEL_11:
    v34 = v80;
    v35 = *(v77 + 16);
    v36 = v84;
    v37 = v85;
    v35(v84, v80[6] + *(v77 + 72) * v30, v85, v22);
    v38 = v34[7];
    v65 = v30;
    v39 = (v38 + 16 * v30);
    v41 = *v39;
    v40 = v39[1];
    v42 = v86;
    (v35)(v86, v36, v37);
    v43 = v78;
    v44 = (v42 + *(v78 + 48));
    *v44 = v41;
    v44[1] = v40;
    sub_1B4E21A90(v42, v31, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v45 = *&v76[*(v43 + 48)];
    swift_bridgeObjectRetain_n();

    v46 = v79;
    v47 = v31;
    if (*(v79 + 16) && (v48 = sub_1B4DF43BC(v31), (v49 & 1) != 0))
    {
      v51 = v70;
      v50 = v71;
      v52 = v72;
      (*(v71 + 16))(v70, *(v46 + 56) + *(v71 + 72) * v48, v72);
      v53 = v69;
      (*(v50 + 32))(v69, v51, v52);
      v54 = *v73;
      v55 = v47;
      v56 = v85;
      (*v73)(v55, v85);
      v82 = sub_1B4F666B4();
      (*(v50 + 8))(v53, v52);
      sub_1B4DD2BC4(v86, &qword_1EB8F45D0, &qword_1B4F6CF78);

      v54(v84, v56);
      v29 = v75;
      v28 = v83;
      if ((v82 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B4DD2BC4(v86, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v57 = *v73;
      v58 = v85;
      (*v73)(v31, v85);

      v57(v84, v58);
      v29 = v75;
      v28 = v83;
LABEL_16:
      *(v62 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      if (__OFADD__(v63++, 1))
      {
        __break(1u);
LABEL_19:
        sub_1B4E2A13C(v62, v61, v63, v80);
        return;
      }
    }
  }

  v32 = v24;
  v31 = v81;
  while (1)
  {
    v24 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      goto LABEL_19;
    }

    v33 = *(v64 + 8 * v24);
    ++v32;
    if (v33)
    {
      v83 = (v33 - 1) & v33;
      v30 = __clz(__rbit64(v33)) | (v24 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1B4E2B674(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_1B4E29C54(v15, v7, a1, a2);
      MEMORY[0x1B8C831D0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1B4E2B11C((v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t sub_1B4E2B844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4710, &qword_1B4F6D0E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
    v9 = sub_1B4F68BB4();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v11, v7, &qword_1EB8F4710, &qword_1B4F6D0E8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1B4DF4344(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1B4F66874();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4E2BA30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4700, &qword_1B4F6D0D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
    v9 = sub_1B4F68BB4();
    v10 = &v7[*(v2 + 48)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v11, v7, &qword_1EB8F4700, &qword_1B4F6D0D8);
      result = sub_1B4DF43BC(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1B4F66484();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = (v9[7] + 16 * v15);
      v19 = *(v10 + 1);
      *v18 = *v10;
      v18[1] = v19;
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t dispatch thunk of WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B4E2BDB0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B4E2BDB0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_1B4E2BEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
    v3 = sub_1B4F68BB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4E21A90(v4, v13, &qword_1EB8F46C0, &qword_1B4F6D098);
      result = sub_1B4DF4440(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B4E2C940(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4E2BFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4610, &qword_1B4F6CFE8);
    v3 = sub_1B4F68BB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4E21A90(v4, &v15, &qword_1EB8F70D0, &qword_1B4F6CFF0);
      v5 = v15;
      v6 = v16;
      result = sub_1B4DF4344(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B4E2C118(uint64_t a1)
{
  v2 = sub_1B4F649A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4640, &qword_1B4F6D020);
    v12 = sub_1B4F68994();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_1B4E2CB3C(&qword_1EB8F4648, MEMORY[0x1E69695A8]);
      v20 = sub_1B4F67F14();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_1B4E2CB3C(&qword_1EB8F4650, MEMORY[0x1E69695A8]);
          v27 = sub_1B4F67F54();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B4E2C438(uint64_t a1)
{
  v2 = sub_1B4F66E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
    v13 = sub_1B4F68994();
    v14 = 0;
    v15 = v13 + 56;
    v16 = *(v3 + 80);
    v33 = v12;
    v34 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v3 + 72);
    v18 = v12;
    while (1)
    {
      sub_1B4E2C950(v34 + v17 * v14, v11, MEMORY[0x1E69CCB48]);
      v19 = *(v13 + 40);
      sub_1B4F68E84();
      sub_1B4F66E24();
      v20 = sub_1B4F68EC4();
      v21 = ~(-1 << *(v13 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v15 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        do
        {
          v26 = MEMORY[0x1E69CCB48];
          sub_1B4E2C950(*(v13 + 48) + v22 * v17, v7, MEMORY[0x1E69CCB48]);
          v27 = MEMORY[0x1B8C806C0](v7, v11);
          sub_1B4E2C9B8(v7, v26);
          if (v27)
          {
            sub_1B4E2C9B8(v11, MEMORY[0x1E69CCB48]);
            v18 = v33;
            goto LABEL_4;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v15 + 8 * (v22 >> 6));
          v25 = 1 << v22;
        }

        while (((1 << v22) & v24) != 0);
        v18 = v33;
      }

      *(v15 + 8 * v23) = v25 | v24;
      result = sub_1B4E2CA18(v11, *(v13 + 48) + v22 * v17, MEMORY[0x1E69CCB48]);
      v29 = *(v13 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v13 + 16) = v31;
LABEL_4:
      if (++v14 == v18)
      {
        return v13;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B4E2C6BC(uint64_t a1)
{
  v2 = sub_1B4F67184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
    v13 = sub_1B4F68994();
    v14 = 0;
    v15 = v13 + 56;
    v16 = *(v3 + 80);
    v33 = v12;
    v34 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v3 + 72);
    v18 = v12;
    while (1)
    {
      sub_1B4E2C950(v34 + v17 * v14, v11, MEMORY[0x1E69CCEF0]);
      v19 = *(v13 + 40);
      sub_1B4F68E84();
      sub_1B4F67174();
      v20 = sub_1B4F68EC4();
      v21 = ~(-1 << *(v13 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v15 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        do
        {
          v26 = MEMORY[0x1E69CCEF0];
          sub_1B4E2C950(*(v13 + 48) + v22 * v17, v7, MEMORY[0x1E69CCEF0]);
          v27 = MEMORY[0x1B8C80A10](v7, v11);
          sub_1B4E2C9B8(v7, v26);
          if (v27)
          {
            sub_1B4E2C9B8(v11, MEMORY[0x1E69CCEF0]);
            v18 = v33;
            goto LABEL_4;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v15 + 8 * (v22 >> 6));
          v25 = 1 << v22;
        }

        while (((1 << v22) & v24) != 0);
        v18 = v33;
      }

      *(v15 + 8 * v23) = v25 | v24;
      result = sub_1B4E2CA18(v11, *(v13 + 48) + v22 * v17, MEMORY[0x1E69CCEF0]);
      v29 = *(v13 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v13 + 16) = v31;
LABEL_4:
      if (++v14 == v18)
      {
        return v13;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

_OWORD *sub_1B4E2C940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B4E2C950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E2C9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E2CA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E2CA80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1B4E2549C(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1B4E2CB3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4E2CBAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1B4E2CC78(uint64_t a1)
{
  v2 = sub_1B4E2D4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CCB4(uint64_t a1)
{
  v2 = sub_1B4E2D4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CCF0()
{
  v1 = 0x72616C756C6C6563;
  v2 = 1768319351;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (*v0)
  {
    v1 = 0x74656E7265687465;
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

uint64_t sub_1B4E2CD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4E2E308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4E2CD94(uint64_t a1)
{
  v2 = sub_1B4E2D3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CDD0(uint64_t a1)
{
  v2 = sub_1B4E2D3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CE0C(uint64_t a1)
{
  v2 = sub_1B4E2D4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CE48(uint64_t a1)
{
  v2 = sub_1B4E2D4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CE84(uint64_t a1)
{
  v2 = sub_1B4E2D400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CEC0(uint64_t a1)
{
  v2 = sub_1B4E2D400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CEFC(uint64_t a1)
{
  v2 = sub_1B4E2D454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CF38(uint64_t a1)
{
  v2 = sub_1B4E2D454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkInterfaceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4750, &qword_1B4F6DE80);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4758, &qword_1B4F6DE88);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v38 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4760, &qword_1B4F6DE90);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v35 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4768, &qword_1B4F6DE98);
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4770, &qword_1B4F6DEA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v33 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E2D3AC();
  sub_1B4F68F54();
  v28 = (v21 + 8);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v46 = 2;
      sub_1B4E2D454();
      v29 = v38;
      sub_1B4F68CB4();
      v31 = v39;
      v30 = v40;
    }

    else
    {
      v47 = 3;
      sub_1B4E2D400();
      v29 = v41;
      sub_1B4F68CB4();
      v31 = v42;
      v30 = v43;
    }

    goto LABEL_8;
  }

  if (v26)
  {
    v45 = 1;
    sub_1B4E2D4A8();
    v29 = v35;
    sub_1B4F68CB4();
    v31 = v36;
    v30 = v37;
LABEL_8:
    (*(v31 + 8))(v29, v30);
    return (*v28)(v25, v20);
  }

  v44 = 0;
  sub_1B4E2D4FC();
  sub_1B4F68CB4();
  (*(v33 + 8))(v19, v34);
  return (*v28)(v25, v20);
}