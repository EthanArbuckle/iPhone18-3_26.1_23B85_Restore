uint64_t sub_1BAB170D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1BAB17128()
{
  v0 = sub_1BABE737C();
  v31 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BABE73BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BABE736C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1BABE73EC();
  v33 = *(v35 - 8);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = v0;
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1BABE72BC();
    __swift_project_value_buffer(v15, qword_1ED78BBA0);
    v16 = sub_1BABE729C();
    v17 = sub_1BABE790C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v6;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_1BAACF000, v16, v17, "Server says it has new messages", v18, 2u);
      v6 = v28;
      MEMORY[0x1BFAFE460](v19, -1, -1);
    }

    if (v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageFetchPending])
    {
    }

    else
    {
      v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_messageFetchPending] = 1;
      sub_1BABE73CC();
      *v8 = 100;
      v20 = v30;
      v21 = v32;
      (*(v30 + 104))(v8, *MEMORY[0x1E69E7F38], v32);
      sub_1BABE73DC();
      (*(v20 + 8))(v8, v21);
      v32 = v4;
      v33 = *(v33 + 8);
      (v33)(v11, v35);
      v30 = *&v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_1BAB224C4;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD173C;
      aBlock[3] = &block_descriptor_86;
      v23 = _Block_copy(aBlock);
      v28 = v14;
      sub_1BABE739C();
      v36 = MEMORY[0x1E69E7CC0];
      sub_1BAAD38BC(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
      v24 = v3;
      v25 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
      sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
      v26 = v29;
      sub_1BABE79FC();
      v27 = v34;
      MEMORY[0x1BFAFD5A0](v34, v6, v2, v23);
      _Block_release(v23);
      (*(v25 + 8))(v2, v26);
      (*(v32 + 8))(v6, v24);
      (v33)(v27, v35);
    }
  }
}

void sub_1BAB176DC()
{
  v2 = v0;
  v37[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1BABE73FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v37[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  v9 = sub_1BABE740C();
  (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = sub_1BAB02A60();
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();

    v13 = sub_1BAAFFA40(v12);

    v37[0] = v13;
    sub_1BABE6AAC();
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB22504();
    v14 = sub_1BABE6A8C();
    if (!v1)
    {
      v16 = v14;
      v17 = v15;

      v18 = sub_1BABE6BDC();
      sub_1BAAD73E4(v16, v17);

      v37[0] = 0;
      v19 = [v11 messagesWithParameters:v18 error:v37];

      v20 = v37[0];
      if (!v19)
      {
        v33 = v37[0];
        sub_1BABE6ADC();

        swift_willThrow();
LABEL_17:
        swift_unknownObjectRelease();
        return;
      }

      sub_1BABE6A7C();
      swift_allocObject();
      v21 = v20;
      sub_1BABE6A6C();
      v22 = sub_1BABE6BEC();
      v24 = v23;
      sub_1BAB22558();
      sub_1BABE6A5C();
      sub_1BAAD73E4(v22, v24);

      v9 = v37[0];
      if (v37[0])
      {

        if (qword_1ED7876D0 == -1)
        {
LABEL_7:
          v25 = sub_1BABE72BC();
          __swift_project_value_buffer(v25, qword_1ED78BBA0);

          v26 = sub_1BABE729C();
          v27 = sub_1BABE790C();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 134217984;
            *(v28 + 4) = *(v9 + 16);

            _os_log_impl(&dword_1BAACF000, v26, v27, "Fetched %ld new messages", v28, 0xCu);
            MEMORY[0x1BFAFE460](v28, -1, -1);
          }

          else
          {
          }

          v37[0] = v9;
          sub_1BABE730C();

          goto LABEL_17;
        }

LABEL_19:
        swift_once();
        goto LABEL_7;
      }

      __break(1u);
    }

    v34 = swift_unexpectedError();
    __break(1u);
    sub_1BAAD73E4(v34, v35);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v29 = sub_1BABE72BC();
    __swift_project_value_buffer(v29, qword_1ED78BBA0);
    v30 = sub_1BABE729C();
    v31 = sub_1BABE78EC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BAACF000, v30, v31, "Could not fetch messages because target could not be created", v32, 2u);
      MEMORY[0x1BFAFE460](v32, -1, -1);
    }
  }
}

void sub_1BAB17BE8()
{
  v0 = sub_1BABE737C();
  v31 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BABE73BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BABE736C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1BABE73EC();
  v33 = *(v35 - 8);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = v0;
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1BABE72BC();
    __swift_project_value_buffer(v15, qword_1ED78BBA0);
    v16 = sub_1BABE729C();
    v17 = sub_1BABE790C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v6;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_1BAACF000, v16, v17, "Server says it has new devices", v18, 2u);
      v6 = v28;
      MEMORY[0x1BFAFE460](v19, -1, -1);
    }

    if (v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceFetchPending])
    {
    }

    else
    {
      v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_deviceFetchPending] = 1;
      sub_1BABE73CC();
      *v8 = 100;
      v20 = v30;
      v21 = v32;
      (*(v30 + 104))(v8, *MEMORY[0x1E69E7F38], v32);
      sub_1BABE73DC();
      (*(v20 + 8))(v8, v21);
      v32 = v4;
      v33 = *(v33 + 8);
      (v33)(v11, v35);
      v30 = *&v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_1BAB225FC;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD173C;
      aBlock[3] = &block_descriptor_106;
      v23 = _Block_copy(aBlock);
      v28 = v14;
      sub_1BABE739C();
      v36 = MEMORY[0x1E69E7CC0];
      sub_1BAAD38BC(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
      v24 = v3;
      v25 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
      sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
      v26 = v29;
      sub_1BABE79FC();
      v27 = v34;
      MEMORY[0x1BFAFD5A0](v34, v6, v2, v23);
      _Block_release(v23);
      (*(v25 + 8))(v2, v26);
      (*(v32 + 8))(v6, v24);
      (v33)(v27, v35);
    }
  }
}

uint64_t sub_1BAB1819C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = a2();
  *(a1 + *a3) = 0;
  return result;
}

uint64_t sub_1BAB18330(uint64_t *a1)
{
  v3 = sub_1BABE73FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1BABE740C();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *a1;
    v11 = *(v1 + *a1);
    v12 = *(v11 + 16);
    if (v12)
    {

      v13 = 32;
      do
      {
        notify_cancel(*(v11 + v13));
        v13 += 4;
        --v12;
      }

      while (v12);
    }

    *(v1 + v10) = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAB18494()
{
  v0 = sub_1BABE737C();
  v31 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BABE73BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BABE736C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1BABE73EC();
  v33 = *(v35 - 8);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = v0;
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1BABE72BC();
    __swift_project_value_buffer(v15, qword_1ED78BBA0);
    v16 = sub_1BABE729C();
    v17 = sub_1BABE790C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = v6;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_1BAACF000, v16, v17, "Server says it has new records", v18, 2u);
      v6 = v28;
      MEMORY[0x1BFAFE460](v19, -1, -1);
    }

    if (v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordFetchPending])
    {
    }

    else
    {
      v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordFetchPending] = 1;
      sub_1BABE73CC();
      *v8 = 100;
      v20 = v30;
      v21 = v32;
      (*(v30 + 104))(v8, *MEMORY[0x1E69E7F38], v32);
      sub_1BABE73DC();
      (*(v20 + 8))(v8, v21);
      v32 = v4;
      v33 = *(v33 + 8);
      (v33)(v11, v35);
      v30 = *&v14[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      aBlock[4] = sub_1BAB225B4;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD173C;
      aBlock[3] = &block_descriptor_96;
      v23 = _Block_copy(aBlock);
      v28 = v14;
      sub_1BABE739C();
      v36 = MEMORY[0x1E69E7CC0];
      sub_1BAAD38BC(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
      v24 = v3;
      v25 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
      sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
      v26 = v29;
      sub_1BABE79FC();
      v27 = v34;
      MEMORY[0x1BFAFD5A0](v34, v6, v2, v23);
      _Block_release(v23);
      (*(v25 + 8))(v2, v26);
      (*(v32 + 8))(v6, v24);
      (v33)(v27, v35);
    }
  }
}

uint64_t sub_1BAB18A48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v34 - v10;
  v11 = sub_1BABE6CFC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for ReplicatorRecord(0);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v45 = a3;
  v46 = v20;
  v47 = v42;
  v48 = v43;

  v23 = v49;
  v49 = sub_1BAAFF1EC(MEMORY[0x1E69E7CC8], sub_1BAB22804, v44, v22);

  if (!v23)
  {
    v25 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
    v42 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
    swift_beginAccess();
    v36 = v17;
    v35 = type metadata accessor for ReplicatorRecord.ID;
    sub_1BAB22824(v20 + v25, v17, type metadata accessor for ReplicatorRecord.ID);
    v43 = 0;
    v26 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
    swift_beginAccess();
    v27 = *(v12 + 16);
    v27(v14, v20 + v26, v11);
    sub_1BAB22824(v36, v19, type metadata accessor for ReplicatorRecord.ID);
    v28 = v37;
    v27(&v19[*(v37 + 20)], v14, v11);
    v29 = sub_1BABE6C8C();
    v30 = *(*(v29 - 8) + 56);
    v30(v41, 1, 1, v29);
    (*(v12 + 8))(v14, v11);
    v31 = v36;
    sub_1BAB2288C(v36, type metadata accessor for ReplicatorRecord.ID);
    v32 = v28[7];
    v30(&v19[v32], 1, 1, v29);
    *&v19[v28[6]] = v49;
    sub_1BAAD7BA0(v41, &v19[v32], &qword_1EBC132A0);
    *&v19[v28[8]] = 0;
    sub_1BAB22824(v20 + v42, v31, v35);
    v33 = v40;
    sub_1BAB22824(v19, v40, type metadata accessor for ReplicatorRecord);
    (*(v39 + 56))(v33, 0, 1, v28);
    sub_1BAB3022C(v33, v31);
    return sub_1BAB2288C(v19, type metadata accessor for ReplicatorRecord);
  }

  return result;
}

