double sub_1BBA828A8()
{
  type metadata accessor for IntelligenceCollectionListener();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_1ED6BF258 = v0;
  return result;
}

uint64_t sub_1BBA82904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceCollectionListener.observer.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1BBA82904(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1BBA829C4()
{
  type metadata accessor for IntelligenceCollectionCoordinator();
  v0 = swift_allocObject();
  v1 = sub_1BBA82A5C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB70);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(v0 + 16) = result;
  off_1ED6BF200 = v0;
  return result;
}

unint64_t sub_1BBA82A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B968);
  v3 = sub_1BBB840E8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v23 = *(a1 + 40);
  v25 = *(a1 + 56);
  v7 = *(a1 + 72);
  v6 = *(a1 + 80);
  result = sub_1BBA98B58(v4 | (v5 << 32));
  v10 = v23;
  v9 = v25;
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    swift_unknownObjectRetain();

    return v3;
  }

  v12 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 8 * result);
    *v13 = v4;
    v13[1] = v5;
    v14 = v3[7] + 48 * result;
    *v14 = v10;
    *(v14 + 16) = v9;
    *(v14 + 32) = v7;
    *(v14 + 40) = v6;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v12 + 14;
    v4 = *v12;
    v5 = v12[1];
    v21 = *(v12 + 6);
    v22 = *(v12 + 2);
    v18 = *(v12 + 6);
    v20 = *(v12 + 5);

    swift_unknownObjectRetain();
    result = sub_1BBA98B58(v4 | (v5 << 32));
    v12 = v24;
    v6 = v18;
    v7 = v20;
    v9 = v21;
    v10 = v22;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void IntelligenceCollectionListener.shouldCollect.setter(char a1)
{
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v2 = *(off_1ED6BF200 + 2);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 24);
  if (a1)
  {
    if (v3)
    {
      goto LABEL_9;
    }

    type metadata accessor for IntelligenceSupportAgentXPCConnection();
    swift_allocObject();
    v4 = sub_1BBA82D48();
    *(v4 + 24) = &off_1F3AAC260;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    sub_1BBA85620();

    v4 = 0;
  }

  *(v2 + 24) = v4;

LABEL_9:

  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_1BBA82D48()
{
  v1 = sub_1BBB83828();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BBB83878();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BBB83848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C480);
  v11 = swift_allocObject();
  *(v11 + 56) = 0;
  *(v11 + 16) = 0;
  *(v11 + 20) = 0;
  *(v11 + 24) = 1;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0;
  *(v0 + 32) = v11;
  sub_1BBA83138();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v12 = sub_1BBB83DD8();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_1BBA83C04;
  v20 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA83B58;
  aBlock[3] = &block_descriptor_17;
  v13 = _Block_copy(aBlock);

  sub_1BBB83858();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BBA83224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBA83AF4();
  sub_1BBB83F28();
  MEMORY[0x1BFB16410](0, v6, v3, v13);
  _Block_release(v13);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  return v0;
}

void sub_1BBA830EC(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1BBA83138()
{
  result = qword_1ED6BF090;
  if (!qword_1ED6BF090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6BF090);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BBA83224()
{
  result = qword_1ED6BF0A0;
  if (!qword_1ED6BF0A0)
  {
    sub_1BBB83828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF0A0);
  }

  return result;
}

void sub_1BBA8327C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v60 = a2;
  v6 = sub_1BBB83828();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BBB83878();
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BBB83848();
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BBB83798();
  MEMORY[0x1EEE9AC00](v14 - 8);
  if (*a1)
  {
    *a3 = 0;
  }

  else
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      *a3 = v15;
    }

    else
    {
      v16 = *(a1 + 32);
      v49 = v9;
      if (!v16)
      {
        type metadata accessor for XPCRelaunchNotificationHandler();
        v17 = swift_allocObject();
        *(v17 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v17 + 32) = -1;
        sub_1BBA83C48();
        *(a1 + 32) = v17;
        *(v17 + 24) = &off_1F3AAE360;
        swift_unknownObjectWeakAssign();
      }

      v54 = a3;
      if (qword_1ED6BF170 != -1)
      {
        swift_once();
      }

      v50 = v7;
      v51 = v6;
      v18 = sub_1BBB83758();
      v52 = __swift_project_value_buffer(v18, qword_1ED6BF0A8);
      v19 = sub_1BBB83738();
      v20 = sub_1BBB83D58();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1BBA81000, v19, v20, "establishing connection to agent", v21, 2u);
        MEMORY[0x1BFB174E0](v21, -1, -1);
      }

      v55 = v3;

      v48 = "ector has finished collection";
      v22 = sub_1BBB83A88();
      xpc_connection_create_mach_service((v22 + 32), 0, 0);

      xpc_connection_set_non_launching();
      v23 = *(a1 + 24);
      v24 = v23 + 1;
      if (v23 == -1)
      {
        __break(1u);
      }

      else
      {
        *(a1 + 24) = v24;
        v53 = sub_1BBB837C8();
        swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        *(v26 + 24) = v24;

        sub_1BBB83788();
        v27 = v55;
        v28 = sub_1BBB83778();
        if (v27)
        {

          v29 = v27;
          v30 = sub_1BBB83738();
          v31 = sub_1BBB83D48();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            aBlock[0] = v33;
            *v32 = 136446722;
            *(v32 + 4) = sub_1BBA85E50(0xD000000000000025, v48 | 0x8000000000000000, aBlock);
            *(v32 + 12) = 2082;
            swift_getErrorValue();
            v34 = sub_1BBB84388();
            v36 = sub_1BBA85E50(v34, v35, aBlock);

            *(v32 + 14) = v36;
            *(v32 + 22) = 2082;
            v62 = v27;
            v37 = v27;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
            v38 = sub_1BBB83A78();
            v40 = sub_1BBA85E50(v38, v39, aBlock);

            *(v32 + 24) = v40;
            _os_log_impl(&dword_1BBA81000, v30, v31, "unable to create XPCSession for service %{public}s: %{public}s; underlying error: %{public}s", v32, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFB174E0](v33, -1, -1);
            MEMORY[0x1BFB174E0](v32, -1, -1);
          }

          else
          {
          }

          *v54 = 0;
        }

        else
        {
          v41 = v28;

          *(a1 + 16) = v41;
          sub_1BBA83138();
          v42 = v56;
          (*(v56 + 104))(v13, *MEMORY[0x1E69E7F90], v11);
          swift_retain_n();
          v43 = sub_1BBB83DD8();
          (*(v42 + 8))(v13, v11);
          aBlock[4] = sub_1BBA84268;
          aBlock[5] = v41;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1BBA83B58;
          aBlock[3] = &block_descriptor_13;
          v44 = _Block_copy(aBlock);

          v45 = v57;
          sub_1BBB83858();
          v62 = MEMORY[0x1E69E7CC0];
          sub_1BBA83224();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
          sub_1BBA83AF4();
          v46 = v59;
          v47 = v51;
          sub_1BBB83F28();
          MEMORY[0x1BFB16410](0, v45, v46, v44);
          _Block_release(v44);

          (*(v50 + 8))(v46, v47);
          (*(v58 + 8))(v45, v49);

          *v54 = v41;
        }
      }
    }
  }
}

uint64_t sub_1BBA83A84()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBA83ABC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1BBA83AF4()
{
  result = qword_1ED6BF098;
  if (!qword_1ED6BF098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC7CB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF098);
  }

  return result;
}

uint64_t sub_1BBA83B58(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BBA83B9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(v1 + 14);
  sub_1BBA83C0C();
  os_unfair_lock_unlock(v1 + 14);
}

void sub_1BBA83C48()
{
  v1 = v0;
  v2 = sub_1BBB83848();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v13 = 0xE000000000000000;
  sub_1BBB84028();

  aBlock = 0xD000000000000030;
  v13 = 0x80000001BBB9D3B0;
  v18 = getuid();
  v6 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v6);

  sub_1BBA83138();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E7F88], v2);
  v7 = sub_1BBB83DD8();
  (*(v3 + 8))(v5, v2);
  v8 = swift_allocObject();
  swift_weakInit();
  v16 = sub_1BBB724E4;
  v17 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1BBB72214;
  v15 = &block_descriptor_4;
  v9 = _Block_copy(&aBlock);

  v10 = sub_1BBB83A88();

  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v1 + 32), v7, v9);
  swift_endAccess();

  _Block_release(v9);
}

uint64_t sub_1BBA83EB4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBA83F04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BBB83758();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1BBB83748();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BBA84270()
{
  result = qword_1ED6BF0C0;
  if (!qword_1ED6BF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF0C0);
  }

  return result;
}

uint64_t XPCClientMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF00);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00]();
  v29 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF08);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00]();
  v26 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF10);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00]();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v13 = &v21 - v12;
  v15 = *v1;
  v14 = v1[1];
  v22 = v1[2];
  v23 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA849B8();
  sub_1BBB84478();
  if (!v15)
  {
    LOBYTE(v32) = 0;
    sub_1BBA84A50();
    sub_1BBB84208();
    v17 = v24;
    v16 = v25;
    goto LABEL_5;
  }

  if (v15 == 1)
  {
    LOBYTE(v32) = 1;
    sub_1BBB494E8();
    v9 = v26;
    sub_1BBB84208();
    v17 = v27;
    v16 = v28;
LABEL_5:
    (*(v17 + 8))(v9, v16);
    return (*(v11 + 8))(v13, v10);
  }

  LOBYTE(v32) = 2;
  sub_1BBA9FBD4();
  v19 = v29;
  sub_1BBB84208();
  v32 = v15;
  v33 = v23;
  v34 = v22;
  sub_1BBB49494();
  v20 = v31;
  sub_1BBB84288();
  (*(v30 + 8))(v19, v20);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BBA846E0()
{
  result = qword_1ED6BF038;
  if (!qword_1ED6BF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF038);
  }

  return result;
}

unint64_t sub_1BBA84734()
{
  result = qword_1ED6BF040;
  if (!qword_1ED6BF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF040);
  }

  return result;
}

unint64_t sub_1BBA8478C()
{
  result = qword_1ED6BF048;
  if (!qword_1ED6BF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF048);
  }

  return result;
}

unint64_t sub_1BBA847E4()
{
  result = qword_1ED6BF050;
  if (!qword_1ED6BF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF050);
  }

  return result;
}

unint64_t sub_1BBA8484C()
{
  result = qword_1ED6BF058;
  if (!qword_1ED6BF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF058);
  }

  return result;
}

unint64_t sub_1BBA848A4()
{
  result = qword_1ED6BF060;
  if (!qword_1ED6BF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF060);
  }

  return result;
}

unint64_t sub_1BBA8490C()
{
  result = qword_1ED6BF070;
  if (!qword_1ED6BF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF070);
  }

  return result;
}

unint64_t sub_1BBA84964()
{
  result = qword_1ED6BF078;
  if (!qword_1ED6BF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF078);
  }

  return result;
}

unint64_t sub_1BBA849B8()
{
  result = qword_1ED6BF080;
  if (!qword_1ED6BF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF080);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1BBA84A50()
{
  result = qword_1ED6BF068;
  if (!qword_1ED6BF068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BF068);
  }

  return result;
}

uint64_t _s5ImageV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s5ImageV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BBA84C28()
{
  v1 = 0x655368636E75616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C616974696E69;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BBA84CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1BBA84D4C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t XPCClientMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF20);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00]();
  v39 = &v32 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF28);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF30);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF38);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v32 - v11;
  v13 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BBA849B8();
  v14 = v41;
  sub_1BBB84458();
  if (!v14)
  {
    v32 = v6;
    v33 = 0;
    v15 = v38;
    v41 = v10;
    v16 = v40;
    v17 = sub_1BBB841F8();
    v18 = (2 * *(v17 + 16)) | 1;
    v44 = v17;
    v45 = v17 + 32;
    v46 = 0;
    v47 = v18;
    v19 = sub_1BBA854A8();
    if (v19 == 3 || v46 != v47 >> 1)
    {
      v24 = sub_1BBB84058();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v26 = &type metadata for XPCClientMessage;
      v20 = v12;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        LOBYTE(v42) = 2;
        sub_1BBA9FBD4();
        v29 = v33;
        sub_1BBB84118();
        if (!v29)
        {
          sub_1BBA9FC28();
          v30 = v35;
          sub_1BBB841B8();
          v31 = v41;
          (*(v37 + 8))(0, v30);
          (*(v31 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v23 = v42;
          v22 = v43;
          goto LABEL_17;
        }

        (*(v41 + 8))(v12, v9);
        goto LABEL_10;
      }

      LOBYTE(v42) = 1;
      sub_1BBB494E8();
      v20 = v12;
      v21 = v33;
      sub_1BBB84118();
      if (!v21)
      {
        (*(v36 + 8))(v5, v15);
        (*(v41 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v22 = 0;
        v23 = xmmword_1BBB92230;
LABEL_17:
        *v16 = v23;
        *(v16 + 16) = v22;
        return __swift_destroy_boxed_opaque_existential_1(v48);
      }
    }

    else
    {
      LOBYTE(v42) = 0;
      sub_1BBA84A50();
      v20 = v12;
      v28 = v33;
      sub_1BBB84118();
      if (!v28)
      {
        (*(v34 + 8))(v8, v32);
        (*(v41 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v22 = 0;
        v23 = 0uLL;
        goto LABEL_17;
      }
    }

    (*(v41 + 8))(v20, v9);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1BBA853DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBA854E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBA85404@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BBB83758();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1BBA854B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBA854E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C616974696E69 && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x655368636E75616CLL && a2 == 0xEE006C656E69746ELL || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9CFD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBA85620()
{
  v1 = v0;
  v2 = sub_1BBB83828();
  v18 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BBB83878();
  v5 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BBB83848();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 32);
  os_unfair_lock_lock((v12 + 56));
  *(v12 + 16) = 1;
  os_unfair_lock_unlock((v12 + 56));
  sub_1BBA83138();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E7F88], v8);
  v13 = sub_1BBB83DD8();
  (*(v9 + 8))(v11, v8);
  aBlock[4] = sub_1BBA8596C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA83B58;
  aBlock[3] = &block_descriptor_21;
  v14 = _Block_copy(aBlock);

  sub_1BBB83858();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1BBA83224();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBA83AF4();
  sub_1BBB83F28();
  MEMORY[0x1BFB16410](0, v7, v4, v14);
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

void sub_1BBA85974(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock(v1 + 14);
  sub_1BBA859CC(&v1[4]);

  os_unfair_lock_unlock(v1 + 14);
}

uint64_t sub_1BBA859CC(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    sub_1BBB837B8();
  }

  *(v1 + 16) = 0;
  *(v1 + 4) = 0;
  *(v1 + 8) = 1;
  v2 = *(v1 + 32);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 != -1)
    {
      notify_cancel(v3);
      *(v2 + 32) = -1;
    }
  }

  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_1BBA85A80()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }

  sub_1BBA85AE0(v0 + 16);
  return swift_deallocClassInstance();
}

uint64_t IntelligenceSupportAgentXPCConnection.__deallocating_deinit()
{
  sub_1BBA85AE0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BBA85B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBB837D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - v11;
  if (qword_1ED6BF170 != -1)
  {
    swift_once();
  }

  v13 = sub_1BBB83758();
  __swift_project_value_buffer(v13, qword_1ED6BF0A8);
  v14 = *(v7 + 16);
  v14(v12, a1, v6);
  v15 = sub_1BBB83738();
  v16 = sub_1BBB83D58();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28[1] = a2;
    v20 = v19;
    v30[0] = v19;
    *v18 = 136446210;
    v14(v9, v12, v6);
    v21 = sub_1BBB83A78();
    v23 = v22;
    (*(v7 + 8))(v12, v6);
    v24 = sub_1BBA85E50(v21, v23, v30);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1BBA81000, v15, v16, "agent connection cancelled (details: %{public}s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB174E0](v20, -1, -1);
    v25 = v18;
    a3 = v29;
    MEMORY[0x1BFB174E0](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = *(result + 32);

    os_unfair_lock_lock((v27 + 56));
    if (*(v27 + 40) == a3)
    {
      *(v27 + 32) = 0;

      *(v27 + 20) = 0;
      *(v27 + 24) = 1;
    }

    os_unfair_lock_unlock((v27 + 56));
  }

  return result;
}

