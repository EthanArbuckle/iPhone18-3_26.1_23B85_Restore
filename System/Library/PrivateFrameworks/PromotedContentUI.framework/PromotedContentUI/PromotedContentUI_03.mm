uint64_t *sub_1C19D7F5C()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1C19A9384(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_1C19D804C()
{
  sub_1C19D7F5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19D80BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C19D8104, 0, 0);
}

uint64_t sub_1C19D8104()
{
  v1 = v0[4];
  v2 = sub_1C1A6DA3C();
  v0[5] = v2;
  v3 = sub_1C1A6DA6C();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1C19D81F4;

  return MEMORY[0x1EEE2F358](v2, v3, v4, v5);
}

uint64_t sub_1C19D81F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1C19D84F8;
  }

  else
  {

    v4 = sub_1C19D8310;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C19D8310()
{
  v1 = v0[7];
  if (v1 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[2] + *(*v0[2] + 144);
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v0[7];
    if (Strong)
    {
      v5 = v0[3];
      v6 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 40))(v4, v5, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  v8 = sub_1C1A6DEEC();
  sub_1C19D8994();
  v9 = swift_allocError();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69C5F38], v8);
  swift_willThrow();
  v11 = v0[2] + *(*v0[2] + 144);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = v0[3];
    v13 = *(v11 + 8);
    v14 = swift_getObjectType();
    (*(v13 + 32))(v9, v12, v14, v13);
    swift_unknownObjectRelease();
  }

LABEL_10:
  v15 = v0[1];

  return v15();
}

uint64_t sub_1C19D84F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16) + *(**(v0 + 16) + 144);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 24);
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 32))(v1, v3, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);

  return v6();
}

void *sub_1C19D85D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  *(v7 + *(*v7 + 136)) = 0;
  v15 = v7 + *(*v7 + 144);
  *(v15 + 1) = 0;
  swift_unknownObjectWeakInit();
  v7[2] = a1;
  *(v7 + *(*v7 + 128)) = a2;
  (*(*(*(v14 + 80) - 8) + 32))(v7 + *(*v7 + 104), a3);
  *(v15 + 1) = a7;
  swift_unknownObjectWeakAssign();
  *(v7 + *(*v7 + 112)) = a4;
  *(v7 + *(*v7 + 120)) = a5;
  return v7;
}

void *sub_1C19D8724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SLPCCMFetcher();
  swift_allocObject();
  return sub_1C19D85D0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1C19D87B0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_15:
    v4 = sub_1C1A6F9EC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C69055B0](v5, a1);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
            return v6;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        sub_1C1A6DA6C();
        sub_1C1A6DA6C();
        v8 = sub_1C1A6DEAC();
        if (v8 == sub_1C1A6DEAC())
        {
          return v6;
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return a2;
}

uint64_t sub_1C19D88D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C19D80BC(a1, v4, v5, v7, v6);
}

unint64_t sub_1C19D8994()
{
  result = qword_1EBF04178;
  if (!qword_1EBF04178)
  {
    sub_1C1A6DEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF04178);
  }

  return result;
}

id sub_1C19D89EC()
{
  v1 = v0;
  v93 = sub_1C1A6D5DC();
  v2 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v74 - v5;
  v7 = sub_1C1A6D93C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v90 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = v74 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v74 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v74 - v16;
  v18 = sub_1C19A9E58(&qword_1EBF03888);
  v19 = *(v18 - 8);
  *&v20 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v22 = v74 - v21;
  v88 = *(v1 + 40);
  [v88 lock];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v76 = v17;
    v79 = v2;
    v24 = *(v1 + 64);
    v25 = Strong;
    ObjectType = swift_getObjectType();
    v27 = *(v24 + 16);
    v80 = ObjectType;
    v81 = v24;
    if (v27(ObjectType, v24))
    {
      v77 = v25;
      v75 = v1;
      sub_1C1A6D98C();
      if ((*(v19 + 88))(v22, v18) != *MEMORY[0x1E69C5ED8])
      {
        (*(v19 + 8))(v22, v18);
        sub_1C1A6F67C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v61 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        (*(v81 + 24))(v80);
        swift_unknownObjectRelease();
        return [v88 unlock];
      }

      (*(v19 + 96))(v22, v18);
      v28 = *v22;
      v29 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
      v30 = sub_1C1A6D88C();
      (*(*(v30 - 8) + 8))(&v22[v29], v30);
      sub_1C1A6F64C();
      v31 = sub_1C198FB8C(0, &qword_1EDE63F30);
      v74[1] = "n>16@0:8";
      v74[0] = &unk_1C1A75080;
      v74[2] = v31;
      v32 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      v94 = v77;
      v33 = v28;
      v34 = (*(*(v81 + 8) + 8))(v80) * 0.5;
      v35 = v28[2];
      v91 = v33;
      if (v35)
      {
        v36 = *(v8 + 16);
        v84 = v33 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v85 = v36;
        v86 = v8 + 16;
        v87 = v7;
        result = (v36)(v14);
        v38 = v89;
        if (v35 != 1)
        {
          v62 = (v79 + 8);
          v82 = v8 + 8;
          v83 = v35;
          v78 = (v8 + 32);
          v63 = 1;
          v64 = v87;
          while (v63 < v33[2])
          {
            v85(v38, v84 + *(v8 + 72) * v63, v64);
            sub_1C1A6D8FC();
            v65 = v8;
            v66 = v6;
            v67 = v92;
            sub_1C1A6D8FC();
            v68 = sub_1C1A6D54C();
            v69 = *v62;
            v70 = v67;
            v6 = v66;
            v8 = v65;
            v71 = v93;
            (*v62)(v70, v93);
            v69(v6, v71);
            v72 = *(v8 + 8);
            if (v68)
            {
              v72(v14, v64);
              result = (*v78)(v14, v38, v64);
            }

            else
            {
              result = (v72)(v38, v64);
            }

            v35 = v83;
            ++v63;
            v33 = v91;
            v38 = v89;
            if (v83 == v63)
            {
              goto LABEL_6;
            }
          }

          goto LABEL_32;
        }

LABEL_6:
        v39 = v76;
        v7 = v87;
        (*(v8 + 32))(v76, v14, v87);
        sub_1C1A6D8FC();
        v40 = v92;
        sub_1C1A6D90C();
        sub_1C1A6D50C();
        v42 = v41;
        v43 = *(v79 + 8);
        v44 = v40;
        v45 = v93;
        v43(v44, v93);
        v43(v6, v45);
        (*(v8 + 8))(v39, v7);
        if (v34 < v42 * 0.5)
        {
          v34 = v42 * 0.5;
        }
      }

      v46 = sub_1C1A6F67C();
      v47 = sub_1C1A6F8EC();
      if (os_log_type_enabled(v47, v46))
      {
        v48 = swift_slowAlloc();
        *v48 = 134349056;
        *(v48 + 4) = v34;
        _os_log_impl(&dword_1C198D000, v47, v46, "[PCUI] Using ttl to verify contents: %{public}f", v48, 0xCu);
        MEMORY[0x1C6906260](v48, -1, -1);
      }

      v49 = 0;
      v50 = (v79 + 8);
      while (1)
      {
        result = v91;
        if (v35 == v49)
        {

          swift_unknownObjectRelease();
          *(v75 + 32) = 0;
          return [v88 unlock];
        }

        if (v49 >= v91[2])
        {
          break;
        }

        v51 = v90;
        (*(v8 + 16))(v90, v91 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49++, v7);
        sub_1C1A6D5AC();
        v52 = v92;
        sub_1C1A6D90C();
        (*(v8 + 8))(v51, v7);
        sub_1C1A6D50C();
        v54 = v53;
        v55 = *v50;
        v56 = v52;
        v57 = v93;
        (*v50)(v56, v93);
        v55(v6, v57);
        if (v34 < v54)
        {

          v58 = v75;
          if ((*(v75 + 32) & 1) == 0)
          {
            sub_1C1A6F67C();
            v73 = sub_1C1A6F8EC();
            sub_1C1A6F18C();

            *(v58 + 32) = 1;
            (*(v81 + 24))(v80);
          }

          swift_unknownObjectRelease();
          return [v88 unlock];
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    swift_unknownObjectRelease();
  }

  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v59 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v60 = v88;

  return [v60 unlock];
}

id sub_1C19D947C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  [v2 lock];
  [*(v0 + 16) invalidate];
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1C19D9D20;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C19B8FA0;
  v10[3] = &unk_1F4140580;
  v6 = _Block_copy(v10);

  v7 = [v4 scheduledTimerWithTimeInterval:1 repeats:v6 block:60.0];
  _Block_release(v6);
  v8 = *(v1 + 16);
  *(v1 + 16) = v7;

  return [v2 unlock];
}

uint64_t sub_1C19D9650()
{
  v0 = sub_1C1A6F1FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6F22C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(result + 24);
    v14 = v1;
    v15 = v4;
    v13 = v9;

    v10 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_1C19D9D28;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F41405A8;
    v11 = _Block_copy(aBlock);

    sub_1C1A6F21C();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C19D9D30(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
    sub_1C19A9E58(&qword_1EBF03E28);
    sub_1C19D9D78(&qword_1EDE63F50, &qword_1EBF03E28);
    sub_1C1A6F94C();
    v12 = v13;
    MEMORY[0x1C69051C0](0, v7, v3, v11);
    _Block_release(v11);

    (*(v14 + 8))(v3, v0);
    (*(v5 + 8))(v7, v15);
  }

  return result;
}

uint64_t sub_1C19D9988()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C19D89EC();
  }

  return result;
}

uint64_t sub_1C19D99E0()
{

  sub_1C19A9384((v0 + 7));

  return swift_deallocClassInstance();
}

id sub_1C19D9A5C()
{
  sub_1C19D89EC();

  return sub_1C19D947C();
}

uint64_t sub_1C19D9A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a6;
  v20 = a3;
  v17 = a1;
  v18 = a2;
  v16 = sub_1C1A6F6EC();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1A6F6DC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C1A6F22C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  *(a4 + 16) = 0;
  v12 = sub_1C198FB8C(0, &qword_1EDE63F38);
  v15[0] = "s stale. Fetching more.";
  v15[1] = v12;
  sub_1C1A6F21C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C19D9D30(&qword_1EDE63F40, MEMORY[0x1E69E8030]);
  sub_1C19A9E58(&qword_1EBF04180);
  sub_1C19D9D78(&qword_1EDE63F48, &qword_1EBF04180);
  sub_1C1A6F94C();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v16);
  *(a4 + 24) = sub_1C1A6F71C();
  *(a4 + 32) = 0;
  *(a4 + 64) = 0;
  swift_unknownObjectWeakInit();
  v13 = v18;
  *(a4 + 40) = v17;
  *(a4 + 48) = v13;
  *(a4 + 64) = v19;
  swift_unknownObjectWeakAssign();
  return a4;
}

uint64_t sub_1C19D9D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C19D9D78(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C19A9F04(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C19D9DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_1C1A6E4BC();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = sub_1C1A6D62C();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C19D9EF4, 0, 0);
}

uint64_t sub_1C19D9EF4()
{
  v1 = v0[17];
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1994048(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_1C19D9FB8;
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x1EEE2F2F8](v7, v5, v6, v2, v3);
}

uint64_t sub_1C19D9FB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C19DA114, 0, 0);
  }
}

char *sub_1C19DA114()
{
  v90 = v2;
  v4 = v2[25];
  if (v4 >> 62)
  {
    v5 = sub_1C1A6F9EC();
    v85 = v2;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:

    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v89 = MEMORY[0x1E69E7CC0];
  sub_1C1A6FB4C();
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v6 = v2[25];
  v7 = v2[22];
  v8 = v2[19];
  v9 = v2[17];
  v79 = v2[14];
  sub_1C1A6EB6C();
  v10 = 0;
  log = v9;
  v83 = v5;
  v77 = (&v9->isa + OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_toroIdProvider);
  v75 = v4 & 0xC000000000000001;
  v76 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_frequencyCapStorageType;
  v74 = (v7 + 8);
  v72 = v6 + 32;
  v73 = (v8 + 16);
  do
  {
    if (v75)
    {
      v11 = v85;
      v12 = MEMORY[0x1C69055B0](v10, v85[25]);
    }

    else
    {
      v12 = *(v72 + 8 * v10);
      v11 = v85;
    }

    v13 = v11[23];
    v15 = v11[20];
    v14 = v11[21];
    v86 = v11[18];
    ++v10;
    v16 = v11[14];
    v17 = v12;
    v18 = v16;
    v19 = MEMORY[0x1C6904520](v17, v79);
    sub_1C1994048(v77, v77[3]);
    v20 = v19;
    v21 = sub_1C1A6ED5C();
    v23 = v22;
    v24 = [v17 contextIdentifier];
    sub_1C1A6D60C();

    v25 = sub_1C1A6D5EC();
    v27 = v26;
    (*v74)(v13, v14);
    (*v73)(v15, log + v76, v86);
    sub_1C19F1A94(v20, v21, v23, v25, v27, v15);

    sub_1C1A6FB2C();
    sub_1C1A6FB5C();
    sub_1C1A6FB6C();
    sub_1C1A6FB3C();
  }

  while (v83 != v10);
  v2 = v85;

  v4 = v89;
LABEL_12:
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v28 = sub_1C1A6F1BC();
  sub_1C1994600(v28, qword_1EDE665F0);

  v0 = sub_1C1A6F19C();
  v1 = sub_1C1A6F67C();

  if (os_log_type_enabled(v0, v1))
  {
    v3 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v88 = v5;
    *v3 = 136315394;
    if (!(v4 >> 62))
    {
      v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_17;
    }

LABEL_49:
    v29 = sub_1C1A6F9EC();
LABEL_17:
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v29 & ~(v29 >> 63);
    v87 = v4;
    loga = v0;
    v84 = v3;
    v80 = v1;
    v78 = v5;
    if (v29)
    {
      v89 = MEMORY[0x1E69E7CC0];
      result = sub_1C19A9E18(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        __break(1u);
        goto LABEL_51;
      }

      v30 = v89;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v33 = 0;
        do
        {
          v34 = MEMORY[0x1C69055B0](v33, v4);
          swift_beginAccess();
          v35 = *(v34 + 32);
          v36 = *(v34 + 40);

          swift_unknownObjectRelease();
          v89 = v30;
          v38 = *(v30 + 16);
          v37 = *(v30 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1C19A9E18((v37 > 1), v38 + 1, 1);
            v30 = v89;
          }

          ++v33;
          *(v30 + 16) = v38 + 1;
          v39 = v30 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v36;
        }

        while (v29 != v33);
      }

      else
      {
        v40 = (v4 + 32);
        v41 = v29;
        do
        {
          v42 = *v40;
          swift_beginAccess();
          v43 = *(v42 + 32);
          v44 = *(v42 + 40);
          v89 = v30;
          v45 = *(v30 + 16);
          v46 = *(v30 + 24);

          if (v45 >= v46 >> 1)
          {
            sub_1C19A9E18((v46 > 1), v45 + 1, 1);
            v30 = v89;
          }

          *(v30 + 16) = v45 + 1;
          v47 = v30 + 16 * v45;
          *(v47 + 32) = v43;
          *(v47 + 40) = v44;
          ++v40;
          --v41;
          v2 = v85;
          v4 = v87;
        }

        while (v41);
      }

      v3 = v84;
      v31 = v29 & ~(v29 >> 63);
    }

    v48 = MEMORY[0x1C6904FE0](v30, MEMORY[0x1E69E6158]);
    v50 = v49;

    v51 = sub_1C19A1884(v48, v50, &v88);

    *(v3 + 4) = v51;
    *(v3 + 12) = 2080;
    v52 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
LABEL_44:
      v67 = MEMORY[0x1C6904FE0](v52, MEMORY[0x1E69E6158]);
      v69 = v68;

      v70 = sub_1C19A1884(v67, v69, &v88);

      *(v3 + 14) = v70;
      _os_log_impl(&dword_1C198D000, loga, v80, "[ContentPipelineTransformer] Finished transforming contents. Returning ads %s which came from the respective request contexts %s", v3, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v78, -1, -1);
      MEMORY[0x1C6906260](v3, -1, -1);

      goto LABEL_45;
    }

    v89 = MEMORY[0x1E69E7CC0];
    result = sub_1C19A9E18(0, v31, 0);
    if ((v29 & 0x8000000000000000) == 0)
    {
      v52 = v89;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v53 = 0;
        do
        {
          v54 = MEMORY[0x1C69055B0](v53, v4);
          swift_beginAccess();
          v55 = *(v54 + 64);
          v56 = *(v54 + 72);

          swift_unknownObjectRelease();
          v89 = v52;
          v58 = *(v52 + 16);
          v57 = *(v52 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1C19A9E18((v57 > 1), v58 + 1, 1);
            v52 = v89;
          }

          ++v53;
          *(v52 + 16) = v58 + 1;
          v59 = v52 + 16 * v58;
          *(v59 + 32) = v55;
          *(v59 + 40) = v56;
        }

        while (v29 != v53);
      }

      else
      {
        v60 = (v4 + 32);
        do
        {
          v61 = *v60;
          swift_beginAccess();
          v62 = *(v61 + 64);
          v63 = *(v61 + 72);
          v89 = v52;
          v64 = *(v52 + 16);
          v65 = *(v52 + 24);

          if (v64 >= v65 >> 1)
          {
            sub_1C19A9E18((v65 > 1), v64 + 1, 1);
            v52 = v89;
          }

          *(v52 + 16) = v64 + 1;
          v66 = v52 + 16 * v64;
          *(v66 + 32) = v62;
          *(v66 + 40) = v63;
          ++v60;
          --v29;
          v2 = v85;
          v4 = v87;
        }

        while (v29);
      }

      v3 = v84;
      goto LABEL_44;
    }

