void sub_22D006980(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v6 = sub_22D01637C();
  __swift_project_value_buffer(v6, qword_2814443A8);
  v7 = sub_22D01636C();
  v8 = sub_22D01690C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22CEE1000, v7, v8, a4, v9, 2u);
    MEMORY[0x2318C6860](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(*(Strong + OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock) + 16);
    v12 = Strong;

    os_unfair_lock_lock(v11);
    swift_beginAccess();
    sub_22CFB3684(0, a3);
    swift_endAccess();
    os_unfair_lock_unlock(v11);

    v13 = __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager], *&v12[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager + 24]);
    v14 = *v13;
    v15 = *(*(*v13 + 48) + 16);
    os_unfair_lock_lock(v15);
    sub_22CF692C8(v14, a3);
    os_unfair_lock_unlock(v15);
  }
}

id sub_22D006CF0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22D006D8C(uint64_t a1)
{
  v3 = sub_22D0154AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if ([*(v1 + OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3DE0, &unk_22D01D150);
    if (swift_dynamicCast())
    {
      v13 = v39;
      if (qword_28143FAF0 != -1)
      {
        swift_once();
      }

      v14 = sub_22D01637C();
      __swift_project_value_buffer(v14, qword_2814443A8);
      v15 = *(v4 + 16);
      v15(v12, a1, v3);
      v16 = sub_22D01636C();
      v17 = sub_22D01690C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v38 = a1;
        v19 = v18;
        v20 = swift_slowAlloc();
        v37 = v13;
        v21 = v20;
        *&v42[0] = v20;
        *v19 = 136446210;
        v15(v9, v12, v3);
        v22 = sub_22D01669C();
        v24 = v23;
        (*(v4 + 8))(v12, v3);
        v25 = sub_22CEEE31C(v22, v24, v42);

        *(v19 + 4) = v25;
        _os_log_impl(&dword_22CEE1000, v16, v17, "Informing client of invalidated assertion: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v26 = v21;
        v13 = v37;
        MEMORY[0x2318C6860](v26, -1, -1);
        MEMORY[0x2318C6860](v19, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v12, v3);
      }

      v31 = sub_22D01548C();
      v32 = sub_22D0141EC();
      v34 = v33;

      v35 = sub_22D0141DC();
      [v13 didInvalidate_];

      sub_22CEE7524(v32, v34);
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_22CFAA9A8(v42);
  }

  if (qword_28143FAF0 != -1)
  {
    swift_once();
  }

  v27 = sub_22D01637C();
  __swift_project_value_buffer(v27, qword_2814443A8);
  v28 = sub_22D01636C();
  v29 = sub_22D0168EC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22CEE1000, v28, v29, "Client does not implement expected interface", v30, 2u);
    MEMORY[0x2318C6860](v30, -1, -1);
  }
}

uint64_t sub_22D0071B0()
{
  v2 = sub_22D01534C();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01546C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D0141DC();
  sub_22D01541C();

  v14 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v0[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v21[3] = type metadata accessor for AssertionServiceClient();
  v21[4] = &off_28402E888;
  v21[0] = v0;
  v15 = *v14;
  v16 = v0;
  v17 = v15;
  sub_22CF6A944(v21, v6);
  if (v1)
  {
    (*(v8 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    sub_22D007AC8();
    v18 = sub_22D01550C();
    v17 = sub_22D0141EC();

    (*(v22 + 8))(v6, v2);
    (*(v8 + 8))(v12, v7);
  }

  return v17;
}

uint64_t sub_22D00740C()
{
  v1 = v0;
  v2 = sub_22D01534C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D0141DC();
  sub_22D007AC8();
  sub_22D0154FC();

  v9 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v1[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v14[3] = type metadata accessor for AssertionServiceClient();
  v14[4] = &off_28402E888;
  v14[0] = v1;
  v10 = *v9;
  v11 = v1;
  sub_22CF6C29C(v7, v14);
  (*(v3 + 8))(v7, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_22D007634()
{
  v2 = sub_22D0153CC();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01538C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22D0141DC();
  sub_22D01537C();

  v14 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager], *&v0[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager + 24]);
  v21[3] = type metadata accessor for AssertionServiceClient();
  v21[4] = &off_28402E888;
  v21[0] = v0;
  v15 = *v14;
  v16 = v0;
  v17 = v15;
  sub_22CF6D860(v12, v21, v6);
  if (v1)
  {
    (*(v8 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v18 = sub_22D0153AC();
    v17 = sub_22D0141EC();

    (*(v22 + 8))(v6, v2);
    (*(v8 + 8))(v12, v7);
  }

  return v17;
}

id sub_22D007884(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_22D0141EC();
  v11 = v10;

  v12 = a5(v9, v11);
  v14 = v13;

  sub_22CEE7524(v9, v11);
  v15 = sub_22D0141DC();
  sub_22CEE7524(v12, v14);

  return v15;
}

unint64_t sub_22D007AC8()
{
  result = qword_28143DAF8;
  if (!qword_28143DAF8)
  {
    sub_22D01534C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143DAF8);
  }

  return result;
}

uint64_t sub_22D007B20(void *a1, uint64_t a2)
{
  v11 = type metadata accessor for AssertionServiceClient();
  v12 = &off_28402E888;
  v10[0] = a1;
  v4 = *(*(a2 + 48) + 16);
  v5 = a1;
  os_unfair_lock_lock(v4);
  v6 = [*(*__swift_project_boxed_opaque_existential_1(v10 v11) + OBJC:sel_remoteProcess IVAR:? :? :? :? TtC11SessionCore22AssertionServiceClient:?connection)];
  v7 = [v6 pid];

  sub_22CEE3A84(v10, v9);
  swift_beginAccess();
  sub_22CFB32AC(v9, v7);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

id sub_22D007C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssertionManager();
  v17[3] = v4;
  v17[4] = &off_284029D68;
  v17[0] = a2;
  v5 = type metadata accessor for AssertionServiceClient();
  v6 = objc_allocWithZone(v5);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v4);
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16[3] = v4;
  v16[4] = &off_284029D68;
  v16[0] = v12;
  *&v6[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_connection] = a1;
  sub_22CEE3A84(v16, &v6[OBJC_IVAR____TtC11SessionCore22AssertionServiceClient_assertionManager]);
  v15.receiver = v6;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v13;
}

void sub_22D007D64(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager];
  sub_22CEE3A84(&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager], aBlock);
  v5 = v31;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v31);
  v7 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v6, v6);
  v9 = (&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = a1;
  v13 = sub_22D007C10(v12, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v14 = [v12 remoteProcess];
  LODWORD(v11) = [v14 pid];

  v15 = *(*&v2[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock] + 16);
  os_unfair_lock_lock(v15);
  v16 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer__lock_clients;
  swift_beginAccess();
  v17 = v13;
  v18 = *&v2[v16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *&v2[v16];
  *&v2[v16] = 0x8000000000000000;
  sub_22CFC00F4(v17, v11, isUniquelyReferenced_nonNull_native);
  *&v2[v16] = v34;
  swift_endAccess();
  os_unfair_lock_unlock(v15);
  v20 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v31 = type metadata accessor for AssertionServiceClient();
  v32 = &off_28402E888;
  aBlock[0] = v17;
  v21 = *v20;
  v22 = *__swift_project_boxed_opaque_existential_1(aBlock, v31);
  v23 = v17;
  sub_22D007B20(v22, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v2;
  *(v24 + 32) = v11;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22D0080B8;
  *(v25 + 24) = v24;
  v32 = sub_22CEE5B1C;
  v33 = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  v31 = &block_descriptor_30;
  v26 = _Block_copy(aBlock);
  v27 = v23;
  v28 = v2;

  [v12 configureConnection_];
  _Block_release(v26);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v12 activate];
  }
}

uint64_t sub_22D00811C()
{
  v0 = sub_22D014DDC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v9 = sub_22CEE8CD0(v2, v3, 1);

    v10 = [v9 localizedName];

    v11 = sub_22D01667C();
    return v11;
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_281444498);
    v6 = sub_22D01636C();
    v7 = sub_22D0168EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "No asset provider bundle ID provided", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }

    return 0;
  }
}