unint64_t sub_1BBA85E50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BBA85F1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BBA86028(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BBA85F1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BBB34190(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BBB84088();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BBA86028(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1BBA86084@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBB836A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  os_unfair_lock_lock((v7 + 56));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock((v7 + 56));
  if ((v8 & 1) == 0)
  {
    sub_1BBA86710();
    sub_1BBB837F8();
    v40[6] = v50;
    v41[0] = v51[0];
    *(v41 + 15) = *(v51 + 15);
    v40[2] = v46;
    v40[3] = v47;
    v40[4] = v48;
    v40[5] = v49;
    v40[0] = v44;
    v40[1] = v45;
    v42[6] = v50;
    v43[0] = v51[0];
    *(v43 + 15) = *(v51 + 15);
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = v44;
    v42[1] = v45;
    v9 = sub_1BBA87258(v42);
    v10 = sub_1BBA87034(v42);
    v11 = v10;
    if (v9 == 1)
    {
      if (qword_1ED6BDEE8 != -1)
      {
        swift_once();
      }

      v12 = sub_1BBB836E8();
      __swift_project_value_buffer(v12, qword_1ED6BDEF0);
      sub_1BBB836D8();

      sub_1BBB83678();
      v13 = sub_1BBB836D8();
      v14 = sub_1BBB83E48();
      if (sub_1BBB83E88())
      {
        v15 = swift_slowAlloc();
        v29 = v14;
        v16 = v15;
        *v15 = 0;
        v17 = sub_1BBB83698();
        _os_signpost_emit_with_name_impl(&dword_1BBA81000, v13, v29, v17, "ReceiveRequest", "", v16, 2u);
        MEMORY[0x1BFB174E0](v16, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = v11[7];
        v36 = v11[6];
        v37[0] = v18;
        *(v37 + 15) = *(v11 + 127);
        v19 = v11[3];
        v32 = v11[2];
        v33 = v19;
        v20 = v11[5];
        v34 = v11[4];
        v35 = v20;
        v21 = v11[1];
        v30 = *v11;
        v31 = v21;
        sub_1BBA9759C(&v30);
        swift_unknownObjectRelease();
        v38[6] = v36;
        v39[0] = v37[0];
        *(v39 + 15) = *(v37 + 15);
        v38[2] = v32;
        v38[3] = v33;
        v38[4] = v34;
        v38[5] = v35;
        v38[0] = v30;
        v38[1] = v31;
        sub_1BBA96D48(v38);
      }

      else
      {
        sub_1BBB16EDC(v40);
      }
    }

    else
    {
      v22 = *v10;
      if (qword_1ED6BF170 != -1)
      {
        swift_once();
      }

      v23 = sub_1BBB83758();
      __swift_project_value_buffer(v23, qword_1ED6BF0A8);
      v24 = sub_1BBB83738();
      v25 = sub_1BBB83D58();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67240192;
        *(v26 + 4) = v22;
        _os_log_impl(&dword_1BBA81000, v24, v25, "Connection established with agent PID: %{public}d", v26, 8u);
        MEMORY[0x1BFB174E0](v26, -1, -1);
      }

      os_unfair_lock_lock((v7 + 56));
      *(v7 + 20) = v22;
      *(v7 + 24) = 0;
      os_unfair_lock_unlock((v7 + 56));
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1BBA8664C()
{
  result = qword_1ED6BEF60;
  if (!qword_1ED6BEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF60);
  }

  return result;
}

uint64_t sub_1BBA866A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 143))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0x3F80 | (*(a1 + 24) >> 1) | (*(a1 + 24) >> 3) & 0x1FC000 | (*(a1 + 24) >> 4) & 0xFFE00000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

unint64_t sub_1BBA86710()
{
  result = qword_1ED6BEF48;
  if (!qword_1ED6BEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntelligenceAppIntentsRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport16XPCClientMessageO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t IntelligenceProcessInfo.description.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v15[0] = 34;
    v15[1] = 0xE100000000000000;
    MEMORY[0x1BFB16150]();
    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v3 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = 34;
    *(v6 + 5) = 0xE100000000000000;
  }

  else
  {
LABEL_8:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v15[0] = 0x203A646970;
  v15[1] = 0xE500000000000000;
  v7 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v7);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BBA86A94(0, *(v3 + 2) + 1, 1, v3);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v10 = &v3[16 * v9];
  *(v10 + 4) = 0x203A646970;
  *(v10 + 5) = 0xE500000000000000;
  strcpy(v15, "ProcessInfo(");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v11 = sub_1BBB83938();
  v13 = v12;

  MEMORY[0x1BFB16150](v11, v13);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v15[0];
}

char *sub_1BBA86A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B660);
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

unint64_t sub_1BBA86BA4()
{
  result = qword_1EBC7AEB8;
  if (!qword_1EBC7AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AEB8);
  }

  return result;
}

uint64_t sub_1BBA86C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 136);
  result = a1 + 136;
  v4 = *(result - 80);
  v5 = *(result - 96) & 0x1010101;
  v6 = *(result - 64) & 0x101;
  v7 = *(result - 48) & 0x101;
  v8 = *(result - 32) & 0x3030101;
  v9 = *(result - 16) & 0x3010101030303;
  v10 = (v3 | ((*(result + 4) | (*(result + 6) << 16)) << 32)) & 0x1010101030101;
  *(result - 112) &= 0x1010101uLL;
  *(result - 96) = v5;
  *(result - 80) = v4;
  *(result - 64) = v6;
  *(result - 48) = v7;
  *(result - 32) = v8;
  *(result - 16) = v9;
  *result = v10;
  *(result + 4) = WORD2(v10);
  *(result + 6) = (v10 | (a2 << 55)) >> 48;
  return result;
}

uint64_t XPCAgentMessage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF58);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00]();
  v31 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF60);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00]();
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF68);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v28 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA87078();
  sub_1BBB84478();
  v13 = v2[7];
  v42[6] = v2[6];
  v43[0] = v13;
  *(v43 + 15) = *(v2 + 127);
  v14 = v2[3];
  v42[2] = v2[2];
  v42[3] = v14;
  v15 = v2[5];
  v42[4] = v2[4];
  v42[5] = v15;
  v16 = v2[1];
  v42[0] = *v2;
  v42[1] = v16;
  LODWORD(a1) = sub_1BBA87258(v42);
  v17 = sub_1BBA87034(v42);
  if (a1 == 1)
  {
    LOBYTE(v34) = 1;
    sub_1BBA91930();
    v18 = v31;
    sub_1BBB84208();
    v34 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[4];
    v37 = v17[3];
    v38 = v21;
    v35 = v19;
    v36 = v20;
    v22 = v17[5];
    v23 = v17[6];
    v24 = v17[7];
    *(v41 + 15) = *(v17 + 127);
    v40 = v23;
    v41[0] = v24;
    v39 = v22;
    sub_1BBA93700();
    v25 = v33;
    sub_1BBB84288();
    (*(v32 + 8))(v18, v25);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_1BBA8664C();
    sub_1BBB84208();
    v26 = v30;
    sub_1BBB84298();
    (*(v29 + 8))(v8, v26);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1BBA87034(uint64_t result)
{
  v1 = *(result + 136);
  *(result + 136) = v1;
  v2 = *(result + 140) | (*(result + 142) << 16);
  *(result + 140) = *(result + 140);
  *(result + 142) = ((v1 | (v2 << 32)) >> 48) & 0x7F;
  return result;
}

unint64_t sub_1BBA87078()
{
  result = qword_1ED6BEF88[0];
  if (!qword_1ED6BEF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BEF88);
  }

  return result;
}

uint64_t sub_1BBA870D4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceImageProcessor.Options.OutputFileProperties.StorageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceImageProcessor.Options.OutputFileProperties.StorageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BBA87268()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t XPCAgentMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF70);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00]();
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF78);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF80);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v34 - v11;
  v13 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BBA87078();
  v14 = v41;
  sub_1BBB84458();
  if (!v14)
  {
    v41 = v6;
    v15 = v12;
    v16 = sub_1BBB841F8();
    v17 = (2 * *(v16 + 16)) | 1;
    v66 = v16;
    v67 = v16 + 32;
    v68 = 0;
    v69 = v17;
    v18 = sub_1BBA870CC();
    if (v18 == 2 || v68 != v69 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for XPCAgentMessage;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v40 + 8))(v15, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v10;
      if (v18)
      {
        LOBYTE(v50) = 1;
        sub_1BBA91930();
        v19 = v41;
        sub_1BBB84118();
        sub_1BBA96158();
        v20 = v38;
        sub_1BBB841B8();
        v21 = v40;
        (*(v39 + 8))(v19, v20);
        (*(v21 + 8))(v12, v35);
        swift_unknownObjectRelease();
        v48 = v56;
        v49[0] = v57[0];
        *(v49 + 15) = *(v57 + 15);
        v44 = v52;
        v45 = v53;
        v46 = v54;
        v47 = v55;
        v42 = v50;
        v43 = v51;
        sub_1BBA974E4(&v42);
        v64 = v48;
        v65[0] = v49[0];
        *(v65 + 15) = *(v49 + 15);
        v60 = v44;
        v61 = v45;
        v62 = v46;
        v63 = v47;
        v58 = v42;
        v59 = v43;
      }

      else
      {
        LOBYTE(v50) = 0;
        sub_1BBA8664C();
        sub_1BBB84118();
        v26 = sub_1BBB841C8();
        v27 = (v40 + 8);
        v28 = v26;
        (*(v37 + 8))(v9, v7);
        (*v27)(v12, v35);
        swift_unknownObjectRelease();
        LODWORD(v50) = v28;
        sub_1BBA878D4(&v50);
        v64 = v56;
        v65[0] = v57[0];
        *(v65 + 15) = *(v57 + 15);
        v60 = v52;
        v61 = v53;
        v62 = v54;
        v63 = v55;
        v58 = v50;
        v59 = v51;
      }

      v29 = v65[0];
      v30 = v36;
      v36[6] = v64;
      v30[7] = v29;
      *(v30 + 127) = *(v65 + 15);
      v31 = v61;
      v30[2] = v60;
      v30[3] = v31;
      v32 = v63;
      v30[4] = v62;
      v30[5] = v32;
      v33 = v59;
      *v30 = v58;
      v30[1] = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t sub_1BBA878D4(uint64_t a1)
{
  v2 = *(a1 + 136);
  result = a1 + 136;
  v3 = *(result - 80);
  v4 = v2 | ((*(result + 4) | (*(result + 6) << 16)) << 32);
  v5 = *(result - 96) & 0x1010101;
  v6 = *(result - 64) & 0x101;
  v7 = *(result - 48) & 0x101;
  v8 = *(result - 32) & 0x3030101;
  v9 = *(result - 16) & 0x3010101030303;
  *(result - 112) &= 0x1010101uLL;
  *(result - 96) = v5;
  *(result - 80) = v3;
  *(result - 64) = v6;
  *(result - 48) = v7;
  *(result - 32) = v8;
  *(result - 16) = v9;
  *result = v4 & 0x1030101;
  *(result + 6) = BYTE6(v4) & 1;
  *(result + 4) = (v4 & 0x1010101030101) >> 32;
  return result;
}

double sub_1BBA87984(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 142) = 0;
    *(a1 + 140) = 0;
    *(a1 + 136) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 143) = 1;
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
      v4 = vdupq_n_s64(-a2);
      v5 = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1BBB85CE0), xmmword_1BBB8C380), vandq_s8(vshlq_u64(v4, xmmword_1BBB8C360), xmmword_1BBB8C370));
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 127) = 0u;
      return result;
    }

    *(a1 + 143) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBA87A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001BBB9D010 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBB9D030 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

double sub_1BBA87B40@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BBA86084(a1);
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

uint64_t _s19NavigationSplitPaneV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IntelligenceElement.Text.encode(to:)(void *a1)
{
  v3 = v2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D330);
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v7 = &v49 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA8DD24();
  v61 = v7;
  sub_1BBB84478();
  v9 = sub_1BBB83148();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v8 + *(*v8 + 88);
  swift_beginAccess();
  v13 = *(v10 + 16);
  v72 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  v13(v72, v12, v9);
  v14 = _s4TextV7StorageVMa();
  v15 = v14;
  v16 = v12 + *(v14 + 20);
  v17 = *(v16 + 8);
  if (v17 != 1)
  {
    v58 = v10;
    v54 = v5;
    v55 = v2;
    v59 = *v16;
    v18 = *(v16 + 24);
    v60 = *(v16 + 16);
    v19 = *(v16 + 32);
    v20 = *(v16 + 40);
    v21 = *(v16 + 48);
    v53 = v21 & 1;
    v52 = (v21 >> 8) & 1;
    v57 = v19;
    v56 = v18;
    if (v21)
    {
      v49 = &v49;
      MEMORY[0x1EEE9AC00](v14);
      v65 = v59;
      v66 = v17;
      v67 = v60;
      v68 = v18;
      v69 = v19;
      v70 = v20;
      v71 = v21;
      sub_1BBB58A0C(&v65, v64);
      sub_1BBB83138();
      v22 = v58;
      v23 = *(v58 + 8);
      v50 = v20;
      v24 = v15;
      v25 = v72;
      v26 = v63;
      v23(v72, v63);
      v27 = v22;
      v19 = v57;
      v28 = v25;
      v15 = v24;
      v20 = v50;
      v29 = v26;
      v18 = v56;
      (*(v27 + 32))(v28, &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    }

    else
    {
      v65 = v59;
      v66 = v17;
      v67 = v60;
      v68 = v18;
      v69 = v19;
      v70 = v20;
      v71 = v21;
      sub_1BBB58A0C(&v65, v64);
    }

    v65 = v59;
    v66 = v17;
    v67 = v60;
    v68 = v18;
    v69 = v19;
    v70 = v20;
    LOBYTE(v71) = v53;
    HIBYTE(v71) = v52;
    v64[0] = 1;
    sub_1BBB58A44();
    v30 = v61;
    v31 = v62;
    v32 = v55;
    sub_1BBB84288();
    v3 = v32;
    if (v32)
    {
      (*(v58 + 8))(v72, v63);
      (*(v54 + 8))(v30, v31);
      return sub_1BBB58848(v59, v17);
    }

    sub_1BBB58848(v59, v17);
    v5 = v54;
    v10 = v58;
  }

  v34 = v62;
  v35 = v63;
  if (*(v12 + v15[9]) == 1)
  {
    v65 = v8;
    v36 = IntelligenceElement.Text.hasSelections.getter();
    v51 = v15;
    if (v36)
    {
      v37 = (v12 + v15[10]);
      v38 = &v37[1];
      v39 = v61;
    }

    else
    {
      v40 = v12 + v15[5];
      if (*(v40 + 8) != 1 && (*(v40 + 48) & 0x100) != 0)
      {
        v42 = v12 + v15[10];
        v37 = (v42 + 16);
        v38 = (v42 + 25);
      }

      else
      {
        v41 = v12 + v15[10];
        v37 = (v41 + 32);
        v38 = (v41 + 41);
      }

      v39 = v61;
    }

    v43 = *v38;
    if (AttributedString.trim(maximumLength:trimWhitespace:)(*v37, *v38))
    {
      LOBYTE(v65) = 3;
      sub_1BBB84258();
      if (v3)
      {
        goto LABEL_30;
      }
    }

    if (v43)
    {
      LOBYTE(v65) = 4;
      sub_1BBB84258();
      if (v3)
      {
        goto LABEL_30;
      }
    }

    v15 = v51;
  }

  else
  {
    if (*(v12 + v15[7]) == 1)
    {
      LOBYTE(v65) = 3;
      v39 = v61;
      sub_1BBB84258();
      if (v3)
      {
LABEL_30:
        (*(v10 + 8))(v72, v35);
        return (*(v5 + 8))(v39, v34);
      }
    }

    else
    {
      v39 = v61;
    }

    if (*(v12 + v15[8]) == 1)
    {
      LOBYTE(v65) = 4;
      sub_1BBB84258();
      if (v3)
      {
        goto LABEL_30;
      }
    }
  }

  if (*(v12 + v15[6]))
  {
    LOBYTE(v65) = *(v12 + v15[6]);
    v64[0] = 2;
    sub_1BBA90550();
    sub_1BBB84288();
    if (v3)
    {
      goto LABEL_30;
    }
  }

  v58 = v10;
  sub_1BBB82EA8();
  swift_allocObject();
  sub_1BBB82E98();
  sub_1BBA90A3C();
  v44 = v72;
  v45 = sub_1BBB82E78();
  if (v3)
  {

    (*(v58 + 8))(v44, v35);
    return (*(v5 + 8))(v39, v34);
  }

  v47 = v45;
  v48 = v46;

  v65 = v47;
  v66 = v48;
  v64[0] = 0;
  sub_1BBA8845C();
  sub_1BBB84288();
  (*(v58 + 8))(v72, v35);
  (*(v5 + 8))(v39, v34);
  return sub_1BBA885E8(v47, v48);
}

unint64_t sub_1BBA8845C()
{
  result = qword_1ED6BDE20;
  if (!qword_1ED6BDE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDE20);
  }

  return result;
}