LABEL_51:
    __break(1u);
    return result;
  }

LABEL_45:

  v71 = v2[1];

  return v71(v4);
}

uint64_t sub_1C19DA860()
{
  sub_1C199935C(v0 + 16);
  v1 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_frequencyCapStorageType;
  v2 = sub_1C1A6E4BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C199935C(v0 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_toroIdProvider);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppStoreAdTranslator()
{
  result = qword_1EBF04198;
  if (!qword_1EBF04198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C19DA968()
{
  result = sub_1C1A6E4BC();
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

unint64_t sub_1C19DAA04()
{
  result = qword_1EBF041A8;
  if (!qword_1EBF041A8)
  {
    type metadata accessor for AppStoreAd();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF041A8);
  }

  return result;
}

uint64_t sub_1C19DAA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C19CEBB0;

  return sub_1C19D9DD4(a1, a2, a3);
}

uint64_t sub_1C19DABC0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  v10 = sub_1C19927E8(&v15);
  (*(*(a5 - 8) + 32))(v10, a1, a5);
  type metadata accessor for AppStoreAdTranslator();
  v11 = swift_allocObject();
  sub_1C199274C(&v15, v11 + 16);
  v12 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_frequencyCapStorageType;
  v13 = sub_1C1A6E4BC();
  (*(*(v13 - 8) + 32))(v11 + v12, a3, v13);
  sub_1C199274C(a2, v11 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreAdTranslator_toroIdProvider);
  return v11;
}

void sub_1C19DACB8(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1A6F1FC();
  v107 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v105 = v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1C1A6F22C();
  v104 = *(v106 - 8);
  v10 = MEMORY[0x1EEE9AC00](v106);
  v103 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x420);
  v14 = v13(v10);
  if (v14 && (v15 = v14, type metadata accessor for PromotedMastheadSponsorshipAdView(), v16 = swift_dynamicCastClass(), v15, v16) && (a1 & 1) == 0 || (v17 = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    v102 = v17;
    v18 = [v4 superview];
    if (v18)
    {

      v19 = [v4 window];
      if (v19)
      {
        v101 = v8;

        [v4 frame];
        v20 = &v4[OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame];
        *v20 = v21;
        *(v20 + 1) = v22;
        *(v20 + 2) = v23;
        *(v20 + 3) = v24;
        sub_1C19A21BC();
        v25 = *&v4[OBJC_IVAR___APPCMetricsView_visibilityChecker];

        LODWORD(v99) = [v4 ready];
        v26 = sub_1C19A2A40();
        v27 = v26;
        Height = 0.0;
        if (v26)
        {
          LODWORD(v100) = v26;
          v29 = (v13)();
          if (v29)
          {
            v30 = v29;
            (*((*v12 & *v29) + 0x2A8))();
            v32 = v31;
            v34 = v33;

            if (v34)
            {
              Height = 50.0;
            }

            else
            {
              Height = v32;
            }
          }

          else
          {
            Height = 50.0;
          }

          v27 = v100;
        }

        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = a2;
        v38 = a3;
        *(v37 + 32) = a3;
        *(v37 + 40) = 1;
        v39 = v25;
        v40 = *(v25 + 32);
        if (v40 > 1)
        {

          sub_1C19A2D24(a2);

          sub_1C19A2D24(a2);
LABEL_36:

          goto LABEL_37;
        }

        *(v25 + 32) = v40 + 1;

        sub_1C19A2D24(a2);

        sub_1C19A2D24(a2);
        Current = CFAbsoluteTimeGetCurrent();
        [v4 bounds];
        v43 = v42;
        v45 = v44;
        [v4 bounds];
        Width = CGRectGetWidth(v111);
        if ((v27 & 1) == 0)
        {
          [v4 bounds];
          Height = CGRectGetHeight(v112);
        }

        v47 = [v4 isHidden];
        v48 = v101;
        if ((v47 & 1) != 0 || ([v4 alpha], v49 <= 0.0) || (sub_1C19A2D34() & 1) != 0 || (v113.origin.x = v43, v113.origin.y = v45, v113.size.width = Width, v113.size.height = Height, v50 = CGRectGetWidth(v113), v114.origin.x = v43, v114.origin.y = v45, v114.size.width = Width, v114.size.height = Height, v50 * CGRectGetHeight(v114) <= 0.0))
        {
          sub_1C19E14B4(0, v36, a2, v38, 1);
          v83 = *(v39 + 32);
          v84 = __OFSUB__(v83, 1);
          v85 = v83 - 1;
          if (!v84)
          {
LABEL_35:
            *(v39 + 32) = v85;
            goto LABEL_36;
          }

          __break(1u);
        }

        else
        {
          LODWORD(v100) = v27;
          [v4 convertRect:0 toView:{v43, v45, Width, Height}];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;
          [v102 bounds];
          [v102 convertRect:0 toView:?];
          v60 = v59;
          v62 = v61;
          v64 = v63;
          v98 = v52;
          v97 = v54;
          v96 = v56;
          v95 = v58;
          v94 = v65;
          sub_1C1A0FE50(v52, v54, v56, v58, v59, v61, v63, v65);
          if (v66 > 0.0 && (v100 & (v99 ^ 1) & 1) == 0 && (a1 & 1) == 0)
          {
            v67 = swift_allocObject();
            swift_weakInit();
            v68 = swift_allocObject();
            *(v68 + 2) = v67;
            v68[3] = Current;
            *(v68 + 4) = sub_1C19E3684;
            *(v68 + 5) = v37;

            v100 = v67;

            v99 = v37;
            v69 = [v4 layer];
            v70 = sub_1C19C57B4();

            if (v70)
            {
              v93 = [v4 layer];
              v92[2] = *(v39 + 24);
              v71 = swift_allocObject();
              *(v71 + 16) = sub_1C19E37B8;
              *(v71 + 24) = v68;
              v72 = swift_allocObject();

              v73 = v98;
              v74 = v97;
              v75 = v96;
              v76 = v95;
              v77 = v94;
              v78 = sub_1C19C6F94(v70, v98, v97, v96, v95, v60, v62, v64, v94);

              *(v72 + 16) = v78;
              v79 = swift_allocObject();
              v79[2] = v73;
              v79[3] = v74;
              v79[4] = v75;
              v79[5] = v76;
              v79[6] = v60;
              v79[7] = v62;
              v79[8] = v64;
              v79[9] = v77;
              v92[1] = v72;
              *(v79 + 10) = v72;
              *(v79 + 11) = sub_1C19E37A0;
              v92[0] = v71;
              *(v79 + 12) = v71;
              aBlock[4] = sub_1C19E37A4;
              aBlock[5] = v79;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1C198FEA4;
              aBlock[3] = &unk_1F4140938;
              v98 = COERCE_DOUBLE(_Block_copy(aBlock));

              v80 = v103;
              sub_1C1A6F21C();
              v108 = MEMORY[0x1E69E7CC0];
              sub_1C19C4108();
              sub_1C19A9E58(&qword_1EBF03E28);
              sub_1C19BF710();
              v81 = v105;
              sub_1C1A6F94C();
              v82 = v98;
              MEMORY[0x1C69051C0](0, v80, v81, *&v98);

              _Block_release(*&v82);

              (*(v107 + 8))(v81, v48);
              (*(v104 + 8))(v80, v106);

LABEL_37:
              sub_1C19A504C(a2);

              return;
            }

            goto LABEL_45;
          }

          v86 = ceil(v66 * 100.0);
          if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v86 > -9.22337204e18)
            {
              if (v86 < 9.22337204e18)
              {
                sub_1C19E14B4(v86, v36, a2, v38, 1);
                v87 = *(v39 + 32);
                v84 = __OFSUB__(v87, 1);
                v85 = v87 - 1;
                if (v84)
                {
                  __break(1u);
LABEL_45:
                  swift_beginAccess();
                  Strong = swift_weakLoadStrong();
                  if (!Strong)
                  {

                    goto LABEL_49;
                  }

                  v89 = Strong;
                  sub_1C19E14B4(0, v36, a2, v38, 1);
                  v90 = *(v89 + 32);
                  v84 = __OFSUB__(v90, 1);
                  v91 = v90 - 1;
                  if (!v84)
                  {
                    *(v89 + 32) = v91;

LABEL_49:

                    goto LABEL_37;
                  }

LABEL_54:
                  __break(1u);
                  return;
                }

                goto LABEL_35;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_52;
      }
    }

    if (a2)
    {
      a2();
    }

    v35 = v102;
  }
}

void sub_1C19DB7AC(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1A6F1FC();
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1A6F22C();
  v99 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___APPCMetricsView_contentView;
  if (*&v3[OBJC_IVAR___APPCMetricsView_contentView] && (type metadata accessor for PromotedMastheadSponsorshipAdView(), swift_dynamicCastClass()) && (a1 & 1) == 0 || (v15 = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    if (a2)
    {
      a2();
    }
  }

  else
  {
    v98 = v15;
    v16 = [v3 superview];
    if (v16)
    {

      v17 = [v3 window];
      if (v17)
      {

        [v3 frame];
        v18 = &v3[OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame];
        *v18 = v19;
        *(v18 + 1) = v20;
        *(v18 + 2) = v21;
        *(v18 + 3) = v22;
        sub_1C19A21BC();
        v97 = *&v3[OBJC_IVAR___APPCMetricsView_visibilityChecker];

        LODWORD(v95) = [v3 ready];
        Height = 0.0;
        LODWORD(v96) = sub_1C1A36814();
        v93 = v8;
        if (v96)
        {
          v24 = *&v3[v14];
          if (v24)
          {
            v94 = a3;
            v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x2A8);
            v26 = v24;
            v25();
            v28 = v27;
            LOBYTE(v25) = v29;

            if (v25)
            {
              Height = 50.0;
            }

            else
            {
              Height = v28;
            }

            a3 = v94;
          }

          else
          {
            Height = 50.0;
          }
        }

        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        *(v32 + 24) = a2;
        *(v32 + 32) = a3;
        *(v32 + 40) = 1;
        v33 = v97;
        v34 = *(v97 + 32);
        if (v34 > 1)
        {

          sub_1C19A2D24(a2);

          sub_1C19A2D24(a2);
        }

        else
        {
          v94 = v32;
          *(v97 + 32) = v34 + 1;

          sub_1C19A2D24(a2);

          sub_1C19A2D24(a2);
          Current = CFAbsoluteTimeGetCurrent();
          [v4 bounds];
          v37 = v36;
          v39 = v38;
          [v4 bounds];
          Width = CGRectGetWidth(v104);
          if ((v96 & 1) == 0)
          {
            [v4 bounds];
            Height = CGRectGetHeight(v105);
          }

          if (([v4 isHidden] & 1) == 0)
          {
            [v4 alpha];
            if (v41 > 0.0 && (sub_1C19A2D34() & 1) == 0)
            {
              v106.origin.x = v37;
              v106.origin.y = v39;
              v106.size.width = Width;
              v106.size.height = Height;
              v42 = CGRectGetWidth(v106);
              v107.origin.x = v37;
              v107.origin.y = v39;
              v107.size.width = Width;
              v107.size.height = Height;
              if (v42 * CGRectGetHeight(v107) > 0.0)
              {
                [v4 convertRect:0 toView:{v37, v39, Width, Height}];
                v44 = v43;
                v46 = v45;
                v48 = v47;
                v50 = v49;
                [v98 bounds];
                [v98 convertRect:0 toView:?];
                v52 = v51;
                v54 = v53;
                v56 = v55;
                v92 = v44;
                v91 = v46;
                v90 = v48;
                v89 = v50;
                v88 = v57;
                sub_1C1A0FE50(v44, v46, v48, v50, v51, v53, v55, v57);
                if (v58 > 0.0 && (v96 & (v95 ^ 1) & 1) == 0 && (a1 & 1) == 0)
                {
                  *&v59 = COERCE_DOUBLE(swift_allocObject());
                  swift_weakInit();
                  v60 = swift_allocObject();
                  v60[2] = *&v59;
                  v60[3] = Current;
                  *(v60 + 4) = sub_1C19E2E30;
                  v96 = v60;
                  *(v60 + 5) = v94;

                  v61 = [v4 layer];
                  v62 = sub_1C19C57B4();

                  if (v62)
                  {
                    v87 = [v4 layer];
                    v86[1] = *(v97 + 24);
                    v63 = swift_allocObject();
                    v95 = v63;
                    v64 = v96;
                    *(v63 + 16) = sub_1C19E2E40;
                    *(v63 + 24) = v64;
                    v65 = swift_allocObject();

                    v66 = v92;
                    v67 = v91;
                    v68 = v90;
                    v69 = v89;
                    v70 = v88;
                    v71 = sub_1C19C6F94(v62, v92, v91, v90, v89, v52, v54, v56, v88);

                    *(v65 + 16) = v71;
                    v72 = swift_allocObject();
                    v72[2] = v66;
                    v72[3] = v67;
                    v72[4] = v68;
                    v72[5] = v69;
                    v72[6] = v52;
                    v72[7] = v54;
                    v72[8] = v56;
                    v72[9] = v70;
                    v86[0] = v65;
                    *(v72 + 10) = v65;
                    *(v72 + 11) = sub_1C19E2E44;
                    *(v72 + 12) = v95;
                    aBlock[4] = sub_1C19E2E74;
                    aBlock[5] = v72;
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_1C198FEA4;
                    aBlock[3] = &unk_1F41407D0;
                    v73 = _Block_copy(aBlock);

                    sub_1C1A6F21C();
                    v101 = MEMORY[0x1E69E7CC0];
                    sub_1C19C4108();
                    sub_1C19A9E58(&qword_1EBF03E28);
                    sub_1C19BF710();
                    v92 = *&v59;
                    v74 = v93;
                    sub_1C1A6F94C();
                    MEMORY[0x1C69051C0](0, v13, v10, v73);

                    _Block_release(v73);

                    (*(v100 + 8))(v10, v74);
                    (*(v99 + 8))(v13, v11);

LABEL_38:
                    sub_1C19A504C(a2);

                    return;
                  }

                  swift_beginAccess();
                  Strong = swift_weakLoadStrong();
                  if (!Strong)
                  {

                    goto LABEL_49;
                  }

                  v83 = Strong;
                  sub_1C19E168C(0, v31, a2, a3, 1);
                  v84 = *(v83 + 32);
                  v76 = __OFSUB__(v84, 1);
                  v85 = v84 - 1;
                  if (!v76)
                  {
                    *(v83 + 32) = v85;

LABEL_49:

                    goto LABEL_38;
                  }

LABEL_55:
                  __break(1u);
                  return;
                }

                v78 = ceil(v58 * 100.0);
                v79 = v97;
                if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v78 > -9.22337204e18)
                  {
                    if (v78 < 9.22337204e18)
                    {
                      sub_1C19E168C(v78, v31, a2, a3, 1);
                      v80 = *(v79 + 32);
                      v76 = __OFSUB__(v80, 1);
                      v81 = v80 - 1;
                      if (!v76)
                      {
                        *(v79 + 32) = v81;

                        goto LABEL_37;
                      }

LABEL_54:
                      __break(1u);
                      goto LABEL_55;
                    }

LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }

LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }
          }

          sub_1C19E168C(0, v31, a2, a3, 1);
          v75 = *(v33 + 32);
          v76 = __OFSUB__(v75, 1);
          v77 = v75 - 1;
          if (v76)
          {
            __break(1u);
            goto LABEL_51;
          }

          *(v33 + 32) = v77;
        }

LABEL_37:

        goto LABEL_38;
      }
    }

    if (a2)
    {
      a2();
    }

    v30 = v98;
  }
}

double static MetricsView.size(forView:contentSizeCategory:)(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x420))();
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    v5 = (*((*v1 & *v2) + 0x2A8))();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return *&v5;
    }
  }

  return v3;
}

uint64_t sub_1C19DC498()
{
  swift_beginAccess();
  v1 = swift_unknownObjectWeakAssign();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))(v1);
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1C19DC57C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___APPCMetricsView_interactionPresentationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C19DC614;
}

void sub_1C19DC614(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();
    v5 = swift_unknownObjectRelease();
    v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x420))(v5);
    if (v6)
    {
      v7 = v6;
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id sub_1C19DC7BC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);

  return v3;
}

double sub_1C19DC930()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___APPCPromotedContentView_privacyMarkerView);

  [v3 frame];
  v5 = v4;

  return v5;
}

id sub_1C19DCA10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1C19DCB18()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if ([v0 ready])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong metricsViewReady_];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

void (*sub_1C19DCBB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___APPCMetricsView_readyDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C19DCC4C;
}

void sub_1C19DCC4C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[4];
    swift_endAccess();
    swift_unknownObjectRelease();
    if ([v4 ready])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong metricsViewReady_];
        swift_unknownObjectRelease();
      }
    }
  }

  free(v3);
}

uint64_t sub_1C19DCD60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___APPCMetricsView_impressionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C19DCDCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___APPCMetricsView_impressionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C19DCE6C;
}

void sub_1C19DCE6C(uint64_t a1, char a2)
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
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1C19DCF38()
{
  v1 = [*(v0 + OBJC_IVAR___APPCMetricsView_promotedContent) diagnosticMetricHelper];

  return v1;
}

double sub_1C19DD074()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (!v2)
  {
    return 40.0;
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0x2B0))();

  return v4;
}