uint64_t sub_1BAB18F38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v168 = a5;
  v191 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v137 - v11;
  v13 = type metadata accessor for ReplicatorRecord.Value(0);
  v164 = *(v13 - 8);
  v165 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE6AFC();
  v157 = *(v16 - 8);
  v158 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v156 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BABE6CFC();
  v159 = *(v18 - 8);
  v160 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1BABE6BAC();
  v169 = *(v171 - 8);
  v20 = MEMORY[0x1EEE9AC00](v171);
  v161 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v137 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v163 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v155 = &v137 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v167 = &v137 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v137 - v30;
  v31 = *a2;
  v32 = (v31 + OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data);
  result = swift_beginAccess();
  v34 = v32[1];
  if (v34 >> 60 != 15)
  {
    v150 = v31;
    v151 = v15;
    v153 = v34;
    v154 = v5;
    v148 = v12;
    v149 = a1;
    v152 = *v32;
    v35 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
    swift_beginAccess();
    v36 = *(a3 + v35);
    v39 = *(v36 + 56);
    v38 = (v36 + 56);
    v37 = v39;
    v175 = *(a3 + v35);
    v40 = 1 << *(v175 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & v37;
    v174 = (a4 + OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id);
    result = swift_beginAccess();
    v43 = 0;
    v44 = (v40 + 63) >> 6;
    do
    {
      if (v42)
      {
        goto LABEL_10;
      }

      do
      {
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v45 >= v44)
        {
          return result;
        }

        v42 = v38[v45];
        ++v43;
      }

      while (!v42);
      v43 = v45;
LABEL_10:
      v46 = (*(v175 + 48) + 80 * (__clz(__rbit64(v42)) | (v43 << 6)));
      v47 = *v46;
      a3 = v46[1];
      v48 = v46[7];
      v40 = v46[8];
      v172 = v46[9];
      v173 = v48;
      if (v47 == v174[4] && a3 == v174[5])
      {
        break;
      }

      v42 &= v42 - 1;
      result = sub_1BABE7EDC();
    }

    while ((result & 1) == 0);

    v50 = v152;
    sub_1BAAF10BC(v152, v153);

    if (*(v40 + 16))
    {
      v51 = v174[2];
      v52 = v174[3];

      v53 = sub_1BABD5AB4(v51, v52);
      v55 = v54;

      if (v55)
      {
        v56 = *(*(v40 + 56) + 48 * v53 + 40);

        v57 = v167;
        sub_1BAAD2DAC(v168, v167, &unk_1EBC13D70);
        v43 = v169;
        v40 = v171;
        if ((*(v169 + 48))(v57, 1, v171) == 1)
        {
          sub_1BAAD2E14(v57, &unk_1EBC13D70);
          v38 = v151;
          a3 = v170;
          goto LABEL_51;
        }

        v140 = v56;
        v44 = v166;
        v138 = *(v43 + 32);
        v139 = v43 + 32;
        v138(v166, v57, v40);
        v58 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
        v59 = v150;
        swift_beginAccess();
        v38 = v151;
        a3 = v170;
        if (*(v59 + v58))
        {
          v141 = *(v59 + v58);
          v60 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
          swift_beginAccess();
          v61 = *(v59 + v60);
          if (!v61)
          {
            v64 = v141;
            goto LABEL_55;
          }

          v62 = v61 & 0xFFFFFFFFFFFFFF8;
          if (!(v61 >> 62))
          {
            v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v64 = v141;
            if (v63)
            {
              goto LABEL_27;
            }

LABEL_55:
            v115 = v64;
            v67 = MEMORY[0x1E69E7CC8];
LABEL_56:
            if (qword_1ED7876D0 != -1)
            {
LABEL_72:
              swift_once();
            }

            v175 = v67;
            v116 = sub_1BABE72BC();
            __swift_project_value_buffer(v116, qword_1ED78BBA0);
            v117 = sub_1BABE729C();
            v118 = sub_1BABE790C();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              *v119 = 0;
              _os_log_impl(&dword_1BAACF000, v117, v118, "Ingesting file handle", v119, 2u);
              MEMORY[0x1BFAFE460](v119, -1, -1);
            }

            sub_1BABE6CEC();
            *&v187 = sub_1BABE6CAC();
            *(&v187 + 1) = v120;
            v121 = v156;
            v122 = v157;
            v123 = v158;
            (*(v157 + 104))(v156, *MEMORY[0x1E6968F70], v158);
            sub_1BAAFBFA8();
            v124 = v161;
            sub_1BABE6B8C();
            (*(v122 + 8))(v121, v123);

            v125 = v141;
            v126 = v154;
            if (v140)
            {
              sub_1BABE789C();
            }

            else
            {
              sub_1BABE78AC();
            }

            if (v126)
            {
              v127 = v124;
              sub_1BAADAEE8(v152, v153);

LABEL_67:
              v134 = *(v169 + 8);
              v135 = v127;
              v136 = v171;
              v134(v135, v171);
              (*(v159 + 8))(v162, v160);
              return (v134)(v166, v136);
            }

            *&v187 = 0;
            v128 = v141;
            if (![v141 closeAndReturnError_])
            {
              v133 = v187;
              sub_1BABE6ADC();

              swift_willThrow();
              sub_1BAADAEE8(v152, v153);

              v127 = v161;
              goto LABEL_67;
            }

            v129 = v187;

            (*(v159 + 8))(v162, v160);
            v130 = v169;
            v131 = v171;
            (*(v169 + 8))(v166, v171);
            v132 = v155;
            v138(v155, v161, v131);
            v106 = *(v130 + 56);
            v106(v132, 0, 1, v131);
            a3 = v170;
            sub_1BAB23414(v132, v170, &unk_1EBC13D70);
LABEL_52:
            v107 = v163;
            sub_1BAAD2DAC(a3, v163, &unk_1EBC13D70);
            v108 = v165;
            v109 = *(v165 + 20);
            v106(v38 + v109, 1, 1, v171);
            v110 = v153;
            *v38 = v152;
            v38[1] = v110;
            sub_1BAAD7BA0(v107, v38 + v109, &unk_1EBC13D70);
            v111 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version;
            v112 = v150;
            swift_beginAccess();
            v113 = *(v112 + v111);
            v114 = v148;
            sub_1BAB22824(v38, v148, type metadata accessor for ReplicatorRecord.Value);
            (*(v164 + 56))(v114, 0, 1, v108);
            sub_1BAB30414(v114, v113);
            sub_1BAAD2E14(v170, &unk_1EBC13D70);
            return sub_1BAB2288C(v38, type metadata accessor for ReplicatorRecord.Value);
          }

          v63 = sub_1BABE7A5C();
          v64 = v141;
          if (!v63)
          {
            goto LABEL_55;
          }

LABEL_27:
          v175 = v61 & 0xC000000000000001;
          v65 = v64;

          v66 = 0;
          v67 = MEMORY[0x1E69E7CC8];
          v142 = v61 & 0xFFFFFFFFFFFFFF8;
          v143 = v61;
          v174 = v63;
          while (2)
          {
            if (v175)
            {
              v69 = MEMORY[0x1BFAFD7A0](v66, v61);
            }

            else
            {
              if (v66 >= *(v62 + 16))
              {
                goto LABEL_69;
              }

              v69 = *(v61 + 8 * v66 + 32);
            }

            v38 = v69;
            v70 = (v66 + 1);
            if (__OFADD__(v66, 1))
            {
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            v71 = (v69 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name);
            swift_beginAccess();
            v72 = v71[1];
            if (v72)
            {
              v173 = *v71;
              v73 = (v38 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data);
              swift_beginAccess();
              v74 = v73[1];
              if (v74 >> 60 != 15)
              {
                v172 = (v66 + 1);
                v168 = v38;
                v75 = *v73;
                v188 = MEMORY[0x1E6969080];
                v76 = v74;
                v77 = v67;
                v78 = sub_1BAB228EC();
                v189 = v78;
                v79 = sub_1BAB22940();
                v190 = v79;
                *&v187 = v75;
                *(&v187 + 1) = v76;
                sub_1BAB22994(&v187, &v185);
                sub_1BAAF10BC(v75, v76);
                v147 = v75;
                v167 = v76;
                sub_1BAAF10BC(v75, v76);

                v80 = v77;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v176 = v77;
                v38 = v186;
                v82 = __swift_mutable_project_boxed_opaque_existential_2(&v185, v186);
                v146 = &v137;
                MEMORY[0x1EEE9AC00](v82);
                v84 = (&v137 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
                (*(v85 + 16))(v84);
                v182 = MEMORY[0x1E6969080];
                v183 = v78;
                v144 = v79;
                v145 = v78;
                v184 = v79;
                v181 = *v84;
                v67 = v173;
                v87 = sub_1BABD5AB4(v173, v72);
                v88 = *(v80 + 16);
                v89 = (v86 & 1) == 0;
                v90 = v88 + v89;
                if (__OFADD__(v88, v89))
                {
                  goto LABEL_70;
                }

                v91 = v86;
                if (*(v80 + 24) >= v90)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v70 = v172;
                    if ((v86 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    sub_1BABDDBB4();
                    v70 = v172;
                    if ((v91 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }
                }

                else
                {
                  sub_1BABD9CC4(v90, isUniquelyReferenced_nonNull_native);
                  v92 = sub_1BABD5AB4(v67, v72);
                  if ((v91 & 1) != (v93 & 1))
                  {
                    result = sub_1BABE7EFC();
                    __break(1u);
                    return result;
                  }

                  v87 = v92;
                  v70 = v172;
                  if ((v91 & 1) == 0)
                  {
LABEL_46:
                    v95 = v176;
                    v96 = __swift_mutable_project_boxed_opaque_existential_2(&v181, v182);
                    v38 = &v137;
                    MEMORY[0x1EEE9AC00](v96);
                    v98 = v67;
                    v99 = (&v137 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
                    (*(v100 + 16))(v99);
                    v178 = MEMORY[0x1E6969080];
                    v179 = v145;
                    v180 = v144;
                    v101 = *v99;
                    v67 = v95;
                    v177 = v101;
                    v95[(v87 >> 6) + 8] |= 1 << v87;
                    v102 = (v95[6] + 16 * v87);
                    *v102 = v98;
                    v102[1] = v72;
                    sub_1BAB22994(&v177, (v95[7] + 48 * v87));

                    sub_1BAADAEE8(v147, v167);
                    v103 = v95[2];
                    v104 = __OFADD__(v103, 1);
                    v105 = v103 + 1;
                    if (v104)
                    {
                      goto LABEL_71;
                    }

                    v95[2] = v105;
                    __swift_destroy_boxed_opaque_existential_1(&v181);
                    v62 = v142;
                    v61 = v143;
                    v68 = v174;
                    v70 = v172;
LABEL_48:
                    __swift_destroy_boxed_opaque_existential_1(&v185);
LABEL_29:
                    ++v66;
                    v38 = v151;
                    if (v70 == v68)
                    {

                      goto LABEL_56;
                    }

                    continue;
                  }
                }

                v67 = v176;
                v94 = (v176[7] + 48 * v87);
                __swift_destroy_boxed_opaque_existential_1(v94);
                sub_1BAB22994(&v181, v94);

                sub_1BAADAEE8(v147, v167);
                v62 = v142;
                v61 = v143;
                v68 = v174;
                goto LABEL_48;
              }
            }

            break;
          }

          v68 = v174;
          goto LABEL_29;
        }

LABEL_50:
        (*(v43 + 8))(v44, v40);
LABEL_51:
        v106 = *(v43 + 56);
        v106(a3, 1, 1, v40);
        goto LABEL_52;
      }

      sub_1BAADAEE8(v152, v153);
    }

    else
    {
      sub_1BAADAEE8(v50, v153);
    }
  }

  return result;
}

uint64_t sub_1BAB19F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BABD5D18(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = sub_1BABE6CFC();
    v16 = *(v9 - 8);
    (*(v16 + 16))(a3, v8 + *(v16 + 72) * v7, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = sub_1BABE6CFC();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_1BAB1A0D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BABD5D18(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for ReplicatorRecord(0);
    v16 = *(v9 - 8);
    sub_1BAB22824(v8 + *(v16 + 72) * v7, a3, type metadata accessor for ReplicatorRecord);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for ReplicatorRecord(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_1BAB1A1FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *a2;
  v15 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v22 = a3;
  v23 = v14;
  v24 = a4;
  v25 = a5;

  v17 = sub_1BAAFF1EC(MEMORY[0x1E69E7CC8], sub_1BAB22700, v21, v16);

  if (!v5)
  {
    v19 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
    swift_beginAccess();
    sub_1BAB22824(v14 + v19, v13, type metadata accessor for ReplicatorRecord.ID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *a1;
    sub_1BAAE68EC(v17, v13, isUniquelyReferenced_nonNull_native);
    result = sub_1BAB2288C(v13, type metadata accessor for ReplicatorRecord.ID);
    *a1 = v26;
  }

  return result;
}

void sub_1BAB1A398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v119 = a5;
  v128[21] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v115 = &v105 - v11;
  v118 = sub_1BABE6AFC();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1BABE6CFC();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BABE6BAC();
  v122 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v124 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v105 - v18;
  v19 = *a2;
  v20 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (!v21)
  {
    return;
  }

  v22 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  swift_beginAccess();
  v23 = *(v19 + v22);
  if (!v23)
  {
    return;
  }

  v112 = v21;
  v116 = v23;
  v110 = v13;
  v108 = v19;
  v111 = v15;
  v109 = a1;
  v113 = v5;
  v24 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_clientDescriptors;
  swift_beginAccess();
  v25 = *(a3 + v24);
  v28 = *(v25 + 56);
  v27 = v25 + 56;
  v26 = v28;
  v127 = *(a3 + v24);
  v29 = 1 << *(v127 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v32 = (a4 + OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id);
  v33 = swift_beginAccess();
  v34 = 0;
  do
  {
    if (v31)
    {
      goto LABEL_11;
    }

    do
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v79 = v33;
        v48 = sub_1BABE7A5C();
        v33 = v79;
        if (!v48)
        {
          goto LABEL_51;
        }

LABEL_20:
        v49 = 0;
        v50 = MEMORY[0x1E69E7CC8];
        v127 = v33 & 0xC000000000000001;
        v126 = v48;
        while (1)
        {
          v51 = v49;
          while (1)
          {
            if (v127)
            {
              v33 = MEMORY[0x1BFAFD7A0](v51, v33);
            }

            else
            {
              if (v51 >= *(v27 + 16))
              {
                goto LABEL_49;
              }

              v33 = *(v33 + 8 * v51 + 32);
            }

            v52 = v33;
            v49 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_48;
            }

            v53 = (v33 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name);
            swift_beginAccess();
            v54 = v53[1];
            if (v54)
            {
              v55 = *v53;
              v56 = OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data;
              swift_beginAccess();
              v57 = *&v52[v56];
              v58 = *&v52[v56 + 8];
              if (v58 >> 60 != 15)
              {
                break;
              }
            }

            ++v51;
            v33 = v116;
            if (v49 == v126)
            {
              goto LABEL_52;
            }
          }

          v125 = *&v52[v56];
          v59 = v57;
          sub_1BAAF10BC(v57, v58);
          v106 = v59;
          sub_1BAAF10BC(v59, v58);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v128[0] = v50;
          v61 = sub_1BABD5AB4(v55, v54);
          v63 = v50[2];
          v64 = (v62 & 1) == 0;
          v65 = __OFADD__(v63, v64);
          v66 = v63 + v64;
          if (v65)
          {
            __break(1u);
LABEL_66:
            __break(1u);
          }

          v67 = v62;
          if (v50[3] >= v66)
          {
            v69 = v125;
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v62 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            else
            {
              v75 = v61;
              sub_1BABDD208();
              v69 = v125;
              v61 = v75;
              if ((v67 & 1) == 0)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
            sub_1BABD8A8C(v66, isUniquelyReferenced_nonNull_native);
            v61 = sub_1BABD5AB4(v55, v54);
            if ((v67 & 1) != (v68 & 1))
            {
              sub_1BABE7EFC();
              __break(1u);
              return;
            }

            v69 = v125;
            if ((v67 & 1) == 0)
            {
LABEL_40:
              v50 = v128[0];
              *(v128[0] + (v61 >> 6) + 8) |= 1 << v61;
              v76 = (v50[6] + 16 * v61);
              *v76 = v55;
              v76[1] = v54;
              *(v50[7] + 16 * v61) = v69;

              sub_1BAADAEE8(v106, v58);
              v77 = v50[2];
              v65 = __OFADD__(v77, 1);
              v78 = v77 + 1;
              if (v65)
              {
                goto LABEL_66;
              }

              v50[2] = v78;
              goto LABEL_42;
            }
          }

          v70 = v61;

          v50 = v128[0];
          v71 = (*(v128[0] + 7) + 16 * v70);
          v72 = *v71;
          v73 = v71[1];
          v74 = v106;
          *v71 = v106;
          v71[1] = v58;
          sub_1BAAD73E4(v72, v73);

          sub_1BAADAEE8(v74, v58);
LABEL_42:
          v33 = v116;
          if (v49 == v126)
          {
            goto LABEL_52;
          }
        }
      }

      if (v35 >= ((v29 + 63) >> 6))
      {
        return;
      }

      v31 = *(v27 + 8 * v35);
      ++v34;
    }

    while (!v31);
    v34 = v35;
LABEL_11:
    v36 = (*(v127 + 48) + 80 * (__clz(__rbit64(v31)) | (v34 << 6)));
    v37 = *v36;
    v38 = v36[1];
    v126 = v36[3];
    *&v125 = v36[5];
    v39 = v36[8];
    if (v37 == v32[4] && v38 == v32[5])
    {
      break;
    }

    v31 &= v31 - 1;
    v33 = sub_1BABE7EDC();
  }

  while ((v33 & 1) == 0);
  v107 = v32;
  v41 = v32[3];
  v42 = *(v39 + 16);
  v43 = v112;

  if (!v42)
  {

    return;
  }

  v112 = v43;
  v44 = v107[2];

  v45 = sub_1BABD5AB4(v44, v41);
  v47 = v46;

  if ((v47 & 1) == 0)
  {

    return;
  }

  LODWORD(v107) = *(*(v39 + 56) + 48 * v45 + 40);

  v33 = v116;
  v27 = v116 & 0xFFFFFFFFFFFFFF8;
  if (v116 >> 62)
  {
    goto LABEL_50;
  }

  v48 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48)
  {
    goto LABEL_20;
  }

LABEL_51:
  v50 = MEMORY[0x1E69E7CC8];
LABEL_52:

  sub_1BABA275C(v50);

  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v80 = sub_1BABE72BC();
  __swift_project_value_buffer(v80, qword_1ED78BBA0);
  v81 = sub_1BABE729C();
  v82 = sub_1BABE790C();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v111;
  v85 = v113;
  if (v83)
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_1BAACF000, v81, v82, "Ingesting file handle", v86, 2u);
    MEMORY[0x1BFAFE460](v86, -1, -1);
  }

  sub_1BABE6CEC();
  v128[0] = sub_1BABE6CAC();
  v128[1] = v87;
  v88 = v117;
  v89 = v110;
  v90 = v118;
  (*(v117 + 104))(v110, *MEMORY[0x1E6968F70], v118);
  sub_1BAAFBFA8();
  sub_1BABE6B8C();
  (*(v88 + 8))(v89, v90);

  v91 = v112;
  if (v107)
  {
    sub_1BABE789C();
  }

  else
  {
    sub_1BABE78AC();
  }

  if (v85)
  {
  }

  else
  {

    v128[0] = 0;
    if ([v91 closeAndReturnError_])
    {
      v92 = *(v120 + 8);
      v93 = v128[0];
      v92(v123, v121);
      v94 = v122;
      v95 = v114;
      (*(v122 + 32))(v114, v124, v84);
      v96 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version;
      v97 = v108;
      swift_beginAccess();
      v98 = *(v97 + v96);
      v99 = v115;
      (*(v94 + 16))(v115, v95, v84);
      (*(v94 + 56))(v99, 0, 1, v84);
      sub_1BAB3067C(v99, v98);

      (*(v94 + 8))(v95, v84);
      return;
    }

    v100 = v128[0];
    sub_1BABE6ADC();

    swift_willThrow();
  }

  v101 = v122;
  v102 = v121;
  v103 = v120;
  v104 = v124;

  (*(v101 + 8))(v104, v84);
  (*(v103 + 8))(v123, v102);
}

uint64_t sub_1BAB1B000(void *a1, void *a2)
{
  v187 = a2;
  v241[12] = *MEMORY[0x1E69E9840];
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v4 = MEMORY[0x1EEE9AC00](v225);
  v201 = &v183 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v223 = &v183 - v6;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v189 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v213 = &v183 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v205 = &v183 - v13;
  v14 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v197 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v185 = &v183 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v222 = &v183 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v207 = &v183 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v184 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v183 - v25);
  v233 = type metadata accessor for ReplicatorRecord.ID(0);
  v190 = *(v233 - 8);
  v27 = MEMORY[0x1EEE9AC00](v233);
  v203 = &v183 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v192 = &v183 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v194 = (&v183 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v191 = &v183 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v204 = &v183 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v224 = &v183 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v215 = &v183 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v183 - v41;
  v43 = sub_1BABE73FC();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = (&v183 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v2 + OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue);
  *v46 = v47;
  (*(v44 + 104))(v46, *MEMORY[0x1E69E8020], v43);
  v48 = v47;
  LOBYTE(v47) = sub_1BABE740C();
  v50 = *(v44 + 8);
  v49 = (v44 + 8);
  v50(v46, v43);
  if ((v47 & 1) == 0)
  {
    goto LABEL_136;
  }

  v49 = v8;

  v8 = sub_1BABB63C4(v51);

  v240 = v8;
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_137;
  }

LABEL_3:
  v52 = sub_1BABE72BC();
  v53 = __swift_project_value_buffer(v52, qword_1ED78BBA0);

  v188 = v53;
  v54 = sub_1BABE729C();
  v55 = sub_1BABE78DC();
  v56 = os_log_type_enabled(v54, v55);
  v196 = a1;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    *(v57 + 4) = a1[2];

    _os_log_impl(&dword_1BAACF000, v54, v55, "Begin fetch for %{public}ld client-defined IDs", v57, 0xCu);
    MEMORY[0x1BFAFE460](v57, -1, -1);

    if (!v8[2])
    {
      goto LABEL_124;
    }
  }

  else
  {

    if (!v8[2])
    {
LABEL_124:
      v198 = MEMORY[0x1E69E7CC8];
LABEL_125:

      v175 = v198;

      v176 = sub_1BABE729C();
      v177 = sub_1BABE78DC();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 134349056;
        *(v178 + 4) = v175[2];

        _os_log_impl(&dword_1BAACF000, v176, v177, "End fetch for %{public}ld client-defined record IDs", v178, 0xCu);
        MEMORY[0x1BFAFE460](v178, -1, -1);
      }

      else
      {
      }

      return v198;
    }
  }

  v186 = sub_1BABE6AAC();
  v195 = 0;
  v217 = (v49 + 4);
  v218 = (v49 + 1);
  v212 = (v190 + 56);
  v198 = MEMORY[0x1E69E7CC8];
  *&v58 = 134350080;
  v183 = v58;
  v206 = v26;
  v26 = MEMORY[0x1E69E7CC0];
  v230 = v42;
  v231 = v49 + 6;
  while (1)
  {
    v241[0] = v196;
    swift_allocObject();
    sub_1BABE6A9C();
    sub_1BAB21B44();
    v59 = v193;
    v60 = sub_1BABE6A8C();
    if (v59)
    {
      break;
    }

    v62 = v60;
    v63 = v61;
    v64 = sub_1BABE6BDC();
    sub_1BAAD73E4(v62, v63);

    v241[0] = 0;
    v65 = [v187 clientDefinedRecordIDsWithParameters:v64 error:v241];

    v66 = v241[0];
    if (!v65)
    {
      v179 = v241[0];

      sub_1BABE6ADC();

      swift_willThrow();

      return v198;
    }

    sub_1BABE6A7C();
    swift_allocObject();
    v67 = v66;
    sub_1BABE6A6C();
    v68 = sub_1BABE6BEC();
    v70 = v69;
    sub_1BAB21B98();
    sub_1BABE6A5C();
    v193 = 0;
    sub_1BAAD73E4(v68, v70);

    v202 = v241[0];
    if (!v241[0])
    {
      __break(1u);
    }

    v71 = v241[2];
    v200 = v241[1];

    v72 = v71[2];
    v73 = v224;
    v199 = v71;
    v211 = v72;
    if (v72)
    {
      v210 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v209 = v71 + v210;
      v74 = *(v233 + 32);
      v219 = *(v233 + 28);
      v208 = (v42 + v74);
      v75 = *(v190 + 72);

      v76 = 0;
      v226 = v75;
      while (1)
      {
        v214 = v76;
        sub_1BAB22824(&v209[v75 * v76], v42, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB22824(v42, v215, type metadata accessor for ReplicatorRecord.ID);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BAAF9A54(0, v26[2] + 1, 1, v26);
        }

        v81 = v26[2];
        v80 = v26[3];
        if (v81 >= v80 >> 1)
        {
          v26 = sub_1BAAF9A54(v80 > 1, v81 + 1, 1, v26);
        }

        v26[2] = v81 + 1;
        sub_1BAB2347C(v215, v26 + v210 + v81 * v75, type metadata accessor for ReplicatorRecord.ID);
        swift_beginAccess();
        sub_1BABE7F9C();
        v82 = *(v42 + 8);
        v232 = *v42;
        v239 = v82;
        sub_1BABE759C();
        v83 = *(v42 + 16);
        v237 = *(v42 + 24);
        v238 = v83;
        sub_1BABE759C();
        v84 = *(v42 + 32);
        v234 = *(v42 + 40);
        v235 = v84;
        sub_1BABE759C();
        v85 = v219;
        v86 = v207;
        sub_1BAB22824(v42 + v219, v207, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v229 = *v231;
        v87 = v229(v86, 1, v7);
        v216 = v26;
        if (v87 == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v88 = v205;
          (*v217)(v205, v86, v7);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          v89 = v88;
          v75 = v226;
          (*v218)(v89, v7);
        }

        v90 = v208[1];
        v221 = *v208;
        v220 = v90;
        sub_1BABE759C();
        v91 = sub_1BABE7FDC();
        v92 = (v8 + 7);
        v93 = -1 << *(v8 + 32);
        v94 = v91 & ~v93;
        v95 = v232;
        if (((*(v8 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v94) & 1) == 0)
        {
LABEL_11:
          v77 = v206;
          (*v212)(v206, 1, 1, v233);
          goto LABEL_12;
        }

        v236 = ~v93;
        v227 = v8;
        v228 = (v8 + 7);
        while (1)
        {
          v96 = v94 * v75;
          sub_1BAB22824(v8[6] + v94 * v75, v73, type metadata accessor for ReplicatorRecord.ID);
          v97 = *v73 == v95 && v73[1] == v239;
          if (!v97 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_25;
          }

          v98 = v73[2] == v238 && v73[3] == v237;
          if (!v98 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_25;
          }

          v99 = v73[4] == v235 && v73[5] == v234;
          if (!v99 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_25;
          }

          v100 = *(v225 + 48);
          v101 = v223;
          sub_1BAB22824(v73 + *(v233 + 28), v223, type metadata accessor for ReplicatorRecord.ID.Ownership);
          sub_1BAB22824(v230 + v85, v101 + v100, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v102 = v229;
          if (v229(v101, 1, v7) == 1)
          {
            v103 = v102(v101 + v100, 1, v7);
            v92 = v228;
            if (v103 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_23;
          }

          v104 = v222;
          sub_1BAB22824(v101, v222, type metadata accessor for ReplicatorRecord.ID.Ownership);
          if (v102(v101 + v100, 1, v7) != 1)
          {
            break;
          }

          (*v218)(v104, v7);
          v85 = v219;
          v92 = v228;
LABEL_23:
          sub_1BAAD2E14(v101, &unk_1EBC12A28);
LABEL_24:
          v73 = v224;
          v8 = v227;
          v75 = v226;
          v95 = v232;
LABEL_25:
          sub_1BAB2288C(v73, type metadata accessor for ReplicatorRecord.ID);
          v94 = (v94 + 1) & v236;
          if (((*&v92[(v94 >> 3) & 0xFFFFFFFFFFFFFF8] >> v94) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v105 = v213;
        (*v217)(v213, v101 + v100, v7);
        v106 = sub_1BABE6CCC();
        v107 = *v218;
        (*v218)(v105, v7);
        v107(v222, v7);
        v85 = v219;
        v92 = v228;
        if ((v106 & 1) == 0)
        {
          sub_1BAB2288C(v101, type metadata accessor for ReplicatorRecord.ID.Ownership);
          goto LABEL_24;
        }

LABEL_46:
        sub_1BAB2288C(v101, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v73 = v224;
        v108 = &v224[*(v233 + 32)];
        v109 = *v108 == v221 && *(v108 + 1) == v220;
        v8 = v227;
        v75 = v226;
        v95 = v232;
        if (!v109 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_25;
        }

        sub_1BAB2288C(v73, type metadata accessor for ReplicatorRecord.ID);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v240;
        v241[0] = v240;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BAB1E59C();
          v111 = v241[0];
        }

        v77 = v206;
        sub_1BAB2347C(v111[6] + v96, v206, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB1FB44(v94);
        v8 = v241[0];
        v240 = v241[0];
        (*v212)(v77, 0, 1, v233);
LABEL_12:
        v78 = v214 + 1;
        swift_endAccess();
        v79 = v77;
        v76 = v78;
        sub_1BAAD2E14(v79, &qword_1EBC12A20);
        v42 = v230;
        sub_1BAB2288C(v230, type metadata accessor for ReplicatorRecord.ID);
        v26 = v216;
        if (v78 == v211)
        {
          v71 = v199;

          break;
        }
      }
    }

    v112 = __OFADD__(v195++, 1);
    v49 = v231;
    a1 = v202;
    if (v112)
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      swift_once();
      goto LABEL_3;
    }

    v113 = v71[2];

    sub_1BAB21BEC(a1);
    v114 = sub_1BABE729C();
    if (v113)
    {
      v115 = sub_1BABE78EC();
    }

    else
    {
      v115 = sub_1BABE78DC();
    }

    v116 = v115;
    if (os_log_type_enabled(v114, v115))
    {
      v117 = swift_slowAlloc();
      *v117 = v183;
      *(v117 + 4) = v196[2];

      *(v117 + 12) = 2050;
      *(v117 + 14) = v202[2];
      *(v117 + 22) = 2050;
      *(v117 + 24) = v199[2];
      sub_1BAB21C38(v202);
      *(v117 + 32) = 2050;
      *(v117 + 34) = v8[2];
      *(v117 + 42) = 2050;
      a1 = v202;
      *(v117 + 44) = v195;
      _os_log_impl(&dword_1BAACF000, v114, v116, "Requested %{public}ld client-defined IDs; fetched %{public}ld; failed %{public}ld; remaining %{public}ld; fetch count %{public}ld", v117, 0x34u);
      MEMORY[0x1BFAFE460](v117, -1, -1);
    }

    else
    {
      sub_1BAB21C38(a1);
    }

    v118 = v204;
    v119 = a1[2];
    if (v119)
    {
      v121 = 0;
      v122 = (*(v190 + 80) + 32) & ~*(v190 + 80);
      v211 = a1 + v122;
      v210 = v200 + v122;
      v216 = v26;
      v209 = v119;
      while (1)
      {
        if (v121 >= a1[2])
        {
          goto LABEL_132;
        }

        v26 = v121;
        v42 = *(v190 + 72);
        v124 = v42 * v121;
        sub_1BAB22824(&v211[v124], v118, type metadata accessor for ReplicatorRecord.ID);
        if (v26 >= v200[2])
        {
          goto LABEL_133;
        }

        v125 = v210 + v124;
        v126 = v191;
        sub_1BAB22824(v125, v191, type metadata accessor for ReplicatorRecord.ID);
        v127 = v126;
        v128 = v194;
        sub_1BAB22824(v127, v194, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB22824(v118, v192, type metadata accessor for ReplicatorRecord.ID);
        v129 = v198;
        v130 = swift_isUniquelyReferenced_nonNull_native();
        v241[0] = v129;
        v131 = sub_1BABD5D18(v128);
        v133 = v129;
        v134 = v129[2];
        v135 = (v132 & 1) == 0;
        v112 = __OFADD__(v134, v135);
        v136 = v134 + v135;
        if (v112)
        {
          goto LABEL_134;
        }

        v137 = v132;
        if (v133[3] >= v136)
        {
          v139 = v185;
          if ((v130 & 1) == 0)
          {
            v174 = v131;
            sub_1BABDCF90();
            v139 = v185;
            v131 = v174;
          }
        }

        else
        {
          sub_1BABD8490(v136, v130);
          v131 = sub_1BABD5D18(v194);
          if ((v137 & 1) != (v138 & 1))
          {
            goto LABEL_140;
          }

          v139 = v185;
        }

        v140 = v203;
        v198 = v241[0];
        if (v137)
        {
          sub_1BAB2277C(v192, *(v241[0] + 7) + v131 * v42, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v194, type metadata accessor for ReplicatorRecord.ID);
        }

        else
        {
          *(v241[0] + (v131 >> 6) + 8) |= 1 << v131;
          v141 = v131 * v42;
          v49 = v194;
          sub_1BAB22824(v194, v198[6] + v131 * v42, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2347C(v192, v198[7] + v141, type metadata accessor for ReplicatorRecord.ID);
          sub_1BAB2288C(v49, type metadata accessor for ReplicatorRecord.ID);
          v142 = v198[2];
          v112 = __OFADD__(v142, 1);
          v143 = v142 + 1;
          if (v112)
          {
            goto LABEL_135;
          }

          v198[2] = v143;
          v49 = v231;
        }

        v214 = v26;
        swift_beginAccess();
        sub_1BABE7F9C();
        v144 = v204;
        v145 = *(v204 + 8);
        v232 = *v204;
        v229 = v145;
        sub_1BABE759C();
        v146 = *(v144 + 16);
        v238 = *(v144 + 24);
        v239 = v146;
        sub_1BABE759C();
        v147 = *(v144 + 32);
        v234 = *(v144 + 40);
        v235 = v147;
        sub_1BABE759C();
        v228 = *(v233 + 28);
        sub_1BAB22824(&v228[v144], v139, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v227 = *v49;
        if ((v227)(v139, 1, v7) == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v148 = v205;
          (*v217)(v205, v139, v7);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          (*v218)(v148, v7);
        }

        v149 = (v204 + *(v233 + 32));
        v150 = v149[1];
        v221 = *v149;
        v220 = v150;
        sub_1BABE759C();
        v151 = sub_1BABE7FDC();
        v152 = -1 << *(v8 + 32);
        v153 = v151 & ~v152;
        v237 = (v8 + 7);
        v154 = v232;
        v155 = v229;
        if (((*(v8 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v153) & 1) == 0)
        {
LABEL_69:
          v123 = v184;
          (*v212)(v184, 1, 1, v233);
          v118 = v204;
          v42 = v230;
          goto LABEL_70;
        }

        v236 = ~v152;
        v226 = v42;
        while (1)
        {
          v156 = v153 * v42;
          sub_1BAB22824(v8[6] + v153 * v42, v140, type metadata accessor for ReplicatorRecord.ID);
          v157 = *v140 == v154 && v140[1] == v155;
          if (!v157 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_91;
          }

          v158 = v140[2] == v239 && v140[3] == v238;
          if (!v158 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_91;
          }

          v159 = v140[4] == v235 && v140[5] == v234;
          if (!v159 && (sub_1BABE7EDC() & 1) == 0)
          {
            goto LABEL_91;
          }

          v160 = v8;
          v161 = *(v225 + 48);
          v162 = v201;
          sub_1BAB22824(v140 + *(v233 + 28), v201, type metadata accessor for ReplicatorRecord.ID.Ownership);
          sub_1BAB22824(&v228[v204], v162 + v161, type metadata accessor for ReplicatorRecord.ID.Ownership);
          v163 = v227;
          if ((v227)(v162, 1, v7) == 1)
          {
            v164 = (v163)(v162 + v161, 1, v7);
            v8 = v160;
            if (v164 == 1)
            {
              goto LABEL_112;
            }

            goto LABEL_89;
          }

          v165 = v163;
          v166 = v197;
          sub_1BAB22824(v162, v197, type metadata accessor for ReplicatorRecord.ID.Ownership);
          if ((v165)(v162 + v161, 1, v7) != 1)
          {
            break;
          }

          (*v218)(v166, v7);
          v8 = v160;
          a1 = v202;
LABEL_89:
          sub_1BAAD2E14(v162, &unk_1EBC12A28);
LABEL_90:
          v140 = v203;
          v42 = v226;
          v154 = v232;
          v155 = v229;
LABEL_91:
          sub_1BAB2288C(v140, type metadata accessor for ReplicatorRecord.ID);
          v153 = (v153 + 1) & v236;
          if (((*&v237[(v153 >> 3) & 0xFFFFFFFFFFFFFF8] >> v153) & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        v167 = v189;
        (*v217)(v189, v162 + v161, v7);
        LODWORD(v219) = sub_1BABE6CCC();
        v168 = *v218;
        v169 = v167;
        a1 = v202;
        (*v218)(v169, v7);
        v168(v166, v7);
        v8 = v160;
        if ((v219 & 1) == 0)
        {
          sub_1BAB2288C(v162, type metadata accessor for ReplicatorRecord.ID.Ownership);
          goto LABEL_90;
        }

LABEL_112:
        sub_1BAB2288C(v162, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v140 = v203;
        v170 = &v203[*(v233 + 32)];
        v171 = *v170 == v221 && *(v170 + 1) == v220;
        v42 = v226;
        v154 = v232;
        v155 = v229;
        if (!v171 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_91;
        }

        sub_1BAB2288C(v140, type metadata accessor for ReplicatorRecord.ID);
        v172 = swift_isUniquelyReferenced_nonNull_native();
        v173 = v240;
        v241[0] = v240;
        v42 = v230;
        if (!v172)
        {
          sub_1BAB1E59C();
          v173 = v241[0];
        }

        v123 = v184;
        sub_1BAB2347C(v173[6] + v156, v184, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB1FB44(v153);
        v8 = v241[0];
        v240 = v241[0];
        (*v212)(v123, 0, 1, v233);
        v118 = v204;
LABEL_70:
        v121 = v214 + 1;
        swift_endAccess();
        sub_1BAAD2E14(v123, &qword_1EBC12A20);
        sub_1BAB2288C(v191, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB2288C(v118, type metadata accessor for ReplicatorRecord.ID);
        v26 = v216;
        v49 = v231;
        if (v121 == v209)
        {
          v120 = a1;
          goto LABEL_66;
        }
      }
    }

    v120 = a1;
LABEL_66:
    sub_1BAB21C38(v120);
    if (!v8[2])
    {
      goto LABEL_125;
    }
  }

  v181 = swift_unexpectedError();
  __break(1u);
  sub_1BAAD73E4(v181, v182);
  swift_unexpectedError();
  __break(1u);
LABEL_140:
  result = sub_1BABE7EFC();
  __break(1u);
  return result;
}

double sub_1BAB1CF3C(uint64_t a1, uint64_t *a2)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB21B98();
  sub_1BABE6A5C();
  sub_1BAB21C38(*a2);
  sub_1BAAD73E4(v3, v5);

  result = *&v7;
  *a2 = v7;
  a2[2] = v8;
  return result;
}

double sub_1BAB1D084(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void, void))
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  a3();
  sub_1BABE6A5C();
  a5(*a2, a2[1]);
  sub_1BAAD73E4(v8, v10);

  result = *&v12;
  *a2 = v12;
  return result;
}

uint64_t sub_1BAB1D184(uint64_t a1, uint64_t a2)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22F6C();
  sub_1BABE6A5C();
  sub_1BAB22FC0(*a2);
  sub_1BAAD73E4(v3, v5);

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

double sub_1BAB1D278(uint64_t a1, uint64_t a2)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22EC4();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_1BAB1D3D0(uint64_t a1, uint64_t a2)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22F18();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

__n128 sub_1BAB1D4F0(uint64_t a1, _OWORD *a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  a3();
  sub_1BABE6A5C();
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  v15[4] = a2[4];
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  sub_1BAAD2E14(v15, a5);
  sub_1BAAD73E4(v8, v10);

  v13 = v15[9];
  a2[2] = v15[8];
  a2[3] = v13;
  a2[4] = v15[10];
  result = v15[7];
  *a2 = v15[6];
  a2[1] = result;
  return result;
}

double sub_1BAB1D6A8(uint64_t a1, _OWORD *a2, void (*a3)(void))
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v5 = sub_1BABE6BEC();
  v7 = v6;
  a3();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v5, v7);

  result = *&v9;
  *a2 = v9;
  return result;
}

uint64_t sub_1BAB1D7B8(uint64_t a1, void *a2, void (*a3)(void))
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v5 = sub_1BABE6BEC();
  v7 = v6;
  a3();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v5, v7);

  *a2 = v9;
  return result;
}

unint64_t sub_1BAB1D8A8()
{
  result = qword_1EBC12310;
  if (!qword_1EBC12310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12310);
  }

  return result;
}

uint64_t sub_1BAB1D8FC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v41 = a2 + 56;
  v33 = result + 56;
  v34 = result;
  v37 = a2;
  v32 = v7;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v35 = (v6 - 1) & v6;
LABEL_13:
      v36 = v2;
      v11 = (*(result + 48) + 48 * (v8 | (v2 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      v17 = v11[5];
      v18 = a2;
      sub_1BABE7F9C();

      sub_1BABE759C();
      v40 = v14;
      sub_1BABE759C();
      v39 = v16;
      MEMORY[0x1BFAFDC40](v16);
      v38 = v17;
      MEMORY[0x1BFAFDC40](v17);
      v19 = sub_1BABE7FDC();
      v20 = -1 << *(v18 + 32);
      v21 = v19 & ~v20;
      if (((*(v41 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        break;
      }

      v22 = ~v20;
      v23 = *(v37 + 48);
      while (1)
      {
        v25 = (v23 + 48 * v21);
        v26 = v25[2];
        v27 = v25[3];
        v28 = v25[4];
        v29 = v25[5];
        v30 = *v25 == v13 && v25[1] == v12;
        if (v30 || (sub_1BABE7EDC() & 1) != 0)
        {
          v31 = v26 == v40 && v27 == v15;
          if (v31 || (sub_1BABE7EDC()) && v28 == v39 && v29 == v38)
          {
            break;
          }
        }

        v21 = (v21 + 1) & v22;
        if (((*(v41 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v3 = v33;
      result = v34;
      v2 = v36;
      a2 = v37;
      v7 = v32;
      v6 = v35;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

LABEL_34:

    return 0;
  }

LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB1DB8C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v33 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(v3 + 56) + 48 * v14;
    v20 = *v18;
    v19 = *(v18 + 8);
    v39 = *(v18 + 17);
    v40 = *(v18 + 16);
    v37 = *(v18 + 32);
    v38 = *(v18 + 24);
    v36 = *(v18 + 40);
    v41 = v16 == 0;

    if (!v16)
    {
      return v41;
    }

    v35 = v11;
    v21 = v2;
    v22 = sub_1BABD5AB4(v17, v16);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_34;
    }

    v25 = *(v2 + 56) + 48 * v22;
    v26 = *(v25 + 16);
    v27 = *(v25 + 17);
    v29 = *(v25 + 24);
    v28 = *(v25 + 32);
    v34 = *(v25 + 40);
    if (*v25 == v20 && v19 == *(v25 + 8))
    {
      if (v40 != v26)
      {
        goto LABEL_34;
      }
    }

    else if (sub_1BABE7EDC() & 1) == 0 || ((v40 ^ v26))
    {
LABEL_34:

      return 0;
    }

    v31 = v27 == v39 && v29 == v38;
    if (!v31 || v28 != v37)
    {
      return v41;
    }

    v2 = v21;
    v3 = v33;
    v8 = v35;
    result = v41;
    if ((v36 ^ v34))
    {
      return result;
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB1DDB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_19:
    v15 = v11 | (v4 << 6);
    v16 = (*(v3 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = (*(v3 + 56) + 32 * v15);
    v21 = *v19;
    v20 = v19[1];
    v32 = v19[2];
    v33 = v19[3];
    v34 = v17 == 0;

    if (!v17)
    {
      return v34;
    }

    v31 = v12;
    v22 = v3;
    v23 = sub_1BABD5AB4(v18, v17);
    v25 = v24;

    if ((v25 & 1) == 0)
    {

      return 0;
    }

    v26 = (*(a2 + 56) + 32 * v23);
    v28 = v26[2];
    v27 = v26[3];
    if (*v26 == v21 && v20 == v26[1])
    {

      v10 = v28 == v32 && v27 == v33;
      v3 = v22;
    }

    else
    {
      v30 = sub_1BABE7EDC();

      if ((v30 & 1) == 0)
      {
        return v34;
      }

      v3 = v22;
      v10 = v28 == v32 && v27 == v33;
    }

    v8 = v31;
    result = v34;
    if (!v10)
    {
      return result;
    }
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BAB1DFBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_1BAB1E074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BAB1E170(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1BAB1E228(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BABE7A9C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = 48 * (v15 | (v9 << 6));
        v19 = *(v3 + 48) + v18;
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = *(v19 + 24);
        v23 = *(v5 + 48) + v18;
        v24 = *(v19 + 32);
        *v23 = *v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1BAB1E390()
{
  v1 = v0;
  v2 = *(type metadata accessor for ReplicatorDevice(0) - 8);
  MEMORY[0x1EEE9AC00]();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A68);
  v5 = *v0;
  v6 = sub_1BABE7A9C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v2 + 72) * (v17 | (v11 << 6));
        sub_1BAB22824(*(v5 + 48) + v20, v4, type metadata accessor for ReplicatorDevice);
        result = sub_1BAB2347C(v4, *(v7 + 48) + v20, type metadata accessor for ReplicatorDevice);
      }

      while (v15);
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
        goto LABEL_16;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v7;
  }

  return result;
}

void *sub_1BAB1E59C()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A38);
  v6 = *v0;
  v7 = sub_1BABE7A9C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1BAB22824(*(v6 + 48) + v21, v5, type metadata accessor for ReplicatorRecord.ID);
        result = sub_1BAB2347C(v5, *(v8 + 48) + v21, type metadata accessor for ReplicatorRecord.ID);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1BAB1E7A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB0);
  v2 = *v0;
  v3 = sub_1BABE7A9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[4];
        v23[3] = v18[3];
        v23[4] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x50uLL);
        result = sub_1BAB21C84(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1BAB1E930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CC8);
  v2 = *v0;
  v3 = sub_1BABE7A9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1BAB1EA8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CE0);
  v2 = *v0;
  v3 = sub_1BABE7A9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1BAB1EBF0()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CD8);
  v6 = *v0;
  v7 = sub_1BABE7A9C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1BAB1EE3C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1BABE7A9C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BAB1EF7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v60 = sub_1BABE6CFC();
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v43 - v9;
  v58 = type metadata accessor for ReplicatorRecord.ID(0);
  v47 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v2;
  v12 = *v2;
  sub_1BABE7F9C();
  ReplicatorRecord.ID.hash(into:)();
  v13 = sub_1BABE7FDC();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
    return (*(v47 + 56))(v44, 1, 1, v58);
  }

  v17 = ~v15;
  v18 = *a1;
  v19 = a1[1];
  v51 = (v4 + 48);
  v45 = (v4 + 32);
  v48 = (v4 + 8);
  v20 = *(v47 + 72);
  v54 = ~v15;
  v55 = v12;
  v52 = v19;
  v53 = v18;
  v49 = v20;
  v50 = v12 + 56;
  while (1)
  {
    v21 = *(v12 + 48);
    v59 = v20 * v16;
    sub_1BAB22824(v21 + v20 * v16, v11, type metadata accessor for ReplicatorRecord.ID);
    v22 = *v11 == v18 && v11[1] == v19;
    if (!v22 && (sub_1BABE7EDC() & 1) == 0)
    {
      goto LABEL_4;
    }

    v23 = v11[2] == a1[2] && v11[3] == a1[3];
    if (!v23 && (sub_1BABE7EDC() & 1) == 0 || (v11[4] != a1[4] || v11[5] != a1[5]) && (sub_1BABE7EDC() & 1) == 0)
    {
      goto LABEL_4;
    }

    v24 = v60;
    v25 = *(v58 + 28);
    v26 = *(v57 + 48);
    v27 = v56;
    sub_1BAB22824(v11 + v25, v56, type metadata accessor for ReplicatorRecord.ID.Ownership);
    sub_1BAB22824(a1 + v25, v27 + v26, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v28 = *v51;
    if ((*v51)(v27, 1, v24) == 1)
    {
      v29 = v28(v27 + v26, 1, v60);
      v20 = v49;
      v14 = v50;
      if (v29 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    sub_1BAB22824(v27, v8, type metadata accessor for ReplicatorRecord.ID.Ownership);
    if (v28(v27 + v26, 1, v60) != 1)
    {
      break;
    }

    (*v48)(v8, v60);
    v20 = v49;
    v14 = v50;
LABEL_23:
    sub_1BAAD2E14(v27, &unk_1EBC12A28);
LABEL_24:
    v17 = v54;
    v12 = v55;
    v19 = v52;
    v18 = v53;
LABEL_4:
    sub_1BAB2288C(v11, type metadata accessor for ReplicatorRecord.ID);
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return (*(v47 + 56))(v44, 1, 1, v58);
    }
  }

  v30 = v27 + v26;
  v31 = v46;
  (*v45)(v46, v30, v60);
  v32 = sub_1BABE6CCC();
  v33 = *v48;
  (*v48)(v31, v24);
  v33(v8, v24);
  v20 = v49;
  v14 = v50;
  if ((v32 & 1) == 0)
  {
    sub_1BAB2288C(v27, type metadata accessor for ReplicatorRecord.ID.Ownership);
    goto LABEL_24;
  }

LABEL_26:
  sub_1BAB2288C(v27, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v34 = *(v58 + 32);
  v35 = *(v11 + v34);
  v36 = *(v11 + v34 + 8);
  v37 = (a1 + v34);
  v17 = v54;
  v12 = v55;
  v19 = v52;
  v18 = v53;
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1BABE7EDC() & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_1BAB2288C(v11, type metadata accessor for ReplicatorRecord.ID);
  v39 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v39;
  v61 = *v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BAB1E59C();
    v41 = v61;
  }

  v42 = v44;
  sub_1BAB2347C(*(v41 + 48) + v59, v44, type metadata accessor for ReplicatorRecord.ID);
  sub_1BAB1FB44(v16);
  *v39 = v61;
  return (*(v47 + 56))(v42, 0, 1, v58);
}

double sub_1BAB1F5AC@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  sub_1BABE7F9C();
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v34 = v13;
  sub_1BABE759C();
  sub_1BABE759C();
  v36 = v9;
  sub_1BABE759C();
  v35 = v11;
  sub_1BABE759C();
  sub_1BABE6060(&v38, v34);
  v33 = v14;
  sub_1BABE5ED0(&v38, v14);
  v15 = sub_1BABE7FDC();
  v16 = -1 << *(v4 + 32);
  v17 = v15 & ~v16;
  if (((*(v4 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_18:
    result = 0.0;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
    return result;
  }

  v18 = ~v16;
  while (1)
  {
    v19 = (*(v4 + 48) + 80 * v17);
    v38 = *v19;
    v20 = v19[3];
    v21 = v19[4];
    v22 = v19[2];
    v39 = v19[1];
    v40 = v22;
    v41 = v20;
    v42 = v21;
    if (v38 != __PAIR128__(v6, v5) && (sub_1BABE7EDC() & 1) == 0 || v39 != __PAIR128__(v8, v7) && (sub_1BABE7EDC() & 1) == 0 || v40 != __PAIR128__(v36, v10) && (sub_1BABE7EDC() & 1) == 0 || v41 != __PAIR128__(v12, v35) && (sub_1BABE7EDC() & 1) == 0)
    {
      goto LABEL_4;
    }

    v23 = v42;
    sub_1BAB21C84(&v38, v37);
    if (sub_1BAB1DB8C(v23, v34))
    {
      break;
    }

    sub_1BAB21D34(&v38);
LABEL_4:
    v17 = (v17 + 1) & v18;
    if (((*(v4 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v24 = sub_1BAB1DDB4(*(&v42 + 1), v33);
  sub_1BAB21D34(&v38);
  if ((v24 & 1) == 0)
  {
    goto LABEL_4;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v31;
  v37[0] = *v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BAB1E7A8();
    v26 = v37[0];
  }

  v27 = (*(v26 + 48) + 80 * v17);
  v28 = v27[3];
  a2[2] = v27[2];
  a2[3] = v28;
  a2[4] = v27[4];
  v29 = v27[1];
  *a2 = *v27;
  a2[1] = v29;
  sub_1BAB2000C(v17);
  *v31 = v37[0];
  return result;
}

uint64_t sub_1BAB1F864(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_1BABE7A8C();

    if (v5)
    {
      v6 = sub_1BAB1F9EC();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for Client();
  v9 = sub_1BABE797C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_1BABE798C();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BAB1EA8C();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1BAB20294(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1BAB1F9EC()
{
  v1 = v0;

  v2 = sub_1BABE7A5C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1BABB1078(v3, v2);
  v13 = v4;

  v5 = sub_1BABE797C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    type metadata accessor for Client();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_1BABE798C();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1BAB20294(v7);
  result = sub_1BABE798C();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAB1FB44(unint64_t a1)
{
  v3 = sub_1BABE6CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v39);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = *v1 + 56;
  v14 = -1 << *(*v1 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v44 = v9;
    v36 = v4;
    v16 = ~v14;

    v17 = a1;
    v18 = sub_1BABE7A1C();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v41 = v12;
      v42 = v3;
      v19 = (v18 + 1) & v16;
      v20 = v43;
      v21 = *(v44 + 72);
      v22 = v36;
      v40 = (v36 + 6);
      ++v36;
      v37 = (v22 + 4);
      v23 = v39;
      v24 = v16;
      v44 = v21;
      while (1)
      {
        v25 = v21 * v15;
        sub_1BAB22824(*(v12 + 48) + v21 * v15, v11, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABE7F9C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BAB22824(&v11[*(v23 + 28)], v20, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v26 = v42;
        if ((*v40)(v20, 1, v42) == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v27 = v13;
          v28 = v38;
          (*v37)(v38, v20, v26);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAAD38BC(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          v29 = v28;
          v13 = v27;
          v23 = v39;
          (*v36)(v29, v26);
        }

        sub_1BABE759C();
        v30 = sub_1BABE7FDC();
        sub_1BAB2288C(v11, type metadata accessor for ReplicatorRecord.ID);
        v31 = v30 & v24;
        v12 = v41;
        if (v17 >= v19)
        {
          break;
        }

        v20 = v43;
        v21 = v44;
        if (v31 < v19)
        {
          goto LABEL_14;
        }

LABEL_15:
        v32 = v21 * v17;
        if (v21 * v17 < v25 || *(v41 + 48) + v21 * v17 >= (*(v41 + 48) + v25 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v17 = v15;
          if (v32 == v25)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v21 = v44;
        v17 = v15;
LABEL_6:
        v15 = (v15 + 1) & v24;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v20 = v43;
      v21 = v44;
      if (v31 < v19)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (v17 < v31)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v17) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v12 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v35;
    ++*(v12 + 36);
  }

  return result;
}

unint64_t sub_1BAB2000C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BABE7A1C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v25 = v2;
      v23 = v4;
      v22 = (v8 + 1) & v7;
      v24 = v3;
      while (1)
      {
        v9 = (*(v3 + 48) + 80 * v6);
        v10 = v9[4];
        v11 = v9[1];
        v12 = v9[2];
        v28[3] = v9[3];
        v29 = v10;
        v28[2] = v12;
        v28[0] = *v9;
        v28[1] = v11;
        sub_1BABE7F9C();
        v13 = v29;
        sub_1BAB21C84(v28, v26);
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE6060(v27, v13);
        sub_1BABE5ED0(v27, *(&v13 + 1));
        v14 = sub_1BABE7FDC();
        sub_1BAB21D34(v28);
        v15 = v14 & v7;
        v2 = v25;
        if (v25 >= v22)
        {
          v4 = v23;
          if (v15 < v22)
          {
            v3 = v24;
            goto LABEL_14;
          }

          v3 = v24;
          if (v25 < v15)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v4 = v23;
          v3 = v24;
          if (v15 < v22 && v25 < v15)
          {
            goto LABEL_14;
          }
        }

        v16 = *(v3 + 48);
        v17 = (v16 + 80 * v25);
        v18 = (v16 + 80 * v6);
        if (v25 != v6 || v17 >= v18 + 80)
        {
          memmove(v17, v18, 0x50uLL);
          v2 = v6;
        }

LABEL_14:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          break;
        }

        v25 = v2;
      }
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1BAB20294(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BABE7A1C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1BABE797C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_1BAB20434(unint64_t *result, uint64_t a2, void *a3, void *a4)
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

    v8 = a4;
    v9 = sub_1BAB21444(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t *sub_1BAB204CC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    v10 = sub_1BAB21E84(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1BAB20570(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v13 = a3;
      v14 = result;
      v7 = 0;
      v8 = (a4 + 64);
      v9 = a3 - 1;
      while (v7 < *(a4 + 16))
      {
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        sub_1BAAE7800(v10, v11, v12);

        *v6 = v10;
        *(v6 + 8) = v11;
        *(v6 + 16) = v12;
        if (v9 == v7)
        {
          a3 = v13;
          result = v14;
          goto LABEL_13;
        }

        v6 += 24;
        ++v7;
        v8 += 40;
        if (v5 == v7)
        {
          a3 = v5;
          result = v14;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1BAB206AC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a4 + 7;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[7];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1BAB22824(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1BAB2347C(v30, v16, v41);
      sub_1BAB2347C(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1BAB208F0(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 80 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v25[3] = v18[3];
      v25[4] = v19;
      v25[1] = v21;
      v25[2] = v20;
      memmove(v11, v18, 0x50uLL);
      if (v14 == v10)
      {
        sub_1BAB21C84(v25, v24);
        goto LABEL_24;
      }

      v11 += 80;
      sub_1BAB21C84(v25, v24);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BAB20A7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1BABE6CFC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_1BAB20D20()
{
  v0 = objc_opt_self();
  if (qword_1ED7877F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BABE74EC();
  v2 = sub_1BABE74EC();
  v3 = [v0 endpointForMachName:v1 service:v2 instance:0];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E698F4D8]) initWithEndpoint_];
  return v4;
}

unint64_t sub_1BAB20E34()
{
  result = qword_1ED7876D8;
  if (!qword_1ED7876D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7876D8);
  }

  return result;
}

unint64_t sub_1BAB20E88()
{
  result = qword_1ED787760;
  if (!qword_1ED787760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787760);
  }

  return result;
}

void *sub_1BAB20EDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BABE6CFC();
  v6 = *(v58 - 8);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v64 = type metadata accessor for ReplicatorRecord.ID(0);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v51 - v16);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(v15 + 80);
  v52 = *(v15 + 72);
  v53 = (v19 + 32) & ~v19;
  v20 = a1 + v53;
  v57 = (v6 + 8);
  v21 = MEMORY[0x1E69E7CC0];
  v51 = v9;
  v54 = &v51 - v16;
  v55 = v11;
  while (1)
  {
    v63 = v20;
    sub_1BAB22824(v20, v17, type metadata accessor for ReplicatorRecord.ID);
    v22 = v17[1];
    v65 = *v17;
    v66 = v22;

    sub_1BABE6E2C();
    if (v2)
    {
      break;
    }

    v60 = v18;
    v61 = v21;
    v62 = 0;

    v23 = sub_1BABE6CAC();
    v25 = v24;
    v56 = *v57;
    v56(v11, v58);
    v59 = v17[2];
    v26 = v17;
    v27 = v17[3];
    v28 = v26[4];
    v29 = v26[5];
    v30 = v64;
    v31 = v67;
    sub_1BAB22824(v26 + *(v64 + 28), v67, type metadata accessor for ReplicatorRecord.ID.Ownership);
    *v14 = v23;
    v14[1] = v25;
    v14[2] = v59;
    v14[3] = v27;
    v14[4] = v28;
    v14[5] = v29;
    v32 = *(v30 + 28);
    v33 = v23;
    sub_1BAB22824(v31, v14 + v32, type metadata accessor for ReplicatorRecord.ID.Ownership);

    if (sub_1BABE75AC() < 51)
    {
      v2 = v62;
    }

    else
    {
      v65 = v23;
      v66 = v25;
      v34 = v51;
      v35 = v62;
      sub_1BABE6E2C();
      v2 = v35;
      if (v35)
      {

        sub_1BABE75BC();
        v36 = sub_1BABE760C();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v33 = MEMORY[0x1BFAFD1F0](v36, v38, v40, v42);
        v25 = v43;

        v2 = 0;
      }

      else
      {

        v33 = sub_1BABE6CAC();
        v25 = v44;
        v56(v34, v58);
      }
    }

    v17 = v54;
    v11 = v55;
    v45 = v60;
    sub_1BAB2288C(v67, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v46 = (v14 + *(v64 + 32));
    *v46 = v33;
    v46[1] = v25;
    v21 = v61;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1BAAF9A54(0, v21[2] + 1, 1, v21);
    }

    v48 = v21[2];
    v47 = v21[3];
    if (v48 >= v47 >> 1)
    {
      v21 = sub_1BAAF9A54(v47 > 1, v48 + 1, 1, v21);
    }

    sub_1BAB2288C(v17, type metadata accessor for ReplicatorRecord.ID);
    v21[2] = v48 + 1;
    v49 = v52;
    sub_1BAB2347C(v14, v21 + v53 + v48 * v52, type metadata accessor for ReplicatorRecord.ID);
    v20 = v63 + v49;
    v18 = v45 - 1;
    if (!v18)
    {
      return v21;
    }
  }

  sub_1BAB2288C(v17, type metadata accessor for ReplicatorRecord.ID);

  return v21;
}

uint64_t sub_1BAB21444(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v62 = a4;
  v48[0] = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v48 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  MEMORY[0x1EEE9AC00](v61);
  v69 = (v48 - v8);
  v68 = sub_1BABE6CFC();
  v9 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorRecord.ID(0);
  result = MEMORY[0x1EEE9AC00](v11);
  v66 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v15 = 0;
  v64 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v57 = v9 + 16;
  v58 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue_recordVersionStore;
  v52 = (v13 + 56);
  v53 = result;
  v59 = v13;
  v60 = v9;
  v55 = (v9 + 8);
  v56 = (v13 + 48);
  v54 = v7;
  while (v21)
  {
    v26 = __clz(__rbit64(v21));
    v65 = (v21 - 1) & v21;
LABEL_13:
    v29 = v26 | (v15 << 6);
    v30 = v64;
    v31 = v64[6];
    v63 = *(v59 + 72);
    v32 = v66;
    sub_1BAB22824(v31 + v63 * v29, v66, type metadata accessor for ReplicatorRecord.ID);
    v33 = v30[7];
    v34 = *(v60 + 72);
    v51 = v29;
    v35 = *(v60 + 16);
    v37 = v67;
    v36 = v68;
    v35(v67, v33 + v34 * v29, v68);
    v38 = v32;
    v39 = v69;
    sub_1BAB22824(v38, v69, type metadata accessor for ReplicatorRecord.ID);
    v35(v39 + *(v61 + 48), v37, v36);
    v40 = *(v62 + v58);
    swift_beginAccess();
    v41 = *(v40 + 32);
    if (*(v41 + 16))
    {

      v42 = sub_1BABD5D18(v39);
      if (v43)
      {
        v24 = v54;
        sub_1BAB22824(*(v41 + 56) + v42 * v63, v54, type metadata accessor for ReplicatorRecord.ID);
        v44 = *v52;
        v45 = v24;
        v46 = 0;
      }

      else
      {
        v44 = *v52;
        v24 = v54;
        v45 = v54;
        v46 = 1;
      }

      v23 = v53;
      v44(v45, v46, 1, v53);
    }

    else
    {
      v23 = v53;
      v24 = v54;
      (*v52)(v54, 1, 1, v53);
    }

    v21 = v65;
    swift_endAccess();

    sub_1BAAD2E14(v69, &qword_1EBC12A10);
    v25 = (*v56)(v24, 1, v23);
    sub_1BAAD2E14(v24, &qword_1EBC12A20);
    (*v55)(v67, v68);
    result = sub_1BAB2288C(v66, type metadata accessor for ReplicatorRecord.ID);
    if (v25 == 1)
    {
      *(v49 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      if (__OFADD__(v50++, 1))
      {
        __break(1u);
        return sub_1BAB4A82C(v49, v48[0], v50, v64);
      }
    }
  }

  v27 = v15;
  while (1)
  {
    v15 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      return sub_1BAB4A82C(v49, v48[0], v50, v64);
    }

    v28 = v17[v15];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v65 = (v28 - 1) & v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB21998(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v9;
      v11 = sub_1BAB20434(v13, v6, a1, v14);
      MEMORY[0x1BFAFE460](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  v11 = sub_1BAB21444((v15 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);

  if (v2)
  {
    swift_willThrow();
  }

  return v11;
}

unint64_t sub_1BAB21B44()
{
  result = qword_1ED787090;
  if (!qword_1ED787090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787090);
  }

  return result;
}

unint64_t sub_1BAB21B98()
{
  result = qword_1ED787108;
  if (!qword_1ED787108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787108);
  }

  return result;
}

uint64_t sub_1BAB21BEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAB21C38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BAB21CE0()
{
  result = qword_1ED7877C0;
  if (!qword_1ED7877C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877C0);
  }

  return result;
}

unint64_t sub_1BAB21D88()
{
  result = qword_1ED787700;
  if (!qword_1ED787700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787700);
  }

  return result;
}

unint64_t sub_1BAB21DDC()
{
  result = qword_1EBC12A78;
  if (!qword_1EBC12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12A78);
  }

  return result;
}

unint64_t sub_1BAB21E30()
{
  result = qword_1EBC12A80;
  if (!qword_1EBC12A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12A80);
  }

  return result;
}

uint64_t sub_1BAB21E84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v49 = a5;
  v50 = a4;
  v45 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
  v6 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v43 - v8;
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  v48 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v46 = 0;
  v15 = 0;
  v16 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a3 + 64);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_12:
    v28 = v25 | (v15 << 6);
    v29 = *(a3 + 48);
    v30 = *(v48 + 72);
    v47 = v28;
    v31 = v30 * v28;
    sub_1BAB22824(v29 + v30 * v28, v14, type metadata accessor for ReplicatorRecord.ID);
    v32 = *(a3 + 56) + v31;
    v33 = v51;
    sub_1BAB22824(v32, v51, type metadata accessor for ReplicatorRecord.ID);
    v34 = v14;
    v35 = v14;
    v36 = v52;
    sub_1BAB22824(v35, v52, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB22824(v33, v36 + *(v54 + 48), type metadata accessor for ReplicatorRecord.ID);
    v37 = v36;
    v38 = v53;
    sub_1BAAD2DAC(v37, v53, &qword_1EBC12A18);
    v39 = *(v38 + 32);
    v40 = *(v38 + 40);

    sub_1BAB2288C(v38, type metadata accessor for ReplicatorRecord.ID);
    if (v39 == v50 && v40 == v49)
    {

      v41 = *(v54 + 48);
      sub_1BAAD2E14(v52, &qword_1EBC12A18);
      sub_1BAB2288C(v53 + v41, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2288C(v51, type metadata accessor for ReplicatorRecord.ID);
      v14 = v34;
      result = sub_1BAB2288C(v34, type metadata accessor for ReplicatorRecord.ID);
    }

    else
    {
      v21 = sub_1BABE7EDC();

      v22 = a3;
      v23 = *(v54 + 48);
      sub_1BAAD2E14(v52, &qword_1EBC12A18);
      v24 = v53 + v23;
      a3 = v22;
      sub_1BAB2288C(v24, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB2288C(v51, type metadata accessor for ReplicatorRecord.ID);
      v14 = v34;
      result = sub_1BAB2288C(v34, type metadata accessor for ReplicatorRecord.ID);
      if ((v21 & 1) == 0)
      {
        *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        if (__OFADD__(v46++, 1))
        {
          __break(1u);
          return sub_1BAB4AE74(v45, v44, v46, a3);
        }
      }
    }
  }

  v26 = v15;
  while (1)
  {
    v15 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return sub_1BAB4AE74(v45, v44, v46, a3);
    }

    v27 = *(v16 + 8 * v15);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v19 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB2229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1BAB204CC(v14, v9, a1, a2, a3);
      MEMORY[0x1BFAFE460](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  bzero(v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1BAB21E84((v15 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

unint64_t sub_1BAB22468()
{
  result = qword_1EBC12A90;
  if (!qword_1EBC12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12A90);
  }

  return result;
}

unint64_t sub_1BAB22504()
{
  result = qword_1ED787730;
  if (!qword_1ED787730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787730);
  }

  return result;
}

unint64_t sub_1BAB22558()
{
  result = qword_1ED787790;
  if (!qword_1ED787790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787790);
  }

  return result;
}

unint64_t sub_1BAB2268C()
{
  result = qword_1EBC12480;
  if (!qword_1EBC12480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12480);
  }

  return result;
}

uint64_t sub_1BAB2277C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB22824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB2288C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BAB228EC()
{
  result = qword_1EBC12B38;
  if (!qword_1EBC12B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12B38);
  }

  return result;
}

unint64_t sub_1BAB22940()
{
  result = qword_1EBC12B40;
  if (!qword_1EBC12B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12B40);
  }

  return result;
}

_OWORD *sub_1BAB22994(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_2(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1BAB229FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.ID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAB22A84()
{
  result = qword_1ED7870B8;
  if (!qword_1ED7870B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870B8);
  }

  return result;
}

uint64_t sub_1BAB22AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BAB22B48()
{
  result = qword_1EBC124B0;
  if (!qword_1EBC124B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124B0);
  }

  return result;
}

uint64_t sub_1BAB22B9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BAB22BDC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BAB22C24()
{
  result = qword_1EBC12BB0;
  if (!qword_1EBC12BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12BB0);
  }

  return result;
}

unint64_t sub_1BAB22C78()
{
  result = qword_1EBC14120;
  if (!qword_1EBC14120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14120);
  }

  return result;
}

unint64_t sub_1BAB22CCC()
{
  result = qword_1EBC12BC0;
  if (!qword_1EBC12BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12BC0);
  }

  return result;
}

unint64_t sub_1BAB22D20()
{
  result = qword_1EBC122C8;
  if (!qword_1EBC122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122C8);
  }

  return result;
}

unint64_t sub_1BAB22D74()
{
  result = qword_1ED7873A0;
  if (!qword_1ED7873A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873A0);
  }

  return result;
}

unint64_t sub_1BAB22DC8()
{
  result = qword_1EBC11DC0;
  if (!qword_1EBC11DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DC0);
  }

  return result;
}

unint64_t sub_1BAB22E1C()
{
  result = qword_1EBC11E60;
  if (!qword_1EBC11E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E60);
  }

  return result;
}

unint64_t sub_1BAB22E70()
{
  result = qword_1EBC11DF0;
  if (!qword_1EBC11DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DF0);
  }

  return result;
}

unint64_t sub_1BAB22EC4()
{
  result = qword_1EBC11E78;
  if (!qword_1EBC11E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E78);
  }

  return result;
}

unint64_t sub_1BAB22F18()
{
  result = qword_1EBC11E30;
  if (!qword_1EBC11E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E30);
  }

  return result;
}

unint64_t sub_1BAB22F6C()
{
  result = qword_1EBC11E80;
  if (!qword_1EBC11E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E80);
  }

  return result;
}

uint64_t sub_1BAB22FC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1BAB22FD0()
{
  result = qword_1EBC11DD0;
  if (!qword_1EBC11DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DD0);
  }

  return result;
}

unint64_t sub_1BAB23024()
{
  result = qword_1EBC13630;
  if (!qword_1EBC13630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13630);
  }

  return result;
}

unint64_t sub_1BAB23078()
{
  result = qword_1EBC11E40;
  if (!qword_1EBC11E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E40);
  }

  return result;
}

unint64_t sub_1BAB230CC()
{
  result = qword_1EBC13610;
  if (!qword_1EBC13610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13610);
  }

  return result;
}

unint64_t sub_1BAB23120()
{
  result = qword_1EBC12C00;
  if (!qword_1EBC12C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12C00);
  }

  return result;
}

unint64_t sub_1BAB23174()
{
  result = qword_1EBC11E10;
  if (!qword_1EBC11E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E10);
  }

  return result;
}

unint64_t sub_1BAB231C8()
{
  result = qword_1EBC13C30;
  if (!qword_1EBC13C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13C30);
  }

  return result;
}

unint64_t sub_1BAB2321C()
{
  result = qword_1EBC12C30;
  if (!qword_1EBC12C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12C30);
  }

  return result;
}

unint64_t sub_1BAB23270()
{
  result = qword_1EBC12C38;
  if (!qword_1EBC12C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12C38);
  }

  return result;
}

unint64_t sub_1BAB232C4()
{
  result = qword_1ED7871D8;
  if (!qword_1ED7871D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871D8);
  }

  return result;
}

unint64_t sub_1BAB23318()
{
  result = qword_1EBC12C70;
  if (!qword_1EBC12C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12C70);
  }

  return result;
}

unint64_t sub_1BAB2336C()
{
  result = qword_1EBC12C88;
  if (!qword_1EBC12C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12C88);
  }

  return result;
}

unint64_t sub_1BAB233C0()
{
  result = qword_1EBC12130;
  if (!qword_1EBC12130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12130);
  }

  return result;
}

uint64_t sub_1BAB23414(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB2347C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BAB234E4()
{
  result = qword_1ED787370;
  if (!qword_1ED787370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787370);
  }

  return result;
}

uint64_t sub_1BAB235A0()
{
  v2 = v0;
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](40);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v10[0] = v11;
    v10[1] = 0;
    v11 = 0xE000000000000000;
    v8 = SQLDatabase.perform(_:)(v10);

    if (!v1)
    {
      v2 = sub_1BAB23820(v8);
    }

    return v2;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAB23820(uint64_t a1)
{
  result = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v6 = *i;

      sub_1BAB238BC(&v7, &v6);

      if (v1)
      {
        break;
      }

      if (!--v4)
      {
        return v7;
      }
    }
  }

  return result;
}

void sub_1BAB238BC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1BABE7B0C();
  v114 = v4;
  SQLResult.subscript.getter(v5, v6, &v102);

  v7 = v104;
  if (v104 == 255)
  {
    goto LABEL_16;
  }

  v9 = v102;
  v8 = v103;
  v10 = sub_1BAAF9770(v102, v103, v104);
  v12 = v11;
  sub_1BAAE8B8C(v9, v8, v7);
  if (!v12)
  {
    goto LABEL_16;
  }

  v13 = sub_1BABE7B0C();
  v114 = v4;
  SQLResult.subscript.getter(v13, v14, &v102);

  v15 = v104;
  if (v104 == 255 || (v100 = v10, v17 = v102, v16 = v103, v99 = sub_1BAAF9770(v102, v103, v104), v19 = v18, sub_1BAAE8B8C(v17, v16, v15), (v101 = v19) == 0))
  {
LABEL_15:

LABEL_16:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v36 = sub_1BABE72BC();
    __swift_project_value_buffer(v36, qword_1EBC25018);
    v37 = sub_1BABE729C();
    v38 = sub_1BABE78EC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BAACF000, v37, v38, "Encountered malformed client descriptor", v39, 2u);
      MEMORY[0x1BFAFE460](v39, -1, -1);
    }

    return;
  }

  v20 = sub_1BABE7B0C();
  v114 = v4;
  SQLResult.subscript.getter(v20, v21, &v102);

  v22 = v104;
  if (v104 == 255 || (v24 = v102, v23 = v103, v88 = sub_1BAAF9770(v102, v103, v104), v26 = v25, sub_1BAAE8B8C(v24, v23, v22), (v98 = v26) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v27 = sub_1BABE7B0C();
  v114 = v4;
  SQLResult.subscript.getter(v27, v28, &v102);

  v29 = v104;
  if (v104 == 255 || (v31 = v102, v30 = v103, v84 = sub_1BAAF9770(v102, v103, v104), v33 = v32, sub_1BAAE8B8C(v31, v30, v29), (v85 = v33) == 0))
  {

    goto LABEL_14;
  }

  v34 = v100;
  v35 = sub_1BAB24054(v100, v12);
  if (v2)
  {

    return;
  }

  v40 = v35;
  v87 = sub_1BAB24848(v100, v12);
  v41 = *(v40 + 16);

  v97 = a1;
  if (!v41)
  {
    v44 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v92 = v44;

    v62 = v87;
    v94 = *(v87 + 16);
    if (!v94)
    {
      v65 = MEMORY[0x1E69E7CC8];
LABEL_54:

      *&v105 = v34;
      *(&v105 + 1) = v12;
      v106 = v99;
      v107 = v101;
      v108 = v88;
      v109 = v98;
      v110 = v84;
      v111 = v85;
      v112 = v92;
      v113 = v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102 = *a1;
      sub_1BAAE6D4C(&v105, v34, v12, isUniquelyReferenced_nonNull_native);

      *a1 = v102;
      return;
    }

    v63 = 0;
    v64 = (v87 + 56);
    v65 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v63 >= *(v62 + 16))
      {
        goto LABEL_57;
      }

      v68 = *(v64 - 3);
      v67 = *(v64 - 2);
      v69 = *(v64 - 1);
      v96 = *v64;
      swift_bridgeObjectRetain_n();
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v65;
      v71 = sub_1BABD5AB4(v68, v67);
      v73 = v65[2];
      v74 = (v72 & 1) == 0;
      v60 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v60)
      {
        goto LABEL_58;
      }

      v76 = v72;
      if (v65[3] < v75)
      {
        break;
      }

      if (v70)
      {
        goto LABEL_48;
      }

      v82 = v71;
      sub_1BABDDFC4();
      v71 = v82;
      v65 = v102;
      if (v76)
      {
LABEL_40:
        v66 = (v65[7] + 32 * v71);
        *v66 = v68;
        v66[1] = v67;
        v66[2] = v69;
        v66[3] = v96;

        goto LABEL_41;
      }

LABEL_49:
      v65[(v71 >> 6) + 8] |= 1 << v71;
      v78 = (v65[6] + 16 * v71);
      *v78 = v68;
      v78[1] = v67;
      v79 = (v65[7] + 32 * v71);
      *v79 = v68;
      v79[1] = v67;
      v79[2] = v69;
      v79[3] = v96;
      v80 = v65[2];
      v60 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v60)
      {
        goto LABEL_60;
      }

      v65[2] = v81;