void sub_22D008438(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);
    if (v5)
    {
      v6 = *(Strong + 48);

      v5(a3);

      sub_22CF80A18(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_2814443F0);
    v8 = sub_22D01636C();
    v9 = sub_22D0168FC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v8, v9, "Wake manager unexpectedly deallocated", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }
  }
}

void sub_22D008590(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22D0085F8()
{
  v1 = *(v0 + 16);
  if (v1 && ([v1 cancel], (v2 = *(v0 + 16)) != 0))
  {
    [v2 invalidate];
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 24);

  v5 = *(v0 + 48);
  sub_22CF80A18(*(v0 + 40));
  return v0;
}

uint64_t sub_22D008660()
{
  sub_22D0085F8();

  return swift_deallocClassInstance();
}

void *sub_22D0086B8()
{
  v16[0] = sub_22D01697C();
  v1 = *(v16[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v16[0], v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_22D01653C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  v0[3] = v12;
  sub_22CEEC38C();
  sub_22D0164EC();
  v16[1] = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v16[0]);
  v14 = sub_22D0169BC();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v14;
  return v0;
}

void sub_22D0088FC(void *a1)
{
  v3 = *(sub_22D01430C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_22D008438(a1, v4, v5);
}

uint64_t sub_22D008970()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return swift_deallocClassInstance();
}

id sub_22D0089DC(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_22D008A54(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B7C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014B6C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D008B80(void *a1, uint64_t a2, char *a3, int a4)
{
  sub_22D014B6C();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22D0089DC;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_47_5;
  v10 = _Block_copy(&v22);
  v11 = &unk_284040670;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v26 = sub_22D00A5F8;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_53_2;
  v17 = _Block_copy(&v22);
  v18 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a4;
  v26 = sub_22D00A620;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_59_2;
  v20 = _Block_copy(&v22);
  v21 = v18;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22D008EF4(uint64_t a1, uint64_t a2, unsigned int a3, const char *a4)
{
  v7 = sub_22D01637C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01635C();
  v13 = sub_22D01636C();
  v14 = sub_22D0168EC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22CEE1000, v13, v14, a4, v15, 2u);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v16 = *(*(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);
  os_unfair_lock_lock(v16);
  swift_beginAccess();
  sub_22CFB3698(0, a3);
  swift_endAccess();
  os_unfair_lock_unlock(v16);
}

id sub_22D009224(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate] = 0;
  v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck] = 0;
  v6 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
  v7 = sub_22D0147AC();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_connection] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for QoSObservationServiceClient();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_22D00932C(uint64_t a1)
{
  v3 = sub_22D01637C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D014CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  aBlock = v38;
  v34 = v39;
  if (*(&v39 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3EE8, &unk_22D01D340);
    if (swift_dynamicCast())
    {
      v15 = v37;
      *&v38 = 0;
      v16 = *(*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
      os_unfair_lock_lock(v16);
      sub_22D009794(v1, a1, &v38);
      os_unfair_lock_unlock(v16);
      if (!v38)
      {
        return swift_unknownObjectRelease();
      }

      sub_22D014CCC();
      sub_22D00A108(&unk_27D9F3EF0, MEMORY[0x277CB9658]);
      v32 = v15;
      v17 = v1;
      v18 = sub_22D01517C();
      v31 = sub_22D0141EC();
      v20 = v19;

      sub_22D01566C();
      v21 = sub_22D01563C();
      v22 = sub_22D0141DC();
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      *(v23 + 24) = v21;
      v35 = sub_22D00A150;
      v36 = v23;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v34 = sub_22CF217E0;
      *(&v34 + 1) = &block_descriptor_32;
      v24 = v10;
      v25 = _Block_copy(&aBlock);
      v26 = v17;

      [v32 activityQoSDidChange:v22 completion:v25];
      sub_22CEE7524(v31, v20);
      _Block_release(v25);

      swift_unknownObjectRelease();

      (*(v24 + 8))(v14, v9);
    }
  }

  else
  {
    sub_22CEEC3D8(&aBlock, &qword_27D9F2B10, &unk_22D01B930);
  }

  sub_22D01635C();
  v28 = sub_22D01636C();
  v29 = sub_22D0168EC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22CEE1000, v28, v29, "Client does not implement expected interface", v30, 2u);
    MEMORY[0x2318C6860](v30, -1, -1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_22D009794(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_22D0147AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
  swift_beginAccess();
  sub_22D00A158(a1 + v17, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22CEEC3D8(v10, &unk_27D9F3ED8, qword_22D01D328);
  }

  (*(v12 + 32))(v16, v10, v11);
  if (*(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck))
  {
    v19 = *(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate);
    *(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate) = a2;
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck) = 1;
    if (sub_22D01478C())
    {

      MEMORY[0x28223BE20](v20, v21);
      *(&v25 - 2) = v16;
      v22 = sub_22CF79DF0(sub_22D00A1C8, (&v25 - 4), a2);
      v23 = *a3;
      *a3 = v22;
    }

    else
    {
      v24 = *a3;
      *a3 = a2;
    }
  }

  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_22D0099F8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
  os_unfair_lock_lock(v3);
  *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_pendingAck) = 0;
  v4 = *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate);
  *(a2 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_bufferedQoSUpdate) = 0;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    sub_22D00932C(v4);
  }

  return sub_22D01562C();
}

id sub_22D009AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for QoSObservationServiceClient()
{
  result = qword_27D9F3E58;
  if (!qword_27D9F3E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D009BD4()
{
  sub_22D009C9C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D009C9C()
{
  if (!qword_27D9F3E68)
  {
    sub_22D0147AC();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9F3E68);
    }
  }
}

uint64_t sub_22D009CF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(*(v1 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_lock) + 16);
    os_unfair_lock_lock(v10);
    v11 = sub_22D0147AC();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a1, v11);
    (*(v12 + 56))(v7, 0, 1, v11);
    v13 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient__lock_predicate;
    swift_beginAccess();
    sub_22D00A098(v7, v1 + v13);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v14 = *(*(v9 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);
    os_unfair_lock_lock(v14);
    v15 = *(v9 + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos);

    os_unfair_lock_unlock(v14);
    sub_22D00932C(v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22D00A098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D00A108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22D00A158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3ED8, qword_22D01D328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D00A1C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  return sub_22D01479C() & 1;
}

void sub_22D00A200(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 remoteProcess];
  v11 = sub_22D01666C();
  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    v13 = objc_allocWithZone(type metadata accessor for QoSObservationServiceClient());
    v14 = a1;
    v15 = sub_22D009224(v14);
    v16 = [v14 remoteProcess];
    v17 = [v16 pid];

    *&v15[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceClient_delegate + 8] = &off_28402EAB8;
    swift_unknownObjectWeakAssign();
    v18 = *(*&v2[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock] + 16);
    os_unfair_lock_lock(v18);
    v19 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients;
    swift_beginAccess();
    v20 = v15;
    v21 = *&v2[v19];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v2[v19];
    *&v2[v19] = 0x8000000000000000;
    sub_22CFC0108(v20, v17, isUniquelyReferenced_nonNull_native);
    *&v2[v19] = v34;
    swift_endAccess();
    os_unfair_lock_unlock(v18);
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v2;
    *(v23 + 32) = v17;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22D00A5EC;
    *(v24 + 24) = v23;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_44_2;
    v25 = _Block_copy(aBlock);
    v26 = v20;
    v27 = v2;

    [v14 configureConnection_];
    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v14 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v29 = sub_22D01636C();
    v30 = sub_22D0168EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Process is not entitled to listen to the QoS service", v31, 2u);
      MEMORY[0x2318C6860](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [a1 invalidate];
  }
}

uint64_t sub_22D00A688()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_22D00A700();
    v2 = *(*(v1 + 16) + 16);
    os_unfair_lock_lock(v2);
    sub_22CF1E8A0(v1);
    os_unfair_lock_unlock(v2);
  }

  return result;
}

