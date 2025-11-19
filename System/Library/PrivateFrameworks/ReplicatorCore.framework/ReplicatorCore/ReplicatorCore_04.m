void sub_230491638()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_2304A5CB4();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v13 = sub_2304920BC();
  if (!v13)
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    goto LABEL_10;
  }

  v22[0] = 0;
  if (![v13 eraseAndReturnError_])
  {
    v20 = v22[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v14 = qword_281499E50;
  v15 = v22[0];
  if (v14 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v16 = sub_2304A5B74();
  __swift_project_value_buffer(v16, qword_28149B038);
  v17 = sub_2304A5B54();
  v18 = sub_2304A5E94();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_230430000, v17, v18, "Erased old data", v19, 2u);
    MEMORY[0x23191A000](v19, -1, -1);
  }

  swift_unknownObjectRelease();

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_2304919B4()
{
  v1 = sub_2304A5CA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2304A5CB4();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection])
  {
    sub_230474F08(0, &qword_281499D68, 0x277CF3288);
    sub_2304A54C4();
    v9 = v0;
    v10 = sub_2304A5F54();
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277CF32B8]) initWithEndpoint_];

      if (v12)
      {
        v13 = *&v9[v8];
        *&v9[v8] = v12;
        v14 = v12;

        v15 = swift_allocObject();
        *(v15 + 16) = v9;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_2304948A0;
        *(v16 + 24) = v15;
        aBlock[4] = sub_2304324E8;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23043248C;
        aBlock[3] = &block_descriptor_5;
        v17 = _Block_copy(aBlock);
        v18 = v9;

        [v14 configure_];

        _Block_release(v17);
        LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

        if (v14)
        {
          __break(1u);
LABEL_8:
          __break(1u);
        }
      }
    }
  }
}

void sub_230491C80(void *a1, uint64_t a2)
{
  sub_2304A54B4();
  v4 = sub_2304A5D14();

  v17 = sub_23048C14C;
  v18 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2304328BC;
  v16 = &block_descriptor_14;
  v5 = _Block_copy(&v13);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
    v8 = sub_2304A5D14();
    v9 = [objc_opt_self() queueWithName:v8 targetQueue:v7];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v17 = sub_230491FA8;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_17;
    v10 = _Block_copy(&v13);
    [a1 setActivationHandler_];
    _Block_release(v10);
    v17 = sub_230491FB4;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_20_0;
    v11 = _Block_copy(&v13);
    [a1 setInterruptionHandler_];
    _Block_release(v11);
    v17 = sub_230491FC0;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_2304318E8;
    v16 = &block_descriptor_23_0;
    v12 = _Block_copy(&v13);
    [a1 setInvalidationHandler_];
    _Block_release(v12);
  }
}

void sub_230491FCC(uint64_t a1, const char *a2)
{
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v3 = sub_2304A5B74();
  __swift_project_value_buffer(v3, qword_28149B038);
  oslog = sub_2304A5B54();
  v4 = sub_2304A5E64();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_230430000, oslog, v4, a2, v5, 2u);
    MEMORY[0x23191A000](v5, -1, -1);
  }
}

uint64_t sub_2304920BC()
{
  v1 = sub_2304A5CA4();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x28223BE20](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2304A5CB4();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_23048C234();
  v8 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection);
  if (!v8)
  {
    if (qword_281499E50 != -1)
    {
      swift_once();
    }

    v9 = sub_2304A5B74();
    __swift_project_value_buffer(v9, qword_28149B038);
    v1 = sub_2304A5B54();
    v10 = sub_2304A5E84();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_230430000, v1, v10, "Failed to establish a connection", v11, 2u);
      MEMORY[0x23191A000](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_2304A5F94();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54760, qword_2304A7EF8);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_230464970(v20, &qword_27DB54148, &unk_2304A7500);
  }

  if (qword_281499E50 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_2304A5B74();
  __swift_project_value_buffer(v13, qword_28149B038);
  v14 = sub_2304A5B54();
  v15 = sub_2304A5E84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_230430000, v14, v15, "Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x23191A000](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_230492400@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A5364();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v7 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v44[-v8];
  v9 = sub_2304A5504();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v52 = &v44[-v14];
  v15 = sub_2304A5CA4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_2304A5CB4();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v24 = sub_2304920BC();
  if (!v24)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D46880], v2);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888]);
    swift_allocError();
    sub_2304A5374();
    result = swift_willThrow();
    goto LABEL_11;
  }

  v53[0] = 0;
  v25 = [v24 localDeviceIDAndReturnError_];
  v26 = v53[0];
  if (!v25)
  {
    v42 = v53[0];
    sub_2304A3F24();

    swift_willThrow();
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v27 = v25;
  sub_2304948A8(&qword_27DB547E8, MEMORY[0x277D46938]);
  v19 = v52;
  v22 = v50;
  sub_2304A5444();
  v28 = v26;

  if (qword_281499E50 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v29 = sub_2304A5B74();
  __swift_project_value_buffer(v29, qword_28149B038);
  v30 = v49;
  (*(v49 + 16))(v13, v19, v22);
  v31 = sub_2304A5B54();
  v32 = sub_2304A5E94();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v33 = 136446210;
    v45 = v32;
    sub_2304A54F4();
    v34 = sub_2304A5D34();
    v36 = v35;
    v37 = *(v30 + 8);
    v37(v13, v22);
    v38 = sub_23046A5C8(v34, v36, v53);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_230430000, v31, v45, "Fetched local device ID %{public}s for migration", v33, 0xCu);
    v39 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x23191A000](v39, -1, -1);
    v40 = v33;
    v19 = v52;
    MEMORY[0x23191A000](v40, -1, -1);
  }

  else
  {

    v37 = *(v30 + 8);
    v37(v13, v22);
  }

  sub_2304A54F4();
  swift_unknownObjectRelease();
  result = (v37)(v19, v22);
LABEL_11:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2304929E0()
{
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A54E4();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v10;
  v11 = sub_2304A5CA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_2304A5CB4();
  v19 = *(v12 + 8);
  v18 = (v12 + 8);
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v20 = sub_2304920BC();
  if (!v20)
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    goto LABEL_11;
  }

  v41[0] = 0;
  v21 = [v20 devicesAndReturnError_];
  v22 = v41[0];
  if (!v21)
  {
    v33 = v41[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23 = v21;
  sub_2304948A8(&qword_27DB547E0, MEMORY[0x277D46928]);
  v18 = v40;
  sub_2304A5444();
  v24 = v22;

  if (qword_281499E50 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v25 = sub_2304A5B74();
  __swift_project_value_buffer(v25, qword_28149B038);
  v26 = v38;
  v27 = v39;
  (*(v39 + 16))(v38, v18, v6);
  v28 = sub_2304A5B54();
  v29 = sub_2304A5E94();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v26;
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    v37 = *(sub_2304A54D4() + 16);

    v32 = *(v27 + 8);
    v32(v30, v6);
    *(v31 + 4) = v37;
    _os_log_impl(&dword_230430000, v28, v29, "Fetched %{public}ld devices for migration", v31, 0xCu);
    MEMORY[0x23191A000](v31, -1, -1);
  }

  else
  {
    v32 = *(v27 + 8);
    v32(v26, v6);
  }

  v0 = sub_2304A54D4();
  swift_unknownObjectRelease();
  v32(v18, v6);
LABEL_11:
  v34 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_230492F08()
{
  v41[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2304A5364();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5524();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v36 - v10;
  v11 = sub_2304A5CA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_2304A5CB4();
  v19 = *(v12 + 8);
  v18 = (v12 + 8);
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_5;
  }

  v20 = sub_2304920BC();
  if (!v20)
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D46880], v1);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    goto LABEL_11;
  }

  v41[0] = 0;
  v21 = [v20 clientDescriptorsAndReturnError_];
  v22 = v41[0];
  if (!v21)
  {
    v33 = v41[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23 = v21;
  sub_2304948A8(&unk_27DB547D0, MEMORY[0x277D46948]);
  v18 = v40;
  sub_2304A5444();
  v24 = v22;

  if (qword_281499E50 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  v25 = sub_2304A5B74();
  __swift_project_value_buffer(v25, qword_28149B038);
  v26 = v38;
  v27 = v39;
  (*(v39 + 16))(v38, v18, v6);
  v28 = sub_2304A5B54();
  v29 = sub_2304A5E94();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v26;
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    v37 = *(sub_2304A54D4() + 16);

    v32 = *(v27 + 8);
    v32(v30, v6);
    *(v31 + 4) = v37;
    _os_log_impl(&dword_230430000, v28, v29, "Fetched %{public}ld client descriptors for migration", v31, 0xCu);
    MEMORY[0x23191A000](v31, -1, -1);
  }

  else
  {
    v32 = *(v27 + 8);
    v32(v26, v6);
  }

  v0 = sub_2304A54D4();
  swift_unknownObjectRelease();
  v32(v18, v6);
LABEL_11:
  v34 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t *sub_230493430()
{
  v2 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_2304A5364();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = v36[8];
  MEMORY[0x28223BE20](v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54730, &unk_2304A7EE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v35 - v10;
  v12 = sub_2304A5CA4();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_2304A5CB4();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = sub_2304920BC();
  if (!v19)
  {
    (v36[13])(v6, *MEMORY[0x277D46880], v37);
    sub_2304A5384();
    sub_2304948A8(&qword_27DB54738, MEMORY[0x277D46888]);
    swift_allocError();
    sub_2304A5374();
    swift_willThrow();
    goto LABEL_18;
  }

  v20 = v19;
  v39[0] = 0;
  v21 = [v19 recordsAndReturnError_];
  if (!v21)
  {
    v32 = v39[0];
    sub_2304A3F24();

    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v22 = v21;
  v37 = v20;
  v23 = v39[0];
  v36 = v22;
  v24 = sub_2304A5914();
  v6 = MEMORY[0x277D84F90];
  v39[0] = MEMORY[0x277D84F90];
  v12 = *(v24 + 16);
  if (v12)
  {
    v25 = 0;
    v6 = &qword_27DB54730;
    while (v25 < *(v24 + 16))
    {
      sub_230464B24(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v11, &qword_27DB54730, &unk_2304A7EE8);
      sub_230493984(v39, v11, v2, ObjectType);
      if (v1)
      {

        swift_unknownObjectRelease();

        sub_230464970(v11, &qword_27DB54730, &unk_2304A7EE8);

        goto LABEL_18;
      }

      ++v25;
      sub_230464970(v11, &qword_27DB54730, &unk_2304A7EE8);
      if (v12 == v25)
      {
        v6 = v39[0];
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_10:

  v12 = v36;
  if (qword_281499E50 != -1)
  {
LABEL_21:
    swift_once();
  }

  v26 = sub_2304A5B74();
  __swift_project_value_buffer(v26, qword_28149B038);
  v27 = v12;
  v28 = sub_2304A5B54();
  v29 = sub_2304A5E94();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134349056;
    v31 = *(sub_2304A5914() + 16);

    *(v30 + 4) = v31;

    _os_log_impl(&dword_230430000, v28, v29, "Fetched %{public}ld records for migration", v30, 0xCu);
    MEMORY[0x23191A000](v30, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v28 = v27;
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_230493984(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a4;
  v51 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54170, &qword_2304A7528);
  v50 = *(v47 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  v49 = v46 - v7;
  v8 = sub_2304A4084();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v46[2] = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A4FF4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v46[1] = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2304A5084();
  v53 = *(v48 - 8);
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54730, &unk_2304A7EE8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v46 - v19);
  v21 = sub_2304A4BF4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230464B24(a2, v20, &qword_27DB54730, &unk_2304A7EE8);
  v26 = *v20;
  v27 = *(v17 + 56);
  v54 = v25;
  v55 = v22;
  v28 = *(v22 + 32);
  v56 = v21;
  v28(v25, v20 + v27, v21);
  v29 = sub_2304A5964();
  v30 = v29;
  v60 = MEMORY[0x277D84F98];
  if (v29 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2304A6044())
  {
    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x231919680](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v59 = v33;
      sub_230493ED8(&v60, &v59, v57, v58);
      if (v4)
      {

        (*(v55 + 8))(v54, v56);
      }

      ++v32;
      if (v35 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v37 = v47;

  sub_2304A5944();
  sub_2304A5984();
  v38 = v52;
  sub_2304A5004();
  v39 = *(v37 + 48);
  v41 = v48;
  v40 = v49;
  (*(v53 + 16))(v49, v38, v48);
  (*(v55 + 16))(v40 + v39, v54, v56);
  v42 = v51;
  v43 = *v51;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_230459E50(0, v43[2] + 1, 1, v43);
  }

  v45 = v43[2];
  v44 = v43[3];
  if (v45 >= v44 >> 1)
  {
    v43 = sub_230459E50(v44 > 1, v45 + 1, 1, v43);
  }

  (*(v53 + 8))(v52, v41);
  (*(v55 + 8))(v54, v56);
  v43[2] = v45 + 1;
  result = sub_230464ABC(v40, v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45, &qword_27DB54170, &qword_2304A7528);
  *v42 = v43;
  return result;
}

uint64_t sub_230493ED8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54740, &qword_2304A7A60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v40 - v9;
  v11 = sub_2304A5054();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v40 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v40 - v23;
  v25 = *a2;
  result = sub_2304A5A04();
  if (v27 >> 60 != 15)
  {
    v40[1] = a1;
    v41 = result;
    v47 = v4;
    v42 = v27;
    v28 = sub_2304A59E4();
    if (v28)
    {
      v29 = v28;
      v30 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_url;
      v31 = sub_230462988(MEMORY[0x277D84F90]);
      v32 = v47;
      sub_230494298(v45 + v30, v31, v22);
      v47 = v32;
      if (v32)
      {

        sub_23049488C(v41, v42);
      }

      v34 = sub_2304A3FC4();
      (*(*(v34 - 8) + 56))(v22, 0, 1, v34);
      sub_230464ABC(v22, v24, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v33 = sub_2304A3FC4();
      (*(*(v33 - 8) + 56))(v24, 1, 1, v33);
    }

    sub_230464B24(v24, v19, &qword_27DB53FE0, &qword_2304A7430);
    v35 = v41;
    v36 = v42;
    sub_230474E48(v41, v42);
    sub_2304A5044();
    v37 = sub_2304A5A24();
    v39 = v43;
    v38 = v44;
    (*(v43 + 16))(v10, v14, v44);
    (*(v39 + 56))(v10, 0, 1, v38);
    sub_2304780AC(v10, v37);
    sub_23049488C(v35, v36);
    (*(v39 + 8))(v14, v38);
    return sub_230464970(v24, &qword_27DB53FE0, &qword_2304A7430);
  }

  return result;
}

void sub_230494298(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a1;
  v37 = a2;
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2304A3FC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2304A3F34();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A4084();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E50 != -1)
  {
    swift_once();
  }

  v15 = sub_2304A5B74();
  __swift_project_value_buffer(v15, qword_28149B038);
  v16 = sub_2304A5B54();
  v17 = sub_2304A5E94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12;
    v19 = v5;
    v20 = v4;
    v21 = a3;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_230430000, v16, v17, "Ingesting file handle", v22, 2u);
    v23 = v22;
    a3 = v21;
    v4 = v20;
    v5 = v19;
    v12 = v18;
    MEMORY[0x23191A000](v23, -1, -1);
  }

  sub_2304A4074();
  v44[0] = sub_2304A4044();
  v44[1] = v24;
  v25 = v38;
  (*(v8 + 104))(v11, *MEMORY[0x277CC91D8], v38);
  sub_2304645C4();
  v26 = v40;
  sub_2304A3FB4();
  (*(v8 + 8))(v11, v25);

  sub_230474F08(0, &unk_27DB54750, 0x277CCA9F8);
  v27 = v39;
  (*(v5 + 16))(v39, v26, v4);
  v28 = v41;
  v29 = sub_230496B54(v27);
  if (v28)
  {
    goto LABEL_9;
  }

  v30 = v29;
  sub_2304A5E54();
  v44[0] = 0;
  if (([v30 closeAndReturnError_] & 1) == 0)
  {
    v33 = v4;
    v34 = a3;
    v35 = v44[0];
    sub_2304A3F24();

    a3 = v34;
    v4 = v33;
    swift_willThrow();

LABEL_9:
    (*(v5 + 8))(a3, v4);
    (*(v42 + 8))(v43, v12);
    goto LABEL_10;
  }

  v31 = *(v42 + 8);
  v32 = v44[0];
  v31(v43, v12);

LABEL_10:
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_230494704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A49E4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_230494768(uint64_t a1, uint64_t a2)
{
  v4 = sub_2304A49E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2304947CC()
{
  result = qword_27DB54710;
  if (!qword_27DB54710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB54708, &qword_2304A7ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54710);
  }

  return result;
}

uint64_t sub_230494830(uint64_t a1)
{
  v2 = sub_2304A49E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23049488C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2304617C4(a1, a2);
  }

  return a1;
}

uint64_t sub_2304948A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_230494910(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

id sub_2304949D4(void *a1, void *a2)
{
  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_230495798;
    *(v8 + 24) = v7;
    v13[4] = sub_2304324E8;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_23043248C;
    v13[3] = &block_descriptor_6;
    v9 = _Block_copy(v13);
    v10 = a2;

    [a1 configure_];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
    }
  }

  else
  {

    return [a1 invalidate];
  }

  return result;
}

void sub_230494BCC(void *a1, uint64_t a2)
{
  sub_2304A56B4();
  v4 = sub_2304A5D14();

  v12 = sub_230494910;
  v13 = 0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2304328BC;
  v11 = &block_descriptor_13;
  v5 = _Block_copy(&v8);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    v12 = sub_230494D98;
    v13 = 0;
    v8 = MEMORY[0x277D85DD0];
    v9 = 1107296256;
    v10 = sub_2304318E8;
    v11 = &block_descriptor_16;
    v7 = _Block_copy(&v8);
    [a1 setInvalidationHandler_];
    _Block_release(v7);
  }
}

uint64_t sub_230494D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54818, &qword_2304A7F48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2304A7270;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000016;
  *(v0 + 40) = 0x80000002304A94E0;
  sub_2304A6374();
}

id sub_230494E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_230494F18(uint64_t a1, int64_t a2)
{
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v7 = __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager), *(v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager + 24));
    v8 = *v7;
    if (qword_28149A870 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  v18 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager + 24);
  v61 = (v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager);
  v19 = __swift_project_boxed_opaque_existential_5Tm((v2 + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager), v18);
  v20 = *v19;
  if (qword_28149A870 != -1)
  {
    v19 = swift_once();
  }

  v9 = qword_28149A878;
  MEMORY[0x28223BE20](v19);
  v8 = &v53;
  v55 = sub_23049575C;
  v56 = v20;
  os_unfair_lock_lock((v9 + 16));
  sub_230432D54(&v65);
  v63 = v3;
  if (v3)
  {
    goto LABEL_40;
  }

  v60 = v9;
  os_unfair_lock_unlock((v9 + 16));
  v21 = 0;
  a1 = v65 + 56;
  v22 = *(v65 + 56);
  v62 = v65;
  v23 = 1 << *(v65 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v5 = (v23 + 63) >> 6;
  v59 = MEMORY[0x277D84F98];
  while (v25)
  {
    v9 = v21;
LABEL_17:
    v26 = (*(v62 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v25)))));
    v28 = *v26;
    v27 = v26[1];
    v29 = __swift_project_boxed_opaque_existential_5Tm(v61, v61[3]);
    v10 = v57;
    v30 = *v29;
    v31 = MEMORY[0x28223BE20](v29);
    v53 = v32;
    v54 = v28;
    v55 = v27;
    MEMORY[0x28223BE20](v31);
    v8 = &v50;
    v51 = sub_230495778;
    v52 = v33;

    v4 = v60;
    os_unfair_lock_lock(v60 + 4);
    v34 = v63;
    sub_230462810(&v65);
    v63 = v34;
    if (v34)
    {
      goto LABEL_37;
    }

    v25 &= v25 - 1;
    os_unfair_lock_unlock(v4 + 4);
    v4 = v65;
    if (v65)
    {
      v36 = *(v65 + 48);
      v35 = *(v65 + 56);

      v37 = v36(v28, v27);

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54810, &unk_2304A7F38);
      *&v65 = v37;
      sub_230462958(&v65, v64);
      v38 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v38;
      v10 = sub_230469C40(v28, v27);
      v40 = *&v38[4]._os_unfair_lock_opaque;
      v41 = (v39 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        os_unfair_lock_unlock(v4 + 4);
        __break(1u);
        goto LABEL_38;
      }

      if (*&v38[6]._os_unfair_lock_opaque >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v39 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v59) = v39;
          sub_2304727B0();
          if ((v59 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_27:

        v59 = v67;
        v8 = (*&v67[14]._os_unfair_lock_opaque + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        sub_230462958(v64, v8);

        v21 = v9;
      }

      else
      {
        LODWORD(v59) = v39;
        sub_230470720(v42, isUniquelyReferenced_nonNull_native);
        v43 = sub_230469C40(v28, v27);
        if ((v59 & 1) != (v44 & 1))
        {
          goto LABEL_39;
        }

        v10 = v43;
        if (v59)
        {
          goto LABEL_27;
        }

LABEL_29:
        v8 = v4;
        v4 = v67;
        *&v67[2 * (v10 >> 6) + 16]._os_unfair_lock_opaque |= 1 << v10;
        v45 = (*&v4[12]._os_unfair_lock_opaque + 16 * v10);
        *v45 = v28;
        v45[1] = v27;
        sub_230462958(v64, (*&v4[14]._os_unfair_lock_opaque + 32 * v10));

        v46 = *&v4[4]._os_unfair_lock_opaque;
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_36;
        }

        v59 = v4;
        *&v4[4]._os_unfair_lock_opaque = v48;
        v21 = v9;
      }
    }

    else
    {

      v21 = v9;
    }
  }

  while (1)
  {
    v9 = &v21->_os_unfair_lock_opaque + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      goto LABEL_32;
    }

    v25 = *(a1 + 8 * v9);
    v21 = (v21 + 1);
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  v7 = swift_once();
LABEL_3:
  v9 = v57;
  v10 = qword_28149A878;
  v11 = MEMORY[0x28223BE20](v7);
  v53 = v8;
  v54 = a1;
  v55 = v5;
  MEMORY[0x28223BE20](v11);
  v51 = sub_2304957A8;
  v52 = v12;
  os_unfair_lock_lock((v10 + 16));
  sub_230464E3C(&v65);
  if (v4)
  {
LABEL_38:
    os_unfair_lock_unlock((v10 + 16));
    __break(1u);
LABEL_39:
    sub_2304A6314();
    __break(1u);
LABEL_40:
    os_unfair_lock_unlock((v9 + 16));
    __break(1u);
    return;
  }

  os_unfair_lock_unlock((v10 + 16));
  v13 = MEMORY[0x277D84F98];
  if (v65)
  {
    v15 = *(v65 + 48);
    v14 = *(v65 + 56);

    v16 = v15(a1, v5);

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54810, &unk_2304A7F38);
    *&v65 = v16;
    sub_230462958(&v65, v64);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v67 = v13;
    sub_23045C978(v64, a1, v5, v17);
  }

