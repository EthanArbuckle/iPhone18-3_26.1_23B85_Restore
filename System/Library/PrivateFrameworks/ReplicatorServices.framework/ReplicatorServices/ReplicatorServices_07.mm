uint64_t sub_1BAB81298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v45 = a2;
  v7 = type metadata accessor for ReplicatorRecordVersion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ReplicatorRecordChange();
  v13 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v38 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = a1 + v40;
    v25 = *(v20 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    v41 = a3;
    while (1)
    {
      sub_1BAB92C54(v24, v22, type metadata accessor for ReplicatorRecordChange);
      sub_1BAB92C54(v22, v19, type metadata accessor for ReplicatorRecordChange);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BAB92E38(v19, v12, type metadata accessor for ReplicatorRecord.ID);
        v29 = *(v12 + 2) == v45 && *(v12 + 3) == a3;
        if (!v29 && (sub_1BABE7EDC() & 1) == 0)
        {
          sub_1BAB92CD8(v22, type metadata accessor for ReplicatorRecordChange);
          v35 = type metadata accessor for ReplicatorRecord.ID;
          v36 = v12;
LABEL_28:
          sub_1BAB92CD8(v36, v35);
          goto LABEL_5;
        }

        sub_1BAB92C54(v22, v42, type metadata accessor for ReplicatorRecordChange);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BAAF9A7C(0, v26[2] + 1, 1, v26);
        }

        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v26 = sub_1BAAF9A7C(v30 > 1, v31 + 1, 1, v26);
        }

        sub_1BAB92CD8(v22, type metadata accessor for ReplicatorRecordChange);
        v26[2] = v31 + 1;
        sub_1BAB92E38(v42, v26 + v40 + v31 * v25, type metadata accessor for ReplicatorRecordChange);
        v27 = type metadata accessor for ReplicatorRecord.ID;
        v28 = v12;
      }

      else
      {
        sub_1BAB92E38(v19, v9, type metadata accessor for ReplicatorRecordVersion);
        v32 = *(v9 + 2) == v45 && *(v9 + 3) == a3;
        if (!v32 && (sub_1BABE7EDC() & 1) == 0)
        {
          sub_1BAB92CD8(v22, type metadata accessor for ReplicatorRecordChange);
          v35 = type metadata accessor for ReplicatorRecordVersion;
          v36 = v9;
          goto LABEL_28;
        }

        sub_1BAB92C54(v22, v43, type metadata accessor for ReplicatorRecordChange);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BAAF9A7C(0, v26[2] + 1, 1, v26);
        }

        v34 = v26[2];
        v33 = v26[3];
        if (v34 >= v33 >> 1)
        {
          v26 = sub_1BAAF9A7C(v33 > 1, v34 + 1, 1, v26);
        }

        sub_1BAB92CD8(v22, type metadata accessor for ReplicatorRecordChange);
        v26[2] = v34 + 1;
        sub_1BAB92E38(v43, v26 + v40 + v34 * v25, type metadata accessor for ReplicatorRecordChange);
        v27 = type metadata accessor for ReplicatorRecordVersion;
        v28 = v9;
      }

      sub_1BAB92CD8(v28, v27);
      a3 = v41;
LABEL_5:
      v24 += v25;
      if (!--v23)
      {
        goto LABEL_30;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v39(v26);
}

uint64_t sub_1BAB817C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB30A88(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BAB818C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DE8);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BAB819F8, 0, 0);
}

uint64_t sub_1BAB819F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    v5 = (Strong + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient);
    v6 = v5[3];
    v7 = v5[12];
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 8))(v6, v7);
    sub_1BABE77EC();
    (*(v3 + 8))(v2, v4);
    v8 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_syncQueue;
    v0[20] = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_runOnceStore;
    v0[21] = v8;
    v0[23] = 0;
    v0[24] = 0;
    v0[22] = 0;
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_1BAB81BC4;
    v10 = v0[16];

    return MEMORY[0x1EEE6D9C8](v0 + 11, 0, 0, v10);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BAB81BC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BAB81CC0, 0, 0);
}

uint64_t sub_1BAB81CC0()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[24];

    v3 = sub_1BABBAC04(0xD00000000000003ALL, 0x80000001BABF72E0);
    v4 = v2;

    if (v2)
    {
      if (qword_1EBC12270 != -1)
      {
        swift_once();
      }

      v5 = sub_1BABE72BC();
      __swift_project_value_buffer(v5, qword_1EBC25018);
      v6 = v2;
      v7 = sub_1BABE729C();
      v8 = sub_1BABE78EC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138543362;
        v11 = v4;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1BAACF000, v7, v8, "Could not read database: %{public}@", v9, 0xCu);
        sub_1BAAD2E14(v10, &qword_1EBC12A00);
        MEMORY[0x1BFAFE460](v10, -1, -1);
        MEMORY[0x1BFAFE460](v9, -1, -1);
      }

      v13 = v0[22];
      v14 = v0[18];
      v15 = v7;
      v16 = v0[16];
      v17 = v0[17];

      swift_willThrow();

      (*(v17 + 8))(v14, v16);
      sub_1BAADAFD4(v13);

      v18 = v0[1];
      goto LABEL_9;
    }

    if (v3)
    {
      v21 = v0[22];
      v22 = v0[19];
      v23 = *(v22 + v0[21]);
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v1;

      sub_1BAADAFD4(v21);
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1BAB92334;
      *(v25 + 24) = v24;
      v0[6] = sub_1BAB77ED0;
      v0[7] = v25;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1BABE332C;
      v0[5] = &block_descriptor_30;
      v26 = _Block_copy(v0 + 2);

      dispatch_sync(v23, v26);
      _Block_release(v26);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
        return MEMORY[0x1EEE6D9C8](v27, v28, v29, v30);
      }

      v0[22] = sub_1BAB92334;
      v0[23] = v24;
    }

    else
    {

      sub_1BAB7E710();
    }

    v0[24] = 0;
    v31 = swift_task_alloc();
    v0[25] = v31;
    *v31 = v0;
    v31[1] = sub_1BAB81BC4;
    v30 = v0[16];
    v27 = (v0 + 11);
    v28 = 0;
    v29 = 0;

    return MEMORY[0x1EEE6D9C8](v27, v28, v29, v30);
  }

  v19 = v0[22];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_1BAADAFD4(v19);

  v18 = v0[1];
LABEL_9:

  return v18();
}

uint64_t sub_1BAB82184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BAB41838;

  return sub_1BAB818C4(a1, v4, v5, v6);
}

uint64_t sub_1BAB82244(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB8F398(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  if (v2)
  {
    sub_1BAB7E440(v2);
  }

  return result;
}

void sub_1BAB822E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = type metadata accessor for ReplicatorRecordVersion();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v46 - v7;
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ReplicatorRecordChange();
  v12 = MEMORY[0x1EEE9AC00](v54);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = v46 - v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v52 = *(v15 + 72);
    v19 = (v10 + 56);
    v49 = v10;
    v20 = (v10 + 48);
    v21 = MEMORY[0x1E69E7CC0];
    v50 = v9;
    do
    {
      v22 = v53;
      sub_1BAB92C54(v18, v53, type metadata accessor for ReplicatorRecordChange);
      sub_1BAB92E38(v22, v14, type metadata accessor for ReplicatorRecordChange);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BAB92E38(v14, v8, type metadata accessor for ReplicatorRecord.ID);
      }

      else
      {
        v23 = v51;
        sub_1BAB92E38(v14, v51, type metadata accessor for ReplicatorRecordVersion);
        sub_1BAB92C54(v23, v8, type metadata accessor for ReplicatorRecord.ID);
        sub_1BAB92CD8(v23, type metadata accessor for ReplicatorRecordVersion);
      }

      (*v19)(v8, 0, 1, v9);
      if ((*v20)(v8, 1, v9) == 1)
      {
        sub_1BAAD2E14(v8, &qword_1EBC12A20);
      }

      else
      {
        sub_1BAB92E38(v8, v55, type metadata accessor for ReplicatorRecord.ID);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1BAAF9A54(0, v21[2] + 1, 1, v21);
        }

        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v21 = sub_1BAAF9A54(v24 > 1, v25 + 1, 1, v21);
        }

        v21[2] = v25 + 1;
        sub_1BAB92E38(v55, v21 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v25, type metadata accessor for ReplicatorRecord.ID);
        v9 = v50;
      }

      v18 += v52;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1BABB63C4(v21);

  v27 = v47;
  v28 = *(v47 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
  v29 = *(v47 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
  __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v28);
  v30 = v46[1];
  v31 = (*(v29 + 64))(v28, v29);
  if (v30)
  {

    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1BABE72BC();
    __swift_project_value_buffer(v32, qword_1ED78BBA0);
    v33 = v30;
    v34 = sub_1BABE729C();
    v35 = sub_1BABE78EC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      v38 = v30;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_1BAACF000, v34, v35, "Could not process record changes: %{public}@", v36, 0xCu);
      sub_1BAAD2E14(v37, &qword_1EBC12A00);
      MEMORY[0x1BFAFE460](v37, -1, -1);
      MEMORY[0x1BFAFE460](v36, -1, -1);
    }

    else
    {
    }

    v45 = 0;
  }

  else
  {
    v40 = v31;

    v41 = sub_1BAB92568(v26, v40, v27);

    v42 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata;
    swift_beginAccess();
    v43 = *(v27 + v42);
    v56 = 1;

    sub_1BAB7DDC8(v41, v43, v40, &v56);
    v45 = v44;
  }

  *v48 = v45;
}

uint64_t sub_1BAB82984(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B68);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  if (!*(a2 + 16))
  {
    v19 = a1;
    goto LABEL_5;
  }

  v19 = a1;
  v20 = sub_1BABD5D18(a1);
  if ((v21 & 1) == 0)
  {
LABEL_5:
    v22 = *(v7 + 56);
    v22(v18, 1, 1, v6);
    goto LABEL_6;
  }

  (*(v7 + 16))(v18, *(a2 + 56) + *(v7 + 72) * v20, v6);
  v22 = *(v7 + 56);
  v22(v18, 0, 1, v6);