uint64_t sub_1C19DD154(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1C19DD204(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MetricsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MetricsView.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1C1A6F65C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v3 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v40 = v5;
    *v4 = 136380931;
    v6 = [v0 superview];
    if (v6)
    {

      v39 = [v0 superview];
      sub_1C19A9E58(&qword_1EBF03ED0);
      v7 = sub_1C1A6F8FC();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
      v7 = 7104878;
    }

    v10 = sub_1C19A1884(v7, v9, &v40);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2081;
    v11 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
    v12 = sub_1C1A6F3CC();
    v14 = v13;

    v15 = sub_1C19A1884(v12, v14, &v40);

    *(v4 + 14) = v15;
    _os_log_impl(&dword_1C198D000, v3, v2, "MetricsView is being deallocated, the superview is %{private}s. PC Identifier: %{private}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v5, -1, -1);
    MEMORY[0x1C6906260](v4, -1, -1);
  }

  else
  {
  }

  v16 = sub_1C1A6F65C();
  v17 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136380931;
    v20 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] journeyIdentifier];
    v21 = sub_1C1A6F3CC();
    v23 = v22;

    v24 = sub_1C19A1884(v21, v23, &v40);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = [v1 debugDescription];
    v26 = sub_1C1A6F3CC();
    v28 = v27;

    v29 = sub_1C19A1884(v26, v28, &v40);

    *(v18 + 14) = v29;
    _os_log_impl(&dword_1C198D000, v17, v16, "MetricsView is being deallocated, Journey Identifier: %{private}s %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v19, -1, -1);
    MEMORY[0x1C6906260](v18, -1, -1);
  }

  sub_1C1A6F65C();
  v30 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C1A73A30;
  v32 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v33 = [objc_msgSend(*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper)];
  swift_unknownObjectRelease();
  v34 = sub_1C1A6F3CC();
  v36 = v35;

  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = sub_1C199E518();
  *(v31 + 32) = v34;
  *(v31 + 40) = v36;
  sub_1C1A6F18C();

  [*&v1[v32] setAttachedToView_];
  [objc_msgSend(*&v1[v32] metricsHelper)];
  swift_unknownObjectRelease();
  v37 = type metadata accessor for MetricsView();
  v41.receiver = v1;
  v41.super_class = v37;
  return objc_msgSendSuper2(&v41, sel_dealloc);
}

void sub_1C19DDA38()
{
  v1 = v0;
  v2 = sub_1C1A6E6EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))(v4);
  if (v8)
  {
    v9 = *((*v7 & *v8) + 0x2A8);
    v62 = v8;
    v9();
    if (v10)
    {
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v11 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C1A73A30;
      v13 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v14 = sub_1C1A6F3CC();
      v16 = v15;

      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C199E518();
      *(v12 + 32) = v14;
      *(v12 + 40) = v16;
      sub_1C1A6F18C();

      Height = 0.0;
      if (sub_1C199E87C())
      {
        v18 = *&v1[OBJC_IVAR___APPCMetricsView_debugView];
        if (v18)
        {
          [v18 frame];
          Height = CGRectGetHeight(v64);
        }
      }

      [v1 frame];
      v20 = v19;
      v22 = v21;
      [v1 frame];
      [v1 setFrame_];

      v1[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = 1;
      v1[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = 1;
    }

    else
    {
      v29 = OBJC_IVAR___APPCMetricsView_promotedContent;
      if ([*&v0[OBJC_IVAR___APPCMetricsView_promotedContent] discardedDueToPolicy])
      {
        sub_1C1A6F66C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v30 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1C1A73A30;
        v32 = [*&v1[v29] identifier];
        v33 = sub_1C1A6F3CC();
        v35 = v34;

        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = sub_1C199E518();
        *(v31 + 32) = v33;
        *(v31 + 40) = v35;
        sub_1C1A6F18C();

        [v1 setReady_];
        [v1 collapse];
        v36 = v62;
      }

      else
      {
        v37 = v0[OBJC_IVAR___APPCMetricsView_forcedReadiness];
        v38 = &unk_1E8148000;
        v60 = v3;
        v61 = v29;
        if (v37)
        {
          v59[1] = sub_1C1A6F65C();
          sub_1C198FB8C(0, &qword_1EDE63F30);
          v39 = sub_1C1A6F8EC();
          sub_1C19A9E58(&unk_1EBF03FD0);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1C1A73A30;
          v41 = [*&v1[v29] identifier];
          v42 = sub_1C1A6F3CC();
          v44 = v43;

          v29 = v61;
          *(v40 + 56) = MEMORY[0x1E69E6158];
          *(v40 + 64) = sub_1C199E518();
          *(v40 + 32) = v42;
          *(v40 + 40) = v44;
          v38 = &unk_1E8148000;
          sub_1C1A6F18C();
        }

        else
        {
          v0[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = 0;
          v0[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = 2;
        }

        [v1 ready];
        sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v45 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1C1A73A30;
        v47 = [*&v1[v29] v38[288]];
        v48 = sub_1C1A6F3CC();
        v50 = v49;

        *(v46 + 56) = MEMORY[0x1E69E6158];
        *(v46 + 64) = sub_1C199E518();
        *(v46 + 32) = v48;
        *(v46 + 40) = v50;
        sub_1C1A6F18C();
        v51 = MEMORY[0x1E69E7D40];

        v52 = sub_1C199E87C();
        v53 = v60;
        v54 = v61;
        if (v52)
        {
          v55 = *&v1[OBJC_IVAR___APPCMetricsView_debugView];
          if (v55)
          {
            [v55 frame];
            CGRectGetHeight(v66);
          }
        }

        (*((*v51 & *v62) + 0x2D8))();
        [v1 frame];
        [v1 setFrame_];
        (*(v53 + 104))(v6, *MEMORY[0x1E69C60E8], v2);
        if ([objc_opt_self() isAppleInternalInstall])
        {
          v56 = [*&v1[v54] metricsHelper];
          sub_1C1A6E3AC();
          if (swift_dynamicCastClass() && (v57 = sub_1C1A6E39C()) != 0)
          {
            v58 = v57;
            sub_1C1A6E6DC();
          }

          else
          {
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v53 + 8))(v6, v2);
      }
    }
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v23 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C1A73A30;
    v25 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
    v26 = sub_1C1A6F3CC();
    v28 = v27;

    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C199E518();
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    sub_1C1A6F18C();
  }
}

void sub_1C19DE4F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C19DACB8(0, 0, 0);
  }
}

uint64_t sub_1C19DE550()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v8 = sub_1C1A6D5DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  sub_1C1A6D5CC();
  v15 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v16 = [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) metricEventsTracking];
  if (!v16)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_7:
    sub_1C1991140(v7, &qword_1EBF038A8);
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A73A30;
    v22 = [*(v1 + v15) identifier];
    v23 = sub_1C1A6F3CC();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C199E518();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    sub_1C1A6F18C();

    return (*(v9 + 8))(v14, v8);
  }

  v17 = v1;
  v18 = [v16 placeholderPlacedTimestamp];
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_1C1A6D59C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v9 + 56))(v4, v19, 1, v8);
  sub_1C19E2D00(v4, v7);
  v1 = v17;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_7;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1C1A6D50C();
  v28 = v27;
  v29 = [*(v17 + v15) context];
  v45 = v14;
  if (v29 && (v30 = [v29 current], swift_unknownObjectRelease(), v30))
  {
    [v30 placement];
    swift_unknownObjectRelease();
    v43 = sub_1C1A6E9FC();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v31 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C1A73CD0;
  v33 = v17;
  v34 = [*(v17 + v15) identifier];
  v35 = sub_1C1A6F3CC();
  v37 = v36;

  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1C199E518();
  v38 = MEMORY[0x1E69E63B0];
  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  v39 = MEMORY[0x1E69E6438];
  *(v32 + 96) = v38;
  *(v32 + 104) = v39;
  *(v32 + 72) = v28;
  sub_1C1A6F18C();

  v40 = [*(v33 + v15) metricEventsTracking];
  if (v40)
  {
    [v40 sendAnalyticsEventFor:5 interval:0 networkType:v43 placementType:0 failed:v28];
    swift_unknownObjectRelease();
  }

  v41 = *(v9 + 8);
  v41(v11, v8);
  return (v41)(v45, v8);
}

uint64_t sub_1C19DEB18(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];
  v4 = *(v2 + OBJC_IVAR___APPCMetricsView_visibleThresholds);
  v5 = *(v4 + 16);
  if (v5)
  {

    v7 = 32;
    do
    {
      v8 = *(v4 + v7);
      if (v8 <= a1)
      {
        sub_1C19EDF80(v24, v8);
      }

      v7 += 8;
      --v5;
    }

    while (v5);

    v3 = v25;
  }

  v9 = OBJC_IVAR___APPCMetricsView_reportedVisibilityThresholds;
  swift_beginAccess();
  if (*(*(v2 + v9) + 16) <= *(v3 + 16) >> 3)
  {

    sub_1C1A5CAB8(v13);

    v11 = v3;
  }

  else
  {

    v11 = sub_1C1A5CDCC(v10, v3);
  }

  v14 = 0;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 56);
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
LABEL_19:
    v20 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v17)))));
    if (v20)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v20;

      sub_1C1A6F6BC();
    }

    v17 &= v17 - 1;
    swift_beginAccess();
    sub_1C19EDF80(&v23, v20);
    result = swift_endAccess();
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v18)
    {
    }

    v17 = *(v11 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1C19DED8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x1E69E7D40];
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x420))();

    if (v6)
    {
      (*((*v4 & *v6) + 0x2F0))(a2);
    }
  }
}

void sub_1C19DEE6C()
{
  [*(v0 + OBJC_IVAR___APPCMetricsView_promotedContent) adType];
  v1 = sub_1C1A6DEAC();
  if (v1 == sub_1C1A6DEAC())
  {
    *(v0 + OBJC_IVAR___APPCMetricsView_needToSendOnScreen) = 1;

    sub_1C19DACB8(0, 0, 0);
  }
}

void sub_1C19DEF38(void *a1)
{
  v2 = v1;
  [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) adType];
  v3 = sub_1C1A6DEAC();
  if (v3 == sub_1C1A6DEAC())
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x420))();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for PromotedMastheadSponsorshipAdView();
      v6 = swift_dynamicCastClass();

      if (v6 && a1 != 0)
      {
        v8 = OBJC_IVAR___APPCMetricsView_offsetObserver;
        v9 = *(v2 + OBJC_IVAR___APPCMetricsView_offsetObserver);
        v10 = a1;
        if (v9)
        {
          v11 = v9;
          sub_1C1A6D37C();

          v12 = *(v2 + v8);
        }

        else
        {
          v12 = 0;
        }

        *(v2 + v8) = 0;

        swift_unknownObjectWeakAssign();
        sub_1C19DACB8(1, 0, 0);
      }
    }
  }
}

id MetricsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_1C19DF168(char a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&unk_1EBF050D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x420))(v5);
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();

    sub_1C1A6EB6C();
    v10 = swift_dynamicCastClass();
    if (v10 && (v11 = v10, (sub_1C1A6EB3C() & 1) != 0) && (a1 & 1) == 0 && (*(v2 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) & 1) == 0 && *(v2 + OBJC_IVAR___APPCMetricsView_isAAKEnabled) == 1)
    {
      *(v2 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 1;
      v12 = sub_1C1A6F5AC();
      (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
      sub_1C1A6F58C();
      swift_unknownObjectRetain();
      v13 = sub_1C1A6F57C();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      v16 = sub_1C1A6B6D8(0, 0, v7, &unk_1C1A75310, v14);
      swift_unknownObjectRelease();
      v17 = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
      swift_beginAccess();
      *(v2 + v17) = v16;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  [objc_msgSend(*(v2 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper)];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C19DF3D8()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&unk_1EBF050D0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))(v3);
  if (v6)
  {
    v7 = v6;
    swift_unknownObjectRetain();

    sub_1C1A6EB6C();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      if ((sub_1C1A6EB3C() & 1) != 0 && v1[OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording] == 1 && v1[OBJC_IVAR___APPCMetricsView_isAAKEnabled] == 1)
      {
        v10 = sub_1C1A6F5AC();
        (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
        sub_1C1A6F58C();
        swift_unknownObjectRetain();
        v11 = v1;
        v12 = sub_1C1A6F57C();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E85E0];
        v13[2] = v12;
        v13[3] = v14;
        v13[4] = v11;
        v13[5] = v9;
        sub_1C1A40E34(0, 0, v5, &unk_1C1A752E8, v13);
      }
    }

    swift_unknownObjectRelease();
  }

  v15 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper];
  if ([objc_opt_self() isMainThread])
  {
    v16 = sub_1C19A2A40();
  }

  else
  {
    v16 = v1[OBJC_IVAR___APPCMetricsView_viewCollapsedState] != 2;
  }

  [v15 offScreenWithCollapsed_];
  return swift_unknownObjectRelease();
}