LABEL_32:
  v49 = sub_2304A5CC4();

  *&v65 = v49;
  sub_2304A5D34();
}

uint64_t sub_2304957C8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_2304A6084();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_2304A4984(), v5 = *(a2 + 40), sub_230496420(&qword_281499FD0, MEMORY[0x277D464B8]), v6 = sub_2304A5CF4(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      sub_230496420(&unk_281499FC0, MEMORY[0x277D464B8]);
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_2304A5D04();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_230495958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2304A6394();
  sub_2304A5D54();
  v7 = sub_2304A63B4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2304A62F4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_230495A50(uint64_t a1, uint64_t a2)
{
  v3 = sub_2304A4084();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_230496420(&qword_28149AC58, MEMORY[0x277CC95F0]), v9 = sub_2304A5CF4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_230496420(&unk_27DB54450, MEMORY[0x277CC95F0]);
      v17 = sub_2304A5D04();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_230495C68()
{
  v2 = v1;
  v3 = type metadata accessor for DataMigrator.Context(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 16);
  v9 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v10 = *(v5 + 28);
  v11 = sub_2304A4114();
  (*(*(v11 - 8) + 16))(&v7[v10], v0 + v9, v11);
  v37 = v7;
  *v7 = v8;
  v12 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages);
  v13 = *(v12 + 16);
  v43 = v8;

  v38 = v13;
  if (!v13)
  {
    return sub_230496038(v37);
  }

  v15 = 0;
  v39 = v12 + 32;
  while (v15 < *(v12 + 16))
  {
    sub_230464834(v39 + 40 * v15, v40);
    v16 = v41;
    v17 = v42;
    __swift_project_boxed_opaque_existential_5Tm(v40, v41);
    v18 = (*(v17 + 8))(v16, v17);
    v20 = v19;
    sub_2304A5A84();
    v21 = sub_2304A5AA4();
    if (v2)
    {
      sub_230496038(v37);

      return __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }

    v22 = v21;

    if (*(v22 + 16) && (v23 = *(v22 + 40), sub_2304A6394(), sub_2304A5D54(), v24 = sub_2304A63B4(), v25 = -1 << *(v22 + 32), v26 = v24 & ~v25, ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
    {
      v27 = ~v25;
      while (1)
      {
        v28 = (*(v22 + 48) + 16 * v26);
        v29 = *v28 == v18 && v28[1] == v20;
        if (v29 || (sub_2304A62F4() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:

      v30 = v41;
      v31 = v42;
      __swift_project_boxed_opaque_existential_5Tm(v40, v41);
      (*(v31 + 16))(v37, v30, v31);
      v32 = v41;
      v33 = v42;
      __swift_project_boxed_opaque_existential_5Tm(v40, v41);
      v34 = (*(v33 + 8))(v32, v33);
      *(&v36 - 2) = MEMORY[0x28223BE20](v34);
      *(&v36 - 1) = v35;
      sub_2304A5B34();
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(v40);
    if (++v15 == v38)
    {
      return sub_230496038(v37);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230496038(uint64_t a1)
{
  v2 = type metadata accessor for DataMigrator.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230496094()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2304A5A84();
  sub_2304A5B04();
}

uint64_t DataMigrator.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v3 = sub_2304A4114();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages);

  return v0;
}

uint64_t DataMigrator.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType;
  v3 = sub_2304A4114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_230496240(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230496278()
{
  result = sub_2304A4114();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23049639C()
{
  result = sub_2304A5B44();
  if (v1 <= 0x3F)
  {
    result = sub_2304A4114();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_230496420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230496480(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v5 = sub_2304A6224();

    if (v5)
    {
      a3(0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v7 = sub_230469CB8(a1);
    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v7);
    }
  }

  return 0;
}

uint64_t sub_230496544@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = sub_2304A3F34();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2304A3FC4();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v64);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = v55 - v13;
  v14 = sub_2304A4084();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E48 != -1)
  {
    swift_once();
  }

  v18 = sub_2304A5B74();
  __swift_project_value_buffer(v18, qword_28149B020);
  v19 = sub_2304A5B54();
  v20 = sub_2304A5E94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v60 = v12;
    v22 = v7;
    v23 = a1;
    v24 = a2;
    v25 = v15;
    v26 = v14;
    v27 = v8;
    v28 = v21;
    *v21 = 0;
    _os_log_impl(&dword_230430000, v19, v20, "Ingesting url", v21, 2u);
    v29 = v28;
    v8 = v27;
    v14 = v26;
    v15 = v25;
    a2 = v24;
    a1 = v23;
    v7 = v22;
    v12 = v60;
    MEMORY[0x23191A000](v29, -1, -1);
  }

  sub_2304A4074();
  v30 = v65;
  sub_23048BD04(v12);
  if (v30)
  {
    goto LABEL_12;
  }

  v55[1] = 0;
  v55[2] = a1;
  v59 = v15;
  v60 = v14;
  v67 = 0x7364726F636572;
  v68 = 0xE700000000000000;
  v57 = *MEMORY[0x277CC91D8];
  v31 = v61;
  v32 = v62;
  v65 = a2;
  v56 = *(v61 + 104);
  v56(v7);
  v55[3] = sub_2304645C4();
  v33 = v63;
  sub_2304A3FB4();
  v34 = *(v31 + 8);
  v34(v7, v32);
  v35 = *(v8 + 8);
  v61 = v8 + 8;
  v58 = v35;
  v35(v12, v64);
  v67 = sub_2304A4044();
  v68 = v36;
  (v56)(v7, v57, v32);
  v37 = v65;
  sub_2304A3FB4();
  v34(v7, v32);

  v38 = objc_opt_self();
  v39 = [v38 defaultManager];
  v40 = sub_2304A3F54();
  v67 = 0;
  LOBYTE(v31) = [v39 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v67];

  if ((v31 & 1) == 0)
  {
    v50 = v67;
    sub_2304A3F24();

    swift_willThrow();
    v51 = v64;
    v52 = v58;
    v58(v37, v64);
    v52(v33, v51);
LABEL_11:
    v15 = v59;
    v14 = v60;
LABEL_12:
    result = (*(v15 + 8))(v66, v14);
    goto LABEL_13;
  }

  v41 = v58;
  v42 = v64;
  v43 = v67;
  v44 = [v38 defaultManager];
  v45 = sub_2304A3F54();
  v46 = sub_2304A3F54();
  v67 = 0;
  v47 = [v44 moveItemAtURL:v45 toURL:v46 error:&v67];

  if ((v47 & 1) == 0)
  {
    v53 = v67;
    sub_2304A3F24();

    swift_willThrow();
    v41(v37, v42);
    v41(v63, v42);
    goto LABEL_11;
  }

  v48 = v67;
  v41(v63, v42);
  result = (*(v59 + 8))(v66, v60);
LABEL_13:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_230496B54(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2304A3F54();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_2304A3FC4();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_2304A3F24();

    swift_willThrow();
    v9 = sub_2304A3FC4();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_230496CAC(uint64_t a1, int a2, int a3)
{
  v140 = a2;
  v141 = a3;
  v156[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v139 = v120 - v6;
  v132 = sub_2304A3FC4();
  v152 = *(v132 - 8);
  v7 = *(v152 + 64);
  MEMORY[0x28223BE20](v132);
  v149 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2304A4A64();
  v142 = *(v150 - 8);
  v9 = *(v142 + 64);
  MEMORY[0x28223BE20](v150);
  v153 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A43B4();
  v151 = *(v11 - 8);
  v12 = *(v151 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v120 - v17;
  v19 = sub_2304A4084();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2304A4FF4();
  v128 = *(v23 - 8);
  v24 = *(v128 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v120 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v120 - v29;
  v127 = a1;
  v31 = sub_230497B9C();
  v129 = 0;
  v121 = v30;
  v122 = v22;
  v144 = v18;
  v145 = v14;
  v138 = v11;
  v123 = v23;
  v44 = v31;
  v45 = v154;
  v46 = *(v154 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 32);
  __swift_project_boxed_opaque_existential_5Tm((v154 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v154 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
  v47 = sub_2304A42A4();
  if (v47)
  {
    v120[0] = v47;
    v48 = *(v45 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
    __swift_project_boxed_opaque_existential_5Tm((v45 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v45 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
    v120[1] = v44;
    v49 = sub_2304A5324();
    v50 = *(v49 + 16);
    if (v50)
    {
      v156[0] = MEMORY[0x277D84F90];
      v51 = v49;
      v134 = v50;
      sub_2304A6154();
      v52 = v51;
      v53 = 0;
      v54 = v142;
      v137 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v136 = v142 + 16;
      v130 = (v152 + 48);
      v126 = (v152 + 32);
      v125 = (v152 + 8);
      v133 = (v142 + 8);
      v56 = v150;
      v55 = v151;
      v57 = v145;
      v58 = v149;
      v135 = v52;
      while (1)
      {
        if (v53 >= *(v52 + 16))
        {
LABEL_55:
          __break(1u);
          swift_once();
          v32 = sub_2304A5B74();
          __swift_project_value_buffer(v32, qword_28149B008);
          v33 = v128;
          (*(v128 + 16))(v56, v127, v53);
          v34 = v53;
          v35 = sub_2304A5B54();
          v36 = sub_2304A5E74();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = v33;
            v39 = swift_slowAlloc();
            v156[0] = v39;
            *v37 = 136446210;
            sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
            v40 = sub_2304A62D4();
            v42 = v41;
            (*(v38 + 8))(v56, v34);
            v43 = sub_23046A5C8(v40, v42, v156);

            *(v37 + 4) = v43;
            _os_log_impl(&dword_230430000, v35, v36, "Failed to resolve ID for: %{public}s", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v39);
            MEMORY[0x23191A000](v39, -1, -1);
            MEMORY[0x23191A000](v37, -1, -1);
          }

          else
          {

            (*(v33 + 8))(v56, v34);
          }

          goto LABEL_40;
        }

        v64 = *(v54 + 72);
        v148 = v53;
        (*(v54 + 16))(v153, v137 + v64 * v53, v56);
        if (v140)
        {
          v65 = sub_2304A4A54();
          v146 = v66;
          v147 = v65;
        }

        else
        {
          v146 = 0xF000000000000000;
          v147 = 0;
        }

        v67 = v139;
        if ((v141 & 1) == 0)
        {
          goto LABEL_8;
        }

        sub_2304A4A44();
        v68 = v132;
        if ((*v130)(v67, 1, v132) == 1)
        {
          break;
        }

        (*v126)(v58, v67, v68);
        v69 = sub_2304A3F54();
        v70 = objc_opt_self();
        v155 = 0;
        v71 = [v70 fileHandleForReadingFromURL:v69 error:&v155];

        v72 = v155;
        if (v71)
        {
          v59 = v71;
          v73 = v129;
        }

        else
        {
          v74 = v72;
          v75 = sub_2304A3F24();

          swift_willThrow();
          v59 = 0;
          v73 = 0;
        }

        v76 = v71;
        v77 = sub_2304A3F44();
        if (v73)
        {

          (*v125)(v58, v132);
          v129 = 0;
        }

        else
        {
          v124 = v59;
          v78 = v77;
          (*v125)(v58, v132);
          v79 = v78;
          v53 = *(v78 + 16);
          v129 = 0;
          if (v53)
          {
            v155 = MEMORY[0x277D84F90];
            v152 = v79;
            sub_2304A6154();
            v80 = v152;
            v81 = -1 << *(v152 + 32);
            v154 = v152 + 64;
            v82 = sub_2304A5FB4();
            v83 = 0;
            v131 = v80 + 72;
            v143 = v53;
            while ((v82 & 0x8000000000000000) == 0 && v82 < 1 << *(v80 + 32))
            {
              v84 = v82 >> 6;
              if ((*(v154 + 8 * (v82 >> 6)) & (1 << v82)) == 0)
              {
                goto LABEL_51;
              }

              v56 = *(v80 + 36);
              v85 = *(v80 + 56);
              v86 = (*(v80 + 48) + 16 * v82);
              v87 = *v86;
              v88 = v86[1];
              v89 = (v85 + 16 * v82);
              v91 = *v89;
              v90 = v89[1];
              swift_bridgeObjectRetain_n();
              sub_230474E48(v91, v90);
              sub_230474E48(v91, v90);

              sub_2304617C4(v91, v90);

              sub_230474E48(v91, v90);
              sub_2304617C4(v91, v90);

              sub_230474E48(v91, v90);

              v92 = objc_allocWithZone(sub_2304A5A74());
              sub_2304A5A54();

              sub_2304617C4(v91, v90);
              sub_2304A6134();
              v93 = *(v155 + 2);
              sub_2304A6164();
              sub_2304A6174();
              sub_2304A6144();
              v80 = v152;
              v53 = 1 << *(v152 + 32);
              if (v82 >= v53)
              {
                goto LABEL_52;
              }

              v94 = *(v154 + 8 * v84);
              if ((v94 & (1 << v82)) == 0)
              {
                goto LABEL_53;
              }

              if (v56 != *(v152 + 36))
              {
                goto LABEL_54;
              }

              v95 = v94 & (-2 << (v82 & 0x3F));
              if (v95)
              {
                v53 = __clz(__rbit64(v95)) | v82 & 0x7FFFFFFFFFFFFFC0;
                v55 = v151;
                v57 = v145;
                v58 = v149;
              }

              else
              {
                v96 = v84 << 6;
                v97 = v84 + 1;
                v98 = (v131 + 8 * v84);
                v55 = v151;
                v57 = v145;
                v58 = v149;
                while (v97 < (v53 + 63) >> 6)
                {
                  v100 = *v98++;
                  v99 = v100;
                  v96 += 64;
                  ++v97;
                  if (v100)
                  {
                    sub_230433B44(v82, v56, 0);
                    v53 = __clz(__rbit64(v99)) + v96;
                    goto LABEL_37;
                  }
                }

                sub_230433B44(v82, v56, 0);
LABEL_37:
                v80 = v152;
              }

              ++v83;
              v82 = v53;
              v53 = v143;
              v56 = v150;
              if (v83 == v143)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

LABEL_38:

          v59 = v124;
        }

LABEL_9:
        v53 = v148 + 1;
        v60 = v153;
        sub_2304A4A34();
        v61 = objc_allocWithZone(sub_2304A5A34());
        sub_2304A5A14();

        (*v133)(v60, v56);
        sub_2304A6134();
        v62 = *(v156[0] + 16);
        sub_2304A6164();
        sub_2304A6174();
        sub_2304A6144();
        v63 = v138;
        v54 = v142;
        v52 = v135;
        if (v53 == v134)
        {

          v115 = v127;
          v116 = v128;
          goto LABEL_47;
        }
      }

      sub_230464970(v67, &qword_27DB53FE0, &qword_2304A7430);
LABEL_8:
      v59 = 0;
      goto LABEL_9;
    }

    v116 = v128;
    v115 = v127;
    v63 = v138;
    v55 = v151;
    v57 = v145;
LABEL_47:
    (*(v116 + 16))(v121, v115, v123);
    sub_2304A43D4();
    sub_2304A4354();
    sub_2304A43C4();
    sub_2304A43A4();
    (*(v55 + 8))(v57, v63);
    v117 = objc_allocWithZone(sub_2304A5994());
    v118 = sub_2304A5934();

    result = v118;
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v102 = sub_2304A5B74();
    __swift_project_value_buffer(v102, qword_28149B008);
    v103 = v128;
    v104 = v28;
    v105 = v123;
    (*(v128 + 16))(v28, v127, v123);
    v106 = sub_2304A5B54();
    v107 = sub_2304A5E74();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = v103;
      v110 = swift_slowAlloc();
      v156[0] = v110;
      *v108 = 136446210;
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
      v111 = sub_2304A62D4();
      v113 = v112;
      (*(v109 + 8))(v104, v105);
      v114 = sub_23046A5C8(v111, v113, v156);

      *(v108 + 4) = v114;
      _os_log_impl(&dword_230430000, v106, v107, "Failed to find metadata for: %{public}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      MEMORY[0x23191A000](v110, -1, -1);
      MEMORY[0x23191A000](v108, -1, -1);
    }

    else
    {

      (*(v103 + 8))(v28, v105);
    }

LABEL_40:
    result = 0;
  }

  v119 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_230497B9C()
{
  v0 = sub_2304A4FD4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2304A49E4();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_2304A4FE4();
  v14 = sub_2304A4084();
  v15 = *(v14 - 8);
  v16 = 1;
  if ((*(v15 + 48))(v3, 1, v14) != 1)
  {
    (*(v15 + 32))(v11, v3, v14);
    v16 = 0;
  }

  (*(v15 + 56))(v11, v16, 1, v14);
  v17 = MEMORY[0x277D464E0];
  sub_2304A3398(v11, v13, MEMORY[0x277D464E0]);
  sub_2304A4984();
  sub_2304A4FB4();
  sub_2304A4F84();
  sub_2304A4974();

  sub_2304A4FA4();
  sub_2304A3400(v13, v8, v17);
  v18 = sub_2304A4A04();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2304A49B4();
  sub_2304644B0(v13, MEMORY[0x277D464E0]);
  return v21;
}

void sub_230497E44(unint64_t a1, char *a2, uint64_t a3)
{
  v7 = *v3;
  v8 = MEMORY[0x2319199F0]();
  sub_230497EF4(v3, a2, a1, a3, v7, &v9);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_230497EF4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v352 = a6;
  v361 = a5;
  v334 = a4;
  v347 = a3;
  v411 = a2;
  v421 = *MEMORY[0x277D85DE8];
  v355 = sub_2304A4B84();
  v359 = *(v355 - 8);
  v7 = *(v359 + 64);
  MEMORY[0x28223BE20](v355);
  v358 = &v305 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = sub_2304A5C04();
  v327 = *(v356 - 8);
  v9 = *(v327 + 64);
  MEMORY[0x28223BE20](v356);
  v325 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_2304A5C64();
  v324 = *(v326 - 8);
  v11 = *(v324 + 64);
  MEMORY[0x28223BE20](v326);
  v362 = &v305 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_2304A5134();
  v329 = *(v330 - 8);
  v13 = *(v329 + 64);
  MEMORY[0x28223BE20](v330);
  v328 = &v305 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = sub_2304A46F4();
  v332 = *(v333 - 8);
  v15 = *(v332 + 64);
  MEMORY[0x28223BE20](v333);
  v331 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v385 = &v305 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v400 = &v305 - v21;
  v404 = sub_2304A3FC4();
  v402 = *(v404 - 1);
  v22 = *(v402 + 64);
  v23 = MEMORY[0x28223BE20](v404);
  v380 = &v305 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v360 = &v305 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v374 = &v305 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v408 = &v305 - v30;
  MEMORY[0x28223BE20](v29);
  v407 = &v305 - v31;
  v405 = sub_2304A4A64();
  v396 = *(v405 - 8);
  v32 = *(v396 + 64);
  v33 = MEMORY[0x28223BE20](v405);
  v398 = &v305 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v381 = &v305 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v393 = &v305 - v38;
  MEMORY[0x28223BE20](v37);
  v403 = &v305 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB546F0, &unk_2304A7A40);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v338 = &v305 - v42;
  v354 = sub_2304A4084();
  v323 = *(v354 - 8);
  v43 = *(v323 + 64);
  MEMORY[0x28223BE20](v354);
  v365 = &v305 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_2304A4184();
  v368 = *(v367 - 8);
  v45 = *(v368 + 64);
  v46 = MEMORY[0x28223BE20](v367);
  v357 = &v305 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v344 = &v305 - v49;
  MEMORY[0x28223BE20](v48);
  v343 = &v305 - v50;
  v342 = sub_2304A43B4();
  v397 = *(v342 - 8);
  v51 = *(v397 + 64);
  v52 = MEMORY[0x28223BE20](v342);
  v337 = &v305 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v383 = &v305 - v54;
  v351 = sub_2304A5224();
  v350 = *(v351 - 8);
  v55 = *(v350 + 64);
  MEMORY[0x28223BE20](v351);
  v371 = &v305 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_2304A53C4();
  v384 = *(v335 - 8);
  v57 = *(v384 + 64);
  MEMORY[0x28223BE20](v335);
  v336 = &v305 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54828, &qword_2304A8050);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v388 = (&v305 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v61);
  v387 = &v305 - v63;
  v64 = sub_2304A4FD4();
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v370 = &v305 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2304A4FF4();
  v340 = *(v67 - 8);
  v68 = *(v340 + 64);
  v69 = MEMORY[0x28223BE20](v67);
  v71 = &v305 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v69);
  v74 = &v305 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = &v305 - v76;
  MEMORY[0x28223BE20](v75);
  v79 = &v305 - v78;
  v80 = sub_2304A45F4();
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  v84 = (&v305 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  v353 = a1;
  v85 = v412;
  result = sub_23049B2A4(v411, v84);
  if (v85)
  {
    v87 = v85;
    goto LABEL_3;
  }

  v89 = v397;
  v321 = v74;
  v322 = v77;
  v341 = v71;
  v386 = 0;
  v366 = v79;
  v364 = v67;
  v319 = v84;
  v318 = v80;
  v320 = v81;
  v414 = MEMORY[0x277D84F90];
  v90 = v347;
  if (v347 >> 62)
  {
    goto LABEL_135;
  }

  for (i = *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2304A6044())
  {
    v92 = v384;
    v93 = v370;
    v94 = v405;
    v95 = v400;
    v392 = (v353 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
    if (i)
    {
      v96 = v89;
      v89 = 0;
      v314 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
      v97 = v90 & 0xC000000000000001;
      v316 = v90 & 0xFFFFFFFFFFFFFF8;
      v315 = v90 + 32;
      v346 = (v340 + 8);
      v313 = v350 + 16;
      v410 = (v396 + 8);
      v411 = (v396 + 16);
      v406 = (v402 + 48);
      v409 = (v402 + 32);
      v401 = (v402 + 16);
      v399 = v402 + 8;
      v372 = (v402 + 56);
      v349 = v396 + 32;
      v348 = v396 + 40;
      v309 = (v96 + 16);
      v308 = (v368 + 16);
      v307 = v368 + 8;
      v306 = (v96 + 8);
      v312 = (v350 + 8);
      v98 = MEMORY[0x277D84F98];
      v305 = v368 + 32;
      v395 = MEMORY[0x277D84F98];
      v345 = MEMORY[0x277D84F90];
      v382 = MEMORY[0x277D84F90];
      v412 = MEMORY[0x277D84F90];
      v311 = i;
      v310 = v90 & 0xC000000000000001;
      while (1)
      {
        v390 = v98;
        if (v97)
        {
          v100 = MEMORY[0x231919680](v89, v90);
          v99 = v404;
          v101 = __OFADD__(v89++, 1);
          if (v101)
          {
            goto LABEL_133;
          }
        }

        else
        {
          v99 = v404;
          if (v89 >= *(v316 + 16))
          {
            goto LABEL_134;
          }

          v100 = *(v315 + 8 * v89);
          v101 = __OFADD__(v89++, 1);
          if (v101)
          {
            goto LABEL_133;
          }
        }

        v317 = v89;
        v102 = v366;
        v103 = v100;
        sub_2304A5944();
        sub_2304A4FE4();
        v339 = *v346;
        v339(v102, v364);
        v104 = sub_2304A4FC4();
        sub_2304644B0(v93, MEMORY[0x277D46780]);
        if ((v104 & 1) == 0)
        {
          break;
        }

        v105 = v322;
        sub_2304A5944();
        v106 = v386;
        v397 = sub_23049C0B0();
        if (v106)
        {

          v296 = v364;
          v297 = v339;
          v339(v105, v364);

          aBlock = 0;
          v416 = 0xE000000000000000;
          sub_2304A6104();

          aBlock = 0xD00000000000002CLL;
          v416 = 0x80000002304A9770;
          v298 = v366;
          sub_2304A5944();
          sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
          v299 = sub_2304A62D4();
          MEMORY[0x2319192E0](v299);

          v297(v298, v296);
          sub_23049BBDC(v382, aBlock, v416);

          v295 = MEMORY[0x277D468D0];
          goto LABEL_123;
        }

        v386 = 0;
        v107 = v105;
        v108 = v339;
        v339(v107, v364);
        v109 = sub_2304A5244();
        v110 = v321;
        v369 = v103;
        sub_2304A5944();
        v111 = sub_2304A4FB4();
        v113 = v112;
        v108(v110, v364);
        if (!*(v109 + 16))
        {

          goto LABEL_126;
        }

        v114 = sub_230469C40(v111, v113);
        v116 = v115;

        if ((v116 & 1) == 0)
        {

LABEL_126:

          v300 = v339;

          aBlock = 0;
          v416 = 0xE000000000000000;
          sub_2304A6104();

          aBlock = 0xD000000000000028;
          v416 = 0x80000002304A97A0;
          v301 = v366;
          v302 = v369;
          sub_2304A5944();
          sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
          v303 = v364;
          v304 = sub_2304A62D4();
          MEMORY[0x2319192E0](v304);

          v300(v301, v303);
          sub_23049BBDC(v382, aBlock, v416);

          (*(v384 + 104))(v336, *MEMORY[0x277D468D0], v335);
          sub_2304A53E4();
          sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
          v87 = swift_allocError();
          sub_2304A53D4();
          swift_willThrow();

LABEL_127:
          (*(v320 + 8))(v319, v318);

LABEL_3:
          *v352 = v87;
          goto LABEL_4;
        }

        (*(v350 + 16))(v371, *(v109 + 56) + *(v350 + 72) * v114, v351);

        v117 = sub_2304A5964();
        v363 = v117;
        if (v117 >> 62)
        {
          v89 = sub_2304A6044();
        }

        else
        {
          v89 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v118 = v384;
        v119 = v383;
        v120 = v395;
        v121 = v390;
        if (v89)
        {
          v122 = 0;
          v377 = v363 & 0xC000000000000001;
          v376 = v363 & 0xFFFFFFFFFFFFFF8;
          v375 = v363 + 32;
          v90 = v395;
          v373 = v89;
          while (1)
          {
            v390 = v121;
            v379 = v90;
            if (v377)
            {
              v123 = MEMORY[0x231919680](v122, v363);
            }

            else
            {
              if (v122 >= *(v376 + 16))
              {
                goto LABEL_130;
              }

              v123 = *(v375 + 8 * v122);
            }

            v124 = v123;
            v101 = __OFADD__(v122, 1);
            v125 = v122 + 1;
            if (v101)
            {
              goto LABEL_129;
            }

            v394 = sub_2304A5A04();
            v395 = v126;
            if (v126 >> 60 == 15)
            {

              aBlock = 0;
              v416 = 0xE000000000000000;
              sub_2304A6104();
              MEMORY[0x2319192E0](0xD000000000000032, 0x80000002304A97D0);
              v241 = v366;
              v242 = v369;
              sub_2304A5944();
              sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
              v243 = v124;
              v244 = v364;
              v245 = sub_2304A62D4();
              MEMORY[0x2319192E0](v245);

              v339(v241, v244);
              sub_23049BBDC(v382, aBlock, v416);

              (*(v118 + 104))(v336, *MEMORY[0x277D468D0], v335);
              sub_2304A53E4();
              sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
              v87 = swift_allocError();
              sub_2304A53D4();
              swift_willThrow();

              (*v312)(v371, v351);
              goto LABEL_127;
            }

            v389 = v125;
            v127 = v392[4];
            __swift_project_boxed_opaque_existential_5Tm(v392, v392[3]);
            v128 = sub_2304A5324();
            v129 = v128[2];
            v391 = v124;
            if (v129)
            {
              v130 = (*(v396 + 80) + 32) & ~*(v396 + 80);
              v378 = v128;
              v131 = v128 + v130;
              v132 = *(v396 + 72);
              v133 = *(v396 + 16);
              v134 = v403;
              v133(v403, v128 + v130, v94);
              while (1)
              {
                sub_2304A4A44();
                (*v410)(v134, v94);
                if ((*v406)(v95, 1, v99) == 1)
                {
                  sub_230464970(v95, &qword_27DB53FE0, &qword_2304A7430);
                }

                else
                {
                  v135 = *v409;
                  v136 = v407;
                  (*v409)(v407, v95, v99);
                  (*v401)(v408, v136, v99);
                  v137 = v412;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v137 = sub_23045A040(0, v137[2] + 1, 1, v137);
                  }

                  v139 = v137[2];
                  v138 = v137[3];
                  v412 = v139 >= v138 >> 1 ? sub_23045A040(v138 > 1, v139 + 1, 1, v137) : v137;
                  v140 = v402;
                  v99 = v404;
                  (*(v402 + 8))(v407, v404);
                  v141 = v412;
                  v412[2] = v139 + 1;
                  v135(v141 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v139, v408, v99);
                  v94 = v405;
                  v95 = v400;
                  v134 = v403;
                }

                v131 += v132;
                if (!--v129)
                {
                  break;
                }

                v133(v134, v131, v94);
              }

              v124 = v391;
            }

            else
            {
            }

            v142 = sub_2304A59E4();
            v143 = v385;
            v144 = v393;
            if (!v142)
            {
              goto LABEL_51;
            }

            v145 = v142;
            v146 = sub_2304A59F4();
            if (!v146)
            {
              break;
            }

            v147 = v146;
            v148 = v369;
            v149 = v386;
            v150 = sub_2304A386C(MEMORY[0x277D84F98], v147, sub_23049BBDC, 0, &v414, v148);
            v87 = v149;
            if (v149)
            {

              sub_23049488C(v394, v395);
              (*v312)(v371, v351);
              (*(v320 + 8))(v319, v318);

              goto LABEL_3;
            }

            v151 = v150;
            v386 = 0;
            v152 = v145;

            v153 = v148;
            v154 = sub_23049C2F4(v151);

            v155 = sub_2304A51D4();
            v156 = v374;
            v378 = v152;
            v157 = v386;
            sub_23049C564(v152, v154, v155 & 1, v374);
            v386 = v157;
            if (v157)
            {

              if (qword_281499E38 != -1)
              {
                swift_once();
              }

              v260 = sub_2304A5B74();
              __swift_project_value_buffer(v260, qword_28149B008);
              v261 = v153;
              v262 = v386;
              v263 = v386;
              v264 = v262;
              v265 = sub_2304A5B54();
              v266 = sub_2304A5E74();

              v267 = os_log_type_enabled(v265, v266);
              v268 = v364;
              if (v267)
              {
                v269 = swift_slowAlloc();
                v411 = swift_slowAlloc();
                v412 = swift_slowAlloc();
                aBlock = v412;
                *v269 = 136446466;
                v270 = v366;
                v271 = v261;
                v272 = v264;
                sub_2304A5944();
                sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
                v273 = sub_2304A62D4();
                v275 = v274;
                v339(v270, v268);
                v276 = sub_23046A5C8(v273, v275, &aBlock);

                *(v269 + 4) = v276;
                *(v269 + 12) = 2114;
                v277 = v272;
                v261 = v271;
                v278 = _swift_stdlib_bridgeErrorToNSError();
                *(v269 + 14) = v278;
                v279 = v411;
                *v411 = v278;
                _os_log_impl(&dword_230430000, v265, v266, "Failed to ingest file handle: %{public}s; error: %{public}@", v269, 0x16u);
                sub_230464970(v279, &qword_27DB53F30, &qword_2304A7390);
                MEMORY[0x23191A000](v279, -1, -1);
                v280 = v412;
                __swift_destroy_boxed_opaque_existential_0Tm(v412);
                MEMORY[0x23191A000](v280, -1, -1);
                MEMORY[0x23191A000](v269, -1, -1);

                v281 = v320;
                v282 = v319;
              }

              else
              {

                v281 = v320;
                v282 = v319;
                v270 = v366;
              }

              v287 = v336;
              v288 = v335;
              aBlock = 0;
              v416 = 0xE000000000000000;
              sub_2304A6104();

              aBlock = 0xD00000000000001ELL;
              v416 = 0x80000002304A9810;
              sub_2304A5944();
              sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
              v289 = sub_2304A62D4();
              MEMORY[0x2319192E0](v289);

              v339(v270, v268);
              sub_23049BBDC(v382, aBlock, v416);

              (*(v384 + 104))(v287, *MEMORY[0x277D468D0], v288);
              sub_2304A53E4();
              sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
              v290 = swift_allocError();
              sub_2304A53D4();
              swift_willThrow();

              sub_23049488C(v394, v395);
              (*v312)(v371, v351);
              v291 = v282;
              v87 = v290;
              (*(v281 + 8))(v291, v318);

              goto LABEL_3;
            }

            v158 = *v401;
            v159 = v360;
            (*v401)(v360, v156, v99);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v382 = sub_23045A040(0, v382[2] + 1, 1, v382);
            }

            v160 = v402;
            v161 = v385;
            v163 = v382[2];
            v162 = v382[3];
            if (v163 >= v162 >> 1)
            {
              v382 = sub_23045A040(v162 > 1, v163 + 1, 1, v382);
            }

            v164 = v382;
            v382[2] = v163 + 1;
            v165 = v404;
            (*(v160 + 32))(v164 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v163, v159, v404);
            v414 = v164;
            v99 = v165;
            v379 = sub_2304A5A24();
            v166 = v374;
            (v158)(v161, v374, v99);
            (*(v160 + 56))(v161, 0, 1, v99);
            sub_2304A3470(v394, v395);
            v144 = v393;
            sub_2304A4A24();

            v124 = v391;
            (*(v160 + 8))(v166, v99);
LABEL_52:
            v167 = v381;
            (*v411)(v381, v144, v94);
            v168 = v397;

            v90 = v390;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v90;
            v170 = v168;
            v89 = v90;
            v171 = sub_23046A130(v170);
            v173 = *(v90 + 16);
            v174 = (v172 & 1) == 0;
            v101 = __OFADD__(v173, v174);
            v175 = v173 + v174;
            if (v101)
            {
              goto LABEL_131;
            }

            v176 = v172;
            if (*(v90 + 24) >= v175)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v180 = v171;
                sub_230472954();
                v171 = v180;
              }
            }

            else
            {
              sub_2304709D8(v175, isUniquelyReferenced_nonNull_native);
              v171 = sub_23046A130(v397);
              if ((v176 & 1) != (v177 & 1))
              {
                sub_2304A4A04();
                sub_2304A6314();
                __break(1u);
                goto LABEL_136;
              }
            }

            v89 = v393;
            v122 = v389;
            v90 = aBlock;
            if (v176)
            {
              (*(v396 + 40))(aBlock[7] + *(v396 + 72) * v171, v167, v94);
            }

            else
            {
              aBlock[(v171 >> 6) + 8] |= 1 << v171;
              *(*(v90 + 48) + 8 * v171) = v397;
              (*(v396 + 32))(*(v90 + 56) + *(v396 + 72) * v171, v167, v94);
              v178 = *(v90 + 16);
              v101 = __OFADD__(v178, 1);
              v179 = v178 + 1;
              if (v101)
              {
                goto LABEL_132;
              }

              *(v90 + 16) = v179;
            }

            sub_23049488C(v394, v395);
            (*v410)(v89, v94);
            v121 = v90;
            v120 = v90;
            v89 = v373;
            v118 = v384;
            v119 = v383;
            if (v122 == v373)
            {
              goto LABEL_63;
            }
          }

LABEL_51:
          sub_2304A5A24();
          (*v372)(v143, 1, 1, v99);
          sub_2304A3470(v394, v395);
          sub_2304A4A24();
          goto LABEL_52;
        }

        v90 = v390;
LABEL_63:
        v379 = v90;
        v395 = v120;

        sub_2304A5974();
        sub_2304A4394();

        v181 = v366;
        sub_2304A5944();
        v394 = sub_2304A4FA4();
        v339(v181, v364);
        sub_2304A5984();
        sub_2304A5924();
        (*v309)(v337, v119, v342);
        v182 = v343;
        sub_2304A4164();
        v183 = v367;
        (*v308)(v344, v182, v367);
        v184 = v345;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_23045A068(0, v184[2] + 1, 1, v184);
        }

        v93 = v370;
        v186 = v184[2];
        v185 = v184[3];
        v92 = v384;
        v187 = v342;
        if (v186 >= v185 >> 1)
        {
          v345 = sub_23045A068(v185 > 1, v186 + 1, 1, v184);
        }

        else
        {
          v345 = v184;
        }

        v188 = v368;
        (*(v368 + 8))(v343, v183);
        (*v306)(v383, v187);
        (*v312)(v371, v351);
        v189 = v345;
        *(v345 + 16) = v186 + 1;
        (*(v188 + 32))(v189 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v186, v344, v183);
        v98 = v379;
        v89 = v317;
        v90 = v347;
        v97 = v310;
        if (v317 == v311)
        {
          goto LABEL_75;
        }
      }

      aBlock = 0;
      v416 = 0xE000000000000000;
      sub_2304A6104();

      aBlock = 0xD000000000000027;
      v416 = 0x80000002304A9740;
      v292 = v366;
      sub_2304A5944();
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
      v293 = v364;
      v294 = sub_2304A62D4();
      MEMORY[0x2319192E0](v294);

      v339(v292, v293);
      sub_23049BBDC(v382, aBlock, v416);

      v295 = MEMORY[0x277D468C0];
LABEL_123:
      (*(v92 + 104))(v336, *v295, v335);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
      v87 = swift_allocError();
      sub_2304A53D4();
      swift_willThrow();

      goto LABEL_127;
    }

    v395 = MEMORY[0x277D84F98];
    v345 = MEMORY[0x277D84F90];
    v412 = MEMORY[0x277D84F90];
    v382 = MEMORY[0x277D84F90];
LABEL_75:
    v190 = *(v395 + 64);
    v408 = (v395 + 64);
    v191 = 1 << *(v395 + 32);
    v192 = -1;
    if (v191 < 64)
    {
      v192 = ~(-1 << v191);
    }

    v193 = v192 & v190;
    v194 = (v191 + 63) >> 6;
    v195 = (v396 + 32);
    v410 = (v396 + 16);
    v411 = (v396 + 8);

    v196 = 0;
    v409 = v195;
    if (v193)
    {
      break;
    }

LABEL_79:
    if (v194 <= (v196 + 1))
    {
      v198 = v196 + 1;
    }

    else
    {
      v198 = v194;
    }

    v90 = v198 - 1;
    while (1)
    {
      v197 = v196 + 1;
      if (__OFADD__(v196, 1))
      {
        break;
      }

      if (v197 >= v194)
      {
        v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
        v214 = v388;
        (*(*(v213 - 8) + 56))(v388, 1, 1, v213);
        v208 = v214;
        v193 = 0;
        goto LABEL_87;
      }

      v193 = *&v408[8 * v197];
      ++v196;
      if (v193)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    ;
  }

  while (1)
  {
    v197 = v196;
LABEL_86:
    v199 = __clz(__rbit64(v193));
    v193 &= v193 - 1;
    v200 = v199 | (v197 << 6);
    v201 = *(*(v395 + 48) + 8 * v200);
    v202 = v396;
    v203 = v398;
    (*(v396 + 16))(v398, *(v395 + 56) + *(v396 + 72) * v200, v94);
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
    v205 = *(v204 + 48);
    v206 = v388;
    *v388 = v201;
    v207 = v203;
    v195 = v409;
    (*(v202 + 32))(&v206[v205], v207, v94);
    (*(*(v204 - 8) + 56))(v206, 0, 1, v204);

    v90 = v197;
    v208 = v206;
LABEL_87:
    v209 = v387;
    sub_230464ABC(v208, v387, &qword_27DB54828, &qword_2304A8050);
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54830, &unk_2304A8058);
    if ((*(*(v210 - 8) + 48))(v209, 1, v210) == 1)
    {
      break;
    }

    v211 = *v209;
    (*v195)(v398, &v209[*(v210 + 48)], v94);
    v212 = v392[4];
    v89 = __swift_project_boxed_opaque_existential_5Tm(v392, v392[3]);
    v94 = v405;
    sub_2304A5354();

    (*v411)(v398, v94);
    v196 = v90;
    if (!v193)
    {
      goto LABEL_79;
    }
  }

  v215 = v412;
  v216 = v412[2];
  if (v216)
  {
    v217 = objc_opt_self();
    v218 = v402 + 16;
    v410 = *(v402 + 16);
    v411 = v217;
    v219 = v215 + ((*(v402 + 80) + 32) & ~*(v402 + 80));
    v220 = *(v402 + 72);
    v221 = (v402 + 8);
    v222 = v380;
    do
    {
      v225 = v404;
      v226 = v218;
      (v410)(v222, v219, v404);
      v227 = [v411 defaultManager];
      v228 = sub_2304A3F54();
      (*v221)(v222, v225);
      aBlock = 0;
      LODWORD(v225) = [v227 removeItemAtURL:v228 error:&aBlock];

      if (v225)
      {
        v229 = aBlock;
      }

      else
      {
        v223 = aBlock;
        v224 = sub_2304A3F24();

        swift_willThrow();
        v386 = 0;
      }

      v219 += v220;
      --v216;
      v218 = v226;
      v222 = v380;
    }

    while (v216);
  }

  v230 = *(v353 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24);
  v411 = *(v353 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 32);
  __swift_project_boxed_opaque_existential_5Tm((v353 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), v230);
  v231 = v329;
  v232 = v328;
  v233 = v330;
  (*(v329 + 16))(v328, v334, v330);
  v234 = (*(v231 + 88))(v232, v233);
  if (v234 == *MEMORY[0x277D46828])
  {
    v235 = v331;
    sub_2304A46E4();
    v236 = v320;
    v237 = v362;
    v238 = v333;
    v239 = v332;
    v240 = v345;
    goto LABEL_102;
  }

  v236 = v320;
  v237 = v362;
  v238 = v333;
  v239 = v332;
  v235 = v331;
  v240 = v345;
  if (v234 == *MEMORY[0x277D46820])
  {
    sub_2304A46D4();
LABEL_102:
    v246 = v319;
    v247 = v386;
    sub_2304A4234();
    v386 = v247;
    if (v247)
    {
      (*(v239 + 8))(v235, v238);
      (*(v236 + 8))(v246, v318);

      v87 = v386;
      goto LABEL_3;
    }

    (*(v239 + 8))(v235, v238);
    v248 = *(v240 + 16);
    if (v248)
    {
      v406 = *(v368 + 16);
      v249 = (v240 + ((*(v368 + 80) + 32) & ~*(v368 + 80)));
      v405 = *(v368 + 72);
      v404 = (v323 + 56);
      v402 = v340 + 8;
      v403 = (v340 + 16);
      v401 = (v368 + 8);
      v400 = (v359 + 32);
      v250 = MEMORY[0x277D84F90];
      v251 = v364;
      v252 = v357;
      v253 = v341;
      v368 += 16;
      do
      {
        v410 = v249;
        v411 = v248;
        v406(v252);
        sub_2304A4174();
        v254 = sub_2304A49C4();
        v408 = v255;
        v409 = v254;

        sub_2304A4174();
        sub_2304A49D4();

        v407 = sub_2304A4964();

        sub_2304A4174();
        sub_2304A49D4();

        sub_2304A4954();

        (*v404)(v370, 1, 1, v354);
        sub_2304A4F94();
        (*v403)(v366, v253, v251);
        sub_2304A4154();
        sub_2304A4B74();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v250 = sub_230459CE0(0, v250[2] + 1, 1, v250);
        }

        v257 = v250[2];
        v256 = v250[3];
        v258 = v356;
        v237 = v362;
        v259 = v367;
        v253 = v341;
        if (v257 >= v256 >> 1)
        {
          v250 = sub_230459CE0(v256 > 1, v257 + 1, 1, v250);
        }

        (*v402)(v253, v251);
        v252 = v357;
        (*v401)(v357, v259);
        v250[2] = v257 + 1;
        (*(v359 + 32))(v250 + ((*(v359 + 80) + 32) & ~*(v359 + 80)) + *(v359 + 72) * v257, v358, v355);
        v249 = &v410[v405];
        v248 = v411 - 1;
      }

      while (v411 != 1);
    }

    else
    {
      v258 = v356;
      v250 = MEMORY[0x277D84F90];
    }

    v283 = v353;
    v412 = *(v353 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
    v284 = swift_allocObject();
    *(v284 + 16) = v283;
    *(v284 + 24) = v250;
    v419 = sub_2304A3DF8;
    v420 = v284;
    aBlock = MEMORY[0x277D85DD0];
    v416 = 1107296256;
    v417 = sub_2304699EC;
    v418 = &block_descriptor_21;
    v285 = _Block_copy(&aBlock);

    sub_2304A5C34();
    v413 = MEMORY[0x277D84F90];
    sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
    sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
    v286 = v325;
    sub_2304A5FA4();
    MEMORY[0x231919460](0, v237, v286, v285);
    _Block_release(v285);
    (*(v327 + 8))(v286, v258);
    (*(v324 + 8))(v237, v326);
    (*(v320 + 8))(v319, v318);

LABEL_4:
    v88 = *MEMORY[0x277D85DE8];
  }

  else
  {
LABEL_136:
    result = sub_2304A6254();
    __break(1u);
  }

  return result;
}

uint64_t sub_23049B2A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_2304A53C4();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A4BF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = sub_2304A5394();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A51F4();
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D468A8])
  {
    (*(v7 + 16))(v11, a1, v6);
    v20 = (*(v7 + 88))(v11, v6);
    if (v20 == *MEMORY[0x277D46558])
    {
      (*(v7 + 96))(v11, v6);
      v21 = v44;
      *v44 = *v11;
      v22 = *MEMORY[0x277D463D8];
      v23 = sub_2304A45F4();
      return (*(*(v23 - 8) + 104))(v21, v22, v23);
    }

    if (v20 != *MEMORY[0x277D46560])
    {
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v30 = sub_2304A5B74();
      __swift_project_value_buffer(v30, qword_28149B008);
      v31 = sub_2304A5B54();
      v32 = sub_2304A5E74();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_230430000, v31, v32, "Unknown destination", v33, 2u);
        MEMORY[0x23191A000](v33, -1, -1);
      }

      (*(v45 + 104))(v47, *MEMORY[0x277D468D0], v46);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      return (*(v7 + 8))(v11, v6);
    }

LABEL_23:
    v38 = *MEMORY[0x277D463E0];
    v39 = sub_2304A45F4();
    return (*(*(v39 - 8) + 104))(v44, v38, v39);
  }

  if (v19 == *MEMORY[0x277D46898])
  {
    (*(v7 + 16))(v13, a1, v6);
    v25 = (*(v7 + 88))(v13, v6);
    if (v25 == *MEMORY[0x277D46558])
    {
      (*(v7 + 8))(v13, v6);
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v26 = sub_2304A5B74();
      __swift_project_value_buffer(v26, qword_28149B008);
      v27 = sub_2304A5B54();
      v28 = sub_2304A5E74();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        MEMORY[0x23191A000](v29, -1, -1);
      }

      (*(v45 + 104))(v47, *MEMORY[0x277D468D0], v46);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
      swift_allocError();
      sub_2304A53D4();
      return swift_willThrow();
    }

    else
    {
      if (v25 == *MEMORY[0x277D46560])
      {
        goto LABEL_23;
      }

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v40 = sub_2304A5B74();
      __swift_project_value_buffer(v40, qword_28149B008);
      v41 = sub_2304A5B54();
      v42 = sub_2304A5E74();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_230430000, v41, v42, "Unknown destination", v43, 2u);
        MEMORY[0x23191A000](v43, -1, -1);
      }

      (*(v45 + 104))(v47, *MEMORY[0x277D468D0], v46);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      return (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v34 = sub_2304A5B74();
    __swift_project_value_buffer(v34, qword_28149B008);
    v35 = sub_2304A5B54();
    v36 = sub_2304A5E74();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_230430000, v35, v36, "Unknown publication method", v37, 2u);
      MEMORY[0x23191A000](v37, -1, -1);
    }

    (*(v45 + 104))(v47, *MEMORY[0x277D468D0], v46);
    sub_2304A53E4();
    sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    return (*(v15 + 8))(v18, v14);
  }
}

void sub_23049BBDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a1;
  v57[1] = *MEMORY[0x277D85DE8];
  v55 = sub_2304A3FC4();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v55);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v12 = sub_2304A5B74();
  v13 = __swift_project_value_buffer(v12, qword_28149B008);

  v54 = v13;
  v14 = sub_2304A5B54();
  v15 = sub_2304A5E74();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v11;
    v17 = v9;
    v18 = swift_slowAlloc();
    v19 = v5;
    v20 = swift_slowAlloc();
    v57[0] = v20;
    *v18 = 136446210;
    *(v18 + 4) = sub_23046A5C8(a2, a3, v57);
    _os_log_impl(&dword_230430000, v14, v15, "%{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    v21 = v20;
    v5 = v19;
    MEMORY[0x23191A000](v21, -1, -1);
    v22 = v18;
    v9 = v17;
    v11 = v16;
    MEMORY[0x23191A000](v22, -1, -1);
  }

  v23 = v55;
  v24 = *(v56 + 16);
  if (v24)
  {
    v25 = objc_opt_self();
    v27 = *(v5 + 16);
    v26 = v5 + 16;
    v51 = v27;
    v52 = v25;
    v28 = (v56 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v50 = *(v26 + 56);
    v56 = v26 - 8;
    *&v29 = 136446210;
    v48 = v29;
    v49 = v26;
    v53 = v11;
    do
    {
      v31 = v51;
      v51(v11, v28, v23);
      v31(v9, v11, v23);
      v32 = sub_2304A5B54();
      v33 = v9;
      v34 = sub_2304A5E74();
      if (os_log_type_enabled(v32, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v57[0] = v36;
        *v35 = v48;
        sub_2304A3E00(&qword_28149AC60, MEMORY[0x277CC9260]);
        v37 = sub_2304A62D4();
        v39 = v38;
        v40 = *v56;
        (*v56)(v33, v55);
        v41 = sub_23046A5C8(v37, v39, v57);
        v23 = v55;

        *(v35 + 4) = v41;
        _os_log_impl(&dword_230430000, v32, v34, "Removing URL: %{public}s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v36);
        MEMORY[0x23191A000](v36, -1, -1);
        MEMORY[0x23191A000](v35, -1, -1);
      }

      else
      {

        v40 = *v56;
        (*v56)(v33, v23);
      }

      v9 = v33;
      v42 = [v52 defaultManager];
      v11 = v53;
      v43 = sub_2304A3F54();
      v57[0] = 0;
      v44 = [v42 removeItemAtURL:v43 error:v57];

      if (v44)
      {
        v30 = v57[0];
      }

      else
      {
        v45 = v57[0];
        v46 = sub_2304A3F24();

        swift_willThrow();
      }

      v40(v11, v23);
      v28 += v50;
      --v24;
    }

    while (v24);
  }

  v47 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23049C0B0()
{
  v2 = sub_2304A49E4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = sub_2304A4084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230497B9C();
  if (!v1)
  {
    v20[0] = sub_2304A4FA4();
    v20[1] = v14;
    sub_2304A4344();

    sub_2304A4044();
    v20[3] = v16;
    (*(v10 + 8))(v13, v9);
    sub_2304A49D4();
    sub_2304A49F4();
    sub_2304A3400(v8, v6, MEMORY[0x277D464E0]);
    v17 = sub_2304A4A04();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v0 = sub_2304A49B4();

    sub_2304644B0(v8, MEMORY[0x277D464E0]);
  }

  return v0;
}

unint64_t sub_23049C2F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54178, &qword_2304A7530);
    v2 = sub_2304A62A4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        sub_230474E48(v24, *(&v24 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54838, &qword_2304A8068);
        swift_dynamicCast();
        sub_230464AA4(v25, v27);
        sub_230464AA4(v27, v28);
        sub_230464AA4(v28, &v26);
        result = sub_230469C40(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 48 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_230464AA4(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_230464AA4(&v26, (v2[7] + 48 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23049C564@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v47 = a3;
  v48 = a2;
  v49 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v46 = sub_2304A3F34();
  v44 = *(v46 - 8);
  v6 = *(v44 + 8);
  MEMORY[0x28223BE20](v46);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A3FC4();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = v37 - v13;
  v14 = sub_2304A4084();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E48 != -1)
  {
    swift_once();
  }

  v18 = sub_2304A5B74();
  __swift_project_value_buffer(v18, qword_28149B020);
  v19 = sub_2304A5B54();
  v20 = sub_2304A5E94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a4;
    v22 = v17;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_230430000, v19, v20, "Ingesting file handle", v23, 2u);
    v24 = v23;
    v17 = v22;
    a4 = v21;
    MEMORY[0x23191A000](v24, -1, -1);
  }

  sub_2304A4074();
  sub_23048BD04(v12);
  if (v4)
  {
    goto LABEL_12;
  }

  v42 = v14;
  v53 = 0x7364726F636572;
  v54 = 0xE700000000000000;
  v39 = *MEMORY[0x277CC91D8];
  v43 = a4;
  v26 = v44;
  v25 = v45;
  v38 = *(v44 + 13);
  v27 = v46;
  v38(v45);
  v37[1] = sub_2304645C4();
  sub_2304A3FB4();
  v37[0] = *(v26 + 1);
  (v37[0])(v25, v27);
  v40 = *(v52 + 8);
  v41 = v8;
  v52 += 8;
  v40(v12, v8);
  v44 = v17;
  v53 = sub_2304A4044();
  v54 = v28;
  (v38)(v25, v39, v27);
  v29 = v43;
  sub_2304A3FB4();
  (v37[0])(v25, v27);

  v30 = v49;
  if (v47)
  {
    sub_2304A5E44();
  }

  else
  {
    sub_2304A5E54();
  }

  v14 = v42;
  v31 = v41;
  v53 = 0;
  if (([v30 closeAndReturnError_] & 1) == 0)
  {
    v34 = v53;
    sub_2304A3F24();

    swift_willThrow();
    v35 = v40;
    v40(v29, v31);
    v35(v51, v31);
    v17 = v44;
LABEL_12:
    result = (*(v50 + 8))(v17, v14);
    goto LABEL_13;
  }

  v32 = v53;
  v40(v51, v31);
  result = (*(v50 + 8))(v44, v14);
LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23049CABC(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  v6 = sub_2304A5284();
  v8 = v7;
  v9 = sub_2304A5264();
  (*(v5 + 8))(a2, MEMORY[0x277D84F90], v6, v8, v9, v10, v4, v5);
}

unint64_t sub_23049CBD8(const char *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v40 = a2;
  v4 = v2;
  v5 = sub_2304A46F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v10 = sub_2304A5B74();
  v11 = __swift_project_value_buffer(v10, qword_28149B008);

  v12 = sub_2304A5B54();
  v13 = sub_2304A5E74();

  v14 = os_log_type_enabled(v12, v13);
  v15 = &unk_28149B000;
  v39 = v5;
  v38[0] = v11;
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41[0] = v17;
    *v16 = 136446466;
    v18 = sub_2304A5284();
    v20 = a1;
    v21 = sub_23046A5C8(v18, v19, v41);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_2304A5214();
    v24 = sub_23046A5C8(v22, v23, v41);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_230430000, v12, v13, v20, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191A000](v17, -1, -1);
    v25 = v16;
    v15 = &unk_28149B000;
    MEMORY[0x23191A000](v25, -1, -1);
  }

  sub_2304A4984();
  v26 = v4 + v15[15];
  sub_2304A5214();
  v38[1] = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  sub_2304A5284();
  v27 = sub_2304A4974();

  v28 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24);
  v29 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), v28);
  result = v40(v27, v28, v29);
  v31 = result;
  if (!(result >> 62))
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_14:
    v35 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 32);
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
    sub_2304A46E4();
    sub_2304A4284();
    (*(v6 + 8))(v9, v39);

    v36 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster + 32);
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster + 24));
    v37 = sub_2304A5264();
    (*(v36 + 8))(v37);
  }

  result = sub_2304A6044();
  v32 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v32 >= 1)
  {
    for (i = 0; i != v32; ++i)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x231919680](i, v31);
      }

      else
      {
        v34 = *(v31 + 8 * i + 32);
      }

      sub_23049D110(v34);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_23049D110(uint64_t a1)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2304A3FC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v53 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v43 - v8;
  v10 = (v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
  v11 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  v12 = sub_2304A5334();
  v13 = *(v12 + 16);
  if (v13)
  {
    v44 = v10;
    v45 = a1;
    v14 = objc_opt_self();
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v17 = *(v15 + 64);
    v43[1] = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v55 = *(v15 + 56);
    v56 = v16;
    v54 = (v15 - 8);
    *&v19 = 136446210;
    v46 = v19;
    v20 = v53;
    v47 = v15;
    v51 = v9;
    v52 = v14;
    v16(v9, v18, v3);
    while (1)
    {
      v23 = [v14 defaultManager];
      v24 = sub_2304A3F54();
      v57[0] = 0;
      v25 = [v23 removeItemAtURL:v24 error:v57];

      if (v25)
      {
        v21 = *v54;
        v22 = v57[0];
        v21(v9, v3);
      }

      else
      {
        v26 = v57[0];
        v27 = sub_2304A3F24();

        swift_willThrow();
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v28 = sub_2304A5B74();
        __swift_project_value_buffer(v28, qword_28149B008);
        v56(v20, v9, v3);
        v29 = sub_2304A5B54();
        v30 = sub_2304A5E74();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v50 = v27;
          v32 = v31;
          v49 = swift_slowAlloc();
          v57[0] = v49;
          *v32 = v46;
          sub_2304A3E00(&qword_28149AC60, MEMORY[0x277CC9260]);
          v33 = sub_2304A62D4();
          v34 = v3;
          v36 = v35;
          v48 = *v54;
          v48(v53, v34);
          v37 = sub_23046A5C8(v33, v36, v57);
          v3 = v34;
          v20 = v53;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_230430000, v29, v30, "Failed to delete URL: %{public}s", v32, 0xCu);
          v38 = v49;
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x23191A000](v38, -1, -1);
          MEMORY[0x23191A000](v32, -1, -1);

          v48(v51, v3);
          v9 = v51;
          v14 = v52;
        }

        else
        {

          v39 = *v54;
          (*v54)(v20, v3);
          v39(v9, v3);
          v14 = v52;
        }
      }

      v18 += v55;
      if (!--v13)
      {
        break;
      }

      v56(v9, v18, v3);
    }

    v10 = v44;
  }

  else
  {
  }

  v40 = v10[4];
  __swift_project_boxed_opaque_existential_5Tm(v10, v10[3]);
  result = sub_2304A5344();
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23049D5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v118 = a2;
  v5 = sub_2304A5C04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A5C64();
  v108 = *(v10 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v10);
  v107 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_2304A5134();
  v115 = *(v116 - 8);
  v13 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v114 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2304A46F4();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  MEMORY[0x28223BE20](v15);
  v117 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_2304A53C4();
  v111 = *(v112 - 8);
  v18 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2304A49E4();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v127 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v131 = &v101 - v26;
  MEMORY[0x28223BE20](v25);
  v126 = &v101 - v27;
  v28 = sub_2304A4FD4();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v130 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v101 - v32;
  v34 = sub_2304A4FF4();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v110 = &v101 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v42 = &v101 - v39;
  v135 = MEMORY[0x277D84F90];
  v43 = *(a1 + 16);
  v109 = v5;
  if (!v43)
  {
    v103 = v9;
    v104 = v10;
    v105 = v6;
    v65 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v44 = v6;
  v132 = v43;
  v106 = v20;
  v102 = v3;
  v46 = *(v41 + 16);
  v45 = v41 + 16;
  v128 = (v45 - 8);
  v129 = v38;
  v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
  v48 = *(v45 + 56);
  v49 = v40;
  v124 = v46;
  v125 = v45;
  (v46)(&v101 - v39, v40 + v47);
  v113 = v42;
  sub_2304A4FE4();
  v50 = sub_2304A4FC4();
  sub_2304644B0(v33, MEMORY[0x277D46780]);
  if (v50)
  {
    v103 = v9;
    v104 = v10;
    v105 = v44;
    v101 = v49;
    v51 = v49 + v48 + v47;
    v52 = v113;
    v122 = v48;
    v123 = v33;
    while (1)
    {
      v53 = v130;
      sub_2304A4FE4();
      v54 = sub_2304A4084();
      v55 = *(v54 - 8);
      v56 = 1;
      if ((*(v55 + 48))(v53, 1, v54) != 1)
      {
        (*(v55 + 32))(v131, v130, v54);
        v56 = 0;
      }

      v57 = v131;
      (*(v55 + 56))(v131, v56, 1, v54);
      v58 = MEMORY[0x277D464E0];
      v59 = v126;
      sub_2304A3398(v57, v126, MEMORY[0x277D464E0]);
      sub_2304A4984();
      sub_2304A4FB4();
      sub_2304A4F84();
      sub_2304A4974();

      sub_2304A4FA4();
      sub_2304A3400(v59, v127, v58);
      v60 = sub_2304A4A04();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      sub_2304A49B4();
      sub_2304644B0(v59, MEMORY[0x277D464E0]);

      MEMORY[0x231919320](v63);
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2304A5DE4();
      }

      sub_2304A5DF4();

      v64 = v129;
      (*v128)(v52, v129);
      v65 = v135;
      v66 = v123;
      if (v132 == 1)
      {
        break;
      }

      --v132;
      v67 = v122;
      v124(v52, v51, v64);
      sub_2304A4FE4();
      v68 = sub_2304A4FC4();
      sub_2304644B0(v66, MEMORY[0x277D46780]);
      v51 += v67;
      if ((v68 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v40 = v101;
    v3 = v102;
LABEL_20:
    v84 = v40;
    if (v65 >> 62)
    {
      v85 = sub_2304A6044();
      if (!v85)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v85 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v85)
      {
        goto LABEL_29;
      }
    }

    if (v85 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    for (i = 0; i != v85; ++i)
    {
      if ((v65 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x231919680](i, v65);
      }

      else
      {
        v87 = *(v65 + 8 * i + 32);
      }

      sub_23049D110(v87);
    }

LABEL_29:
    v88 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 32);
    __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator), *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator + 24));
    v89 = v115;
    v90 = v114;
    v91 = v116;
    (*(v115 + 16))(v114, v118, v116);
    v92 = (*(v89 + 88))(v90, v91);
    if (v92 == *MEMORY[0x277D46828])
    {
      v93 = v117;
      sub_2304A46E4();
      goto LABEL_33;
    }

    v93 = v117;
    if (v92 == *MEMORY[0x277D46820])
    {
      sub_2304A46D4();
LABEL_33:
      v94 = v119;
      sub_2304A4284();
      (*(v120 + 8))(v93, v121);
      if (v94)
      {
      }

      v95 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
      v96 = swift_allocObject();
      *(v96 + 16) = v3;
      *(v96 + 24) = v84;
      aBlock[4] = sub_2304A3468;
      aBlock[5] = v96;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2304699EC;
      aBlock[3] = &block_descriptor_15;
      v97 = _Block_copy(aBlock);

      v98 = v107;
      sub_2304A5C34();
      v133 = MEMORY[0x277D84F90];
      sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
      sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
      v99 = v103;
      v100 = v109;
      sub_2304A5FA4();
      MEMORY[0x231919460](0, v98, v99, v97);
      _Block_release(v97);
      (*(v105 + 8))(v99, v100);
      (*(v108 + 8))(v98, v104);
    }