LABEL_6:
  v23 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata;
  swift_beginAccess();
  if (*(*(a3 + v23) + 16) && (sub_1BABD5D18(v19), (v24 & 1) != 0))
  {
    swift_endAccess();

    sub_1BABE6F3C();

    v25 = 0;
  }

  else
  {
    swift_endAccess();
    v25 = 1;
  }

  v22(v16, v25, 1, v6);
  v26 = *(v37 + 48);
  sub_1BAAD2DAC(v18, v10, &qword_1EBC12B60);
  sub_1BAAD2DAC(v16, &v10[v26], &qword_1EBC12B60);
  v27 = v7;
  v28 = *(v7 + 48);
  if (v28(v10, 1, v6) != 1)
  {
    v30 = v36;
    sub_1BAAD2DAC(v10, v36, &qword_1EBC12B60);
    if (v28(&v10[v26], 1, v6) != 1)
    {
      v31 = &v10[v26];
      v32 = v35;
      (*(v27 + 32))(v35, v31, v6);
      sub_1BAB92D38(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
      LODWORD(v37) = sub_1BABE74DC();
      v33 = *(v27 + 8);
      v33(v32, v6);
      sub_1BAAD2E14(v16, &qword_1EBC12B60);
      sub_1BAAD2E14(v18, &qword_1EBC12B60);
      v33(v30, v6);
      sub_1BAAD2E14(v10, &qword_1EBC12B60);
      v29 = v37 ^ 1;
      return v29 & 1;
    }

    sub_1BAAD2E14(v16, &qword_1EBC12B60);
    sub_1BAAD2E14(v18, &qword_1EBC12B60);
    (*(v27 + 8))(v30, v6);
    goto LABEL_15;
  }

  sub_1BAAD2E14(v16, &qword_1EBC12B60);
  sub_1BAAD2E14(v18, &qword_1EBC12B60);
  if (v28(&v10[v26], 1, v6) != 1)
  {
LABEL_15:
    sub_1BAAD2E14(v10, &qword_1EBC12B68);
    v29 = 1;
    return v29 & 1;
  }

  sub_1BAAD2E14(v10, &qword_1EBC12B60);
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1BAB82EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BAAD2DAC(a3, v22 - v9, &qword_1EBC12DD8);
  v11 = sub_1BABE778C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BAAD2E14(v10, &qword_1EBC12DD8);
  }

  else
  {
    sub_1BABE777C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BABE776C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BABE756C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BAAD2E14(a3, &qword_1EBC12DD8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAAD2E14(a3, &qword_1EBC12DD8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BAB83168@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = *(type metadata accessor for ReplicatorRecord.ID(0) - 8);
    v8 = (v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v9 = *(v7 + 72);
    while (1)
    {
      result = sub_1BAB7F5D0(v8);
      if (v2)
      {
        break;
      }

      v6 |= result;
      v8 = (v8 + v9);
      if (!--v4)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v6 = 0;
LABEL_7:
    *a2 = v6 & 1;
  }

  return result;
}

uint64_t sub_1BAB83238@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    v7 = result;
    v8 = 0;
    v9 = *(type metadata accessor for ReplicatorRecord(0) - 8);
    v10 = (v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
    v11 = *(v9 + 72);
    while (1)
    {
      v12 = a2;
      result = sub_1BAB7C92C(v10, &v12);
      if (v3)
      {
        break;
      }

      v8 |= result;
      v10 = (v10 + v11);
      if (!--v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = 0;
LABEL_7:
    *a3 = v8 & 1;
  }

  return result;
}

void sub_1BAB8331C(uint64_t a1, int a2)
{
  v4 = sub_1BABE737C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  v68 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BABE736C();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1BABE73EC();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v20 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule;
  v21 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule);
  v66 = a2;
  if (a2)
  {
    if (v21 == 2)
    {
      *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) = 1;
LABEL_5:
      v62 = v4;
      v63 = &v56 - v18;
      v57 = v19;
      v58 = v17;
      v59 = v7;
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v60 = v8;
      v61 = v5;
      v23 = sub_1BABE72BC();
      __swift_project_value_buffer(v23, qword_1ED78BBA0);

      v24 = sub_1BABE729C();
      v25 = sub_1BABE78CC();
      if (!os_log_type_enabled(v24, v25))
      {

LABEL_32:

        sub_1BABE73CC();
        *v12 = 100;
        v43 = v64;
        v42 = v65;
        (*(v64 + 104))(v12, *MEMORY[0x1E69E7F38], v65);
        sub_1BABE73DC();
        (*(v43 + 8))(v12, v42);
        v44 = v58;
        v65 = *(v57 + 8);
        v65(v16, v58);
        v64 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_syncQueue);
        v45 = swift_allocObject();
        *(v45 + 16) = a1;
        *(v45 + 24) = v66 & 1;
        aBlock[4] = sub_1BAB8E700;
        aBlock[5] = v45;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BAAD173C;
        aBlock[3] = &block_descriptor_3;
        v46 = _Block_copy(aBlock);

        v47 = v67;
        sub_1BABE739C();
        aBlock[7] = MEMORY[0x1E69E7CC0];
        sub_1BAB92D38(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
        sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
        v48 = v59;
        v49 = v62;
        sub_1BABE79FC();
        v50 = v63;
        MEMORY[0x1BFAFD5A0](v63, v47, v48, v46);
        _Block_release(v46);
        (*(v61 + 8))(v48, v49);
        (*(v68 + 8))(v47, v60);
        v65(v50, v44);

        return;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      v28 = *(a1 + v20);

      if (v28 != 2)
      {
        if (v28)
        {
          v29 = 0x6E7574726F70706FLL;
        }

        else
        {
          v29 = 0x74616964656D6D69;
        }

        if (v28)
        {
          v30 = 0xED00006369747369;
        }

        else
        {
          v30 = 0xE900000000000065;
        }

        v31 = sub_1BAAFA460(v29, v30, aBlock);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1BAACF000, v24, v25, "Scheduling database sync with priority %{public}s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1BFAFE460](v27, -1, -1);
        MEMORY[0x1BFAFE460](v26, -1, -1);
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_48;
    }

    v22 = v21 & 1;
    if (v21)
    {
      v22 = 1;
    }

    *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) = v22;
  }

  else
  {
    v22 = 0;
    *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) = 0;
    if (v21 == 2)
    {
      goto LABEL_5;
    }
  }

  if (((v22 ^ v21) & 1) == 0)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v32 = sub_1BABE72BC();
    __swift_project_value_buffer(v32, qword_1ED78BBA0);

    v33 = sub_1BABE729C();
    v34 = sub_1BABE78CC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136446210;
      v37 = *(a1 + v20);

      if (v37 == 2)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v37)
      {
        v38 = 0x6E7574726F70706FLL;
      }

      else
      {
        v38 = 0x74616964656D6D69;
      }

      if (v37)
      {
        v39 = 0xED00006369747369;
      }

      else
      {
        v39 = 0xE900000000000065;
      }

      v40 = sub_1BAAFA460(v38, v39, aBlock);

      *(v35 + 4) = v40;
      v41 = "Database sync already scheduled with priority %{public}s";
      goto LABEL_44;
    }

LABEL_45:

    goto LABEL_46;
  }

  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v51 = sub_1BABE72BC();
  __swift_project_value_buffer(v51, qword_1ED78BBA0);

  v33 = sub_1BABE729C();
  v34 = sub_1BABE78CC();
  if (!os_log_type_enabled(v33, v34))
  {
    goto LABEL_45;
  }

  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  aBlock[0] = v36;
  *v35 = 136446210;
  v52 = *(a1 + v20);

  if (v52 != 2)
  {
    if (v52)
    {
      v53 = 0x6E7574726F70706FLL;
    }

    else
    {
      v53 = 0x74616964656D6D69;
    }

    if (v52)
    {
      v54 = 0xED00006369747369;
    }

    else
    {
      v54 = 0xE900000000000065;
    }

    v55 = sub_1BAAFA460(v53, v54, aBlock);

    *(v35 + 4) = v55;
    v41 = "Updated scheduled database sync to priority %{public}s";
LABEL_44:
    _os_log_impl(&dword_1BAACF000, v33, v34, v41, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAFE460](v36, -1, -1);
    MEMORY[0x1BFAFE460](v35, -1, -1);
LABEL_46:

    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_1BAB83C40(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB92EC8(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  sub_1BAB7E440(v2);
}

uint64_t sub_1BAB83CE8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v273 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v253 = &v222 - v7;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v8 = MEMORY[0x1EEE9AC00](v245);
  v235 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v237 = &v222 - v10;
  v11 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v228 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v222 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v229 = &v222 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v222 - v19;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B68);
  v20 = MEMORY[0x1EEE9AC00](v272);
  v250 = &v222 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v255 = &v222 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v241 = &v222 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v222 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (&v222 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v242 = &v222 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v274 = (&v222 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v279 = (&v222 - v36);
  v37 = sub_1BABE6CFC();
  v260 = *(v37 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v225 = &v222 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v226 = &v222 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v283 = &v222 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v269 = &v222 - v44;
  v254 = type metadata accessor for ReplicatorRecord.ID(0);
  v264 = *(v254 - 8);
  v45 = MEMORY[0x1EEE9AC00](v254);
  v238 = &v222 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  isUniquelyReferenced_nonNull_native = &v222 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v267 = (&v222 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v281 = (&v222 - v53);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v239 = (&v222 - v55);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v276 = (&v222 - v57);
  MEMORY[0x1EEE9AC00](v56);
  v266 = (&v222 - v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C58);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v259 = &v222 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v258 = &v222 - v62;
  LODWORD(v63) = *a1;
  v64 = *&v2[OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock];

  os_unfair_lock_assert_owner(v64 + 4);

  if (qword_1ED7876D0 != -1)
  {
LABEL_154:
    swift_once();
  }

  v65 = sub_1BABE72BC();
  v282 = __swift_project_value_buffer(v65, qword_1ED78BBA0);
  v66 = sub_1BABE729C();
  v67 = sub_1BABE790C();
  v68 = os_log_type_enabled(v66, v67);
  v263 = v31;
  v240 = isUniquelyReferenced_nonNull_native;
  v223 = v63;
  if (v68)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    v284 = swift_slowAlloc();
    v69 = v28;
    v70 = v16;
    v71 = v284;
    *isUniquelyReferenced_nonNull_native = 136446210;
    if (v63)
    {
      v72 = 0x6E7574726F70706FLL;
    }

    else
    {
      v72 = 0x74616964656D6D69;
    }

    if (v63)
    {
      v73 = 0xED00006369747369;
    }

    else
    {
      v73 = 0xE900000000000065;
    }

    v74 = sub_1BAAFA460(v72, v73, &v284);

    *(isUniquelyReferenced_nonNull_native + 4) = v74;
    _os_log_impl(&dword_1BAACF000, v66, v67, "Syncing local database with replicatord with schedule %{public}s", isUniquelyReferenced_nonNull_native, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v75 = v71;
    v16 = v70;
    v28 = v69;
    MEMORY[0x1BFAFE460](v75, -1, -1);
    MEMORY[0x1BFAFE460](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v76 = *&v2[OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24];
  v77 = *&v2[OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient], v76);
  v78 = (*(v77 + 64))(v76, v77);
  v261 = v28;
  v222 = v16;
  v257 = v2;
  v79 = v78 + 64;
  v80 = 1 << *(v78 + 32);
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  else
  {
    v81 = -1;
  }

  v16 = v81 & *(v78 + 64);
  v256 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_localMetadata;
  v63 = ((v80 + 63) >> 6);
  v277 = (v260 + 16);
  v282 = (v260 + 32);
  v270 = (v260 + 56);
  v278 = (v260 + 48);
  v2 = (v260 + 8);
  v268 = v78;

  v28 = 0;
  v265 = MEMORY[0x1E69E7CD0];
  v275 = v2;
  v31 = v279;
  v252 = v79;
  v251 = v63;
  v280 = v37;
LABEL_18:
  if (!v16)
  {
    if (v63 <= (v28 + 1))
    {
      v86 = v28 + 1;
    }

    else
    {
      v86 = v63;
    }

    v87 = (v86 - 1);
    while (1)
    {
      v85 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v85 >= v63)
      {
        v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
        v98 = v259;
        (*(*(v117 - 8) + 56))(v259, 1, 1, v117);
        v89 = 0;
        v28 = v87;
        goto LABEL_29;
      }

      v16 = *(v79 + 8 * v85);
      v28 = (v28 + 1);
      if (v16)
      {
        v28 = v85;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v85 = v28;
LABEL_28:
  v88 = __clz(__rbit64(v16));
  v89 = (v16 - 1) & v16;
  v90 = v88 | (v85 << 6);
  v91 = v268;
  v92 = v266;
  sub_1BAB92C54(*(v268 + 48) + *(v264 + 72) * v90, v266, type metadata accessor for ReplicatorRecord.ID);
  v93 = v260;
  v94 = v269;
  (*(v260 + 16))(v269, *(v91 + 56) + *(v260 + 72) * v90, v37);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v96 = *(v95 + 48);
  v97 = v92;
  v98 = v259;
  sub_1BAB92E38(v97, v259, type metadata accessor for ReplicatorRecord.ID);
  (*(v93 + 32))(v98 + v96, v94, v37);
  (*(*(v95 - 8) + 56))(v98, 0, 1, v95);
  v31 = v279;
LABEL_29:
  v99 = v258;
  sub_1BAB23414(v98, v258, &qword_1EBC13C58);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  if ((*(*(v100 - 8) + 48))(v99, 1, v100) != 1)
  {
    v101 = *(v100 + 48);
    v102 = v276;
    sub_1BAB92E38(v99, v276, type metadata accessor for ReplicatorRecord.ID);
    v103 = *v282;
    (*v282)(v283, v99 + v101, v37);
    v104 = v257;
    v105 = v256;
    swift_beginAccess();
    v106 = *(*&v104[v105] + 16);
    v271 = v89;
    v262 = v103;
    if (v106 && (sub_1BABD5D18(v102), (v107 & 1) != 0))
    {
      swift_endAccess();

      sub_1BABE6F3C();

      v108 = 0;
    }

    else
    {
      swift_endAccess();
      v108 = 1;
    }

    v109 = *v270;
    (*v270)(v31, v108, 1, v37);
    v110 = v274;
    (*v277)(v274, v283, v37);
    v109(v110, 0, 1, v37);
    v111 = *(v272 + 48);
    v112 = v255;
    sub_1BAAD2DAC(v31, v255, &qword_1EBC12B60);
    sub_1BAAD2DAC(v110, v112 + v111, &qword_1EBC12B60);
    isUniquelyReferenced_nonNull_native = *v278;
    if ((*v278)(v112, 1, v37) == 1)
    {
      sub_1BAAD2E14(v274, &qword_1EBC12B60);
      sub_1BAAD2E14(v31, &qword_1EBC12B60);
      v82 = (isUniquelyReferenced_nonNull_native)(v112 + v111, 1, v37);
      v2 = v275;
      if (v82 == 1)
      {
        sub_1BAAD2E14(v112, &qword_1EBC12B60);
        v83 = *v2;
        v16 = v271;
LABEL_16:
        v37 = v280;
        v83(v283, v280);
        v84 = v276;
        goto LABEL_17;
      }
    }

    else
    {
      v113 = v242;
      sub_1BAAD2DAC(v112, v242, &qword_1EBC12B60);
      if ((isUniquelyReferenced_nonNull_native)(v112 + v111, 1, v37) != 1)
      {
        v249 = isUniquelyReferenced_nonNull_native;
        v114 = v269;
        v262(v269, v112 + v111, v37);
        sub_1BAB92D38(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
        v115 = sub_1BABE74DC();
        v83 = *v275;
        v116 = v114;
        isUniquelyReferenced_nonNull_native = v275;
        (*v275)(v116, v37);
        sub_1BAAD2E14(v274, &qword_1EBC12B60);
        sub_1BAAD2E14(v279, &qword_1EBC12B60);
        v2 = isUniquelyReferenced_nonNull_native;
        v83(v113, v37);
        sub_1BAAD2E14(v112, &qword_1EBC12B60);
        v16 = v271;
        if (v115)
        {
          goto LABEL_16;
        }

        goto LABEL_41;
      }

      sub_1BAAD2E14(v274, &qword_1EBC12B60);
      sub_1BAAD2E14(v279, &qword_1EBC12B60);
      v2 = v275;
      (*v275)(v113, v37);
    }

    v249 = isUniquelyReferenced_nonNull_native;
    sub_1BAAD2E14(v112, &qword_1EBC12B68);
    v16 = v271;
LABEL_41:
    v118 = v239;
    sub_1BAB92C54(v276, v239, type metadata accessor for ReplicatorRecord.ID);
    sub_1BABE7F9C();
    v119 = *v118;
    isUniquelyReferenced_nonNull_native = v118[1];
    sub_1BABE759C();
    v120 = v118[3];
    v248 = v118[2];
    v236 = v120;
    sub_1BABE759C();
    v121 = v118[5];
    v244 = v118[4];
    v243 = v121;
    sub_1BABE759C();
    v234 = *(v254 + 28);
    v122 = v224;
    sub_1BAB92C54(v118 + v234, v224, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v37 = v280;
    if ((v249)(v122, 1, v280) == 1)
    {
      MEMORY[0x1BFAFDC20](0);
    }

    else
    {
      v123 = v269;
      v262(v269, v122, v37);
      MEMORY[0x1BFAFDC20](1);
      sub_1BAB92D38(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      sub_1BABE74BC();
      (*v2)(v123, v37);
    }

    v124 = (v118 + *(v254 + 32));
    v125 = v124[1];
    v231 = *v124;
    v230 = v125;
    sub_1BABE759C();
    v126 = sub_1BABE7FDC();
    v127 = v265 + 56;
    v128 = -1 << *(v265 + 32);
    v129 = v126 & ~v128;
    if (((*(v265 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
    {
LABEL_77:
      v145 = v265;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v239;
      v147 = v266;
      sub_1BAB92C54(v239, v266, type metadata accessor for ReplicatorRecord.ID);
      v284 = v145;
      sub_1BABB36E0(v147, v129, isUniquelyReferenced_nonNull_native);
      v265 = v284;
      goto LABEL_78;
    }

    v246 = ~v128;
    v247 = *(v264 + 72);
    v130 = v236;
    v227 = v119;
    v233 = isUniquelyReferenced_nonNull_native;
    v232 = v265 + 56;
    while (1)
    {
      v131 = v281;
      sub_1BAB92C54(*(v265 + 48) + v247 * v129, v281, type metadata accessor for ReplicatorRecord.ID);
      v132 = *v131 == v119 && v131[1] == isUniquelyReferenced_nonNull_native;
      if (!v132 && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_49;
      }

      v133 = v281[2] == v248 && v281[3] == v130;
      if (!v133 && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_49;
      }

      v134 = v281[4] == v244 && v281[5] == v243;
      if (!v134 && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_49;
      }

      v135 = *(v245 + 48);
      v136 = v237;
      sub_1BAB92C54(v281 + *(v254 + 28), v237, type metadata accessor for ReplicatorRecord.ID.Ownership);
      sub_1BAB92C54(v239 + v234, v136 + v135, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v137 = v249;
      if ((v249)(v136, 1, v37) == 1)
      {
        v138 = (v137)(v136 + v135, 1, v37);
        v127 = v232;
        if (v138 != 1)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v139 = v229;
        sub_1BAB92C54(v136, v229, type metadata accessor for ReplicatorRecord.ID.Ownership);
        if ((v137)(v136 + v135, 1, v37) == 1)
        {
          (*v2)(v139, v37);
          v119 = v227;
          v127 = v232;
LABEL_47:
          sub_1BAAD2E14(v136, &unk_1EBC12A28);
LABEL_48:
          isUniquelyReferenced_nonNull_native = v233;
          v130 = v236;
          goto LABEL_49;
        }

        v140 = v226;
        v262(v226, v136 + v135, v37);
        v141 = sub_1BABE6CCC();
        v142 = *v2;
        (*v2)(v140, v37);
        v142(v139, v37);
        v119 = v227;
        v127 = v232;
        if ((v141 & 1) == 0)
        {
          sub_1BAB92CD8(v136, type metadata accessor for ReplicatorRecord.ID.Ownership);
          goto LABEL_48;
        }
      }

      sub_1BAB92CD8(v136, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v143 = (v281 + *(v254 + 32));
      v144 = *v143 == v231 && v143[1] == v230;
      isUniquelyReferenced_nonNull_native = v233;
      v130 = v236;
      if (v144 || (sub_1BABE7EDC() & 1) != 0)
      {
        sub_1BAB92CD8(v281, type metadata accessor for ReplicatorRecord.ID);
        v146 = v239;
LABEL_78:
        sub_1BAB92CD8(v146, type metadata accessor for ReplicatorRecord.ID);
        (*v2)(v283, v37);
        v84 = v276;
LABEL_17:
        sub_1BAB92CD8(v84, type metadata accessor for ReplicatorRecord.ID);
        v31 = v279;
        v79 = v252;
        v63 = v251;
        goto LABEL_18;
      }

LABEL_49:
      sub_1BAB92CD8(v281, type metadata accessor for ReplicatorRecord.ID);
      v129 = (v129 + 1) & v246;
      if (((*(v127 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
      {
        goto LABEL_77;
      }
    }
  }

  v148 = v257;
  v149 = v256;
  swift_beginAccess();
  v150 = *&v148[v149];
  v151 = (v150 + 64);
  v152 = 1 << *(v150 + 32);
  if (v152 < 64)
  {
    v153 = ~(-1 << v152);
  }

  else
  {
    v153 = -1;
  }

  v16 = v153 & *(v150 + 64);
  v154 = (v152 + 63) >> 6;
  v276 = v150;

  v2 = 0;
  v63 = &qword_1EBC13C60;
  v28 = &qword_1EBC12B60;
  v155 = v273;
  v31 = v267;
  v283 = v151;
  v279 = v154;
  isUniquelyReferenced_nonNull_native = v253;
  if (!v16)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v156 = v2;
LABEL_97:
    v159 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v160 = v159 | (v156 << 6);
    v161 = v276;
    v162 = v266;
    sub_1BAB92C54(v276[6] + *(v264 + 72) * v160, v266, type metadata accessor for ReplicatorRecord.ID);
    v163 = *(*(v161 + 56) + 8 * v160);
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C60);
    v165 = *(v164 + 48);
    v166 = v162;
    v155 = v273;
    sub_1BAB92E38(v166, v273, type metadata accessor for ReplicatorRecord.ID);
    *(v155 + v165) = v163;
    (*(*(v164 - 8) + 56))(v155, 0, 1, v164);

    v31 = v267;
LABEL_98:
    sub_1BAB23414(v155, isUniquelyReferenced_nonNull_native, &qword_1EBC13C50);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C60);
    if ((*(*(v167 - 8) + 48))(isUniquelyReferenced_nonNull_native, 1, v167) == 1)
    {
      break;
    }

    v281 = *&isUniquelyReferenced_nonNull_native[*(v167 + 48)];
    sub_1BAB92E38(isUniquelyReferenced_nonNull_native, v31, type metadata accessor for ReplicatorRecord.ID);
    v168 = v268;
    if (*(v268 + 16))
    {
      v169 = sub_1BABD5D18(v31);
      v170 = v250;
      if (v171)
      {
        (*(v260 + 16))(v263, *(v168 + 56) + *(v260 + 72) * v169, v280);
        v172 = 0;
      }

      else
      {
        v172 = 1;
      }
    }

    else
    {
      v172 = 1;
      v170 = v250;
    }

    v173 = *v270;
    v174 = v263;
    v37 = v280;
    (*v270)(v263, v172, 1, v280);
    v175 = v261;
    sub_1BABE6F3C();
    v173(v175, 0, 1, v37);
    v176 = *(v272 + 48);
    sub_1BAAD2DAC(v174, v170, &qword_1EBC12B60);
    sub_1BAAD2DAC(v175, v170 + v176, &qword_1EBC12B60);
    v177 = *v278;
    if ((*v278)(v170, 1, v37) == 1)
    {
      sub_1BAAD2E14(v175, &qword_1EBC12B60);
      sub_1BAAD2E14(v174, &qword_1EBC12B60);
      if (v177(v170 + v176, 1, v37) != 1)
      {
        goto LABEL_110;
      }

      v28 = &qword_1EBC12B60;
      sub_1BAAD2E14(v170, &qword_1EBC12B60);
      v31 = v267;
    }

    else
    {
      v178 = v241;
      sub_1BAAD2DAC(v170, v241, &qword_1EBC12B60);
      if (v177(v170 + v176, 1, v37) == 1)
      {
        sub_1BAAD2E14(v261, &qword_1EBC12B60);
        sub_1BAAD2E14(v263, &qword_1EBC12B60);
        (*v275)(v178, v37);
LABEL_110:
        v274 = v177;
        sub_1BAAD2E14(v170, &qword_1EBC12B68);
        v31 = v267;
        v28 = &qword_1EBC12B60;
LABEL_111:
        v185 = v240;
        sub_1BAB92C54(v31, v240, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABE7F9C();
        v37 = *(v185 + 8);
        v244 = *v185;
        sub_1BABE759C();
        v186 = *(v185 + 24);
        v271 = *(v185 + 16);
        v262 = v186;
        sub_1BABE759C();
        v187 = *(v185 + 40);
        v252 = *(v185 + 32);
        v251 = v187;
        sub_1BABE759C();
        v249 = *(v254 + 28);
        v188 = &v249[v185];
        v189 = v222;
        sub_1BAB92C54(v188, v222, type metadata accessor for ReplicatorRecord.ID.Ownership);
        v190 = v280;
        v191 = v274(v189, 1, v280);
        v155 = v273;
        if (v191 == 1)
        {
          MEMORY[0x1BFAFDC20](0);
        }

        else
        {
          v192 = v269;
          (*v282)(v269, v189, v190);
          MEMORY[0x1BFAFDC20](1);
          sub_1BAB92D38(&unk_1ED787C50, MEMORY[0x1E69695A8]);
          sub_1BABE74BC();
          (*v275)(v192, v190);
        }

        v193 = v238;
        v194 = (v240 + *(v254 + 32));
        v195 = v194[1];
        v247 = *v194;
        v246 = v195;
        sub_1BABE759C();
        v196 = sub_1BABE7FDC();
        v197 = -1 << *(v265 + 32);
        v198 = v196 & ~v197;
        v259 = v265 + 56;
        if (((*(v265 + 56 + ((v198 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v198) & 1) == 0)
        {
LABEL_147:
          v212 = v265;
          v213 = swift_isUniquelyReferenced_nonNull_native();
          v214 = v240;
          v215 = v155;
          v216 = v266;
          sub_1BAB92C54(v240, v266, type metadata accessor for ReplicatorRecord.ID);
          v284 = v212;
          v217 = v216;
          v155 = v215;
          sub_1BABB36E0(v217, v198, v213);
          v265 = v284;
          goto LABEL_148;
        }

        v255 = ~v197;
        v258 = *(v264 + 72);
        v199 = v244;
        v248 = v37;
LABEL_120:
        sub_1BAB92C54(*(v265 + 48) + v258 * v198, v193, type metadata accessor for ReplicatorRecord.ID);
        v200 = *v193 == v199 && v193[1] == v37;
        if (v200 || (sub_1BABE7EDC() & 1) != 0)
        {
          v201 = v193[2] == v271 && v193[3] == v262;
          if (v201 || (sub_1BABE7EDC() & 1) != 0)
          {
            v202 = v193[4] == v252 && v193[5] == v251;
            if (v202 || (sub_1BABE7EDC() & 1) != 0)
            {
              v203 = *(v245 + 48);
              v204 = v235;
              sub_1BAB92C54(v193 + *(v254 + 28), v235, type metadata accessor for ReplicatorRecord.ID.Ownership);
              sub_1BAB92C54(&v249[v240], v204 + v203, type metadata accessor for ReplicatorRecord.ID.Ownership);
              v205 = v280;
              v206 = v274;
              if (v274(v204, 1, v280) == 1)
              {
                if (v206(v204 + v203, 1, v205) == 1)
                {
                  goto LABEL_140;
                }

LABEL_117:
                sub_1BAAD2E14(v204, &unk_1EBC12A28);
LABEL_118:
                v155 = v273;
                v193 = v238;
                v28 = &qword_1EBC12B60;
                v37 = v248;
              }

              else
              {
                v207 = v228;
                sub_1BAB92C54(v204, v228, type metadata accessor for ReplicatorRecord.ID.Ownership);
                if (v206(v204 + v203, 1, v205) == 1)
                {
                  (*v275)(v207, v205);
                  goto LABEL_117;
                }

                v208 = v225;
                (*v282)(v225, v204 + v203, v205);
                LODWORD(v243) = sub_1BABE6CCC();
                v209 = *v275;
                (*v275)(v208, v205);
                v209(v207, v205);
                v199 = v244;
                if ((v243 & 1) == 0)
                {
                  sub_1BAB92CD8(v204, type metadata accessor for ReplicatorRecord.ID.Ownership);
                  goto LABEL_118;
                }

LABEL_140:
                sub_1BAB92CD8(v204, type metadata accessor for ReplicatorRecord.ID.Ownership);
                v193 = v238;
                v210 = &v238[*(v254 + 32)];
                v211 = *v210 == v247 && *(v210 + 1) == v246;
                v155 = v273;
                v28 = &qword_1EBC12B60;
                v37 = v248;
                if (v211 || (sub_1BABE7EDC() & 1) != 0)
                {
                  sub_1BAB92CD8(v193, type metadata accessor for ReplicatorRecord.ID);
                  v214 = v240;
LABEL_148:
                  sub_1BAB92CD8(v214, type metadata accessor for ReplicatorRecord.ID);

                  v31 = v267;
                  sub_1BAB92CD8(v267, type metadata accessor for ReplicatorRecord.ID);
                  isUniquelyReferenced_nonNull_native = v253;
                  v154 = v279;
                  v63 = &qword_1EBC13C60;
                  if (!v16)
                  {
LABEL_89:
                    if (v154 <= (v2 + 1))
                    {
                      v157 = v2 + 1;
                    }

                    else
                    {
                      v157 = v154;
                    }

                    v158 = v157 - 1;
                    while (1)
                    {
                      v156 = (v2 + 1);
                      if (__OFADD__(v2, 1))
                      {
                        goto LABEL_153;
                      }

                      if (v156 >= v154)
                      {
                        break;
                      }

                      v16 = *&v283[8 * v156];
                      ++v2;
                      if (v16)
                      {
                        v2 = v156;
                        goto LABEL_97;
                      }
                    }

                    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C60);
                    (*(*(v184 - 8) + 56))(v155, 1, 1, v184);
                    v16 = 0;
                    v2 = v158;
                    goto LABEL_98;
                  }

                  continue;
                }
              }
            }
          }
        }

        sub_1BAB92CD8(v193, type metadata accessor for ReplicatorRecord.ID);
        v198 = (v198 + 1) & v255;
        if (((*(v259 + ((v198 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v198) & 1) == 0)
        {
          goto LABEL_147;
        }

        goto LABEL_120;
      }

      v274 = v177;
      v179 = v269;
      (*v282)(v269, v170 + v176, v37);
      sub_1BAB92D38(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
      v180 = v178;
      v181 = sub_1BABE74DC();
      v182 = *v275;
      (*v275)(v179, v37);
      sub_1BAAD2E14(v261, &qword_1EBC12B60);
      sub_1BAAD2E14(v263, &qword_1EBC12B60);
      v183 = v180;
      v28 = &qword_1EBC12B60;
      v182(v183, v37);
      sub_1BAAD2E14(v170, &qword_1EBC12B60);
      v31 = v267;
      if ((v181 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    sub_1BAB92CD8(v31, type metadata accessor for ReplicatorRecord.ID);

    isUniquelyReferenced_nonNull_native = v253;
    v154 = v279;
    v63 = &qword_1EBC13C60;
    v155 = v273;
    if (!v16)
    {
      goto LABEL_89;
    }
  }

  v218 = *&v257[v256];
  LOBYTE(v284) = v223;

  sub_1BAB7DDC8(v265, v218, v268, &v284);
  v220 = v219;

  return v220;
}

uint64_t sub_1BAB861F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ReplicatorRecord(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BABE70CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x1E69C72D0])
  {
    v16 = (*(v12 + 96))(v14, v11);
    MEMORY[0x1EEE9AC00](v16);
    *(&v28 - 2) = a3;
    *(&v28 - 1) = a2;
    result = sub_1BAB7844C(sub_1BAB921E0, (&v28 - 4), v17);
    if (!*(result + 16))
    {

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v19 = sub_1BABE72BC();
      __swift_project_value_buffer(v19, qword_1ED78BBA0);
      sub_1BAB92C54(a2, v10, type metadata accessor for ReplicatorRecord);
      v20 = sub_1BABE729C();
      v21 = sub_1BABE790C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 136446210;
        v28 = 0;
        v29 = 0xE000000000000000;
        v30 = v23;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        v24 = type metadata accessor for ReplicatorRecord.ID(0);
        MEMORY[0x1BFAFD240](*(v10 + *(v24 + 32)), *(v10 + *(v24 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v10[2], v10[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v10[4], v10[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v25 = v28;
        v26 = v29;
        sub_1BAB92CD8(v10, type metadata accessor for ReplicatorRecord);
        v27 = sub_1BAAFA460(v25, v26, &v30);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_1BAACF000, v20, v21, "No eligible destinations for record %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1BFAFE460](v23, -1, -1);
        MEMORY[0x1BFAFE460](v22, -1, -1);
      }

      else
      {

        sub_1BAB92CD8(v10, type metadata accessor for ReplicatorRecord);
      }

      result = 1;
    }

    goto LABEL_11;
  }

  if (v15 == *MEMORY[0x1E69C72D8])
  {
    result = 0;
LABEL_11:
    *a4 = result;
    return result;
  }

  result = sub_1BABE7ECC();
  __break(1u);
  return result;
}

uint64_t sub_1BAB86640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v79 = type metadata accessor for ReplicatorRecord(0);
  v5 = MEMORY[0x1EEE9AC00](v79);
  v78 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v77 = (&v77 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v84 = (&v77 - v9);
  v10 = sub_1BABE6CFC();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatorDevice(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DB8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v77 - v20;
  v80 = a1;
  v87 = a1;
  v22 = v85;
  sub_1BAB9C848(sub_1BAB92200, a2, &v77 - v20);
  v23 = v22;
  v85 = v21;
  sub_1BAAD2DAC(v21, v19, &qword_1EBC12DB8);
  if ((*(v13 + 48))(v19, 1, v12) == 1)
  {
    v24 = v86;
    sub_1BAAD2E14(v19, &qword_1EBC12DB8);
    if (qword_1ED7876D0 != -1)
    {
LABEL_37:
      swift_once();
    }

    v25 = sub_1BABE72BC();
    __swift_project_value_buffer(v25, qword_1ED78BBA0);
    v27 = v81;
    v26 = v82;
    v28 = v83;
    (*(v82 + 16))(v81, v80, v83);
    v29 = v84;
    sub_1BAB92C54(v24, v84, type metadata accessor for ReplicatorRecord);
    v30 = sub_1BABE729C();
    v31 = sub_1BABE790C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v93 = v86;
      *v32 = 136446466;
      sub_1BAB92D38(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
      v33 = sub_1BABE7EAC();
      v80 = v23;
      v35 = v34;
      (*(v26 + 8))(v27, v28);
      v36 = sub_1BAAFA460(v33, v35, &v93);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1BABE7AEC();
      MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
      v37 = type metadata accessor for ReplicatorRecord.ID(0);
      MEMORY[0x1BFAFD240](*(v29 + *(v37 + 32)), *(v29 + *(v37 + 32) + 8));
      MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x1BFAFD240](v29[2], v29[3]);
      MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
      MEMORY[0x1BFAFD240](v29[4], v29[5]);
      MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
      type metadata accessor for ReplicatorRecord.ID.Ownership(0);
      sub_1BABE7BFC();
      v38 = v88;
      v39 = v89;
      sub_1BAB92CD8(v29, type metadata accessor for ReplicatorRecord);
      v40 = sub_1BAAFA460(v38, v39, &v93);

      *(v32 + 14) = v40;
      _os_log_impl(&dword_1BAACF000, v30, v31, "Relationship %{public}s does not exist for record %{public}s", v32, 0x16u);
      v41 = v86;
      swift_arrayDestroy();
      MEMORY[0x1BFAFE460](v41, -1, -1);
      MEMORY[0x1BFAFE460](v32, -1, -1);
    }

    else
    {

      sub_1BAB92CD8(v29, type metadata accessor for ReplicatorRecord);
      (*(v26 + 8))(v27, v28);
    }

    sub_1BAAD2E14(v85, &qword_1EBC12DB8);
    return 0;
  }

  v42 = sub_1BAB92E38(v19, v15, type metadata accessor for ReplicatorDevice);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v86;
  *(&v77 - 2) = v86;
  sub_1BAB9CA00(sub_1BAB92250, v44, &v88);
  v45 = v89;
  if (!v89)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v67 = sub_1BABE72BC();
    __swift_project_value_buffer(v67, qword_1ED78BBA0);
    v68 = v77;
    sub_1BAB92C54(v43, v77, type metadata accessor for ReplicatorRecord);
    v69 = sub_1BABE729C();
    v70 = sub_1BABE790C();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v93 = v72;
      *v71 = 136446210;
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_1BABE7AEC();
      MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
      v73 = type metadata accessor for ReplicatorRecord.ID(0);
      MEMORY[0x1BFAFD240](*(v68 + *(v73 + 32)), *(v68 + *(v73 + 32) + 8));
      MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x1BFAFD240](v68[2], v68[3]);
      MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
      MEMORY[0x1BFAFD240](v68[4], v68[5]);
      MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
      type metadata accessor for ReplicatorRecord.ID.Ownership(0);
      sub_1BABE7BFC();
      v74 = v88;
      v75 = v89;
      sub_1BAB92CD8(v68, type metadata accessor for ReplicatorRecord);
      v76 = sub_1BAAFA460(v74, v75, &v93);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_1BAACF000, v69, v70, "Remote zone does not exist for record %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1BFAFE460](v72, -1, -1);
      MEMORY[0x1BFAFE460](v71, -1, -1);
    }

    else
    {

      sub_1BAB92CD8(v68, type metadata accessor for ReplicatorRecord);
    }

    sub_1BAAD2E14(v85, &qword_1EBC12DB8);
    sub_1BAB92CD8(v15, type metadata accessor for ReplicatorDevice);
    return 0;
  }

  v80 = v22;
  v46 = 0;
  v47 = v88;
  v23 = v90;
  v24 = *(v43 + *(v79 + 24));
  v48 = 1 << *(v24 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v24 + 64);
  v51 = (v48 + 63) >> 6;
  while (v50)
  {
    v52 = v46;
LABEL_15:
    v53 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v54 = *(*(v24 + 48) + ((v52 << 9) | (8 * v53)));
    if (v54 >= v92 && v91 >= v54)
    {
      swift_bridgeObjectRetain_n();
      sub_1BAAD2E14(v85, &qword_1EBC12DB8);
      sub_1BAB92270(v47, v45);

      sub_1BAB92CD8(v15, type metadata accessor for ReplicatorDevice);
      return 1;
    }
  }

  while (1)
  {
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v52 >= v51)
    {
      break;
    }

    v50 = *(v24 + 64 + 8 * v52);
    ++v46;
    if (v50)
    {
      v46 = v52;
      goto LABEL_15;
    }
  }

  swift_bridgeObjectRetain_n();
  sub_1BAB92270(v47, v45);

  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v57 = sub_1BABE72BC();
  __swift_project_value_buffer(v57, qword_1ED78BBA0);
  v58 = v78;
  sub_1BAB92C54(v43, v78, type metadata accessor for ReplicatorRecord);
  v59 = sub_1BABE729C();
  v60 = sub_1BABE790C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v93 = v62;
    *v61 = 136446210;
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    v63 = type metadata accessor for ReplicatorRecord.ID(0);
    MEMORY[0x1BFAFD240](*(v58 + *(v63 + 32)), *(v58 + *(v63 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v58[2], v58[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v58[4], v58[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v64 = v88;
    v65 = v89;
    sub_1BAB92CD8(v58, type metadata accessor for ReplicatorRecord);
    v66 = sub_1BAAFA460(v64, v65, &v93);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_1BAACF000, v59, v60, "Remote zone is incompatible with record %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1BFAFE460](v62, -1, -1);
    MEMORY[0x1BFAFE460](v61, -1, -1);
  }

  else
  {

    sub_1BAB92CD8(v58, type metadata accessor for ReplicatorRecord);
  }

  sub_1BAAD2E14(v85, &qword_1EBC12DB8);
  sub_1BAB92CD8(v15, type metadata accessor for ReplicatorDevice);
  return 0;
}

uint64_t sub_1BAB8737C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2] == a2[4] && a1[3] == a2[5];
  if (v5 || (v6 = sub_1BABE7EDC(), result = 0, (v6 & 1) != 0))
  {
    if (v3 == a2[2] && v4 == a2[3])
    {
      return 1;
    }

    else
    {
      return sub_1BABE7EDC() & 1;
    }
  }

  return result;
}

void sub_1BAB8740C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t *a6, int a7, int a8)
{
  v842 = a8;
  v843 = a7;
  v863 = a6;
  v853 = a5;
  v876 = a4;
  v884 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B20);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v827 = &v783 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v826 = &v783 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v812 = &v783 - v15;
  v16 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v882 = &v783 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v824 = type metadata accessor for ReplicatorRecordVersion();
  v18 = MEMORY[0x1EEE9AC00](v824);
  v795 = &v783 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v804 = &v783 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v794 = &v783 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v788 = &v783 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v784 = &v783 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v786 = &v783 - v28;
  v867 = sub_1BABE6C8C();
  v868 = *(v867 - 8);
  v29 = MEMORY[0x1EEE9AC00](v867);
  v806 = &v783 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v823 = &v783 - v31;
  v844 = type metadata accessor for ReplicatorRecordChange();
  v845 = *(v844 - 8);
  v32 = MEMORY[0x1EEE9AC00](v844);
  v793 = &v783 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v805 = &v783 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v820 = &v783 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v798 = &v783 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v792 = &v783 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v791 = &v783 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v813 = &v783 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v807 = &v783 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v783 = &v783 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v790 = &v783 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v785 = &v783 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v787 = &v783 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v789 = &v783 - v56;
  v866 = type metadata accessor for ReplicatorRecord.ID(0);
  v881 = *(v866 - 1);
  v57 = MEMORY[0x1EEE9AC00](v866);
  v873 = &v783 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v783 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v811 = &v783 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v841 = &v783 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v825 = &v783 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v833 = &v783 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v819 = &v783 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v810 = &v783 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v840 = &v783 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v801 = &v783 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v800 = &v783 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v832 = &v783 - v81;
  MEMORY[0x1EEE9AC00](v80);
  v803 = &v783 - v82;
  v894 = sub_1BABE6BAC();
  v874 = *(v894 - 8);
  v83 = MEMORY[0x1EEE9AC00](v894);
  v818 = &v783 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v831 = &v783 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v865 = &v783 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v802 = &v783 - v90;
  v91 = MEMORY[0x1EEE9AC00](v89);
  v816 = &v783 - v92;
  MEMORY[0x1EEE9AC00](v91);
  v836 = &v783 - v93;
  v875 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  v848 = *(v875 - 8);
  v94 = MEMORY[0x1EEE9AC00](v875);
  v830 = &v783 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v834 = &v783 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v878 = (&v783 - v99);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v870 = (&v783 - v101);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v877 = &v783 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v815 = &v783 - v105;
  v106 = MEMORY[0x1EEE9AC00](v104);
  v822 = &v783 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v856 = &v783 - v109;
  v110 = MEMORY[0x1EEE9AC00](v108);
  v846 = &v783 - v111;
  MEMORY[0x1EEE9AC00](v110);
  v855 = &v783 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E08);
  v114 = MEMORY[0x1EEE9AC00](v113 - 8);
  v837 = &v783 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v114);
  v864 = &v783 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v828 = &v783 - v119;
  MEMORY[0x1EEE9AC00](v118);
  v835 = &v783 - v120;
  v121 = sub_1BABE721C();
  v122 = MEMORY[0x1EEE9AC00](v121 - 8);
  v880 = &v783 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122);
  v847 = &v783 - v124;
  v852 = sub_1BABE70CC();
  v851 = *(v852 - 8);
  MEMORY[0x1EEE9AC00](v852);
  v850 = &v783 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  v127 = MEMORY[0x1EEE9AC00](v126 - 8);
  v821 = &v783 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v127);
  v862 = &v783 - v129;
  v871 = type metadata accessor for ReplicatorRecord(0);
  v849 = *(v871 - 8);
  v130 = MEMORY[0x1EEE9AC00](v871);
  v809 = (&v783 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = MEMORY[0x1EEE9AC00](v130);
  v869 = (&v783 - v133);
  v134 = MEMORY[0x1EEE9AC00](v132);
  v808 = (&v783 - v135);
  v136 = MEMORY[0x1EEE9AC00](v134);
  v799 = (&v783 - v137);
  v138 = MEMORY[0x1EEE9AC00](v136);
  v140 = &v783 - v139;
  v141 = MEMORY[0x1EEE9AC00](v138);
  v797 = &v783 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v796 = &v783 - v144;
  v145 = MEMORY[0x1EEE9AC00](v143);
  v817 = &v783 - v146;
  MEMORY[0x1EEE9AC00](v145);
  v857 = (&v783 - v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  v149 = MEMORY[0x1EEE9AC00](v148 - 8);
  v839 = &v783 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = MEMORY[0x1EEE9AC00](v149);
  v829 = &v783 - v152;
  v153 = MEMORY[0x1EEE9AC00](v151);
  v872 = &v783 - v154;
  v155 = MEMORY[0x1EEE9AC00](v153);
  v838 = &v783 - v156;
  v157 = MEMORY[0x1EEE9AC00](v155);
  v159 = &v783 - v158;
  v160 = MEMORY[0x1EEE9AC00](v157);
  v814 = &v783 - v161;
  v162 = MEMORY[0x1EEE9AC00](v160);
  v854 = &v783 - v163;
  MEMORY[0x1EEE9AC00](v162);
  i = (&v783 - v164);
  v165 = type metadata accessor for ReplicatorRecord.Value(0);
  v892 = *(v165 - 8);
  v893 = v165;
  v166 = MEMORY[0x1EEE9AC00](v165);
  v891 = &v783 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = MEMORY[0x1EEE9AC00](v166);
  v170 = (&v783 - v169);
  v171 = MEMORY[0x1EEE9AC00](v168);
  v173 = &v783 - v172;
  MEMORY[0x1EEE9AC00](v171);
  v885 = &v783 - v174;
  v861 = sub_1BABE6F1C();
  v860 = *(v861 - 8);
  v175 = MEMORY[0x1EEE9AC00](v861);
  v858 = &v783 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v175);
  v859 = &v783 - v177;
  v895 = sub_1BABE728C();
  v890 = *(v895 - 1);
  v178 = MEMORY[0x1EEE9AC00](v895);
  v180 = &v783 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v178);
  v888 = &v783 - v181;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v182 - 8);
  v184 = &v783 - v183;
  v185 = *(a1 + 16);
  v879 = v184;
  v886 = a2;
  if (!v185 || (v186 = sub_1BABD5D18(a2), (v187 & 1) == 0))
  {
    sub_1BAB19F9C(a2, v884, v184);
    goto LABEL_20;
  }

  v188 = *(*(a1 + 56) + 8 * v186);

  sub_1BAB19F9C(a2, v884, v184);
  v884 = v188;
  if (!v188)
  {
LABEL_20:
    v884 = 0;
    v221 = 1;
    v222 = v184;
LABEL_21:
    v223 = sub_1BABE6CFC();
    v888 = *(v223 - 8);
    v224 = *(v888 + 48);
    if (v224(v222, 1, v223) == 1)
    {
      if (qword_1ED7876D0 != -1)
      {
        goto LABEL_304;
      }

      goto LABEL_23;
    }

    if (v221)
    {
      v234 = v886;
      v235 = v882;
      sub_1BAB92C54(v886 + *(v866 + 7), v882, type metadata accessor for ReplicatorRecord.ID.Ownership);
      if (v224(v235, 1, v223) == 1)
      {
        v236 = v876;
        if (v842)
        {
          if (qword_1ED7876D0 != -1)
          {
            swift_once();
          }

          v237 = sub_1BABE72BC();
          __swift_project_value_buffer(v237, qword_1ED78BBA0);
          v238 = v832;
          sub_1BAB92C54(v886, v832, type metadata accessor for ReplicatorRecord.ID);
          v239 = sub_1BABE729C();
          v240 = sub_1BABE790C();
          if (os_log_type_enabled(v239, v240))
          {
            v241 = swift_slowAlloc();
            v242 = swift_slowAlloc();
            v897 = v242;
            *v241 = 136446210;
            v243 = ReplicatorRecord.ID.description.getter();
            v245 = v244;
            sub_1BAB92CD8(v238, type metadata accessor for ReplicatorRecord.ID);
            v246 = sub_1BAAFA460(v243, v245, &v897);

            *(v241 + 4) = v246;
            _os_log_impl(&dword_1BAACF000, v239, v240, "Local record exists in replicator but not locally; deleting replicator copy of %{public}s", v241, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v242);
            MEMORY[0x1BFAFE460](v242, -1, -1);
            MEMORY[0x1BFAFE460](v241, -1, -1);
          }

          else
          {

            sub_1BAB92CD8(v238, type metadata accessor for ReplicatorRecord.ID);
          }

          v484 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
          v485 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
          __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v484);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
          v486 = (*(v881 + 80) + 32) & ~*(v881 + 80);
          v487 = swift_allocObject();
          *(v487 + 16) = xmmword_1BABE9F00;
          v488 = v487 + v486;
          v489 = v886;
          sub_1BAB92C54(v886, v488, type metadata accessor for ReplicatorRecord.ID);
          LOBYTE(v897) = v843 & 1;
          v490 = v887;
          (*(v485 + 40))(v487, &v897, v484, v485);
          v887 = v490;
          if (!v490)
          {

            v543 = v813;
            sub_1BAB92C54(v489, v813, type metadata accessor for ReplicatorRecord.ID);
            swift_storeEnumTagMultiPayload();
            v544 = v863;
            v545 = *v863;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v544 = v545;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v545 = sub_1BAAF9A7C(0, v545[2] + 1, 1, v545);
              *v863 = v545;
            }

            v548 = v545[2];
            v547 = v545[3];
            if (v548 >= v547 >> 1)
            {
              v545 = sub_1BAAF9A7C(v547 > 1, v548 + 1, 1, v545);
              *v863 = v545;
            }

            v545[2] = v548 + 1;
            sub_1BAB92E38(v543, v545 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v548, type metadata accessor for ReplicatorRecordChange);
            goto LABEL_296;
          }
        }

        else
        {
          v885 = v223;
          v298 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
          v299 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
          __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v298);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
          v300 = (*(v881 + 80) + 32) & ~*(v881 + 80);
          v301 = v236;
          v302 = swift_allocObject();
          *(v302 + 16) = xmmword_1BABE9F00;
          sub_1BAB92C54(v234, v302 + v300, type metadata accessor for ReplicatorRecord.ID);
          v303 = v874;
          v304 = v894;
          (*(v874 + 16))(v159, v301 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL, v894);
          (*(v303 + 56))(v159, 0, 1, v304);
          v305 = v887;
          v306 = (*(v299 + 48))(v302, v159, 0, 1, v298, v299);
          v887 = v305;
          if (!v305)
          {
            v524 = v306;
            sub_1BAAD2E14(v159, &unk_1EBC13D70);

            v525 = v812;
            sub_1BAB1A0D4(v234, v524, v812);

            if ((*(v849 + 48))(v525, 1, v871) != 1)
            {
              v622 = v799;
              sub_1BAB92E38(v525, v799, type metadata accessor for ReplicatorRecord);
              if (qword_1ED7876D0 != -1)
              {
                swift_once();
              }

              v623 = sub_1BABE72BC();
              __swift_project_value_buffer(v623, qword_1ED78BBA0);
              v624 = v801;
              sub_1BAB92C54(v886, v801, type metadata accessor for ReplicatorRecord.ID);
              v625 = sub_1BABE729C();
              v626 = sub_1BABE790C();
              v627 = os_log_type_enabled(v625, v626);
              v628 = v885;
              if (v627)
              {
                v629 = swift_slowAlloc();
                v630 = swift_slowAlloc();
                v897 = v630;
                *v629 = 136446210;
                v631 = ReplicatorRecord.ID.description.getter();
                v633 = v632;
                sub_1BAB92CD8(v624, type metadata accessor for ReplicatorRecord.ID);
                v634 = sub_1BAAFA460(v631, v633, &v897);

                *(v629 + 4) = v634;
                _os_log_impl(&dword_1BAACF000, v625, v626, "Local record exists in replicator but not locally; fetching for first sync of %{public}s", v629, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v630);
                MEMORY[0x1BFAFE460](v630, -1, -1);
                MEMORY[0x1BFAFE460](v629, -1, -1);
              }

              else
              {

                sub_1BAB92CD8(v624, type metadata accessor for ReplicatorRecord.ID);
              }

              v549 = v879;
              v510 = v873;
              v897 = 0;
              v693 = v887;
              sub_1BAB7C92C(v622, &v897);
              v887 = v693;
              if (v693)
              {
                v550 = v622;
                goto LABEL_279;
              }

              v720 = v788;
              sub_1BAB92C54(v622, v788, type metadata accessor for ReplicatorRecord.ID);
              (*(v888 + 16))(v720 + *(v824 + 20), v622 + *(v871 + 20), v628);
              sub_1BAB92C54(v720, v791, type metadata accessor for ReplicatorRecordVersion);
              swift_storeEnumTagMultiPayload();
              v721 = v863;
              v722 = *v863;
              v723 = swift_isUniquelyReferenced_nonNull_native();
              *v721 = v722;
              if ((v723 & 1) == 0)
              {
                v722 = sub_1BAAF9A7C(0, v722[2] + 1, 1, v722);
                *v863 = v722;
              }

              v725 = v722[2];
              v724 = v722[3];
              if (v725 >= v724 >> 1)
              {
                v778 = sub_1BAAF9A7C(v724 > 1, v725 + 1, 1, v722);
                *v863 = v778;
              }

              sub_1BAB92CD8(v720, type metadata accessor for ReplicatorRecordVersion);
              sub_1BAB92CD8(v622, type metadata accessor for ReplicatorRecord);
              v726 = *v863;
              *(v726 + 16) = v725 + 1;
              sub_1BAB92E38(v791, v726 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v725, type metadata accessor for ReplicatorRecordChange);
              goto LABEL_296;
            }

            sub_1BAAD2E14(v525, &unk_1EBC12B20);
            if (qword_1ED7876D0 != -1)
            {
              swift_once();
            }

            v526 = sub_1BABE72BC();
            __swift_project_value_buffer(v526, qword_1ED78BBA0);
            v527 = v800;
            sub_1BAB92C54(v886, v800, type metadata accessor for ReplicatorRecord.ID);
            v528 = sub_1BABE729C();
            v529 = sub_1BABE78EC();
            if (os_log_type_enabled(v528, v529))
            {
              v530 = swift_slowAlloc();
              v531 = swift_slowAlloc();
              v897 = v531;
              *v530 = 136446210;
              v532 = ReplicatorRecord.ID.description.getter();
              v534 = v533;
              sub_1BAB92CD8(v527, type metadata accessor for ReplicatorRecord.ID);
              v535 = sub_1BAAFA460(v532, v534, &v897);

              *(v530 + 4) = v535;
              _os_log_impl(&dword_1BAACF000, v528, v529, "Local record could not be retrieved for first sync; ignoring %{public}s", v530, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v531);
              MEMORY[0x1BFAFE460](v531, -1, -1);
              MEMORY[0x1BFAFE460](v530, -1, -1);

              goto LABEL_34;
            }

            v247 = v527;
            goto LABEL_33;
          }

          sub_1BAAD2E14(v159, &unk_1EBC13D70);
        }

        goto LABEL_130;
      }

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v271 = sub_1BABE72BC();
      v272 = __swift_project_value_buffer(v271, qword_1ED78BBA0);
      v273 = v234;
      v274 = v840;
      sub_1BAB92C54(v273, v840, type metadata accessor for ReplicatorRecord.ID);
      v275 = sub_1BABE729C();
      v276 = sub_1BABE790C();
      v277 = os_log_type_enabled(v275, v276);
      v885 = v223;
      v895 = v272;
      if (v277)
      {
        v278 = swift_slowAlloc();
        v279 = swift_slowAlloc();
        v897 = v279;
        *v278 = 136446210;
        v280 = ReplicatorRecord.ID.description.getter();
        v282 = v281;
        sub_1BAB92CD8(v274, type metadata accessor for ReplicatorRecord.ID);
        v283 = sub_1BAAFA460(v280, v282, &v897);
        v284 = v887;

        *(v278 + 4) = v283;
        _os_log_impl(&dword_1BAACF000, v275, v276, "Remote record exists in replicator but not locally; updating local copy of %{public}s", v278, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v279);
        MEMORY[0x1BFAFE460](v279, -1, -1);
        MEMORY[0x1BFAFE460](v278, -1, -1);
      }

      else
      {

        sub_1BAB92CD8(v274, type metadata accessor for ReplicatorRecord.ID);
        v284 = v887;
      }

      v307 = v876;
      v308 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
      v309 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
      __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v308);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
      v310 = (*(v881 + 80) + 32) & ~*(v881 + 80);
      v311 = swift_allocObject();
      *(v311 + 16) = xmmword_1BABE9F00;
      v312 = v311 + v310;
      v313 = v886;
      sub_1BAB92C54(v886, v312, type metadata accessor for ReplicatorRecord.ID);
      v314 = v874;
      v315 = v307 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL;
      v316 = v838;
      v317 = v894;
      (*(v874 + 16))(v838, v315, v894);
      (*(v314 + 56))(v316, 0, 1, v317);
      v318 = (*(v309 + 48))(v311, v316, 0, 1, v308, v309);
      v887 = v284;
      if (!v284)
      {
        v391 = v318;
        sub_1BAAD2E14(v316, &unk_1EBC13D70);

        v392 = v826;
        sub_1BAB1A0D4(v313, v391, v826);

        if ((*(v849 + 48))(v392, 1, v871) == 1)
        {
          sub_1BAAD2E14(v392, &unk_1EBC12B20);
          v393 = v810;
          sub_1BAB92C54(v313, v810, type metadata accessor for ReplicatorRecord.ID);
          v394 = sub_1BABE729C();
          v395 = sub_1BABE78EC();
          if (os_log_type_enabled(v394, v395))
          {
            v396 = swift_slowAlloc();
            v397 = swift_slowAlloc();
            v897 = v397;
            *v396 = 136446210;
            v398 = ReplicatorRecord.ID.description.getter();
            v400 = v399;
            sub_1BAB92CD8(v393, type metadata accessor for ReplicatorRecord.ID);
            v401 = sub_1BAAFA460(v398, v400, &v897);

            *(v396 + 4) = v401;
            _os_log_impl(&dword_1BAACF000, v394, v395, "Remote record could not be retrieved; ignoring %{public}s", v396, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v397);
            MEMORY[0x1BFAFE460](v397, -1, -1);
            MEMORY[0x1BFAFE460](v396, -1, -1);
          }

          else
          {

            sub_1BAB92CD8(v393, type metadata accessor for ReplicatorRecord.ID);
          }
        }

        else
        {
          v536 = v808;
          sub_1BAB92E38(v392, v808, type metadata accessor for ReplicatorRecord);
          v897 = 0;
          v537 = v887;
          sub_1BAB7C92C(v536, &v897);
          v538 = v879;
          v510 = v873;
          v887 = v537;
          if (v537)
          {
            sub_1BAB92CD8(v536, type metadata accessor for ReplicatorRecord);
            sub_1BAAD2E14(v538, &qword_1EBC12B60);
            v511 = type metadata accessor for ReplicatorRecord.ID.Ownership;
            v512 = v882;
            goto LABEL_151;
          }

          v676 = v794;
          sub_1BAB92C54(v536, v794, type metadata accessor for ReplicatorRecord.ID);
          (*(v888 + 16))(v676 + *(v824 + 20), v536 + *(v871 + 20), v885);
          v677 = v792;
          sub_1BAB92C54(v676, v792, type metadata accessor for ReplicatorRecordVersion);
          swift_storeEnumTagMultiPayload();
          v678 = v863;
          v679 = *v863;
          v680 = swift_isUniquelyReferenced_nonNull_native();
          *v678 = v679;
          if ((v680 & 1) == 0)
          {
            v679 = sub_1BAAF9A7C(0, v679[2] + 1, 1, v679);
            *v863 = v679;
          }

          v682 = v679[2];
          v681 = v679[3];
          if (v682 >= v681 >> 1)
          {
            v775 = sub_1BAAF9A7C(v681 > 1, v682 + 1, 1, v679);
            *v863 = v775;
          }

          sub_1BAB92CD8(v676, type metadata accessor for ReplicatorRecordVersion);
          sub_1BAB92CD8(v536, type metadata accessor for ReplicatorRecord);
          v683 = *v863;
          *(v683 + 16) = v682 + 1;
          sub_1BAB92E38(v677, v683 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v682, type metadata accessor for ReplicatorRecordChange);
        }

        sub_1BAAD2E14(v879, &qword_1EBC12B60);
        v564 = type metadata accessor for ReplicatorRecord.ID.Ownership;
        v565 = v882;
        goto LABEL_287;
      }

      sub_1BAAD2E14(v316, &unk_1EBC13D70);

      sub_1BAAD2E14(v879, &qword_1EBC12B60);
      v319 = type metadata accessor for ReplicatorRecord.ID.Ownership;
      v320 = v882;
LABEL_70:
      sub_1BAB92CD8(v320, v319);
      goto LABEL_163;
    }

    sub_1BABE6EDC();
    v249 = v880;
    sub_1BABE722C();

    if (v224(v249, 1, v223) != 1)
    {
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v285 = sub_1BABE72BC();
      v286 = __swift_project_value_buffer(v285, qword_1ED78BBA0);
      v287 = v841;
      sub_1BAB92C54(v886, v841, type metadata accessor for ReplicatorRecord.ID);
      v288 = sub_1BABE729C();
      v289 = sub_1BABE790C();
      v290 = os_log_type_enabled(v288, v289);
      v885 = v223;
      v895 = v286;
      if (v290)
      {
        v291 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        v897 = v292;
        *v291 = 136446210;
        v293 = ReplicatorRecord.ID.description.getter();
        v295 = v294;
        sub_1BAB92CD8(v287, type metadata accessor for ReplicatorRecord.ID);
        v296 = sub_1BAAFA460(v293, v295, &v897);
        v297 = v887;

        *(v291 + 4) = v296;
        _os_log_impl(&dword_1BAACF000, v288, v289, "Remote record is outdated locally; updating local copy of %{public}s", v291, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v292);
        MEMORY[0x1BFAFE460](v292, -1, -1);
        MEMORY[0x1BFAFE460](v291, -1, -1);
      }

      else
      {

        sub_1BAB92CD8(v287, type metadata accessor for ReplicatorRecord.ID);
        v297 = v887;
      }

      v321 = v876;
      v322 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
      v323 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
      __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v322);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A40);
      v324 = (*(v881 + 80) + 32) & ~*(v881 + 80);
      v325 = swift_allocObject();
      *(v325 + 16) = xmmword_1BABE9F00;
      v326 = v325 + v324;
      v327 = v886;
      sub_1BAB92C54(v886, v326, type metadata accessor for ReplicatorRecord.ID);
      v328 = v874;
      v329 = v321 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_cacheURL;
      v330 = v839;
      v331 = v894;
      (*(v874 + 16))(v839, v329, v894);
      (*(v328 + 56))(v330, 0, 1, v331);
      v332 = (*(v323 + 48))(v325, v330, 0, 1, v322, v323);
      v887 = v297;
      if (!v297)
      {
        v402 = v332;
        sub_1BAAD2E14(v330, &unk_1EBC13D70);

        v403 = v827;
        sub_1BAB1A0D4(v327, v402, v827);

        if ((*(v849 + 48))(v403, 1, v871) == 1)
        {
          sub_1BAAD2E14(v403, &unk_1EBC12B20);
          v404 = v811;
          sub_1BAB92C54(v327, v811, type metadata accessor for ReplicatorRecord.ID);
          v405 = sub_1BABE729C();
          v406 = sub_1BABE78EC();
          if (os_log_type_enabled(v405, v406))
          {
            v407 = swift_slowAlloc();
            v408 = swift_slowAlloc();
            v897 = v408;
            *v407 = 136446210;
            v409 = ReplicatorRecord.ID.description.getter();
            v411 = v410;
            sub_1BAB92CD8(v404, type metadata accessor for ReplicatorRecord.ID);
            v412 = sub_1BAAFA460(v409, v411, &v897);

            *(v407 + 4) = v412;
            _os_log_impl(&dword_1BAACF000, v405, v406, "Remote record could not be retrieved; ignoring %{public}s", v407, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v408);
            MEMORY[0x1BFAFE460](v408, -1, -1);
            MEMORY[0x1BFAFE460](v407, -1, -1);
          }

          else
          {

            sub_1BAB92CD8(v404, type metadata accessor for ReplicatorRecord.ID);
          }
        }

        else
        {
          v539 = v809;
          sub_1BAB92E38(v403, v809, type metadata accessor for ReplicatorRecord);
          v540 = sub_1BABE6EDC();
          v541 = RecordDataPersistentStore.recordData(recordID:)(v540);

          sub_1BAB91714(v327, v541);

          v897 = 0;
          v542 = v887;
          sub_1BAB7C92C(v539, &v897);
          v510 = v873;
          v887 = v542;
          if (v542)
          {
            sub_1BAB92CD8(v539, type metadata accessor for ReplicatorRecord);

            sub_1BAAD2E14(v879, &qword_1EBC12B60);
            v511 = MEMORY[0x1E69C7330];
            v512 = v880;
            goto LABEL_151;
          }

          v684 = v795;
          sub_1BAB92C54(v539, v795, type metadata accessor for ReplicatorRecord.ID);
          (*(v888 + 16))(v684 + *(v824 + 20), v539 + *(v871 + 20), v885);
          v685 = v793;
          sub_1BAB92C54(v684, v793, type metadata accessor for ReplicatorRecordVersion);
          swift_storeEnumTagMultiPayload();
          v686 = v863;
          v687 = *v863;
          v688 = swift_isUniquelyReferenced_nonNull_native();
          *v686 = v687;
          if ((v688 & 1) == 0)
          {
            v687 = sub_1BAAF9A7C(0, v687[2] + 1, 1, v687);
            *v863 = v687;
          }

          v690 = v687[2];
          v689 = v687[3];
          if (v690 >= v689 >> 1)
          {
            v776 = sub_1BAAF9A7C(v689 > 1, v690 + 1, 1, v687);
            *v863 = v776;
          }

          sub_1BAB92CD8(v684, type metadata accessor for ReplicatorRecordVersion);
          sub_1BAB92CD8(v539, type metadata accessor for ReplicatorRecord);
          v691 = *v863;
          *(v691 + 16) = v690 + 1;
          sub_1BAB92E38(v685, v691 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v690, type metadata accessor for ReplicatorRecordChange);
        }

        sub_1BAAD2E14(v879, &qword_1EBC12B60);
        v564 = MEMORY[0x1E69C7330];
        v565 = v880;
        goto LABEL_287;
      }

      sub_1BAAD2E14(v330, &unk_1EBC13D70);

      sub_1BAAD2E14(v879, &qword_1EBC12B60);
      v319 = MEMORY[0x1E69C7330];
      v320 = v880;
      goto LABEL_70;
    }

    v250 = sub_1BABE6EDC();
    v251 = RecordDataPersistentStore.recordData(recordID:)(v250);

    v252 = *(v251 + 16);
    v888 = v251;
    v885 = v252;
    if (!v252)
    {
      v253 = MEMORY[0x1E69E7CC8];
LABEL_72:
      v333 = v859;
      sub_1BABE6F2C();
      v334 = v858;
      sub_1BABE6EEC();
      sub_1BAB92D38(&unk_1EBC12210, MEMORY[0x1E69C72B0]);
      v335 = v861;
      v336 = sub_1BABE79DC();
      v337 = *(v860 + 8);
      v337(v334, v335);
      v337(v333, v335);
      v338 = v869;
      sub_1BAB92C54(v886, v869, type metadata accessor for ReplicatorRecord.ID);
      v339 = v871;
      sub_1BABE6F3C();

      v340 = v862;
      sub_1BABE6E9C();
      v341 = v339[7];
      (*(v868 + 56))(v338 + v341, 1, 1, v867);
      *(v338 + v339[6]) = v253;
      sub_1BAAD7BA0(v340, v338 + v341, &qword_1EBC132A0);
      *(v338 + v339[8]) = v336 & 1;
      v342 = v253 + 64;
      v343 = 1 << *(v253 + 32);
      v344 = -1;
      if (v343 < 64)
      {
        v344 = ~(-1 << v343);
      }

      v345 = v344 & *(v253 + 64);
      v346 = (v343 + 63) >> 6;
      v895 = (v874 + 48);
      i = (v874 + 32);
      v890 = v874 + 8;

      v347 = 0;
      v348 = v875;
      v349 = v870;
      v891 = v253 + 64;
      while (v345)
      {
        v352 = v347;
LABEL_82:
        v353 = __clz(__rbit64(v345));
        v345 &= v345 - 1;
        v354 = v353 | (v352 << 6);
        v355 = *(*(v253 + 48) + 8 * v354);
        v356 = v877;
        sub_1BAB92C54(*(v253 + 56) + *(v892 + 72) * v354, &v877[*(v348 + 48)], type metadata accessor for ReplicatorRecord.Value);
        *v356 = v355;
        sub_1BAB23414(v356, v349, &unk_1EBC12B50);
        v357 = v878;
        sub_1BAAD2DAC(v349, v878, &unk_1EBC12B50);
        v358 = v357 + *(v348 + 48);
        v359 = v872;
        sub_1BAAD2DAC(v358 + *(v893 + 20), v872, &unk_1EBC13D70);
        sub_1BAB92CD8(v358, type metadata accessor for ReplicatorRecord.Value);
        v360 = v894;
        if ((*v895)(v359, 1, v894) == 1)
        {
          sub_1BAAD2E14(v349, &unk_1EBC12B50);
          v350 = v359;
          v351 = &unk_1EBC13D70;
        }

        else
        {
          v361 = v865;
          (*i)(v865, v359, v360);
          v362 = [objc_opt_self() defaultManager];
          sub_1BABE6B5C();
          v363 = sub_1BABE74EC();

          v364 = [v362 fileExistsAtPath_];

          (*v890)(v361, v360);
          if ((v364 & 1) == 0)
          {

            v366 = v864;
            sub_1BAB23414(v870, v864, &unk_1EBC12B50);
            v365 = v848;
            v348 = v875;
            (*(v848 + 56))(v366, 0, 1, v875);
LABEL_86:

            v367 = v837;
            sub_1BAAD2DAC(v366, v837, &qword_1EBC12E08);
            v368 = (*(v365 + 48))(v367, 1, v348);
            v369 = v887;
            v370 = v894;
            if (v368 == 1)
            {
              sub_1BAAD2E14(v367, &qword_1EBC12E08);
            }

            else
            {
              v371 = v367;
              v372 = v834;
              sub_1BAB23414(v371, v834, &unk_1EBC12B50);
              v373 = v830;
              sub_1BAAD2DAC(v372, v830, &unk_1EBC12B50);
              v374 = v373 + *(v348 + 48);
              v375 = v829;
              sub_1BAAD2DAC(v374 + *(v893 + 20), v829, &unk_1EBC13D70);
              sub_1BAB92CD8(v374, type metadata accessor for ReplicatorRecord.Value);
              if ((*v895)(v375, 1, v370) != 1)
              {
                v491 = v831;
                (*i)(v831, v375, v370);
                if (qword_1ED7876D0 != -1)
                {
                  swift_once();
                }

                v492 = sub_1BABE72BC();
                __swift_project_value_buffer(v492, qword_1ED78BBA0);
                v493 = v818;
                (*(v874 + 16))(v818, v491, v370);
                v494 = v819;
                sub_1BAB92C54(v886, v819, type metadata accessor for ReplicatorRecord.ID);
                v495 = sub_1BABE729C();
                v496 = sub_1BABE78EC();
                if (os_log_type_enabled(v495, v496))
                {
                  v497 = swift_slowAlloc();
                  v498 = swift_slowAlloc();
                  v897 = v498;
                  *v497 = 136446466;
                  sub_1BAB92D38(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
                  v499 = sub_1BABE7EAC();
                  v501 = v500;
                  v502 = *v890;
                  (*v890)(v493, v894);
                  v503 = sub_1BAAFA460(v499, v501, &v897);

                  *(v497 + 4) = v503;
                  *(v497 + 12) = 2082;
                  v504 = ReplicatorRecord.ID.description.getter();
                  v506 = v505;
                  sub_1BAB92CD8(v494, type metadata accessor for ReplicatorRecord.ID);
                  v507 = sub_1BAAFA460(v504, v506, &v897);
                  v370 = v894;

                  *(v497 + 14) = v507;
                  _os_log_impl(&dword_1BAACF000, v495, v496, "Local record contains a missing URL: %{public}s; deleting local copy of %{public}s", v497, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1BFAFE460](v498, -1, -1);
                  MEMORY[0x1BFAFE460](v497, -1, -1);
                }

                else
                {

                  sub_1BAB92CD8(v494, type metadata accessor for ReplicatorRecord.ID);
                  v502 = *v890;
                  (*v890)(v493, v370);
                }

                v599 = v879;
                v510 = v873;
                v600 = v869;
                sub_1BAB91714(v869, v888);

                v601 = v887;
                sub_1BAB7F5D0(v600);
                v556 = v601;
                if (v601)
                {

                  v502(v831, v370);
                  sub_1BAAD2E14(v834, &unk_1EBC12B50);
                  sub_1BAAD2E14(v864, &qword_1EBC12E08);
                  sub_1BAB92CD8(v600, type metadata accessor for ReplicatorRecord);
                  sub_1BAAD2E14(v599, &qword_1EBC12B60);
                  goto LABEL_281;
                }

                v635 = v600;
                v636 = v798;
                sub_1BAB92C54(v635, v798, type metadata accessor for ReplicatorRecord.ID);
                swift_storeEnumTagMultiPayload();
                v637 = v863;
                v638 = *v863;
                v639 = swift_isUniquelyReferenced_nonNull_native();
                *v637 = v638;
                if ((v639 & 1) == 0)
                {
                  v638 = sub_1BAAF9A7C(0, v638[2] + 1, 1, v638);
                  *v863 = v638;
                }

                v641 = v638[2];
                v640 = v638[3];
                if (v641 >= v640 >> 1)
                {
                  v774 = sub_1BAAF9A7C(v640 > 1, v641 + 1, 1, v638);
                  *v863 = v774;
                }

                v502(v831, v370);
                sub_1BAAD2E14(v834, &unk_1EBC12B50);
                sub_1BAAD2E14(v864, &qword_1EBC12E08);
                v642 = *v863;
                *(v642 + 16) = v641 + 1;
                sub_1BAB92E38(v636, v642 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v641, type metadata accessor for ReplicatorRecordChange);
                sub_1BAB92CD8(v869, type metadata accessor for ReplicatorRecord);
                sub_1BAAD2E14(v879, &qword_1EBC12B60);
                v887 = 0;
                return;
              }

              sub_1BAAD2E14(v372, &unk_1EBC12B50);
              sub_1BAAD2E14(v375, &unk_1EBC13D70);
            }

            v376 = v853;
            v377 = v850;
            sub_1BABE6EAC();
            v378 = v869;
            sub_1BAB861F4(v377, v869, v376, &v897);
            (*(v851 + 8))(v377, v852);
            v379 = v897;
            v380 = v833;
            if (v897 == 1)
            {
              if (qword_1ED7876D0 != -1)
              {
                swift_once();
              }

              v381 = sub_1BABE72BC();
              __swift_project_value_buffer(v381, qword_1ED78BBA0);
              sub_1BAB92C54(v886, v380, type metadata accessor for ReplicatorRecord.ID);
              v382 = sub_1BABE729C();
              v383 = sub_1BABE790C();
              if (os_log_type_enabled(v382, v383))
              {
                v384 = swift_slowAlloc();
                v385 = swift_slowAlloc();
                v897 = v385;
                *v384 = 136446210;
                v386 = ReplicatorRecord.ID.description.getter();
                v388 = v387;
                sub_1BAB92CD8(v380, type metadata accessor for ReplicatorRecord.ID);
                v389 = sub_1BAAFA460(v386, v388, &v897);
                v378 = v869;

                *(v384 + 4) = v389;
                _os_log_impl(&dword_1BAACF000, v382, v383, "Local record is outdated in replicator but we have no eligbile destinations; deleting local copy of %{public}s", v384, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v385);
                MEMORY[0x1BFAFE460](v385, -1, -1);
                v390 = v384;
                v366 = v864;
                MEMORY[0x1BFAFE460](v390, -1, -1);
              }

              else
              {

                sub_1BAB92CD8(v380, type metadata accessor for ReplicatorRecord.ID);
              }

              v549 = v879;
              v510 = v873;
              sub_1BAB91714(v378, v888);

              sub_1BAB7F5D0(v378);
              v887 = v369;
              if (v369)
              {
                sub_1BAAD2E14(v366, &qword_1EBC12E08);

                v550 = v378;
                goto LABEL_279;
              }

              v582 = v805;
              sub_1BAB92C54(v378, v805, type metadata accessor for ReplicatorRecord.ID);
              swift_storeEnumTagMultiPayload();
              v583 = v863;
              v584 = *v863;
              v585 = swift_isUniquelyReferenced_nonNull_native();
              *v583 = v584;
              if ((v585 & 1) == 0)
              {
                v584 = sub_1BAAF9A7C(0, v584[2] + 1, 1, v584);
                *v863 = v584;
              }

              v587 = v584[2];
              v586 = v584[3];
              if (v587 >= v586 >> 1)
              {
                v772 = sub_1BAAF9A7C(v586 > 1, v587 + 1, 1, v584);
                *v863 = v772;
                v582 = v805;
              }

              sub_1BAAD2E14(v864, &qword_1EBC12E08);
              v588 = *v863;
              *(v588 + 16) = v587 + 1;
              v589 = v588 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v587;
              v590 = v582;
LABEL_185:
              sub_1BAB92E38(v590, v589, type metadata accessor for ReplicatorRecordChange);
              v598 = v378;
LABEL_295:
              sub_1BAB92CD8(v598, type metadata accessor for ReplicatorRecord);
LABEL_296:
              v248 = v879;
LABEL_35:
              sub_1BAAD2E14(v248, &qword_1EBC12B60);
              return;
            }

            if (qword_1ED7876D0 != -1)
            {
              swift_once();
            }

            v413 = sub_1BABE72BC();
            __swift_project_value_buffer(v413, qword_1ED78BBA0);
            v414 = v825;
            sub_1BAB92C54(v886, v825, type metadata accessor for ReplicatorRecord.ID);
            v415 = sub_1BABE729C();
            v416 = sub_1BABE790C();
            if (os_log_type_enabled(v415, v416))
            {
              v417 = swift_slowAlloc();
              v418 = swift_slowAlloc();
              v897 = v418;
              *v417 = 136446210;
              v419 = ReplicatorRecord.ID.description.getter();
              v421 = v420;
              sub_1BAB92CD8(v414, type metadata accessor for ReplicatorRecord.ID);
              v422 = sub_1BAAFA460(v419, v421, &v897);
              v369 = v887;

              *(v417 + 4) = v422;
              _os_log_impl(&dword_1BAACF000, v415, v416, "Local record is outdated in replicator; sending local copy of %{public}s", v417, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v418);
              MEMORY[0x1BFAFE460](v418, -1, -1);
              MEMORY[0x1BFAFE460](v417, -1, -1);
            }

            else
            {

              sub_1BAB92CD8(v414, type metadata accessor for ReplicatorRecord.ID);
            }

            v551 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
            v552 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
            __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v551);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128B0);
            v553 = (*(v849 + 80) + 32) & ~*(v849 + 80);
            v554 = swift_allocObject();
            *(v554 + 16) = xmmword_1BABE9F00;
            v555 = v554 + v553;
            v378 = v869;
            sub_1BAB92C54(v869, v555, type metadata accessor for ReplicatorRecord);
            v897 = v379;
            LOBYTE(v896) = v843 & 1;
            (*(v552 + 24))(v554, &v897, &v896, v551, v552);
            v887 = v369;
            if (!v369)
            {

              sub_1BAB22FC0(v379);
              v591 = v804;
              sub_1BAB92C54(v886, v804, type metadata accessor for ReplicatorRecord.ID);
              sub_1BABE6F3C();
              sub_1BAB92C54(v591, v820, type metadata accessor for ReplicatorRecordVersion);
              swift_storeEnumTagMultiPayload();
              v592 = v863;
              v593 = *v863;
              v594 = swift_isUniquelyReferenced_nonNull_native();
              *v592 = v593;
              if ((v594 & 1) == 0)
              {
                v593 = sub_1BAAF9A7C(0, v593[2] + 1, 1, v593);
                *v863 = v593;
              }

              v596 = v593[2];
              v595 = v593[3];
              if (v596 >= v595 >> 1)
              {
                v773 = sub_1BAAF9A7C(v595 > 1, v596 + 1, 1, v593);
                *v863 = v773;
              }

              sub_1BAB92CD8(v591, type metadata accessor for ReplicatorRecordVersion);
              sub_1BAAD2E14(v864, &qword_1EBC12E08);
              v597 = *v863;
              *(v597 + 16) = v596 + 1;
              v589 = v597 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v596;
              v590 = v820;
              goto LABEL_185;
            }

            sub_1BAAD2E14(v864, &qword_1EBC12E08);

            sub_1BAB92CD8(v378, type metadata accessor for ReplicatorRecord);
            sub_1BAAD2E14(v879, &qword_1EBC12B60);
            sub_1BAB22FC0(v379);
LABEL_163:
            v556 = v887;
LABEL_164:
            v887 = 0;
            v510 = v873;
            goto LABEL_282;
          }

          v349 = v870;
          v350 = v870;
          v351 = &unk_1EBC12B50;
        }

        sub_1BAAD2E14(v350, v351);
        v347 = v352;
        v348 = v875;
        v342 = v891;
      }

      while (1)
      {
        v352 = v347 + 1;
        if (__OFADD__(v347, 1))
        {
          break;
        }

        if (v352 >= v346)
        {

          v365 = v848;
          v366 = v864;
          (*(v848 + 56))(v864, 1, 1, v348);
          goto LABEL_86;
        }

        v345 = *(v342 + 8 * v352);
        ++v347;
        if (v345)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_290;
    }

    v61 = 0;
    v883 = (v251 + ((*(v890 + 80) + 32) & ~*(v890 + 80)));
    v882 = v890 + 16;
    v881 = v874 + 56;
    v253 = MEMORY[0x1E69E7CC8];
    v880 = (v890 + 8);
    while (1)
    {
      if (v61 >= *(v251 + 16))
      {
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        swift_once();
LABEL_23:
        v225 = sub_1BABE72BC();
        __swift_project_value_buffer(v225, qword_1ED78BBA0);
        sub_1BAB92C54(v886, v61, type metadata accessor for ReplicatorRecord.ID);
        v226 = sub_1BABE729C();
        v227 = sub_1BABE78EC();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v897 = v229;
          *v228 = 136446210;
          v230 = ReplicatorRecord.ID.description.getter();
          v232 = v231;
          sub_1BAB92CD8(v61, type metadata accessor for ReplicatorRecord.ID);
          v233 = sub_1BAAFA460(v230, v232, &v897);

          *(v228 + 4) = v233;
          _os_log_impl(&dword_1BAACF000, v226, v227, "Have neither remote nor local records for record ID %{public}s", v228, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v229);
          MEMORY[0x1BFAFE460](v229, -1, -1);
          MEMORY[0x1BFAFE460](v228, -1, -1);

LABEL_34:
          v248 = v879;
          goto LABEL_35;
        }

        v247 = v61;
LABEL_33:
        sub_1BAB92CD8(v247, type metadata accessor for ReplicatorRecord.ID);
        goto LABEL_34;
      }

      (*(v890 + 16))(v180, v883 + *(v890 + 72) * v61, v895);
      v254 = sub_1BABE725C();
      v255 = sub_1BABE727C();
      v257 = v256;
      v258 = i;
      sub_1BABE726C();
      v259 = *(v893 + 20);
      (*v881)(v170 + v259, 1, 1, v894);
      *v170 = v255;
      v170[1] = v257;
      sub_1BAAD7BA0(v258, v170 + v259, &unk_1EBC13D70);
      sub_1BAB92E38(v170, v891, type metadata accessor for ReplicatorRecord.Value);
      v260 = swift_isUniquelyReferenced_nonNull_native();
      v897 = v253;
      v262 = sub_1BABD5D84(v254);
      v263 = *(v253 + 16);
      v264 = (v261 & 1) == 0;
      v265 = v263 + v264;
      if (__OFADD__(v263, v264))
      {
        goto LABEL_298;
      }

      v266 = v261;
      if (*(v253 + 24) >= v265)
      {
        if (v260)
        {
          v253 = v897;
          if (v261)
          {
            goto LABEL_39;
          }
        }

        else
        {
          sub_1BABDD980();
          v253 = v897;
          if (v266)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1BABD997C(v265, v260);
        v267 = sub_1BABD5D84(v254);
        if ((v266 & 1) != (v268 & 1))
        {
LABEL_305:
          sub_1BABE7EFC();
          __break(1u);
          return;
        }

        v262 = v267;
        v253 = v897;
        if (v266)
        {
LABEL_39:
          sub_1BAB400BC(v891, *(v253 + 56) + *(v892 + 72) * v262);
          (*v880)(v180, v895);
          goto LABEL_40;
        }
      }

      *(v253 + 8 * (v262 >> 6) + 64) |= 1 << v262;
      *(*(v253 + 48) + 8 * v262) = v254;
      sub_1BAB92E38(v891, *(v253 + 56) + *(v892 + 72) * v262, type metadata accessor for ReplicatorRecord.Value);
      (*v880)(v180, v895);
      v269 = *(v253 + 16);
      v219 = __OFADD__(v269, 1);
      v270 = v269 + 1;
      if (v219)
      {
        goto LABEL_302;
      }

      *(v253 + 16) = v270;
LABEL_40:
      ++v61;
      v251 = v888;
      if (v885 == v61)
      {
        goto LABEL_72;
      }
    }
  }

  v883 = v173;
  v189 = sub_1BABE6CFC();
  v190 = *(v189 - 8);
  v191 = *(v190 + 48);
  v192 = v190 + 48;
  if (v191(v184, 1, v189) != 1)
  {
    v221 = 0;
    v222 = v879;
    goto LABEL_21;
  }

  v869 = v192;
  v870 = v191;
  v872 = v189;
  v866 = v140;

  v193 = sub_1BABE6EDC();
  v194 = RecordDataPersistentStore.recordData(recordID:)(v193);

  v882 = *(v194 + 16);
  v891 = v194;
  if (v882)
  {
    v61 = 0;
    v881 = v194 + ((*(v890 + 80) + 32) & ~*(v890 + 80));
    v880 = (v890 + 16);
    v878 = (v874 + 56);
    v195 = MEMORY[0x1E69E7CC8];
    v877 = (v890 + 8);
    v196 = v894;
    while (v61 < *(v194 + 16))
    {
      (*(v890 + 16))(v888, v881 + *(v890 + 72) * v61, v895);
      v197 = v195;
      v198 = sub_1BABE725C();
      v199 = sub_1BABE727C();
      v201 = v200;
      v202 = i;
      sub_1BABE726C();
      v203 = *(v893 + 20);
      v204 = v885;
      (*v878)(&v885[v203], 1, 1, v196);
      *v204 = v199;
      v204[1] = v201;
      v205 = v202;
      v206 = v883;
      sub_1BAAD7BA0(v205, v204 + v203, &unk_1EBC13D70);
      sub_1BAB92E38(v204, v206, type metadata accessor for ReplicatorRecord.Value);
      v207 = swift_isUniquelyReferenced_nonNull_native();
      v897 = v197;
      v208 = sub_1BABD5D84(v198);
      v210 = v197;
      v211 = v208;
      v212 = *(v210 + 16);
      v213 = (v209 & 1) == 0;
      v214 = v212 + v213;
      if (__OFADD__(v212, v213))
      {
        goto LABEL_300;
      }

      v215 = v209;
      if (*(v210 + 24) >= v214)
      {
        if ((v207 & 1) == 0)
        {
          sub_1BABDD980();
        }
      }

      else
      {
        sub_1BABD997C(v214, v207);
        v216 = sub_1BABD5D84(v198);
        if ((v215 & 1) != (v217 & 1))
        {
          goto LABEL_305;
        }

        v211 = v216;
      }

      v194 = v891;
      v195 = v897;
      if (v215)
      {
        sub_1BAB400BC(v206, v897[7] + *(v892 + 72) * v211);
        (*v877)(v888, v895);
      }

      else
      {
        v897[(v211 >> 6) + 8] |= 1 << v211;
        *(v195[6] + 8 * v211) = v198;
        sub_1BAB92E38(v206, v195[7] + *(v892 + 72) * v211, type metadata accessor for ReplicatorRecord.Value);
        (*v877)(v888, v895);
        v218 = v195[2];
        v219 = __OFADD__(v218, 1);
        v220 = v218 + 1;
        if (v219)
        {
          goto LABEL_303;
        }

        v195[2] = v220;
      }

      ++v61;
      v196 = v894;
      if (v882 == v61)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_299;
  }

  v195 = MEMORY[0x1E69E7CC8];
LABEL_106:
  v423 = v859;
  v424 = v195;
  sub_1BABE6F2C();
  v425 = v858;
  sub_1BABE6EEC();
  sub_1BAB92D38(&unk_1EBC12210, MEMORY[0x1E69C72B0]);
  v426 = v861;
  v427 = sub_1BABE79DC();
  v428 = *(v860 + 8);
  v428(v425, v426);
  v428(v423, v426);
  v429 = v857;
  sub_1BAB92C54(v886, v857, type metadata accessor for ReplicatorRecord.ID);
  v430 = v871;
  sub_1BABE6F3C();

  v431 = v862;
  sub_1BABE6E9C();
  v432 = v430[7];
  (*(v868 + 56))(v429 + v432, 1, 1, v867);
  *(v429 + v430[6]) = v424;
  sub_1BAAD7BA0(v431, v429 + v432, &qword_1EBC132A0);
  *(v429 + v430[8]) = v427 & 1;
  v433 = v850;
  sub_1BABE6EAC();
  sub_1BAB861F4(v433, v429, v853, &v897);
  (*(v851 + 8))(v433, v852);
  v434 = v897;
  sub_1BABE6EDC();
  v435 = v847;
  sub_1BABE722C();

  if (v870(v435, 1, v872) != 1)
  {
    sub_1BAB22FC0(v434);

    v460 = v887;
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v461 = sub_1BABE72BC();
    __swift_project_value_buffer(v461, qword_1ED78BBA0);
    v462 = v866;
    sub_1BAB92C54(v429, v866, type metadata accessor for ReplicatorRecord);
    v463 = sub_1BABE729C();
    v464 = sub_1BABE790C();
    if (os_log_type_enabled(v463, v464))
    {
      v465 = swift_slowAlloc();
      v466 = v194;
      v467 = swift_slowAlloc();
      v897 = v467;
      *v465 = 136446210;
      v468 = ReplicatorRecord.ID.description.getter();
      v470 = v469;
      sub_1BAB92CD8(v462, type metadata accessor for ReplicatorRecord);
      v471 = sub_1BAAFA460(v468, v470, &v897);

      *(v465 + 4) = v471;
      _os_log_impl(&dword_1BAACF000, v463, v464, "Remote record exists locally but not in replicator; deleting local copy of %{public}s", v465, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v467);
      v472 = v467;
      v194 = v466;
      MEMORY[0x1BFAFE460](v472, -1, -1);
      v473 = v465;
      v460 = v887;
      MEMORY[0x1BFAFE460](v473, -1, -1);
    }

    else
    {

      sub_1BAB92CD8(v462, type metadata accessor for ReplicatorRecord);
    }

    v508 = v879;
    v509 = v886;
    v510 = v873;
    sub_1BAB91714(v429, v194);

    sub_1BAB7F5D0(v509);
    v887 = v460;
    if (!v460)
    {
      v557 = v807;
      sub_1BAB92C54(v429, v807, type metadata accessor for ReplicatorRecord.ID);
      swift_storeEnumTagMultiPayload();
      v558 = v863;
      v559 = *v863;
      v560 = swift_isUniquelyReferenced_nonNull_native();
      *v558 = v559;
      if ((v560 & 1) == 0)
      {
        v559 = sub_1BAAF9A7C(0, v559[2] + 1, 1, v559);
        *v863 = v559;
      }

      v562 = v559[2];
      v561 = v559[3];
      if (v562 >= v561 >> 1)
      {
        v771 = sub_1BAAF9A7C(v561 > 1, v562 + 1, 1, v559);
        *v863 = v771;
      }

      v563 = *v863;
      *(v563 + 16) = v562 + 1;
      sub_1BAB92E38(v557, v563 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v562, type metadata accessor for ReplicatorRecordChange);
      sub_1BAB92CD8(v429, type metadata accessor for ReplicatorRecord);
      sub_1BAAD2E14(v879, &qword_1EBC12B60);
      v564 = MEMORY[0x1E69C7330];
      v565 = v847;
      goto LABEL_287;
    }

    sub_1BAB92CD8(v429, type metadata accessor for ReplicatorRecord);
    sub_1BAAD2E14(v508, &qword_1EBC12B60);
    v511 = MEMORY[0x1E69C7330];
    v512 = v847;
LABEL_151:
    sub_1BAB92CD8(v512, v511);
    goto LABEL_280;
  }

  v883 = v434;
  v436 = (v424 + 8);
  v437 = 1 << *(v424 + 32);
  v438 = -1;
  if (v437 < 64)
  {
    v438 = ~(-1 << v437);
  }

  v439 = v438 & v424[8];
  v440 = (v437 + 63) >> 6;
  v890 = v874 + 48;
  v885 = (v874 + 32);
  v888 = v874 + 8;

  v441 = 0;
  v61 = v846;
  v895 = v424;
  for (i = (v424 + 8); ; v436 = i)
  {
    if (!v439)
    {
      while (1)
      {
        v444 = v441 + 1;
        if (__OFADD__(v441, 1))
        {
          goto LABEL_301;
        }

        if (v444 >= v440)
        {

          v474 = v848;
          v475 = *(v848 + 56);
          v476 = v835;
          v477 = v835;
          v478 = 1;
          goto LABEL_125;
        }

        v439 = v436[v444];
        ++v441;
        if (v439)
        {
          goto LABEL_117;
        }
      }
    }

    v444 = v441;
LABEL_117:
    v445 = __clz(__rbit64(v439));
    v439 &= v439 - 1;
    v446 = v445 | (v444 << 6);
    v447 = *(v424[6] + 8 * v446);
    v448 = v424[7] + *(v892 + 72) * v446;
    v449 = v875;
    v450 = v855;
    sub_1BAB92C54(v448, &v855[*(v875 + 48)], type metadata accessor for ReplicatorRecord.Value);
    *v450 = v447;
    sub_1BAB23414(v450, v61, &unk_1EBC12B50);
    v451 = v856;
    sub_1BAAD2DAC(v61, v856, &unk_1EBC12B50);
    v452 = v451 + *(v449 + 48);
    v453 = v854;
    sub_1BAAD2DAC(v452 + *(v893 + 20), v854, &unk_1EBC13D70);
    sub_1BAB92CD8(v452, type metadata accessor for ReplicatorRecord.Value);
    v454 = v894;
    if ((*v890)(v453, 1, v894) == 1)
    {
      sub_1BAAD2E14(v61, &unk_1EBC12B50);
      v442 = v453;
      v443 = &unk_1EBC13D70;
      goto LABEL_111;
    }

    v455 = v836;
    (*v885)(v836, v453, v454);
    v456 = [objc_opt_self() defaultManager];
    sub_1BABE6B5C();
    v457 = sub_1BABE74EC();

    v458 = [v456 fileExistsAtPath_];

    v459 = v894;
    (*v888)(v455, v459);
    if ((v458 & 1) == 0)
    {
      break;
    }

    v61 = v846;
    v442 = v846;
    v443 = &unk_1EBC12B50;
LABEL_111:
    sub_1BAAD2E14(v442, v443);
    v441 = v444;
    v424 = v895;
  }

  v476 = v835;
  sub_1BAB23414(v846, v835, &unk_1EBC12B50);
  v474 = v848;
  v475 = *(v848 + 56);
  v477 = v476;
  v478 = 0;
LABEL_125:
  v479 = v875;
  v475(v477, v478, 1, v875);
  v480 = v828;
  sub_1BAAD2DAC(v476, v828, &qword_1EBC12E08);
  v481 = (*(v474 + 48))(v480, 1, v479);
  v482 = v887;
  v483 = v857;
  if (v481 == 1)
  {
    sub_1BAAD2E14(v480, &qword_1EBC12E08);
    goto LABEL_140;
  }

  v513 = v480;
  v514 = v822;
  sub_1BAB23414(v513, v822, &unk_1EBC12B50);
  v515 = v815;
  sub_1BAAD2DAC(v514, v815, &unk_1EBC12B50);
  v516 = v515 + *(v479 + 48);
  v517 = v814;
  sub_1BAAD2DAC(v516 + *(v893 + 20), v814, &unk_1EBC13D70);
  sub_1BAB92CD8(v516, type metadata accessor for ReplicatorRecord.Value);
  v518 = v894;
  if ((*v890)(v517, 1, v894) != 1)
  {
    sub_1BAB22FC0(v883);

    v602 = v816;
    (*v885)(v816, v517, v518);
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v603 = sub_1BABE72BC();
    __swift_project_value_buffer(v603, qword_1ED78BBA0);
    v604 = v802;
    (*(v874 + 16))(v802, v602, v518);
    v605 = v803;
    sub_1BAB92C54(v886, v803, type metadata accessor for ReplicatorRecord.ID);
    v606 = sub_1BABE729C();
    v607 = sub_1BABE78EC();
    v608 = os_log_type_enabled(v606, v607);
    v483 = v857;
    if (v608)
    {
      v609 = swift_slowAlloc();
      v610 = v604;
      v611 = swift_slowAlloc();
      v897 = v611;
      *v609 = 136446466;
      sub_1BAB92D38(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
      v612 = sub_1BABE7EAC();
      v614 = v613;
      v615 = *v888;
      (*v888)(v610, v894);
      v616 = sub_1BAAFA460(v612, v614, &v897);

      *(v609 + 4) = v616;
      *(v609 + 12) = 2082;
      v617 = ReplicatorRecord.ID.description.getter();
      v619 = v618;
      sub_1BAB92CD8(v605, type metadata accessor for ReplicatorRecord.ID);
      v620 = sub_1BAAFA460(v617, v619, &v897);

      *(v609 + 14) = v620;
      _os_log_impl(&dword_1BAACF000, v606, v607, "Local record contains a missing URL: %{public}s; deleting local copy of %{public}s", v609, 0x16u);
      swift_arrayDestroy();
      v482 = v887;
      v483 = v857;
      MEMORY[0x1BFAFE460](v611, -1, -1);
      v621 = v609;
      v476 = v835;
      MEMORY[0x1BFAFE460](v621, -1, -1);
    }

    else
    {

      sub_1BAB92CD8(v605, type metadata accessor for ReplicatorRecord.ID);
      v692 = v518;
      v615 = *v888;
      (*v888)(v604, v692);
    }

    v549 = v879;
    v510 = v873;
    sub_1BAB91714(v483, v891);

    sub_1BAB7F5D0(v483);
    v887 = v482;
    if (v482)
    {

      v615(v816, v894);
      sub_1BAAD2E14(v822, &unk_1EBC12B50);
LABEL_242:
      sub_1BAAD2E14(v476, &qword_1EBC12E08);
      v550 = v483;
      goto LABEL_279;
    }

    v701 = v789;
    sub_1BAB92C54(v483, v789, type metadata accessor for ReplicatorRecord.ID);
    swift_storeEnumTagMultiPayload();
    v702 = v863;
    v703 = *v863;
    v704 = swift_isUniquelyReferenced_nonNull_native();
    *v702 = v703;
    v705 = v894;
    if ((v704 & 1) == 0)
    {
      v703 = sub_1BAAF9A7C(0, v703[2] + 1, 1, v703);
      *v863 = v703;
    }

    v707 = v703[2];
    v706 = v703[3];
    if (v707 >= v706 >> 1)
    {
      v777 = sub_1BAAF9A7C(v706 > 1, v707 + 1, 1, v703);
      *v863 = v777;
      v701 = v789;
    }

    v615(v816, v705);
    sub_1BAAD2E14(v822, &unk_1EBC12B50);
    sub_1BAAD2E14(v835, &qword_1EBC12E08);
    v708 = *v863;
    *(v708 + 16) = v707 + 1;
    v709 = v708 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v707;
    v710 = v701;
LABEL_272:
    sub_1BAB92E38(v710, v709, type metadata accessor for ReplicatorRecordChange);
    v598 = v483;
    goto LABEL_295;
  }

  sub_1BAAD2E14(v514, &unk_1EBC12B50);
  sub_1BAAD2E14(v517, &unk_1EBC13D70);
  v483 = v857;
LABEL_140:
  v519 = v821;
  sub_1BABE6E9C();
  v520 = v868;
  v521 = v867;
  v522 = (*(v868 + 48))(v519, 1, v867);
  v523 = v823;
  if (v522 == 1)
  {
    sub_1BAAD2E14(v519, &qword_1EBC132A0);
    goto LABEL_205;
  }

  (*(v520 + 32))(v823, v519, v521);
  v566 = v806;
  sub_1BABE6C7C();
  v567 = sub_1BABE6C3C();
  v570 = *(v520 + 8);
  v568 = v520 + 8;
  v569 = v570;
  v570(v566, v521);
  if ((v567 & 1) == 0)
  {
    v569(v523, v521);
    v483 = v857;
LABEL_205:
    v643 = v817;
    v644 = v891;
    if (v883)
    {
      if (v883 == 1)
      {

        if (qword_1ED7876D0 != -1)
        {
          swift_once();
        }

        v645 = sub_1BABE72BC();
        __swift_project_value_buffer(v645, qword_1ED78BBA0);
        sub_1BAB92C54(v483, v643, type metadata accessor for ReplicatorRecord);
        v646 = sub_1BABE729C();
        v647 = sub_1BABE790C();
        if (os_log_type_enabled(v646, v647))
        {
          v648 = swift_slowAlloc();
          v649 = swift_slowAlloc();
          v897 = v649;
          *v648 = 136446210;
          v650 = ReplicatorRecord.ID.description.getter();
          v652 = v651;
          sub_1BAB92CD8(v643, type metadata accessor for ReplicatorRecord);
          v653 = sub_1BAAFA460(v650, v652, &v897);

          *(v648 + 4) = v653;
          _os_log_impl(&dword_1BAACF000, v646, v647, "Local record for destination collection does not exist in replicator but has no valid destinations; deleting local copy of %{public}s", v648, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v649);
          v654 = v649;
          v644 = v891;
          MEMORY[0x1BFAFE460](v654, -1, -1);
          v655 = v648;
          v476 = v835;
          MEMORY[0x1BFAFE460](v655, -1, -1);
        }

        else
        {

          sub_1BAB92CD8(v643, type metadata accessor for ReplicatorRecord);
        }

        v549 = v879;
        v510 = v873;
        v694 = v887;
        sub_1BAB91714(v483, v644);

        sub_1BAB7F5D0(v483);
        v887 = v694;
        if (v694)
        {

          goto LABEL_242;
        }

        v727 = v785;
        sub_1BAB92C54(v483, v785, type metadata accessor for ReplicatorRecord.ID);
        swift_storeEnumTagMultiPayload();
        v728 = v863;
        v729 = *v863;
        v730 = swift_isUniquelyReferenced_nonNull_native();
        *v728 = v729;
        if ((v730 & 1) == 0)
        {
          v729 = sub_1BAAF9A7C(0, v729[2] + 1, 1, v729);
          *v863 = v729;
        }

        v732 = v729[2];
        v731 = v729[3];
        if (v732 >= v731 >> 1)
        {
          v779 = sub_1BAAF9A7C(v731 > 1, v732 + 1, 1, v729);
          *v863 = v779;
        }

        sub_1BAAD2E14(v835, &qword_1EBC12E08);
        v733 = *v863;
        *(v733 + 16) = v732 + 1;
        v709 = v733 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v732;
        v710 = v727;
        goto LABEL_272;
      }

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v666 = sub_1BABE72BC();
      __swift_project_value_buffer(v666, qword_1ED78BBA0);
      v667 = v797;
      sub_1BAB92C54(v483, v797, type metadata accessor for ReplicatorRecord);
      v668 = sub_1BABE729C();
      v669 = sub_1BABE790C();
      if (os_log_type_enabled(v668, v669))
      {
        v670 = swift_slowAlloc();
        v671 = swift_slowAlloc();
        v897 = v671;
        *v670 = 136446210;
        v672 = ReplicatorRecord.ID.description.getter();
        v674 = v673;
        sub_1BAB92CD8(v667, type metadata accessor for ReplicatorRecord);
        v675 = sub_1BAAFA460(v672, v674, &v897);

        *(v670 + 4) = v675;
        _os_log_impl(&dword_1BAACF000, v668, v669, "Local record for destination collection does not exist in replicator; sending local copy of %{public}s", v670, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v671);
        MEMORY[0x1BFAFE460](v671, -1, -1);
        MEMORY[0x1BFAFE460](v670, -1, -1);
      }

      else
      {

        sub_1BAB92CD8(v667, type metadata accessor for ReplicatorRecord);
      }

      v711 = v849;
      v712 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
      v713 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
      __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v712);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128B0);
      v714 = (*(v711 + 80) + 32) & ~*(v711 + 80);
      v715 = swift_allocObject();
      *(v715 + 16) = xmmword_1BABE9F00;
      v716 = v857;
      sub_1BAB92C54(v857, v715 + v714, type metadata accessor for ReplicatorRecord);
      v717 = v883;
      v897 = v883;
      LOBYTE(v896) = v843 & 1;
      v718 = *(v713 + 24);

      v719 = v887;
      v718(v715, &v897, &v896, v712, v713);
      v556 = v719;
      if (v719)
      {

        sub_1BAB22FC0(v717);

        sub_1BAAD2E14(v835, &qword_1EBC12E08);
        sub_1BAB92CD8(v716, type metadata accessor for ReplicatorRecord);
        sub_1BAAD2E14(v879, &qword_1EBC12B60);
        goto LABEL_164;
      }

      v897 = v717;
      sub_1BAB7C92C(v716, &v897);
      v887 = 0;
LABEL_290:

      v762 = v784;
      sub_1BAB92C54(v886, v784, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE6F3C();
      v763 = v783;
      sub_1BAB92C54(v762, v783, type metadata accessor for ReplicatorRecordVersion);
      swift_storeEnumTagMultiPayload();
      v764 = v863;
      v765 = *v863;
      v766 = swift_isUniquelyReferenced_nonNull_native();
      *v764 = v765;
      if ((v766 & 1) == 0)
      {
        v765 = sub_1BAAF9A7C(0, v765[2] + 1, 1, v765);
        *v863 = v765;
      }

      v767 = v857;
      v769 = v765[2];
      v768 = v765[3];
      if (v769 >= v768 >> 1)
      {
        v782 = sub_1BAAF9A7C(v768 > 1, v769 + 1, 1, v765);
        *v863 = v782;
      }

      sub_1BAB22FC0(v883);

      sub_1BAB92CD8(v762, type metadata accessor for ReplicatorRecordVersion);
      sub_1BAAD2E14(v835, &qword_1EBC12E08);
      v770 = *v863;
      *(v770 + 16) = v769 + 1;
      sub_1BAB92E38(v763, v770 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v769, type metadata accessor for ReplicatorRecordChange);
      v598 = v767;
      goto LABEL_295;
    }

    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v656 = sub_1BABE72BC();
    __swift_project_value_buffer(v656, qword_1ED78BBA0);
    v657 = v796;
    sub_1BAB92C54(v483, v796, type metadata accessor for ReplicatorRecord);
    v658 = sub_1BABE729C();
    v659 = sub_1BABE790C();
    if (os_log_type_enabled(v658, v659))
    {
      v660 = swift_slowAlloc();
      v661 = swift_slowAlloc();
      v897 = v661;
      *v660 = 136446210;
      v662 = ReplicatorRecord.ID.description.getter();
      v664 = v663;
      sub_1BAB92CD8(v657, type metadata accessor for ReplicatorRecord);
      v665 = sub_1BAAFA460(v662, v664, &v897);

      *(v660 + 4) = v665;
      _os_log_impl(&dword_1BAACF000, v658, v659, "Local record for all destinations does not exist in replicator; sending local copy of %{public}s", v660, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v661);
      MEMORY[0x1BFAFE460](v661, -1, -1);
      MEMORY[0x1BFAFE460](v660, -1, -1);
    }

    else
    {

      sub_1BAB92CD8(v657, type metadata accessor for ReplicatorRecord);
    }

    v695 = v887;
    v696 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 24);
    v697 = *(v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient + 96);
    __swift_project_boxed_opaque_existential_1((v876 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_innerClient), v696);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC128B0);
    v698 = (*(v849 + 80) + 32) & ~*(v849 + 80);
    v699 = swift_allocObject();
    *(v699 + 16) = xmmword_1BABE9F00;
    sub_1BAB92C54(v483, v699 + v698, type metadata accessor for ReplicatorRecord);
    v897 = 0;
    LOBYTE(v896) = v843 & 1;
    (*(v697 + 24))(v699, &v897, &v896, v696, v697);
    v887 = v695;
    if (!v695)
    {

      v734 = v786;
      sub_1BAB92C54(v886, v786, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE6F3C();
      sub_1BAB92C54(v734, v790, type metadata accessor for ReplicatorRecordVersion);
      swift_storeEnumTagMultiPayload();
      v735 = v863;
      v736 = *v863;
      v737 = swift_isUniquelyReferenced_nonNull_native();
      *v735 = v736;
      if ((v737 & 1) == 0)
      {
        v736 = sub_1BAAF9A7C(0, v736[2] + 1, 1, v736);
        *v863 = v736;
      }

      v739 = v736[2];
      v738 = v736[3];
      if (v739 >= v738 >> 1)
      {
        v780 = sub_1BAAF9A7C(v738 > 1, v739 + 1, 1, v736);
        *v863 = v780;
      }

      sub_1BAB22FC0(0);

      sub_1BAB92CD8(v734, type metadata accessor for ReplicatorRecordVersion);
      sub_1BAAD2E14(v835, &qword_1EBC12E08);
      v740 = *v863;
      *(v740 + 16) = v739 + 1;
      v709 = v740 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v739;
      v710 = v790;
      goto LABEL_272;
    }

    sub_1BAB22FC0(0);
    sub_1BAAD2E14(v835, &qword_1EBC12E08);
    sub_1BAB92CD8(v483, type metadata accessor for ReplicatorRecord);
LABEL_130:
    sub_1BAAD2E14(v879, &qword_1EBC12B60);
    goto LABEL_163;
  }

  v868 = v568;
  sub_1BAB22FC0(v883);

  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v571 = sub_1BABE72BC();
  __swift_project_value_buffer(v571, qword_1ED78BBA0);

  v572 = sub_1BABE729C();
  v573 = sub_1BABE790C();

  if (os_log_type_enabled(v572, v573))
  {
    v574 = swift_slowAlloc();
    v575 = swift_slowAlloc();
    v897 = v575;
    *v574 = 136446210;
    v896 = sub_1BABE6EDC();
    sub_1BABE723C();
    sub_1BAB92D38(&qword_1EBC12828, MEMORY[0x1E69C7338]);
    v576 = sub_1BABE7EAC();
    v578 = v577;
    v521 = v867;

    v579 = sub_1BAAFA460(v576, v578, &v897);
    v580 = v887;

    *(v574 + 4) = v579;
    _os_log_impl(&dword_1BAACF000, v572, v573, "Local record has expired; deleting local copy of: %{public}s", v574, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v575);
    v581 = v575;
    v523 = v823;
    MEMORY[0x1BFAFE460](v581, -1, -1);
    MEMORY[0x1BFAFE460](v574, -1, -1);

    v549 = v879;
    v510 = v873;
  }

  else
  {

    v549 = v879;
    v510 = v873;
    v580 = v887;
  }

  v700 = v857;
  sub_1BAB91714(v857, v891);

  sub_1BAB7F5D0(v700);
  v887 = v580;
  if (!v580)
  {
    v741 = v787;
    sub_1BAB92C54(v700, v787, type metadata accessor for ReplicatorRecord.ID);
    swift_storeEnumTagMultiPayload();
    v742 = v863;
    v743 = *v863;
    v744 = swift_isUniquelyReferenced_nonNull_native();
    *v742 = v743;
    if ((v744 & 1) == 0)
    {
      v743 = sub_1BAAF9A7C(0, v743[2] + 1, 1, v743);
      *v863 = v743;
    }

    v746 = v743[2];
    v745 = v743[3];
    if (v746 >= v745 >> 1)
    {
      v781 = sub_1BAAF9A7C(v745 > 1, v746 + 1, 1, v743);
      *v863 = v781;
      v741 = v787;
    }

    v569(v523, v521);
    sub_1BAAD2E14(v835, &qword_1EBC12E08);
    v747 = *v863;
    *(v747 + 16) = v746 + 1;
    sub_1BAB92E38(v741, v747 + ((*(v845 + 80) + 32) & ~*(v845 + 80)) + *(v845 + 72) * v746, type metadata accessor for ReplicatorRecordChange);
    v598 = v857;
    goto LABEL_295;
  }

  v569(v523, v521);
  sub_1BAAD2E14(v835, &qword_1EBC12E08);
  v550 = v700;
LABEL_279:
  sub_1BAB92CD8(v550, type metadata accessor for ReplicatorRecord);
  sub_1BAAD2E14(v549, &qword_1EBC12B60);
LABEL_280:
  v556 = v887;
LABEL_281:
  v887 = 0;
LABEL_282:
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v748 = sub_1BABE72BC();
  __swift_project_value_buffer(v748, qword_1ED78BBA0);
  sub_1BAB92C54(v886, v510, type metadata accessor for ReplicatorRecord.ID);
  v749 = v556;
  v750 = sub_1BABE729C();
  v751 = sub_1BABE78EC();

  if (os_log_type_enabled(v750, v751))
  {
    v752 = v510;
    v753 = swift_slowAlloc();
    v754 = swift_slowAlloc();
    v755 = swift_slowAlloc();
    v897 = v755;
    *v753 = 136446466;
    v756 = ReplicatorRecord.ID.description.getter();
    v758 = v757;
    sub_1BAB92CD8(v752, type metadata accessor for ReplicatorRecord.ID);
    v759 = sub_1BAAFA460(v756, v758, &v897);

    *(v753 + 4) = v759;
    *(v753 + 12) = 2114;
    v760 = v556;
    v761 = _swift_stdlib_bridgeErrorToNSError();
    *(v753 + 14) = v761;
    *v754 = v761;
    _os_log_impl(&dword_1BAACF000, v750, v751, "Could not sync mismatched record ID %{public}s: %{public}@", v753, 0x16u);
    sub_1BAAD2E14(v754, &qword_1EBC12A00);
    MEMORY[0x1BFAFE460](v754, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v755);
    MEMORY[0x1BFAFE460](v755, -1, -1);
    MEMORY[0x1BFAFE460](v753, -1, -1);

    return;
  }

  v564 = type metadata accessor for ReplicatorRecord.ID;
  v565 = v510;
LABEL_287:
  sub_1BAB92CD8(v565, v564);
}

uint64_t sub_1BAB8E088(uint64_t *a1, uint64_t *a2)
{
  v67 = a1;
  v3 = sub_1BABE6CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v66);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1BABE721C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - v17;
  v19 = *a2;
  v69 = a2[1];
  sub_1BABE722C();
  v20 = 1;
  if ((*(v4 + 48))(v10, 1, v3) != 1)
  {
    (*(v4 + 32))(v16, v10, v3);
    v20 = 0;
  }

  v62 = v4;
  v63 = v3;
  (*(v4 + 56))(v16, v20, 1, v3);
  sub_1BAB92E38(v16, v18, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v21 = sub_1BABE6EBC();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    sub_1BABE720C();
    v25 = sub_1BABE718C();
    v27 = v26;

    sub_1BABE720C();
    v28 = sub_1BABE717C();
    v30 = v29;

    v64 = v18;
    v31 = v18;
    v32 = v68;
    sub_1BAB92C54(v31, v68, type metadata accessor for ReplicatorRecord.ID.Ownership);
    *v7 = v23;
    v7[1] = v24;
    v7[2] = v25;
    v7[3] = v27;
    v7[4] = v28;
    v7[5] = v30;
    v33 = v66;
    sub_1BAB92C54(v32, v7 + *(v66 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);

    if (sub_1BABE75AC() <= 50)
    {
      v36 = v67;
    }

    else
    {
      v71[0] = v23;
      v71[1] = v24;
      v34 = v65;
      v35 = v70;
      sub_1BABE6E2C();
      v36 = v67;
      v70 = v35;
      if (v35)
      {

        v37 = sub_1BABC0B24(50);
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v23 = MEMORY[0x1BFAFD1F0](v37, v39, v41, v43);
        v45 = v44;

        v32 = v68;

        v70 = 0;
      }

      else
      {
        v23 = sub_1BABE6CAC();
        v45 = v56;
        (*(v62 + 8))(v34, v63);
      }

      v24 = v45;
    }

    sub_1BAB92CD8(v32, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v57 = (v7 + *(v33 + 32));
    *v57 = v23;
    v57[1] = v24;
    v58 = v69;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *v36;
    sub_1BAAE6ED4(v58, v7, isUniquelyReferenced_nonNull_native);
    *v36 = v71[0];
    sub_1BAB92CD8(v7, type metadata accessor for ReplicatorRecord.ID);
    v55 = v64;
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v46 = sub_1BABE72BC();
    __swift_project_value_buffer(v46, qword_1ED78BBA0);

    v47 = sub_1BABE729C();
    v48 = sub_1BABE78EC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = v18;
      v51 = swift_slowAlloc();
      v71[0] = v51;
      *v49 = 136446210;
      v71[3] = v19;
      sub_1BABE723C();
      sub_1BAB92D38(&qword_1EBC12828, MEMORY[0x1E69C7338]);
      v52 = sub_1BABE7EAC();
      v54 = sub_1BAAFA460(v52, v53, v71);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1BAACF000, v47, v48, "Missing client defined ID for record %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFAFE460](v51, -1, -1);
      MEMORY[0x1BFAFE460](v49, -1, -1);

      v55 = v50;
    }

    else
    {

      v55 = v18;
    }
  }

  return sub_1BAB92CD8(v55, type metadata accessor for ReplicatorRecord.ID.Ownership);
}

uint64_t sub_1BAB8E70C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*(v3 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) != 2)
  {
    v4 = *(v3 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule);
  }

  *(v3 + OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_scheduledDatabaseSyncSchedule) = 2;
  v6 = v4 & 1;
  result = sub_1BAB83CE8(&v6);
  *a1 = result;
  return result;
}

unint64_t *sub_1BAB8E778(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    v10 = sub_1BAB92358(v9, a2, a3, a4, a5);

    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1BAB8E830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorRecord.ID(0);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A38);
  result = sub_1BABE7ACC();
  v19 = result;
  v48 = v8;
  v45 = v11;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = v49;
  v23 = v50;
  v24 = 0;
  v46 = a4;
  v47 = (v9 + 48);
  v43 = (v9 + 8);
  v44 = (v9 + 32);
  v25 = result + 56;
  while (v21)
  {
    v26 = __clz(__rbit64(v21));
    v52 = (v21 - 1) & v21;
LABEL_16:
    v29 = *(a4 + 48);
    v53 = *(v51 + 72);
    sub_1BAB92C54(v29 + v53 * (v26 | (v24 << 6)), v18, type metadata accessor for ReplicatorRecord.ID);
    sub_1BABE7F9C();
    sub_1BABE759C();
    sub_1BABE759C();
    sub_1BABE759C();
    sub_1BAB92C54(&v18[*(v23 + 28)], v22, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v30 = v48;
    if ((*v47)(v22, 1, v48) == 1)
    {
      MEMORY[0x1BFAFDC20](0);
    }

    else
    {
      v31 = v45;
      (*v44)(v45, v22, v30);
      MEMORY[0x1BFAFDC20](1);
      sub_1BAB92D38(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      sub_1BABE74BC();
      v32 = v31;
      v23 = v50;
      (*v43)(v32, v30);
    }

    sub_1BABE759C();
    result = sub_1BABE7FDC();
    v33 = -1 << *(v19 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v25 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v22 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v25 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v25 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v22 = v49;
LABEL_29:
    *(v25 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    result = sub_1BAB92E38(v18, *(v19 + 48) + v36 * v53, type metadata accessor for ReplicatorRecord.ID);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v46;
    v21 = v52;
    if (!a3)
    {
LABEL_31:

      return v19;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      goto LABEL_31;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v52 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BAB8ED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v31 = a2;
  v4 = sub_1BABE737C();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v35 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BABE6BAC();
  v7 = *(v30 - 8);
  v29 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v28 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1BABE793C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BABE73BC();
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = type metadata accessor for RecordDataPersistentStore();
  v41[4] = &protocol witness table for RecordDataPersistentStore;
  v41[0] = a1;
  v27[1] = sub_1BAAD14BC();

  sub_1BABE738C();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8098], v10);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BAB92D38(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1598(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  v16 = sub_1BABE796C();
  sub_1BAAE779C(v41, v40);
  v17 = v28;
  v18 = v30;
  (*(v7 + 16))(v28, v31, v30);
  v19 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v20 = (v29 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1BAAE7A7C(v40, v21 + 16);
  (*(v7 + 32))(v21 + v19, v17, v18);
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = sub_1BAB92D9C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_84;
  v22 = _Block_copy(aBlock);
  v23 = v16;

  sub_1BABE739C();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BAB92D38(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1598(&qword_1ED787C90, &unk_1EBC12AA0);
  v25 = v35;
  v24 = v36;
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v15, v25, v22);
  _Block_release(v22);

  (*(v37 + 8))(v25, v24);
  (*(v33 + 8))(v15, v34);

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1BAB8F320@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_lock_recordObservers;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1BAB8F398@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1BAB8F3DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v95 = &v78 - v2;
  v94 = type metadata accessor for ReplicatorRecord.Value(0);
  v92 = *(v94 - 8);
  v3 = MEMORY[0x1EEE9AC00](v94);
  v100 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v93 = (&v78 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v78 - v7;
  v82 = type metadata accessor for ReplicatorRecord(0);
  v8 = MEMORY[0x1EEE9AC00](v82);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v78 - v11;
  v12 = sub_1BABE728C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BABE721C();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v112 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v115 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v78 - v22;
  v23 = sub_1BABE6CFC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ReplicatorRecord.ID(0);
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v30 = (&v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v27 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v91 = v12;
  v32 = 0;
  v106 = (v24 + 8);
  v107 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_metadataStore;
  v80 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_recordDataStore;
  v101 = (v24 + 32);
  v104 = (v24 + 56);
  v105 = (v24 + 48);
  v89 = v13 + 16;
  v33 = MEMORY[0x1E69E7CC8];
  v90 = v13;
  v88 = (v13 + 8);
  *&v28 = 138543362;
  v96 = v28;
  v34 = v27;
  v109 = v27;
  v79 = v10;
  v108 = v23;
  v114 = v26;
  v103 = v31;
LABEL_3:
  v84 = v33;
  v35 = v98;
  v36 = v34;
  do
  {
    if (v32 >= v31)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_1BABE7EFC();
      __break(1u);
      return result;
    }

    if (__OFADD__(v32, 1))
    {
      goto LABEL_36;
    }

    v118 = v32 + 1;
    sub_1BAB92C54(v36 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v32, v30, type metadata accessor for ReplicatorRecord.ID);
    v37 = v30[1];
    v116 = *v30;
    v117 = v37;

    sub_1BABE6E2C();

    if (v0)
    {
      sub_1BAB92CD8(v30, type metadata accessor for ReplicatorRecord.ID);
      v33 = v84;

      return v33;
    }

    sub_1BABE6CAC();
    (*v106)(v26, v23);
    sub_1BAB92C54(v30 + *(v110 + 28), v35, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v38 = 1;
    if ((*v105)(v35, 1, v23) != 1)
    {
      (*v101)(v115, v35, v23);
      v38 = 0;
    }

    v39 = v115;
    (*v104)(v115, v38, 1, v23);
    v40 = v111;
    sub_1BAB92E38(v39, v111, MEMORY[0x1E69C7330]);
    sub_1BABE71AC();
    sub_1BABE719C();
    sub_1BAB92C54(v40, v112, MEMORY[0x1E69C7330]);
    sub_1BABE723C();
    swift_allocObject();
    v41 = sub_1BABE71EC();
    sub_1BAB92CD8(v40, MEMORY[0x1E69C7330]);

    v102 = sub_1BAAF1B04();

    v23 = v108;
    v36 = v109;
    v26 = v114;
    if (v102)
    {
      v78 = v41;
      v42 = RecordDataPersistentStore.recordData(recordID:)(v41);
      v87 = *(v42 + 16);
      if (v87)
      {
        v43 = 0;
        v44 = v90;
        v86 = v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v45 = MEMORY[0x1E69E7CC8];
        v46 = v91;
        v85 = v42;
        while (1)
        {
          if (v43 >= *(v42 + 16))
          {
            goto LABEL_37;
          }

          (*(v44 + 16))(v99, v86 + *(v44 + 72) * v43, v46);
          v97 = sub_1BABE725C();
          v47 = sub_1BABE727C();
          v49 = v48;
          v50 = v95;
          sub_1BABE726C();
          v51 = *(v94 + 20);
          v52 = sub_1BABE6BAC();
          v53 = v93;
          (*(*(v52 - 8) + 56))(v93 + v51, 1, 1, v52);
          *v53 = v47;
          v53[1] = v49;
          sub_1BAAD7BA0(v50, v53 + v51, &unk_1EBC13D70);
          v54 = v53;
          v55 = v97;
          sub_1BAB92E38(v54, v100, type metadata accessor for ReplicatorRecord.Value);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v45;
          v58 = sub_1BABD5D84(v55);
          v59 = v45[2];
          v60 = (v57 & 1) == 0;
          v61 = v59 + v60;
          if (__OFADD__(v59, v60))
          {
            goto LABEL_38;
          }

          v62 = v57;
          if (v45[3] >= v61)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v45 = v116;
              if (v57)
              {
                goto LABEL_14;
              }
            }

            else
            {
              sub_1BABDD980();
              v45 = v116;
              if (v62)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            sub_1BABD997C(v61, isUniquelyReferenced_nonNull_native);
            v63 = sub_1BABD5D84(v55);
            if ((v62 & 1) != (v64 & 1))
            {
              goto LABEL_40;
            }

            v58 = v63;
            v45 = v116;
            if (v62)
            {
LABEL_14:
              sub_1BAB400BC(v100, v45[7] + *(v92 + 72) * v58);
              v46 = v91;
              (*v88)(v99, v91);
              goto LABEL_15;
            }
          }

          v45[(v58 >> 6) + 8] |= 1 << v58;
          *(v45[6] + 8 * v58) = v55;
          sub_1BAB92E38(v100, v45[7] + *(v92 + 72) * v58, type metadata accessor for ReplicatorRecord.Value);
          v46 = v91;
          (*v88)(v99, v91);
          v65 = v45[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_39;
          }

          v45[2] = v67;
LABEL_15:
          ++v43;
          v44 = v90;
          v26 = v114;
          v42 = v85;
          if (v87 == v43)
          {
            goto LABEL_29;
          }
        }
      }

      v45 = MEMORY[0x1E69E7CC8];
LABEL_29:

      v68 = v81;
      sub_1BAB92C54(v30, v81, type metadata accessor for ReplicatorRecord.ID);
      v69 = v82;
      sub_1BABE6F3C();
      v70 = sub_1BABE6C8C();
      v71 = *(*(v70 - 8) + 56);
      v71(v83, 1, 1, v70);
      v72 = v71;
      v73 = v69[7];
      v72(v68 + v73, 1, 1, v70);
      *(v68 + v69[6]) = v45;
      sub_1BAAD7BA0(v83, v68 + v73, &qword_1EBC132A0);
      *(v68 + v69[8]) = 0;
      v74 = v79;
      sub_1BAB92C54(v68, v79, type metadata accessor for ReplicatorRecord);
      v75 = v84;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v116 = v75;
      sub_1BAAE6740(v74, v30, v76);

      v33 = v116;
      sub_1BAB92CD8(v68, type metadata accessor for ReplicatorRecord);
      sub_1BAB92CD8(v30, type metadata accessor for ReplicatorRecord.ID);
      v31 = v103;
      v32 = v118;
      v23 = v108;
      v34 = v109;
      if (v118 == v103)
      {
        return v33;
      }

      goto LABEL_3;
    }

    sub_1BAB92CD8(v30, type metadata accessor for ReplicatorRecord.ID);

    ++v32;
    v31 = v103;
  }

  while (v118 != v103);
  return v84;
}

uint64_t sub_1BAB901F8(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  v173 = *MEMORY[0x1E69E9840];
  v156 = sub_1BABE6AFC();
  v170 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v123 - v5;
  v7 = sub_1BABE6BAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v162 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v123 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v123 - v14;
  v16 = sub_1BABE728C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v139 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BABE721C();
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v135 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v138 = &v123 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v123 - v26;
  v137 = sub_1BABE6CFC();
  v27 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for ReplicatorRecord.ID(0);
  v29 = MEMORY[0x1EEE9AC00](v133);
  v125 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v143 = (&v123 - v33);
  v126 = *(a1 + 16);
  if (!v126)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v169 = v15;
  v34 = 0;
  v130 = OBJC_IVAR____TtC18ReplicatorServices31ReplicatorClientWithPersistence_recordDataStore;
  v129 = (v27 + 8);
  v128 = (v27 + 48);
  v124 = (v27 + 32);
  v127 = (v27 + 56);
  v35 = v17 + 16;
  v164 = (v8 + 48);
  v161 = (v8 + 32);
  v154 = *MEMORY[0x1E6968F68];
  v153 = (v170 + 13);
  v152 = (v170 + 1);
  v148 = (v8 + 16);
  v150 = (v8 + 8);
  v167 = v17;
  v163 = (v17 + 8);
  v147 = v8;
  v144 = v8 + 40;
  v132 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v36 = MEMORY[0x1E69E7CC8];
  v131 = *(v31 + 72);
  *&v32 = 138543362;
  v123 = v32;
  v159 = v13;
  v37 = v143;
  v38 = v137;
  v39 = v136;
  v145 = v35;
  v151 = v16;
  v149 = v6;
  while (1)
  {
    v140 = v34;
    sub_1BAB92C54(v132 + v131 * v34, v37, type metadata accessor for ReplicatorRecord.ID);
    v44 = v37[1];
    v171 = *v37;
    v172 = v44;
    v45 = v146;
    sub_1BABE6E2C();
    v146 = v45;
    if (v45)
    {
      sub_1BAB92CD8(v37, type metadata accessor for ReplicatorRecord.ID);

      return v36;
    }

    v142 = v36;
    v170 = sub_1BABE6CAC();
    (*v129)(v39, v38);
    v46 = v139;
    sub_1BAB92C54(v37 + *(v133 + 28), v139, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v47 = 1;
    if ((*v128)(v46, 1, v38) != 1)
    {
      (*v124)(v138, v139, v38);
      v47 = 0;
    }

    v48 = v138;
    (*v127)(v138, v47, 1, v38);
    v49 = v134;
    sub_1BAB92E38(v48, v134, MEMORY[0x1E69C7330]);
    sub_1BABE71AC();
    sub_1BABE719C();
    sub_1BAB92C54(v49, v135, MEMORY[0x1E69C7330]);
    sub_1BABE723C();
    swift_allocObject();
    v50 = sub_1BABE71EC();
    sub_1BAB92CD8(v49, MEMORY[0x1E69C7330]);

    v141 = v50;
    v51 = v146;
    v52 = sub_1BAAE0D38();
    if (v51)
    {

      v53 = v168;
      if (qword_1EBC12270 != -1)
      {
        swift_once();
      }

      v54 = sub_1BABE72BC();
      __swift_project_value_buffer(v54, qword_1EBC25018);
      v55 = v51;
      v56 = sub_1BABE729C();
      v57 = sub_1BABE78EC();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = v123;
        v60 = v51;
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 4) = v61;
        *v59 = v61;
        _os_log_impl(&dword_1BAACF000, v56, v57, "Could not fetch record data: %{public}@", v58, 0xCu);
        sub_1BAAD2E14(v59, &qword_1EBC12A00);
        v62 = v59;
        v13 = v159;
        MEMORY[0x1BFAFE460](v62, -1, -1);
        v63 = v58;
        v53 = v168;
        MEMORY[0x1BFAFE460](v63, -1, -1);
      }

      v64 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v65 = v52;

      v64 = v65;
      v53 = v168;
    }

    v146 = 0;
    v66 = *(v64 + 16);
    v67 = v167;
    v158 = v64;
    v166 = v66;
    if (v66)
    {
      break;
    }

    v170 = MEMORY[0x1E69E7CC8];
LABEL_41:

    v109 = v142;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = v109;
    v111 = sub_1BABD5D18(v143);
    v113 = v109[2];
    v114 = (v112 & 1) == 0;
    v99 = __OFADD__(v113, v114);
    v115 = v113 + v114;
    if (v99)
    {
      goto LABEL_58;
    }

    v116 = v112;
    if (v109[3] >= v115)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v118 = v111;
        sub_1BABDD740();
        v111 = v118;
      }
    }

    else
    {
      sub_1BABD93E0(v115, isUniquelyReferenced_nonNull_native);
      v111 = sub_1BABD5D18(v143);
      if ((v116 & 1) != (v117 & 1))
      {
LABEL_60:
        result = sub_1BABE7EFC();
        __break(1u);
        return result;
      }
    }

    v13 = v159;
    v36 = v171;
    if (v116)
    {
      *(v171[7] + 8 * v111) = v170;

      v37 = v143;
    }

    else
    {
      v40 = v111;
      v37 = v143;
      v41 = v125;
      sub_1BAB92C54(v143, v125, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB3F620(v40, v41, v170, v36);
    }

    v42 = v140 + 1;
    sub_1BAB92CD8(v37, type metadata accessor for ReplicatorRecord.ID);
    v34 = v42;
    v43 = v42 == v126;
    v38 = v137;
    v39 = v136;
    if (v43)
    {
      return v36;
    }
  }

  v68 = 0;
  v165 = v64 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v170 = MEMORY[0x1E69E7CC8];
  v69 = v158;
  while (1)
  {
    if (v68 >= *(v69 + 16))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    (*(v67 + 16))(v53, v165 + *(v67 + 72) * v68, v16);
    sub_1BABE726C();
    if ((*v164)(v6, 1, v7) == 1)
    {
      (*v163)(v53, v16);
      sub_1BAAD2E14(v6, &unk_1EBC13D70);
      goto LABEL_18;
    }

    v160 = *v161;
    v160(v169, v6, v7);
    v171 = sub_1BABE6B1C();
    v172 = v70;
    v72 = v155;
    v71 = v156;
    (*v153)(v155, v154, v156);
    sub_1BAAFBFA8();
    sub_1BABE6B9C();
    (*v152)(v72, v71);

    sub_1BAB92D38(&qword_1EBC13C78, MEMORY[0x1E6968FB0]);
    v73 = v7;
    if ((sub_1BABE74DC() & 1) == 0)
    {
      break;
    }

    v69 = v158;
LABEL_29:
    v92 = sub_1BABE725C();
    (*v148)(v162, v13, v7);
    v93 = v170;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v171 = v93;
    v95 = sub_1BABD5D84(v92);
    v97 = v93[2];
    v98 = (v96 & 1) == 0;
    v99 = __OFADD__(v97, v98);
    v100 = v97 + v98;
    v6 = v149;
    if (v99)
    {
      goto LABEL_56;
    }

    v101 = v96;
    if (v93[3] >= v100)
    {
      v103 = v147;
      if ((v94 & 1) == 0)
      {
        v108 = v95;
        sub_1BABDDD5C();
        v103 = v147;
        v95 = v108;
        v69 = v158;
      }

      v13 = v159;
    }

    else
    {
      sub_1BABD9F88(v100, v94);
      v95 = sub_1BABD5D84(v92);
      if ((v101 & 1) != (v102 & 1))
      {
        sub_1BABE7EFC();
        __break(1u);
        goto LABEL_60;
      }

      v13 = v159;
      v103 = v147;
    }

    v170 = v171;
    if (v101)
    {
      (*(v103 + 40))(v171[7] + *(v103 + 72) * v95, v162, v7);
      v104 = *(v103 + 8);
      v104(v13, v7);
      v104(v169, v7);
      v53 = v168;
      v16 = v151;
      (*v163)(v168, v151);
    }

    else
    {
      v171[(v95 >> 6) + 8] |= 1 << v95;
      *(v170[6] + 8 * v95) = v92;
      v160((v170[7] + *(v103 + 72) * v95), v162, v7);
      v105 = *(v103 + 8);
      v105(v13, v7);
      v105(v169, v7);
      v53 = v168;
      v16 = v151;
      (*v163)(v168, v151);
      v106 = v170[2];
      v99 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v99)
      {
        goto LABEL_57;
      }

      v170[2] = v107;
    }

LABEL_18:
    v67 = v167;
    if (v166 == ++v68)
    {
      goto LABEL_41;
    }
  }

  v74 = objc_opt_self();
  v75 = v13;
  v76 = [v74 defaultManager];
  v77 = sub_1BABE6B2C();
  v78 = sub_1BABE6B2C();
  v171 = 0;
  v79 = [v76 copyItemAtURL:v77 toURL:v78 error:&v171];

  v69 = v158;
  if (v79)
  {
    v80 = v171;
    v13 = v75;
LABEL_28:
    v7 = v73;
    goto LABEL_29;
  }

  v81 = v171;
  v82 = sub_1BABE6ADC();

  swift_willThrow();
  v83 = [v74 defaultManager];
  v84 = sub_1BABE6B2C();
  v171 = 0;
  v85 = [v83 removeItemAtURL:v84 error:&v171];

  if (!v85)
  {
    v119 = v171;

    v36 = v142;

    sub_1BABE6ADC();

    swift_willThrow();

    v120 = *v150;
    (*v150)(v75, v73);
    goto LABEL_52;
  }

  v86 = v171;
  v87 = [v74 defaultManager];
  v88 = sub_1BABE6B2C();
  v89 = sub_1BABE6B2C();
  v171 = 0;
  v90 = [v87 copyItemAtURL:v88 toURL:v89 error:&v171];

  if (v90)
  {
    v91 = v171;

    v146 = 0;
    v13 = v159;
    goto LABEL_28;
  }

  v121 = v171;

  v36 = v142;

  sub_1BABE6ADC();

  swift_willThrow();

  v120 = *v150;
  (*v150)(v159, v73);
LABEL_52:
  v120(v169, v73);
  (*v163)(v168, v151);
  sub_1BAB92CD8(v143, type metadata accessor for ReplicatorRecord.ID);
  return v36;
}

uint64_t sub_1BAB914B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MetadataPersistentStore.recordMetadataWithClientDefinedIDs(clientID:)(a2, a3);
  v22 = MEMORY[0x1E69E7CC8];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_1BABE7C1C() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v11;
    v14 = v6;
    v15 = v11;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v18 = *(*(v7 + 48) + v17);
    v19 = *(*(v7 + 56) + v17);

    if (!v18)
    {
LABEL_18:
      sub_1BAAF10B4();

      return v22;
    }

    while (1)
    {
      v21[0] = v18;
      v21[1] = v19;
      sub_1BAB8E088(&v22, v21);

      v11 = v15;
      v6 = v16;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BABE7C7C())
      {
        sub_1BABE723C();
        swift_dynamicCast();
        v18 = v21[0];
        sub_1BABE6F4C();
        swift_dynamicCast();
        v19 = v21[0];
        v15 = v11;
        v16 = v6;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  sub_1BAAF10B4();

  __break(1u);
  return result;
}

uint64_t sub_1BAB91714(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v89[1] = *MEMORY[0x1E69E9840];
  v72 = type metadata accessor for ReplicatorRecord.ID(0);
  v3 = MEMORY[0x1EEE9AC00](v72);
  v5 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v68 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v68 - v9;
  v11 = sub_1BABE6BAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v77 = &v68 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = *(a2 + 16);
  if (v21)
  {
    v22 = *(sub_1BABE728C() - 8);
    v23 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = (v12 + 48);
    v74 = (v12 + 32);
    v83 = *(v22 + 72);
    v80 = (v12 + 16);
    v85 = (v12 + 8);
    *&v25 = 136446466;
    v69 = v25;
    *&v25 = 136446722;
    v68 = v25;
    v86 = v5;
    v76 = v7;
    v71 = v10;
    v70 = v15;
    v81 = v20;
    v75 = (v12 + 48);
    do
    {
      sub_1BABE726C();
      if ((*v24)(v10, 1, v11) == 1)
      {
        result = sub_1BAAD2E14(v10, &unk_1EBC13D70);
      }

      else
      {
        (*v74)(v20, v10, v11);
        if (qword_1ED7876D0 != -1)
        {
          swift_once();
        }

        v26 = sub_1BABE72BC();
        v27 = __swift_project_value_buffer(v26, qword_1ED78BBA0);
        v28 = v77;
        v78 = *v80;
        v78(v77, v20, v11);
        sub_1BAB92C54(v82, v7, type metadata accessor for ReplicatorRecord.ID);
        v79 = v27;
        v29 = sub_1BABE729C();
        v30 = sub_1BABE790C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = v28;
          v73 = swift_slowAlloc();
          v89[0] = v73;
          *v31 = v69;
          sub_1BAB92D38(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
          v33 = sub_1BABE7EAC();
          v35 = v34;
          v84 = *v85;
          v84(v32, v11);
          v36 = sub_1BAAFA460(v33, v35, v89);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_1BABE7AEC();
          MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
          MEMORY[0x1BFAFD240](*(v7 + *(v72 + 32)), *(v7 + *(v72 + 32) + 8));
          MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x1BFAFD240](v7[2], v7[3]);
          MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
          MEMORY[0x1BFAFD240](v7[4], v7[5]);
          MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
          type metadata accessor for ReplicatorRecord.ID.Ownership(0);
          sub_1BABE7BFC();
          v37 = v87;
          v38 = v88;
          sub_1BAB92CD8(v7, type metadata accessor for ReplicatorRecord.ID);
          v39 = sub_1BAAFA460(v37, v38, v89);
          v5 = v86;

          *(v31 + 14) = v39;
          _os_log_impl(&dword_1BAACF000, v29, v30, "Deleting file at %{public}s from %{public}s", v31, 0x16u);
          v40 = v73;
          swift_arrayDestroy();
          MEMORY[0x1BFAFE460](v40, -1, -1);
          v41 = v31;
          v10 = v71;
          MEMORY[0x1BFAFE460](v41, -1, -1);
        }

        else
        {

          sub_1BAB92CD8(v7, type metadata accessor for ReplicatorRecord.ID);
          v84 = *v85;
          v84(v28, v11);
        }

        v42 = [objc_opt_self() defaultManager];
        v20 = v81;
        v43 = sub_1BABE6B2C();
        v87 = 0;
        v44 = [v42 removeItemAtURL:v43 error:&v87];

        v45 = v87;
        if (v44)
        {
          result = (v84)(v20, v11);
        }

        else
        {
          v46 = v45;
          v47 = sub_1BABE6ADC();

          swift_willThrow();
          v48 = v70;
          v78(v70, v20, v11);
          sub_1BAB92C54(v82, v5, type metadata accessor for ReplicatorRecord.ID);
          v49 = v47;
          v50 = sub_1BABE729C();
          v51 = sub_1BABE790C();

          v79 = v50;
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v89[0] = swift_slowAlloc();
            v54 = v89[0];
            *v52 = v68;
            sub_1BAB92D38(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
            LODWORD(v78) = v51;
            v55 = sub_1BABE7EAC();
            v57 = v56;
            v84(v48, v11);
            v58 = sub_1BAAFA460(v55, v57, v89);

            *(v52 + 4) = v58;
            *(v52 + 12) = 2082;
            v87 = 0;
            v88 = 0xE000000000000000;
            sub_1BABE7AEC();
            MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
            MEMORY[0x1BFAFD240](*(v86 + *(v72 + 32)), *(v86 + *(v72 + 32) + 8));
            MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
            MEMORY[0x1BFAFD240](v86[2], v86[3]);
            MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
            MEMORY[0x1BFAFD240](v86[4], v86[5]);
            MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
            type metadata accessor for ReplicatorRecord.ID.Ownership(0);
            sub_1BABE7BFC();
            v59 = v87;
            v60 = v88;
            sub_1BAB92CD8(v86, type metadata accessor for ReplicatorRecord.ID);
            v61 = sub_1BAAFA460(v59, v60, v89);
            v5 = v86;

            *(v52 + 14) = v61;
            *(v52 + 22) = 2114;
            v62 = v47;
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v52 + 24) = v63;
            v64 = v53;
            *v53 = v63;
            v65 = v79;
            _os_log_impl(&dword_1BAACF000, v79, v78, "Failed to delete file at %{public}s from %{public}s: %{public}@", v52, 0x20u);
            sub_1BAAD2E14(v64, &qword_1EBC12A00);
            MEMORY[0x1BFAFE460](v64, -1, -1);
            swift_arrayDestroy();
            MEMORY[0x1BFAFE460](v54, -1, -1);
            v66 = v52;
            v10 = v71;
            MEMORY[0x1BFAFE460](v66, -1, -1);

            v20 = v81;
            result = (v84)(v81, v11);
          }

          else
          {

            sub_1BAB92CD8(v5, type metadata accessor for ReplicatorRecord.ID);
            v67 = v84;
            v84(v48, v11);
            v20 = v81;
            result = v67(v81, v11);
          }
        }

        v24 = v75;
        v7 = v76;
      }

      v23 += v83;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t sub_1BAB92270(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAB92358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v27 = a4;
  v23 = a2;
  v24 = a1;
  v7 = type metadata accessor for ReplicatorRecord.ID(0);
  v26 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = 0;
  v11 = 0;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 56);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v11 << 6);
    sub_1BAB92C54(*(a3 + 48) + *(v26 + 72) * v19, v10, type metadata accessor for ReplicatorRecord.ID);
    v20 = sub_1BAB82984(v10, v27, v28);
    result = sub_1BAB92CD8(v10, type metadata accessor for ReplicatorRecord.ID);
    if (v5)
    {
      return result;
    }

    if (v20)
    {
      *(v24 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1BAB8E830(v24, v23, v25, a3);
      }
    }
  }

  v17 = v11;
  while (1)
  {
    v11 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v11 >= v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 56 + 8 * v11);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB92568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v9) = *(a1 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;
  v34 = a2;

  v33 = a3;

  if (v11 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v28 = v12;
    v30 = &v28;
    MEMORY[0x1EEE9AC00](v14);
    v29 = &v28 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v13);
    v31 = 0;
    v13 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v21 = v18 | (v13 << 6);
      sub_1BAB92C54(*(a1 + 48) + *(v32 + 72) * v21, v10, type metadata accessor for ReplicatorRecord.ID);
      v22 = sub_1BAB82984(v10, v34, v33);
      sub_1BAB92CD8(v10, type metadata accessor for ReplicatorRecord.ID);
      if (v4)
      {

        swift_willThrow();

        return v12;
      }

      if (v22)
      {
        *&v29[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          v12 = sub_1BAB8E830(v29, v28, v31, a1);

          return v12;
        }
      }
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v20 = *(a1 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v34;

  v27 = v33;

  v12 = sub_1BAB8E778(v25, v12, a1, v26, v27);

  MEMORY[0x1BFAFE460](v25, -1, -1);

  return v12;
}

uint64_t objectdestroy_42Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BAB92B6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1BABE6CFC() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BAB92C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB92CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAB92D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAB92D9C()
{
  v1 = *(sub_1BABE6BAC() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BAB9EFD8((v0 + 16), v0 + v2, v3);
}

uint64_t sub_1BAB92E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t URL.simulatorRootRelativeURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BABE6BAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1BAB92F98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BABE6CFC();
  __swift_allocate_value_buffer(v3, qword_1EBC25000);
  v4 = __swift_project_value_buffer(v3, qword_1EBC25000);
  sub_1BABE6C9C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAB930C8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BAB97B58(*a1);
  *a2 = result;
  return result;
}

uint64_t Database.DatabaseError.hashValue.getter()
{
  sub_1BABE7F9C();
  MEMORY[0x1BFAFDC20](0);
  return sub_1BABE7FDC();
}

uint64_t Database.__allocating_init(url:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = type metadata accessor for SQLDatabase.Storage();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CA0);
  v12 = *(v11 + 48);
  v13 = sub_1BABE6BAC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a1, v13);
  *&v10[v12] = 1;
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_1BAB97A98(v10, v8);
  v15 = swift_allocObject();
  Database.init(storage:corruptionHandler:)(v8, a2, v18);
  (*(v14 + 8))(a1, v13);
  sub_1BAB97AFC(v10);
  return v15;
}

uint64_t Database.__allocating_init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Database.init(storage:corruptionHandler:)(a1, a2, a3);
  return v6;
}

void *Database.init(storage:corruptionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for SQLDatabase.Storage();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v3[12] = v11;
  sub_1BAB97A98(a1, v10);
  if (qword_1EBC12288 != -1)
  {
    swift_once();
  }

  v23[0] = word_1EBC12290;
  v23[1] = qword_1EBC12298;

  v12 = sub_1BABA6844(v10, v23, a2, a3);
  sub_1BAB97AFC(a1);
  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[11] = v12;
    type metadata accessor for Database.DeviceMetadataStore();
    v13 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[2] = v13;
    type metadata accessor for Database.RecordMetadataStore();
    v14 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[3] = v14;
    type metadata accessor for Database.RecordDataStore();
    v15 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[4] = v15;
    type metadata accessor for Database.PairingRelationshipStore();
    v16 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[5] = v16;
    type metadata accessor for Database.ClientDescriptorStore();
    v17 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[6] = v17;
    type metadata accessor for Database.ClientSettingsStore();
    v18 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[7] = v18;
    type metadata accessor for Database.ZoneVersionStore();
    v19 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[8] = v19;
    type metadata accessor for Database.DataMigrationStore();
    v20 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[9] = v20;
    type metadata accessor for Database.RunOnceStore();
    v21 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3[10] = v21;
  }

  return v3;
}

uint64_t Database.deinit()
{
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();

  sub_1BABA4764();

  return v0;
}

uint64_t Database.__deallocating_deinit()
{
  Database.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1BAB93898()
{
  v0 = MEMORY[0x1E69E7CC0];
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](58);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x200A2C5458455420, 0xEF20202020202020);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x52454745544E4920, 0xEF3B29202020200ALL);
  v100 = v104;
  v104 = sub_1BAAE7678(v0);
  MEMORY[0x1BFAFD200](216);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v10 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v10);

  v105 = "FAULT 0;";
  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v11 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v11);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7860);
  v12 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v12);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v13 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v13);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v14 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v14);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v15 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v15);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v99 = v104;
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](225);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v16 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v17 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v17);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v18 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v18);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v19 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v19);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v20 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v20);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v21 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v21);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF7880);
  v22 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v22);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF78A0);
  v23 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v23);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v24 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v24);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v25 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v25);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v26 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v26);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v27 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v27);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v98 = v104;
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](291);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v28 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v28);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v29 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v29);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v30 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v30);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v31 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v31);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF78A0);
  v32 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v32);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v33 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v33);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v34 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v34);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v35 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v35);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF78C0);
  v36 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v36);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF78C0);
  v37 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v37);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v38 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v38);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7860);
  v39 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v39);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v97 = v104;
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](231);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v40 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v40);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v41 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v41);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v42 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v42);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v43 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v43);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v44 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v44);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v45 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v45);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v46 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v46);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v47 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v47);

  MEMORY[0x1BFAFD240](0xD000000000000017, 0x80000001BABF77D0);
  v48 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v48);

  MEMORY[0x1BFAFD240](0x4552454645522029, 0xED0000205345434ELL);
  v49 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v49);

  MEMORY[0x1BFAFD240](40, 0xE100000000000000);
  v50 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v50);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF77F0);
  v96 = v104;
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](231);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v51 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v51);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v52 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v52);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v53 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v53);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v54 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v54);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v55 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v55);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v56 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v56);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v57 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v57);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v58 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v58);

  MEMORY[0x1BFAFD240](0xD000000000000017, 0x80000001BABF77D0);
  v59 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v59);

  MEMORY[0x1BFAFD240](0x4552454645522029, 0xED0000205345434ELL);
  v60 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v60);

  MEMORY[0x1BFAFD240](40, 0xE100000000000000);
  v61 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v61);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF77F0);
  v95 = v104;
  v62 = MEMORY[0x1E69E7CC0];
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](144);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v63 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v63);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v64 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v64);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v65 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v65);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v66 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v66);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v67 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v67);

  MEMORY[0x1BFAFD240](0xD000000000000024, 0x80000001BABF76B0);
  v68 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v68);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v94 = v104;
  v104 = sub_1BAAE7678(v62);
  MEMORY[0x1BFAFD200](261);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v69 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v69);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v70 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v70);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v71 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v71);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v72 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v72);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v73 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v73);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v74 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v74);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v75 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v75);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v76 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v76);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v77 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v77);

  MEMORY[0x1BFAFD240](0xD000000000000017, 0x80000001BABF77D0);
  v78 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v78);

  MEMORY[0x1BFAFD240](0x4552454645522029, 0xED0000205345434ELL);
  v79 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v79);

  MEMORY[0x1BFAFD240](40, 0xE100000000000000);
  v80 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v80);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF77F0);
  v93 = v104;
  v104 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](207);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v81 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v81);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v82 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v82);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v83 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v83);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v84 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v84);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v85 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v85);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v86 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v86);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v87 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v87);

  MEMORY[0x1BFAFD240](0xD000000000000017, 0x80000001BABF77D0);
  v88 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v88);

  MEMORY[0x1BFAFD240](0x4552454645522029, 0xED0000205345434ELL);
  v89 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v89);

  MEMORY[0x1BFAFD240](40, 0xE100000000000000);
  v90 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v90);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF77F0);
  v91 = v104;
  v102 = v100;
  v103 = 0;
  v104 = 0xE000000000000000;
  SQLDatabase.perform(_:)(&v102);
  if (v101)
  {
  }

  else
  {
    v105 = v91;

    v102 = v99;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v98;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v97;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v96;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v95;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v94;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v93;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);

    v102 = v105;
    v103 = 0;
    v104 = 0xE000000000000000;
    SQLDatabase.perform(_:)(&v102);
  }
}