LABEL_41:
      a1 = v97;
      v34 = v100;
      v62 = v87;
      ++v63;
      v64 += 4;
      if (v94 == v63)
      {
        goto LABEL_54;
      }
    }

    sub_1BABDA2D4(v75, v70);
    v71 = sub_1BABD5AB4(v68, v67);
    if ((v76 & 1) != (v77 & 1))
    {
      goto LABEL_61;
    }

LABEL_48:
    v65 = v102;
    if (v76)
    {
      goto LABEL_40;
    }

    goto LABEL_49;
  }

  v42 = 0;
  v43 = v40 + 40;
  v44 = MEMORY[0x1E69E7CC8];
  v86 = v40;
  while (v42 < *(v40 + 16))
  {
    v47 = *(v43 - 8);
    v46 = *v43;
    v89 = *(v43 + 8);
    v90 = *(v43 + 9);
    v91 = *(v43 + 16);
    v93 = *(v43 + 24);
    v95 = *(v43 + 32);
    swift_bridgeObjectRetain_n();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v44;
    v50 = sub_1BABD5AB4(v47, v46);
    v51 = v44[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_56;
    }

    v54 = v49;
    if (v44[3] >= v53)
    {
      if (v48)
      {
        v44 = v102;
        if (v49)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1BABDE148();
        v44 = v102;
        if (v54)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1BABDA59C(v53, v48);
      v55 = sub_1BABD5AB4(v47, v46);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_61;
      }

      v50 = v55;
      v44 = v102;
      if (v54)
      {
LABEL_23:
        v45 = v44[7] + 48 * v50;
        *v45 = v47;
        *(v45 + 8) = v46;
        *(v45 + 16) = v89;
        *(v45 + 17) = v90;
        *(v45 + 24) = v91;
        *(v45 + 32) = v93;
        *(v45 + 40) = v95;

        goto LABEL_24;
      }
    }

    v44[(v50 >> 6) + 8] |= 1 << v50;
    v57 = (v44[6] + 16 * v50);
    *v57 = v47;
    v57[1] = v46;
    v58 = v44[7] + 48 * v50;
    *v58 = v47;
    *(v58 + 8) = v46;
    *(v58 + 16) = v89;
    *(v58 + 17) = v90;
    *(v58 + 24) = v91;
    *(v58 + 32) = v93;
    *(v58 + 40) = v95;
    v59 = v44[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_59;
    }

    v44[2] = v61;
LABEL_24:
    a1 = v97;
    v34 = v100;
    v40 = v86;
    ++v42;
    v43 += 48;
    if (v41 == v42)
    {
      goto LABEL_38;
    }
  }

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
  sub_1BABE7EFC();
  __break(1u);
}