LABEL_37:
    result = sub_2304A6254();
    __break(1u);
    return result;
  }

  v64 = v129;
  v52 = v113;
LABEL_13:

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v69 = sub_2304A5B74();
  __swift_project_value_buffer(v69, qword_28149B008);
  v70 = v110;
  v124(v110, v52, v64);
  v71 = sub_2304A5B54();
  v72 = sub_2304A5E74();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v73 = 136446210;
    sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
    v75 = sub_2304A62D4();
    v76 = v70;
    v78 = v77;
    v79 = *v128;
    (*v128)(v76, v129);
    v80 = sub_23046A5C8(v75, v78, aBlock);

    *(v73 + 4) = v80;
    _os_log_impl(&dword_230430000, v71, v72, "Cannot mutate a remotely-owned record: %{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    v81 = v74;
    v52 = v113;
    MEMORY[0x23191A000](v81, -1, -1);
    v82 = v73;
    v64 = v129;
    MEMORY[0x23191A000](v82, -1, -1);
  }

  else
  {

    v79 = *v128;
    (*v128)(v70, v64);
  }

  (*(v111 + 104))(v106, *MEMORY[0x277D468C0], v112);
  sub_2304A53E4();
  sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
  return (v79)(v52, v64);
}

uint64_t sub_23049E440(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  v6 = sub_2304A5284();
  v8 = v7;
  v9 = sub_2304A5264();
  (*(v5 + 8))(MEMORY[0x277D84F90], a2, v6, v8, v9, v10, v4, v5);
}