uint64_t sub_1BAB95374()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB954C4()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95614()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95764()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](41);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x52454745544E4920, 0xE90000000000003BLL);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB958BC()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](60);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD00000000000001CLL, 0x80000001BABF7840);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95A18()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B5458455420, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95B68()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](57);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000019, 0x80000001BABF7810);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95CC8()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95E18()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B424F4C4220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB95F68()
{
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](181);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0xD00000000000001BLL, 0x80000001BABF7770);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0xD000000000000027, 0x80000001BABF77A0);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0xD000000000000017, 0x80000001BABF77D0);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x4552454645522029, 0xED0000205345434ELL);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](40, 0xE100000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF77F0);
  v10[0] = v11;
  v10[1] = 0;
  v11 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v10);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB9625C()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB963AC()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B5458455420, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB964FC()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B5458455420, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB9664C()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](56);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF7740);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB967A8()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B5458455420, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB968F8()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](58);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD00000000000001ALL, 0x80000001BABF7710);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB96A58()
{
  v11 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](148);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v4 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0xD000000000000018, 0x80000001BABF76F0);
  v5 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v5);

  MEMORY[0x1BFAFD240](0xD000000000000024, 0x80000001BABF76B0);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](8236, 0xE200000000000000);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v10[0] = v11;
  v10[1] = 0;
  v11 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v10);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB96D90()
{
  v6 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](72);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7690);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x20202020200A2820, 0xEB00000000202020);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0xD000000000000024, 0x80000001BABF76B0);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](0x3B29202020200A29, 0xE800000000000000);
  v5[0] = v6;
  v5[1] = 0;
  v6 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v5);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB96F38()
{
  v6 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](29);
  MEMORY[0x1BFAFD240](0xD000000000000011, 0x80000001BABF7640);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0x204E4F202020200ALL, 0xE800000000000000);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](10272, 0xE200000000000000);
  v3 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v3);

  MEMORY[0x1BFAFD240](15145, 0xE200000000000000);
  v5[0] = v6;
  v5[1] = 0;
  v6 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v5);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB970B4()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B5458455420, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB97204()
{
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7600);
  v1 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v1);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF7620);
  v2 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v2);

  MEMORY[0x1BFAFD240](0x3B4C41455220, 0xE600000000000000);
  v4[0] = v5;
  v4[1] = 0;
  v5 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v4);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BAB9739C()
{
  if (qword_1EBC12270 != -1)
  {
    swift_once();
  }

  v0 = sub_1BABE72BC();
  __swift_project_value_buffer(v0, qword_1EBC25018);
  v1 = sub_1BABE729C();
  v2 = sub_1BABE78DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BAACF000, v1, v2, "MutableStore invalidated.", v3, 2u);
    MEMORY[0x1BFAFE460](v3, -1, -1);
  }

  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();

  return swift_weakAssign();
}