uint64_t sub_1BAB24054(uint64_t a1, uint64_t a2)
{
  v37 = 0;
  v38 = 0xE000000000000000;
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v39 = v5;
  MEMORY[0x1BFAFD200](61);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v35 = MEMORY[0x1E69E6158];
  v36 = &protocol witness table for String;
  v32 = a1;
  v33 = a2;
  sub_1BAAE779C(&v32, &v28);

  SQLValue.init(_:)(&v28, v30);
  v13 = v30[0];
  v14 = v30[1];
  v15 = v31;
  v28 = 0x676E69646E696240;
  v29 = 0xE800000000000000;
  v40 = *(v5 + 16) + 1;
  v16 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v16);

  v17 = v28;
  v18 = v29;
  MEMORY[0x1BFAFD240](v28, v29);
  sub_1BAAE7800(v13, v14, v15);
  v19 = v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v19;
  sub_1BAAE5904(v13, v14, v15, v17, v18, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v13, v14, v15);
  v39 = v28;
  __swift_destroy_boxed_opaque_existential_1(&v32);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v22 = v37;
  v21 = v38;
  v23 = v39;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v32 = v23;
    v33 = v22;
    v34 = v21;
    v26 = SQLDatabase.perform(_:)(&v32);

    if (!v2)
    {
      v25 = sub_1BAB279F4(v26, sub_1BAB24464);
    }

    return v25;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAB24464(char **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1BABE7B0C();
  v41 = v3;
  SQLResult.subscript.getter(v4, v5, &v38);

  v6 = v40;
  if (v40 == 255 || (v8 = v38, v7 = v39, v9 = sub_1BAAF9770(v38, v39, v40), v11 = v10, sub_1BAAE8B8C(v8, v7, v6), !v11))
  {
LABEL_8:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v23 = sub_1BABE72BC();
    __swift_project_value_buffer(v23, qword_1EBC25018);
    v24 = sub_1BABE729C();
    v25 = sub_1BABE78EC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_13;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Encountered malformed client zone descriptor";
    goto LABEL_12;
  }

  v12 = sub_1BAB27AAC("PublicationMethod", 17, 2, v3);
  if (v13 & 1) != 0 || (v14 = v12, v15 = sub_1BAB27AAC("ReplicationPriority", 19, 2, v3), (v16) || (v17 = v15, v18 = sub_1BAB27AAC("ProtocolMinimum", 15, 2, v3), (v19) || (v20 = v18, v21 = sub_1BAB27AAC("ProtocolCurrent", 15, 2, v3), (v22))
  {

    goto LABEL_8;
  }

  if (v14 > 1)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v35 = sub_1BABE72BC();
    __swift_project_value_buffer(v35, qword_1EBC25018);
    v24 = sub_1BABE729C();
    v25 = sub_1BABE78EC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_13;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Encountered unknown publication method";
    goto LABEL_12;
  }

  if (v17 >= 3)
  {

    if (qword_1EBC12270 == -1)
    {
LABEL_23:
      v34 = sub_1BABE72BC();
      __swift_project_value_buffer(v34, qword_1EBC25018);
      v24 = sub_1BABE729C();
      v25 = sub_1BABE78EC();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_13;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "Encountered unknown replication priority";
LABEL_12:
      _os_log_impl(&dword_1BAACF000, v24, v25, v27, v26, 2u);
      MEMORY[0x1BFAFE460](v26, -1, -1);
LABEL_13:

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  v37 = v21;
  if ((v21 | v20) < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1BAAF9BA8(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  v31 = v30 + 1;
  v32 = v37;
  if (v30 >= v29 >> 1)
  {
    v36 = sub_1BAAF9BA8((v29 > 1), v30 + 1, 1, v28);
    v31 = v30 + 1;
    v32 = v37;
    v28 = v36;
  }

  *(v28 + 2) = v31;
  v33 = &v28[48 * v30];
  *(v33 + 4) = v9;
  *(v33 + 5) = v11;
  v33[48] = v14;
  v33[49] = v17;
  *(v33 + 7) = v32;
  *(v33 + 8) = v20;
  v33[72] = 0;
  *a1 = v28;
}

uint64_t sub_1BAB24848(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v37 = v5;
  MEMORY[0x1BFAFD200](49);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v33 = MEMORY[0x1E69E6158];
  v34 = &protocol witness table for String;
  v30 = a1;
  v31 = a2;
  sub_1BAAE779C(&v30, &v26);

  SQLValue.init(_:)(&v26, v28);
  v11 = v28[0];
  v12 = v28[1];
  v13 = v29;
  v26 = 0x676E69646E696240;
  v27 = 0xE800000000000000;
  v38 = *(v5 + 16) + 1;
  v14 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v14);

  v15 = v26;
  v16 = v27;
  MEMORY[0x1BFAFD240](v26, v27);
  sub_1BAAE7800(v11, v12, v13);
  v17 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v17;
  sub_1BAAE5904(v11, v12, v13, v15, v16, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v11, v12, v13);
  v37 = v26;
  __swift_destroy_boxed_opaque_existential_1(&v30);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v20 = v35;
  v19 = v36;
  v21 = v37;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v30 = v21;
    v31 = v20;
    v32 = v19;
    v24 = SQLDatabase.perform(_:)(&v30);

    if (!v2)
    {
      v23 = sub_1BAB279F4(v24, sub_1BAB24BF8);
    }

    return v23;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

void sub_1BAB24BF8(char **a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1BABE7B0C();
  SQLResult.subscript.getter(v4, v5, &v27);

  v6 = v29;
  if (v29 == 255)
  {
    goto LABEL_6;
  }

  v8 = v27;
  v7 = v28;
  v9 = sub_1BAAF9770(v27, v28, v29);
  v11 = v10;
  sub_1BAAE8B8C(v8, v7, v6);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = sub_1BAB27AAC("ProtocolMinimum", 15, 2, v3);
  if (v13 & 1) != 0 || (v14 = v12, v15 = sub_1BAB27AAC("ProtocolCurrent", 15, 2, v3), (v16))
  {

LABEL_6:
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v17 = sub_1BABE72BC();
    __swift_project_value_buffer(v17, qword_1EBC25018);
    v18 = sub_1BABE729C();
    v19 = sub_1BABE78EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BAACF000, v18, v19, "Encountered malformed client message descriptor", v20, 2u);
      MEMORY[0x1BFAFE460](v20, -1, -1);
    }

    return;
  }

  v21 = v15;
  if ((v15 | v14) < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v7 = sub_1BAAF9CC4(0, *(v7 + 2) + 1, 1, v7);
  }

  v23 = *(v7 + 2);
  v22 = *(v7 + 3);
  v24 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v26 = sub_1BAAF9CC4((v22 > 1), v23 + 1, 1, v7);
    v24 = v23 + 1;
    v7 = v26;
  }

  *(v7 + 2) = v24;
  v25 = &v7[32 * v23];
  *(v25 + 4) = v9;
  *(v25 + 5) = v11;
  *(v25 + 6) = v21;
  *(v25 + 7) = v14;
  *a1 = v7;
}

uint64_t Database.ClientDescriptorStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAB24E90(uint64_t a1)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v54 = *(a1 + 24);
  v53 = *(a1 + 32);
  v52 = *(a1 + 40);
  v51 = *(a1 + 48);
  v50 = *(a1 + 56);
  v72 = *(a1 + 64);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF0E90(&v55);
  if (v1)
  {
LABEL_11:
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  v7 = v55;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  v8 = v3;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v71 = v9;
  MEMORY[0x1BFAFD200](75);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v4;
  v56 = v8;
  sub_1BAAE779C(&v55, &v64);
  v49 = v8;

  SQLValue.init(_:)(&v64, &v66);
  v15 = v66;
  v16 = v67;
  LOBYTE(v8) = v68;
  v64 = 0x676E69646E696240;
  v65 = 0xE800000000000000;
  v73 = *(v9 + 16) + 1;
  v17 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v17);

  v18 = v64;
  v19 = v65;
  MEMORY[0x1BFAFD240](v64, v65);
  sub_1BAAE7800(v15, v16, v8);
  v20 = v71;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = v20;
  sub_1BAAE5904(v15, v16, v8, v18, v19, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v15, v16, v8);
  v22 = v64;
  v71 = v64;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v23 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v5;
  v56 = v54;
  sub_1BAAE779C(&v55, &v64);

  SQLValue.init(_:)(&v64, &v66);
  v24 = v66;
  v25 = v67;
  LOBYTE(v8) = v68;
  v64 = 0x676E69646E696240;
  v65 = 0xE800000000000000;
  v73 = *(v22 + 16) + 1;
  v26 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v26);

  v27 = v64;
  v28 = v65;
  MEMORY[0x1BFAFD240](v64, v65);
  sub_1BAAE7800(v24, v25, v8);
  v29 = v71;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v29;
  sub_1BAAE5904(v24, v25, v8, v27, v28, v30);

  sub_1BAAE7878(v24, v25, v8);
  v31 = v64;
  v71 = v64;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v58 = v23;
  v59 = &protocol witness table for String;
  v55 = v53;
  v56 = v52;
  sub_1BAAE779C(&v55, &v64);

  SQLValue.init(_:)(&v64, &v66);
  v32 = v66;
  v33 = v67;
  LOBYTE(v8) = v68;
  v64 = 0x676E69646E696240;
  v65 = 0xE800000000000000;
  v73 = *(v31 + 16) + 1;
  v34 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v34);

  v35 = v64;
  v36 = v65;
  MEMORY[0x1BFAFD240](v64, v65);
  sub_1BAAE7800(v32, v33, v8);
  v37 = v71;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v37;
  sub_1BAAE5904(v32, v33, v8, v35, v36, v38);

  sub_1BAAE7878(v32, v33, v8);
  v39 = v64;
  v71 = v64;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v58 = MEMORY[0x1E69E6158];
  v59 = &protocol witness table for String;
  v55 = v51;
  v56 = v50;
  sub_1BAAE779C(&v55, &v64);

  SQLValue.init(_:)(&v64, &v66);
  v40 = v66;
  v41 = v67;
  LOBYTE(v8) = v68;
  v64 = 0x676E69646E696240;
  v65 = 0xE800000000000000;
  v73 = *(v39 + 16) + 1;
  v42 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v42);

  v2 = v64;
  v43 = v65;
  MEMORY[0x1BFAFD240](v64, v65);
  sub_1BAAE7800(v40, v41, v8);
  v44 = v71;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v64 = v44;
  sub_1BAAE5904(v40, v41, v8, v2, v43, v45);

  sub_1BAAE7878(v40, v41, v8);
  v71 = v64;
  __swift_destroy_boxed_opaque_existential_1(&v55);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v47 = v69;
  v46 = v70;
  v48 = v71;
  if (!swift_weakLoadStrong())
  {
LABEL_10:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_11;
  }

  v55 = v48;
  v56 = v47;
  v57 = v46;
  SQLDatabase.perform(_:)(&v55);

  v55 = v4;
  v56 = v49;
  v57 = v5;
  v58 = v54;
  v59 = v53;
  v60 = v52;
  v61 = v51;
  v62 = v50;
  v63 = v72;
  sub_1BAB25B0C(&v55);
  v55 = v4;
  v56 = v49;
  v57 = v5;
  v58 = v54;
  v59 = v53;
  v60 = v52;
  v61 = v51;
  v62 = v50;
  v63 = v72;
  sub_1BAB26B64(&v55);
}