uint64_t sub_22D00A700()
{
  v1 = type metadata accessor for Activity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v7);
  sub_22D00A8B0(v0, v15);
  os_unfair_lock_unlock(v7);
  v8 = v15[1];
  v9 = *(v15[0] + 16);
  if (v9)
  {
    v10 = v15[2];
    v11 = v15[0] + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_22CF0CCBC(v11, v6, type metadata accessor for Activity);
      sub_22D00AEC0(v6, v8, v10);
      sub_22CF0F640(v6, type metadata accessor for Activity);
      v11 += v12;
      --v9;
    }

    while (v9);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22D00A8B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v59 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Activity();
  v13 = *(v74 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v74, v15);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v72 = (&v59 - v20);
  MEMORY[0x28223BE20](v19, v21);
  v67 = &v59 - v22;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v59 = *(a1 + 128);
    swift_beginAccess();
    v64 = a1;
    v23 = *(a1 + 112);
    v24 = v23 + 64;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;
    v66 = (v9 + 8);
    v62 = (v13 + 56);
    v70 = v23;
    swift_bridgeObjectRetain_n();
    v29 = 0;
    v71 = MEMORY[0x277D84F90];
    v65 = v7;
    v63 = v8;
    v30 = v72;
    v73 = v13;
    while (v27)
    {
LABEL_12:
      v32 = *(v13 + 72);
      v33 = v67;
      sub_22CF0CCBC(*(v70 + 56) + v32 * (__clz(__rbit64(v27)) | (v29 << 6)), v67, type metadata accessor for Activity);
      sub_22D00BD30(v33, v30, type metadata accessor for Activity);
      v34 = *(v74 + 40);
      v35 = v69;
      sub_22D0142DC();
      sub_22CF1A1AC(&qword_281443A30, MEMORY[0x277CC9578]);
      v36 = v30;
      v37 = sub_22D01663C();
      (*v66)(v35, v8);
      if (v37)
      {
        v13 = v73;
        v30 = v36;
      }

      else
      {
        sub_22CF0CCBC(v36, v68, type metadata accessor for Activity);
        v38 = v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_22CFCE2B8(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_22CFCE2B8(v39 > 1, v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v41 = *(v73 + 80);
        v71 = v38;
        sub_22D00BD30(v68, v38 + ((v41 + 32) & ~v41) + v40 * v32, type metadata accessor for Activity);
        v42 = *v72;
        v43 = v72[1];
        v44 = v64;
        swift_beginAccess();
        v45 = *(v44 + 112);
        v46 = sub_22CEEC698(v42, v43);
        if (v47)
        {
          v48 = v46;
          v49 = *(v44 + 112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = *(v44 + 112);
          v75 = v51;
          *(v44 + 112) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB6320();
            v51 = v75;
          }

          v52 = *(*(v51 + 48) + 16 * v48 + 8);

          v53 = v65;
          sub_22D00BD30(*(v51 + 56) + v48 * v32, v65, type metadata accessor for Activity);
          sub_22CFBCCB8(v48, v51);
          v54 = *(v44 + 112);
          *(v44 + 112) = v51;

          v55 = 0;
        }

        else
        {
          v55 = 1;
          v53 = v65;
        }

        (*v62)(v53, v55, 1, v74);
        sub_22CEEC3D8(v53, &qword_27D9F3810, &unk_22D018FA0);
        swift_endAccess();
        v8 = v63;
        v30 = v72;
        v13 = v73;
      }

      v27 &= v27 - 1;
      sub_22CF0F640(v30, type metadata accessor for Activity);
    }

    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {

        v57 = v61;
        v58 = Strong;
        *v61 = v71;
        v57[1] = v58;
        v57[2] = v59;
        return result;
      }

      v27 = *(v24 + 8 * v31);
      ++v29;
      if (v27)
      {
        v29 = v31;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  result = sub_22D016CFC();
  __break(1u);
  return result;
}

void sub_22D00AEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v81 = a2;
  v4 = sub_22D0164CC();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22D01653C();
  v83 = *(v85 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v85, v9);
  v82 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityParticipantEvent(0);
  v12 = *(v11 - 8);
  v75 = v11;
  v76 = v12;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v77 = v16;
  v78 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for Activity();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v72 - v27);
  if (qword_28143DA88 != -1)
  {
    swift_once();
  }

  v29 = sub_22D01637C();
  __swift_project_value_buffer(v29, qword_2814442D8);
  sub_22CF0CCBC(a1, v28, type metadata accessor for Activity);
  v30 = sub_22D01636C();
  v31 = sub_22D01690C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v74 = v25;
    v33 = v32;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136446210;
    v73 = v20;
    v35 = a1;
    v36 = *v28;
    v37 = v28[1];

    sub_22CF0F640(v28, type metadata accessor for Activity);
    v38 = sub_22CEEE31C(v36, v37, aBlock);
    a1 = v35;

    *(v33 + 4) = v38;
    v20 = v73;
    _os_log_impl(&dword_22CEE1000, v30, v31, "Starting delayed activity: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x2318C6860](v34, -1, -1);
    v39 = v33;
    v25 = v74;
    MEMORY[0x2318C6860](v39, -1, -1);
  }

  else
  {

    sub_22CF0F640(v28, type metadata accessor for Activity);
  }

  v40 = *(a1 + *(v20 + 36));
  if (*(v40 + 16))
  {
    v41 = v20;
    v42 = sub_22D01483C();
    v43 = a1;
    v44 = *(v42 - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = v43[1];
    v74 = *v43;
    v73 = v46;
    v47 = (v43 + *(v41 + 52));
    v48 = v47[1];
    v72 = *v47;
    v49 = v75;
    sub_22CF0CCBC(v43, &v19[v75[6]], type metadata accessor for Activity);
    type metadata accessor for ActivityParticipantEvent.EventType(0);
    swift_storeEnumTagMultiPayload();
    (*(v44 + 16))(&v19[v49[7]], v40 + v45, v42);
    v50 = v49[9];
    v51 = *(v41 + 56);
    v52 = sub_22D0146BC();
    v53 = *(v52 - 8);
    (*(v53 + 16))(&v19[v50], v43 + v51, v52);
    (*(v53 + 56))(&v19[v50], 0, 1, v52);
    v54 = v73;
    *v19 = v74;
    *(v19 + 1) = v54;
    *(v19 + 2) = v72;
    *(v19 + 3) = v48;
    v55 = &v19[v49[8]];
    v56 = v80;
    *v55 = v80;
    *(v55 + 1) = &off_28402EC88;
    v19[v49[10]] = 0;
    v75 = *(v56 + 64);
    v57 = v78;
    sub_22CF0CCBC(v19, v78, type metadata accessor for ActivityParticipantEvent);
    v58 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v59 = swift_allocObject();
    v60 = v79;
    *(v59 + 16) = v81;
    *(v59 + 24) = v60;
    sub_22D00BD30(v57, v59 + v58, type metadata accessor for ActivityParticipantEvent);
    aBlock[4] = sub_22CFA5C9C;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF8B58;
    aBlock[3] = &block_descriptor_33;
    v61 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    v62 = v82;
    sub_22D0164EC();
    v88 = MEMORY[0x277D84F90];
    sub_22CF1A1AC(&qword_28143FA60, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
    sub_22CF0EDA8();
    v63 = v84;
    v64 = v87;
    sub_22D016ADC();
    MEMORY[0x2318C5B10](0, v62, v63, v61);
    _Block_release(v61);
    (*(v86 + 8))(v63, v64);
    (*(v83 + 8))(v62, v85);
    sub_22CF0F640(v19, type metadata accessor for ActivityParticipantEvent);
  }

  else
  {
    sub_22CF0CCBC(a1, v25, type metadata accessor for Activity);
    v65 = sub_22D01636C();
    v66 = sub_22D0168EC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v67 = 136446210;
      v69 = *v25;
      v70 = v25[1];

      sub_22CF0F640(v25, type metadata accessor for Activity);
      v71 = sub_22CEEE31C(v69, v70, aBlock);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_22CEE1000, v65, v66, "No content sources exist for delayed activity: %{public}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x2318C6860](v68, -1, -1);
      MEMORY[0x2318C6860](v67, -1, -1);
    }

    else
    {

      sub_22CF0F640(v25, type metadata accessor for Activity);
    }
  }
}

uint64_t sub_22D00B770()
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v73 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v73, v2);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v71 = (&v62 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v70 = (&v62 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v69 = (&v62 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v68 = &v62 - v15;
  v62 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v62);
  swift_beginAccess();
  v16 = *(v0 + 112);
  v17 = *(v16 + 16);
  v81 = MEMORY[0x277D84F90];
  if (v17)
  {
    v82 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v17, 0);
    v81 = v82;
    v18 = v16 + 64;
    v19 = -1 << *(v16 + 32);
    v20 = sub_22D016AEC();
    v21 = 0;
    v22 = *(v16 + 36);
    v63 = v16 + 72;
    v64 = v17;
    v66 = v16 + 64;
    v65 = v22;
    v67 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
    {
      if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_26;
      }

      if (v22 != *(v16 + 36))
      {
        goto LABEL_27;
      }

      v75 = 1 << v20;
      v76 = v20 >> 6;
      v74 = v21;
      v24 = v73;
      v25 = *(v73 + 48);
      v26 = *(v16 + 56);
      v27 = (*(v16 + 48) + 16 * v20);
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for Activity();
      v31 = v68;
      sub_22CF0CCBC(v26 + *(*(v30 - 8) + 72) * v20, &v68[v25], type metadata accessor for Activity);
      v32 = v69;
      *v69 = v29;
      *(v32 + 8) = v28;
      v33 = *(v24 + 48);
      sub_22D00BD30(&v31[v25], v32 + v33, type metadata accessor for Activity);
      v34 = v70;
      *v70 = v29;
      *(v34 + 8) = v28;
      sub_22CF0CCBC(v32 + v33, v34 + *(v24 + 48), type metadata accessor for Activity);
      v35 = v71;
      sub_22CEEB6DC(v34, v71, &unk_27D9F3840, &unk_22D01A2B0);
      v36 = *v35;
      v79 = v35[1];
      v80 = v36;
      v77 = *(v24 + 48);
      v37 = v72;
      sub_22CEEB6DC(v34, v72, &unk_27D9F3840, &unk_22D01A2B0);
      v38 = *(v37 + 8);
      swift_bridgeObjectRetain_n();

      v39 = *(v24 + 48);
      v78 = sub_22CF0B174();
      v41 = v40;
      v42 = v34;
      v43 = v81;
      sub_22CEEC3D8(v42, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v37 + v39, type metadata accessor for Activity);
      sub_22CF0F640(v35 + v77, type metadata accessor for Activity);
      sub_22CEEC3D8(v32, &unk_27D9F3840, &unk_22D01A2B0);
      v82 = v43;
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      v81 = v43;
      if (v45 >= v44 >> 1)
      {
        sub_22CF4414C((v44 > 1), v45 + 1, 1);
        v81 = v82;
      }

      v47 = v80;
      v46 = v81;
      *(v81 + 16) = v45 + 1;
      v48 = (v46 + 48 * v45);
      v49 = v78;
      v50 = v79;
      v48[4] = v47;
      v48[5] = v50;
      v48[6] = v49;
      v48[7] = v41;
      v48[9] = MEMORY[0x277D837D0];
      v16 = v67;
      v23 = 1 << *(v67 + 32);
      if (v20 >= v23)
      {
        goto LABEL_28;
      }

      v18 = v66;
      v51 = *(v66 + 8 * v76);
      if ((v51 & v75) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v22) = v65;
      if (v65 != *(v67 + 36))
      {
        goto LABEL_30;
      }

      v52 = v51 & (-2 << (v20 & 0x3F));
      if (v52)
      {
        v23 = __clz(__rbit64(v52)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v53 = v76 << 6;
        v54 = v76 + 1;
        v55 = (v63 + 8 * v76);
        while (v54 < (v23 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_22CF44CF8(v20, v65, 0);
            v23 = __clz(__rbit64(v56)) + v53;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v20, v65, 0);
      }

LABEL_4:
      v21 = v74 + 1;
      v20 = v23;
      if (v74 + 1 == v64)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v81 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v58 = sub_22D016D3C();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v82 = v58;

    sub_22CF623EC(v59, 1, &v82);

    v60 = v82;
    os_unfair_lock_unlock(v62);
    return v60;
  }

  return result;
}

uint64_t sub_22D00BD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_22D00BE10(void *a1)
{
  v2 = v1;
  v4 = sub_22D015FDC();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v56 = &v53 - v10;
  v63 = sub_22D01697C();
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v63, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01691C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16, v18);
  v19 = sub_22D01653C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  sub_22D01608C();
  v1[2] = sub_22D01607C();
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  v2[4] = v22;
  v62 = sub_22CEEC38C();
  sub_22D0164FC();
  v64 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  v24 = v2;
  sub_22D016ADC();
  (*(v11 + 104))(v15, *MEMORY[0x277D85268], v63);
  v25 = a1;
  v24[3] = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v26 = qword_2814444F8;
  v24[5] = qword_2814444F8;
  if (v26)
  {
    v27 = *(v26 + 40);

    v28 = sub_22CF51E8C();
    v54 = v25;
    v55 = v24;

    v29 = *(v28 + 16);
    v58 = v28;
    v30 = 0;
    if (v29)
    {
      v31 = v60;
      v32 = *(v59 + 16);
      v33 = v28 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v61 = *(v59 + 72);
      v62 = v32;
      v34 = v56;
      v63 = v59 + 16;
      v35 = (v59 + 8);
      v36 = 0xE000000000000000;
      v37 = v29;
      do
      {
        v62(v34, v33, v31);
        v64 = v30;
        v65 = v36;

        MEMORY[0x2318C5860](8236, 0xE200000000000000);
        v38 = sub_22D015FBC();
        MEMORY[0x2318C5860](v38);

        v30 = v64;
        v36 = v65;
        (*v35)(v34, v31);
        v33 += v61;
        --v37;
      }

      while (v37);
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v39 = sub_22D01637C();
    __swift_project_value_buffer(v39, qword_2814443C0);

    v40 = sub_22D01636C();
    v41 = sub_22D01690C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136446210;
      v44 = sub_22CEEE31C(v30, v36, &v64);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_22CEE1000, v40, v41, "Restored tokens for environments: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {
    }

    v24 = v55;
    v45 = v60;
    v46 = v57;
    if (v29)
    {
      v47 = *(v59 + 16);
      v48 = v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v49 = *(v59 + 72);
      v50 = (v59 + 8);
      do
      {
        v47(v46, v48, v45);
        v51 = v24[2];
        sub_22D01606C();
        (*v50)(v46, v45);
        v48 += v49;
        --v29;
      }

      while (v29);
    }
  }

  else
  {
  }

  return v24;
}

uint64_t sub_22D00C490(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D015FDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v8);
  v9 = *(v1 + 16);
  v10 = sub_22D01606C();
  if (v10)
  {
    v15[1] = sub_22D01566C();
    v11 = *(v2 + 24);
    (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    (*(v5 + 32))(v13 + v12, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    sub_22D01565C();
    sub_22D01564C();
  }

  os_unfair_lock_unlock(v8);
  return v10 & 1;
}

uint64_t sub_22D00C644(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D015FDC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v14 = *(a3 + 40);
  if (v14)
  {
    v22[3] = a2;
    v23 = a1;
    v22[1] = v13;
    v22[2] = v22;
    MEMORY[0x28223BE20](v11, v12);
    v22[0] = a4;
    v22[-2] = a4;
    v15 = *(v14 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v16 = sub_22CF3D558();
    v17 = *(*(v14 + 96) + 16);

    os_unfair_lock_lock(v17);
    v18 = *(v14 + 16);
    MEMORY[0x28223BE20](v19, v20);
    v22[-4] = sub_22D00CBCC;
    v22[-3] = &v22[-4];
    v22[-2] = v16;
    sub_22D0143FC();
    os_unfair_lock_unlock(v17);

    sub_22CF3DC24();

    a1 = v23;
  }

  return a1(v11);
}

uint64_t sub_22D00CA64()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D01605C();
  os_unfair_lock_unlock(v2);
  return v4;
}

void sub_22D00CAAC()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  sub_22D01604C();

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22D00CB48(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D015FDC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_22D00C644(a1, a2, v6, v7);
}

uint64_t sub_22D00CBCC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  return sub_22CF52168();
}

uint64_t sub_22D00CBF8()
{
  v1 = sub_22D0162BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v40 - v9;
  v11 = *(*(v0 + 16) + 48);

  v12 = sub_22CF5255C();

  v13 = v12;
  v48 = *(v12 + 16);
  if (!v48)
  {

    return MEMORY[0x277D84F98];
  }

  v14 = 0;
  v47 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v46 = v2 + 16;
  v44 = (v2 + 8);
  v40 = (v2 + 40);
  v41 = (v2 + 32);
  v15 = MEMORY[0x277D84F98];
  v42 = v12;
  v43 = v2;
  v45 = v10;
  v49 = v7;
  while (v14 < *(v13 + 16))
  {
    v17 = *(v2 + 72);
    v18 = *(v2 + 16);
    v18(v10, v47 + v17 * v14, v1);
    v19 = sub_22D01624C();
    v20 = v10;
    v22 = v21;
    v23 = v7;
    v24 = v1;
    v18(v23, v20, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v15;
    v26 = sub_22CEEC698(v19, v22);
    v28 = v15[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_20;
    }

    v32 = v27;
    if (v15[3] < v31)
    {
      sub_22CFBC2E4(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22CEEC698(v19, v22);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v38 = v26;
    sub_22CFB8818();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v16 = v26;

      v15 = v50;
      v1 = v24;
      (*v40)(v50[7] + v16 * v17, v49, v24);
      v10 = v45;
      (*v44)(v45, v24);
      goto LABEL_4;
    }

LABEL_12:
    v34 = v49;
    v15 = v50;
    v50[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v15[6] + 16 * v26);
    *v35 = v19;
    v35[1] = v22;
    v1 = v24;
    (*v41)(v15[7] + v26 * v17, v34, v24);
    v10 = v45;
    (*v44)(v45, v24);
    v36 = v15[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_21;
    }

    v15[2] = v37;
LABEL_4:
    ++v14;
    v7 = v49;
    v13 = v42;
    v2 = v43;
    if (v48 == v14)
    {

      return v15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22D00CFB0(uint64_t a1)
{
  v17 = a1;
  v16 = sub_22D01697C();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_22D01653C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  sub_22CEEC38C();
  sub_22D0164EC();
  v18 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v2 + 104))(v6, *MEMORY[0x277D85260], v16);
  v13 = sub_22D0169BC();
  *(v1 + 16) = v17;
  *(v1 + 24) = v13;
  return v1;
}

uint64_t sub_22D00D1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22D0162BC();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v3 + 16) + 48);

  v13 = sub_22CF5255C();
  v21[0] = a3;

  v14 = *(v13 + 16);
  result = v22;
  if (v14)
  {
    v16 = 0;
    v21[1] = v22 + 16;
    v17 = (v22 + 8);
    while (v16 < *(v13 + 16))
    {
      (*(result + 16))(v11, v13 + ((*(result + 80) + 32) & ~*(result + 80)) + *(result + 72) * v16, v7);
      if (sub_22D01624C() == a1 && v18 == a2)
      {

LABEL_10:

        v20 = v21[0];
        (*(v22 + 32))(v21[0], v11, v7);
        return (*(v22 + 56))(v20, 0, 1, v7);
      }

      v19 = sub_22D016DFC();

      if (v19)
      {
        goto LABEL_10;
      }

      ++v16;
      (*v17)(v11, v7);
      result = v22;
      if (v14 == v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    return (*(v22 + 56))(v21[0], 1, 1, v7);
  }

  return result;
}

uint64_t sub_22D00D45C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = sub_22D0162BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v7 = *(a3 + 16);
  v8 = *(v7 + 16);
  type metadata accessor for ActivityDatabase.MutableStore();
  swift_allocObject();
  sub_22CF3D558();
  v9 = *(*(v7 + 96) + 16);

  os_unfair_lock_lock(v9);
  v10 = *(v7 + 16);
  sub_22D0143FC();
  os_unfair_lock_unlock(v9);

  sub_22CF3DC24();

  return a1(v11);
}

uint64_t sub_22D00D808(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 + 16);
  type metadata accessor for ActivityDatabase.MutableStore();
  swift_allocObject();
  sub_22CF3D558();
  v6 = *(*(v4 + 96) + 16);

  os_unfair_lock_lock(v6);
  v7 = *(v4 + 16);
  sub_22D0143FC();
  os_unfair_lock_unlock(v6);

  sub_22CF3DC24();

  return a1();
}

uint64_t sub_22D00DB50(uint64_t a1)
{
  v3 = sub_22D0162BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = *v1;
  sub_22D01566C();
  v8 = *(v7 + 24);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  (*(v4 + 32))(v10 + v9, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22D00DCD0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D01566C();
  v6 = *(v5 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;

  sub_22D01565C();
  sub_22D01564C();
}

uint64_t sub_22D00DD98(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22D00D808(a1, a2, v2[2]);
}

uint64_t sub_22D00DDA4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(a1 + 40);
  return sub_22CF538EC(v3, v2);
}

uint64_t sub_22D00DDD0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*(sub_22D0162BC() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_22D00D45C(a1, a2, v6);
}

uint64_t sub_22D00DE54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 40);
  return sub_22CF5302C(v2);
}