uint64_t Database.MutableStore.deinit()
{

  return v0;
}

uint64_t Database.MutableStore.__deallocating_deinit()
{
  Database.MutableStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t Database.update(reason:_:)()
{
  type metadata accessor for Database.MutableStore();
  swift_allocObject();
  sub_1BAB97B68();
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1BAB78084(v2);
  os_unfair_lock_unlock(v1 + 4);
  sub_1BAB9739C();
}

uint64_t sub_1BAB97684(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 88);

  sub_1BABA58E4(a2, a3, v11, a4, a5, a6);
}

uint64_t Database.DatabaseAccessor.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL _s18ReplicatorServices8DatabaseC19LocalDeviceMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6C8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CB0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = sub_1BABE7EDC();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  if (*(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v19 = v12;
  if ((sub_1BAB9D488(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v20 = *(type metadata accessor for Database.LocalDeviceMetadata() + 36);
  v21 = *(v19 + 48);
  sub_1BAAFBFFC(a1 + v20, v14);
  sub_1BAAFBFFC(a2 + v20, &v14[v21]);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) == 1)
  {
    if (v22(&v14[v21], 1, v4) == 1)
    {
      sub_1BAAD2E14(v14, &qword_1EBC132A0);
      return 1;
    }

    goto LABEL_17;
  }

  sub_1BAAFBFFC(v14, v10);
  if (v22(&v14[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_17:
    sub_1BAAD2E14(v14, &qword_1EBC13CB0);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v21], v4);
  sub_1BAB9814C();
  v24 = sub_1BABE74DC();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_1BAAD2E14(v14, &qword_1EBC132A0);
  return (v24 & 1) != 0;
}

uint64_t sub_1BAB97A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Storage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB97AFC(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Storage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAB97B58(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void *sub_1BAB97B68()
{
  type metadata accessor for Database.MutableDeviceMetadataStore();
  v1 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[2] = v1;
  type metadata accessor for Database.MutableRecordMetadataStore();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[3] = v2;
  type metadata accessor for Database.MutableRecordDataStore();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[4] = v3;
  type metadata accessor for Database.MutablePairingRelationshipStore();
  v4 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[5] = v4;
  type metadata accessor for Database.MutableClientDescriptorStore();
  v5 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[6] = v5;
  type metadata accessor for Database.MutableClientSettingsStore();
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[7] = v6;
  type metadata accessor for Database.MutableZoneVersionStore();
  v7 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[8] = v7;
  type metadata accessor for Database.MutableDataMigrationStore();
  v8 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[9] = v8;
  type metadata accessor for Database.MutableRunOnceStore();
  v9 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v0[10] = v9;
  return v0;
}

uint64_t sub_1BAB97D8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = *(v1 + 88);

  sub_1BABA58E4(v2, v3, v7, v4, v6, v5);
}

unint64_t sub_1BAB97E00()
{
  result = qword_1EBC13CA8;
  if (!qword_1EBC13CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13CA8);
  }

  return result;
}

uint64_t type metadata accessor for Database.LocalDeviceMetadata()
{
  result = qword_1EBC11DA8;
  if (!qword_1EBC11DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAB97F2C()
{
  sub_1BAB98034();
  if (v0 <= 0x3F)
  {
    sub_1BAB98084(319, &qword_1EBC11D88, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1BAB98084(319, &qword_1ED7872B0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAB98034()
{
  if (!qword_1ED787CA8)
  {
    v0 = sub_1BABE799C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED787CA8);
    }
  }
}

void sub_1BAB98084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BAB9814C()
{
  result = qword_1EBC13CB8;
  if (!qword_1EBC13CB8)
  {
    sub_1BABE6C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13CB8);
  }

  return result;
}

unint64_t sub_1BAB981C8()
{
  result = qword_1EBC13CC0;
  if (!qword_1EBC13CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13CC0);
  }

  return result;
}

unint64_t sub_1BAB98220()
{
  result = qword_1EBC13CC8;
  if (!qword_1EBC13CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13CC8);
  }

  return result;
}

void sub_1BAB98298(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

uint64_t sub_1BAB9835C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_localDeviceIDProvider);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return sub_1BAADAF5C(v4);
}

uint64_t sub_1BAB983BC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
  }

  else
  {
    v3 = 0;
  }

  v4 = (*a2 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_localDeviceIDProvider);
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_1BAADAF5C(v2);
  return sub_1BAADAFD4(v5);
}

uint64_t sub_1BAB984E0@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_recordProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BAB9C63C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BAADAF5C(v4);
}