uint64_t _s19NavigationSplitPaneV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BBA8853C()
{
  v1 = *v0;
  v2 = 0x676E696B636162;
  v3 = 0x696D694C656E696CLL;
  v4 = 0x61636E7572547369;
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
    v2 = 0x656C626174696465;
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

uint64_t sub_1BBA885E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t IntelligenceElement.Content.encode(to:)(void *a1)
{
  v2 = v1;
  v244 = a1;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D048);
  MEMORY[0x1EEE9AC00](v245);
  v241 = &v206 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D050);
  v246 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v223 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v236 = &v206 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v222 = &v206 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v235 = &v206 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v221 = &v206 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v234 = &v206 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v220 = &v206 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v233 = &v206 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v219 = &v206 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v232 = &v206 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v218 = &v206 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v231 = &v206 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v217 = &v206 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v230 = &v206 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v216 = &v206 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v229 = &v206 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v215 = &v206 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v228 = &v206 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v214 = &v206 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v227 = &v206 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v213 = &v206 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v226 = &v206 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v212 = &v206 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v225 = &v206 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v211 = &v206 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v224 = &v206 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v210 = &v206 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v206 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v209 = &v206 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v206 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v208 = &v206 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v71 = &v206 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v207 = &v206 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v206 - v75;
  v77 = MEMORY[0x1EEE9AC00](v74);
  v206 = &v206 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v81 = &v206 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79);
  v84 = &v206 - v83;
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v206 - v85;
  v87 = *v2;
  v243 = swift_allocBox();
  v88 = *(v246 + 56);
  v239 = v4;
  v240 = v89;
  v245 = v246 + 56;
  v238 = v88;
  v88(v89, 1, 1, v4);
  v237 = v87;
  switch((v87 >> 59) & 0x1E | (v87 >> 2) & 1)
  {
    case 1uLL:
      LOBYTE(v247) = 2;
      v249 = 0;
      sub_1BBA8C2A4(v244, v81);
      sub_1BBA8C50C();
      v135 = v239;
      v136 = v242;
      sub_1BBB84288();
      if (!v136)
      {
        v188 = v237 & 0xFFFFFFFFFFFFFFBLL;
        v189 = v241;
        v246 = *(v246 + 32);
        (v246)(v241, v81, v135);
        v190 = v238;
        v238(v189, 0, 1, v135);
        v191 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v189, v191);
        v247 = v188;
        v249 = 1;
        v192 = v206;
        sub_1BBA8C2A4(v244, v206);
        sub_1BBB503C8();
        sub_1BBB84288();
        (v246)(v189, v192, v135);
        v190(v189, 0, 1, v135);
        v193 = v189;
        v194 = v191;
        goto LABEL_53;
      }

      v137 = v241;
      (*(v246 + 32))(v241, v81, v135);
      v238(v137, 0, 1, v135);
      v138 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v137, v138);

    case 2uLL:
      LOBYTE(v247) = 3;
      v249 = 0;
      v121 = v244;
      sub_1BBA8C2A4(v244, v76);
      sub_1BBA8C50C();
      v122 = v239;
      v123 = v242;
      sub_1BBB84288();
      if (v123)
      {
        v124 = v241;
        (*(v246 + 32))(v241, v76, v122);
        v238(v124, 0, 1, v122);
        v125 = v240;
        swift_beginAccess();
        v113 = v124;
        v114 = v125;
      }

      else
      {
        v178 = v237 & 0xFFFFFFFFFFFFFFBLL;
        v179 = v241;
        v246 = *(v246 + 32);
        (v246)(v241, v76, v122);
        v180 = v238;
        v238(v179, 0, 1, v122);
        v181 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v179, v181);
        v247 = v178;
        v249 = 1;
        v182 = v207;
        sub_1BBA8C2A4(v121, v207);
        sub_1BBB50374();
        sub_1BBB84288();
        (v246)(v179, v182, v122);
        v180(v179, 0, 1, v122);
        v113 = v179;
        v114 = v181;
      }

      break;
    case 3uLL:
      LOBYTE(v247) = 4;
      v249 = 0;
      v129 = v244;
      sub_1BBA8C2A4(v244, v71);
      sub_1BBA8C50C();
      v95 = v239;
      v130 = v242;
      sub_1BBB84288();
      if (v130)
      {
        v131 = v241;
        (*(v246 + 32))(v241, v71, v95);
        goto LABEL_42;
      }

      v183 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v184 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v71, v95);
      v185 = v238;
      v238(v184, 0, 1, v95);
      v186 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v184, v186);
      v247 = v183;
      v249 = 1;
      v187 = v208;
      sub_1BBA8C2A4(v129, v208);
      sub_1BBACD318();
      sub_1BBB84288();
      (v246)(v184, v187, v95);
      v185(v184, 0, 1, v95);
      v113 = v184;
      v114 = v186;
      break;
    case 4uLL:
      LOBYTE(v247) = 5;
      v249 = 0;
      v108 = v244;
      sub_1BBA8C2A4(v244, v66);
      sub_1BBA8C50C();
      v109 = v239;
      v110 = v242;
      sub_1BBB84288();
      if (v110)
      {
        v111 = v241;
        (*(v246 + 32))(v241, v66, v109);
        v238(v111, 0, 1, v109);
        v112 = v240;
        swift_beginAccess();
        v113 = v111;
      }

      else
      {
        v174 = v237 & 0xFFFFFFFFFFFFFFBLL;
        v175 = v241;
        v246 = *(v246 + 32);
        (v246)(v241, v66, v109);
        v176 = v238;
        v238(v175, 0, 1, v109);
        v112 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v175, v112);
        v247 = v174;
        v249 = 1;
        v177 = v209;
        sub_1BBA8C2A4(v108, v209);
        sub_1BBB50320();
        sub_1BBB84288();
        (v246)(v175, v177, v109);
        v176(v175, 0, 1, v109);
        v113 = v175;
      }

      v114 = v112;
      break;
    case 5uLL:
      LOBYTE(v247) = 6;
      v249 = 0;
      v143 = v244;
      sub_1BBA8C2A4(v244, v61);
      sub_1BBA8C50C();
      v144 = v239;
      v145 = v242;
      sub_1BBB84288();
      if (v145)
      {
        v146 = v241;
        (*(v246 + 32))(v241, v61, v144);
        v238(v146, 0, 1, v144);
        v147 = v240;
        swift_beginAccess();
        v113 = v146;
        v114 = v147;
      }

      else
      {
        v195 = v241;
        v246 = *(v246 + 32);
        (v246)(v241, v61, v144);
        v196 = v238;
        v238(v195, 0, 1, v144);
        v197 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v195, v197);
        LOBYTE(v247) = v237 & 1;
        v249 = 1;
        v198 = v210;
        sub_1BBA8C2A4(v143, v210);
        sub_1BBB502CC();
        sub_1BBB84288();
        (v246)(v195, v198, v144);
        v196(v195, 0, 1, v144);
        v113 = v195;
        v114 = v197;
      }

      break;
    case 6uLL:
      LOBYTE(v247) = 7;
      v249 = 0;
      v151 = v224;
      v152 = v244;
      sub_1BBA8C2A4(v244, v224);
      sub_1BBA8C50C();
      v153 = v239;
      v154 = v242;
      sub_1BBB84288();
      if (v154)
      {
        v155 = v241;
        (*(v246 + 32))(v241, v151, v153);
        v238(v155, 0, 1, v153);
        v156 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v155, v156);
      }

      else
      {
        v199 = v237 & 0xFFFFFFFFFFFFFFBLL;
        v200 = v241;
        v246 = *(v246 + 32);
        (v246)();
        v201 = v238;
        v238(v200, 0, 1, v153);
        v202 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v200, v202);
        v247 = v199;
        v249 = 1;
        v203 = v152;
        v204 = v211;
        sub_1BBA8C2A4(v203, v211);
        sub_1BBA8DCB8();
        sub_1BBB84288();
        (v246)(v200, v204, v153);
        v201(v200, 0, 1, v153);
        v193 = v200;
        v194 = v202;
LABEL_53:
        sub_1BBA8A7D4(v193, v194);
      }

    case 7uLL:
      LOBYTE(v247) = 8;
      v249 = 0;
      v93 = v225;
      v132 = v244;
      sub_1BBA8C2A4(v244, v225);
      sub_1BBA8C50C();
      v95 = v239;
      v133 = v242;
      sub_1BBB84288();
      if (v133)
      {
        goto LABEL_41;
      }

      v134 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v134;
      v249 = 1;
      v101 = v212;
      sub_1BBA8C2A4(v132, v212);
      sub_1BBA90B78();
      goto LABEL_55;
    case 8uLL:
      LOBYTE(v247) = 9;
      v249 = 0;
      v93 = v226;
      v163 = v244;
      sub_1BBA8C2A4(v244, v226);
      sub_1BBA8C50C();
      v95 = v239;
      v164 = v242;
      sub_1BBB84288();
      if (v164)
      {
        goto LABEL_41;
      }

      v205 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v205;
      v249 = 1;
      v101 = v213;
      sub_1BBA8C2A4(v163, v213);
      sub_1BBB50278();
      goto LABEL_55;
    case 9uLL:
      LOBYTE(v247) = 10;
      v249 = 0;
      v93 = v227;
      v118 = v244;
      sub_1BBA8C2A4(v244, v227);
      sub_1BBA8C50C();
      v95 = v239;
      v119 = v242;
      sub_1BBB84288();
      if (v119)
      {
        goto LABEL_41;
      }

      v120 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v120;
      v249 = 1;
      v101 = v214;
      sub_1BBA8C2A4(v118, v214);
      sub_1BBB50224();
      goto LABEL_55;
    case 0xAuLL:
      LOBYTE(v247) = 11;
      v249 = 0;
      v93 = v228;
      v160 = v244;
      sub_1BBA8C2A4(v244, v228);
      sub_1BBA8C50C();
      v95 = v239;
      v161 = v242;
      sub_1BBB84288();
      if (v161)
      {
        goto LABEL_41;
      }

      v162 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v162;
      v249 = 1;
      v101 = v215;
      sub_1BBA8C2A4(v160, v215);
      sub_1BBAA2FB4();
      goto LABEL_55;
    case 0xBuLL:
      LOBYTE(v247) = 12;
      v249 = 0;
      v93 = v229;
      v105 = v244;
      sub_1BBA8C2A4(v244, v229);
      sub_1BBA8C50C();
      v95 = v239;
      v106 = v242;
      sub_1BBB84288();
      if (v106)
      {
        goto LABEL_41;
      }

      v107 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v107;
      v249 = 1;
      v101 = v216;
      sub_1BBA8C2A4(v105, v216);
      sub_1BBAA2E28();
      goto LABEL_55;
    case 0xCuLL:
      LOBYTE(v247) = 13;
      v249 = 0;
      v93 = v230;
      v115 = v244;
      sub_1BBA8C2A4(v244, v230);
      sub_1BBA8C50C();
      v95 = v239;
      v116 = v242;
      sub_1BBB84288();
      if (v116)
      {
        goto LABEL_41;
      }

      v117 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v117;
      v249 = 1;
      v101 = v217;
      sub_1BBA8C2A4(v115, v217);
      sub_1BBAB58C0();
      goto LABEL_55;
    case 0xDuLL:
      LOBYTE(v247) = 14;
      v249 = 0;
      v93 = v231;
      v148 = v244;
      sub_1BBA8C2A4(v244, v231);
      sub_1BBA8C50C();
      v95 = v239;
      v149 = v242;
      sub_1BBB84288();
      if (v149)
      {
        goto LABEL_41;
      }

      v150 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v150;
      v249 = 1;
      v101 = v218;
      sub_1BBA8C2A4(v148, v218);
      sub_1BBA91588();
      goto LABEL_55;
    case 0xEuLL:
      LOBYTE(v247) = 15;
      v249 = 0;
      v93 = v232;
      v102 = v244;
      sub_1BBA8C2A4(v244, v232);
      sub_1BBA8C50C();
      v95 = v239;
      v103 = v242;
      sub_1BBB84288();
      if (v103)
      {
        goto LABEL_41;
      }

      v104 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v104;
      v249 = 1;
      v101 = v219;
      sub_1BBA8C2A4(v102, v219);
      sub_1BBAB571C();
      goto LABEL_55;
    case 0xFuLL:
      LOBYTE(v247) = 16;
      v249 = 0;
      v93 = v233;
      v126 = v244;
      sub_1BBA8C2A4(v244, v233);
      sub_1BBA8C50C();
      v95 = v239;
      v127 = v242;
      sub_1BBB84288();
      if (v127)
      {
        goto LABEL_41;
      }

      v128 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v128;
      v249 = 1;
      v101 = v220;
      sub_1BBA8C2A4(v126, v220);
      sub_1BBB501D0();
      goto LABEL_55;
    case 0x10uLL:
      LOBYTE(v247) = 17;
      v249 = 0;
      v93 = v234;
      v94 = v244;
      sub_1BBA8C2A4(v244, v234);
      sub_1BBA8C50C();
      v95 = v239;
      v96 = v242;
      sub_1BBB84288();
      if (v96)
      {
        goto LABEL_41;
      }

      v97 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v97;
      v249 = 1;
      v101 = v221;
      sub_1BBA8C2A4(v94, v221);
      sub_1BBB5017C();
      goto LABEL_55;
    case 0x11uLL:
      LOBYTE(v247) = 18;
      v249 = 0;
      v93 = v235;
      v140 = v244;
      sub_1BBA8C2A4(v244, v235);
      sub_1BBA8C50C();
      v95 = v239;
      v141 = v242;
      sub_1BBB84288();
      if (v141)
      {
        goto LABEL_41;
      }

      v142 = v237 & 0xFFFFFFFFFFFFFFBLL;
      v98 = v241;
      v246 = *(v246 + 32);
      (v246)(v241, v93, v95);
      v99 = v238;
      v238(v98, 0, 1, v95);
      v100 = v240;
      swift_beginAccess();
      sub_1BBA8A7D4(v98, v100);
      v247 = v142;
      v249 = 1;
      v101 = v222;
      sub_1BBA8C2A4(v140, v222);
      sub_1BBB50128();
      goto LABEL_55;
    case 0x12uLL:
      LOBYTE(v247) = 19;
      v249 = 0;
      v93 = v236;
      v157 = v244;
      sub_1BBA8C2A4(v244, v236);
      sub_1BBA8C50C();
      v95 = v239;
      v158 = v242;
      sub_1BBB84288();
      if (v158)
      {
LABEL_41:
        v131 = v241;
        (*(v246 + 32))(v241, v93, v95);
LABEL_42:
        v238(v131, 0, 1, v95);
        v165 = v240;
        swift_beginAccess();
        v113 = v131;
        v114 = v165;
      }

      else
      {
        v159 = v237 & 0xFFFFFFFFFFFFFFBLL;
        v98 = v241;
        v246 = *(v246 + 32);
        (v246)(v241, v93, v95);
        v99 = v238;
        v238(v98, 0, 1, v95);
        v100 = v240;
        swift_beginAccess();
        sub_1BBA8A7D4(v98, v100);
        v247 = v159;
        v249 = 1;
        v101 = v223;
        sub_1BBA8C2A4(v157, v223);
        sub_1BBB500D4();
LABEL_55:
        sub_1BBB84288();
        (v246)(v98, v101, v95);
        v99(v98, 0, 1, v95);
        v113 = v98;
        v114 = v100;
      }

      break;
    case 0x13uLL:
      if (v237 == 0x9000000000000004)
      {
        LOBYTE(v247) = 0;
        v249 = 0;
        sub_1BBA8C2A4(v244, v86);
        sub_1BBA8C50C();
        v166 = v239;
        sub_1BBB84288();
        v168 = v240;
        v167 = v241;
        v169 = v238;
        (*(v246 + 32))(v241, v86, v166);
        v169(v167, 0, 1, v166);
        swift_beginAccess();
        v170 = v167;
      }

      else
      {
        LOBYTE(v247) = 1;
        v249 = 0;
        sub_1BBA8C2A4(v244, v84);
        sub_1BBA8C50C();
        v171 = v239;
        sub_1BBB84288();
        v168 = v240;
        v172 = v241;
        v173 = v238;
        (*(v246 + 32))(v241, v84, v171);
        v173(v172, 0, 1, v171);
        swift_beginAccess();
        v170 = v172;
      }

      sub_1BBA8A7D4(v170, v168);

    default:
      v90 = v237;
      v91 = *(v237 + 64);
      os_unfair_lock_lock((v91 + 32));
      v92 = *(v91 + 24);
      sub_1BBB0901C(v92);
      os_unfair_lock_unlock((v91 + 32));
      if ((~v92 & 0xF000000000000006) == 0)
      {
        v92 = *(v90 + 56);
        sub_1BBA8BD24(v92);
      }

      v248 = v92;
      IntelligenceElement.Content.encode(to:)(v244);
      sub_1BBA8ABF8(v92);
  }

  sub_1BBA8A7D4(v113, v114);
}