uint64_t sub_23049E51C()
{
  v1 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  v2 = sub_2304A5294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor;
  v4 = sub_2304A5224();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClientDataSource()
{
  result = qword_28149AA58;
  if (!qword_28149AA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23049E69C()
{
  result = sub_2304A5294();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2304A5224();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23049E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = a3;
  v5 = sub_2304A43F4();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A53F4();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54820, &unk_2304A8030);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_2304A4A64();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v52 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v51 - v27;
  v57 = v3;
  v29 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v3 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  sub_2304A5314();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_230464970(v18, &qword_27DB54820, &unk_2304A8030);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v30 = sub_2304A5B74();
    __swift_project_value_buffer(v30, qword_28149B008);
    v31 = a1;

    v32 = sub_2304A5B54();
    v33 = sub_2304A5E74();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63 = v31;
      v64 = v35;
      *v34 = 136446210;
      sub_2304A4A04();
      sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
      v36 = sub_2304A62D4();
      v38 = sub_23046A5C8(v36, v37, &v64);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_230430000, v32, v33, "Can't find record for ID: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x23191A000](v35, -1, -1);
      MEMORY[0x23191A000](v34, -1, -1);
    }

    v39 = 1;
    v40 = v62;
    goto LABEL_14;
  }

  (*(v20 + 32))(v28, v18, v19);
  sub_2304A4A34();
  sub_2304A4A54();
  sub_2304A4A44();
  sub_2304A4A24();
  (*(v20 + 16))(v52, v26, v19);
  v41 = v54;
  sub_2304A5204();
  v43 = v55;
  v42 = v56;
  v44 = v53;
  (*(v55 + 16))(v53, v41, v56);
  v45 = (*(v43 + 88))(v44, v42);
  v46 = v43;
  if (v45 == *MEMORY[0x277D468F8])
  {
    v47 = MEMORY[0x277D463A0];
LABEL_13:
    (*(v46 + 8))(v41, v42);
    (*(v59 + 104))(v58, *v47, v60);
    v40 = v62;
    sub_2304A4744();
    v48 = *(v20 + 8);
    v48(v26, v19);
    v48(v28, v19);
    v39 = 0;
LABEL_14:
    v49 = sub_2304A4754();
    return (*(*(v49 - 8) + 56))(v40, v39, 1, v49);
  }

  if (v45 == *MEMORY[0x277D46908])
  {
    v47 = MEMORY[0x277D463A8];
    goto LABEL_13;
  }

  if (v45 == *MEMORY[0x277D468F0])
  {
    v47 = MEMORY[0x277D46398];
    goto LABEL_13;
  }

  result = sub_2304A6254();
  __break(1u);
  return result;
}