uint64_t sub_22D00DE80(void *a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_22D01697C();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v28, v5);
  v27 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_22D01653C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener] = 0;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_serverStartupToken] = -1;
  v13 = OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *&v2[v13] = v14;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_clients] = MEMORY[0x277D84FA0];
  v26[1] = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D011BD4(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v3 + 104))(v27, *MEMORY[0x277D85268], v28);
  v16 = v29;
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_requestProcessingQueue] = sub_22D0169BC();
  *&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_authorizationManager] = v30;
  v17 = type metadata accessor for AuthorizationServer();
  v34.receiver = v2;
  v34.super_class = v17;

  v18 = objc_msgSendSuper2(&v34, sel_init);
  v32 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22D011C1C;
  *(v19 + 24) = &v31;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_71;
  v20 = _Block_copy(aBlock);
  v21 = objc_opt_self();
  v22 = v18;

  v23 = [v21 listenerWithConfigurator_];

  _Block_release(v20);

  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v25 = *&v22[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener];
    *&v22[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener] = v23;

    return v22;
  }

  return result;
}

id sub_22D00E2F4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014B5C();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D014B4C();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D00E420(void *a1, void *a2, char *a3)
{
  sub_22D014B4C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  v24 = sub_22D011ADC;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_54_0;
  v13 = _Block_copy(&v20);
  v14 = a3;
  v15 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v24 = sub_22D011B00;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_60;
  v17 = _Block_copy(&v20);
  v18 = v14;
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v17);
}