uint64_t sub_1BBA8A7D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceElement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBE8);
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v15 = *(v1 + 40);
  v12 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA8AB90();
  sub_1BBB84478();
  if (!*(v12 + 16) || (v17[0] = v12, LOBYTE(v18) = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBF0), sub_1BBA9E1C8(), sub_1BBB84288(), !v2))
  {
    v19.origin.x = v7;
    v19.origin.y = v8;
    v19.size.width = v9;
    v19.size.height = v10;
    if (CGRectIsNull(v19) || (*v17 = v7, *&v17[1] = v8, *&v17[2] = v9, *&v17[3] = v10, LOBYTE(v18) = 1, type metadata accessor for CGRect(0), sub_1BBA8AD64(&qword_1ED6BDCA8, type metadata accessor for CGRect), sub_1BBB84288(), !v2))
    {
      v17[0] = v11;
      v18 = 0x9000000000000004;
      sub_1BBA8BD24(v11);
      v13 = _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(v17, &v18);
      sub_1BBA8ABF8(v17[0]);
      if ((v13 & 1) != 0 || (v17[0] = v11, LOBYTE(v18) = 2, sub_1BBA8BD24(v11), sub_1BBA8C238(), sub_1BBB84288(), sub_1BBA8ABF8(v17[0]), !v2))
      {
        if (*(v15 + 16))
        {
          v17[0] = v15;
          LOBYTE(v18) = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
          sub_1BBAA0B24(&qword_1ED6BDCB0, sub_1BBAB5674);
          sub_1BBB84288();
        }
      }
    }
  }

  return (*(v16 + 8))(v6, v4);
}

unint64_t sub_1BBA8AB90()
{
  result = qword_1ED6BE398;
  if (!qword_1ED6BE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE398);
  }

  return result;
}

unint64_t sub_1BBA8ABF8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceElementV7ContentO(void *a1)
{
  v1 = (*a1 >> 2) & 1 | (*a1 >> 59) & 0x1E;
  if (v1 <= 0x12)
  {
    return v1;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 19;
  }
}

uint64_t _s10ImageMediaV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BBA8AD64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v100[-v8];
  v10 = *a1;
  v11 = *a2;
  switch((v10 >> 59) & 0x1E | (v10 >> 2) & 1)
  {
    case 1uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 1)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV6ScreenV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 2uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 2)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV6WindowV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 3uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 3)
      {
        goto LABEL_52;
      }

      v57 = (v10 & 0xFFFFFFFFFFFFFFBLL) + *(*(v10 & 0xFFFFFFFFFFFFFFBLL) + 88);
      swift_beginAccess();
      v58 = _s13RemoteContextV7StorageVMa(0);
      sub_1BBACD3C0(v57 + *(v58 + 20), v9);
      v59 = (v11 & 0xFFFFFFFFFFFFFFBLL) + *(*(v11 & 0xFFFFFFFFFFFFFFBLL) + 88);
      swift_beginAccess();
      sub_1BBACD3C0(v59 + *(v58 + 20), v7);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v12 = sub_1BBB834C8();
      sub_1BBACD424(v7);
      sub_1BBACD424(v9);
      goto LABEL_50;
    case 4uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 4)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV13RemoteProcessV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 5uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 5)
      {
        goto LABEL_53;
      }

      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      v12 = v11 ^ v10 ^ 1;
      return v12 & 1;
    case 6uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 6)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV4TextV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 7uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 7)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV5ImageV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 8uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 8)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV8DocumentV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 9uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 9)
      {
        goto LABEL_52;
      }

      *&v106[0] = v10 & 0xFFFFFFFFFFFFFFBLL;
      *&v105[0] = v11 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = _s21UIIntelligenceSupport19IntelligenceElementV10ImageMediaV2eeoiySbAE_AEtFZ_0(v106, v105);
      goto LABEL_49;
    case 0xAuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xA)
      {
        goto LABEL_52;
      }

      swift_beginAccess();
      v68 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v69 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v70 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v103[2] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v103[3] = v70;
      v103[1] = v69;
      v71 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v72 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v73 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(&v103[6] + 11) = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x7B);
      v74 = *(&v103[6] + 11);
      v103[5] = v72;
      v103[6] = v73;
      v103[4] = v71;
      v103[0] = v68;
      v75 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v76 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v77 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v102[2] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v102[3] = v77;
      v102[0] = v75;
      v102[1] = v76;
      v78 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v79 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v80 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(&v102[6] + 11) = v74;
      v102[5] = v79;
      v102[6] = v80;
      v102[4] = v78;
      swift_beginAccess();
      v81 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v82 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v83 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v104[2] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v104[3] = v83;
      v104[1] = v82;
      v84 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v85 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v86 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(&v104[6] + 11) = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x7B);
      v87 = *(&v104[6] + 11);
      v104[5] = v85;
      v104[6] = v86;
      v104[4] = v84;
      v104[0] = v81;
      v88 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v89 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v90 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v101[2] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v101[3] = v90;
      v101[0] = v88;
      v101[1] = v89;
      v91 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v92 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v93 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      *(&v101[6] + 11) = v87;
      v101[5] = v92;
      v101[6] = v93;
      v101[4] = v91;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBAB48D0(v103, v106);
      sub_1BBAB48D0(v104, v106);
      v12 = sub_1BBAD2388(v102, v101);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      v105[4] = v101[4];
      v105[5] = v101[5];
      v105[6] = v101[6];
      *(&v105[6] + 11) = *(&v101[6] + 11);
      v105[0] = v101[0];
      v105[1] = v101[1];
      v105[2] = v101[2];
      v105[3] = v101[3];
      sub_1BBAB4908(v105);
      v106[4] = v102[4];
      v106[5] = v102[5];
      v106[6] = v102[6];
      *(&v106[6] + 11) = *(&v102[6] + 11);
      v106[0] = v102[0];
      v106[1] = v102[1];
      v106[2] = v102[2];
      v106[3] = v102[3];
      sub_1BBAB4908(v106);
      goto LABEL_51;
    case 0xBuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xB)
      {
        goto LABEL_52;
      }

      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      swift_beginAccess();
      v46 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v106[2] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v106[3] = v46;
      v47 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v106[4] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v106[5] = v47;
      v48 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v106[0] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v106[1] = v48;
      swift_beginAccess();
      v49 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v105[2] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v105[3] = v49;
      v50 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v105[4] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v105[5] = v50;
      v51 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v105[0] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v105[1] = v51;
      v12 = sub_1BBB74D10(v106, v105);
      goto LABEL_51;
    case 0xCuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xC)
      {
        goto LABEL_52;
      }

      swift_beginAccess();
      v53 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v54 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v106[0] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v106[1]) = v53;
      *(&v106[1] + 1) = v54;
      swift_beginAccess();
      v55 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v56 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v105[0] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      LOBYTE(v105[1]) = v55;
      *(&v105[1] + 1) = v56;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);

      v12 = sub_1BBB17974(v106, v105);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);

      goto LABEL_51;
    case 0xDuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xD)
      {
        goto LABEL_52;
      }

      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = sub_1BBB24FF4(v10 & 0xFFFFFFFFFFFFFFBLL, v11 & 0xFFFFFFFFFFFFFFBLL);
      goto LABEL_49;
    case 0xEuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xE)
      {
        goto LABEL_52;
      }

      swift_beginAccess();
      v19 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v20 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v21 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v22 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v23 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v103[4] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v103[5] = v23;
      v103[2] = v21;
      v103[3] = v22;
      v24 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v25 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v26 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v103[8] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v103[9] = v26;
      v103[6] = v24;
      v103[7] = v25;
      v103[0] = v19;
      v103[1] = v20;
      v27 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v102[6] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v102[7] = v27;
      v28 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v102[8] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v102[9] = v28;
      v29 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v102[2] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v102[3] = v29;
      v30 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v102[4] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v102[5] = v30;
      v31 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v102[0] = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v102[1] = v31;
      swift_beginAccess();
      v32 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v33 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v34 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v35 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v36 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v104[4] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v104[5] = v36;
      v104[2] = v34;
      v104[3] = v35;
      v37 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v38 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v39 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v104[8] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v104[9] = v39;
      v104[6] = v37;
      v104[7] = v38;
      v104[0] = v32;
      v104[1] = v33;
      v40 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x70);
      v41 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x90);
      v42 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0xA0);
      v101[7] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x80);
      v101[8] = v41;
      v101[9] = v42;
      v43 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      v101[2] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v101[3] = v43;
      v44 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x60);
      v101[4] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
      v101[5] = v44;
      v101[6] = v40;
      v45 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v101[0] = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v101[1] = v45;
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBB4A350(v103, v106);
      sub_1BBB4A350(v104, v106);
      v12 = sub_1BBB4CC88(v102, v101);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      v105[6] = v101[6];
      v105[7] = v101[7];
      v105[8] = v101[8];
      v105[9] = v101[9];
      v105[2] = v101[2];
      v105[3] = v101[3];
      v105[4] = v101[4];
      v105[5] = v101[5];
      v105[0] = v101[0];
      v105[1] = v101[1];
      sub_1BBB4A388(v105);
      v106[6] = v102[6];
      v106[7] = v102[7];
      v106[8] = v102[8];
      v106[9] = v102[9];
      v106[2] = v102[2];
      v106[3] = v102[3];
      v106[4] = v102[4];
      v106[5] = v102[5];
      v106[0] = v102[0];
      v106[1] = v102[1];
      sub_1BBB4A388(v106);
      goto LABEL_51;
    case 0xFuLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0xF)
      {
        goto LABEL_52;
      }

      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      v52 = sub_1BBB24D0C((v10 & 0xFFFFFFFFFFFFFFBLL), (v11 & 0xFFFFFFFFFFFFFFBLL));
LABEL_49:
      v12 = v52;
LABEL_50:
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      goto LABEL_51;
    case 0x10uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0x10)
      {
        goto LABEL_52;
      }

      swift_beginAccess();
      v13 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v14 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v15 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      swift_beginAccess();
      if (v13 != *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10))
      {
        sub_1BBA8BD24(v11);
        v94 = v10;
        goto LABEL_54;
      }

      v16 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v17 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      if (v14 != v17)
      {
        goto LABEL_55;
      }

      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);

      v18 = sub_1BBAFF5D8(v15, v16);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);

      sub_1BBA8ABF8(v11);
      sub_1BBA8ABF8(v10);
      if (v18)
      {
        v12 = 1;
        return v12 & 1;
      }

      goto LABEL_56;
    case 0x11uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0x11)
      {
        goto LABEL_52;
      }

      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      swift_beginAccess();
      v60 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v61 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v62 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      swift_beginAccess();
      v63 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v64 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v65 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1BBA8ABF8(v11);
      sub_1BBA8ABF8(v10);
      v67 = v60 == v63 && v61 == v64;
      v12 = v67 & (v62 ^ v65 ^ 1);
      return v12 & 1;
    case 0x12uLL:
      if (((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 0x12)
      {
        goto LABEL_52;
      }

      swift_beginAccess();
      memcpy(v103, ((v10 & 0xFFFFFFFFFFFFFFBLL) + 16), 0x101uLL);
      memcpy(v102, ((v10 & 0xFFFFFFFFFFFFFFBLL) + 16), 0x101uLL);
      swift_beginAccess();
      memcpy(v104, ((v11 & 0xFFFFFFFFFFFFFFBLL) + 16), 0x101uLL);
      memcpy(v101, ((v11 & 0xFFFFFFFFFFFFFFBLL) + 16), 0x101uLL);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBA8BD24(v11);
      sub_1BBA8BD24(v10);
      sub_1BBB42740(v103, v106);
      sub_1BBB42740(v104, v106);
      v12 = sub_1BBB476A0(v102, v101);
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
      memcpy(v105, v101, 0x101uLL);
      sub_1BBB42778(v105);
      memcpy(v106, v102, 0x101uLL);
      sub_1BBB42778(v106);
LABEL_51:
      sub_1BBA8ABF8(v11);
      sub_1BBA8ABF8(v10);
      return v12 & 1;
    case 0x13uLL:
      v96 = (v11 >> 59) & 0x1E | (v11 >> 2) & 1;
      if (v10 != 0x9000000000000004)
      {
        if (v96 != 19 || v11 != 0x9000000000000005)
        {
          goto LABEL_53;
        }

        sub_1BBA8ABF8(0x9000000000000005);
        v98 = 0x9000000000000005;
LABEL_71:
        sub_1BBA8ABF8(v98);
        v12 = 1;
        return v12 & 1;
      }

      if (v96 == 19 && v11 == 0x9000000000000004)
      {
        sub_1BBA8ABF8(0x9000000000000004);
        v98 = 0x9000000000000004;
        goto LABEL_71;
      }

LABEL_53:
      v94 = v11;
LABEL_54:
      sub_1BBA8BD24(v94);
LABEL_55:
      sub_1BBA8ABF8(v10);
      sub_1BBA8ABF8(v11);
LABEL_56:
      v12 = 0;
      return v12 & 1;
    default:
      if (!((v11 >> 59) & 0x1E | (v11 >> 2) & 1))
      {
        sub_1BBA8BD24(v11);
        sub_1BBA8BD24(v10);
        v12 = _s21UIIntelligenceSupport19IntelligenceElementV12AsyncContentC2eeoiySbAE_AEtFZ_0(v10, v11);
        sub_1BBA8ABF8(v10);
        sub_1BBA8ABF8(v11);
        return v12 & 1;
      }

LABEL_52:

      goto LABEL_53;
  }
}

uint64_t sub_1BBA8BC5C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBA8BCC4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBA8BD24(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BBA8BDB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBA8BDFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBA8BE44()
{
  result = qword_1EBC7B458;
  if (!qword_1EBC7B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B458);
  }

  return result;
}

uint64_t _s10ImageMediaV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BBA8BF44()
{
  v1 = 0x656761726F7473;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x656D656C65627573;
  }

  if (*v0)
  {
    v1 = 0x676E69646E756F62;
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

uint64_t sub_1BBA8BFF4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t IntelligenceAppIntentsRequest.init(displayRepresentations:includeDebugDescription:)@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1BBB838D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1BBB83888();
  v11 = sub_1BBB838A8();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 9) = a2;
  return result;
}

uint64_t sub_1BBA8C1D8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_1BBA8C238()
{
  result = qword_1ED6BDD70;
  if (!qword_1ED6BDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD70);
  }

  return result;
}

uint64_t sub_1BBA8C2A4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D048);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = swift_projectBox();
  sub_1BBA8BC5C(v10, v9, &qword_1EBC7D048);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D050);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_1BBA8BCC4(v9, &qword_1EBC7D048);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA8C4B8();
  sub_1BBB84478();
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  return sub_1BBA8A7D4(v7, v10);
}

unint64_t sub_1BBA8C4B8()
{
  result = qword_1ED6BE250[0];
  if (!qword_1ED6BE250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BE250);
  }

  return result;
}

unint64_t sub_1BBA8C50C()
{
  result = qword_1ED6BDD78;
  if (!qword_1ED6BDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD78);
  }

  return result;
}

uint64_t sub_1BBA8C560()
{
  if (*v0)
  {
    return 0x746169636F737361;
  }

  else
  {
    return 0x546465646F636E65;
  }
}