uint64_t sub_23049EE74(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v77 = sub_2304A4A94();
  v76 = *(v77 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v75[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2304A5C04();
  v100 = *(v5 - 8);
  v101 = v5;
  v6 = *(v100 + 64);
  MEMORY[0x28223BE20](v5);
  v99 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2304A5C64();
  v97 = *(v8 - 8);
  v98 = v8;
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v8);
  v95 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_2304A4084();
  v86 = *(v87 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_2304A4B84();
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  v14 = MEMORY[0x28223BE20](v94);
  v90 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = v15;
  MEMORY[0x28223BE20](v14);
  v108 = &v75[-v16];
  v17 = sub_2304A4FD4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v107 = sub_2304A4FF4();
  v92 = *(v107 - 8);
  v20 = *(v92 + 64);
  v21 = MEMORY[0x28223BE20](v107);
  v85 = &v75[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v106 = &v75[-v23];
  v24 = sub_2304A4A64();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v83 = &v75[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v82 = &v75[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v103 = &v75[-v32];
  MEMORY[0x28223BE20](v31);
  v34 = &v75[-v33];
  v35 = sub_2304A3FC4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v75[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v81 = &v75[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v75[-v45];
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v75[-v48];
  MEMORY[0x28223BE20](v47);
  v51 = &v75[-v50];
  v79 = a1;
  sub_2304A4A74();
  sub_2304A4A44();
  v52 = *(v25 + 8);
  v104 = v25 + 8;
  v105 = v24;
  v53 = v24;
  v54 = v52;
  v52(v34, v53);
  v55 = (*(v36 + 48))(v49, 1, v35);
  v102 = v51;
  if (v55 == 1)
  {
    sub_230464970(v49, &qword_27DB53FE0, &qword_2304A7430);
    (*(v36 + 56))(v51, 1, 1, v35);
  }

  else
  {
    (*(v36 + 32))(v39, v49, v35);
    sub_230496544(v39, v46);
    (*(v36 + 8))(v39, v35);
    (*(v36 + 56))(v46, 0, 1, v35);
    v51 = v102;
    sub_230464ABC(v46, v102, &qword_27DB53FE0, &qword_2304A7430);
  }

  v56 = v82;
  sub_2304A4A74();
  sub_2304A4A34();
  v57 = v105;
  v54(v56, v105);
  v80 = v54;
  v58 = v83;
  sub_2304A4A74();
  sub_2304A4A54();
  v54(v58, v57);
  sub_230464B24(v51, v81, &qword_27DB53FE0, &qword_2304A7430);
  sub_2304A4A24();
  v59 = v96;
  v60 = *(v96 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v96 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v96 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  sub_2304A4A14();
  sub_2304A5354();

  sub_2304A4A14();
  sub_2304A49C4();

  sub_2304A4A14();
  sub_2304A49D4();

  sub_2304A4964();

  sub_2304A4A14();
  sub_2304A49D4();

  sub_2304A4954();

  v61 = v84;
  sub_2304A4684();
  (*(v86 + 56))(v61, 0, 1, v87);
  v62 = v106;
  sub_2304A4F94();
  v63 = v92;
  (*(v92 + 16))(v85, v62, v107);
  sub_2304A4A84();
  sub_2304A43D4();

  v64 = v108;
  sub_2304A4B74();
  v91 = *(v59 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
  v65 = v93;
  v66 = v90;
  v67 = v94;
  (*(v93 + 16))(v90, v64, v94);
  v68 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v59;
  (*(v65 + 32))(v69 + v68, v66, v67);
  aBlock[4] = sub_2304A32EC;
  aBlock[5] = v69;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_9;
  v70 = _Block_copy(aBlock);

  v71 = v95;
  sub_2304A5C34();
  v109 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
  v72 = v99;
  v73 = v101;
  sub_2304A5FA4();
  MEMORY[0x231919460](0, v71, v72, v70);
  _Block_release(v70);
  (*(v100 + 8))(v72, v73);
  (*(v97 + 8))(v71, v98);
  (*(v65 + 8))(v108, v67);
  (*(v63 + 8))(v106, v107);
  v80(v103, v105);
  sub_230464970(v102, &qword_27DB53FE0, &qword_2304A7430);
}

uint64_t sub_23049FD40(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F80, &qword_2304A73E0);
  v6 = sub_2304A4B84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2304A7270;
  (*(v7 + 16))(v10 + v9, a2, v6);
  v11 = sub_2304A5284();
  v13 = v12;
  v14 = sub_2304A5264();
  (*(v5 + 8))(v10, MEMORY[0x277D84F90], v11, v13, v14, v15, v4, v5);
}

uint64_t sub_23049FED4(uint64_t a1)
{
  v3 = sub_2304A5C04();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5C64();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4FF4();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v12;
  v48 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v45 - v13;
  v14 = sub_2304A49E4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2304A4FD4();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v45 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v49 = v1;
  sub_23049D110(a1);
  sub_2304A49F4();
  v28 = sub_2304A4084();
  v29 = *(v28 - 8);
  v30 = 1;
  if ((*(v29 + 48))(v17, 1, v28) != 1)
  {
    (*(v29 + 32))(v25, v17, v28);
    v30 = 0;
  }

  (*(v29 + 56))(v25, v30, 1, v28);
  v31 = MEMORY[0x277D46780];
  sub_2304A3398(v25, v27, MEMORY[0x277D46780]);
  sub_2304A49C4();
  sub_2304A49D4();
  sub_2304A4964();
  v46 = v27;

  sub_2304A49D4();
  sub_2304A4954();

  sub_2304A3400(v27, v22, v31);
  v32 = v58;
  sub_2304A4F94();
  v33 = v49;
  v34 = v50;
  v35 = *(v49 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue);
  v36 = v48;
  v37 = v51;
  (*(v50 + 16))(v48, v32, v51);
  v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  (*(v34 + 32))(v39 + v38, v36, v37);
  aBlock[4] = sub_2304A31F4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_7;
  v40 = _Block_copy(aBlock);

  v41 = v52;
  sub_2304A5C34();
  v59 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499DE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_2304A3E48(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
  v42 = v55;
  v43 = v57;
  sub_2304A5FA4();
  MEMORY[0x231919460](0, v41, v42, v40);
  _Block_release(v40);
  (*(v56 + 8))(v42, v43);
  (*(v53 + 8))(v41, v54);
  (*(v34 + 8))(v58, v37);
  sub_2304644B0(v46, MEMORY[0x277D46780]);
}

uint64_t sub_2304A0504(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_5Tm(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54020, &unk_2304A8040);
  v6 = sub_2304A4FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2304A7270;
  (*(v7 + 16))(v10 + v9, a2, v6);
  v11 = sub_2304A5284();
  v13 = v12;
  v14 = sub_2304A5264();
  (*(v5 + 8))(MEMORY[0x277D84F90], v10, v11, v13, v14, v15, v4, v5);
}

uint64_t sub_2304A0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a1;
  v26 = a2;
  v24 = a3;
  v4 = sub_2304A4BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_2304A4434();
  v22 = *(v12 - 8);
  v23 = v12;
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore;
  sub_2304A51E4();
  sub_2304A4BC4();
  v16 = *(v5 + 8);
  v16(v11, v4);
  sub_2304A51E4();
  sub_2304A4BD4();
  v16(v9, v4);
  v17 = sub_2304A4404();
  v18 = MEMORY[0x2319199F0](v17);
  sub_2304A08B8(v25, (v3 + v21), v26, v15, v24);
  objc_autoreleasePoolPop(v18);
  return (*(v22 + 8))(v15, v23);
}

uint64_t sub_2304A08B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v265 = a4;
  v248 = a3;
  v241 = a5;
  v237 = sub_2304A4434();
  v227 = *(v237 - 8);
  v7 = *(v227 + 64);
  MEMORY[0x28223BE20](v237);
  v236 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54820, &unk_2304A8030);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v264 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v235 = &v224 - v13;
  v243 = sub_2304A44F4();
  v226 = *(v243 - 8);
  v14 = *(v226 + 64);
  MEMORY[0x28223BE20](v243);
  v242 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_2304A46C4();
  v225 = *(v244 - 8);
  v16 = *(v225 + 64);
  MEMORY[0x28223BE20](v244);
  v247 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v246 = &v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v258 = &v224 - v22;
  v23 = sub_2304A4084();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v245 = &v224 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v240 = &v224 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v233 = &v224 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v234 = &v224 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v232 = &v224 - v35;
  MEMORY[0x28223BE20](v34);
  v259 = &v224 - v36;
  v231 = sub_2304A45F4();
  v230 = *(v231 - 1);
  v37 = *(v230 + 64);
  MEMORY[0x28223BE20](v231);
  *&v229 = &v224 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v262 = &v224 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v224 - v43;
  v239 = sub_2304A3FC4();
  v252 = *(v239 - 1);
  v45 = *(v252 + 64);
  v46 = MEMORY[0x28223BE20](v239);
  v257 = &v224 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v253 = &v224 - v48;
  v49 = sub_2304A4A64();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v263 = &v224 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  *&v228 = &v224 - v55;
  MEMORY[0x28223BE20](v54);
  v256 = &v224 - v56;
  v57 = sub_2304A49E4();
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = (&v224 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2304A4384();
  sub_2304A49F4();

  v260 = v24;
  v61 = *(v24 + 48);
  v266 = v60;
  v249 = v23;
  LODWORD(v60) = v61(v60, 1, v23);
  v63 = a2[3];
  v62 = a2[4];
  v238 = a2;
  __swift_project_boxed_opaque_existential_5Tm(a2, v63);
  v254 = a1;
  sub_2304A4384();
  v255 = v50;
  if (v60 != 1)
  {
    v79 = v50;
    v80 = v264;
    sub_2304A5314();

    if ((*(v79 + 48))(v80, 1, v49) == 1)
    {
      sub_230464970(v80, &qword_27DB54820, &unk_2304A8030);
      if (qword_281499E38 != -1)
      {
LABEL_85:
        swift_once();
      }

      v81 = sub_2304A5B74();
      __swift_project_value_buffer(v81, qword_28149B008);

      v82 = sub_2304A5B54();
      v83 = sub_2304A5E74();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v268 = v85;
        *v84 = 136446210;
        v267 = sub_2304A4384();
        sub_2304A4A04();
        sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
        v86 = sub_2304A62D4();
        v88 = v87;

        v89 = sub_23046A5C8(v86, v88, &v268);

        *(v84 + 4) = v89;
        _os_log_impl(&dword_230430000, v82, v83, "Remote record %{public}s is not compatible with local protocol version", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x23191A000](v85, -1, -1);
        MEMORY[0x23191A000](v84, -1, -1);
      }

      goto LABEL_15;
    }

    v93 = v263;
    (*(v79 + 32))(v263, v80, v49);
    v94 = v262;
    sub_2304A4A44();
    v95 = v252;
    v96 = v239;
    if ((*(v252 + 48))(v94, 1, v239) == 1)
    {
      (*(v79 + 8))(v93, v49);
      sub_230464970(v94, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v189 = v257;
      (*(v95 + 32))(v257, v94, v96);
      v190 = [objc_opt_self() defaultManager];
      sub_2304A3F84();
      v191 = sub_2304A5D14();

      v192 = [v190 fileExistsAtPath_];

      if (!v192)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v210 = sub_2304A5B74();
        __swift_project_value_buffer(v210, qword_28149B008);

        v211 = sub_2304A5B54();
        v212 = sub_2304A5E74();

        if (os_log_type_enabled(v211, v212))
        {
          v213 = v95;
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v268 = v215;
          *v214 = 136446210;
          v267 = sub_2304A4384();
          sub_2304A4A04();
          sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
          v216 = sub_2304A62D4();
          v218 = v217;

          v219 = sub_23046A5C8(v216, v218, &v268);

          *(v214 + 4) = v219;
          _os_log_impl(&dword_230430000, v211, v212, "Remote record %{public}s includes a file that does not exist", v214, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v215);
          MEMORY[0x23191A000](v215, -1, -1);
          MEMORY[0x23191A000](v214, -1, -1);

          (*(v213 + 8))(v257, v239);
        }

        else
        {

          (*(v95 + 8))(v189, v239);
        }

        (*(v255 + 8))(v263, v49);
LABEL_15:
        v90 = *MEMORY[0x277D46450];
        v91 = sub_2304A4764();
        (*(*(v91 - 8) + 104))(v241, v90, v91);
        return sub_2304644B0(v266, MEMORY[0x277D464E0]);
      }

      (*(v95 + 8))(v189, v96);
      (*(v255 + 8))(v263, v49);
    }

    sub_2304644B0(v266, MEMORY[0x277D464E0]);
LABEL_81:
    v221 = MEMORY[0x277D46460];
    goto LABEL_82;
  }

  v257 = v49;
  v64 = sub_2304A5324();

  v65 = v64;
  v264 = *(v64 + 16);
  if (!v264)
  {

    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v180 = sub_2304A5B74();
    __swift_project_value_buffer(v180, qword_28149B008);

    v181 = sub_2304A5B54();
    v182 = sub_2304A5E74();

    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v268 = v184;
      *v183 = 136446210;
      v267 = sub_2304A4384();
      sub_2304A4A04();
      sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
      v185 = sub_2304A62D4();
      v187 = v186;

      v188 = sub_23046A5C8(v185, v187, &v268);

      *(v183 + 4) = v188;
      _os_log_impl(&dword_230430000, v181, v182, "Local record %{public}s has no data", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v184);
      MEMORY[0x23191A000](v184, -1, -1);
      MEMORY[0x23191A000](v183, -1, -1);
    }

LABEL_78:
    v221 = MEMORY[0x277D46450];
LABEL_82:
    v222 = *v221;
    v223 = sub_2304A4764();
    return (*(*(v223 - 8) + 104))(v241, v222, v223);
  }

  v66 = 0;
  v68 = v255;
  v67 = v256;
  v262 = v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v263 = v44;
  v265 = v255 + 16;
  v69 = (v252 + 48);
  v250 = (v252 + 32);
  v251 = (v252 + 8);
  v70 = (v255 + 8);
  v71 = v257;
  v72 = v239;
  v252 = v255 + 8;
  v266 = v65;
  do
  {
    if (v66 >= v65[2])
    {
      __break(1u);
      goto LABEL_85;
    }

    v73 = *(v68 + 16);
    v73(v67, v262 + *(v68 + 72) * v66, v71);
    v74 = v263;
    sub_2304A4A44();
    if ((*v69)(v74, 1, v72) == 1)
    {
      (*v70)(v67, v71);
      sub_230464970(v74, &qword_27DB53FE0, &qword_2304A7430);
    }

    else
    {
      v75 = v253;
      (*v250)(v253, v74, v72);
      v76 = [objc_opt_self() defaultManager];
      sub_2304A3F84();
      v77 = sub_2304A5D14();

      v78 = [v76 fileExistsAtPath_];

      if (!v78)
      {

        v193 = v257;
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v194 = sub_2304A5B74();
        __swift_project_value_buffer(v194, qword_28149B008);
        v195 = v228;
        v196 = v256;
        v73(v228, v256, v193);

        v197 = sub_2304A5B54();
        v198 = sub_2304A5E74();

        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v266 = swift_slowAlloc();
          v268 = v266;
          *v199 = 136446466;
          v267 = sub_2304A4384();
          sub_2304A4A04();
          sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
          v200 = sub_2304A62D4();
          v202 = v201;

          v203 = sub_23046A5C8(v200, v202, &v268);

          *(v199 + 4) = v203;
          *(v199 + 12) = 2050;
          v204 = sub_2304A4A34();
          v205 = *v252;
          (*v252)(v195, v193);
          *(v199 + 14) = v204;
          _os_log_impl(&dword_230430000, v197, v198, "Local record %{public}s references a file for protocol version %{public}llu that does not exist", v199, 0x16u);
          v206 = v266;
          __swift_destroy_boxed_opaque_existential_0Tm(v266);
          MEMORY[0x23191A000](v206, -1, -1);
          MEMORY[0x23191A000](v199, -1, -1);

          (*v251)(v253, v239);
          v205(v256, v193);
        }

        else
        {
          v220 = *v252;
          (*v252)(v195, v193);

          (*v251)(v253, v239);
          v220(v196, v193);
        }

        goto LABEL_78;
      }

      (*v251)(v75, v72);
      v70 = v252;
      v67 = v256;
      v71 = v257;
      (*v252)(v256, v257);
      v68 = v255;
    }

    ++v66;
    v65 = v266;
  }

  while (v264 != v66);
  v97 = v229;
  sub_2304A4364();
  v98 = v230;
  v99 = v231;
  v100 = (*(v230 + 88))(v97, v231);
  if (v100 == *MEMORY[0x277D463D8])
  {

    (*(v98 + 96))(v97, v99);
    v102 = *v97;
    v103 = *(*v97 + 16);
    if (v103)
    {
      v266 = *(v260 + 16);
      v104 = (*(v260 + 80) + 32) & ~*(v260 + 80);
      v224 = v102;
      v255 = v104;
      v105 = (v102 + v104);
      v263 = (v225 + 48);
      v251 = (v225 + 32);
      v106 = *(v260 + 72);
      v250 = (v226 + 8);
      v231 = (v227 + 8);
      v230 = v68 + 48;
      v239 = (v225 + 8);
      v107 = (v260 + 8);
      v260 += 16;
      v253 = (v260 + 16);
      v108 = MEMORY[0x277D84F90];
      *&v101 = 136446210;
      v229 = v101;
      *&v101 = 136446466;
      v228 = v101;
      v109 = v244;
      v110 = v249;
      v111 = v259;
      v262 = v106;
      v252 = v260 - 8;
      do
      {
        v264 = v105;
        v114 = (v266)(v111, v105, v110);
        MEMORY[0x28223BE20](v114);
        *(&v224 - 2) = v111;
        v115 = v258;
        v116 = v261;
        sub_23043725C(sub_2304A31D4, v248, v258);
        v261 = v116;
        v117 = v246;
        sub_230464B24(v115, v246, &unk_27DB53F00, &unk_2304A7B70);
        v118 = (*v263)(v117, 1, v109);
        v265 = v103;
        if (v118 == 1)
        {
          v119 = v108;
          sub_230464970(v117, &unk_27DB53F00, &unk_2304A7B70);
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v120 = sub_2304A5B74();
          __swift_project_value_buffer(v120, qword_28149B008);

          v121 = sub_2304A5B54();
          v122 = sub_2304A5E74();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v268 = v124;
            *v123 = v229;
            v267 = sub_2304A4384();
            sub_2304A4A04();
            sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
            v125 = sub_2304A62D4();
            v127 = v126;
            v128 = v244;

            v129 = sub_23046A5C8(v125, v127, &v268);

            *(v123 + 4) = v129;
            _os_log_impl(&dword_230430000, v121, v122, "Local record %{public}s has destination that does not exist", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v124);
            MEMORY[0x23191A000](v124, -1, -1);
            v130 = v123;
            v110 = v249;
            MEMORY[0x23191A000](v130, -1, -1);
          }

          else
          {
            v128 = v109;
          }

          (v266)(v245, v259, v110);
          v108 = v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v155 = v265;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v108 = sub_23045A090(0, v119[2] + 1, 1, v119);
          }

          v107 = v252;
          v157 = v108[2];
          v156 = v108[3];
          if (v157 >= v156 >> 1)
          {
            v108 = sub_23045A090(v156 > 1, v157 + 1, 1, v108);
          }

          v109 = v128;
          sub_230464970(v258, &unk_27DB53F00, &unk_2304A7B70);
          v108[2] = v157 + 1;
          v112 = v262;
          (*v253)(v108 + v255 + v157 * v262, v245, v110);
        }

        else
        {
          v256 = v108;
          (*v251)(v247, v117, v109);
          v131 = v242;
          sub_2304A4674();
          v132 = sub_2304A44D4();
          (*v250)(v131, v243);
          sub_2304A4384();
          v133 = sub_2304A49D4();

          v134 = sub_230496480(v133, v132, MEMORY[0x277D464D8]);

          if (v134)
          {
            v135 = v238[4];
            __swift_project_boxed_opaque_existential_5Tm(v238, v238[3]);
            sub_2304A4384();
            v136 = v236;
            sub_2304A4944();
            v137 = v235;
            sub_2304A5314();

            (*v231)(v136, v237);
            if ((*v230)(v137, 1, v257) == 1)
            {
              sub_230464970(v137, &qword_27DB54820, &unk_2304A8030);
              v110 = v249;
              if (qword_281499E38 != -1)
              {
                swift_once();
              }

              v138 = sub_2304A5B74();
              __swift_project_value_buffer(v138, qword_28149B008);
              v139 = v232;
              (v266)(v232, v259, v110);

              v140 = sub_2304A5B54();
              v141 = sub_2304A5E74();

              if (os_log_type_enabled(v140, v141))
              {
                v142 = swift_slowAlloc();
                v143 = swift_slowAlloc();
                v268 = v143;
                *v142 = v228;
                v267 = sub_2304A4384();
                sub_2304A4A04();
                sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
                v144 = sub_2304A62D4();
                v146 = v145;

                v147 = sub_23046A5C8(v144, v146, &v268);

                *(v142 + 4) = v147;
                *(v142 + 12) = 2082;
                sub_2304A3E00(&qword_27DB54610, MEMORY[0x277CC95F0]);
                v148 = v232;
                v149 = sub_2304A62D4();
                v151 = v150;
                (*v107)(v148, v249);
                v152 = sub_23046A5C8(v149, v151, &v268);

                *(v142 + 14) = v152;
                _os_log_impl(&dword_230430000, v140, v141, "Local record %{public}s has no data for relationship %{public}s", v142, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23191A000](v143, -1, -1);
                v153 = v142;
                v110 = v249;
                MEMORY[0x23191A000](v153, -1, -1);
              }

              else
              {

                (*v107)(v139, v110);
              }

              v177 = v244;
              (v266)(v234, v259, v110);
              v108 = v256;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v108 = sub_23045A090(0, v108[2] + 1, 1, v108);
              }

              v179 = v108[2];
              v178 = v108[3];
              if (v179 >= v178 >> 1)
              {
                v108 = sub_23045A090(v178 > 1, v179 + 1, 1, v108);
              }

              v109 = v177;
              (*v239)(v247, v177);
              sub_230464970(v258, &unk_27DB53F00, &unk_2304A7B70);
              v108[2] = v179 + 1;
              v112 = v262;
              (*v253)(v108 + v255 + v179 * v262, v234, v110);
              v155 = v265;
            }

            else
            {

              v109 = v244;
              (*v239)(v247);
              sub_230464970(v258, &unk_27DB53F00, &unk_2304A7B70);
              sub_230464970(v137, &qword_27DB54820, &unk_2304A8030);
              v110 = v249;
              v155 = v265;
              v112 = v262;
              v108 = v256;
            }
          }

          else
          {
            v158 = v109;
            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v159 = sub_2304A5B74();
            __swift_project_value_buffer(v159, qword_28149B008);
            v160 = v233;
            v110 = v249;
            (v266)(v233, v259, v249);

            v161 = sub_2304A5B54();
            v162 = sub_2304A5E74();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v268 = v164;
              *v163 = v228;
              v267 = sub_2304A4384();
              sub_2304A4A04();
              sub_2304A3E00(&qword_27DB54728, MEMORY[0x277D464E8]);
              v165 = sub_2304A62D4();
              v167 = v166;

              v168 = sub_23046A5C8(v165, v167, &v268);

              *(v163 + 4) = v168;
              *(v163 + 12) = 2082;
              sub_2304A3E00(&qword_27DB54610, MEMORY[0x277CC95F0]);
              v169 = v233;
              v170 = sub_2304A62D4();
              v172 = v171;
              (*v107)(v169, v110);
              v173 = sub_23046A5C8(v170, v172, &v268);
              v158 = v244;

              *(v163 + 14) = v173;
              _os_log_impl(&dword_230430000, v161, v162, "Local record %{public}s is part of a zone that does not exist in relationship %{public}s", v163, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23191A000](v164, -1, -1);
              MEMORY[0x23191A000](v163, -1, -1);
            }

            else
            {

              (*v107)(v160, v110);
            }

            (v266)(v240, v259, v110);
            v108 = v256;
            v174 = swift_isUniquelyReferenced_nonNull_native();
            v155 = v265;
            if ((v174 & 1) == 0)
            {
              v108 = sub_23045A090(0, v108[2] + 1, 1, v108);
            }

            v176 = v108[2];
            v175 = v108[3];
            if (v176 >= v175 >> 1)
            {
              v108 = sub_23045A090(v175 > 1, v176 + 1, 1, v108);
            }

            v109 = v158;
            (*v239)(v247, v158);
            sub_230464970(v258, &unk_27DB53F00, &unk_2304A7B70);
            v108[2] = v176 + 1;
            v112 = v262;
            (*v253)(v108 + v255 + v176 * v262, v240, v110);
          }
        }

        v113 = v264;
        v111 = v259;
        (*v107)(v259, v110);
        v105 = &v113[v112];
        v103 = v155 - 1;
      }

      while (v103);

      if (v108[2])
      {
        goto LABEL_71;
      }
    }

    else
    {

      v108 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_71:
        v207 = v241;
        *v241 = v108;
        v208 = *MEMORY[0x277D46458];
        v209 = sub_2304A4764();
        return (*(*(v209 - 8) + 104))(v207, v208, v209);
      }
    }

    goto LABEL_80;
  }

  if (v100 == *MEMORY[0x277D463E0])
  {
LABEL_80:

    goto LABEL_81;
  }

  result = sub_2304A62E4();
  __break(1u);
  return result;
}