void MetricsView.registerHandlerForAllMetrics(closure:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
  aBlock[6] = &unk_1F41642C0;
  v6 = swift_dynamicCastObjCProtocolConditional();
  if (v6)
  {
    v7 = v6;
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C19DF764;
    aBlock[3] = &unk_1F41405D0;
    v8 = _Block_copy(aBlock);

    [v7 registerHandlerForAllMetricsWithClosure_];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C19DF764(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall MetricsView.removeHandler()()
{
  v1 = [*(v0 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    [v2 removeHandler];
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C19DF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  sub_1C1A6F58C();
  v4[14] = sub_1C1A6F57C();
  v6 = sub_1C1A6F56C();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C19DF9F8, v6, v5);
}

uint64_t sub_1C19DF9F8()
{
  v1 = sub_1C1A6EADC();
  *(v0 + 136) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    v4 = sub_1C19A9E58(&unk_1EBF042F0);
    v5 = sub_1C19A9E58(&qword_1EBF04990);
    *v3 = v0;
    v3[1] = sub_1C19DFC14;
    v6 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 16, v2, v4, v5, v6);
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1C19E2F54(v0 + 16, v0 + 56);
    v7 = *(v0 + 80);
    if (v7)
    {
      v8 = *(v0 + 88);
      sub_1C1994048((v0 + 56), *(v0 + 80));
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_1C19DFEA0;

      return MEMORY[0x1EEE2F5C8](v7, v8);
    }

    else
    {
      sub_1C1991140(v0 + 16, &unk_1EBF042F0);

      sub_1C1991140(v0 + 56, &unk_1EBF042F0);
      **(v0 + 96) = 1;
      v10 = *(v0 + 8);

      return v10();
    }
  }
}

uint64_t sub_1C19DFC14()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1C19E006C;
  }

  else
  {
    v5 = sub_1C19DFD50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C19DFD50()
{

  sub_1C19E2F54(v0 + 16, v0 + 56);
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    sub_1C1994048((v0 + 56), *(v0 + 80));
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_1C19DFEA0;

    return MEMORY[0x1EEE2F5C8](v1, v2);
  }

  else
  {
    sub_1C1991140(v0 + 16, &unk_1EBF042F0);

    sub_1C1991140(v0 + 56, &unk_1EBF042F0);
    **(v0 + 96) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C19DFEA0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1C19E00DC;
  }

  else
  {
    v5 = sub_1C19DFFDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C19DFFDC()
{

  sub_1C1991140(v0 + 16, &unk_1EBF042F0);
  sub_1C199935C(v0 + 56);
  **(v0 + 96) = 1;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C19E006C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C19E00DC()
{

  sub_1C1991140(v0 + 16, &unk_1EBF042F0);
  sub_1C199935C(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C19E0160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  sub_1C1A6F58C();
  v5[21] = sub_1C1A6F57C();
  v7 = sub_1C1A6F56C();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C19E01F8, v7, v6);
}

uint64_t sub_1C19E01F8()
{
  v22 = v0;
  v1 = v0[19];
  v2 = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
  v0[24] = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[25] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[26] = v4;
    v5 = sub_1C19A9E58(&qword_1EBF04990);
    v0[27] = v5;
    *v4 = v0;
    v4[1] = sub_1C19E0494;
    v6 = MEMORY[0x1E69E6370];
    v7 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 34, v3, v6, v5, v7);
  }

  else
  {

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v9 = sub_1C1A6F1BC();
    sub_1C1994600(v9, qword_1EDE665F0);
    v10 = v8;
    v11 = sub_1C1A6F19C();
    v12 = sub_1C1A6F66C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_1C1A6EA5C();
      v17 = sub_1C19A1884(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C198D000, v11, v12, "PC %s: Failed to receive attribution impression start status, failed to record app view through impression.", v13, 0xCu);
      sub_1C199935C(v14);
      MEMORY[0x1C6906260](v14, -1, -1);
      MEMORY[0x1C6906260](v13, -1, -1);
    }

    v18 = v0[19];
    *(v18 + v0[24]) = 0;

    *(v18 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1C19E0494()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1C19E0E10;
  }

  else
  {
    v5 = sub_1C19E05EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C19E05EC()
{
  v21 = v0;
  if (*(v0 + 272) == 1)
  {
    v1 = sub_1C1A6EADC();
    *(v0 + 232) = v1;
    if (v1)
    {
      v2 = v1;
      v3 = swift_task_alloc();
      *(v0 + 240) = v3;
      v4 = sub_1C19A9E58(&unk_1EBF042F0);
      *v3 = v0;
      v3[1] = sub_1C19E0898;
      v5 = *(v0 + 216);
      v6 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 56, v2, v4, v5, v6);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1C1991140(v0 + 56, &unk_1EBF042F0);
  }

  else
  {
  }

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 160);
  v8 = sub_1C1A6F1BC();
  sub_1C1994600(v8, qword_1EDE665F0);
  v9 = v7;
  v10 = sub_1C1A6F19C();
  v11 = sub_1C1A6F66C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = sub_1C1A6EA5C();
    v16 = sub_1C19A1884(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C198D000, v10, v11, "PC %s: Failed to receive attribution impression start status, failed to record app view through impression.", v12, 0xCu);
    sub_1C199935C(v13);
    MEMORY[0x1C6906260](v13, -1, -1);
    MEMORY[0x1C6906260](v12, -1, -1);
  }

  v17 = *(v0 + 152);
  *(v17 + *(v0 + 192)) = 0;

  *(v17 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1C19E0898()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1C19E1040;
  }

  else
  {
    v5 = sub_1C19E09D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C19E09D4()
{
  v18 = v0;

  if (*(v0 + 80))
  {
    sub_1C199274C((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_1C1994048((v0 + 16), v1);
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_1C19E0C4C;

    return MEMORY[0x1EEE2F5C0](v1, v2);
  }

  else
  {

    sub_1C1991140(v0 + 56, &unk_1EBF042F0);
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_1C1A6F1BC();
    sub_1C1994600(v5, qword_1EDE665F0);
    v6 = v4;
    v7 = sub_1C1A6F19C();
    v8 = sub_1C1A6F66C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = sub_1C1A6EA5C();
      v13 = sub_1C19A1884(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C198D000, v7, v8, "PC %s: Failed to receive attribution impression start status, failed to record app view through impression.", v9, 0xCu);
      sub_1C199935C(v10);
      MEMORY[0x1C6906260](v10, -1, -1);
      MEMORY[0x1C6906260](v9, -1, -1);
    }

    v14 = *(v0 + 152);
    *(v14 + *(v0 + 192)) = 0;

    *(v14 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1C19E0C4C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1C19E127C;
  }

  else
  {
    v5 = sub_1C19E0D88;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C19E0D88()
{

  sub_1C199935C((v0 + 2));
  v1 = v0[19];
  *(v1 + v0[24]) = 0;

  *(v1 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  v2 = v0[1];

  return v2();
}

uint64_t sub_1C19E0E10()
{
  v20 = v0;

  v1 = v0[28];
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C1A6F19C();
  v7 = sub_1C1A6F66C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_1C1A6EA5C();
    v12 = sub_1C19A1884(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1C1A6FD4C();
    v15 = sub_1C19A1884(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C198D000, v6, v7, "PC %s: Failed to end recording view for attribution with error %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[19];
  *(v16 + v0[24]) = 0;

  *(v16 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1C19E1040()
{
  v20 = v0;

  v1 = v0[31];
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C1A6F19C();
  v7 = sub_1C1A6F66C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_1C1A6EA5C();
    v12 = sub_1C19A1884(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1C1A6FD4C();
    v15 = sub_1C19A1884(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C198D000, v6, v7, "PC %s: Failed to end recording view for attribution with error %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[19];
  *(v16 + v0[24]) = 0;

  *(v16 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1C19E127C()
{
  v20 = v0;

  sub_1C199935C((v0 + 2));
  v1 = v0[33];
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_1C1A6F1BC();
  sub_1C1994600(v3, qword_1EDE665F0);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C1A6F19C();
  v7 = sub_1C1A6F66C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_1C1A6EA5C();
    v12 = sub_1C19A1884(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1C1A6FD4C();
    v15 = sub_1C19A1884(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C198D000, v6, v7, "PC %s: Failed to end recording view for attribution with error %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v9, -1, -1);
    MEMORY[0x1C6906260](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[19];
  *(v16 + v0[24]) = 0;

  *(v16 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  v17 = v0[1];

  return v17();
}

void sub_1C19E14B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([objc_opt_self() isMainThread])
    {
      v11 = v10;
      v12 = [v11 superview];
      if (v12)
      {

        v13 = [v11 window];
        if (v13)
        {

          if ((*(v11 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
          {
LABEL_14:
            sub_1C19A3538(a1, a3, a4);
LABEL_15:

            return;
          }

LABEL_12:
          if (a3)
          {
            a3();
          }

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    if ((a5 & 1) != 0 && (*(v10 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v14 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  if (a3)
  {
    a3();
  }
}

void sub_1C19E168C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, char a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([objc_opt_self() isMainThread])
    {
      v11 = v10;
      v12 = [v11 superview];
      if (v12)
      {

        v13 = [v11 window];
        if (v13)
        {

          if ((*(v11 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
          {
LABEL_14:
            sub_1C19E1864(a1, a3, a4);
LABEL_15:

            return;
          }

LABEL_12:
          if (a3)
          {
            a3();
          }

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    if ((a5 & 1) != 0 && (*(v10 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v14 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  if (a3)
  {
    a3();
  }
}

void sub_1C19E1864(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___APPCMetricsView_viewCollapsedState;
  if (*(v3 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) || (v8 = a1, v9 = [objc_opt_self() isMainThread], a1 = v8, (v9 & 1) != 0))
  {
    sub_1C19A4200(a1, &unk_1F41406C8, &unk_1F4140830, sub_1C19E2E84, sub_1C19CB898);
    if (*(v4 + v7) == 2)
    {
      sub_1C19C38C0();
    }

    if (a2)
    {
      a2();
    }
  }

  else
  {
    v10 = v8;
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F66C();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73A30;
    v14 = *(v4 + OBJC_IVAR___APPCMetricsView_identifier);
    v13 = *(v4 + OBJC_IVAR___APPCMetricsView_identifier + 8);
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C199E518();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;

    sub_1C1A6F17C();

    sub_1C198FB8C(0, &qword_1EDE63F38);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v15;
    v16[5] = v10;
    sub_1C19A2D24(a2);

    sub_1C1A6F6BC();
  }
}

void sub_1C19E1B0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = 0.0;
      v8 = 1.0;
      if (a2 != 100)
      {
        if (a2 >= 50)
        {
          v7 = 0.823529412;
        }

        else
        {
          if (a2 <= 0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = 0.549019608;
          }

          v7 = 1.0;
        }
      }

      [v4 bounds];
      [v6 setFrame_];
      [v4 bringSubviewToFront_];
      v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v7 green:v8 blue:0.0 alpha:0.8];
      [v6 setBackgroundColor_];
    }
  }
}

void sub_1C19E1C44(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 superview];
    if (v8)
    {

      v9 = [v7 window];
      if (v9)
      {

        if ((*(v7 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
        {
          sub_1C19A4200(a4, &unk_1F4140880, &unk_1F4140998, sub_1C19E37A8, sub_1C19A3828);
        }
      }
    }

    else
    {
    }

    if (a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v10 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    if (a1)
    {
LABEL_10:
      a1();
    }
  }
}

void sub_1C19E1DFC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [v7 superview];
    if (v8)
    {

      v9 = [v7 window];
      if (v9)
      {

        if ((*(v7 + OBJC_IVAR___APPCMetricsView_isBackgrounded) & 1) == 0)
        {
          sub_1C19A4200(a4, &unk_1F41406C8, &unk_1F4140830, sub_1C19E2E84, sub_1C19CB898);
        }
      }
    }

    else
    {
    }

    if (a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v10 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    if (a1)
    {
LABEL_10:
      a1();
    }
  }
}

uint64_t sub_1C19E1FB4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C19E2000(a1, a2);
  sub_1C19E2130(&unk_1F413ED80);
  return v3;
}

uint64_t sub_1C19E2000(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C19E221C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C1A6FB1C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C1A6F4AC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C19E221C(v10, 0);
        result = sub_1C1A6FABC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C19E2130(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C19E2290(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C19E221C(uint64_t a1, uint64_t a2)
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

  sub_1C19A9E58(&qword_1EBF03770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C19E2290(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_1C19E2384(uint64_t a1, uint64_t a2)
{
  [objc_msgSend(*(a2 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper)];

  return swift_unknownObjectRelease();
}

void _s17PromotedContentUI11MetricsViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___APPCMetricsView_frameObserver) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_currentlyViewable) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_context) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_debugView) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_forcedReadiness) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_wasTapped) = 0;
  *(v0 + OBJC_IVAR___APPCMetricsView_isBackgrounded) = 0;
  v2 = OBJC_IVAR___APPCMetricsView_impressionSent;
  type metadata accessor for ImpressionSent();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR___APPCMetricsView_timingTracking;
  *(v1 + v3) = sub_1C199B450(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR___APPCMetricsView_visibilityChecker;
  type metadata accessor for VisibilityChecker();
  swift_allocObject();
  *(v1 + v4) = sub_1C199B784();
  *(v1 + OBJC_IVAR___APPCMetricsView_needToSendOnScreen) = 0;
  v5 = (v1 + OBJC_IVAR___APPCMetricsView_slotPosition);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v1 + OBJC_IVAR___APPCMetricsView_adContentPosition);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_currentOrientation) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___APPCMetricsView_offsetObserver) = 0;
  v7 = (v1 + OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame);
  *v7 = 0u;
  v7[1] = 0u;
  *(v1 + OBJC_IVAR___APPCMetricsView_readinessObserver) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView____lazy_storage___debugViewEnabled) = 2;
  *(v1 + OBJC_IVAR___APPCMetricsView____lazy_storage___debugVisibilityColorsEnabled) = 2;
  *(v1 + OBJC_IVAR___APPCMetricsView_visibleThresholds) = &unk_1F413F158;
  *(v1 + OBJC_IVAR___APPCMetricsView_reportedVisibilityThresholds) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR___APPCMetricsView_contentView) = 0;
  v8 = OBJC_IVAR___APPCMetricsView_visibleThresholdsLock;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v1 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_lastCollapsedState) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_policyCheckCompleted) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_ready) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___APPCMetricsView_impressionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___APPCMetricsView_promotedContentInfo) = 0;
  *(v1 + OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask) = 0;
  sub_1C1A6FB8C();
  __break(1u);
}

uint64_t sub_1C19E26C0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1C19E2D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19E2D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C19909C4;

  return sub_1C19E0160(a1, v4, v5, v7, v6);
}

uint64_t sub_1C19E2EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C19909C4;

  return sub_1C19DF960(a1, v4, v5, v6);
}

uint64_t sub_1C19E2F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&unk_1EBF042F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1C19E2FC4(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_1C1A6EBFC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR___APPCMetricsView_frameObserver] = 0;
  a4[OBJC_IVAR___APPCMetricsView_currentlyViewable] = 0;
  v20 = OBJC_IVAR___APPCMetricsView_context;
  *&a4[OBJC_IVAR___APPCMetricsView_context] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_debugView] = 0;
  a4[OBJC_IVAR___APPCMetricsView_forcedReadiness] = 0;
  a4[OBJC_IVAR___APPCMetricsView_wasTapped] = 0;
  a4[OBJC_IVAR___APPCMetricsView_isBackgrounded] = 0;
  v21 = OBJC_IVAR___APPCMetricsView_impressionSent;
  type metadata accessor for ImpressionSent();
  *&a4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR___APPCMetricsView_timingTracking;
  *&a4[v22] = sub_1C199B450(MEMORY[0x1E69E7CC0]);
  v23 = OBJC_IVAR___APPCMetricsView_visibilityChecker;
  type metadata accessor for VisibilityChecker();
  swift_allocObject();
  *&a4[v23] = sub_1C199B784();
  a4[OBJC_IVAR___APPCMetricsView_needToSendOnScreen] = 0;
  v24 = &a4[OBJC_IVAR___APPCMetricsView_slotPosition];
  *v24 = 0u;
  v24[1] = 0u;
  v25 = &a4[OBJC_IVAR___APPCMetricsView_adContentPosition];
  *v25 = 0;
  v25[1] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_currentOrientation] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR___APPCMetricsView_offsetObserver] = 0;
  v26 = &a4[OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame];
  *v26 = 0u;
  v26[1] = 0u;
  *&a4[OBJC_IVAR___APPCMetricsView_readinessObserver] = 0;
  a4[OBJC_IVAR___APPCMetricsView____lazy_storage___debugViewEnabled] = 2;
  a4[OBJC_IVAR___APPCMetricsView____lazy_storage___debugVisibilityColorsEnabled] = 2;
  *&a4[OBJC_IVAR___APPCMetricsView_visibleThresholds] = &unk_1F413F2E8;
  *&a4[OBJC_IVAR___APPCMetricsView_reportedVisibilityThresholds] = MEMORY[0x1E69E7CD0];
  *&a4[OBJC_IVAR___APPCMetricsView_contentView] = 0;
  v27 = OBJC_IVAR___APPCMetricsView_visibleThresholdsLock;
  *&a4[v27] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  a4[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = 0;
  a4[OBJC_IVAR___APPCMetricsView_lastCollapsedState] = 0;
  a4[OBJC_IVAR___APPCMetricsView_policyCheckCompleted] = 0;
  a4[OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording] = 0;
  a4[OBJC_IVAR___APPCMetricsView_ready] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR___APPCMetricsView_impressionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR___APPCMetricsView_promotedContentInfo;
  *&a4[OBJC_IVAR___APPCMetricsView_promotedContentInfo] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask] = 0;
  *&a4[v20] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1C1A6DCFC();
  swift_unknownObjectRetain();
  v29 = sub_1C1A6DCBC();
  swift_beginAccess();
  v30 = *&a4[v28];
  *&a4[v28] = v29;

  *&a4[OBJC_IVAR___APPCMetricsView_promotedContent] = a2;
  a4[OBJC_IVAR___APPCMetricsView_startsCollapsed] = a3;
  a4[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = a3;
  v31 = [swift_unknownObjectRetain() identifier];
  v32 = sub_1C1A6F3CC();
  v34 = v33;

  swift_unknownObjectRelease();
  v35 = &a4[OBJC_IVAR___APPCMetricsView_identifier];
  *v35 = v32;
  v35[1] = v34;
  if (qword_1EDE637E0 != -1)
  {
    swift_once();
  }

  sub_1C19992F8(qword_1EDE66590, v46);
  sub_1C1994048(v46, v46[3]);
  (*(v17 + 104))(v19, *MEMORY[0x1E6989CF8], v16);
  v36 = sub_1C1A6EC3C();
  (*(v17 + 8))(v19, v16);
  a4[OBJC_IVAR___APPCMetricsView_isAAKEnabled] = v36 & 1;
  sub_1C199935C(v46);
  v37 = type metadata accessor for MetricsView();
  v45.receiver = a4;
  v45.super_class = v37;
  v38 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a5, a6, a7, a8);
  sub_1C199C4C0(a3 & 1);
  v39 = [objc_opt_self() mainScreen];
  v40 = sub_1C199C748();

  *&v38[OBJC_IVAR___APPCMetricsView_currentOrientation] = v40;
  v41 = OBJC_IVAR___APPCMetricsView_promotedContent;
  [*&v38[OBJC_IVAR___APPCMetricsView_promotedContent] serverUnfilledReason];
  sub_1C1A6DF4C();
  v42 = sub_1C1A6EF2C();
  if ((v43 & 1) == 0)
  {
    [objc_msgSend(*&v38[v41] metricsHelper)];
    swift_unknownObjectRelease();
  }

  if (sub_1C199E87C())
  {
    v38[OBJC_IVAR___APPCMetricsView_forcedReadiness] = 1;
    sub_1C19E3B3C();
    sub_1C19DDA38();
  }

  return v38;
}

_BYTE *sub_1C19E3598(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v14 = objc_allocWithZone(type metadata accessor for MetricsView());

  return sub_1C19E2FC4(a1, a2, a3, v14, a4, a5, a6, a7);
}

uint64_t sub_1C19E363C()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1C19E3694()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19E36E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C19E3744()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t OffScreenAdEvent.init(adInstanceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OffScreenAdEvent();
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double OffScreenAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t OffScreenAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C19C5408(a1, v7);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C19C5478(a1);
}

void (*OffScreenAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19C8510;
}

uint64_t static OffScreenAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OffScreenAdEvent() + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

uint64_t type metadata accessor for OffScreenAdEvent()
{
  result = qword_1EDE61BF0;
  if (!qword_1EDE61BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s17PromotedContentUI0aB4ViewC06safariD19ControllerDidFinishyySo08SFSafaridF0CF_0()
{
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v0 = sub_1C1A6F1BC();
  sub_1C1994600(v0, qword_1EDE665F0);
  oslog = sub_1C1A6F19C();
  v1 = sub_1C1A6F65C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C198D000, oslog, v1, "Safari view controller did finish.", v2, 2u);
    MEMORY[0x1C6906260](v2, -1, -1);
  }
}

void sub_1C19E3B3C()
{
  if (*&v0[OBJC_IVAR___APPCMetricsView_context])
  {
    v1 = v0;
    v2 = objc_allocWithZone(type metadata accessor for PromotedContentDebugView());
    swift_unknownObjectRetain_n();
    v3 = sub_1C19E45CC(0.0, 0.0, 0.0, 0.0);
    *&v3[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate + 8] = &off_1F41409B0;
    swift_unknownObjectWeakAssign();
    v4 = v3;
    [v4 setUserInteractionEnabled_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *&v1[OBJC_IVAR___APPCMetricsView_debugView];
    *&v1[OBJC_IVAR___APPCMetricsView_debugView] = v4;
    v6 = v4;

    v7 = [v6 layer];
    [v7 setZPosition_];

    [v1 addSubview_];
    v8 = objc_opt_self();
    sub_1C19A9E58(&qword_1EBF03E88);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C1A753A0;
    v10 = [v6 leadingAnchor];
    v11 = [v1 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [v6 topAnchor];
    v14 = [v1 topAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v9 + 40) = v15;
    v16 = [v6 trailingAnchor];

    v17 = [v1 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v9 + 48) = v18;
    sub_1C19C2864();
    v19 = sub_1C1A6F50C();

    [v8 activateConstraints_];
    swift_unknownObjectRelease();
  }
}

id sub_1C19E3E54(void *a1)
{
  v2 = v1;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  [v2 frame];
  Width = CGRectGetWidth(v13);
  [v2 frame];
  Height = CGRectGetHeight(v14);
  [a1 frame];
  v10 = CGRectGetHeight(v15);
  if (Height > v10)
  {
    v11 = Height;
  }

  else
  {
    v11 = v10;
  }

  [v2 setFrame_];
  *(v2 + OBJC_IVAR___APPCMetricsView_forcedReadiness) = 1;
  result = [v2 ready];
  if (result)
  {
    swift_getKeyPath();
    sub_1C1A6D3CC();
    swift_getKeyPath();
    return sub_1C1A6D3DC();
  }

  return result;
}

uint64_t sub_1C19E3F78()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0xD000000000000010;
  }

  v7 = [Strong identifier];
  sub_1C1A6D60C();

  v8 = sub_1C1A6D5EC();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v12 = sub_1C19E4B44(8, v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x1C6904F00](v12, v14, v16, v18);
  v21 = v20;

  v55 = 977553731;
  v56 = 0xE400000000000000;
  MEMORY[0x1C6904F50](v19, v21);

  v22 = OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_promotedContent;
  v23 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_promotedContent);
  if (v23)
  {
    v24 = [swift_unknownObjectRetain() identifier];
    v25 = sub_1C1A6F3CC();
    v27 = v26;

    v29 = sub_1C19E4B44(8, v25, v27, v28);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = MEMORY[0x1C6904F00](v29, v31, v33, v35);
    v38 = v37;

    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1C1A6FACC();

    v53 = 0x3A444943502CLL;
    v54 = 0xE600000000000000;
    MEMORY[0x1C6904F50](v36, v38);

    MEMORY[0x1C6904F50](0x656D6563616C502CLL, 0xEB000000003A746ELL);
    [v23 adType];
    v39 = sub_1C1A6DE8C();
    MEMORY[0x1C6904F50](v39);

    MEMORY[0x1C6904F50](v53, v54);
    swift_unknownObjectRelease();

    v40 = *(v1 + v22);
    if (v40)
    {
      [v40 serverUnfilledReason];
      v53 = 0x3A6E6F736165522CLL;
      v54 = 0xE800000000000000;
      v41 = sub_1C1A6DF5C();
      MEMORY[0x1C6904F50](v41);

      MEMORY[0x1C6904F50](v53, v54);
    }
  }

  v42 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_readiness);
  if (v42 != 303)
  {
    v53 = 0x656E69646165522CLL;
    v54 = 0xEB000000003A7373;
    if (v42 <= 301)
    {
      if (v42 == 300)
      {
        v43 = 0xEE0064657A696C61;
        v44 = 0x74696E6920746F4ELL;
        goto LABEL_19;
      }

      if (v42 == 301)
      {
        v43 = 0x80000001C1A7DCF0;
        v46 = 9;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v42)
      {
        case 302:
          v43 = 0x80000001C1A7DCD0;
          v44 = 0xD00000000000001ELL;
          goto LABEL_19;
        case 304:
          v43 = 0xEE0064616F6C206FLL;
          v44 = 0x742064656C696146;
LABEL_19:
          MEMORY[0x1C6904F50](v44, v43);

          MEMORY[0x1C6904F50](v53, v54);

          goto LABEL_20;
        case 305:
          v43 = 0x80000001C1A7DC70;
          v46 = 5;
LABEL_18:
          v44 = v46 | 0xD000000000000010;
          goto LABEL_19;
      }
    }

    v52[1] = v42;
    result = sub_1C1A6FD0C();
    __break(1u);
    return result;
  }

LABEL_20:
  if (!*(v1 + v22))
  {
    goto LABEL_40;
  }

  sub_1C1A6EB6C();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_40;
  }

  swift_unknownObjectRetain();
  v47 = sub_1C1A6EA9C();
  if ((v48 & 1) == 0)
  {
    v53 = 0x647261637369442CLL;
    v54 = 0xEB000000003A6465;
    if (v47 <= 2602)
    {
      switch(v47)
      {
        case 2600:
          v49 = 0xEF6E6F697469646ELL;
          v50 = 0x6F43737574617473;
          goto LABEL_39;
        case 2601:
          v49 = 0xEE0079726F676574;
          v50 = 0x61436C61626F6C67;
          goto LABEL_39;
        case 2602:
          v49 = 0xED000064726F7779;
          v50 = 0x654B6C61626F6C67;
LABEL_39:
          MEMORY[0x1C6904F50](v50, v49);

          MEMORY[0x1C6904F50](v53, v54);
          swift_unknownObjectRelease();

          goto LABEL_40;
      }

LABEL_36:
      v49 = 0xED00006E6F736165;
      v50 = 0x526E776F6E6B6E75;
      goto LABEL_39;
    }

    switch(v47)
    {
      case 2603:
        v50 = 0xD000000000000010;
        v51 = "campaignCategory";
        break;
      case 2604:
        v49 = 0xEF64726F7779654BLL;
        v50 = 0x6E676961706D6163;
        goto LABEL_39;
      case 2605:
        v50 = 0xD000000000000010;
        v51 = "validationFailed";
        break;
      default:
        goto LABEL_36;
    }

    v49 = (v51 - 32) | 0x8000000000000000;
    goto LABEL_39;
  }

  swift_unknownObjectRelease();
LABEL_40:
  swift_unknownObjectRelease();
  return v55;
}

id sub_1C19E45CC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView__debugLabel;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1C19E4CE4();

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_promotedContent] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_readiness] = 300;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for PromotedContentDebugView();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 blackColor];
  [v13 setBackgroundColor_];

  [v13 setAlpha_];
  sub_1C19E489C();

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1C19E47A8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_promotedContent) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v2 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView__debugLabel);
  sub_1C19E3F78();
  v3 = sub_1C1A6F39C();

  [v2 setText_];

  v4 = v1 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C19E489C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView__debugLabel;
  [v0 addSubview_];
  v3 = *&v0[v2];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTextColor_];

  [*&v1[v2] setNumberOfLines_];
  v7 = *&v1[v2];
  sub_1C19E3F78();
  v8 = sub_1C1A6F39C();

  [v7 setText_];

  v9 = *MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *(MEMORY[0x1E69DDCE0] + 24);
  v13 = *&v1[v2];
  sub_1C19CA824(v1, v9, v10, v11, v12);

  v14 = &v1[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 1);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v1, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C19E4A80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentDebugView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C19E4B44(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1C1A6F48C();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

void sub_1C19E4BE0()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView__debugLabel;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1C19E4CE4();

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_promotedContent) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_readiness) = 300;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1A6FB8C();
  __break(1u);
}

unint64_t sub_1C19E4CE4()
{
  result = qword_1EDE62680;
  if (!qword_1EDE62680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE62680);
  }

  return result;
}

void sub_1C19E4D38()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EBF07668 = v5;
  }
}

uint64_t sub_1C19E4E94()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_frequencyStorageType;
  v2 = sub_1C1A6E4BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C19E5374(v0 + OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_visibilityStartedAt);

  return v0;
}

uint64_t sub_1C19E4F4C()
{
  sub_1C19E4E94();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisibilityTimingTracker()
{
  result = qword_1EDE62B38;
  if (!qword_1EDE62B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19E4FF8()
{
  sub_1C1A6E4BC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C19E5124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a5;
  v10 = sub_1C1A6E4BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a6, v10, v12);
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE66578;
  v16 = swift_allocObject();
  *(v16 + 16) = 0x3FF0000000000000;
  *(v16 + 24) = 50;
  *(v16 + 72) = sub_1C19B6E88(MEMORY[0x1E69E7CC0]);
  v17 = objc_allocWithZone(MEMORY[0x1E69861E0]);

  v18 = [v17 init];
  (*(v11 + 8))(a6, v10);
  *(v16 + 80) = v18;
  *(v16 + 88) = 0;
  v19 = OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_visibilityStartedAt;
  v20 = sub_1C1A6D5DC();
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  *(v16 + OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_impressionTimer) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v22 = v24;
  v21 = v25;
  *(v16 + 48) = a3;
  *(v16 + 56) = v22;
  *(v16 + 64) = v21;
  (*(v11 + 32))(v16 + OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_frequencyStorageType, v14, v10);
  *(v16 + OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_searchAdsFacade) = v15;
  *(v16 + OBJC_IVAR____TtC17PromotedContentUI23VisibilityTimingTracker_disableTimer) = 0;
  return v16;
}

uint64_t sub_1C19E5374(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19E53DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v102 = a2;
  v3 = sub_1C19A9E58(&qword_1EBF03908);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v100 = v86 - v4;
  v5 = sub_1C19A9E58(&qword_1EBF04388);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v86 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v86 - v12;
  v14 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v99 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v86 - v17;
  v19 = sub_1C1A6D48C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v98 = v86 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v86 - v25;
  v27 = sub_1C1A6E1CC();
  if (!v27)
  {
    goto LABEL_36;
  }

  v28 = v27;
  v29 = sub_1C1A6E0BC();

  if (!v29)
  {
    goto LABEL_36;
  }

  if (v29 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:

LABEL_36:
    (*(v20 + 56))(v18, 1, 1, v19);
    goto LABEL_37;
  }

LABEL_5:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1C69055B0](0, v29);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      swift_once();
LABEL_10:
      v92 = *algn_1EDE664B8;
      v93 = qword_1EDE664B0;
      sub_1C19A9E58(&unk_1EBF03FD0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C1A73CD0;
      v35 = sub_1C1A6E1BC();
      v37 = v36;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      v88 = sub_1C199E518();
      *(v34 + 64) = v88;
      if (v37)
      {
        v38 = v35;
      }

      else
      {
        v38 = 0;
      }

      v39 = 0xE000000000000000;
      if (v37)
      {
        v39 = v37;
      }

      *(v34 + 32) = v38;
      *(v34 + 40) = v39;
      sub_1C1A6E20C();
      v40 = sub_1C1A6E12C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      v89 = v41 + 48;
      v97 = v42;
      v43 = v42(v13, 1, v40);
      v91 = v40;
      v87 = v41;
      if (v43 == 1)
      {
        sub_1C1991140(v13, &qword_1EBF04388);
        v44 = (v34 + 72);
        v45 = v88;
        *(v34 + 96) = MEMORY[0x1E69E6158];
        *(v34 + 104) = v45;
      }

      else
      {
        v86[0] = sub_1C1A6E0FC();
        v47 = v46;
        (*(v41 + 8))(v13, v40);
        v44 = (v34 + 72);
        v48 = v88;
        *(v34 + 96) = MEMORY[0x1E69E6158];
        *(v34 + 104) = v48;
        if (v47)
        {
          *v44 = v86[0];
          goto LABEL_20;
        }
      }

      *v44 = 0;
      v47 = 0xE000000000000000;
LABEL_20:
      *(v34 + 80) = v47;
      v49 = sub_1C1A6F3EC();
      v92 = v50;
      v93 = v49;
      sub_1C1A6E20C();
      v51 = v91;
      if (v97(v10, 1, v91) == 1)
      {
        sub_1C1991140(v10, &qword_1EBF04388);
        v52 = v94;
        v53 = v51;
      }

      else
      {
        v54 = sub_1C1A6E10C();
        v56 = v55;
        (*(v87 + 8))(v10, v51);
        v52 = v94;
        v53 = v51;
        if (v56)
        {
          v91 = v56;
          v97 = v54;
          v57 = v90;
          goto LABEL_29;
        }
      }

      sub_1C1A6E20C();
      v58 = v97(v7, 1, v53);
      v57 = v90;
      if (v58 == 1)
      {
        sub_1C1991140(v7, &qword_1EBF04388);
LABEL_28:
        swift_bridgeObjectRelease_n();
        v97 = 0;
        v91 = 0xE000000000000000;
        goto LABEL_29;
      }

      v59 = sub_1C19FCC4C();
      v61 = v60;
      (*(v87 + 8))(v7, v53);
      if (!v61)
      {
        goto LABEL_28;
      }

      v91 = v61;
      v97 = v59;

LABEL_29:
      v62 = sub_1C1A6E22C();
      if (!v62)
      {
        v63 = v99;
        sub_1C1A6E1FC();
        if (v52(v63, 1, v19) == 1)
        {
          sub_1C1991140(v63, &unk_1EBF04600);
          v62 = 0;
        }

        else
        {
          v64 = v98;
          v95(v98, v63, v19);
          (*(v20 + 16))(v101, v64, v19);
          v65 = objc_allocWithZone(sub_1C1A6DE4C());
          v62 = sub_1C1A6DE3C();
          (*(v20 + 8))(v64, v19);
        }
      }

      v66 = sub_1C1A6E21C();
      v67 = v101;
      (*(v20 + 16))(v101, v57, v19);
      v68 = sub_1C1A6E1EC();
      v99 = v69;
      v70 = v100;
      sub_1C1A6E1DC();
      v71 = sub_1C1A6E23C();
      (*(*(v71 - 8) + 8))(a1, v71);
      (*(v20 + 8))(v57, v19);
      v72 = v102;
      *v102 = v66;
      v73 = v92;
      *(v72 + 1) = v93;
      *(v72 + 2) = v73;
      v74 = type metadata accessor for CarouselElement();
      v95(&v72[v74[6]], v67, v19);
      v75 = &v72[v74[7]];
      v76 = v91;
      *v75 = v97;
      v75[1] = v76;
      v77 = &v72[v74[8]];
      v78 = v99;
      *v77 = v68;
      v77[1] = v78;
      *&v72[v74[9]] = v62;
      sub_1C19E5DCC(v70, &v72[v74[10]]);
      return (*(*(v74 - 1) + 56))(v72, 0, 1, v74);
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  sub_1C1A6E44C();

  v32 = *(v20 + 48);
  if (v32(v18, 1, v19) != 1)
  {
    v86[1] = v20 + 48;
    v33 = *(v20 + 32);
    v90 = v26;
    v96 = v20 + 32;
    v94 = v32;
    v95 = v33;
    v33(v26, v18, v19);
    if (qword_1EDE60CA8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_37:
  sub_1C1991140(v18, &unk_1EBF04600);
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v80 = sub_1C1A6F1BC();
  sub_1C1994600(v80, qword_1EDE665F0);
  v81 = sub_1C1A6F19C();
  v82 = sub_1C1A6F66C();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_1C198D000, v81, v82, "ClientLayoutElement does not have an asset URL.", v83, 2u);
    MEMORY[0x1C6906260](v83, -1, -1);
  }

  v84 = sub_1C1A6E23C();
  (*(*(v84 - 8) + 8))(a1, v84);
  v85 = type metadata accessor for CarouselElement();
  return (*(*(v85 - 8) + 56))(v102, 1, 1, v85);
}

uint64_t sub_1C19E5DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C19E5E3C()
{
  v1 = *(v0 + 16);
  [v1 lock];
  sub_1C198FB8C(0, &qword_1EDE62718);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 idForClientType_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C1A6F3CC();
  }

  else
  {

    v5 = 0;
  }

  [v1 unlock];
  return v5;
}

uint64_t sub_1C19E5F0C()
{
  v1 = v0;
  v2 = sub_1C1A6ED9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1A6EBFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    sub_1C19992F8(v0 + 40, &v20);
    if (*(&v21 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = v13;
    v22 = *(v0 + 72);
    if (*(&v13 + 1))
    {
LABEL_3:
      sub_1C19992F8(&v20, v19);
      if (*(&v21 + 1))
      {
        sub_1C199935C(&v20);
      }

      sub_1C1994048(v19, v19[3]);
      (*(v7 + 104))(v9, *MEMORY[0x1E6989CF0], v6);
      v10 = sub_1C1A6EC3C();
      (*(v7 + 8))(v9, v6);
      sub_1C199935C(v19);
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E6989CF0], v6);
  sub_1C1A6EBEC();
  (*(v7 + 8))(v9, v6);
  sub_1C1A6ED8C();
  (*(v3 + 8))(v5, v2);
  if (sub_1C1A6D83C())
  {
LABEL_6:
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 0;
  }

LABEL_9:
  v14 = *(v1 + 16);
  [v14 lock];
  sub_1C198FB8C(0, &qword_1EDE62718);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  v16 = [v15 idForClientType_];
  if (v16)
  {
    v17 = v16;
    v12 = sub_1C1A6F3CC();
  }

  else
  {

    v12 = 0;
  }

  [v14 unlock];
  return v12;
}

id sub_1C19E62D8(uint64_t a1, uint64_t a2)
{
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v3 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v4 = *(a2 + 16);
  [v4 lock];
  [*(a2 + 32) removeAllObjects];

  return [v4 unlock];
}

uint64_t sub_1C19E63D0(uint64_t a1)
{
  v2 = sub_1C1A6D25C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1C1A6D24C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1C19E64C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C1A6F40C();
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v35 = *(v3 + 16);
  [v35 lock];
  v33 = sub_1C19E739C();
  v8 = [v33 impressionCountByLine];
  v9 = MEMORY[0x1E69E6158];
  v34 = a2;
  if (v8)
  {
    v10 = v8;
    sub_1C19A9E58(&qword_1EBF04398);
    sub_1C1A6F30C();
  }

  v11 = 0;
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v32 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1A74920;
  v13 = sub_1C1A6E4AC();
  v15 = v14;
  *(v12 + 56) = v9;
  v16 = sub_1C199E518();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1C19B6B7C(MEMORY[0x1E69E7CC0]);
  v17 = objc_opt_self();

  sub_1C19A9E58(&qword_1EBF043A0);
  v36[0] = 0;
  v18 = [v17 dataWithJSONObject:sub_1C1A6FD1C() options:0 error:v36];
  swift_unknownObjectRelease();
  v19 = v36[0];
  if (v18)
  {
    v20 = sub_1C1A6D4CC();
    v22 = v21;

    sub_1C1A6F3FC();
    v23 = sub_1C1A6F3DC();
    v25 = v24;

    sub_1C19CFDE0(v20, v22);
    v26 = (v12 + 72);
    *(v12 + 96) = v9;
    *(v12 + 104) = v16;
    if (v25)
    {
      *v26 = v23;
      goto LABEL_8;
    }
  }

  else
  {
    v27 = v19;
    v28 = sub_1C1A6D3BC();

    swift_willThrow();

    v26 = (v12 + 72);
    *(v12 + 96) = v9;
    *(v12 + 104) = v16;
  }

  *v26 = 32123;
  v25 = 0xE200000000000000;
LABEL_8:
  *(v12 + 80) = v25;
  *(v12 + 136) = v9;
  *(v12 + 144) = v16;
  v29 = 7104878;
  if (a3)
  {
    v29 = v34;
  }

  v30 = 0xE300000000000000;
  if (a3)
  {
    v30 = a3;
  }

  *(v12 + 112) = v29;
  *(v12 + 120) = v30;

  sub_1C1A6F18C();

  if (a3)
  {
    v11 = sub_1C19E7864(0, v34, a3);
  }

  else
  {
  }

  [v35 unlock];
  return v11;
}

uint64_t sub_1C19E68C0()
{
  v1 = *(v0 + 16);
  [v1 lock];
  v2 = sub_1C19E739C();
  v3 = [v2 clickCountByLine];
  if (v3)
  {
    v4 = v3;
    sub_1C19A9E58(&qword_1EBF04398);
    sub_1C1A6F30C();
  }

  [v1 unlock];
  return 0;
}

void sub_1C19E6990(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v65 = a3;
  v62 = a2;
  v61 = sub_1C1A6E36C();
  v63 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v8 = (v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v55 - v10;
  v12 = sub_1C1A6E4BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1994048(a1, a1[3]);
  sub_1C1A6E38C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1991140(v11, &qword_1EBF03E48);
    goto LABEL_10;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_1C1994048(a1, a1[3]);
  v60 = sub_1C1A6E37C();
  if (v16)
  {
    v17 = v16;
    v56 = v13;
    v59 = v15;
    v58 = v12;
    if (*(v4 + 80) == 2)
    {
      v18 = [objc_opt_self() defaultCenter];
      v19 = sub_1C1A6F39C();
      [v18 postNotificationName:v19 object:0];
    }

    v57 = *(v5 + 16);
    [v57 lock];
    v55[1] = sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v20 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1A74920;
    v22 = v62;
    v23 = sub_1C1A6E35C();
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1C199E518();
    *(v21 + 64) = v27;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v28 = v59;
    v29 = sub_1C1A6E4AC();
    *(v21 + 96) = v26;
    *(v21 + 104) = v27;
    *(v21 + 72) = v29;
    *(v21 + 80) = v30;
    *(v21 + 136) = v26;
    *(v21 + 144) = v27;
    *(v21 + 112) = v60;
    *(v21 + 120) = v17;

    sub_1C1A6F18C();

    v31 = sub_1C19E739C();
    v32 = v63;
    v33 = v61;
    (*(v63 + 16))(v8, v22, v61);
    v34 = (*(v32 + 88))(v8, v33);
    if (v34 == *MEMORY[0x1E69C6050])
    {
      (*(v32 + 96))(v8, v33);
      v35 = *v8;
      v36 = sub_1C1A6F39C();

      if (v65)
      {
        v70 = v65;
        v71 = v64;
        aBlock = MEMORY[0x1E69E9820];
        v67 = 1107296256;
        v68 = sub_1C19E7330;
        v69 = &unk_1F41409E8;
        v37 = _Block_copy(&aBlock);

        v28 = v59;
      }

      else
      {
        v37 = 0;
      }

      v46 = v58;
      v47 = v56;
      [v31 updateDownloadData:v36 forType:v35 completionHandler:v37];

      v49 = v37;
    }

    else
    {
      if (v34 == *MEMORY[0x1E69C6048])
      {
        v36 = sub_1C1A6F39C();

        v46 = v58;
        v47 = v56;
        if (v65)
        {
          v70 = v65;
          v71 = v64;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1C19E7330;
          v69 = &unk_1F4140A10;
          v48 = _Block_copy(&aBlock);

          v28 = v59;
        }

        else
        {
          v48 = 0;
        }

        [v31 updateClickData:v36 completionHandler:v48];
      }

      else
      {
        v46 = v58;
        v47 = v56;
        if (v34 != *MEMORY[0x1E69C6040])
        {

          if (qword_1EDE63990 != -1)
          {
            swift_once();
          }

          v50 = sub_1C1A6F1BC();
          sub_1C1994600(v50, qword_1EDE665F0);
          v51 = sub_1C1A6F19C();
          v52 = sub_1C1A6F66C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_1C198D000, v51, v52, "[PCUI] unknown frequency capping data-type, skipping update", v53, 2u);
            v54 = v53;
            v28 = v59;
            MEMORY[0x1C6906260](v54, -1, -1);
          }

          (*(v32 + 8))(v8, v33);
          goto LABEL_32;
        }

        v36 = sub_1C1A6F39C();

        if (v65)
        {
          v70 = v65;
          v71 = v64;
          aBlock = MEMORY[0x1E69E9820];
          v67 = 1107296256;
          v68 = sub_1C19E7330;
          v69 = &unk_1F41409C0;
          v48 = _Block_copy(&aBlock);

          v28 = v59;
        }

        else
        {
          v48 = 0;
        }

        [v31 updateFrequencyCapData:v36 completionHandler:v48];
      }

      v49 = v48;
    }

    _Block_release(v49);

LABEL_32:
    [v57 unlock];
    (*(v47 + 8))(v28, v46);
    return;
  }

  (*(v13 + 8))(v15, v12);
LABEL_10:
  sub_1C19A9E58(&qword_1EBF04390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  *(inited + 32) = 0x6567617373656DLL;
  v39 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = 0xD00000000000002BLL;
  *(inited + 56) = 0x80000001C1A7E090;
  sub_1C19B6BD8(inited);
  swift_setDeallocating();
  sub_1C1991140(v39, &qword_1EBF03D10);
  v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v41 = sub_1C1A6F39C();
  v42 = sub_1C1A6F2FC();

  v43 = [v40 initWithDomain:v41 code:12100 userInfo:v42];

  v44 = v65;
  if (v65)
  {
    v45 = v43;
    v44(v43);
  }

  else
  {
  }
}

void sub_1C19E7330(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1C19E739C()
{
  v1 = *(v0 + 32);
  sub_1C1A6E4AC();
  v2 = sub_1C1A6F39C();

  v3 = [v1 objectForKey_];

  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C9E28]) initWithStorageType_];
    sub_1C1A6E4AC();
    v4 = sub_1C1A6F39C();

    [v1 setObject:v3 forKey:v4];
  }

  return v3;
}

uint64_t sub_1C19E746C()
{
  if (*(v0 + 64))
  {
    sub_1C199935C(v0 + 40);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C19E7530(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C19E8A2C(v2, 0);

    MEMORY[0x1C6905590](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1C1A6F9EC();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C19E75CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1C198FB8C(0, &qword_1EDE626A0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C19E7644(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1C19E76A8(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_1C19E76A8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1C19E7530(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1C19E7764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1C1A6DA7C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1A6F9EC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1A6F9EC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C19E7864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);

    if (v6 && (v7 = sub_1C1991010(a2, a3), (v8 & 1) != 0))
    {
      v9 = *(*(a1 + 56) + 8 * v7);
      v10 = *(v9 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v10 >= *(v9 + 3) >> 1)
      {
        v9 = sub_1C19CACF0(isUniquelyReferenced_nonNull_native, v10 + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      memmove(v9 + 40, v9 + 32, 8 * v12);
      *(v9 + 2) = v12 + 1;
      *(v9 + 4) = 0;

      v13 = swift_isUniquelyReferenced_nonNull_native();
      v18 = a1;
      v14 = v9;
    }

    else
    {

      v13 = swift_isUniquelyReferenced_nonNull_native();
      v18 = a1;
      v14 = &unk_1F413EDA8;
    }

    sub_1C1A495A0(v14, a2, a3, v13);

    return v18;
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF043A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1A73A30;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    *(inited + 48) = &unk_1F413EDD0;

    v17 = sub_1C19B6B7C(inited);
    swift_setDeallocating();
    sub_1C1991140(inited + 32, &unk_1EBF043B0);
    return v17;
  }
}

void sub_1C19E7A04(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C198FB8C(0, &qword_1EDE626A0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_1C1A6F9EC();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1C1A6F9EC();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1C19E7644(v4, sub_1C19E7BAC);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C19E7BE0(void *a1)
{
  v2 = sub_1C1A6D6EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D6CC();
  v6 = a1;
  sub_1C1A5C008();

  return (*(v3 + 8))(v5, v2);
}

void sub_1C19E7CC4(void *a1)
{
  v2 = v1;
  v4 = sub_1C1A6D6BC();
  v12 = [a1 cellForItemAtIndexPath_];

  if (v12)
  {
    type metadata accessor for CarouselCollectionViewCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1C19F4170(v5, *(v5 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint), *(v5 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint + 8));

      return;
    }
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A73A30;
  v8 = [*(v2 + OBJC_IVAR___APPCPromotedContentView_promotedContent) identifier];
  v9 = sub_1C1A6F3CC();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C199E518();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_1C1A6F18C();
}

void sub_1C19E7FBC()
{
  v1 = v0;
  sub_1C198FB8C(0, &qword_1EDE62670);
  v2 = sub_1C1A52444();
  v3 = sub_1C1A6F7BC();

  if (v3)
  {
    v4 = sub_1C1A52E7C();
    v6 = v5;
    v7 = v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView_style];
    v8 = [v1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 == 2)
    {
      if (!v7)
      {
        *&v10 = 260.0;
        goto LABEL_18;
      }

      if (v7 != 1)
      {
        *&v10 = 356.0;
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 != 1)
      {
        v11 = 0.0;
        if (v7 != 1)
        {
LABEL_19:
          v12 = 1.0;
          goto LABEL_20;
        }

LABEL_14:
        v12 = 1.77777778;
LABEL_20:
        v13 = v6 * v12;
        v14 = [v1 traitCollection];
        v15 = [v14 horizontalSizeClass];

        v16 = 0.0;
        if (v15 == 1)
        {
          v16 = 8.0;
        }

        if (v15 == 2)
        {
          v16 = 10.0;
        }

        v17 = v13 / (v11 + v16);
        v18 = sub_1C1A520B0();
        [v18 contentOffset];
        v20 = v19;

        [*&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] contentOffset];
        v22 = v17 * v21;
        v23 = *&v1[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___backgroundCollectionView];

        [v23 setContentOffset:0 animated:{v22, v20}];
        return;
      }

      if (!v7)
      {
        *&v10 = 148.0;
        goto LABEL_18;
      }

      if (v7 != 1)
      {
        *&v10 = 297.0;
LABEL_18:
        v11 = *&v10;
        goto LABEL_19;
      }
    }

    v11 = 283.0;
    goto LABEL_14;
  }

  sub_1C1A6F66C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v24 = sub_1C1A6F8EC();
  sub_1C1A6F18C();
}

void sub_1C19E8380(void *a1, double *a2, double a3)
{
  [a1 contentSize];
  v8 = v7;
  [a1 frame];
  v10 = v9;
  [a1 contentOffset];
  if (v11 <= 0.0)
  {
    return;
  }

  [a1 contentOffset];
  if (v12 >= v8 - v10)
  {
    return;
  }

  v13 = sub_1C1A52444();
  v37 = [v13 collectionViewLayout];

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = *a2;
    v17 = OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView;
    [*&v3[OBJC_IVAR____TtC17PromotedContentUI14CarouselAdView____lazy_storage___collectionView] bounds];
    Width = CGRectGetWidth(v39);
    v19 = *a2;
    [*&v3[v17] bounds];
    v21 = v20;
    [*&v3[v17] bounds];
    v22 = [v15 layoutAttributesForElementsInRect_];
    if (v22)
    {
      v23 = v22;
      sub_1C198FB8C(0, &unk_1EBF043C0);
      v24 = sub_1C1A6F51C();

      if (a3 >= 0.3)
      {
        v24 = sub_1C19E8718(v24);
      }

      if (v24 >> 62)
      {
LABEL_34:
        v25 = sub_1C1A6F9EC();
        if (v25)
        {
LABEL_9:
          v26 = 0;
          v27 = v16 + Width * 0.5;
          v16 = fabs(a3);
          v28 = 1.79769313e308;
          do
          {
            Width = fabs(v28);
            v29 = v26;
            while (1)
            {
              if ((v24 & 0xC000000000000001) != 0)
              {
                v30 = MEMORY[0x1C69055B0](v29, v24);
              }

              else
              {
                if (v29 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v30 = *(v24 + 8 * v29 + 32);
              }

              v31 = v30;
              v26 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              [v30 center];
              if (vabdd_f64(v32, v27) < Width)
              {
                break;
              }

              ++v29;
              if (v26 == v25)
              {
                goto LABEL_36;
              }
            }

            v28 = v32 - v27;
            if (v16 >= 0.3)
            {
              [v31 bounds];
              v33 = CGRectGetWidth(v40);
              v34 = [v3 traitCollection];
              v36 = [v34 horizontalSizeClass];

              if (v36 == 1)
              {
                v35 = 8.0;
              }

              else
              {
                v35 = 0.0;
              }

              if (v36 == 2)
              {
                v35 = 10.0;
              }

              if (a3 <= 0.0)
              {
                v28 = v28 - v33 - v35;
              }

              else
              {
                v28 = v28 + v33 + v35;
              }
            }

            else
            {
            }
          }

          while (v26 != v25);
          goto LABEL_36;
        }
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
          goto LABEL_9;
        }
      }

      v28 = 1.79769313e308;
LABEL_36:

      *a2 = v28 + *a2;
    }
  }
}

unint64_t sub_1C19E8718(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1C1A6F9EC();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1C19E8AB4(v19, 0);
      sub_1C1A5F78C(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1C1A6F9EC();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1C69055B0]();
          v11 = MEMORY[0x1C69055B0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1C1A0DA38(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1C1A0DA38(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void *sub_1C19E89A8(uint64_t a1, uint64_t a2)
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

  sub_1C19A9E58(&qword_1EBF037C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C19E8A30(uint64_t a1, uint64_t a2)
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

  sub_1C19A9E58(&qword_1EBF043D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1C19E8AB4(uint64_t a1, uint64_t a2)
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

  sub_1C19A9E58(&qword_1EBF03E88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1C19E8B44()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1C19E8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a3;
  v66 = a2;
  v64 = a1;
  v10 = sub_1C1A6D62C();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1A6D5DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v63 = a4;
  if (!a4 || !a6 || (v20 = sub_1C19E93F8()) == 0)
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v33 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 4;
  }

  v59 = a5;
  v60 = a6;
  v61 = v20;
  v21 = [v6 expirationDate];
  sub_1C1A6D59C();

  sub_1C1A6D5CC();
  v22 = sub_1C1A6D53C();
  v23 = v6;
  v24 = *(v14 + 8);
  v24(v16, v13);
  v24(v19, v13);
  if ((v22 & 1) == 0)
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v35 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C1A73A30;
    v37 = [v23 identifier];
    v38 = sub_1C1A6F3CC();
    v40 = v39;

    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = sub_1C199E518();
    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    sub_1C1A6F18C();

    return 1;
  }

  v25 = v61;
  sub_1C1A6E7DC();
  v26 = sub_1C1A6D5EC();
  v28 = v27;
  (*(v65 + 8))(v12, v10);
  if (!v66)
  {

    goto LABEL_15;
  }

  if (v26 == v64 && v28 == v66)
  {

    v32 = v59;
    v31 = v60;
    goto LABEL_17;
  }

  v30 = sub_1C1A6FCEC();

  v32 = v59;
  v31 = v60;
  if ((v30 & 1) == 0)
  {
LABEL_15:
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v41 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C1A73A30;
    v43 = [v23 identifier];
    v44 = sub_1C1A6F3CC();
    v46 = v45;

    *(v42 + 56) = MEMORY[0x1E69E6158];
    *(v42 + 64) = sub_1C199E518();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    sub_1C1A6F18C();

    return 2;
  }

LABEL_17:
  v47 = sub_1C1A6E75C();
  if (v48)
  {
    if (v47 == v62 && v48 == v63)
    {
    }

    else
    {
      v49 = sub_1C1A6FCEC();

      if ((v49 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v50 = sub_1C1A6E7AC();
    if (v51)
    {
      if (v50 == v32 && v51 == v31)
      {

        return 0;
      }

      v52 = sub_1C1A6FCEC();

      if (v52)
      {

        return 0;
      }
    }
  }

LABEL_28:
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v53 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C1A73A30;
  v55 = [v23 identifier];
  v56 = sub_1C1A6F3CC();
  v58 = v57;

  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = sub_1C199E518();
  *(v54 + 32) = v56;
  *(v54 + 40) = v58;
  sub_1C1A6F18C();

  return 3;
}

uint64_t sub_1C19E93F8()
{
  if ([v0 bestRepresentation])
  {
    sub_1C1A6E81C();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v2 = [v0 representations];
  sub_1C19A9E58(&unk_1EBF04670);
  v3 = sub_1C1A6F51C();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:

    return 0;
  }

  result = sub_1C1A6F9EC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C69055B0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  sub_1C1A6E81C();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

void *sub_1C19E9530()
{
  v1 = *(*v0 + 160);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v3 = v0[2];
    v4 = *(v0 + *(*v0 + 112));
    type metadata accessor for SLPCCMInitializer();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[3] = &off_1F4140C68;
    swift_unknownObjectWeakAssign();
    v2[4] = v4;
    v2[5] = v3;
    *(v0 + v1) = v2;

    v5 = v4;
  }

  return v2;
}

void *sub_1C19E9628(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v8 = *(v7 + 168);
  if (*&v1[v8])
  {
    v9 = *&v1[v8];
  }

  else
  {
    type metadata accessor for SLPCCMFetcher();
    v10 = *(v1 + 2);
    v11 = *&v1[*(v2 + 112)];
    (*(v4 + 16))(v6, &v1[*(v2 + 104)], v3);
    v12 = *&v1[*(*v1 + 152)];
    v13 = objc_opt_self();

    v14 = v11;
    swift_unknownObjectRetain();
    v9 = sub_1C19D8724(v10, v14, v6, v12, [v13 sharedInstance], v1, &off_1F4140C30);
    *&v1[v8] = v9;
  }

  return v9;
}

char *sub_1C19E9814(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - v5;
  v8 = *(v7 + 176);
  if (*&v1[v8])
  {
    v9 = *&v1[v8];
  }

  else
  {
    type metadata accessor for SLPCCMContentProcessor();
    v10 = *(v2 + 104);
    v11 = *&v1[*(v2 + 112)];
    v12 = *(v1 + 2);
    (*(v4 + 16))(v6, &v1[v10], v3);
    v9 = sub_1C19AE978(v11, v12, v6, v1, &off_1F4140C00);
    *&v1[v8] = v9;
    v13 = v11;
  }

  return v9;
}

char *sub_1C19E999C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - v5;
  v8 = *(v7 + 184);
  if (*&v1[v8])
  {
    v9 = *&v1[v8];
  }

  else
  {
    type metadata accessor for SLPCCMSnapshot();
    v10 = *(v2 + 104);
    v11 = *&v1[*(v2 + 112)];
    v12 = *(v1 + 2);
    (*(v4 + 16))(v6, &v1[v10], v3);
    v9 = sub_1C1A013E4(v11, v12, v6, v1, &off_1F4140BE8);
    *&v1[v8] = v9;
    v13 = v11;
  }

  return v9;
}

uint64_t sub_1C19E9B24()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  if (*(v0 + v2))
  {
    v3 = *(v0 + v2);
  }

  else
  {
    v4 = *(v0 + *(v1 + 112));
    v5 = v0[2];
    type metadata accessor for SLPCCMExpirationHandler();
    v6 = swift_allocObject();
    v7 = v4;

    v3 = sub_1C19D9A84(v7, v5, v0, v6, v1, &off_1F4140BC8);

    *(v0 + v2) = v3;
  }

  return v3;
}

uint64_t sub_1C19E9C28()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(*v1 + 200);
  if (*(v1 + v5))
  {
    v6 = *(v1 + v5);
  }

  else
  {
    v7 = *MEMORY[0x1E6989DF0];
    v8 = sub_1C1A6EDFC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v4, v7, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    sub_1C1A6ED0C();
    swift_allocObject();
    v6 = sub_1C1A6ECEC();
    *(v1 + v5) = v6;
  }

  return v6;
}

void (*sub_1C19E9DA8(uint64_t a1))(char *, char *, uint64_t)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  if (v4 < 0)
  {

    return sub_1C19EA078(v2, v3);
  }

  else
  {
    sub_1C19E9DFC(v2, v3, *(a1 + 16), *(a1 + 24), *(a1 + 32), v4 & 1);
    return 0;
  }
}

void sub_1C19E9DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  sub_1C19E9530();
  v14 = sub_1C19FEACC();

  if (v14)
  {
    v15 = (v6 + *(*v6 + 136));
    v16 = *v15;
    v17 = v15[1];
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = a5;

    v18 = sub_1C19EDC50(v16, v17);
    sub_1C19E999C(v18);
    sub_1C19FFD8C();

    sub_1C19E9B24();
    sub_1C19D89EC();
    sub_1C19D947C();

    v20 = sub_1C19E9628(v19);
    *(v20 + *(*v20 + 136)) = a6 & 1;

    v21 = *(*v7 + 128);
    if ((*(v7 + v21) & 1) == 0)
    {
      *(v7 + v21) = 1;
      sub_1C19E9C28();
      sub_1C1A6ECDC();
    }
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v22 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

void (*sub_1C19EA078(void (*a1)(void), uint64_t a2))(char *, char *, uint64_t)
{
  v31 = a1;
  v4 = *v2;
  v5 = sub_1C1A6D62C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  sub_1C19E9C28();
  sub_1C1A6ECCC();

  v30 = *(v4 + 80);
  sub_1C1A6D61C();
  v10 = sub_1C19EB5A4(0, 0, v9);
  v11 = *(v6 + 8);
  v11(v9, v5);
  if (v10)
  {

    sub_1C1A6ECDC();

    swift_getWitnessTable();
    sub_1C1A6DA7C();
    swift_allocObject();
    v12 = v10;

    v13 = sub_1C1A6DA2C();
    swift_getWitnessTable();

    sub_1C1A6DA0C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v30;
    v16 = v31;
    *(v15 + 32) = v14;
    *(v15 + 40) = v16;
    *(v15 + 48) = a2;

    sub_1C1A6D9EC();

    sub_1C19E9628(v17);
    v18 = sub_1C19D59A0(v13);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C1A6D61C();
    v20 = sub_1C1A6D5EC();
    v22 = v21;
    v11(v9, v5);

    v23 = sub_1C19E5F0C();
    v25 = v24;

    sub_1C1A6EB6C();
    sub_1C1A6D61C();
    v26 = objc_allocWithZone(sub_1C1A6E9EC());
    v27 = sub_1C1A6E98C();
    v28 = sub_1C1A6EA7C();

    sub_1C1A06F5C(v28, v23, v25, v20, v22, 0);
    v31();
    v18 = 0;
  }

  return v18;
}

id sub_1C19EA528(uint64_t a1, uint64_t a2)
{
  *&v78 = a2;
  v4 = sub_1C1A6D88C();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C19A9E58(&qword_1EBF03888);
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v72 - v13;
  v14 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v72 - v15);
  v17 = sub_1C1A6D99C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C1A6D94C();
  v22 = *(v21 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v21).n128_u64[0];
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(v2 + *(*v2 + 112)) lock];
  v88 = v2;
  v26 = v2[2];
  *v25 = a1;
  v27 = *MEMORY[0x1E69C5E90];
  v81 = *(v22 + 104);
  v82 = v22 + 104;
  v81(v25, v27, v21);
  v86 = a1;

  v87 = v26;
  LOBYTE(v26) = sub_1C1A6D97C();
  v28 = *(v22 + 8);
  v79 = v21;
  v80 = v28;
  v28(v25, v21);
  if (v26)
  {
    (*(v18 + 16))(v20, v78, v17);
    if ((*(v18 + 88))(v20, v17) == *MEMORY[0x1E69C5E98])
    {
      v29 = *MEMORY[0x1E69C5EB8];
      v30 = sub_1C1A6D9BC();
      (*(*(v30 - 8) + 104))(v16, v29, v30);
      swift_storeEnumTagMultiPayload();
      v31 = v86;
      sub_1C1A6DA4C();
      sub_1C1991140(v16, &qword_1EBF03890);
    }

    else
    {
      *v16 = 12;
      v42 = *MEMORY[0x1E69C5EB0];
      v43 = sub_1C1A6D9BC();
      (*(*(v43 - 8) + 104))(v16, v42, v43);
      swift_storeEnumTagMultiPayload();
      v44 = v86;
      sub_1C1A6DA4C();
      sub_1C1991140(v16, &qword_1EBF03890);
      v45 = v17;
      v31 = v44;
      (*(v18 + 8))(v20, v45);
    }

    v46 = v85;
    v47 = sub_1C19A9E58(&qword_1EBF03E88);
    v48 = swift_allocObject();
    v78 = xmmword_1C1A74830;
    *(v48 + 16) = xmmword_1C1A74830;
    *(v48 + 32) = v31;
    *v25 = v48;
    v49 = v79;
    v81(v25, *MEMORY[0x1E69C5E88], v79);

    sub_1C1A6D95C();
    v80(v25, v49);
    sub_1C1A6D98C();
    v51 = v83;
    v50 = v84;
    v52 = (*(v83 + 88))(v46, v84);
    if (v52 == *MEMORY[0x1E69C5EC0])
    {
      v53 = *(v51 + 16);
      v73 = v47;
      v54 = v74;
      v53(v74, v46, v50);
      (*(v51 + 96))(v54, v50);
      v55 = v75;
      v56 = v76;
      v57 = v77;
      (*(v76 + 104))(v75, *MEMORY[0x1E69C5E00], v77);
      v58 = MEMORY[0x1C6903330](v54, v55);
      v59 = *(v56 + 8);
      v59(v54, v57);
      v60 = v57;
      v46 = v85;
      v59(v55, v60);
      v61 = v86;
      if ((v58 & 1) == 0)
      {
LABEL_14:
        (*(v51 + 8))(v46, v50);
        return [*(v88 + *(*v88 + 112)) unlock];
      }
    }

    else
    {
      if (v52 != *MEMORY[0x1E69C5ED8])
      {
        goto LABEL_14;
      }

      v62 = v72;
      (*(v51 + 16))(v72, v46, v50);
      (*(v51 + 96))(v62, v50);

      v63 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
      v73 = v63;
      v64 = v75;
      v65 = v76;
      v66 = v77;
      (*(v76 + 104))(v75, *MEMORY[0x1E69C5E00], v77);
      LODWORD(v74) = MEMORY[0x1C6903330](&v63[v62], v64);
      v67 = *(v65 + 8);
      v67(&v73[v62], v66);
      v68 = v66;
      v46 = v85;
      v67(v64, v68);
      v61 = v86;
      if ((v74 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    (*(v51 + 8))(v46, v50);
    v69 = swift_allocObject();
    *(v69 + 16) = v78;
    *(v69 + 32) = v61;
    *v25 = v69;
    v70 = v79;
    v81(v25, *MEMORY[0x1E69C5E60], v79);

    sub_1C1A6D95C();
    v80(v25, v70);
  }

  else
  {
    v32 = sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v33 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v89 = v35;
      *v34 = 136446210;
      v36 = v73;
      sub_1C1A6D98C();
      v37 = v84;
      v38 = sub_1C1A6D9CC();
      v40 = v39;
      (*(v83 + 8))(v36, v37);
      v41 = sub_1C19A1884(v38, v40, &v89);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1C198D000, v33, v32, "[PCUI] Attempted to cancel session in an invalid state: %{public}s", v34, 0xCu);
      sub_1C199935C(v35);
      MEMORY[0x1C6906260](v35, -1, -1);
      MEMORY[0x1C6906260](v34, -1, -1);
    }
  }

  return [*(v88 + *(*v88 + 112)) unlock];
}

uint64_t *sub_1C19EAEE4()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  sub_1C1991140(v0 + *(*v0 + 120), &qword_1EBF038A8);
  sub_1C19EDC50(*(v0 + *(*v0 + 136)), *(v0 + *(*v0 + 136) + 8));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C19EB0D0()
{
  sub_1C19EAEE4();

  return swift_deallocClassInstance();
}

__n128 sub_1C19EB14C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C19EB160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 41))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 40) & 0x7E | (*(a1 + 40) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C19EB1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

double sub_1C19EB254()
{
  sub_1C198FB8C(0, &qword_1EDE63970);
  result = COERCE_DOUBLE(sub_1C19CECF8());
  if (v1)
  {
    return 1800.0;
  }

  return result;
}

uint64_t sub_1C19EB2CC()
{
  v1 = v0;

  v2 = sub_1C19E5E3C();
  v4 = v3;

  v5 = (v1 + *(*v1 + 136));
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v5[2];
    v9 = v5[3];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = 0;
  }

  v10 = sub_1C19E8C64(v2, v4, v7, v6, v8, v9);

  if (v10 - 2 < 3)
  {
    v11 = 8002;
LABEL_8:
    [sub_1C1A6EAAC() notConsumedWithCode:v11 placeholder:0];
    swift_unknownObjectRelease();
    return v10;
  }

  if (v10)
  {
    v11 = 8003;
    goto LABEL_8;
  }

  return v10;
}

void sub_1C19EB434()
{
  v0 = sub_1C1A6D5DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  sub_1C19E9C28();
  sub_1C1A6D5AC();
  sub_1C1A6D90C();
  sub_1C1A6D50C();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v3, v0);
  v9(v6, v0);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1C1A6ECBC();
}

uint64_t sub_1C19EB5A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v41 - v8;
  v10 = sub_1C1A6D5DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1A6E4BC();
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v3 + *(*v3 + 136));
  v20 = v19[1];
  if (v20)
  {
    v42 = v18;
    v44 = v16;
    v45 = v3;
    v46 = v15;
    v49 = v13;
    v50 = v11;
    v51 = v10;
    v52 = v9;
    v53 = a3;
    v21 = v19[3];
    v22 = v19[4];
    v23 = *v19;
    objc_allocWithZone(sub_1C1A6E8BC());

    v41[2] = v22;
    sub_1C19F23BC(v23, v20);
    v47 = v20;
    v43 = v21;
    v48 = sub_1C1A6E84C();
    if (a2)
    {
      v24 = sub_1C1A6F67C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v25 = sub_1C1A6F8EC();
      if (os_log_type_enabled(v25, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v54 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_1C19A1884(a1, a2, &v54);
        _os_log_impl(&dword_1C198D000, v25, v24, "[PCUI] Extending impression cap with %{public}s", v26, 0xCu);
        sub_1C199935C(v27);
        MEMORY[0x1C6906260](v27, -1, -1);
        MEMORY[0x1C6906260](v26, -1, -1);
      }
    }

    v28 = v44;
    v41[1] = *(*v45 + 144);
    v29 = *MEMORY[0x1E69C60B0];
    v41[0] = *(v44 + 104);
    v30 = v42;
    v31 = v46;
    (v41[0])(v42, v29, v46);

    sub_1C19E64C4(v30, a1, a2);

    v32 = *(v28 + 8);
    v32(v30, v31);
    v33 = v48;
    sub_1C1A6E87C();

    (v41[0])(v30, v29, v31);

    sub_1C19E68C0();

    v32(v30, v31);
    sub_1C1A6E85C();

    sub_1C1A6E83C();

    v34 = v49;
    sub_1C1A6D5CC();
    sub_1C1A6E86C();
    (*(v50 + 8))(v34, v51);
    sub_1C1A6E9EC();
    sub_1C1A6E82C();
    v35 = sub_1C1A6D62C();
    v36 = *(v35 - 8);
    v37 = v52;
    (*(v36 + 16))(v52, v53, v35);
    (*(v36 + 56))(v37, 0, 1, v35);
    v38 = sub_1C1A6E9DC();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v39 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    return 0;
  }

  return v38;
}

uint64_t sub_1C19EBB78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v120 = a5;
  v121 = a4;
  v119 = a2;
  v122 = sub_1C1A6D9BC();
  v118 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - v12;
  v14 = sub_1C1A6D5DC();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v107 - v17;
  v18 = sub_1C1A6D62C();
  v116 = *(v18 - 8);
  v117 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C1A6E4BC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v107 - v25);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    sub_1C1990FA8(a1, v26, &qword_1EBF03890);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v117 = v28;
      v29 = v118;
      v30 = v26;
      v31 = v122;
      (v118)[4](v10, v30, v122);
      v32 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v33 = sub_1C1A6F8EC();
      (v29)[2](v7, v10, v31);
      if (os_log_type_enabled(v33, v32))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        LODWORD(v116) = v32;
        v36 = v35;
        v123[0] = v35;
        *v34 = 136446210;
        v37 = sub_1C1A6D9AC();
        v39 = v38;
        v40 = v29[1];
        v40(v7, v31);
        v41 = sub_1C19A1884(v37, v39, v123);

        *(v34 + 4) = v41;
        _os_log_impl(&dword_1C198D000, v33, v116, "[PCUI] failed to return an ad. reason: %{public}s", v34, 0xCu);
        sub_1C199935C(v36);
        MEMORY[0x1C6906260](v36, -1, -1);
        MEMORY[0x1C6906260](v34, -1, -1);
      }

      else
      {

        v40 = v29[1];
        v40(v7, v31);
      }

      v61 = sub_1C1A6D5EC();
      v63 = v62;

      v64 = sub_1C19E5F0C();
      v66 = v65;

      v60 = sub_1C19F4BE4(v10, v61, v63, v64, v66);

      v40(v10, v122);
    }

    else
    {
      v42 = *v26;
      if (!sub_1C19EB2CC())
      {
        v67 = v42;

        v68 = sub_1C19E5F0C();
        v70 = v69;

        v71 = v119;
        v72 = sub_1C1A6D5EC();
        v74 = v73;
        (*(v21 + 104))(v23, *MEMORY[0x1E69C60B0], v20);
        v75 = v67;
        v60 = sub_1C19F1A94(v67, v68, v70, v72, v74, v23);
        swift_retain_n();
        v76 = sub_1C1A6F67C();
        v77 = sub_1C198FB8C(0, &qword_1EDE63F30);
        v118 = &unk_1C1A75600;
        v122 = v77;
        v78 = sub_1C1A6F8EC();
        v80 = v115;
        v79 = v116;
        v81 = v71;
        v82 = v117;
        (*(v116 + 16))(v115, v81, v117);

        LODWORD(v119) = v76;
        if (os_log_type_enabled(v78, v76))
        {
          v83 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v124 = v109;
          *v83 = 136446722;
          v110 = "n>16@0:8";
          v84 = v79;
          v85 = sub_1C1A6EA5C();
          v87 = v80;
          v88 = sub_1C19A1884(v85, v86, &v124);

          *(v83 + 4) = v88;
          v108 = v75;
          *(v83 + 12) = 2082;
          swift_beginAccess();
          v89 = *(v60 + 32);
          v90 = *(v60 + 40);

          v91 = sub_1C19A1884(v89, v90, &v124);

          *(v83 + 14) = v91;
          *(v83 + 22) = 2082;
          sub_1C19F247C(&qword_1EDE63968, MEMORY[0x1E69695A8]);
          v92 = sub_1C1A6FCCC();
          v94 = v93;
          (*(v84 + 8))(v87, v82);
          v95 = sub_1C19A1884(v92, v94, &v124);

          *(v83 + 24) = v95;
          _os_log_impl(&dword_1C198D000, v78, v119, "[PCUI] successfully returning ad %{public}s with AdamID %{public}s and clientRequestID %{public}s", v83, 0x20u);
          v96 = v109;
          swift_arrayDestroy();
          MEMORY[0x1C6906260](v96, -1, -1);
          MEMORY[0x1C6906260](v83, -1, -1);

          v75 = v108;
        }

        else
        {

          (*(v79 + 8))(v80, v82);
        }

        v97 = sub_1C1A6F67C();
        v98 = sub_1C1A6F8EC();
        if (os_log_type_enabled(v98, v97))
        {
          v99 = swift_slowAlloc();
          *v99 = 134349056;
          v100 = v111;
          sub_1C1A6EACC();
          v101 = v112;
          sub_1C1A6D5AC();
          sub_1C1A6D50C();
          v103 = v102;
          v104 = *(v113 + 8);
          v105 = v101;
          v106 = v114;
          v104(v105, v114);
          v104(v100, v106);
          *(v99 + 4) = v103;
          _os_log_impl(&dword_1C198D000, v98, v97, "[PCUI] Remaining TTL for ad: %{public}f", v99, 0xCu);
          MEMORY[0x1C6906260](v99, -1, -1);
        }

        else
        {
        }

        goto LABEL_12;
      }

      v43 = sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v44 = sub_1C1A6F8EC();
      v45 = os_log_type_enabled(v44, v43);
      v110 = v42;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v123[0] = v47;
        *v46 = 136446210;
        v48 = sub_1C1A6EA5C();
        v50 = sub_1C19A1884(v48, v49, v123);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1C198D000, v44, v43, "[PCUI] Unable to validate retrieved content %{public}s", v46, 0xCu);
        sub_1C199935C(v47);
        MEMORY[0x1C6906260](v47, -1, -1);
        MEMORY[0x1C6906260](v46, -1, -1);
      }

      v51 = v122;
      v52 = sub_1C1A6F39C();
      APSimulateCrash();

      *v13 = 14;
      v53 = v118;
      v118[13](v13, *MEMORY[0x1E69C5EB0], v51);
      v54 = sub_1C1A6D5EC();
      v56 = v55;

      v57 = sub_1C19E5F0C();
      v59 = v58;

      v60 = sub_1C19F4BE4(v13, v54, v56, v57, v59);

      (v53[1])(v13, v51);
    }

LABEL_12:
    v121(v60);
  }

  return result;
}