void sub_22D00E70C(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_281444338);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF61360(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

char *sub_22D00E9D0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4060, &unk_22D01D5C0);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v47 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4070, &unk_22D01D5D0);
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  v20 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_cancellables] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationLevelBundlesObserving] = v20;
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection] = a1;
  v49 = a2;
  *&v2[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager] = a2;
  v21 = type metadata accessor for AuthorizationServiceClient();
  v60.receiver = v2;
  v60.super_class = v21;
  v48 = a1;

  v56 = objc_msgSendSuper2(&v60, sel_init);
  v44 = OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager;
  v22 = *&v56[OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager];
  v23 = v56;

  v24 = sub_22CF46328();

  v58 = v24;
  v25 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  v26 = sub_22D01698C();
  v59 = v26;
  v54 = sub_22D01693C();
  v27 = *(v54 - 8);
  v53 = *(v27 + 56);
  v55 = v27 + 56;
  v53(v14, 1, 1, v54);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  v46 = MEMORY[0x277CBCD90];
  v42 = sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0);
  v52 = sub_22D011B24();
  sub_22D01647C();
  sub_22CEEC3D8(v14, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = MEMORY[0x277CBCD60];
  v41 = sub_22CEE8394(&qword_28143DA28, &unk_27D9F4070, &unk_22D01D5D0);
  sub_22D0164AC();

  v28 = *(v57 + 8);
  v57 += 8;
  v40 = v28;
  v28(v19, v15);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v29 = v44;
  v30 = *&v56[v44];

  v31 = sub_22CF463EC();

  v58 = v31;
  v39 = v25;
  v32 = sub_22D01698C();
  v59 = v32;
  v53(v14, 1, 1, v54);
  sub_22D01647C();
  sub_22CEEC3D8(v14, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22D0164AC();

  v40(v19, v15);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v33 = *&v56[v29];

  v34 = sub_22CF464B0();

  v58 = v34;
  v35 = sub_22D01698C();
  v59 = v35;
  v53(v14, 1, 1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F36B0, &unk_22D01D5E0);
  sub_22CEE8394(&unk_28143D9E8, &unk_27D9F36B0, &unk_22D01D5E0);
  v36 = v47;
  sub_22D01647C();
  sub_22CEEC3D8(v14, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22CEE8394(&qword_28143DA30, &unk_27D9F4060, &unk_22D01D5C0);
  v37 = v50;
  sub_22D0164AC();

  (*(v51 + 8))(v36, v37);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  return v23;
}

void sub_22D00F138(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_22D00F204(v4, a3);
  }
}

void sub_22D00F1A8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22D00F740(v1);
  }
}