uint64_t sub_1BAB98580(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAB9C624;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_recordProvider);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1BAADAF5C(v3);
  return sub_1BAADAFD4(v8);
}

uint64_t sub_1BAB986E8@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_deviceProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BAB9C450;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BAADAF5C(v4);
}

uint64_t sub_1BAB98788(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAB9C438;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_deviceProvider);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1BAADAF5C(v3);
  return sub_1BAADAFD4(v8);
}

uint64_t sub_1BAB988F0@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_clientDescriptorProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BAB9C63C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BAADAF5C(v4);
}

uint64_t sub_1BAB98990(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAB9C624;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_clientDescriptorProvider);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1BAADAF5C(v3);
  return sub_1BAADAFD4(v8);
}

uint64_t sub_1BAB98AF8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_eraseHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1BAB9C410;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1BAADAF5C(v4);
}

uint64_t sub_1BAB98B98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BAB9C3E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_eraseHandler);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1BAADAF5C(v3);
  return sub_1BAADAFD4(v8);
}

uint64_t sub_1BAB98C80(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1BAB98D08(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id MigrationServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MigrationServer.init()()
{
  v26 = sub_1BABE793C();
  v1 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v7 = swift_allocObject();
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_lock_clients] = MEMORY[0x1E69E7CD0];
  *(v7 + 16) = 0;
  v8 = &v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_localDeviceIDProvider];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_recordProvider];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_deviceProvider];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_clientDescriptorProvider];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_eraseHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_listener] = 0;
  sub_1BAB22BDC(0, &qword_1ED787C60);
  sub_1BABE73AC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BAB9C248(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAB99288();
  sub_1BABE79FC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v26);
  *&v0[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_queue] = sub_1BABE796C();
  v13 = type metadata accessor for MigrationServer();
  v28.receiver = v0;
  v28.super_class = v13;
  v14 = objc_msgSendSuper2(&v28, sel_init);
  v15 = qword_1EBC12338;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_1BABE74EC();
  v18 = sub_1BABE74EC();
  v19 = [objc_opt_self() configurationWithDomain:v17 service:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  aBlock[4] = sub_1BAB9BD18;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAB9C620;
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);
  v22 = [objc_opt_self() listenerWithConfiguration:v19 handler:v21];

  _Block_release(v21);

  v23 = *&v16[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_listener];
  *&v16[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_listener] = v22;

  return v16;
}