void sub_1BAB257A4(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

void sub_1BAB25B0C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[8];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_16:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_17;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(v18);
  if (!v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    v7 = LOBYTE(v18[0]);

    if (v7 == 1)
    {
      sub_1BAB25D90(v3, v4);
      v23 = v3;
      v8 = 1 << *(v5 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v5 + 64);
      v2 = ((v8 + 63) >> 6);

      for (i = 0; v10; i = v12)
      {
        v12 = i;
LABEL_11:
        v13 = *(v5 + 56) + 48 * (__clz(__rbit64(v10)) | (v12 << 6));
        v14 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 + 17);
        v17 = *(v13 + 40);
        v18[0] = *v13;
        v18[1] = v14;
        v19 = v15;
        v20 = v16;
        v21 = *(v13 + 24);
        v22 = v17;

        sub_1BAB260F8(v18, v23, v4);
        v10 &= v10 - 1;
      }

      while (1)
      {
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v12 >= v2)
        {

          return;
        }

        v10 = *(v5 + 64 + 8 * v12);
        ++i;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  os_unfair_lock_unlock(v2 + 4);
  __break(1u);
}

void sub_1BAB25D90(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

void sub_1BAB260F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v70 = *(a1 + 16);
  v7 = *(a1 + 17);
  v74 = *(a1 + 24);
  v71 = *(a1 + 32);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v4 + 4);
  sub_1BAAF1130(&v80);
  if (v3)
  {
LABEL_14:
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v4 + 4);
  v9 = v80;

  if (v9 != 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v69 = v7;
  v85 = 0;
  v86 = 0xE000000000000000;
  v10 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v87 = v10;
  MEMORY[0x1BFAFD200](99);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = v5;
  v81 = v6;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v19 = v77;
  v18 = v78;
  v20 = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v10 + 16) + 1;
  v21 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v21);

  v23 = v75;
  v22 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v19, v18, v20);
  v24 = v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v24;
  sub_1BAAE5904(v19, v18, v20, v23, v22, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v19, v18, v20);
  v26 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v83 = MEMORY[0x1E69E6158];
  v84 = &protocol witness table for String;
  v80 = a2;
  v81 = a3;
  sub_1BAAE779C(&v80, &v75);

  SQLValue.init(_:)(&v75, &v77);
  v27 = v77;
  v28 = v78;
  LOBYTE(v22) = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v26 + 16) + 1;
  v29 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v29);

  v4 = v75;
  v30 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v27, v28, v22);
  v31 = v87;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v31;
  sub_1BAAE5904(v27, v28, v22, v4, v30, v32);

  sub_1BAAE7878(v27, v28, v22);
  v33 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v74 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v83 = MEMORY[0x1E69E7360];
  v84 = &protocol witness table for Int64;
  v34 = MEMORY[0x1E69E7360];
  v80 = v74;
  sub_1BAAE779C(&v80, &v75);
  SQLValue.init(_:)(&v75, &v77);
  v35 = v77;
  v36 = v78;
  v37 = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v33 + 16) + 1;
  v38 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v38);

  v4 = v75;
  v39 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v35, v36, v37);
  v40 = v87;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v40;
  sub_1BAAE5904(v35, v36, v37, v4, v39, v41);

  sub_1BAAE7878(v35, v36, v37);
  v42 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v71 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v83 = v34;
  v84 = &protocol witness table for Int64;
  v80 = v71;
  sub_1BAAE779C(&v80, &v75);
  SQLValue.init(_:)(&v75, &v77);
  v43 = v77;
  v44 = v78;
  v45 = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v42 + 16) + 1;
  v46 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v46);

  v47 = v75;
  v48 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v43, v44, v45);
  v49 = v87;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v49;
  sub_1BAAE5904(v43, v44, v45, v47, v48, v50);

  sub_1BAAE7878(v43, v44, v45);
  v51 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v84 = &protocol witness table for Int64;
  v83 = MEMORY[0x1E69E7360];
  v80 = v70;
  sub_1BAAE779C(&v80, &v75);
  SQLValue.init(_:)(&v75, &v77);
  v52 = v77;
  v53 = v78;
  LOBYTE(v43) = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v51 + 16) + 1;
  v54 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v54);

  v55 = v75;
  v56 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v52, v53, v43);
  v57 = v87;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v57;
  sub_1BAAE5904(v52, v53, v43, v55, v56, v58);

  sub_1BAAE7878(v52, v53, v43);
  v59 = v75;
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v84 = &protocol witness table for Int64;
  v83 = MEMORY[0x1E69E7360];
  v80 = v69;
  sub_1BAAE779C(&v80, &v75);
  SQLValue.init(_:)(&v75, &v77);
  v60 = v77;
  v61 = v78;
  LOBYTE(v51) = v79;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v88 = *(v59 + 16) + 1;
  v62 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v62);

  v63 = v75;
  v4 = v76;
  MEMORY[0x1BFAFD240](v75, v76);
  sub_1BAAE7800(v60, v61, v51);
  v64 = v87;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v75 = v64;
  sub_1BAAE5904(v60, v61, v51, v63, v4, v65);

  sub_1BAAE7878(v60, v61, v51);
  v87 = v75;
  __swift_destroy_boxed_opaque_existential_1(&v80);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v66 = v85;
  v67 = v86;
  v68 = v87;
  if (!swift_weakLoadStrong())
  {
LABEL_13:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_14;
  }

  v80 = v68;
  v81 = v66;
  v82 = v67;
  SQLDatabase.perform(_:)(&v80);
}