uint64_t sub_2304A2AF8()
{
  v0 = sub_2304A4084();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A4684();
  v5 = sub_2304A4054();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_2304A2BE4(uint64_t a1)
{
  v3 = sub_2304A4A64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2319199F0](v6);
  v10 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore), *(v1 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore + 24));
  v11 = sub_2304A5324();
  v12 = *(v11 + 16);
  if (v12)
  {
    v31 = v9;
    v32 = a1;
    v13 = 0;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v14 = v16;
    v17 = *(v15 + 64);
    v30[1] = v11;
    v18 = v11 + ((v17 + 32) & ~v17);
    v19 = *(v15 + 56);
    v34 = (v15 - 8);
    while (1)
    {
      v14(v8, v18, v3);
      v20 = sub_2304A4A54();
      v22 = v21;
      (*v34)(v8, v3);
      v23 = v22;
      v24 = v22 >> 62;
      if ((v22 >> 62) > 1)
      {
        if (v24 == 2)
        {
          v27 = *(v20 + 16);
          v33 = *(v20 + 24);
          result = sub_2304617C4(v20, v23);
          v26 = v33 - v27;
          if (__OFSUB__(v33, v27))
          {
            goto LABEL_19;
          }
        }

        else
        {
          result = sub_2304617C4(v20, v22);
          v26 = 0;
        }
      }

      else if (v24)
      {
        result = sub_2304617C4(v20, v22);
        LODWORD(v26) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_20;
        }

        v26 = v26;
      }

      else
      {
        result = sub_2304617C4(v20, v22);
        v26 = BYTE6(v22);
      }

      v28 = __OFADD__(v13, v26);
      v13 += v26;
      if (v28)
      {
        break;
      }

      v18 += v19;
      if (!--v12)
      {

        v9 = v31;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

LABEL_17:
    sub_2304A49C4();
    v29 = sub_2304A5D64();

    objc_autoreleasePoolPop(v9);
    return v29;
  }

  return result;
}