void sub_22D00F204(uint64_t a1, int a2)
{
  v5 = sub_22D014A5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection);
  v12 = [v11 remoteProcess];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_22D01667C();
    v16 = v15;

    if ([v11 remoteTarget])
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v58[0] = v56;
    v58[1] = v57;
    if (*(&v57 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4050, &qword_22D01D5A8);
      if (swift_dynamicCast())
      {
        v50 = v10;
        v52 = v5;
        v53 = a2;
        v22 = a1 + 64;
        v21 = *(a1 + 64);
        v54 = v55;
        v23 = 1 << *(a1 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & v21;
        v26 = (v23 + 63) >> 6;
        v48 = (v6 + 8);

        v27 = 0;
        v51 = a1;
        v49 = v14;
        while (v25)
        {
LABEL_25:
          v39 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v40 = v39 | (v27 << 6);
          v41 = (*(a1 + 48) + 16 * v40);
          v42 = *(*(a1 + 56) + v40);
          v43 = *v41 == v14 && v41[1] == v16;
          if (v43 || (sub_22D016DFC() & 1) != 0)
          {
            v28 = v50;
            sub_22D014A3C();
            sub_22D011BD4(&unk_27D9F3FD0, MEMORY[0x277CB9558]);
            v29 = v52;
            v30 = sub_22D01517C();
            v31 = sub_22D0141EC();
            v33 = v32;

            v34 = sub_22D0141DC();
            v35 = &selRef_frequentUpdatesAuthorizationDidChangeWithOptions_;
            if ((v53 & 1) == 0)
            {
              v35 = &selRef_activityAuthorizationDidChangeWithOptions_;
            }

            [v54 *v35];
            sub_22CEE7524(v31, v33);

            v36 = v28;
            v14 = v49;
            v37 = v29;
            a1 = v51;
            (*v48)(v36, v37);
          }
        }

        while (1)
        {
          v38 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v38 >= v26)
          {

            swift_unknownObjectRelease();

            return;
          }

          v25 = *(v22 + 8 * v38);
          ++v27;
          if (v25)
          {
            v27 = v38;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {

      sub_22CEEC3D8(v58, &qword_27D9F2B10, &unk_22D01B930);
    }

    if (qword_28143DAB8 == -1)
    {
LABEL_34:
      v44 = sub_22D01637C();
      __swift_project_value_buffer(v44, qword_281444338);
      v45 = sub_22D01636C();
      v46 = sub_22D0168EC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22CEE1000, v45, v46, "No remote target for expected interface", v47, 2u);
        MEMORY[0x2318C6860](v47, -1, -1);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_34;
  }

  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v17 = sub_22D01637C();
  __swift_project_value_buffer(v17, qword_281444338);
  v54 = sub_22D01636C();
  v18 = sub_22D0168EC();
  if (os_log_type_enabled(v54, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22CEE1000, v54, v18, "No bundle identifier for client's process", v19, 2u);
    MEMORY[0x2318C6860](v19, -1, -1);
  }

  v20 = v54;
}

void sub_22D00F740(uint64_t a1)
{
  v59 = a1;
  v2 = sub_22D014AFC();
  v58 = *(v2 - 8);
  v3 = v58[8];
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v57 = v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3FE0, qword_22D01D590);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = (v56 - v16);
  v63 = v1;
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v69[0] = v71;
  v69[1] = v72;
  if (!*(&v72 + 1))
  {
    sub_22CEEC3D8(v69, &qword_27D9F2B10, &unk_22D01B930);
LABEL_38:
    if (qword_28143DAB8 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4050, &qword_22D01D5A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v56[0] = v70;
  v18 = v59 + 64;
  v19 = 1 << *(v59 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v59 + 64);
  v22 = OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationLevelBundlesObserving;

  v62 = v22;
  swift_beginAccess();
  v23 = 0;
  v24 = (v19 + 63) >> 6;
  v56[1] = v58 + 2;
  v66 = (v58 + 4);
  v61 = (v58 + 1);
  v67 = v14;
  v64 = v17;
  v60 = v18;
  v65 = v2;
  while (v21)
  {
    v25 = v23;
LABEL_23:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v59 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = v58;
    v34 = v57;
    (v58[2])(v57, *(v59 + 56) + v58[9] * v29, v2);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
    v36 = *(v35 + 48);
    v37 = v67;
    *v67 = v32;
    *(v37 + 1) = v31;
    v14 = v37;
    (v33[4])(&v37[v36], v34, v2);
    (*(*(v35 - 8) + 56))(v14, 0, 1, v35);

    v17 = v64;
LABEL_24:
    sub_22D011848(v14, v17);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
    if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
    {
      swift_unknownObjectRelease();

      return;
    }

    v39 = *v17;
    v40 = v17[1];
    v2 = v65;
    (*v66)(v68, v17 + *(v38 + 48), v65);
    v41 = *(v63 + v62);
    if (!*(v41 + 16))
    {
      goto LABEL_11;
    }

    v42 = *(v41 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    v43 = sub_22D016ECC();
    v44 = -1 << *(v41 + 32);
    v45 = v43 & ~v44;
    if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_10:

      v17 = v64;
      v2 = v65;
LABEL_11:

      goto LABEL_12;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = (*(v41 + 48) + 16 * v45);
      v48 = *v47 == v39 && v47[1] == v40;
      if (v48 || (sub_22D016DFC() & 1) != 0)
      {
        break;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v49 = sub_22D01666C();

    sub_22D014AEC();
    v50 = sub_22D0168AC();
    [v56[0] activityAuthorizationLevelDidChangeForBundleIdentifier:v49 authorizationCount:v50];

    v17 = v64;
    v2 = v65;
LABEL_12:
    (*v61)(v68, v2);
    v14 = v67;
    v18 = v60;
  }

  if (v24 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F4058, &unk_22D01D5B0);
      (*(*(v51 - 8) + 56))(v14, 1, 1, v51);
      v21 = 0;
      v23 = v27;
      goto LABEL_24;
    }

    v21 = *(v18 + 8 * v25);
    ++v23;
    if (v21)
    {
      v23 = v25;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_39:
  v52 = sub_22D01637C();
  __swift_project_value_buffer(v52, qword_281444338);
  v53 = sub_22D01636C();
  v54 = sub_22D0168EC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_22CEE1000, v53, v54, "No remote target for expected interface", v55, 2u);
    MEMORY[0x2318C6860](v55, -1, -1);
  }
}

id sub_22D00FE98(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D00FF60(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v17 - v8;
  v10 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v11 = sub_22D01666C();
  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
    v14 = sub_22D014A4C();
    sub_22D014A2C();
    sub_22CF46968(v14 & 1, a1, a2, v9);
    return sub_22CEEC3D8(v9, &qword_27D9F2608, &qword_22D018B68);
  }

  else
  {
    sub_22D0117D8();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_22D010104(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
    v9 = sub_22D014A4C();
    v10 = *(v8 + 72);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9 & 1;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22D011838;
    *(v12 + 24) = v11;
    v17[4] = sub_22CEF4034;
    v17[5] = v12;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_22CEF3C20;
    v17[3] = &block_descriptor_39_0;
    v13 = _Block_copy(v17);

    dispatch_sync(v10, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_22D0117D8();
  swift_allocError();
  *v16 = 1;
  return swift_willThrow();
}

uint64_t sub_22D01034C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *))
{
  v24[1] = a5;
  v25 = a6;
  v8 = sub_22D014A5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01667C();
  v16 = v15;
  v17 = a4;
  v18 = a1;
  v19 = sub_22D0141EC();
  v21 = v20;

  v22 = sub_22D0141DC();
  sub_22D011BD4(&unk_27D9F3FD0, MEMORY[0x277CB9558]);
  sub_22D01516C();

  v25(v14, v16, v13);

  sub_22CEE7524(v19, v21);
  (*(v9 + 8))(v13, v8);
  return 1;
}

uint64_t sub_22D010570(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
    v9 = *(v8 + 72);
    v10 = swift_allocObject();
    v10[2] = v8;
    v10[3] = a1;
    v10[4] = a2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_22D01182C;
    *(v11 + 24) = v10;
    v15[4] = sub_22CEF3C48;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_22CEF3C20;
    v15[3] = &block_descriptor_34;
    v12 = _Block_copy(v15);

    dispatch_sync(v9, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_22D0117D8();
  swift_allocError();
  *v14 = 1;
  return swift_willThrow();
}

uint64_t sub_22D010828()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22D01667C();

    v3 = *(*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager) + 72);
    MEMORY[0x28223BE20](v4, v5);
    sub_22D01699C();

    return v11;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v7 = sub_22D01637C();
    __swift_project_value_buffer(v7, qword_281444338);
    v8 = sub_22D01636C();
    v9 = sub_22D0168EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v8, v9, "No remote process found for connection", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22D010A10(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D014AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v12 = sub_22D01666C();
  v13 = [v11 hasEntitlement_];

  if (v13)
  {
    v16 = *(*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager) + 72);
    MEMORY[0x28223BE20](v14, v15);
    *&v24[-32] = v17;
    *&v24[-24] = a1;
    *&v24[-16] = a2;
    sub_22D01699C();
    sub_22D014AEC();
    v18 = sub_22D0168AC();
    (*(v6 + 8))(v10, v5);
    return v18;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v20 = sub_22D01637C();
    __swift_project_value_buffer(v20, qword_281444338);
    v21 = sub_22D01636C();
    v22 = sub_22D0168EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22CEE1000, v21, v22, "The requesting process is not entitled to request for activities authorization level.", v23, 2u);
      MEMORY[0x2318C6860](v23, -1, -1);
    }

    sub_22CEE82F8(0, &qword_27D9F3FC0, 0x277CCABB0);
    return sub_22D016A4C();
  }
}

id sub_22D010D1C(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    swift_beginAccess();

    sub_22CEE54CC(&v13, a1, a2);
    swift_endAccess();
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "The requesting process is not entitled to request for activities authorization level.", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }

  return v7;
}