unint64_t sub_1BAB99288()
{
  result = qword_1ED787C80;
  if (!qword_1ED787C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC12BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787C80);
  }

  return result;
}

void sub_1BAB99310(void *a1, void *a2)
{
  v4 = [a1 remoteToken];
  v5 = sub_1BABE74EC();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = [a1 remoteToken];
    v8 = [v7 pid];

    v9 = objc_allocWithZone(type metadata accessor for Client());
    v10 = a2;
    v11 = a1;
    v12 = sub_1BAB9C4D4(v11, v8, v10, v9);

    v13 = *&v10[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_lock];
    v15 = MEMORY[0x1EEE9AC00](v14);
    MEMORY[0x1EEE9AC00](v15);

    os_unfair_lock_lock(v13 + 4);
    sub_1BAB78084(v16);
    os_unfair_lock_unlock(v13 + 4);

    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    *(v17 + 24) = v10;
    *(v17 + 32) = v12;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1BAB9C5D0;
    *(v18 + 24) = v17;
    aBlock[4] = sub_1BAAD66F4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAAD6678;
    aBlock[3] = &block_descriptor_61;
    v19 = _Block_copy(aBlock);
    v20 = v10;
    v21 = v12;

    [v11 configure_];
    _Block_release(v19);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      [v11 activate];
    }
  }

  else
  {

    [a1 invalidate];
  }
}