uint64_t sub_1BBA8C5B0(void *a1, uint64_t a2)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0C0);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0C8);
  v109 = *(v5 - 8);
  v110 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0D0);
  v106 = *(v7 - 8);
  v107 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0D8);
  v103 = *(v9 - 8);
  v104 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0E0);
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0E8);
  v97 = *(v13 - 8);
  v98 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v96 = &v57 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0F0);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v57 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D0F8);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v57 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D100);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v57 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D108);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v57 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D110);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v57 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D118);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v57 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D120);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v57 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D128);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v57 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D130);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v57 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D138);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D140);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v25;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D148);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D150);
  v59 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D158);
  v58 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D160);
  v33 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v35 = &v57 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA8D848();
  v114 = v35;
  sub_1BBB84478();
  v36 = (v33 + 8);
  switch(v116)
  {
    case 1:
      v117 = 1;
      sub_1BBB50C4C();
      v49 = v114;
      v50 = v115;
      sub_1BBB84208();
      (*(v59 + 8))(v29, v27);
      return (*v36)(v49, v50);
    case 2:
      v117 = 2;
      sub_1BBAA71CC();
      v46 = v60;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v61 + 8))(v46, v62);
      return (*v36)(v37, v38);
    case 3:
      v117 = 3;
      sub_1BBAAB504();
      v47 = v63;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v64 + 8))(v47, v65);
      return (*v36)(v37, v38);
    case 4:
      v117 = 4;
      sub_1BBB50BF8();
      v43 = v66;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v67 + 8))(v43, v68);
      return (*v36)(v37, v38);
    case 5:
      v117 = 5;
      sub_1BBB50BA4();
      v52 = v69;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v70 + 8))(v52, v71);
      return (*v36)(v37, v38);
    case 6:
      v117 = 6;
      sub_1BBB50B50();
      v54 = v72;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v73 + 8))(v54, v74);
      return (*v36)(v37, v38);
    case 7:
      v117 = 7;
      sub_1BBA8D89C();
      v48 = v75;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v76 + 8))(v48, v77);
      return (*v36)(v37, v38);
    case 8:
      v117 = 8;
      sub_1BBA90B24();
      v56 = v78;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v79 + 8))(v56, v80);
      return (*v36)(v37, v38);
    case 9:
      v117 = 9;
      sub_1BBB50AFC();
      v45 = v81;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v82 + 8))(v45, v83);
      return (*v36)(v37, v38);
    case 10:
      v117 = 10;
      sub_1BBB50AA8();
      v55 = v84;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v85 + 8))(v55, v86);
      return (*v36)(v37, v38);
    case 11:
      v117 = 11;
      sub_1BBAA2F60();
      v42 = v87;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v88 + 8))(v42, v89);
      return (*v36)(v37, v38);
    case 12:
      v117 = 12;
      sub_1BBAA2DD4();
      v44 = v90;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v91 + 8))(v44, v92);
      return (*v36)(v37, v38);
    case 13:
      v117 = 13;
      sub_1BBAB5914();
      v53 = v93;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v94 + 8))(v53, v95);
      return (*v36)(v37, v38);
    case 14:
      v117 = 14;
      sub_1BBA91534();
      v39 = v96;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v97;
      v40 = v98;
      goto LABEL_22;
    case 15:
      v117 = 15;
      sub_1BBAB5770();
      v39 = v99;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v100;
      v40 = v101;
      goto LABEL_22;
    case 16:
      v117 = 16;
      sub_1BBB50A54();
      v39 = v102;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v103;
      v40 = v104;
      goto LABEL_22;
    case 17:
      v117 = 17;
      sub_1BBB50A00();
      v39 = v105;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v106;
      v40 = v107;
      goto LABEL_22;
    case 18:
      v117 = 18;
      sub_1BBB509AC();
      v39 = v108;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v109;
      v40 = v110;
      goto LABEL_22;
    case 19:
      v117 = 19;
      sub_1BBB50958();
      v39 = v111;
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      v41 = v112;
      v40 = v113;
LABEL_22:
      (*(v41 + 8))(v39, v40);
      break;
    default:
      v117 = 0;
      sub_1BBB50CA0();
      v37 = v114;
      v38 = v115;
      sub_1BBB84208();
      (*(v58 + 8))(v32, v30);
      break;
  }

  return (*v36)(v37, v38);
}

unint64_t sub_1BBA8D848()
{
  result = qword_1ED6BE238;
  if (!qword_1ED6BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE238);
  }

  return result;
}

unint64_t sub_1BBA8D89C()
{
  result = qword_1EBC7B3D0;
  if (!qword_1EBC7B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3D0);
  }

  return result;
}

uint64_t sub_1BBA8D900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BBA8D9B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBA8DA48(char a1)
{
  result = 1702060386;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x6E6565726373;
      break;
    case 3:
      result = 0x776F646E6977;
      break;
    case 4:
      result = 0x65746F6D6572;
      break;
    case 5:
      result = 0x725065746F6D6572;
      break;
    case 6:
      result = 0x70416D6F74737563;
      break;
    case 7:
      result = 1954047348;
      break;
    case 8:
      result = 0x6567616D69;
      break;
    case 9:
      result = 0x746E656D75636F64;
      break;
    case 10:
      result = 0x64654D6567616D69;
      break;
    case 11:
      result = 0x6E6F74747562;
      break;
    case 12:
      result = 0x62616C6C6F726373;
      break;
    case 13:
      result = 0x697463656C6C6F63;
      break;
    case 14:
      result = 0x697463656C6C6F63;
      break;
    case 15:
      result = 0x6E6F6974636573;
      break;
    case 16:
      result = 0x656C626174;
      break;
    case 17:
      result = 0x776F52656C626174;
      break;
    case 18:
      result = 0x6C6543656C626174;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BBA8DCB8()
{
  result = qword_1EBC7B248;
  if (!qword_1EBC7B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B248);
  }

  return result;
}

unint64_t sub_1BBA8DD24()
{
  result = qword_1EBC7B438;
  if (!qword_1EBC7B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B438);
  }

  return result;
}

BOOL IntelligenceElement.Text.hasSelections.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_1BBB830D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BBB830F8();
  (*(v3 + 8))(v5, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D298);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v8;
  (*(v8 + 16))(v27, v27, v7);
  v14 = MEMORY[0x1EEE77FF8];
  sub_1BBA8BDFC(&qword_1EBC7B548, MEMORY[0x1EEE77FF8]);
  sub_1BBB83B98();
  v31 = sub_1BBB830A8();
  v15 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BBB830C8();
  v19 = *(v18 - 8);
  v33 = *(v19 + 64);
  v20 = sub_1BBA8BDFC(&qword_1EBC7B540, v14);
  v32 = (v19 + 8);
  v29 = (v15 + 8);
  v30 = (v15 + 16);
  do
  {
    MEMORY[0x1EEE9AC00](v20);
    v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBB83CF8();
    sub_1BBA8BDFC(&unk_1EBC7B550, MEMORY[0x1EEE77FE8]);
    v23 = sub_1BBB83968();
    (*v32)(v22, v18);
    if (v23)
    {
      break;
    }

    v24 = sub_1BBB83D18();
    v25 = v31;
    (*v30)(v17);
    v24(v34, 0);
    sub_1BBB83D08();
    sub_1BBA8BE44();
    sub_1BBB830B8();
    v20 = (*v29)(v17, v25);
  }

  while (v34[0] == 2 || (v34[0] & 1) == 0);
  sub_1BBA8BCC4(v13, &qword_1EBC7D298);
  (*(v28 + 8))(v27, v7);
  return (v23 & 1) == 0;
}

uint64_t _s4TextV7StorageVMa()
{
  result = qword_1EBC7B418;
  if (!qword_1EBC7B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BBA8E2B0(uint64_t a1, int a2)
{
  LODWORD(v133) = a2;
  v128 = a1;
  v111 = sub_1BBB83058();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v3 = v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83028();
  v4 = sub_1BBB83118();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  sub_1BBB83128();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C110);
  v134 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v109 - v8;
  sub_1BBB82FE8();
  v123 = v5[7];
  v124 = (v5 + 7);
  v10 = (v123)(v9, 0, 1, v4);
  v135 = v6;
  MEMORY[0x1EEE9AC00](v10);
  v11 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB82FE8();
  v12 = v11;
  v13 = sub_1BBB83108();
  if ((v13 & 1) == 0)
  {
    v130 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v84 = v5[1];
    v84(v11, v4);
    sub_1BBA8BCC4(v9, &qword_1EBC7C110);
    v84(v12, v4);
    (*(v110 + 8))(v3, v111);

    return 0;
  }

  v138 = 0;
  v131 = (v5 + 6);
  v14 = (v5 + 4);
  v127 = (v5 + 2);
  v109[0] = v5;
  v137 = (v5 + 1);
  v130 = MEMORY[0x1E69E7CC0];
  v15 = &qword_1EBC7B000;
  v126 = v3;
  v132 = v11;
  v121 = v9;
  v112 = v4;
  v125 = v11;
  v136 = (v5 + 4);
  while ((v133 & 1) != 0 || v138 < v128)
  {
    sub_1BBB83068();
    if (v15[68] != -1)
    {
      swift_once();
    }

    v19 = sub_1BBB82F18();
    __swift_project_value_buffer(v19, qword_1EBC7B228);
    v20 = sub_1BBB82EF8();
    if ((v20 & 1) == 0)
    {
      if (qword_1EBC7B358 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v19, qword_1EBC7B360);
      v24 = sub_1BBB82EF8();
      if ((v24 & 1) == 0)
      {
        v129 = v109;
        v18 = v135;
        MEMORY[0x1EEE9AC00](v24);
        v50 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
        v51 = MEMORY[0x1EEE9AC00](v9);
        v53 = v109 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
        v54 = v51;
        sub_1BBA8BC5C(v51, v53, &qword_1EBC7C110);
        v55 = (*v131)(v53, 1, v4);
        v14 = v136;
        if (v55 == 1)
        {
          v16 = sub_1BBA8BCC4(v53, &qword_1EBC7C110);
          v15 = &qword_1EBC7B000;
          v9 = v54;
          v11 = v125;
        }

        else
        {
          v119 = *v136;
          v56 = (v119)(v109 - v50, v53, v4);
          MEMORY[0x1EEE9AC00](v56);
          v57 = v109 - v50;
          v11 = v125;
          v120 = v109 - v50;
          if (v138)
          {
            sub_1BBB83038();
          }

          else
          {
            (*v127)(v109 - v50, v109 - v50, v4);
          }

          v15 = &qword_1EBC7B000;
          v58 = sub_1BBB83108();
          v122 = v109;
          if (v58)
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
            v9 = *(v59 - 8);
            MEMORY[0x1EEE9AC00](v59);
            v61 = v109 - v60;
            sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
            if ((sub_1BBB83958() & 1) == 0)
            {
              goto LABEL_58;
            }

            v115 = v9;
            v116 = v109;
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C100);
            v114 = v109;
            v63 = v62 - 8;
            v64 = *(*(v62 - 8) + 64);
            MEMORY[0x1EEE9AC00](v62);
            v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
            v118 = v61;
            v113 = v59;
            v66 = *v127;
            v117 = v67;
            (v66)(v109 - v65);
            v68 = (v66)(v109 + *(v63 + 56) - v65, v11, v4);
            v109[1] = v109;
            MEMORY[0x1EEE9AC00](v68);
            sub_1BBA8BC5C(v109 - v65, v109 - v65, &qword_1EBC7C100);
            v69 = *(v63 + 56);
            v70 = v119;
            v119(v61, v109 - v65, v4);
            v71 = *v137;
            v72 = (*v137)(v109 + v69 - v65, v4);
            MEMORY[0x1EEE9AC00](v72);
            sub_1BBAA6758(v109 - v65, v109 - v65, &qword_1EBC7C100);
            v70(&v118[*(v113 + 9)], v109 + *(v63 + 56) - v65, v4);
            (v71)(v109 - v65, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v130 = sub_1BBABEDD4(0, v130[2] + 1, 1, v130);
            }

            v74 = v130[2];
            v73 = v130[3];
            v4 = v112;
            v14 = v136;
            v11 = v125;
            v15 = &qword_1EBC7B000;
            v75 = v118;
            if (v74 >= v73 >> 1)
            {
              v130 = sub_1BBABEDD4(v73 > 1, v74 + 1, 1, v130);
            }

            v71();
            (v71)(v120, v4);
            v9 = v121;
            sub_1BBA8BCC4(v121, &qword_1EBC7C110);
            v76 = v130;
            v130[2] = v74 + 1;
            sub_1BBAA6758(v75, v76 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v74, &qword_1EBC7B648);
            v18 = v135;
          }

          else
          {
            v77 = *v137;
            (*v137)(v57, v4);
            (v77)(v120, v4);
            v9 = v121;
            sub_1BBA8BCC4(v121, &qword_1EBC7C110);
          }

          v16 = (v123)(v9, 1, 1, v4);
        }

        v17 = __OFADD__(v138++, 1);
        if (v17)
        {
          goto LABEL_56;
        }

        v3 = v126;
        goto LABEL_4;
      }

      MEMORY[0x1EEE9AC00](v24);
      v26 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBA8BC5C(v9, v26, &qword_1EBC7C110);
      v27 = (*v131)(v26, 1, v4);
      v16 = sub_1BBA8BCC4(v26, &qword_1EBC7C110);
      v14 = v136;
      if (v27 != 1)
      {
        v18 = v135;
        goto LABEL_4;
      }

      MEMORY[0x1EEE9AC00](v16);
      v29 = (v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1BBB83038();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
      v9 = *(v30 - 8);
      MEMORY[0x1EEE9AC00](v30);
      v32 = v109 - v31;
      sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
      if ((sub_1BBB83958() & 1) == 0)
      {
        goto LABEL_57;
      }

      v118 = v9;
      v120 = v109;
      v129 = v109;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C100);
      v116 = v109;
      v35 = v33 - 8;
      v34 = *(v33 - 8);
      v117 = v30;
      v36 = *(v34 + 64);
      MEMORY[0x1EEE9AC00](v33);
      v122 = v32;
      v37 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v115 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
      v38 = *v127;
      (*v127)(v37, v11, v4);
      v39 = &v37[*(v35 + 56)];
      v119 = v29;
      v40 = (v38)(v39, v29, v4);
      v113 = v109;
      MEMORY[0x1EEE9AC00](v40);
      sub_1BBA8BC5C(v37, v37, &qword_1EBC7C100);
      v41 = *(v35 + 56);
      v114 = *v14;
      v42 = v122;
      v114(v122, v37, v4);
      v43 = *v137;
      v44 = (*v137)(&v37[v41], v4);
      MEMORY[0x1EEE9AC00](v44);
      v45 = v109 - v115;
      sub_1BBAA6758(v37, v109 - v115, &qword_1EBC7C100);
      v114(&v42[*(v117 + 9)], &v45[*(v35 + 56)], v4);
      v117 = v43;
      (v43)(v45, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_1BBABEDD4(0, v130[2] + 1, 1, v130);
      }

      v47 = v130[2];
      v46 = v130[3];
      v11 = v125;
      v3 = v126;
      v9 = v121;
      v48 = v122;
      v4 = v112;
      v14 = v136;
      v15 = &qword_1EBC7B000;
      if (v47 >= v46 >> 1)
      {
        v130 = sub_1BBABEDD4(v46 > 1, v47 + 1, 1, v130);
      }

      v117(v119, v4);
      v49 = v130;
      v130[2] = v47 + 1;
      v16 = sub_1BBAA6758(v48, v49 + ((v118[80] + 32) & ~v118[80]) + *(v118 + 9) * v47, &qword_1EBC7B648);
      goto LABEL_22;
    }

    MEMORY[0x1EEE9AC00](v20);
    v22 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBA8BC5C(v9, v22, &qword_1EBC7C110);
    v23 = (*v131)(v22, 1, v4);
    v14 = v136;
    if (v23 != 1)
    {
      v129 = v109;
      v16 = sub_1BBA8BCC4(v22, &qword_1EBC7C110);
LABEL_22:
      v18 = v135;
      goto LABEL_4;
    }

    sub_1BBA8BCC4(v9, &qword_1EBC7C110);
    sub_1BBA8BCC4(v22, &qword_1EBC7C110);
    (*v127)(v9, v11, v4);
    v16 = (v123)(v9, 0, 1, v4);
    v17 = __OFADD__(v138++, 1);
    v18 = v135;
    if (v17)
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
      goto LABEL_60;
    }

LABEL_4:
    MEMORY[0x1EEE9AC00](v16);
    sub_1BBB83038();
    (*v137)(v11, v4);
    (*v14)(v11, v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v12 = v132;
    v13 = sub_1BBB83108();
    if ((v13 & 1) == 0)
    {
      if (v138 > 0)
      {
        LODWORD(v138) = 0;
        goto LABEL_45;
      }

LABEL_47:
      v5 = v109[0];
      goto LABEL_48;
    }
  }

  if (v138 < 1)
  {
    goto LABEL_47;
  }

  LODWORD(v138) = 1;
LABEL_45:
  v78 = MEMORY[0x1EEE9AC00](v13);
  v80 = v109 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v82 = v109 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBA8BC5C(v9, v82, &qword_1EBC7C110);
  if ((*v131)(v82, 1, v4) == 1)
  {
    v83 = *v137;
    (*v137)(v11, v4);
    sub_1BBA8BCC4(v9, &qword_1EBC7C110);
    (v83)(v132, v4);
    (*(v110 + 8))(v3, v111);
    sub_1BBA8BCC4(v82, &qword_1EBC7C110);
    return v130;
  }

  v85 = *v14;
  v133 = v109;
  v134 = v85;
  v85(v80, v82, v4);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
  v131 = v109;
  v87 = *(v86 - 8);
  v128 = v86;
  v129 = v87;
  MEMORY[0x1EEE9AC00](v86);
  v135 = v109 - v88;
  sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
  v89 = v132;
  if ((sub_1BBB83958() & 1) == 0)
  {
    goto LABEL_59;
  }

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C100);
  v123 = v109;
  v91 = v90 - 8;
  v92 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v93 = v109 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *v127;
  v124 = v80;
  v94(v93, v80, v4);
  v95 = (v94)(&v93[*(v91 + 56)], v89, v4);
  v127 = v109;
  MEMORY[0x1EEE9AC00](v95);
  sub_1BBA8BC5C(v93, v93, &qword_1EBC7C100);
  v96 = *(v91 + 56);
  v97 = v135;
  v134(v135, v93, v4);
  v9 = *v137;
  v98 = (*v137)(&v93[v96], v4);
  MEMORY[0x1EEE9AC00](v98);
  v99 = (v109 - v122);
  sub_1BBAA6758(v93, v109 - v122, &qword_1EBC7C100);
  v134((v97 + *(v128 + 36)), &v99[*(v91 + 56)], v4);
  (v9)(v99, v4);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_51;
  }