void sub_1BAB26B64(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[9];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_16:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_17;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(v15);
  if (!v1)
  {
    os_unfair_lock_unlock(v2 + 4);
    v7 = LOBYTE(v15[0]);

    if (v7 == 1)
    {
      sub_1BAB26DCC(v3, v4);
      v17 = v3;
      v8 = 1 << *(v5 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v5 + 64);
      v2 = ((v8 + 63) >> 6);

      for (i = 0; v10; i = v12)
      {
        v12 = i;
LABEL_11:
        v13 = *(v5 + 56) + 32 * (__clz(__rbit64(v10)) | (v12 << 6));
        v14 = *(v13 + 8);
        v15[0] = *v13;
        v15[1] = v14;
        v16 = *(v13 + 16);

        sub_1BAB27134(v15, v17, v4);
        v10 &= v10 - 1;
      }

      while (1)
      {
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v12 >= v2)
        {

          return;
        }

        v10 = *(v5 + 64 + 8 * v12);
        ++i;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  os_unfair_lock_unlock(v2 + 4);
  __break(1u);
}

void sub_1BAB26DCC(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](24);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

void sub_1BAB27134(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[3];
  v55 = a1[2];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock((v4 + 16));
  sub_1BAAF1130(&v61);
  if (v3)
  {
LABEL_14:
    os_unfair_lock_unlock((v4 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v4 + 16));
  v9 = v61;

  if (v9 != 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v52 = v7;
  v66 = 0;
  v67 = 0xE000000000000000;
  v10 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v68 = v10;
  MEMORY[0x1BFAFD200](75);
  MEMORY[0x1BFAFD240](0x204543414C504552, 0xED0000204F544E49);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v64 = MEMORY[0x1E69E6158];
  v65 = &protocol witness table for String;
  v61 = v5;
  v62 = v6;
  sub_1BAAE779C(&v61, &v56);

  SQLValue.init(_:)(&v56, &v58);
  v17 = v58;
  v16 = v59;
  v18 = v60;
  v56 = 0x676E69646E696240;
  v57 = 0xE800000000000000;
  v69 = *(v10 + 16) + 1;
  v19 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v19);

  v21 = v56;
  v20 = v57;
  MEMORY[0x1BFAFD240](v56, v57);
  sub_1BAAE7800(v17, v16, v18);
  v22 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v22;
  sub_1BAAE5904(v17, v16, v18, v21, v20, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v17, v16, v18);
  v24 = v56;
  v68 = v56;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v64 = MEMORY[0x1E69E6158];
  v65 = &protocol witness table for String;
  v61 = a2;
  v62 = a3;
  sub_1BAAE779C(&v61, &v56);

  SQLValue.init(_:)(&v56, &v58);
  v25 = v58;
  v26 = v59;
  v27 = v60;
  v56 = 0x676E69646E696240;
  v57 = 0xE800000000000000;
  v69 = *(v24 + 16) + 1;
  v28 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v28);

  v29 = v56;
  v4 = v57;
  MEMORY[0x1BFAFD240](v56, v57);
  sub_1BAAE7800(v25, v26, v27);
  v30 = v68;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v30;
  sub_1BAAE5904(v25, v26, v27, v29, v4, v31);

  sub_1BAAE7878(v25, v26, v27);
  v32 = v56;
  v68 = v56;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v55 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v33 = MEMORY[0x1E69E7360];
  v64 = MEMORY[0x1E69E7360];
  v65 = &protocol witness table for Int64;
  v61 = v55;
  sub_1BAAE779C(&v61, &v56);
  SQLValue.init(_:)(&v56, &v58);
  v34 = v58;
  v35 = v59;
  v36 = v60;
  v56 = 0x676E69646E696240;
  v57 = 0xE800000000000000;
  v69 = *(v32 + 16) + 1;
  v37 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v37);

  v38 = v56;
  v4 = v57;
  MEMORY[0x1BFAFD240](v56, v57);
  sub_1BAAE7800(v34, v35, v36);
  v39 = v68;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v39;
  sub_1BAAE5904(v34, v35, v36, v38, v4, v40);

  sub_1BAAE7878(v34, v35, v36);
  v41 = v56;
  v68 = v56;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v52 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = v33;
  v65 = &protocol witness table for Int64;
  v61 = v52;
  sub_1BAAE779C(&v61, &v56);
  SQLValue.init(_:)(&v56, &v58);
  v42 = v58;
  v43 = v59;
  v4 = v60;
  v56 = 0x676E69646E696240;
  v57 = 0xE800000000000000;
  v69 = *(v41 + 16) + 1;
  v44 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v44);

  v45 = v56;
  v46 = v57;
  MEMORY[0x1BFAFD240](v56, v57);
  sub_1BAAE7800(v42, v43, v4);
  v47 = v68;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v47;
  sub_1BAAE5904(v42, v43, v4, v45, v46, v48);

  sub_1BAAE7878(v42, v43, v4);
  v68 = v56;
  __swift_destroy_boxed_opaque_existential_1(&v61);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v49 = v66;
  v50 = v67;
  v51 = v68;
  if (!swift_weakLoadStrong())
  {
LABEL_13:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_14;
  }

  v61 = v51;
  v62 = v49;
  v63 = v50;
  SQLDatabase.perform(_:)(&v61);
}