uint64_t sub_2304A2E30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2304A5394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A51F4();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D468A8])
  {
    v8 = MEMORY[0x277D463D0];
LABEL_5:
    v9 = *v8;
    v10 = sub_2304A45E4();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (v7 == *MEMORY[0x277D46898])
  {
    v8 = MEMORY[0x277D463C8];
    goto LABEL_5;
  }

  result = sub_2304A6254();
  __break(1u);
  return result;
}

uint64_t sub_2304A2FD8()
{
  v0 = sub_2304A4BE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_2304A51E4();
  sub_2304A4BC4();
  v8 = *(v1 + 8);
  v8(v7, v0);
  sub_2304A51E4();
  sub_2304A4BD4();
  v8(v5, v0);
  return sub_2304A4404();
}

uint64_t sub_2304A312C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2304A51D4();
  v3 = sub_2304A4644();
  v4 = *(*(v3 - 8) + 104);
  v5 = MEMORY[0x277D463F8];
  if ((v2 & 1) == 0)
  {
    v5 = MEMORY[0x277D46400];
  }

  v6 = *v5;

  return v4(a1, v6, v3);
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2304A3318(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_2304A3398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304A3400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304A3470(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_230474E48(a1, a2);
  }

  return a1;
}

uint64_t sub_2304A3484(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v38 = a4;
  v39 = a5;
  v36 = a1;
  v37 = a2;
  v14 = sub_2304A5ED4();
  v34 = *(v14 - 8);
  v35 = v14;
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2304A5EA4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_2304A5C64();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v45 = a9;
  v46 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a3, a9);
  v42 = a8;
  v43 = a10;
  v22 = __swift_allocate_boxed_opaque_existential_1(&v41);
  (*(*(a8 - 8) + 32))(v22, a6, a8);
  v23 = type metadata accessor for ClientDataSource();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v32 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationQueue;
  sub_23047773C();
  sub_2304A5C44();
  v40 = MEMORY[0x277D84F90];
  sub_2304A3E00(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_2304A3E48(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v34 + 104))(v33, *MEMORY[0x277D85260], v35);
  *(v26 + v32) = sub_2304A5F04();
  v27 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  v28 = sub_2304A5294();
  (*(*(v28 - 8) + 32))(v26 + v27, v36, v28);
  v29 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor;
  v30 = sub_2304A5224();
  (*(*(v30 - 8) + 32))(v26 + v29, v37, v30);
  sub_230433DAC(&v44, v26 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_replicator);
  sub_230433DAC(v38, v26 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordDataStore);
  sub_230433DAC(v39, v26 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_notificationPoster);
  sub_230433DAC(&v41, v26 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_recordChangeNotifier);
  return v26;
}