id sub_22D010EE0(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (v7)
  {
    swift_beginAccess();
    sub_22CF3C4B0(a1, a2);
    swift_endAccess();
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "The requesting process is not entitled to request for activities authorization level.", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_22D011098()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v2 = sub_22D01666C();
  v3 = [v1 hasEntitlement_];

  if (v3)
  {
    v6 = *(*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager) + 72);
    MEMORY[0x28223BE20](v4, v5);
    sub_22D01699C();
    return v12;
  }

  else
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_281444338);
    v9 = sub_22D01636C();
    v10 = sub_22D0168EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22CEE1000, v9, v10, "The requesting process is not entitled to request for activities authorization", v11, 2u);
      MEMORY[0x2318C6860](v11, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22D01127C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_281444338);
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22CEE1000, v10, v11, "No remote process found for connection", v12, 2u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    return 0;
  }

  v3 = sub_22D01667C();
  v5 = v4;

  v6 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
  v7 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v8 = sub_22CEE8CD0(v3, v5, 0);
  if (!v8 || (v14 = v8, v15 = [v8 supportsLiveActivitiesFrequentUpdates], v14, (v15 & 1) == 0))
  {

    return 0;
  }

  v18 = *(v6 + 72);
  MEMORY[0x28223BE20](v16, v17);
  sub_22D01699C();

  return v19;
}

id sub_22D0114CC(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_connection) remoteProcess];
  v6 = sub_22D01666C();
  v7 = [v5 hasEntitlement_];

  if (!v7)
  {
    if (qword_28143DAB8 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_281444338);
    v12 = sub_22D01636C();
    v13 = sub_22D0168EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v13, "The requesting process is not entitled to request for activities authorization", v14, 2u);
      MEMORY[0x2318C6860](v14, -1, -1);
    }

    return 0;
  }

  v8 = *(v2 + OBJC_IVAR____TtC11SessionCoreP33_3EB6553D2992046DCD21680C8109860026AuthorizationServiceClient_authorizationManager);
  v9 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_22CEE8CD0(a1, a2, 0);
  if (result)
  {
    v15 = result;
    v16 = [result supportsLiveActivitiesFrequentUpdates];

    if (v16)
    {
      v19 = *(v8 + 72);
      MEMORY[0x28223BE20](v17, v18);
      sub_22D01699C();
      return v20;
    }

    return 0;
  }

  return result;
}

uint64_t sub_22D011708(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_22D01667C();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

unint64_t sub_22D011770()
{
  if (*v0)
  {
    result = 0xD000000000000046;
  }

  else
  {
    result = 0xD00000000000002DLL;
  }

  *v0;
  return result;
}

unint64_t sub_22D0117D8()
{
  result = qword_27D9F3FC8;
  if (!qword_27D9F3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3FC8);
  }

  return result;
}

uint64_t sub_22D011848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3FE0, qword_22D01D590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22D0118B8(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_authorizationManager];
  v5 = objc_allocWithZone(type metadata accessor for AuthorizationServiceClient());

  v6 = a1;
  v7 = sub_22D00E9D0(v6, v4);
  v8 = *(*&v2[OBJC_IVAR____TtC11SessionCore19AuthorizationServer_lock] + 16);
  os_unfair_lock_lock(v8);
  swift_beginAccess();
  v9 = v7;
  sub_22CF7703C(&v16, v9);
  swift_endAccess();

  os_unfair_lock_unlock(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22D011AD4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22CEE5B24;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_48_0;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  v14 = v2;

  [v6 configureConnection_];
  _Block_release(v12);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v6 activate];
  }
}

unint64_t sub_22D011B24()
{
  result = qword_28143FA10;
  if (!qword_28143FA10)
  {
    sub_22CEE82F8(255, &qword_28143FA08, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143FA10);
  }

  return result;
}

uint64_t sub_22D011BD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D011C3C()
{
  result = qword_27D9F4090;
  if (!qword_27D9F4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F4090);
  }

  return result;
}

void *sub_22D011CDC(void *a1)
{
  v63 = a1;
  v2 = sub_22D015C8C();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v55 - v8;
  v62 = sub_22D01697C();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01691C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v18 = sub_22D01653C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  sub_22D015D2C();
  v21 = v1;
  v1[2] = sub_22D015D1C();
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  v21[3] = v22;
  v59 = sub_22CEEC38C();
  sub_22D0164FC();
  v64 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v10 + 104))(v14, *MEMORY[0x277D85268], v62);
  v24 = v63;
  v25 = v21;
  v21[4] = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v26 = qword_2814444F8;
  v21[5] = qword_2814444F8;
  if (v26)
  {
    v27 = *(v26 + 24);

    v28 = sub_22CF4F824();
    v56 = v24;
    v57 = v21;

    v29 = *(v28 + 16);
    v30 = v61;
    v59 = v28;
    v31 = 0;
    if (v29)
    {
      v32 = *(v60 + 16);
      v33 = v28 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v62 = *(v60 + 72);
      v63 = v32;
      v34 = (v60 + 8);
      v35 = 0xE000000000000000;
      v36 = v29;
      (v32)(v9, v33, v61);
      while (1)
      {
        v38 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v38 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (v38)
        {
          v64 = v31;
          v65 = v35;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          v37 = sub_22D015C3C();
          MEMORY[0x2318C5860](v37);

          v30 = v61;

          v31 = v64;
          v35 = v65;
        }

        else
        {
          v31 = sub_22D015C3C();
          v40 = v39;

          v35 = v40;
        }

        (*v34)(v9, v30);
        v33 += v62;
        if (!--v36)
        {
          break;
        }

        (v63)(v9, v33, v30);
      }
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v41 = sub_22D01637C();
    __swift_project_value_buffer(v41, qword_2814443C0);

    v42 = sub_22D01636C();
    v43 = sub_22D01690C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v64 = v45;
      *v44 = 136446210;
      v46 = sub_22CEEE31C(v31, v35, &v64);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_22CEE1000, v42, v43, "Restored subscriptions with identifiers: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x2318C6860](v45, -1, -1);
      MEMORY[0x2318C6860](v44, -1, -1);
    }

    else
    {
    }

    v25 = v57;
    v47 = v58;
    if (v29)
    {
      v48 = *(v60 + 16);
      v49 = v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v50 = *(v60 + 72);
      v51 = (v60 + 8);
      v52 = v61;
      do
      {
        v48(v47, v49, v52);
        v53 = v25[2];
        sub_22D015CEC();
        (*v51)(v47, v52);
        v49 += v50;
        --v29;
      }

      while (v29);
    }
  }

  else
  {
  }

  return v25;
}