uint64_t sub_1BAB279F4(uint64_t a1, void (*a2)(uint64_t *, uint64_t *))
{
  result = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v8 = *i;

      a2(&v9, &v8);
      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BAB27AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1BABE7B0C();
  *&v17 = a4;
  SQLResult.subscript.getter(v5, v6, &v20);

  if (v21 == 255)
  {
    return 0;
  }

  v8 = v20;
  if (v21 <= 1u)
  {
    if (v21)
    {
      v18 = MEMORY[0x1E69E63B0];
      v19 = &protocol witness table for Double;
      v11 = v20;
      v12 = 1;
    }

    else
    {
      v18 = MEMORY[0x1E69E7360];
      v19 = &protocol witness table for Int64;
      v11 = v20;
      v12 = 0;
    }

    sub_1BAAE8B8C(v11, *(&v20 + 1), v12);
    *&v17 = v8;
    goto LABEL_14;
  }

  if (v21 == 2)
  {
    v9 = MEMORY[0x1E69E6158];
    v10 = &protocol witness table for String;
    goto LABEL_10;
  }

  if (v21 == 3)
  {
    v9 = MEMORY[0x1E6969080];
    v10 = &protocol witness table for Data;
LABEL_10:
    v18 = v9;
    v19 = v10;
    v17 = v20;
    goto LABEL_14;
  }

  v13 = *(&v20 + 1);
  v14 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v18 = sub_1BAAE7A30();
  v19 = &protocol witness table for NSNull;
  sub_1BAAE8B8C(v8, v13, 4);
  *&v17 = v14;
LABEL_14:
  sub_1BAAE7A7C(&v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D8);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAB27C5C()
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BAB28028(v4);
  if (!v1)
  {
    v0 = *v4;

    sub_1BAB28894(v4);
  }

  return v0;
}

uint64_t sub_1BAB27D04()
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB28028(v4);
  if (!v1)
  {
    v0 = v4[16];
    sub_1BAB28894(v4);
  }

  return v0 & 1;
}

uint64_t sub_1BAB27DA0()
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB28028(v4);
  if (!v1)
  {
    v0 = v4[17];
    sub_1BAB28894(v4);
  }

  return v0 & 1;
}

uint64_t sub_1BAB27E3C()
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB28028(v4);
  if (!v1)
  {
    v0 = v4[18];
    sub_1BAB28894(v4);
  }

  return v0 & 1;
}

uint64_t sub_1BAB27ED8()
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAB28028(v4);
  if (!v1)
  {
    v0 = *(v4 + 3);

    sub_1BAB28894(v4);
  }

  return v0;
}

uint64_t sub_1BAB27F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BAB28028(v5);
  if (!v1)
  {
    sub_1BAAFBFFC(&v5[*(v3 + 36)], a1);
    return sub_1BAB28894(v5);
  }

  return result;
}

uint64_t sub_1BAB28028@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v70 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v70 - v7;
  v9 = sub_1BABE6CFC();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = 0;
  v83 = 0xE000000000000000;
  v84 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](52);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v18 = v82;
  v19 = v83;
  v20 = v84;
  if (!swift_weakLoadStrong())
  {
LABEL_32:
    result = sub_1BABE7C9C();
    __break(1u);
    return result;
  }

  v82 = v20;
  v83 = v18;
  v84 = v19;
  v21 = SQLDatabase.perform(_:)(&v82);

  if (!v1)
  {
    if (!*(v21 + 16))
    {

      v31 = *(type metadata accessor for Database.LocalDeviceMetadata() + 36);
      v32 = sub_1BABE6C8C();
      result = (*(*(v32 - 8) + 56))(a1 + v31, 1, 1, v32);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 256;
      *(a1 + 18) = 0;
      *(a1 + 24) = MEMORY[0x1E69E7CC0];
      return result;
    }

    v23 = *(v21 + 32);

    v24 = sub_1BABE7B0C();
    v80 = v23;
    SQLResult.subscript.getter(v24, v25, &v82);

    v26 = v84;
    if (v84 == 255)
    {
      v73 = 0;
      v74 = 0;
    }

    else
    {
      v28 = v82;
      v27 = v83;
      v29 = sub_1BAAF9770(v82, v83, v84);
      v73 = v30;
      v74 = v29;
      sub_1BAAE8B8C(v28, v27, v26);
    }

    v33 = sub_1BABE7B0C();
    v80 = v23;
    SQLResult.subscript.getter(v33, v34, &v82);

    v35 = v84;
    v75 = v5;
    if (v84 == 255)
    {
      v85 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v72 = v23;
      v37 = v82;
      v36 = v83;
      v38 = sub_1BAAF9770(v82, v83, v84);
      v40 = v39;
      sub_1BAAE8B8C(v37, v36, v35);
      if (v40)
      {
        v70[1] = 0;
        v71 = a1;
        v82 = v38;
        v83 = v40;
        v80 = 44;
        v81 = 0xE100000000000000;
        sub_1BAAFBFA8();
        v41 = sub_1BABE79AC();

        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = 0;
          v44 = v78;
          v45 = (v77 + 48);
          v76 = (v77 + 32);
          v46 = v41 + 40;
          v85 = MEMORY[0x1E69E7CC0];
          while (v43 < *(v41 + 16))
          {

            sub_1BABE6C9C();

            if ((*v45)(v8, 1, v44) == 1)
            {
              sub_1BAAD2E14(v8, &qword_1EBC12B60);
            }

            else
            {
              v47 = v41;
              v48 = *v76;
              (*v76)(v79, v8, v44);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v85 = sub_1BAAF9A2C(0, v85[2] + 1, 1, v85);
              }

              v50 = v85[2];
              v49 = v85[3];
              if (v50 >= v49 >> 1)
              {
                v85 = sub_1BAAF9A2C(v49 > 1, v50 + 1, 1, v85);
              }

              v51 = v85;
              v85[2] = v50 + 1;
              v52 = v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v50;
              v44 = v78;
              v48(v52, v79, v78);
              v41 = v47;
            }

            ++v43;
            v46 += 16;
            if (v42 == v43)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_32;
        }

        v85 = MEMORY[0x1E69E7CC0];
LABEL_24:

        a1 = v71;
      }

      else
      {
        v85 = MEMORY[0x1E69E7CC0];
      }

      v23 = v72;
    }

    v53 = sub_1BAB27AC4("HasMigratedFromChrono", 21, 2, v23) == 1;
    v55 = v53 & ~v54;
    v56 = sub_1BAB27AC4("IsEnabled", 9, 2, v23) == 1;
    v58 = v56 & ~v57;
    v59 = sub_1BAB27AC4("AllowListEnabled", 16, 2, v23) == 1;
    v61 = v59 & ~v60;
    sub_1BAB27AC4("LastAuthKitReconciliationDate", 29, 2, v23);
    v63 = v62;

    if (v63)
    {
      v64 = 1;
      v65 = v75;
    }

    else
    {
      v65 = v75;
      sub_1BABE6BFC();
      v64 = 0;
    }

    v66 = v74;
    v67 = sub_1BABE6C8C();
    (*(*(v67 - 8) + 56))(v65, v64, 1, v67);
    v68 = v73;
    *a1 = v66;
    *(a1 + 8) = v68;
    *(a1 + 16) = v55;
    *(a1 + 17) = v58;
    *(a1 + 18) = v61;
    *(a1 + 24) = v85;
    v69 = type metadata accessor for Database.LocalDeviceMetadata();
    return sub_1BAB2A800(v65, a1 + *(v69 + 36));
  }

  return result;
}