LABEL_60:
  v130 = sub_1BBABEDD4(0, v130[2] + 1, 1, v130);
LABEL_51:
  v100 = v111;
  v102 = v130[2];
  v101 = v130[3];
  v103 = v126;
  v104 = v132;
  v105 = v112;
  if (v102 >= v101 >> 1)
  {
    v130 = sub_1BBABEDD4(v101 > 1, v102 + 1, 1, v130);
  }

  (v9)(v124, v105);
  (v9)(v11, v105);
  sub_1BBA8BCC4(v121, &qword_1EBC7C110);
  (v9)(v104, v105);
  (*(v110 + 8))(v103, v100);
  v107 = v129;
  v106 = v130;
  v130[2] = v102 + 1;
  sub_1BBAA6758(v135, v106 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v107[9] * v102, &qword_1EBC7B648);
  return v130;
}

Swift::Bool __swiftcall AttributedString.trim(maximumLength:trimWhitespace:)(Swift::Int_optional maximumLength, Swift::Bool trimWhitespace)
{
  v3 = v2;
  if (!maximumLength.is_nil && maximumLength.value <= 0)
  {
    v4 = sub_1BBB83058();
    v5 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v4);
    v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBB83028();
    v8 = sub_1BBB83148();
    (*(*(v8 - 8) + 8))(v2, v8);
    v9 = sub_1BBB83048();
    (*(v5 + 8))(v7, v4);
    v10 = v9 > 0;
    sub_1BBB83138();
    return v10;
  }

  if (trimWhitespace)
  {
    LODWORD(v92) = *&maximumLength.is_nil;
    value = maximumLength.value;
    v11 = sub_1BBA8E2B0(maximumLength.value, maximumLength.is_nil);
    if (!v11)
    {
      v76 = sub_1BBB83148();
      (*(*(v76 - 8) + 8))(v2, v76);
      sub_1BBB83138();
      return 0;
    }

    v13 = v11;
    LODWORD(v90) = v12;
    v14 = v11[2];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
    v16 = *(v15 - 8);
    v88 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v77 - v17;
    if (v14)
    {
      v89 = &v77;
      v19 = v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      while (v14 <= v13[2])
      {
        --v14;
        sub_1BBA8BC5C(&v19[*(v16 + 72) * v14], v18, &qword_1EBC7B648);
        sub_1BBAFEA58();
        sub_1BBB83018();
        sub_1BBA8BCC4(v18, &qword_1EBC7B648);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

LABEL_10:

    if (v92)
    {
      return v90;
    }

    v20 = sub_1BBB83058();
    v21 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBB83028();
    v24 = sub_1BBB83048();
    (*(v21 + 8))(v23, v20);
    if (v24 <= value)
    {
      return v90;
    }

    v25 = sub_1BBB83118();
    v92 = &v77;
    v26 = *(v25 - 8);
    v27 = *(v26 + 64);
    v28 = MEMORY[0x1EEE9AC00](v25);
    v29 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v28);
    sub_1BBB82FE8();
    sub_1BBB83148();
    sub_1BBA8BDB4(&unk_1EBC7B388, MEMORY[0x1EEE78060]);
    sub_1BBB83298();
    v89 = v26;
    v86 = *(v26 + 8);
    v87 = (v26 + 8);
    v30 = v86(v29, v25);
    v85 = &v77;
    MEMORY[0x1EEE9AC00](v30);
    value = v29;
    v31 = sub_1BBAFE694(v29, v29);
    v84 = &v77;
    v32 = MEMORY[0x1EEE9AC00](v31);
    v88 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v83 = &v77;
    MEMORY[0x1EEE9AC00](v32);
    sub_1BBB83128();
    sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
    v34 = v25;
    result = sub_1BBB83958();
    if (result)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C100);
      v81 = &v77;
      v37 = v36 - 8;
      v38 = *(*(v36 - 8) + 64);
      MEMORY[0x1EEE9AC00](v36);
      v39 = &v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      v79 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = v89;
      v41 = v89[2];
      v82 = v29;
      v41(v39, v29, v34);
      v42 = v40[4];
      v43 = v42(&v39[*(v37 + 56)], v29, v34);
      v89 = v42;
      v80 = &v77;
      MEMORY[0x1EEE9AC00](v43);
      sub_1BBA8BC5C(v39, v39, &qword_1EBC7C100);
      v78 = *(v37 + 56);
      v44 = v88;
      v42(v88, v39, v34);
      v45 = v86;
      v46 = v86(&v39[v78], v34);
      v80 = &v77;
      MEMORY[0x1EEE9AC00](v46);
      v47 = (&v77 - v79);
      sub_1BBAA6758(v39, &v77 - v79, &qword_1EBC7C100);
      (v89)(v44 + *(v15 + 36), &v47[*(v37 + 56)], v34);
      v45(v47, v34);
      sub_1BBAFEA58();
      sub_1BBB83018();
      sub_1BBA8BCC4(v44, &qword_1EBC7B648);
      v45(v82, v34);
      v45(value, v34);
      return v90;
    }
  }

  else
  {
    if (maximumLength.is_nil)
    {
      return 0;
    }

    v48 = maximumLength.value;
    v49 = sub_1BBB83058();
    v50 = *(v49 - 8);
    MEMORY[0x1EEE9AC00](v49);
    v52 = &v77 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BBB83028();
    v53 = sub_1BBB83048();
    (*(v50 + 8))(v52, v49);
    if (v53 <= v48)
    {
      return 0;
    }

    v54 = sub_1BBB83118();
    v90 = &v77;
    v55 = *(v54 - 8);
    v56 = *(v55 + 64);
    v57 = MEMORY[0x1EEE9AC00](v54);
    v58 = &v77 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v57);
    sub_1BBB82FE8();
    v59 = sub_1BBB83148();
    sub_1BBA8BDB4(&unk_1EBC7B388, MEMORY[0x1EEE78060]);
    v86 = v59;
    sub_1BBB83298();
    v87 = *(v55 + 8);
    v88 = (v55 + 8);
    v60 = v87(v58, v54);
    v85 = &v77;
    MEMORY[0x1EEE9AC00](v60);
    v89 = v58;
    sub_1BBAFE694(v58, v58);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B648);
    v84 = &v77;
    v82 = v61;
    v62 = MEMORY[0x1EEE9AC00](v61);
    value = &v77 - v63;
    v81 = &v77;
    MEMORY[0x1EEE9AC00](v62);
    sub_1BBB82FE8();
    sub_1BBA8BDB4(&qword_1EBC7C0F8, MEMORY[0x1EEE78020]);
    v92 = v58;
    v83 = v54;
    result = sub_1BBB83958();
    if (result)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C100);
      v80 = &v77;
      v65 = v64 - 8;
      v66 = *(*(v64 - 8) + 64);
      MEMORY[0x1EEE9AC00](v64);
      v67 = &v77 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
      v68 = *(v55 + 32);
      v69 = v83;
      v68(v67, &v77 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v83);
      v70 = (*(v55 + 16))(&v67[*(v65 + 56)], v92, v69);
      v79 = &v77;
      MEMORY[0x1EEE9AC00](v70);
      sub_1BBA8BC5C(v67, v67, &qword_1EBC7C100);
      v71 = *(v65 + 56);
      v68(value, v67, v69);
      v72 = v87;
      v73 = v87(&v67[v71], v69);
      v79 = &v77;
      MEMORY[0x1EEE9AC00](v73);
      sub_1BBAA6758(v67, v67, &qword_1EBC7C100);
      v74 = value;
      v68(&value[*(v82 + 9)], &v67[*(v65 + 56)], v69);
      v72(v67, v69);
      v75 = sub_1BBB83238();
      MEMORY[0x1EEE9AC00](v75 - 8);
      sub_1BBAFEA58();
      sub_1BBB83178();
      (*(*(v86 - 1) + 8))(v3);
      sub_1BBA8BCC4(v74, &qword_1EBC7B648);
      sub_1BBB83188();
      v72(v92, v69);
      v72(v89, v69);
      return 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BBA90550()
{
  result = qword_1EBC7B168;
  if (!qword_1EBC7B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B168);
  }

  return result;
}

uint64_t IntelligenceElement.Text.LineLimit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E8);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2F0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2F8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D300);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA90928();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBA9097C();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBB58964();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBB589B8();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BBA90928()
{
  result = qword_1EBC7B288;
  if (!qword_1EBC7B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B288);
  }

  return result;
}

unint64_t sub_1BBA9097C()
{
  result = qword_1EBC7B2A0;
  if (!qword_1EBC7B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B2A0);
  }

  return result;
}

uint64_t sub_1BBA909D0()
{
  v1 = 0x694C656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0x656C7069746C756DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_1BBA90A3C()
{
  result = qword_1EBC7B440;
  if (!qword_1EBC7B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B440);
  }

  return result;
}

unint64_t sub_1BBA90AD0()
{
  result = qword_1EBC7B450;
  if (!qword_1EBC7B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B450);
  }

  return result;
}

unint64_t sub_1BBA90B24()
{
  result = qword_1EBC7B3C8;
  if (!qword_1EBC7B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3C8);
  }

  return result;
}

unint64_t sub_1BBA90B78()
{
  result = qword_1EBC7B240;
  if (!qword_1EBC7B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B240);
  }

  return result;
}

uint64_t IntelligenceElement.Image.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v17);
  v16 = &v15 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B800);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA90EE0();
  sub_1BBB84478();
  v10 = v9 + *(*v9 + 88);
  swift_beginAccess();
  v18 = 0;

  sub_1BBB84218();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v11 = v6;
    v12 = v16;

    v18 = 1;

    sub_1BBB84218();

    v14 = v10 + *(_s5ImageV7StorageVMa() + 24);
    sub_1BBA8BC5C(v14, v12, &qword_1EBC7B7E8);
    v18 = 2;
    sub_1BBA9107C(&qword_1ED6BDB70);
    sub_1BBB84288();
    sub_1BBA8BCC4(v12, &qword_1EBC7B7E8);
    return (*(v11 + 8))(v8, v5);
  }
}

unint64_t sub_1BBA90EE0()
{
  result = qword_1EBC7B408;
  if (!qword_1EBC7B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B408);
  }

  return result;
}

uint64_t sub_1BBA90F34()
{
  v1 = 0x6373654474786574;
  if (*v0 != 1)
  {
    v1 = 0x6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t _s5ImageV7StorageVMa()
{
  result = qword_1EBC7B3E8;
  if (!qword_1EBC7B3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBA90FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BBA9107C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7E8);
    sub_1BBAC252C(&qword_1ED6BDDB0, &qword_1ED6BDDC0);
    sub_1BBAC252C(&qword_1ED6BDDB8, &qword_1ED6BE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBA91164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7E8);
    sub_1BBADA9F8(&qword_1ED6BDDB0, &qword_1ED6BDDC0);
    sub_1BBADA9F8(&qword_1ED6BDDB8, &qword_1ED6BE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IntelligenceElement.LoadableValue<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1BBB84468();
  IntelligenceElement.LoadableValue.value.getter(a2, v7);
  __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  sub_1BBB84328();
  (*(v4 + 8))(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t IntelligenceElement.LoadableValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = _s13LoadableValueV22InternalRepresentationOMa();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  (*(v9 + 16))(&v11 - v7, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v8, v5);
  }

  sub_1BBB75368(*v8, a2);
}

unint64_t sub_1BBA91534()
{
  result = qword_1EBC7B0D0;
  if (!qword_1EBC7B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0D0);
  }

  return result;
}

unint64_t sub_1BBA91588()
{
  result = qword_1EBC7AFC8;
  if (!qword_1EBC7AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AFC8);
  }

  return result;
}

uint64_t IntelligenceElement.CollectionItem.encode(to:)(void *a1)
{
  v20 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C810);
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA0970();
  sub_1BBB84478();
  v9 = sub_1BBB83548();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v8 + *(*v8 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v13, v4);
  v14 = v4;
  v15 = v5;
  (*(v10 + 32))(v12, v14, v9);
  v23 = 0;
  sub_1BBAA0A74(&qword_1EBC7B050);
  v16 = v22;
  sub_1BBB84288();
  if (v16)
  {
    (*(v10 + 8))(v12, v9);
    return (*(v21 + 8))(v7, v5);
  }

  else
  {
    v18 = v21;
    (*(v10 + 8))(v12, v9);
    v19 = v20;
    v23 = 1;
    sub_1BBB84278();
    if (*(v13 + *(v19 + 24)) == 1)
    {
      v23 = 2;
      sub_1BBB84258();
    }

    return (*(v18 + 8))(v7, v15);
  }
}

unint64_t sub_1BBA91930()
{
  result = qword_1ED6BECD8;
  if (!qword_1ED6BECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BECD8);
  }

  return result;
}

unint64_t sub_1BBA91984()
{
  result = qword_1ED6BECF0[0];
  if (!qword_1ED6BECF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BECF0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntelligenceCollectionRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceCollectionRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBA91B38(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = 0x656E696C64616564;
      break;
    case 3:
    case 9:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 20:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x476564756C636E69;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6974704F74786574;
      break;
    case 13:
      result = 0x6974634172657375;
      break;
    case 14:
      result = 0x746E656D75636F64;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0x6E6F436567616D69;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
    case 22:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0xD000000000000023;
      break;
    case 23:
      result = 0x456564756C636E69;
      break;
    case 24:
      result = 0x436564756C636E69;
      break;
    case 25:
      result = 0x4F646E616D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceAppIntentsRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1BBA91F14()
{
  result = qword_1ED6BEDC0[0];
  if (!qword_1ED6BEDC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BEDC0);
  }

  return result;
}

uint64_t sub_1BBA91F68()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696C64616564;
  }
}

unint64_t sub_1BBA91FC8()
{
  result = qword_1ED6BE5B0;
  if (!qword_1ED6BE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5B0);
  }

  return result;
}