void sub_1BAB99620(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_1BABB05A0(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_1BAB9969C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1BABE74EC();
  v22 = sub_1BAB98298;
  v23 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1BAAD6A60;
  v21 = &block_descriptor_64;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() interfaceWithIdentifier:v7 configurator:v8];

  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_1BABE7AEC();

    aBlock = 0xD000000000000010;
    v19 = 0x80000001BABF7B20;
    v10 = sub_1BABE7EAC();
    MEMORY[0x1BFAFD240](v10);

    v11 = *(a3 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_queue);
    v12 = sub_1BABE74EC();

    v13 = [objc_opt_self() queueWithName:v12 targetQueue:v11];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v22 = sub_1BAB9C5DC;
    v23 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1BAB9C620;
    v21 = &block_descriptor_73_0;
    v16 = _Block_copy(&aBlock);
    v17 = a4;

    [a1 setInvalidationHandler_];
    _Block_release(v16);
  }
}

uint64_t sub_1BAB9999C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EBC11D98 != -1)
    {
      swift_once();
    }

    v2 = sub_1BABE72BC();
    __swift_project_value_buffer(v2, qword_1EBC24FD0);
    v3 = sub_1BABE729C();
    v4 = sub_1BABE790C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BAACF000, v3, v4, "Connection invalidated", v5, 2u);
      MEMORY[0x1BFAFE460](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_lock];
    v8 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_1BAB7841C(v9);
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_1BAB99B48(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_1BAB1F864(a2);
  swift_endAccess();
}