uint64_t sub_1BAB28894(uint64_t a1)
{
  v2 = type metadata accessor for Database.LocalDeviceMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Database.DeviceMetadataStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BAB28948(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - v7;
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF0E90(&v84);
  if (v2)
  {
LABEL_32:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v13 = LOBYTE(v84);

  if (v13 != 1)
  {
    __break(1u);
LABEL_31:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_32;
  }

  sub_1BAB2A608();
  v72 = v4;
  v73 = 0;
  v70 = a1;
  v14 = a1[3];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v71 = v8;
  if (v15)
  {
    v84 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAAC0(0, v15, 0);
    v16 = *&v84;
    v75 = *(v78 + 16);
    v17 = v14 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v74 = *(v78 + 72);
    v78 += 16;
    v18 = (v78 - 8);
    do
    {
      v19 = v76;
      v20 = v77;
      v75(v76, v17, v77);
      v21 = sub_1BABE6CAC();
      v23 = v22;
      (*v18)(v19, v20);
      v84 = *&v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1BAAFAAC0((v24 > 1), v25 + 1, 1);
        v16 = *&v84;
      }

      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v17 += v74;
      --v15;
    }

    while (v15);
  }

  v84 = *&v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12830);
  sub_1BAAFBA1C();
  v78 = sub_1BABE74CC();
  v28 = v27;

  v89 = 0;
  v90 = 0xE000000000000000;
  v91 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](98);
  MEMORY[0x1BFAFD240](0x4920545245534E49, 0xEC000000204F544ELL);
  v29 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v29);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v30 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v30);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v31 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v31);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v32 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v32);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v33 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v33);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v34 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v34);

  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v35 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v35);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v36 = v70;
  v37 = v70[1];
  v38 = MEMORY[0x1E69E6158];
  if (v37)
  {
    v39 = *v70;
    *(&v82 + 1) = MEMORY[0x1E69E6158];
    v83 = &protocol witness table for String;
    *&v81 = v39;
    *(&v81 + 1) = v37;
    sub_1BAAE7A7C(&v81, &v84);
  }

  else
  {
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v40 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v87 = sub_1BAAE7A30();
    v88 = &protocol witness table for NSNull;
    v84 = *&v40;
    if (*(&v82 + 1))
    {
      sub_1BAAD2E14(&v81, &qword_1EBC12770);
    }
  }

  v41 = v87;
  v42 = v88;
  v43 = __swift_project_boxed_opaque_existential_1(&v84, v87);

  sub_1BABA876C(v43, &v89, v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v44 = MEMORY[0x1E69E63B0];
  if (v36[16])
  {
    v45 = 1.0;
  }

  else
  {
    v45 = 0.0;
  }

  v87 = MEMORY[0x1E69E63B0];
  v88 = &protocol witness table for Double;
  v84 = v45;
  v46 = __swift_project_boxed_opaque_existential_1(&v84, MEMORY[0x1E69E63B0]);
  sub_1BABA876C(v46, &v89, v44, &protocol witness table for Double);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v36[17])
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  v87 = v44;
  v88 = &protocol witness table for Double;
  v84 = v47;
  v48 = __swift_project_boxed_opaque_existential_1(&v84, v44);
  sub_1BABA876C(v48, &v89, v44, &protocol witness table for Double);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  if (v36[18])
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v87 = v44;
  v88 = &protocol witness table for Double;
  v84 = v49;
  v50 = __swift_project_boxed_opaque_existential_1(&v84, v44);
  sub_1BABA876C(v50, &v89, v44, &protocol witness table for Double);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v87 = v38;
  v88 = &protocol witness table for String;
  v84 = *&v78;
  v85 = v28;
  sub_1BAAE779C(&v84, &v81);

  SQLValue.init(_:)(&v81, v79);
  v52 = v79[0];
  v51 = v79[1];
  v53 = v80;
  *&v81 = 0x676E69646E696240;
  *(&v81 + 1) = 0xE800000000000000;
  v92 = *(v91 + 16) + 1;
  v54 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v54);

  v55 = v81;
  MEMORY[0x1BFAFD240](v81, *(&v81 + 1));
  sub_1BAAE7800(v52, v51, v53);
  v56 = v91;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81 = v56;
  sub_1BAAE5904(v52, v51, v53, v55, *(&v55 + 1), isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v52, v51, v53);
  v91 = v81;
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](0x202020200A2CLL, 0xE600000000000000);
  v58 = type metadata accessor for Database.LocalDeviceMetadata();
  v59 = v71;
  sub_1BAAFBFFC(&v36[*(v58 + 36)], v71);
  v60 = sub_1BABE6C8C();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_1BAAD2E14(v59, &qword_1EBC132A0);
    v81 = 0u;
    v82 = 0u;
    v83 = 0;
    v62 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v87 = sub_1BAAE7A30();
    v88 = &protocol witness table for NSNull;
    v84 = *&v62;
    if (*(&v82 + 1))
    {
      sub_1BAAD2E14(&v81, &qword_1EBC12770);
    }
  }

  else
  {
    sub_1BABE6C0C();
    *(&v82 + 1) = v44;
    v83 = &protocol witness table for Double;
    *&v81 = v63;
    (*(v61 + 8))(v59, v60);
    sub_1BAAE7A7C(&v81, &v84);
  }

  v64 = v87;
  v65 = v88;
  v66 = __swift_project_boxed_opaque_existential_1(&v84, v87);
  sub_1BABA876C(v66, &v89, v64, v65);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v3 = v89;
  v67 = v90;
  v68 = v91;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_31;
  }

  v84 = *&v68;
  v85 = v3;
  v86 = v67;
  v69 = v73;
  SQLDatabase.perform(_:)(&v84);

  if (!v69)
  {
  }
}

void sub_1BAB29368(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v12);
  if (v2)
  {
LABEL_9:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v10 = v12;

  if (v10 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v8);

  *v8 = a1;
  v8[1] = a2;
  sub_1BAB28948(v8);
  sub_1BAB28894(v8);
}

void sub_1BAB29538(char a1)
{
  v4 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(&v10);
  if (v1)
  {
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  v8 = v10;

  if (v8 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v6);
  v6[16] = a1 & 1;
  sub_1BAB28948(v6);
  sub_1BAB28894(v6);
}

void sub_1BAB296E8(char a1)
{
  v4 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(&v10);
  if (v1)
  {
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  v8 = v10;

  if (v8 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v6);
  v6[17] = a1 & 1;
  sub_1BAB28948(v6);
  sub_1BAB28894(v6);
}

void sub_1BAB29898(uint64_t a1)
{
  v4 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(&v10);
  if (v1)
  {
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  v8 = v10;

  if (v8 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v6);
  sub_1BAB22AD8(a1, v6 + *(v4 + 36));
  sub_1BAB28948(v6);
  sub_1BAB28894(v6);
}

void sub_1BAB29A64(char a1, uint64_t a2)
{
  v6 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v13);
  if (v2)
  {
LABEL_12:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v10 = v13;

  if (v10 != 1)
  {
    __break(1u);
LABEL_11:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_12;
  }

  sub_1BAB28028(v8);
  v8[18] = a1 & 1;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v8 + 3) = v11;
  sub_1BAB28948(v8);
  sub_1BAB28894(v8);
}

void sub_1BAB29C4C(uint64_t a1)
{
  v4 = type metadata accessor for Database.LocalDeviceMetadata();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAAF1130(&v10);
  if (v1)
  {
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v2 + 4);
  v8 = v10;

  if (v8 != 1)
  {
    __break(1u);
LABEL_8:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_9;
  }

  sub_1BAB28028(v6);

  v6[3] = a1;
  sub_1BAB28948(v6);
  sub_1BAB28894(v6);
}

void sub_1BAB29E14(char a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(v16);
  if (!v2)
  {
    os_unfair_lock_unlock(v3 + 4);
    v7 = LOBYTE(v16[0]);

    if (v7 == 1)
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      v19 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFAFD200](16);
      MEMORY[0x1BFAFD240](0x20455441445055, 0xE700000000000000);
      v8 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v8);

      MEMORY[0x1BFAFD240](0x2054455320, 0xE500000000000000);
      v9 = sub_1BABE7B0C();
      MEMORY[0x1BFAFD240](v9);

      MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
      v10 = 0.0;
      v11 = MEMORY[0x1E69E63B0];
      if (a1)
      {
        v10 = 1.0;
      }

      v16[3] = MEMORY[0x1E69E63B0];
      v16[4] = &protocol witness table for Double;
      *v16 = v10;
      v12 = __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x1E69E63B0]);
      sub_1BABA876C(v12, &v17, v11, &protocol witness table for Double);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAFD240](59, 0xE100000000000000);
      v14 = v17;
      v13 = v18;
      v15 = v19;
      if (a2)
      {
        sub_1BAB2A0D8(a2);
      }

      if (swift_weakLoadStrong())
      {
        v16[0] = v15;
        v16[1] = v14;
        v16[2] = v13;
        SQLDatabase.perform(_:)(v16);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    goto LABEL_11;
  }

LABEL_12:
  os_unfair_lock_unlock(v3 + 4);
  __break(1u);
}

void sub_1BAB2A0D8(uint64_t a1)
{
  v4 = v1;
  v47 = sub_1BABE6CFC();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF1130(&v52);
  if (v2)
  {
LABEL_15:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v9 = v52;

  if (v9 != 1)
  {
    __break(1u);
LABEL_14:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_15;
  }

  v42 = 0;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v41 = v4;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAAC0(0, v10, 0);
    v11 = v52;
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v43 = *(v12 + 56);
    v44 = v13;
    v45 = v12;
    v15 = (v12 - 8);
    do
    {
      v16 = v46;
      v17 = v47;
      v44(v46, v14, v47);
      v18 = sub_1BABE6CAC();
      v20 = v19;
      (*v15)(v16, v17);
      v52 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BAAFAAC0((v21 > 1), v22 + 1, 1);
        v11 = v52;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v14 += v43;
      --v10;
    }

    while (v10);
  }

  v52 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12830);
  sub_1BAAFBA1C();
  v24 = sub_1BABE74CC();
  v26 = v25;

  v57 = 0;
  v58 = 0xE000000000000000;
  v27 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v59 = v27;
  MEMORY[0x1BFAFD200](16);
  MEMORY[0x1BFAFD240](0x20455441445055, 0xE700000000000000);
  v28 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v28);

  MEMORY[0x1BFAFD240](0x2054455320, 0xE500000000000000);
  v29 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v29);

  MEMORY[0x1BFAFD240](2112800, 0xE300000000000000);
  v55 = MEMORY[0x1E69E6158];
  v56 = &protocol witness table for String;
  v52 = v24;
  v53 = v26;
  sub_1BAAE779C(&v52, &v48);

  SQLValue.init(_:)(&v48, v50);
  v30 = v50[0];
  v31 = v50[1];
  v32 = v51;
  v48 = 0x676E69646E696240;
  v49 = 0xE800000000000000;
  v60 = *(v27 + 16) + 1;
  v33 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v33);

  v34 = v48;
  v35 = v49;
  MEMORY[0x1BFAFD240](v48, v49);
  sub_1BAAE7800(v30, v31, v32);
  v36 = v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v36;
  sub_1BAAE5904(v30, v31, v32, v34, v35, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v30, v31, v32);
  v59 = v48;
  __swift_destroy_boxed_opaque_existential_1(&v52);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v38 = v57;
  v3 = v58;
  v39 = v59;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_14;
  }

  v52 = v39;
  v53 = v38;
  v54 = v3;
  v40 = v42;
  SQLDatabase.perform(_:)(&v52);

  if (!v40)
  {
  }
}

void sub_1BAB2A608()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v1 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAAF1130(&v7);
  if (v0)
  {
LABEL_10:
    os_unfair_lock_unlock(v1 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v1 + 4);
  v3 = v7;

  if (v3 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0xE000000000000000;
  v9 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](13);
  MEMORY[0x1BFAFD240](0x46204554454C4544, 0xEC000000204D4F52);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v1 = v7;
  v5 = v8;
  v6 = v9;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v1;
  v9 = v5;
  SQLDatabase.perform(_:)(&v7);
}

uint64_t sub_1BAB2A800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorRecordVersion.init(id:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BAAE8254(a1, a3);
  v5 = *(type metadata accessor for ReplicatorRecordVersion() + 20);
  v6 = sub_1BABE6CFC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t type metadata accessor for ReplicatorRecordVersion()
{
  result = qword_1ED787BF0;
  if (!qword_1ED787BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAB2AD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.ID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorRecordVersion.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicatorRecordVersion() + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicatorRecordVersion.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorRecordVersion() + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1BAB2AF58()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1BAB2AF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BAB2B05C(uint64_t a1)
{
  v2 = sub_1BAB2B2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB2B098(uint64_t a1)
{
  v2 = sub_1BAB2B2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorRecordVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2B2D4();
  sub_1BABE800C();
  v8[15] = 0;
  type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB2B814(qword_1ED787420, type metadata accessor for ReplicatorRecord.ID);
  sub_1BABE7E7C();
  if (!v1)
  {
    type metadata accessor for ReplicatorRecordVersion();
    v8[14] = 1;
    sub_1BABE6CFC();
    sub_1BAB2B814(&qword_1EBC12220, MEMORY[0x1E69695A8]);
    sub_1BABE7E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BAB2B2D4()
{
  result = qword_1ED787298;
  if (!qword_1ED787298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787298);
  }

  return result;
}

uint64_t ReplicatorRecordVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1BABE6CFC();
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D68);
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReplicatorRecordVersion();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB2B2D4();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v29 = 0;
  sub_1BAB2B814(&qword_1ED787160, type metadata accessor for ReplicatorRecord.ID);
  v15 = v26;
  sub_1BABE7DCC();
  sub_1BAAE8254(v15, v12);
  v28 = 1;
  sub_1BAB2B814(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
  v16 = v5;
  v17 = v13;
  v18 = v27;
  sub_1BABE7DCC();
  (*(v14 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  sub_1BAB2B704(v12, v22, type metadata accessor for ReplicatorRecordVersion);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1BAB2B76C(v12, type metadata accessor for ReplicatorRecordVersion);
}

uint64_t sub_1BAB2B704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB2B76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAB2B814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAB2B8E8()
{
  result = type metadata accessor for ReplicatorRecord.ID(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BABE6CFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAB2B980()
{
  result = qword_1EBC12D70;
  if (!qword_1EBC12D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12D70);
  }

  return result;
}

unint64_t sub_1BAB2B9D8()
{
  result = qword_1ED787288;
  if (!qword_1ED787288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787288);
  }

  return result;
}

unint64_t sub_1BAB2BA30()
{
  result = qword_1ED787290;
  if (!qword_1ED787290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787290);
  }

  return result;
}

id BSServiceConnectionEndpoint.init<A>(definition:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(&v13, a4, a5);

  v8 = sub_1BABE74EC();

  (*(a5 + 32))(a4, a5);
  v9 = sub_1BABE74EC();

  if (a3)
  {
    v10 = sub_1BABE74EC();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() endpointForMachName:v8 service:v9 instance:v10];

  return v11;
}

uint64_t XPCInterfaceDomain.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCInterfaceDomain.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t XPCInterfaceDomain.machName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t XPCInterfaceDomain.machName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

ReplicatorServices::XPCInterfaceDomain __swiftcall XPCInterfaceDomain.init(domain:machName:)(Swift::String domain, Swift::String machName)
{
  *v2 = domain;
  v2[1] = machName;
  result.machName = machName;
  result.domain = domain;
  return result;
}

uint64_t static XPCInterfaceDomain.replicatorServices.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED787CB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1ED787CC8;
  v2 = qword_1ED787CD0;
  v3 = unk_1ED787CD8;
  *a1 = qword_1ED787CC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

Swift::Void __swiftcall BSServiceConnectionListenerConfiguring.setDomain(_:)(ReplicatorServices::XPCInterfaceDomain a1)
{
  v2 = sub_1BABE74EC();
  [v1 setDomain_];
}

id BSServiceConnection.init<A>(endpointedDefinedBy:instance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1BAB2BF3C();
  v8 = BSServiceConnectionEndpoint.init<A>(definition:instance:)(a1, 0, 0, a4, a5);
  if (v8)
  {
    v9 = v8;
    v10 = [swift_getObjCClassFromMetadata() connectionWithEndpoint_];

    if (v10)
    {
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12D78);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BABE9F00;
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1BABE7AEC();

    v18 = 0xD000000000000025;
    v19 = 0x80000001BABF6680;
    (*(a5 + 24))(v17, a4, a5);
    v12 = v17[2];
    v13 = v17[3];

    MEMORY[0x1BFAFD240](v12, v13);

    v14 = v18;
    v15 = v19;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_1BABE7F7C();

    return 0;
  }

  return v10;
}

unint64_t sub_1BAB2BF3C()
{
  result = qword_1EBC11D48;
  if (!qword_1EBC11D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC11D48);
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

uint64_t sub_1BAB2BF94(uint64_t a1, int a2)
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

uint64_t sub_1BAB2BFDC(uint64_t result, int a2, int a3)
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

uint64_t ReplicatorSchedule.description.getter()
{
  if (*v0)
  {
    return 0x6E7574726F70706FLL;
  }

  else
  {
    return 0x74616964656D6D69;
  }
}

ReplicatorServices::ReplicatorSchedule_optional __swiftcall ReplicatorSchedule.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BAB2C0C8()
{
  result = qword_1EBC12D80;
  if (!qword_1EBC12D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12D80);
  }

  return result;
}

void *sub_1BAB2C11C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1BAB2C1EC()
{
  if (*v0)
  {
    return 0x6E7574726F70706FLL;
  }

  else
  {
    return 0x74616964656D6D69;
  }
}

unint64_t sub_1BAB2C248()
{
  result = qword_1ED787400;
  if (!qword_1ED787400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787400);
  }

  return result;
}

uint64_t sub_1BAB2C29C()
{
  v8 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](22);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v7[0] = v8;
    v7[1] = 0;
    v8 = 0xE000000000000000;
    v5 = SQLDatabase.perform(_:)(v7);

    if (!v0)
    {
      v4 = sub_1BAB2C83C(v5);
    }

    return v4;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}