uint64_t IntelligenceCollectionRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C218);
  v82 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  if (qword_1ED6BE520 != -1)
  {
    swift_once();
  }

  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6BE4F0 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED6BE4F8;
  swift_beginAccess();
  v80 = byte_1EBC7C528;
  v9 = qword_1ED6BE508;
  v140 = v8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED6BE510;
  v11 = qword_1ED6BDCD0;

  if (v11 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA92CDC();
  sub_1BBB84458();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v83) = 0;
    sub_1BBA95864();
    sub_1BBB841B8();
    v12 = v91;
    v13 = HIDWORD(v91);
    LOBYTE(v91) = 1;
    v79 = sub_1BBB841E8();
    LOBYTE(v91) = 2;
    v78 = sub_1BBB841E8();
    LOBYTE(v91) = 3;
    v77 = sub_1BBB84148();
    LOBYTE(v91) = 4;
    v14 = sub_1BBB84148();
    v75 = v14 == 2;
    v76 = v14;
    LOBYTE(v91) = 5;
    v15 = sub_1BBB84148();
    v73 = v15 == 2;
    v74 = v15;
    LOBYTE(v91) = 6;
    v16 = sub_1BBB84148();
    v71 = v16 == 2;
    v72 = v16;
    LOBYTE(v91) = 7;
    v70 = sub_1BBB84168();
    v139 = v17 & 1;
    LOBYTE(v91) = 8;
    v18 = sub_1BBB84148();
    v68 = v18 == 2;
    v69 = v18;
    LOBYTE(v91) = 9;
    v67 = sub_1BBB84148();
    LOBYTE(v91) = 10;
    v66 = sub_1BBB84148();
    v65 = v66 == 2;
    LOBYTE(v83) = 11;
    sub_1BBA92E68();
    sub_1BBB84178();
    v64 = v91;
    v63 = v92;
    v131 = 12;
    sub_1BBA964C4();
    sub_1BBB84178();
    v62 = v133;
    if ((v133 & 0xFF00) == 0x200)
    {
      v19 = &xmmword_1ED6BDCF0;
      v62 = *(&xmmword_1ED6BDCF0 + 1);
      v59 = xmmword_1ED6BDD00;
      v60 = qword_1ED6BDD10;
      v61 = word_1ED6BDD18;
    }

    else
    {
      v61 = v136;
      v60 = v135;
      v19 = &v132;
      v59 = v134;
    }

    v58 = *v19;
    LOBYTE(v83) = 13;
    sub_1BBA96470();
    sub_1BBB84178();
    v20 = v91;
    if (v91 == 3)
    {
      v20 = 0;
    }

    v56 = v20;
    LOBYTE(v83) = 14;
    v57 = sub_1BBA96DEC();
    sub_1BBB84178();
    v21 = v91;
    if (v91 == 4)
    {
      v21 = 0;
    }

    v55 = v21;
    v22 = sub_1BBA97228(15);
    if (v22)
    {

      v140 = v22;
    }

    LOBYTE(v83) = 16;
    sub_1BBB84178();
    v23 = v91;
    if (v91 == 4)
    {
      v23 = 0;
    }

    v54 = v23;
    LOBYTE(v83) = 17;
    sub_1BBB84178();
    v24 = v91;
    if (v91 == 4)
    {
      v24 = 0;
    }

    v53 = v24;
    LOBYTE(v83) = 18;
    sub_1BBB84178();
    v25 = v91;
    if (v91 == 4)
    {
      v25 = 0;
    }

    v52 = v25;
    LOBYTE(v91) = 19;
    LODWORD(v57) = sub_1BBB84148();
    v50 = v57 == 2;
    LOBYTE(v91) = 20;
    v51 = sub_1BBB84148();
    v49 = v51 == 2;
    LOBYTE(v83) = 21;
    sub_1BBA97338();
    sub_1BBB84178();
    v26 = v91;
    if (v91 == 3)
    {
      v26 = 0;
    }

    v48 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C6C8);
    LOBYTE(v83) = 22;
    sub_1BBA9738C(&qword_1ED6BE460, sub_1BBB0780C);
    sub_1BBB84178();
    v27 = v91;
    if (v91)
    {

      v10 = v27;
    }

    LOBYTE(v91) = 23;
    v47 = sub_1BBB84148();
    v45 = v47 == 2;
    LOBYTE(v91) = 24;
    v46 = sub_1BBB84148();
    HIDWORD(v44) = v46 == 2;
    LOBYTE(v91) = 25;
    sub_1BBA97404();
    sub_1BBB84178();
    v29 = v68 | v69;
    v30 = v65 | v66;
    v31 = v50 | v57;
    v69 = (v75 | v76) & 1;
    v68 = (v73 | v74) & 1;
    v66 = (v71 | v72) & 1;
    LODWORD(v57) = v29 & 1;
    v71 = v77 & 1;
    v72 = v30 & 1;
    v76 = (v49 | v51) & 1;
    v77 = v31 & 1;
    v75 = (v45 | v47) & 1;
    v73 = v67 & 1;
    v74 = (BYTE4(v44) | v46) & 1;
    v32 = v129 | (v130 << 16);
    if (v129 == 2)
    {
      LOBYTE(v32) = word_1ED6BDCD8;
      v67 = HIBYTE(word_1ED6BDCD8);
      v33 = byte_1ED6BDCDA;
    }

    else
    {
      v67 = (v32 >> 8) & 1;
      v33 = HIWORD(v32) & 1;
    }

    v65 = v33;
    (*(v82 + 8))(v7, v5);
    v34 = v32 & 1;
    LODWORD(v82) = v32 & 1;
    *&v83 = __PAIR64__(v13, v12);
    *(&v83 + 1) = v79;
    *&v84 = v78;
    BYTE8(v84) = v71;
    BYTE9(v84) = v69;
    BYTE10(v84) = v68;
    BYTE11(v84) = v66;
    *&v85 = v70;
    *(&v86 + 10) = v137;
    HIWORD(v86) = v138;
    v51 = v139;
    BYTE8(v85) = v139;
    v35 = v57;
    BYTE9(v85) = v57;
    BYTE10(v85) = v73;
    BYTE11(v85) = v72;
    v36 = v64;
    *&v86 = v64;
    v37 = v63;
    WORD4(v86) = v63;
    *&v87 = v58;
    *(&v87 + 1) = v62;
    v88 = v59;
    *&v89 = v60;
    WORD4(v89) = v61;
    BYTE10(v89) = v56;
    BYTE11(v89) = v55;
    *&v90[0] = v140;
    BYTE8(v90[0]) = v54;
    BYTE9(v90[0]) = v53;
    BYTE10(v90[0]) = v52;
    BYTE11(v90[0]) = v77;
    BYTE12(v90[0]) = v76;
    BYTE13(v90[0]) = v80;
    BYTE14(v90[0]) = v48;
    *&v90[1] = v10;
    BYTE8(v90[1]) = v75;
    BYTE9(v90[1]) = v74;
    WORD5(v90[1]) = 0;
    BYTE12(v90[1]) = v34;
    BYTE13(v90[1]) = v67;
    BYTE14(v90[1]) = v65;
    v38 = v86;
    v39 = v81;
    v81[2] = v85;
    v39[3] = v38;
    v40 = v84;
    *v39 = v83;
    v39[1] = v40;
    v41 = v87;
    v42 = v88;
    *(v39 + 127) = *(v90 + 15);
    v43 = v90[0];
    v39[6] = v89;
    v39[7] = v43;
    v39[4] = v41;
    v39[5] = v42;
    sub_1BBA94F7C(&v83, &v91);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v91 = __PAIR64__(v13, v12);
    v92 = v79;
    v93 = v78;
    v94 = v71;
    v95 = v69;
    v96 = v68;
    v97 = v66;
    v98 = v70;
    v99 = v51;
    v100 = v35;
    v101 = v73;
    v102 = v72;
    v103 = v36;
    v104 = v37;
    v105 = v137;
    v106 = v138;
    v107 = v58;
    v108 = v62;
    v109 = v59;
    v110 = v60;
    v111 = v61;
    v112 = v56;
    v113 = v55;
    v114 = v140;
    v115 = v54;
    v116 = v53;
    v117 = v52;
    v118 = v77;
    v119 = v76;
    v120 = v80;
    v121 = v48;
    v122 = v10;
    v123 = v75;
    v124 = v74;
    v125 = 0;
    v126 = v82;
    v127 = v67;
    v128 = v65;
    return sub_1BBA96D48(&v91);
  }
}

unint64_t sub_1BBA92CDC()
{
  result = qword_1ED6BE550;
  if (!qword_1ED6BE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE550);
  }

  return result;
}

uint64_t sub_1BBA92D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 142) = 0;
    *(result + 140) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 143) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 143) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBA92D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 143))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1BBA92DFC()
{
  result = qword_1ED6BE4D8;
  if (!qword_1ED6BE4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4D8);
  }

  return result;
}

unint64_t sub_1BBA92E68()
{
  result = qword_1ED6BE5B8;
  if (!qword_1ED6BE5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5B8);
  }

  return result;
}

uint64_t IntelligenceAppIntentsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA91F14();
  sub_1BBB84458();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1BBB841E8();
    v15 = 1;
    sub_1BBA930C8();
    sub_1BBB84178();
    v10 = v16;
    v14 = 2;
    v12 = sub_1BBB84148();
    if (v10 == 3)
    {
      LOBYTE(v10) = 1;
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 9) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BBA930C8()
{
  result = qword_1ED6BE5C0;
  if (!qword_1ED6BE5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5C0);
  }

  return result;
}

uint64_t IntelligenceCollectionRequest.UserActivityCollectionOption.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C598);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5A0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5A8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBA91FC8();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for IntelligenceCollectionRequest.UserActivityCollectionOption;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_1BBA94FD8();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBB22EFC();
          v26 = v17;
          sub_1BBB84118();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBB22F50();
        sub_1BBB84118();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1BBA9368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBA96354(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1BBA93700()
{
  result = qword_1EBC7AE00;
  if (!qword_1EBC7AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE00);
  }

  return result;
}

uint64_t XPCAgentMessage.RequestFragments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = v1[7];
  v28 = v1[6];
  v29[0] = v7;
  *(v29 + 15) = *(v1 + 127);
  v8 = v1[3];
  v24 = v1[2];
  v25 = v8;
  v9 = v1[5];
  v26 = v1[4];
  v27 = v9;
  v10 = v1[1];
  v22 = *v1;
  v23 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA94F7C(&v22, &v14);
  sub_1BBA91984();
  sub_1BBB84478();
  v20 = v28;
  v21[0] = v29[0];
  *(v21 + 15) = *(v29 + 15);
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v14 = v22;
  v15 = v23;
  sub_1BBA93954();
  sub_1BBB84288();
  v12[6] = v20;
  v13[0] = v21[0];
  *(v13 + 15) = *(v21 + 15);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  sub_1BBA96D48(v12);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBA93954()
{
  result = qword_1ED6BDCC8;
  if (!qword_1ED6BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDCC8);
  }

  return result;
}

uint64_t IntelligenceCollectionRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C220);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - v6;
  v8 = *(v2 + 16);
  v53 = *(v2 + 8);
  v52 = v8;
  v51 = *(v2 + 24);
  v50 = *(v2 + 25);
  v46 = *(v2 + 26);
  v47 = *(v2 + 27);
  v48 = *(v2 + 32);
  v49 = *(v2 + 40);
  v44 = *(v2 + 41);
  v45 = *(v2 + 42);
  v41 = *(v2 + 43);
  v43 = *(v2 + 48);
  v42 = *(v2 + 56);
  v9 = *(v2 + 80);
  v61 = *(v2 + 64);
  *v62 = v9;
  *&v62[10] = *(v2 + 90);
  v40 = *(v2 + 106);
  v39 = *(v2 + 107);
  v38 = *(v2 + 112);
  v37 = *(v2 + 120);
  v36 = *(v2 + 121);
  v35 = *(v2 + 122);
  v34 = *(v2 + 123);
  v32 = *(v2 + 124);
  v33 = *(v2 + 126);
  v31 = *(v2 + 128);
  v30 = *(v2 + 136);
  v28 = *(v2 + 137);
  v29 = *(v2 + 140);
  v10 = *(v2 + 141);
  v11 = *(v2 + 142);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA92CDC();
  v12 = v4;
  sub_1BBB84478();
  *&v56 = *v2;
  LOBYTE(v54) = 0;
  sub_1BBA944F4();
  v13 = v63;
  sub_1BBB84288();
  if (v13)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = v51;
  v27 = v11;
  LODWORD(v63) = v10;
  v16 = v5;
  LOBYTE(v56) = 1;
  sub_1BBB842B8();
  LOBYTE(v56) = 2;
  sub_1BBB842B8();
  if (v15)
  {
    LOBYTE(v56) = 3;
    sub_1BBB84258();
    v17 = v50;
    v18 = v7;
  }

  else
  {
    v18 = v7;
    v17 = v50;
  }

  if ((v17 & 1) == 0)
  {
    LOBYTE(v56) = 4;
    sub_1BBB84258();
  }

  v19 = v48;
  v20 = v49;
  v21 = v47;
  if ((v46 & 1) == 0)
  {
    LOBYTE(v56) = 5;
    sub_1BBB84258();
    v19 = v48;
    v20 = v49;
    v21 = v47;
  }

  if ((v21 & 1) == 0)
  {
    LOBYTE(v56) = 6;
    sub_1BBB84258();
    v19 = v48;
    v20 = v49;
  }

  *&v56 = v19;
  BYTE8(v56) = v20;
  LOBYTE(v54) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C6A8);
  sub_1BBA945E4();
  sub_1BBB84288();
  if ((v44 & 1) == 0)
  {
    LOBYTE(v56) = 8;
    sub_1BBB84258();
  }

  if (v45)
  {
    LOBYTE(v56) = 9;
    sub_1BBB84258();
  }

  v22 = v43;
  v23 = v42;
  if ((v41 & 1) == 0)
  {
    LOBYTE(v56) = 10;
    sub_1BBB84258();
    v22 = v43;
    v23 = v42;
  }

  v59 = v22;
  v60 = v23;
  v58 = 11;
  sub_1BBA94660();
  sub_1BBB84238();
  v24 = *(v2 + 80);
  v56 = *(v2 + 64);
  *v57 = v24;
  *&v57[10] = *(v2 + 90);
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v54 = xmmword_1ED6BDCF0;
  v55[0] = xmmword_1ED6BDD00;
  *(v55 + 10) = *(&xmmword_1ED6BDD00 + 10);
  if ((_s21UIIntelligenceSupport29IntelligenceCollectionRequestV11TextOptionsV2eeoiySbAE_AEtFZ_0(&v56, &v54) & 1) == 0)
  {
    v56 = v61;
    *v57 = *v62;
    *&v57[10] = *&v62[10];
    LOBYTE(v54) = 12;
    sub_1BBB232EC();
    sub_1BBB84288();
  }

  if (v40)
  {
    LOBYTE(v56) = v40;
    LOBYTE(v54) = 13;
    sub_1BBA94970();
    sub_1BBB84288();
  }

  if (v39)
  {
    LOBYTE(v56) = v39;
    LOBYTE(v54) = 14;
    sub_1BBB23340();
    sub_1BBB84288();
  }

  v25 = v38;
  if (qword_1ED6BE4F0 != -1)
  {
    swift_once();
  }

  if ((sub_1BBA94D48(v25, qword_1ED6BE4F8) & 1) == 0)
  {
    sub_1BBB061E4(v25, 15);
  }

  if (v37)
  {
    LOBYTE(v56) = v37;
    LOBYTE(v54) = 16;
    sub_1BBB23340();
    sub_1BBB84288();
  }

  if (v36)
  {
    LOBYTE(v56) = v36;
    LOBYTE(v54) = 17;
    sub_1BBB23340();
    sub_1BBB84288();
  }

  if (v35)
  {
    LOBYTE(v56) = v35;
    LOBYTE(v54) = 18;
    sub_1BBB23340();
    sub_1BBB84288();
  }

  if ((v34 & 1) == 0)
  {
    LOBYTE(v56) = 19;
    sub_1BBB84258();
  }

  if ((v32 & 1) == 0)
  {
    LOBYTE(v56) = 20;
    sub_1BBB84258();
  }

  if (v33)
  {
    LOBYTE(v56) = v33;
    LOBYTE(v54) = 21;
    sub_1BBB23394();
    sub_1BBB84288();
  }

  if (qword_1ED6BE508 != -1)
  {
    swift_once();
  }

  if ((sub_1BBA95080(v31, qword_1ED6BE510) & 1) == 0)
  {
    *&v56 = v31;
    LOBYTE(v54) = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C6C8);
    sub_1BBA9738C(&qword_1EBC7AB88, sub_1BBB076B4);
    sub_1BBB84288();
  }

  if ((v30 & 1) == 0)
  {
    LOBYTE(v56) = 23;
    sub_1BBB84258();
  }

  if ((v28 & 1) == 0)
  {
    LOBYTE(v56) = 24;
    sub_1BBB84258();
  }

  if (qword_1ED6BDCD0 != -1)
  {
    swift_once();
  }

  if (v29 == word_1ED6BDCD8 && ((v63 ^ HIBYTE(word_1ED6BDCD8)) & 1) == 0 && ((v27 ^ byte_1ED6BDCDA) & 1) == 0)
  {
    return (*(v16 + 8))(v18, v12);
  }

  LOBYTE(v56) = v29;
  BYTE1(v56) = v63;
  BYTE2(v56) = v27;
  LOBYTE(v54) = 25;
  sub_1BBB233E8();
  sub_1BBB84288();
  return (*(v16 + 8))(v18, v12);
}

unint64_t sub_1BBA944F4()
{
  result = qword_1ED6BE4D0;
  if (!qword_1ED6BE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4D0);
  }

  return result;
}

uint64_t sub_1BBA94548(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB84468();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1BBB84338();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1BBA945E4()
{
  result = qword_1EBC7B3B0;
  if (!qword_1EBC7B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3B0);
  }

  return result;
}

unint64_t sub_1BBA94660()
{
  result = qword_1ED6BDD28;
  if (!qword_1ED6BDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD28);
  }

  return result;
}

uint64_t IntelligenceAppIntentsRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v12 = *(v1 + 8);
  v11 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA91F14();
  sub_1BBB84478();
  v16 = 0;
  sub_1BBB842B8();
  if (!v2)
  {
    v9 = v11;
    if (v12 != 1)
    {
      v15 = v12;
      v14 = 1;
      sub_1BBB5DCF4();
      sub_1BBB84288();
    }

    if (v9)
    {
      v13 = 2;
      sub_1BBB84258();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s21UIIntelligenceSupport29IntelligenceCollectionRequestV11TextOptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  v10 = *(a2 + 41);
  if (*(a1 + 8))
  {
    result = 0;
    if (!*(a2 + 8))
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (*a1 == *a2)
    {
      v12 = *(a2 + 8);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }
  }

  if ((v3 ^ *(a2 + 9)))
  {
    return result;
  }

  result = 0;
  if (v5)
  {
    if (!*(a2 + 24))
    {
      return result;
    }
  }

  else
  {
    if (v4 == *(a2 + 16))
    {
      v13 = *(a2 + 24);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return result;
    }
  }

  if (((v6 ^ *(a2 + 25)) & 1) == 0)
  {
    if (v8)
    {
      if (*(a2 + 40) && v9 == v10)
      {
        return 1;
      }
    }

    else
    {
      if (v7 == *(a2 + 32))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0 && ((v9 ^ v10) & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1BBA94970()
{
  result = qword_1ED6BDD20;
  if (!qword_1ED6BDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD20);
  }

  return result;
}

uint64_t IntelligenceCollectionRequest.UserActivityCollectionOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C570);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C578);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C580);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C588);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA91FC8();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBA94FD8();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBB22EFC();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBB22F50();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1BBA94D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBB83658();
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
    sub_1BBB07708(&qword_1EBC7B9E8, MEMORY[0x1E69E8450]);
    v21 = sub_1BBB83968();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1BBA94FD8()
{
  result = qword_1ED6BE578;
  if (!qword_1ED6BE578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE578);
  }

  return result;
}