uint64_t sub_2304A386C(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2, void (*a3)(uint64_t, char *, unint64_t), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v55 = a4;
  v56 = a3;
  v8 = sub_2304A53C4();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A4FF4();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    return isUniquelyReferenced_nonNull_native;
  }

LABEL_3:
  v48 = v8;
  v49 = v11;
  v8 = 0;
  v60 = a2 & 0xFFFFFFFFFFFFFF8;
  v61 = a2 & 0xC000000000000001;
  v58 = v15;
  v59 = a2;
  while (1)
  {
    if (v61)
    {
      v19 = MEMORY[0x231919680](v8, a2);
    }

    else
    {
      if (v8 >= *(v60 + 16))
      {
        goto LABEL_28;
      }

      v19 = *(a2 + 8 * v8 + 32);
    }

    v20 = v19;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v15 = sub_2304A6044();
      if (!v15)
      {
        return isUniquelyReferenced_nonNull_native;
      }

      goto LABEL_3;
    }

    v21 = sub_2304A5A64();
    if (!v22)
    {
      v41 = isUniquelyReferenced_nonNull_native;
      v42 = *v50;
      v63 = 0;
      v64 = 0xE000000000000000;

      sub_2304A6104();
      v43 = "Cannot add a value to the store that contains corrupt extended attributes with no name: ";
LABEL_26:
      MEMORY[0x2319192E0](0xD000000000000058, (v43 - 32) | 0x8000000000000000);
      v44 = v52;
      sub_2304A5944();
      sub_2304A3E00(&qword_281499F78, MEMORY[0x277D46790]);
      v45 = v54;
      v46 = sub_2304A62D4();
      MEMORY[0x2319192E0](v46);

      (*(v53 + 8))(v44, v45);
      v56(v42, v63, v64);

      (*(v57 + 104))(v49, *MEMORY[0x277D468D0], v48);
      sub_2304A53E4();
      sub_2304A3E00(&unk_281499F28, MEMORY[0x277D468E0]);
      swift_allocError();
      sub_2304A53D4();
      swift_willThrow();
      isUniquelyReferenced_nonNull_native = v41;

      return isUniquelyReferenced_nonNull_native;
    }

    v23 = v21;
    v24 = v22;
    v65 = v8 + 1;
    v25 = sub_2304A5A44();
    if (v26 >> 60 == 15)
    {
      v41 = isUniquelyReferenced_nonNull_native;

      v42 = *v50;
      v63 = 0;
      v64 = 0xE000000000000000;

      sub_2304A6104();
      v43 = "Cannot add a value to the store that contains corrupt extended attributes with no data: ";
      goto LABEL_26;
    }

    v27 = v25;
    v28 = v26;
    v62 = v20;
    v11 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v11;
    v30 = sub_230469C40(v23, v24);
    v31 = *(v11 + 2);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_29;
    }

    a2 = v29;
    if (*(v11 + 3) < v33)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = v63;
      if (v29)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = &v63;
      sub_230472BC4();
      isUniquelyReferenced_nonNull_native = v63;
      if (a2)
      {
LABEL_4:
        v16 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v30);
        v17 = *v16;
        v18 = v16[1];
        *v16 = v27;
        v16[1] = v28;
        sub_2304617C4(v17, v18);

        goto LABEL_5;
      }
    }

LABEL_19:
    *(isUniquelyReferenced_nonNull_native + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v36 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v30);
    *v36 = v23;
    v36[1] = v24;
    v37 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * v30);
    *v37 = v27;
    v37[1] = v28;
    v38 = *(isUniquelyReferenced_nonNull_native + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_30;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v40;

LABEL_5:
    ++v8;
    a2 = v59;
    if (v65 == v58)
    {
      return isUniquelyReferenced_nonNull_native;
    }
  }

  sub_230470D94(v33, isUniquelyReferenced_nonNull_native);
  v11 = v63;
  v34 = sub_230469C40(v23, v24);
  if ((a2 & 1) == (v35 & 1))
  {
    v30 = v34;
    isUniquelyReferenced_nonNull_native = v63;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2304A3E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2304A3E48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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