uint64_t sub_22D012374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_22D0123E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D015C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = *(a1 + 16);
  sub_22D015CEC();
  result = sub_22D015BCC();
  if ((result & 1) == 0)
  {
    sub_22D01566C();
    v10 = *(a1 + 32);
    (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    (*(v5 + 32))(v12 + v11, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    sub_22D01565C();
    sub_22D01564C();
  }

  return result;
}

uint64_t sub_22D01257C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1();
}

uint64_t sub_22D012864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_22D015C8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v11 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v41 - v15;
  v17 = *(a1 + 16);
  v42 = a2;
  v43 = a3;
  sub_22D015D0C();
  v18 = *(v8 + 48);
  v44 = v7;
  if (v18(v16, 1, v7) == 1)
  {
    v19 = v43;
    sub_22CF886DC(v16);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v20 = sub_22D01637C();
    __swift_project_value_buffer(v20, qword_2814443C0);

    v21 = sub_22D01636C();
    v22 = sub_22D01690C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_22CEEE31C(v42, v19, &v46);
      _os_log_impl(&dword_22CEE1000, v21, v22, "Subscription does not exist with identifier: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x2318C6860](v24, -1, -1);
      MEMORY[0x2318C6860](v23, -1, -1);
    }

    v25 = 1;
  }

  else
  {
    v26 = *(v8 + 32);
    v27 = v45;
    v28 = v16;
    v29 = v44;
    v26(v45, v28, v44);
    v30 = sub_22D01566C();
    v31 = *(a1 + 32);
    v41[1] = v30;
    v41[2] = v31;
    v32 = v8;
    v33 = v29;
    (*(v32 + 16))(v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v29);
    v34 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    v37 = v33;
    v8 = v32;
    v26(v36 + v34, v11, v37);
    v38 = (v36 + v35);
    v39 = v43;
    *v38 = v42;
    v38[1] = v39;

    sub_22D01565C();
    sub_22D01564C();

    v25 = 0;
  }

  return (*(v8 + 56))(v45, v25, 1, v44);
}

uint64_t sub_22D012C10(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (v3)
  {
    v10 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558();
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    v6 = *(v3 + 16);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v10;
  }

  return a1(a1);
}

uint64_t sub_22D012F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_22D015C3C();
  sub_22CF51010(v2, v3);
}

void sub_22D012F90(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a5;
  v42 = a4;
  v8 = sub_22D0161DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v41 - v15;
  v17 = *(a1 + 16);
  v43 = a2;
  v44 = a3;
  v18 = v42;
  v19 = sub_22D015CFC();
  if (*(v19 + 16))
  {
    v41 = sub_22D01566C();
    v20 = *(a1 + 32);
    (*(v9 + 16))(v16, v18, v8);
    v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = a1;
    *(v22 + 3) = v19;
    v23 = v44;
    *(v22 + 4) = v43;
    *(v22 + 5) = v23;
    (*(v9 + 32))(&v22[v21], v16, v8);

    sub_22D01565C();
    sub_22D01564C();
  }

  else
  {
    v24 = v9;
    v25 = v43;
    v26 = v44;

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814443C0);
    v28 = v8;
    (*(v24 + 16))(v13, v18, v8);
    v29 = v26;

    v30 = sub_22D01636C();
    v31 = sub_22D01690C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v25;
      v33 = v24;
      v34 = swift_slowAlloc();
      v35 = v13;
      v36 = swift_slowAlloc();
      v46 = v36;
      *v34 = 136446466;
      *(v34 + 4) = sub_22CEEE31C(v32, v29, &v46);
      *(v34 + 12) = 2082;
      v37 = sub_22D0161CC();
      v39 = v38;
      (*(v33 + 8))(v35, v28);
      v40 = sub_22CEEE31C(v37, v39, &v46);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_22CEE1000, v30, v31, "Subscriptions do not exist with environmentName: %{public}s; topic: %{public}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v36, -1, -1);
      MEMORY[0x2318C6860](v34, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v13, v28);
    }

    v19 = MEMORY[0x277D84F90];
  }

  *v45 = v19;
}

uint64_t sub_22D013364(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v13 = sub_22D0161DC();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v19 = *(a3 + 40);
  if (v19)
  {
    v27[0] = a5;
    v27[1] = a7;
    v27[4] = a2;
    v28 = a1;
    v27[2] = v18;
    v27[3] = v27;
    MEMORY[0x28223BE20](v16, v17);
    v27[-2] = a4;
    v20 = *(v19 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v21 = sub_22CF3D558();
    v22 = *(*(v19 + 96) + 16);

    os_unfair_lock_lock(v22);
    v23 = *(v19 + 16);
    MEMORY[0x28223BE20](v24, v25);
    v27[-4] = sub_22D013E4C;
    v27[-3] = &v27[-4];
    v27[-2] = v21;
    sub_22D0143FC();
    os_unfair_lock_unlock(v22);

    sub_22CF3DC24();

    a1 = v28;
  }

  return a1(v16);
}

uint64_t sub_22D0137BC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_22D015C8C();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4, v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v14 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v20 = *(v12 + 56);
    v21 = (v12 - 8);
    v22 = v13;
    while (1)
    {
      v15 = v12;
      v22(v10, v14, v4);
      v16 = *(v23 + 16);
      v17 = sub_22D015C3C();
      sub_22CF51010(v17, v18);
      if (v2)
      {
        break;
      }

      (*v21)(v10, v4);

      v14 += v20;
      --v11;
      v12 = v15;
      if (!v11)
      {
        return result;
      }
    }

    (*v21)(v10, v4);
  }

  return result;
}

void sub_22D0139A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*(v3 + 24) + 16);
  os_unfair_lock_lock(v4);
  sub_22D0123E8(v3, a1);

  os_unfair_lock_unlock(v4);
}

void sub_22D013A00(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*(v7 + 24) + 16);
  os_unfair_lock_lock(v8);
  sub_22D012864(v7, a1, a2, a3);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_22D013A98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*(v7 + 24) + 16);
  os_unfair_lock_lock(v8);
  sub_22D012F90(v7, a1, a2, a3, &v10);
  os_unfair_lock_unlock(v8);
  return v10;
}

void sub_22D013B44()
{
  v1 = *v0;
  v2 = *(*(v1 + 24) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  sub_22D015CBC();

  os_unfair_lock_unlock(v2);
}

void sub_22D013BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = *v5;
  v10 = *(*(v9 + 24) + 16);
  os_unfair_lock_lock(v10);
  v11 = *(v9 + 16);
  a5(a1, a2);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_22D013C6C()
{
  v1 = *v0;
  v2 = *(*(v1 + 24) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015CDC();
  os_unfair_lock_unlock(v2);
  return v4 & 1;
}

uint64_t sub_22D013CCC()
{
  v1 = *v0;
  v2 = *(*(v1 + 24) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015CCC();
  os_unfair_lock_unlock(v2);
  return v4 & 1;
}

uint64_t sub_22D013D3C()
{
  v1 = *v0;
  v2 = *(*(v1 + 24) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015CAC();
  os_unfair_lock_unlock(v2);
  return v4 & 1;
}

uint64_t sub_22D013DC4(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D0161DC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_22D013364(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_22D013E68(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(sub_22D015C8C() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 24) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_22D012C10(a1, a2, v6);
}

uint64_t sub_22D013F38(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(*(sub_22D015C8C() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_22D01257C(a1, a2, v6);
}

uint64_t sub_22D013FBC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return sub_22CF5042C(v2);
}