uint64_t sub_1BBA9502C()
{
  v1 = 0x4F746E6572727563;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1BBA95080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBB83658();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v60 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v12 = 0;
  v75 = a1;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v89 = a2 + 56;
  v18 = v5 + 16;
  v81 = (v5 + 8);
  if (v16)
  {
LABEL_7:
    v78 = v18;
    v79 = result;
    v66 = v17;
    v67 = v13;
    v19 = __clz(__rbit64(v16));
    v65 = (v16 - 1) & v16;
LABEL_13:
    v22 = (*(v75 + 48) + 112 * (v19 | (v12 << 6)));
    v24 = v22[1];
    v23 = v22[2];
    v99 = *v22;
    v100 = v24;
    v101 = v23;
    v26 = v22[4];
    v25 = v22[5];
    v27 = v22[3];
    *&v104[9] = *(v22 + 89);
    v103 = v26;
    *v104 = v25;
    v102 = v27;
    v96 = v22[3];
    v97 = v22[4];
    v98[0] = v22[5];
    *(v98 + 9) = *(v22 + 89);
    v93 = *v22;
    v94 = v22[1];
    v95 = v22[2];
    sub_1BBB843D8();
    sub_1BBACB4D0(&v99, v92);
    v86 = a2;
    IntelligenceImage.Representation.hash(into:)();
    v28 = sub_1BBB84438();
    a2 = v86;
    v29 = -1 << *(v86 + 32);
    v30 = v28 & ~v29;
    if ((*(v89 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v80 = v5;
      v64 = v12;
      v76 = v8;
      v77 = v11;
      v31 = ~v29;
      v68 = v104[24];
      v32 = *&v104[16];
      v33 = *(&v99 + 1);
      v91 = v100;
      v34 = BYTE8(v100);
      v88 = v101;
      v90 = BYTE8(v101);
      v87 = BYTE8(v102);
      v83 = BYTE8(v103);
      v35 = v99;
      v72 = *v104;
      v73 = v103;
      v84 = v102;
      v85 = *&v104[8];
      v36 = v89;
      do
      {
        v37 = (*(a2 + 48) + 112 * v30);
        v39 = v37[1];
        v38 = v37[2];
        v93 = *v37;
        v94 = v39;
        v95 = v38;
        v41 = v37[4];
        v40 = v37[5];
        v42 = v37[3];
        *(v98 + 9) = *(v37 + 89);
        v97 = v41;
        v98[0] = v40;
        v96 = v42;
        if (*(&v93 + 1))
        {
          if (!v33)
          {
            goto LABEL_16;
          }

          if (v93 != __PAIR128__(v33, v35))
          {
            v43 = v34;
            v44 = sub_1BBB842F8();
            v34 = v43;
            if ((v44 & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        else if (v33)
        {
          goto LABEL_16;
        }

        if (BYTE8(v94))
        {
          if (!v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v94 == v91)
          {
            v45 = v34;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            goto LABEL_16;
          }
        }

        if (BYTE8(v95))
        {
          if (!v90)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v46 = v90;
          if (v95 != v88)
          {
            v46 = 1;
          }

          if (v46)
          {
            goto LABEL_16;
          }
        }

        if (BYTE8(v96))
        {
          if (!v87)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v47 = v87;
          if (v96 != v84)
          {
            v47 = 1;
          }

          if (v47)
          {
            goto LABEL_16;
          }
        }

        if (BYTE8(v97))
        {
          if (!v83)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v48 = v83;
          if (v97 != v73)
          {
            v48 = 1;
          }

          if (v48)
          {
            goto LABEL_16;
          }
        }

        if (*&v98[0] == v72)
        {
          v74 = *(&v98[0] + 1);
          v49 = *(*(&v98[0] + 1) + 16);
          if (v49 == *(v85 + 16))
          {
            if (v49 && v74 != v85)
            {
              v61 = v35;
              v62 = v34;
              v63 = v31;
              v50 = v80;
              v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
              v71 = v74 + v51;
              v70 = v85 + v51;
              result = sub_1BBACB4D0(&v93, v92);
              v52 = 0;
              v69 = v49;
              while (v52 < *(v74 + 16))
              {
                v53 = *(v50 + 72) * v52;
                v54 = *(v50 + 16);
                v55 = v77;
                v56 = v79;
                result = (v54)(v77, v71 + v53, v79);
                if (v52 >= *(v85 + 16))
                {
                  goto LABEL_67;
                }

                v57 = v76;
                v54();
                sub_1BBB24C9C(&qword_1EBC7B9E8);
                v58 = v57;
                v82 = sub_1BBB83968();
                v59 = *v81;
                (*v81)(v58, v56);
                result = v59(v55, v56);
                if ((v82 & 1) == 0)
                {
                  sub_1BBAC7878(&v93);
                  a2 = v86;
                  v36 = v89;
                  v31 = v63;
                  v34 = v62;
                  v35 = v61;
                  goto LABEL_16;
                }

                ++v52;
                v50 = v80;
                a2 = v86;
                v36 = v89;
                if (v69 == v52)
                {
                  sub_1BBAC7878(&v93);
                  v31 = v63;
                  v34 = v62;
                  v35 = v61;
                  goto LABEL_56;
                }
              }

              goto LABEL_66;
            }

LABEL_56:
            if (*&v98[1] == v32 && ((v68 ^ BYTE8(v98[1])) & 1) == 0)
            {
              sub_1BBAC7878(&v99);
              v18 = v78;
              result = v79;
              v8 = v76;
              v11 = v77;
              v12 = v64;
              v16 = v65;
              v17 = v66;
              v13 = v67;
              v5 = v80;
              if (v65)
              {
                goto LABEL_7;
              }

              goto LABEL_8;
            }
          }
        }

LABEL_16:
        v30 = (v30 + 1) & v31;
      }

      while (((*(v36 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0);
    }

    sub_1BBAC7878(&v99);
    return 0;
  }

LABEL_8:
  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return 1;
    }

    v21 = *(v13 + 8 * v12);
    ++v20;
    if (v21)
    {
      v78 = v18;
      v79 = result;
      v66 = v17;
      v67 = v13;
      v19 = __clz(__rbit64(v21));
      v65 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1BBA956D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      *a1 = v3[v6 + 4];
      v3[2] = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1BBB3D58C(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

_WORD *storeEnumTagSinglePayload for IntelligenceImageProcessor(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceImageProcessor(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1BBA95864()
{
  result = qword_1ED6BE4C0;
  if (!qword_1ED6BE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4C0);
  }

  return result;
}

uint64_t _s4AxisVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t _s4AxisVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t RequestID.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB84448();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1BBB84318();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = __ROR8__(v5, 32);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntelligenceAppIntentsRequest.DisplayRepresentationOption.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3B8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3C0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3C8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D3D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBA95F6C();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for IntelligenceAppIntentsRequest.DisplayRepresentationOption;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_1BBB5DCA0();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBB5DC4C();
          v26 = v17;
          sub_1BBB84118();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBA96104();
        sub_1BBB84118();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1BBA95F6C()
{
  result = qword_1ED6BE610;
  if (!qword_1ED6BE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE610);
  }

  return result;
}

uint64_t sub_1BBA95FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBA95FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBA95FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646564756C637865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F6C617574786574 && a2 == 0xEB00000000796C6ELL || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1BBA96104()
{
  result = qword_1ED6BE5E8;
  if (!qword_1ED6BE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5E8);
  }

  return result;
}

unint64_t sub_1BBA96158()
{
  result = qword_1ED6BE3B0[0];
  if (!qword_1ED6BE3B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED6BE3B0);
  }

  return result;
}

uint64_t XPCAgentMessage.RequestFragments.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA91984();
  sub_1BBB84458();
  if (!v2)
  {
    sub_1BBA92DFC();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v9 = v15[0];
    a2[6] = v14[6];
    a2[7] = v9;
    *(a2 + 127) = *(v15 + 15);
    v10 = v14[3];
    a2[2] = v14[2];
    a2[3] = v10;
    v11 = v14[5];
    a2[4] = v14[4];
    a2[5] = v11;
    v12 = v14[1];
    *a2 = v14[0];
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBA96354(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F746E6572727563 && a2 == 0xEB00000000796C6ELL || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1BBA96470()
{
  result = qword_1ED6BE560;
  if (!qword_1ED6BE560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE560);
  }

  return result;
}

unint64_t sub_1BBA964C4()
{
  result = qword_1ED6BE538;
  if (!qword_1ED6BE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE538);
  }

  return result;
}

uint64_t _s6WindowV7StorageVMa()
{
  result = qword_1ED6BE2B0;
  if (!qword_1ED6BE2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBA96564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1BBA965DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBB834F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BBA966C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBA96740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBB834F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1BBA9680C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BBA96868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t type metadata accessor for IntelligenceElement.StorageValue()
{
  result = qword_1ED6BE990;
  if (!qword_1ED6BE990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceFragmentCollector.State()
{
  result = qword_1ED6BDFA8;
  if (!qword_1ED6BDFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceFragment()
{
  result = qword_1ED6BE6B0;
  if (!qword_1ED6BE6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBA969BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBA96A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BBA96A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBA96ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x2C)
  {
    *result = a2 - 45;
    if (a3 >= 0x2D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x2D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 1 | (2 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BBA96B10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x2D && *(a1 + 8))
  {
    return (*a1 + 45);
  }

  v3 = ((((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) >> 1) & 0xFFFFFFDF | (32 * ((*a1 >> 1) & 1))) ^ 0x3F;
  if (v3 >= 0x2C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unint64_t sub_1BBA96B70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B950);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B958);
    v7 = sub_1BBB840E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1BBA8BC5C(v9, v5, &qword_1EBC7B950);
      v11 = *v5;
      result = sub_1BBA99764(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for IntelligenceElement.StorageValue();
      result = sub_1BBAC7954(&v5[v8], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for IntelligenceElement.StorageValue);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

uint64_t sub_1BBA96D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1BBA96DEC()
{
  result = qword_1ED6BE558;
  if (!qword_1ED6BE558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE558);
  }

  return result;
}

void *sub_1BBA96E40(char a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1BBB83658();
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UndeclaredUTType();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C210);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1BBA9729C(&qword_1ED6BE478, &qword_1ED6BEBE0);
  v14 = v31;
  sub_1BBB84178();
  if (!v14)
  {
    v26 = v12;
    v27 = v7;
    v31 = v9;
    if (v32)
    {
      v15 = *(v32 + 16);
      v25[1] = v32;
      v25[2] = 0;
      if (v15)
      {
        v16 = v32 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v17 = *(v30 + 72);
        v29 = (v28 + 48);
        v30 = v28 + 32;
        v13 = MEMORY[0x1E69E7CC0];
        v19 = v26;
        v18 = v27;
        do
        {
          sub_1BBB083D8(v16, v19, type metadata accessor for UndeclaredUTType);
          sub_1BBAA6758(v19, v6, &qword_1EBC7B858);
          if ((*v29)(v6, 1, v18) == 1)
          {
            sub_1BBA8BCC4(v6, &qword_1EBC7B858);
          }

          else
          {
            v20 = *v30;
            (*v30)(v31, v6, v18);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1BBABEFE0(0, v13[2] + 1, 1, v13);
            }

            v22 = v13[2];
            v21 = v13[3];
            if (v22 >= v21 >> 1)
            {
              v13 = sub_1BBABEFE0(v21 > 1, v22 + 1, 1, v13);
            }

            v13[2] = v22 + 1;
            v23 = v13 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22;
            v18 = v27;
            v20(v23, v31, v27);
            v19 = v26;
          }

          v16 += v17;
          --v15;
        }

        while (v15);
      }

      else
      {
        v13 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t type metadata accessor for UndeclaredUTType()
{
  result = qword_1ED6BEBA8;
  if (!qword_1ED6BEBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBA9729C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C210);
    sub_1BBB07708(a2, type metadata accessor for UndeclaredUTType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBA97338()
{
  result = qword_1ED6BE4E0;
  if (!qword_1ED6BE4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4E0);
  }

  return result;
}

uint64_t sub_1BBA9738C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C6C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBA97404()
{
  result = qword_1ED6BE4E8;
  if (!qword_1ED6BE4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE4E8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntelligenceCollectionRequest.CommandOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1BBA974E4(uint64_t a1)
{
  v2 = *(a1 + 136);
  result = a1 + 136;
  v3 = *(result - 80);
  v4 = v2 | ((*(result + 4) | (*(result + 6) << 16)) << 32);
  v5 = *(result - 96) & 0x1010101;
  v6 = *(result - 64) & 0x101;
  v7 = *(result - 48) & 0x101;
  v8 = *(result - 32) & 0x3030101;
  v9 = *(result - 16) & 0x3010101030303;
  *(result - 112) &= 0x1010101uLL;
  *(result - 96) = v5;
  *(result - 80) = v3;
  *(result - 64) = v6;
  *(result - 48) = v7;
  *(result - 32) = v8;
  *(result - 16) = v9;
  *result = v4 & 0x1030101;
  *(result + 4) = (v4 & 0x1010101030101) >> 32;
  *(result + 6) = (v4 & 0x1FFFFFFFFFFFFLL | 0x80000000000000) >> 48;
  return result;
}

void sub_1BBA9759C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[4];
  v41 = a1[5];
  v42 = v3;
  v43[0] = v4;
  *(v43 + 15) = *(a1 + 127);
  v6 = a1[3];
  v38 = a1[2];
  v39 = v6;
  v40 = v5;
  v7 = a1[1];
  v36 = *a1;
  v37 = v7;
  swift_beginAccess();
  sub_1BBA97A10(v1 + 16, &aBlock);
  if (*(&v28 + 1))
  {
    sub_1BBA97A80(&aBlock, v35);
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v8 = sub_1BBB83758();
    __swift_project_value_buffer(v8, qword_1ED6BDEC0);
    sub_1BBA94F7C(&v36, &aBlock);
    v9 = sub_1BBB83738();
    v10 = sub_1BBB83D58();
    sub_1BBA96D48(&v36);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&aBlock = v12;
      *v11 = 136446210;
      *&v26[0] = v36;
      v13 = RequestID.debugDescription.getter();
      v15 = sub_1BBA85E50(v13, v14, &aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BBA81000, v9, v10, "received request to collect fragments %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB174E0](v12, -1, -1);
      MEMORY[0x1BFB174E0](v11, -1, -1);
    }

    if (qword_1ED6BF1F8 != -1)
    {
      swift_once();
    }

    v33 = v42;
    v34[0] = v43[0];
    *(v34 + 15) = *(v43 + 15);
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    aBlock = v36;
    v28 = v37;
    v16 = sub_1BBA97BD4(&aBlock);
    v17 = CFRunLoopGetMain();
    if (v17)
    {
      v18 = v17;
      sub_1BBA98C94(v35, v26);
      v19 = swift_allocObject();
      *(v19 + 16) = v2;
      sub_1BBA97A80(v26, v19 + 24);
      *(v19 + 64) = v16;
      v20 = *MEMORY[0x1E695E8D0];
      if (*MEMORY[0x1E695E8D0])
      {
        *&v29 = sub_1BBA98CF8;
        *(&v29 + 1) = v19;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v28 = sub_1BBA83B58;
        *(&v28 + 1) = &block_descriptor_0;
        v21 = _Block_copy(&aBlock);

        CFRunLoopPerformBlock(v18, v20, v21);
        _Block_release(v21);
        CFRunLoopWakeUp(v18);

        __swift_destroy_boxed_opaque_existential_1(v35);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BBACDA3C(&aBlock);
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v22 = sub_1BBB83758();
    __swift_project_value_buffer(v22, qword_1ED6BDEC0);
    v23 = sub_1BBB83738();
    v24 = sub_1BBB83D48();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1BBA81000, v23, v24, "No application owning kit has registered an observer", v25, 2u);
      MEMORY[0x1BFB174E0](v25, -1, -1);
    }
  }
}