uint64_t sub_1C19EC7DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  sub_1C19E9814(a1);
  a3(a1, a2);
}

uint64_t sub_1C19EC838()
{
  v70 = sub_1C1A6D8DC();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1A6D93C();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v75 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v65 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v65 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v81 = v65 - v13;
  v14 = sub_1C19A9E58(&qword_1EBF03888);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v65 - v16;
  v68 = v0;
  sub_1C1A6D98C();
  if ((*(v15 + 88))(v17, v14) != *MEMORY[0x1E69C5ED8])
  {
    return (*(v15 + 8))(v17, v14);
  }

  v66 = v11;
  (*(v15 + 96))(v17, v14);
  v18 = *v17;
  v19 = *(sub_1C19A9E58(&qword_1EBF038A0) + 48);
  v20 = sub_1C1A6D88C();
  (*(*(v20 - 8) + 8))(v17 + v19, v20);

  v22 = sub_1C19F1F78(v21);

  v23 = MEMORY[0x1E69E7CC0];
  v72 = *(v18 + 16);
  v73 = v18;
  if (v72)
  {
    v24 = 0;
    v79 = (v22 + 56);
    v80 = v4 + 16;
    v25 = (v4 + 8);
    v74 = (v4 + 32);
    v71 = v4;
    while (v24 < *(v18 + 16))
    {
      v77 = v24;
      v78 = v23;
      v76 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v26 = v18 + v76;
      v27 = *(v4 + 72);
      v28 = *(v4 + 16);
      v28(v81, v26 + v27 * v24, v3);
      if (*(v22 + 16) && (sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]), v29 = sub_1C1A6F34C(), v30 = -1 << *(v22 + 32), v31 = v29 & ~v30, ((*(v79 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v17 = ~v30;
        while (1)
        {
          v1 = v22;
          v28(v8, *(v22 + 48) + v31 * v27, v3);
          sub_1C19F247C(&qword_1EDE62388, MEMORY[0x1E69C5E30]);
          v32 = sub_1C1A6F38C();
          v33 = *v25;
          (*v25)(v8, v3);
          if (v32)
          {
            break;
          }

          v31 = (v31 + 1) & v17;
          v22 = v1;
          if (((*(v79 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v81, v3);
        v22 = v1;
        v23 = v78;
      }

      else
      {
LABEL_12:
        v17 = *v74;
        (*v74)(v75, v81, v3);
        v23 = v78;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v83[0] = &v23->isa;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C19AA204(0, v23[2].isa + 1, 1);
          v23 = v83[0];
        }

        isa = v23[2].isa;
        v35 = v23[3].isa;
        if (isa >= v35 >> 1)
        {
          sub_1C19AA204(v35 > 1, isa + 1, 1);
          v23 = v83[0];
        }

        v23[2].isa = (isa + 1);
        (v17)(v23 + v76 + isa * v27, v75, v3);
      }

      v24 = v77 + 1;
      v4 = v71;
      v18 = v73;
      if (v77 + 1 == v72)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);

    (v23->isa)(v1, v3);

    __break(1u);
    return result;
  }

LABEL_18:
  v65[1] = v22;
  v83[0] = MEMORY[0x1E69E7CC0];
  v38 = v23;
  v39 = v23[2].isa;
  v1 = v66;
  if (v39)
  {
    v40 = 0;
    v17 = 0;
    v23 = (v4 + 8);
    while (v40 < v38[2].isa)
    {
      (*(v4 + 16))(v1, v38 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v40, v3);
      sub_1C19ED284(v83, v1);
      ++v40;
      (v23->isa)(v1, v3);
      if (v39 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_50;
  }

LABEL_22:

  v41 = v83[0];
  v42 = [objc_opt_self() isAppleInternalInstall];
  if ((v42 & 1) == 0)
  {
    goto LABEL_48;
  }

  v1 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v43 = sub_1C1A6F8EC();
  if (!os_log_type_enabled(v43, v1))
  {
    goto LABEL_47;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v46 = v45;
  v83[0] = v45;
  *v44 = 136315138;
  v47 = v41[2];
  v48 = MEMORY[0x1E69E7CC0];
  if (!v47)
  {
    goto LABEL_46;
  }

  v75 = v45;
  v76 = v44;
  LODWORD(v77) = v1;
  v78 = v43;
  v82 = MEMORY[0x1E69E7CC0];
  sub_1C19AA248(0, v47, 0);
  v48 = v82;
  v49 = *(v67 + 16);
  v50 = *(v67 + 80);
  v79 = v41;
  v51 = v41 + ((v50 + 32) & ~v50);
  v80 = *(v67 + 72);
  v81 = v49;
  v17 = v67 + 8;
  do
  {
    (v81)(v69, v51, v70);
    v3 = sub_1C1A6D8CC();
    if ([v3 bestRepresentation])
    {
      sub_1C1A6E81C();
      v52 = swift_dynamicCastClass();
      if (v52)
      {
        v53 = v52;

LABEL_36:
        v55 = sub_1C1A6E7EC();
        v1 = v56;

        goto LABEL_41;
      }

      swift_unknownObjectRelease();
    }

    v23 = [v3 representations];
    sub_1C19A9E58(&unk_1EBF04670);
    v54 = sub_1C1A6F51C();

    if (v54 >> 62)
    {
      if (!sub_1C1A6F9EC())
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    else if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_39;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C69055B0](0, v54);
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      swift_unknownObjectRetain();
    }

    sub_1C1A6E81C();
    v53 = swift_dynamicCastClass();
    if (v53)
    {
      goto LABEL_36;
    }

    swift_unknownObjectRelease();
LABEL_40:
    v55 = 0;
    v1 = 0;
LABEL_41:
    (*v17)(v69, v70);
    v82 = v48;
    v58 = *(v48 + 16);
    v57 = *(v48 + 24);
    if (v58 >= v57 >> 1)
    {
      sub_1C19AA248((v57 > 1), v58 + 1, 1);
      v48 = v82;
    }

    *(v48 + 16) = v58 + 1;
    v59 = v48 + 16 * v58;
    *(v59 + 32) = v55;
    *(v59 + 40) = v1;
    v51 += v80;
    --v47;
  }

  while (v47);
  v43 = v78;
  v41 = v79;
  LOBYTE(v1) = v77;
  v46 = v75;
  v44 = v76;
LABEL_46:
  v60 = sub_1C19A9E58(&qword_1EBF03758);
  v61 = MEMORY[0x1C6904FE0](v48, v60);
  v63 = v62;

  v64 = sub_1C19A1884(v61, v63, v83);

  *(v44 + 4) = v64;
  _os_log_impl(&dword_1C198D000, v43, v1, "processing unused session content. order: %s", v44, 0xCu);
  sub_1C199935C(v46);
  MEMORY[0x1C6906260](v46, -1, -1);
  MEMORY[0x1C6906260](v44, -1, -1);
LABEL_47:

LABEL_48:
  sub_1C19E999C(v42);
  sub_1C19FF928(v41);
}

uint64_t sub_1C19ED284(void **a1, uint64_t a2)
{
  v23 = a1;
  v20 = sub_1C1A6D93C();
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C1A6D8DC();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C19A9E58(&qword_1EBF037C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1A73A30;
  v21 = a2;
  *(v9 + 32) = sub_1C1A6D8EC();
  *(v9 + 40) = v10;
  v11 = sub_1C1A6DC5C();

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  result = sub_1C1A6F9EC();
  if (!result)
  {
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C69055B0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;

  (*(v3 + 16))(v5, v21, v20);
  v15 = v14;
  sub_1C1A6D8AC();
  v16 = v23;
  v17 = *v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1C19CACA0(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1C19CACA0(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  result = (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v8, v22);
  *v16 = v17;
  return result;
}

uint64_t sub_1C19ED62C(uint64_t a1)
{
  sub_1C19E999C(a1);
  sub_1C19FF928(a1);
}

uint64_t sub_1C19ED670(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  sub_1C19F240C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C19ED6DC(uint64_t a1)
{
  sub_1C19E9628(a1);
  sub_1C19D4778(0, 0, 0);
}

double sub_1C19ED730@<D0>(uint64_t a1@<X8>)
{
  sub_1C19F2114(v5);
  sub_1C1990FA8(v5, &v4, &qword_1EBF043E8);
  result = *v5;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1C19ED790()
{
  sub_1C19E9B24();
  sub_1C19D89EC();
  sub_1C19D947C();
}

void sub_1C19ED7D0()
{
  v0 = sub_1C19E9B24();
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

BOOL sub_1C19ED834()
{
  v1 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *(*v0 + 120);
  swift_beginAccess();
  sub_1C1990FA8(v0 + v11, v3, &qword_1EBF038A8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C1991140(v3, &qword_1EBF038A8);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_1C1A6D5AC();
    sub_1C1A6D50C();
    v14 = v13;
    v15 = *(v5 + 8);
    v15(v7, v4);
    sub_1C198FB8C(0, &qword_1EDE63970);
    v16 = COERCE_DOUBLE(sub_1C19CECF8());
    v18 = v17;
    v19 = v16 * 0.5;
    v15(v10, v4);
    v20 = 900.0;
    if ((v18 & 1) == 0)
    {
      v20 = v19;
    }

    return v20 < v14;
  }
}

uint64_t sub_1C19EDAA8()
{
  sub_1C19E9C28();
  sub_1C1A6ECCC();
}

uint64_t sub_1C19EDAF8(void (*a1)(void), void (*a2)(void))
{
  a1();
  a2();
}

uint64_t sub_1C19EDB40()
{
  sub_1C19E9C28();
  sub_1C1A6ECFC();
}

unint64_t sub_1C19EDBFC()
{
  result = qword_1EBF043D8;
  if (!qword_1EBF043D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF043D8);
  }

  return result;
}

uint64_t sub_1C19EDC50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C19EDCA0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C1A6D93C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]);
  v33 = a2;
  v11 = sub_1C1A6F34C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1C19F247C(&qword_1EDE62388, MEMORY[0x1E69C5E30]);
      v21 = sub_1C1A6F38C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1C19EF9C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C19EDF80(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1C1A6FD9C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C19EFC90(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C19EE060(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1C1A6F9FC();

    if (v9)
    {

      sub_1C198FB8C(0, &qword_1EDE626B8);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1C1A6F9EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1C19EE7BC(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1C19EEF2C();
    }

    v18 = v8;
    sub_1C19EF944(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1C198FB8C(0, &qword_1EDE626B8);
  v11 = sub_1C1A6F7AC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1C19EFDB0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1C1A6F7BC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1C19EE298(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1C1A6FD9C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C19EFF20(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C19EE38C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C1A6D6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1C19F247C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
  v33 = a2;
  v11 = sub_1C1A6F34C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1C19F247C(&qword_1EDE623A0, MEMORY[0x1E6969C28]);
      v21 = sub_1C1A6F38C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1C19F004C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1C19EE66C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v8 = sub_1C1A6FDDC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C1A6FCEC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C19F0314(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C19EE7BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C19A9E58(&qword_1EBF043F8);
    v2 = sub_1C1A6FA9C();
    v14 = v2;
    sub_1C1A6F99C();
    if (sub_1C1A6FA1C())
    {
      sub_1C198FB8C(0, &qword_1EDE626B8);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1C19EEF2C();
        }

        v2 = v14;
        result = sub_1C1A6F7AC();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1C1A6FA1C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C19EE9AC()
{
  v1 = v0;
  v35 = sub_1C1A6D93C();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1C19A9E58(&qword_1EBF043E0);
  result = sub_1C1A6FA8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]);
      result = sub_1C1A6F34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1C19EED08()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04400);
  result = sub_1C1A6FA8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1C1A6FD9C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C19EEF2C()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF043F8);
  result = sub_1C1A6FA8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1C1A6F7AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C19EF154()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04408);
  result = sub_1C1A6FA8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1C1A6FD9C();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1C19EF388()
{
  v1 = v0;
  v35 = sub_1C1A6D6EC();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1C19A9E58(&qword_1EBF043F0);
  result = sub_1C1A6FA8C();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1C19F247C(&qword_1EDE623A8, MEMORY[0x1E6969C28]);
      result = sub_1C1A6F34C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1C19EF6E4()
{
  v1 = v0;
  v2 = *v0;
  sub_1C19A9E58(&qword_1EBF04410);
  result = sub_1C1A6FA8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1C19EF944(uint64_t a1, uint64_t a2)
{
  sub_1C1A6F7AC();
  result = sub_1C1A6F97C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C19EF9C8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1C1A6D93C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C19EE9AC();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C19F088C(MEMORY[0x1E69C5E30], &qword_1EBF043E0);
      goto LABEL_12;
    }

    sub_1C19F0C20();
  }

  v13 = *v3;
  sub_1C19F247C(&qword_1EDE62390, MEMORY[0x1E69C5E30]);
  v14 = sub_1C1A6F34C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1C19F247C(&qword_1EDE62388, MEMORY[0x1E69C5E30]);
      v22 = sub_1C1A6F38C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1A6FD2C();
  __break(1u);
  return result;
}

uint64_t sub_1C19EFC90(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C19EED08();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C19F0494();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C19F0F3C();
  }

  v8 = *v3;
  result = sub_1C1A6FD9C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1A6FD2C();
  __break(1u);
  return result;
}

void sub_1C19EFDB0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C19EEF2C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C19F05D4();
      goto LABEL_12;
    }

    sub_1C19F112C();
  }

  v8 = *v3;
  v9 = sub_1C1A6F7AC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1C198FB8C(0, &qword_1EDE626B8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1C1A6F7BC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1A6FD2C();
  __break(1u);
}