id sub_1BAB99BE0()
{
  result = *(v0 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_listener);
  if (result)
  {
    return [result activate];
  }

  __break(1u);
  return result;
}

id MigrationServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BAB99D04(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = (v1 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_localDeviceIDProvider);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {

    v11(v12);
    if (v2)
    {
      sub_1BAADAFD4(v11);
    }

    else
    {
      if (qword_1EBC11D98 != -1)
      {
        swift_once();
      }

      v14 = sub_1BABE72BC();
      __swift_project_value_buffer(v14, qword_1EBC24FD0);
      sub_1BAAD2DAC(a1, v9, &qword_1EBC12B60);
      v15 = sub_1BABE729C();
      v16 = sub_1BABE790C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v17 = 136446210;
        sub_1BAAD2DAC(v9, v7, &qword_1EBC12B60);
        v18 = sub_1BABE755C();
        v20 = v19;
        sub_1BAAD2E14(v9, &qword_1EBC12B60);
        v21 = sub_1BAAFA460(v18, v20, &v24);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1BAACF000, v15, v16, "Returning local device ID %{public}s for migration", v17, 0xCu);
        v22 = v23;
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1BFAFE460](v22, -1, -1);
        MEMORY[0x1BFAFE460](v17, -1, -1);
        sub_1BAADAFD4(v11);
      }

      else
      {
        sub_1BAADAFD4(v11);

        sub_1BAAD2E14(v9, &qword_1EBC12B60);
      }
    }
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB9A014()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13D68);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v28 - v5;
  v6 = v0 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_recordProvider;
  swift_beginAccess();
  v7 = *v6;
  if (!*v6)
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0;

    return swift_willThrow();
  }

  v8 = *(v6 + 8);

  v10 = v7(v9);
  if (v1)
  {
    return sub_1BAADAFD4(v7);
  }

  v13 = v10;
  v14 = *(v10 + 16);
  if (v14)
  {
    v28 = v8;
    v29 = v7;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAC34(0, v14, 0);
    v15 = 0;
    v16 = v37;
    v30 = v13 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    while (v15 < *(v13 + 16))
    {
      v17 = v16;
      v18 = v31;
      sub_1BAAD2DAC(v30 + *(v33 + 72) * v15, v31, &qword_1EBC13D68);
      v19 = sub_1BAB9A40C(&v36, v18, (v18 + *(v32 + 48)));
      if (v2)
      {

        sub_1BAADAFD4(v29);
        sub_1BAAD2E14(v18, &qword_1EBC13D68);
      }

      v20 = v19;
      v34 = 0;
      v35 = v19;
      sub_1BAAD2E14(v18, &qword_1EBC13D68);
      v7 = v36;
      v16 = v17;
      v37 = v17;
      v21 = *(v17 + 16);
      v22 = *(v16 + 24);
      if (v21 >= v22 >> 1)
      {
        sub_1BAAFAC34((v22 > 1), v21 + 1, 1);
        v16 = v37;
      }

      ++v15;
      *(v16 + 16) = v21 + 1;
      v23 = v16 + 16 * v21;
      *(v23 + 32) = v20;
      *(v23 + 40) = v7;
      v2 = v34;
      if (v14 == v15)
      {
        v14 = v16;

        v7 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_15:
    if (qword_1EBC11D98 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v24 = sub_1BABE72BC();
  __swift_project_value_buffer(v24, qword_1EBC24FD0);

  v25 = sub_1BABE729C();
  v26 = sub_1BABE790C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = *(v14 + 16);

    _os_log_impl(&dword_1BAACF000, v25, v26, "Returning %{public}ld records for migration", v27, 0xCu);
    MEMORY[0x1BFAFE460](v27, -1, -1);
  }

  else
  {
  }

  sub_1BAADAFD4(v7);

  return v14;
}

uint64_t sub_1BAB9A40C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v40 - v8;
  v9 = sub_1BABE6CFC();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  MEMORY[0x1EEE9AC00](v50);
  v14 = (&v40 - v13);
  v43 = *a3;
  v41 = type metadata accessor for ReplicatorRecord(0);
  v42 = a2;
  v15 = *(a2 + *(v41 + 24));
  v52[0] = MEMORY[0x1E69E7CC0];
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v53 = v15;

  v22 = 0;
  if (v19)
  {
    while (1)
    {
      v23 = v4;
      v24 = v22;
LABEL_9:
      v25 = __clz(__rbit64(v19)) | (v24 << 6);
      v26 = *(v53 + 56);
      v27 = *(*(v53 + 48) + 8 * v25);
      v28 = type metadata accessor for ReplicatorRecord.Value(0);
      sub_1BAB9C1E0(v26 + *(*(v28 - 8) + 72) * v25, v14 + *(v50 + 12), type metadata accessor for ReplicatorRecord.Value);
      *v14 = v27;
      sub_1BAB9A92C(v52, v14);
      v4 = v23;
      if (v23)
      {
        break;
      }

      v19 &= v19 - 1;
      result = sub_1BAAD2E14(v14, &unk_1EBC12B50);
      v22 = v24;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    sub_1BAAD2E14(v14, &unk_1EBC12B50);

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {

        v53 = v52[0];
        v50 = type metadata accessor for ReplicatorRecord.ID;
        v29 = v42;
        sub_1BAB9C1E0(v42, v46, type metadata accessor for ReplicatorRecord.ID);
        v30 = *(v41 + 20);
        v41 = *(v48 + 16);
        (v41)(v47, v29 + v30, v49);
        v31 = sub_1BABE6C8C();
        v32 = *(*(v31 - 8) + 56);
        v33 = v44;
        v32(v44, 1, 1, v31);
        v34 = type metadata accessor for ReplicationXPCServerParametersRecord(0);
        v35 = objc_allocWithZone(v34);
        v36 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
        v32(&v35[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration], 1, 1, v31);
        v37 = v46;
        sub_1BAB9C1E0(v46, &v35[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id], v50);
        v38 = v47;
        v39 = v49;
        (v41)(&v35[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version], v47, v49);
        *&v35[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values] = v53;
        swift_beginAccess();
        sub_1BAB22AD8(v33, &v35[v36]);
        swift_endAccess();
        *&v35[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options] = 0;
        v51.receiver = v35;
        v51.super_class = v34;
        v14 = objc_msgSendSuper2(&v51, sel_init);
        sub_1BAAD2E14(v33, &qword_1EBC132A0);
        (*(v48 + 8))(v38, v39);
        sub_1BAB9C290(v37, type metadata accessor for ReplicatorRecord.ID);
        *v45 = v43;

        return v14;
      }

      v19 = *(v16 + 8 * v24);
      ++v22;
      if (v19)
      {
        v23 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BAB9A92C(void *a1, objc_class *a2)
{
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - v9;
  v11 = sub_1BABE6BAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v48 = a2;
  v18 = v6;
  sub_1BAAD2DAC(a2, v10, &unk_1EBC12B50);
  v19 = &v10[*(v6 + 48)];
  v20 = type metadata accessor for ReplicatorRecord.Value(0);
  sub_1BAAD2DAC(v19 + *(v20 + 20), v5, &unk_1EBC13D70);
  sub_1BAB9C290(v19, type metadata accessor for ReplicatorRecord.Value);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_1BAAD2E14(v5, &unk_1EBC13D70);
    v45 = 0;
    v46 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v5, v11);
    sub_1BAB22BDC(0, &qword_1ED787070);
    (*(v12 + 16))(v15, v17, v11);
    v39 = v51;
    v40 = sub_1BAB032DC(v15);
    if (v39)
    {
      (*(v12 + 8))(v17, v11);
      return;
    }

    v41 = v40;
    v42 = URL.extendedAttributes()();
    v43 = *(v12 + 8);
    v45 = v41;
    v44 = v42;
    v43(v17, v11);
    v46 = sub_1BAAFF314(v44);
    v51 = 0;
  }

  v21 = v47;
  v22 = *v48;
  sub_1BAAD2DAC(v48, v47, &unk_1EBC12B50);
  v23 = (v21 + *(v18 + 48));
  v24 = *v23;
  v25 = v23[1];
  sub_1BAAE7824(*v23, v25);
  sub_1BAB9C290(v23, type metadata accessor for ReplicatorRecord.Value);
  v48 = type metadata accessor for ReplicationXPCServerParametersRecordValue();
  v26 = objc_allocWithZone(v48);
  v27 = &v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data] = xmmword_1BABE9A70;
  v28 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle] = 0;
  v29 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes] = 0;
  *&v26[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version] = v22;
  swift_beginAccess();
  v30 = *v27;
  v31 = v27[1];
  *v27 = v24;
  v27[1] = v25;
  sub_1BAAE7824(v24, v25);
  v32 = v45;
  v33 = v45;
  sub_1BAADAEE8(v30, v31);
  swift_beginAccess();
  v34 = *&v26[v28];
  *&v26[v28] = v32;
  v35 = v33;

  swift_beginAccess();
  *&v26[v29] = v46;

  v50.receiver = v26;
  v50.super_class = v48;
  v36 = objc_msgSendSuper2(&v50, sel_init);

  sub_1BAAD73E4(v24, v25);
  v37 = v36;
  v38 = v49;
  MEMORY[0x1BFAFD300]();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BABE76EC();
  }

  sub_1BABE772C();
}

uint64_t sub_1BAB9AE64(void *a1, const char *a2, void (*a3)(uint64_t (*)(uint64_t), uint64_t))
{
  v8 = v3 + *a1;
  swift_beginAccess();
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v12 = v9(v11);
    if (v4)
    {
      a3(v9, v10);
    }

    else
    {
      v5 = v12;
      if (qword_1EBC11D98 != -1)
      {
        swift_once();
      }

      v14 = sub_1BABE72BC();
      __swift_project_value_buffer(v14, qword_1EBC24FD0);

      v15 = sub_1BABE729C();
      v16 = sub_1BABE790C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = *(v5 + 16);

        _os_log_impl(&dword_1BAACF000, v15, v16, a2, v17, 0xCu);
        MEMORY[0x1BFAFE460](v17, -1, -1);
      }

      else
      {
      }

      a3(v9, v10);
    }
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 0;

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1BAB9B048()
{
  v1 = (v0 + OBJC_IVAR____TtC18ReplicatorServices15MigrationServer_eraseHandler);
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = qword_1EBC11D98;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1BABE72BC();
    __swift_project_value_buffer(v4, qword_1EBC24FD0);
    v5 = sub_1BABE729C();
    v6 = sub_1BABE790C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BAACF000, v5, v6, "Erasing all replicator data", v7, 2u);
      MEMORY[0x1BFAFE460](v7, -1, -1);
    }

    v2();
    return sub_1BAADAFD4(v2);
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 0;

    return swift_willThrow();
  }
}

uint64_t sub_1BAB9B27C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BABE7AEC();

  LODWORD(v9) = *(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_pid);
  v4 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x656C646E7562203BLL, 0xEC000000203A4449);
  v5 = [*(a1 + OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_connection) remoteToken];
  v6 = [v5 bundleID];

  if (v6)
  {
    sub_1BABE751C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13D90);
  v7 = sub_1BABE755C();
  MEMORY[0x1BFAFD240](v7);

  *a2 = 0x203A646970;
  a2[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1BAB9B480@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1BAB99D04(v5);
    result = swift_unknownObjectRelease();
    if (!v1)
    {
      return sub_1BAB9C2F0(v5, a1);
    }
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v7 = 2;
    *(v7 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

id sub_1BAB9B740()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1BAB9A014();
    if (v0)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = v2;
      Records = type metadata accessor for MigrationXPCServerResponseGetRecords();
      v6 = objc_allocWithZone(Records);
      *&v6[OBJC_IVAR____TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords_records] = v4;
      v8.receiver = v6;
      v8.super_class = Records;
      v1 = objc_msgSendSuper2(&v8, sel_init);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 0;

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1BAB9BA30@<X0>(void *a1@<X0>, const char *a2@<X1>, void (*a3)(uint64_t (*)(uint64_t), uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_1BAB9AE64(a1, a2, a3);
    result = swift_unknownObjectRelease();
    if (!v4)
    {
      *a4 = v9;
    }
  }

  else
  {
    sub_1BAB9C0E4();
    swift_allocError();
    *v11 = 2;
    *(v11 + 8) = 0;

    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1BAB9C0E4()
{
  result = qword_1EBC13D50;
  if (!qword_1EBC13D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13D50);
  }

  return result;
}

unint64_t sub_1BAB9C138()
{
  result = qword_1EBC13D58;
  if (!qword_1EBC13D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13D58);
  }

  return result;
}

unint64_t sub_1BAB9C18C()
{
  result = qword_1EBC13D60;
  if (!qword_1EBC13D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13D60);
  }

  return result;
}

uint64_t sub_1BAB9C1E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB9C248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAB9C290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAB9C2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BAB9C37C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

void *sub_1BAB9C468()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1BAB9C4A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1BAB9C4D4(void *a1, int a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&a4[v8] = v9;
  *&a4[OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_delegate + 8] = 0;
  v10 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC18ReplicatorServicesP33_E12FEAD95517CBB4AB29168F11BCC1CA6Client_pid] = a2;
  *(v10 + 8) = &off_1F38C1908;
  swift_unknownObjectWeakAssign();
  v13.receiver = a4;
  v13.super_class = ObjectType;
  v11 = a1;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1BAB9C848@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ReplicatorDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1BAB77A28(v12, v10, type metadata accessor for ReplicatorDevice);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1BAB6EE68(v10, type metadata accessor for ReplicatorDevice);
      }

      if (v14)
      {
        break;
      }

      sub_1BAB6EE68(v10, type metadata accessor for ReplicatorDevice);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1BAB77A90(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1BAB9CA00@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 64);
    while (1)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *(v8 - 3);
      *&v14 = *(v8 - 4);
      *(&v14 + 1) = v11;
      v15 = v9;
      v16 = v10;
      v17 = *v8;

      result = v7(&v14);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 3;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v12 = v15;
    v13 = v16;
    *a3 = v14;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 32) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t ReplicatorRemoteDeviceProviding.pairedDevices()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ReplicatorDevice(0);
  v7 = *(v28 - 8);
  v8 = MEMORY[0x1EEE9AC00](v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  result = (*(a2 + 8))(a1, a2);
  v14 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v26 = v10;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v18 = *(v7 + 72);
      sub_1BAB77A28(v14 + v17 + v18 * v15, v12, type metadata accessor for ReplicatorDevice);
      sub_1BAB77A28(&v12[*(v28 + 48)], v6, type metadata accessor for ReplicatorDevice.RelationshipState);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
      v20 = (*(*(v19 - 8) + 48))(v6, 4, v19);
      if ((v20 - 2) < 2)
      {
        goto LABEL_9;
      }

      if (!v20)
      {
        break;
      }

      sub_1BAB6EE68(v6, type metadata accessor for ReplicatorDevice.RelationshipState);
      result = sub_1BAB6EE68(v12, type metadata accessor for ReplicatorDevice);
LABEL_4:
      if (v27 == ++v15)
      {
        goto LABEL_15;
      }
    }

    v21 = sub_1BABE6CFC();
    (*(*(v21 - 8) + 8))(v6, v21);
LABEL_9:
    sub_1BAB77A90(v12, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BAAFAAE0(0, *(v16 + 16) + 1, 1);
      v16 = v29;
    }

    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1BAAFAAE0(v23 > 1, v24 + 1, 1);
      v16 = v29;
    }

    *(v16 + 16) = v24 + 1;
    v25 = v16 + v17 + v24 * v18;
    v10 = v26;
    result = sub_1BAB77A90(v26, v25);
    goto LABEL_4;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v16;
}

uint64_t sub_1BAB9CE70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(char *)@<X3>, uint64_t a4@<X8>)
{
  v6 = (*(a2 + 8))(a1, a2);
  sub_1BAB9C848(a3, v6, a4);
}

uint64_t ReplicatorRemoteDeviceProviding.unpairedDevices()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorDevice(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  result = (*(a2 + 8))(a1, a2);
  v14 = result;
  v15 = *(result + 16);
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v26 = *(result + 16);
    v27 = v7;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v20 = *(v8 + 72);
      sub_1BAB77A28(v14 + v19 + v20 * v16, v12, type metadata accessor for ReplicatorDevice);
      sub_1BAB77A28(&v12[*(v7 + 48)], v6, type metadata accessor for ReplicatorDevice.RelationshipState);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
      v22 = (*(*(v21 - 8) + 48))(v6, 4, v21);
      if ((v22 - 2) >= 2)
      {
        if (v22)
        {
          sub_1BAB6EE68(v6, type metadata accessor for ReplicatorDevice.RelationshipState);
          sub_1BAB77A90(v12, v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BAAFAAE0(0, *(v17 + 16) + 1, 1);
            v17 = v29;
          }

          v25 = *(v17 + 16);
          v24 = *(v17 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1BAAFAAE0(v24 > 1, v25 + 1, 1);
            v17 = v29;
          }

          *(v17 + 16) = v25 + 1;
          result = sub_1BAB77A90(v28, v17 + v19 + v25 * v20);
          v15 = v26;
          v7 = v27;
          goto LABEL_5;
        }

        v18 = sub_1BABE6CFC();
        (*(*(v18 - 8) + 8))(v6, v18);
      }

      result = sub_1BAB6EE68(v12, type metadata accessor for ReplicatorDevice);
LABEL_5:
      if (v15 == ++v16)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_15:

  return v17;
}

uint64_t sub_1BAB9D2BC()
{
  v0 = sub_1BABE72BC();
  __swift_allocate_value_buffer(v0, qword_1ED78BBA0);
  __swift_project_value_buffer(v0, qword_1ED78BBA0);
  return sub_1BABE72AC();
}

uint64_t sub_1BAB9D3B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BABE72BC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BABE72AC();
}

uint64_t sub_1BAB9D428()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BAB9D488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1BAAD771C(&unk_1ED7872A0);
    v21 = sub_1BABE74DC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static ReplicatorRecordDestination.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v4 = sub_1BAB9D488(v3, v2);

      return v4 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BAB9D70C(uint64_t a1)
{
  v2 = sub_1BAB9DDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB9D748(uint64_t a1)
{
  v2 = sub_1BAB9DDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB9D784()
{
  if (*v0)
  {
    return 7105633;
  }

  else
  {
    return 0x697463656C6C6F63;
  }
}