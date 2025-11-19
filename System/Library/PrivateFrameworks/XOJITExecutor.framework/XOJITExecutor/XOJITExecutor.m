uint64_t sub_275163210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275163278()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2751632BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_275163304()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275163358(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275163378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for XOJITExecutor.JITDylibHandle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XOJITExecutor.JITDylibHandle(uint64_t result, int a2, int a3)
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

void sub_27516346C(uint64_t a1, unint64_t *a2)
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

uint64_t XOJITExecutor.TerminationResult.hashValue.getter()
{
  v1 = *v0;
  sub_27516DDC8();
  MEMORY[0x277C6ABA0](v1);
  return sub_27516DDE8();
}

uint64_t sub_275163598()
{
  v1 = *v0;
  sub_27516DDC8();
  MEMORY[0x277C6ABA0](v1);
  return sub_27516DDE8();
}

uint64_t sub_2751635DC()
{
  OUTLINED_FUNCTION_14();

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_275163610()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = dispatch_semaphore_create(0);
  return v0;
}

uint64_t sub_275163668()
{
  sub_275163640();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_27516369C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = dispatch_semaphore_create(0);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v1;
  *(v0 + 72) = 1;
  *(v0 + 80) = dispatch_semaphore_create(0);
  return v0;
}

uint64_t sub_2751636EC()
{
  v0 = sub_27516DBB8();
  __swift_allocate_value_buffer(v0, qword_2809A4708);
  __swift_project_value_buffer(v0, qword_2809A4708);
  return sub_27516DBA8();
}

void XOJITExecutor.init(connection:)(uint64_t a1)
{
  v2 = v1;
  v22 = sub_27516DCD8();
  v3 = OUTLINED_FUNCTION_3(v22);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_27516DCC8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v13 = sub_27516DC18();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_4();
  *(v1 + 16) = 0;
  sub_275163C84();
  sub_27516DC08();
  sub_275166FE8(&qword_2809A44A8, MEMORY[0x277D85230]);
  v15 = OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  sub_275167030(&qword_2809A44B8, &qword_2809A44B0, &qword_27516E680);
  sub_27516DD48();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v5 + 104);
  v18(v10, v17, v22);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_15();
  *(v1 + 24) = sub_27516DD18();
  sub_27516DCB8();
  sub_27516DC08();
  v18(v10, v17, v22);
  OUTLINED_FUNCTION_15();
  *(v1 + 32) = sub_27516DD18();
  *(v1 + 40) = dispatch_group_create();
  sub_27516DC08();
  sub_27516DD48();
  v18(v10, v17, v22);
  OUTLINED_FUNCTION_15();
  *(v1 + 48) = sub_27516DD18();
  type metadata accessor for XOJITExecutor.ActiveRunWrapper();
  *(v1 + 56) = sub_27516DC48();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = dispatch_semaphore_create(0);
  *(v1 + 112) = 0;
  type metadata accessor for XOJITExecutor.ActiveRunProgram();
  v19 = swift_allocObject();
  sub_27516369C();
  *(v2 + 120) = v19;
  v20 = *(v2 + 16);
  *(v2 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  xojit_xpcmemmgr_create();
}

unint64_t sub_275163C84()
{
  result = qword_2809A44A0;
  if (!qword_2809A44A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809A44A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
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

_xpc_connection_s *sub_275163DA4(void *a1)
{
  v3 = MEMORY[0x277C6B270]();
  if (qword_2809A43A0 != -1)
  {
    swift_once();
  }

  if (qword_2809A46F8 != v3)
  {
    v15 = 2;
    return sub_275164654(&v15);
  }

  swift_unknownObjectRetain();
  v5 = sub_275164A74(6516847, 0xE300000000000000, a1);
  if (v6)
  {
    goto LABEL_12;
  }

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  if (v7 == 2)
  {
LABEL_12:
    result = *(v1 + 16);
    if (result)
    {
      xpc_connection_cancel(result);
      v14 = 1;
      v8 = &v14;
LABEL_14:
      sub_275164654(v8);
      return swift_unknownObjectRelease();
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (v5 >= 2)
  {
    result = *(v1 + 16);
    if (result)
    {
      xpc_connection_cancel(result);
      v11 = 1;
      v8 = &v11;
      goto LABEL_14;
    }

    goto LABEL_29;
  }

  if (v7)
  {
    sub_275164D14(a1);
    if (v9)
    {

      result = *(v1 + 16);
      if (result)
      {
        xpc_connection_cancel(result);
        v13 = 1;
        v8 = &v13;
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else
  {
    sub_275164B3C();
    if (v10)
    {

      result = *(v1 + 16);
      if (result)
      {
        xpc_connection_cancel(result);
        v12 = 1;
        v8 = &v12;
        goto LABEL_14;
      }

      goto LABEL_31;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_275163F4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t XOJITExecutor.deinit()
{
  if (*(v0 + 16))
  {
    result = sub_27516DD88();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);
    if (v1)
    {
      xojit_dylibmgr_destroy(v1);
    }

    v2 = *(v0 + 96);
    if (v2)
    {
      xojit_xpcmemmgr_destroy(v2);
    }

    v3 = *(v0 + 16);
    swift_unknownObjectRelease();

    v4 = *(v0 + 56);

    v5 = *(v0 + 80);
    sub_275166AAC(*(v0 + 72));

    v6 = *(v0 + 120);

    return v0;
  }

  return result;
}

uint64_t XOJITExecutor.__deallocating_deinit()
{
  XOJITExecutor.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

Swift::Void __swiftcall XOJITExecutor.disconnect()()
{
  v1 = v0;
  if (qword_2809A43B0 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v2 = sub_27516DBB8();
  __swift_project_value_buffer(v2, qword_2809A4708);
  v3 = sub_27516DB98();
  v4 = sub_27516DC88();
  if (OUTLINED_FUNCTION_24(v4))
  {
    v5 = OUTLINED_FUNCTION_18();
    *v5 = 0;
    _os_log_impl(&dword_275162000, v3, v4, "deleting executor -- cancelling connection", v5, 2u);
    OUTLINED_FUNCTION_17();
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
    v7 = *(v1 + 40);
    sub_27516DCA8();
    v8 = *(v1 + 16);
    *(v1 + 16) = 0;
    swift_unknownObjectRelease();
    oslog = sub_27516DB98();
    v9 = sub_27516DC88();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = OUTLINED_FUNCTION_18();
      *v10 = 0;
      _os_log_impl(&dword_275162000, oslog, v9, "deleting executor -- connection destroyed", v10, 2u);
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    __break(1u);
  }
}

_xpc_connection_s *XOJITExecutor.start(terminationHandler:)(_xpc_connection_s *result, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 72))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = v3;
  v7 = *(v3 + 80);
  *(v3 + 72) = sub_275166ABC;
  *(v3 + 80) = v6;

  sub_275166AAC(0);
  is_sandboxed = xojit_executor_is_sandboxed();
  if (is_sandboxed)
  {
    if (is_sandboxed == -1)
    {
      v31 = 3;
      v9 = &v31;
      return sub_275164654(v9);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *(v3 + 113) = v10;
  v11 = xojit_executor_use_oopjit();
  if (v11)
  {
    if (v11 == -1)
    {
      v32 = 3;
      v9 = &v32;
      return sub_275164654(v9);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *(v3 + 112) = v12;
  if (qword_2809A43B0 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v13 = sub_27516DBB8();
  __swift_project_value_buffer(v13, qword_2809A4708);

  v14 = sub_27516DB98();
  v15 = sub_27516DC88();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = *(v3 + 112);
    *(v16 + 8) = 1024;
    *(v16 + 10) = *(v3 + 113);

    _os_log_impl(&dword_275162000, v14, v15, "use OOP-JIT: %{BOOL}d, sandboxed: %{BOOL}d", v16, 0xEu);
    OUTLINED_FUNCTION_17();
  }

  else
  {
  }

  v17 = sub_27516DB98();
  v18 = sub_27516DC88();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_18();
    *v19 = 0;
    _os_log_impl(&dword_275162000, v17, v18, "starting executor", v19, 2u);
    OUTLINED_FUNCTION_17();
  }

  result = *(v3 + 16);
  if (!result)
  {
    goto LABEL_34;
  }

  xpc_connection_resume(result);
  v20 = sub_27516DB98();
  v21 = sub_27516DC88();
  if (OUTLINED_FUNCTION_24(v21))
  {
    *OUTLINED_FUNCTION_18() = 0;
    OUTLINED_FUNCTION_23(&dword_275162000, v22, v23, "sending connect message");
    OUTLINED_FUNCTION_17();
  }

  if (qword_2809A43C8 != -1)
  {
    swift_once();
  }

  if (qword_2809A43C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v24 = qword_2809A4730;
  v25 = *(v3 + 112);
  v26 = *(v3 + 113);
  v27 = *(v3 + 96);
  v28 = *(v3 + 104);
  OUTLINED_FUNCTION_21();
  v29 = sub_27516DC58();
  v30 = xojit_create_setup_message((v29 + 32), v24, v25, v26, sub_275166830, v3, v27, v28);

  if (!v30)
  {
    v33 = 3;
    v9 = &v33;
    return sub_275164654(v9);
  }

  result = *(v3 + 16);
  if (!result)
  {
    goto LABEL_35;
  }

  xpc_connection_send_message(result, v30);

  return swift_unknownObjectRelease();
}

uint64_t sub_27516460C(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  a2(&v7);
  v5 = *(a4 + 88);
  return sub_27516DD38();
}

uint64_t sub_275164654(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + 48);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_275166D00;
  *(v6 + 24) = v5;
  v9[4] = sub_275166D0C;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_275166964;
  v9[3] = &block_descriptor_29;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall XOJITExecutor.handleRunProgramOnMainThread()()
{
  v2 = v0;
  v3 = sub_27516DC28();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v11 = (v10 - v9);
  sub_275163C84();
  *v11 = sub_27516DCE8();
  (*(v6 + 104))(v11, *MEMORY[0x277D85200], v3);
  v12 = sub_27516DC38();
  (*(v6 + 8))(v11, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    OUTLINED_FUNCTION_2();
    goto LABEL_4;
  }

  xojit_executor_set_run_program_on_main_thread(v2, sub_275164A70);
  v1 = *(v2 + 120);
  v13 = *(v1 + 48);
  sub_27516DD28();

  if (*(v1 + 40))
  {
    __break(1u);
    return;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (qword_2809A43B0 != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_27516DBB8();
  __swift_project_value_buffer(v14, qword_2809A4708);
  v15 = sub_27516DB98();
  v16 = sub_27516DC88();
  if (OUTLINED_FUNCTION_24(v16))
  {
    v17 = OUTLINED_FUNCTION_18();
    *v17 = 0;
    _os_log_impl(&dword_275162000, v15, v16, "Running main", v17, 2u);
    OUTLINED_FUNCTION_17();
  }

  *(v1 + 56) = __xojit_run_wrapper(v2, v3, v11);
  *(v1 + 64) = v18;
  *(v1 + 72) = 0;
  v19 = *(v1 + 80);
  sub_27516DD38();
}

void sub_2751649D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *(a1 + 120);
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    *(v5 + 32) = a4;
    *(v5 + 40) = 0;
    v6 = *(v5 + 48);

    sub_27516DD38();

    v7 = *(*(a1 + 120) + 80);
    sub_27516DD28();

    v8 = *(a1 + 120);
    if ((*(v8 + 72) & 1) == 0)
    {
      v10 = *(v8 + 56);
      v9 = *(v8 + 64);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_275164A74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27516DC58();
  v5 = xpc_dictionary_get_value(a3, (v4 + 32));

  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x277C6B270](v5);
  if (qword_2809A43A8 != -1)
  {
    OUTLINED_FUNCTION_10();
    swift_once();
  }

  if (v6 == qword_2809A4700)
  {
    value = xpc_uint64_get_value(v5);
  }

  else
  {
    value = 0;
  }

  swift_unknownObjectRelease();
  return value;
}

void sub_275164B3C()
{
  OUTLINED_FUNCTION_22();
  v3 = sub_275164A74(v0, v1, v2);
  if (v4)
  {
    goto LABEL_8;
  }

  v5 = v3;
  OUTLINED_FUNCTION_22();
  v9 = sub_275164A74(v6, v7, v8);
  if (v10 & 1) != 0 || (v11 = v9, OUTLINED_FUNCTION_22(), v15 = sub_275164A74(v12, v13, v14), (v16) || (v17 = v15, OUTLINED_FUNCTION_6(), OUTLINED_FUNCTION_22(), (v23 = sub_275165AB8(v18, v19, v20, v21, v22)) == 0))
  {
LABEL_8:
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_19();
  }

  else
  {
    switch(v5)
    {
      case 0uLL:
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_19();
        return;
      case 1uLL:
        goto LABEL_12;
      case 2uLL:
        sub_275165798(v11, v23);
        goto LABEL_12;
      case 3uLL:
        sub_27516584C(v17, v11, v23);
LABEL_12:
        swift_unknownObjectRelease();
        break;
      default:
        OUTLINED_FUNCTION_12();
        sub_27516DD58();

        OUTLINED_FUNCTION_11();
        v24 = sub_27516DD98();
        MEMORY[0x277C6AA30](v24);
        swift_unknownObjectRelease();

        break;
    }
  }
}

uint64_t sub_275164D14(void *a1)
{
  v3 = sub_27516DBF8();
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = sub_27516DC18();
  v13 = OUTLINED_FUNCTION_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v21 = sub_275164A74(25705, 0xE200000000000000, a1);
  if (v22)
  {
    goto LABEL_2;
  }

  v25 = v21;
  OUTLINED_FUNCTION_0();
  v28 = sub_275165AB8(0x7370756F7267, 0xE600000000000000, a1, v26, v27);
  if (!v28)
  {
    OUTLINED_FUNCTION_1();
    return v65 + 11;
  }

  v29 = v28;
  OUTLINED_FUNCTION_0();
  v32 = sub_275165AB8(0x7365736162, 0xE500000000000000, a1, v30, v31);
  if (!v32)
  {
    swift_unknownObjectRelease();
LABEL_39:
    OUTLINED_FUNCTION_1();
    return v66 + 10;
  }

  v99 = v32;
  OUTLINED_FUNCTION_0();
  v35 = sub_275165AB8(0x73657A6973, 0xE500000000000000, a1, v33, v34);
  if (!v35)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v98 = v35;
  OUTLINED_FUNCTION_0();
  v38 = sub_275165AB8(0x73656372756F73, 0xE700000000000000, a1, v36, v37);
  if (!v38)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1();
    return v67 + 12;
  }

  v97 = v38;
  OUTLINED_FUNCTION_6();
  v41 = sub_275165AB8(24929, 0xE200000000000000, a1, v39, v40);
  if (!v41)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_1();
    return v23 + 7;
  }

  v42 = v41;
  v93 = v15;
  v94 = v6;
  count = xpc_array_get_count(v29);
  if (xpc_array_get_count(v99) != count || xpc_array_get_count(v98) != count)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_44:
    OUTLINED_FUNCTION_1();
    return v68 + 1;
  }

  v88 = v42;
  if (xpc_array_get_count(v97) != count)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_1();
    return v69 + 3;
  }

  result = swift_allocObject();
  v85 = count;
  v86 = result;
  *(result + 16) = -1;
  if ((count & 0x8000000000000000) == 0)
  {
    for (i = 0; ; i = v95 + 1)
    {
      if (v85 == i)
      {
        v92 = *(v1 + 32);
        v96 = *(v1 + 40);
        OUTLINED_FUNCTION_14();
        v70 = swift_allocObject();
        v70[2] = v88;
        v70[3] = v1;
        v70[4] = v86;
        v70[5] = v25;
        v104 = sub_2751670D8;
        v105 = v70;
        aBlock = MEMORY[0x277D85DD0];
        v101 = 1107296256;
        OUTLINED_FUNCTION_8();
        v102 = v71;
        v103 = &block_descriptor_44;
        v72 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        sub_27516DC08();
        OUTLINED_FUNCTION_9();
        sub_275166FE8(v73, v74);
        v75 = OUTLINED_FUNCTION_21();
        __swift_instantiateConcreteTypeFromMangledNameV2(v75, v76);
        sub_275167030(&unk_2809A44F0, &qword_2809A44E8, &unk_27516E888);
        sub_27516DD48();
        MEMORY[0x277C6AAD0](v96, v20, v11, v72);
        _Block_release(v72);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v94 + 8))(v11, v3);
        (*(v93 + 8))(v20, v12);

        return 0;
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (i >= xpc_array_get_count(v29))
      {
        goto LABEL_48;
      }

      v95 = i;
      v46 = xpc_array_get_value(v29, i);
      if (!v46)
      {
        goto LABEL_48;
      }

      v47 = v46;
      v48 = MEMORY[0x277C6B270]();
      v89 = v48;
      if (qword_2809A43A8 != -1)
      {
        OUTLINED_FUNCTION_10();
        swift_once();
        v48 = v89;
      }

      if (v48 != qword_2809A4700)
      {
        swift_unknownObjectRelease();
LABEL_48:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      value = xpc_uint64_get_value(v47);
      swift_unknownObjectRelease();
      if (i >= xpc_array_get_count(v99))
      {
        goto LABEL_52;
      }

      v50 = xpc_array_get_value(v99, i);
      if (!v50)
      {
        goto LABEL_52;
      }

      v51 = v50;
      if (MEMORY[0x277C6B270]() != v89)
      {
        swift_unknownObjectRelease();
        goto LABEL_52;
      }

      v87 = xpc_uint64_get_value(v51);
      swift_unknownObjectRelease();
      if (i >= xpc_array_get_count(v98))
      {
        goto LABEL_52;
      }

      v52 = xpc_array_get_value(v98, i);
      if (!v52)
      {
        goto LABEL_52;
      }

      v53 = v52;
      if (MEMORY[0x277C6B270]() != v89)
      {
        swift_unknownObjectRelease();
LABEL_52:
        v24 = 0xD00000000000001DLL;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v24;
      }

      v90 = xpc_uint64_get_value(v53);
      swift_unknownObjectRelease();
      if (!xpc_array_get_value(v97, i))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1();
        return v77 - 5;
      }

      v54 = *(v86 + 16);
      if (v87 < v54)
      {
        v54 = v87;
      }

      *(v86 + 16) = v54;
      v55 = MEMORY[0x277C6B270]();
      if (v55 == sub_27516DBC8())
      {
        if (i >= xpc_array_get_count(v97) || !xpc_array_get_string(v97, i))
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_1();
          return v78 - 6;
        }

        v60 = sub_27516DC78();
        v91 = sub_275165BA8(v87, v90, v62, v60, v61);
        v64 = v63;

        if (v64)
        {
          sub_27516DD58();

          OUTLINED_FUNCTION_11();
          aBlock = v84 - 4;
          v101 = v83;
          MEMORY[0x277C6AA30](v91, v64);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_56;
        }
      }

      else
      {
        v56 = sub_275165B64(value);
        right = xpc_mach_send_get_right();
        v58 = sub_275165E38(v87, v90, v56, right);
        if (v59)
        {
          v79 = v58;
          v80 = v59;
          sub_27516DD58();

          OUTLINED_FUNCTION_11();
          aBlock = v82;
          v101 = v81;
          MEMORY[0x277C6AA30](v79, v80);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
LABEL_56:

          v24 = aBlock;

          swift_unknownObjectRelease();
          return v24;
        }
      }

      result = swift_unknownObjectRelease();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_275165798(uint64_t a1, void *a2)
{
  v4 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A44D8, &qword_27516E880);
  result = sub_27516DCF8();
  if (v9)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a2);
    length = xpc_data_get_length(a2);
    if (bytes_ptr)
    {
      v8 = bytes_ptr + length;
    }

    else
    {
      v8 = 0;
    }

    sub_2751662A8(bytes_ptr, v8, v9);
  }

  return result;
}

uint64_t sub_27516584C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_27516DBF8();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  v32 = sub_27516DC18();
  v16 = OUTLINED_FUNCTION_3(v32);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v23 = v22 - v21;
  v30 = *(v3 + 40);
  v31 = *(v3 + 32);
  OUTLINED_FUNCTION_14();
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = v3;
  v37 = sub_275166FDC;
  v38 = v24;
  OUTLINED_FUNCTION_7();
  v34 = 1107296256;
  OUTLINED_FUNCTION_8();
  v35 = v25;
  v36 = &block_descriptor_35;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  sub_27516DC08();
  OUTLINED_FUNCTION_9();
  sub_275166FE8(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A44E8, &unk_27516E888);
  sub_275167030(&unk_2809A44F0, &qword_2809A44E8, &unk_27516E888);
  sub_27516DD48();
  MEMORY[0x277C6AAD0](v30, v23, v15, v26);
  _Block_release(v26);
  (*(v10 + 8))(v15, v7);
  (*(v18 + 8))(v23, v32);
}

xpc_object_t sub_275165AB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = sub_27516DC58();
  v9 = xpc_dictionary_get_value(a3, (v8 + 32));

  if (v9)
  {
    v10 = MEMORY[0x277C6B270](v9);
    if (*a4 != -1)
    {
      swift_once();
    }

    if (v10 != *a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return v9;
}

uint64_t sub_275165B64(char a1)
{
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 2;
      if ((a1 & 4) == 0)
      {
        return v1;
      }
    }

    else
    {
      v1 = 0;
      if ((a1 & 4) == 0)
      {
        return v1;
      }
    }

    return v1 | 4;
  }

  if ((a1 & 2) == 0)
  {
    v1 = 1;
    if ((a1 & 4) == 0)
    {
      return v1;
    }

    return v1 | 4;
  }

  v1 = 3;
  if ((a1 & 4) != 0)
  {
    return v1 | 4;
  }

  return v1;
}

uint64_t sub_275165BA8(void *a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  sub_27516DC58();
  v10 = sub_27516DBD8();

  if (v10 == -1)
  {
    OUTLINED_FUNCTION_12();
    sub_27516DD58();

    OUTLINED_FUNCTION_20();
    v28[0] = v16 | 8;
    v28[1] = v15;
    v13 = a4;
    v14 = a5;
    goto LABEL_8;
  }

  if (qword_2809A43C0 != -1)
  {
    result = OUTLINED_FUNCTION_5();
  }

  if (!qword_2809A4730)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a2 % qword_2809A4730)
  {
    OUTLINED_FUNCTION_12();
    sub_27516DD58();
    MEMORY[0x277C6AA30](0xD00000000000001DLL, 0x800000027516F550);
    v12 = sub_27516DD98();
    MEMORY[0x277C6AA30](v12);

    v13 = 0xD00000000000001CLL;
    v14 = 0x800000027516F570;
LABEL_8:
    MEMORY[0x277C6AA30](v13, v14);
    return v28[0];
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (*(v5 + 112))
  {
    v17 = 5;
  }

  else
  {
    v17 = 3;
  }

  v18 = mmap(a1, a2, v17, 18, v10, 0);
  v19 = close(v10);
  if (v18 == -1)
  {
    v26 = MEMORY[0x277C6A9B0](v19);
    result = strerror(v26);
    if (result)
    {
      v27 = sub_27516DC78();
      strcpy(v28, "mmap failed: ");
      HIWORD(v28[1]) = -4864;
      MEMORY[0x277C6AA30](v27);
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if ((*(v5 + 112) & 1) != 0 || !mprotect(v18, a2, 5))
  {
    return 0;
  }

  v20 = MEMORY[0x277C6A9B0]();
  result = strerror(v20);
  if (result)
  {
    v21 = sub_27516DC78();
    v23 = v22;
    OUTLINED_FUNCTION_12();
    sub_27516DD58();

    OUTLINED_FUNCTION_20();
    v28[0] = v25;
    v28[1] = v24;
    MEMORY[0x277C6AA30](v21, v23);
LABEL_22:

    return v28[0];
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_275165E38(mach_vm_address_t a1, mach_vm_size_t size, vm_prot_t max_protection, mem_entry_name_port_t object)
{
  address[2] = *MEMORY[0x277D85DE8];
  if (qword_2809A43C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  if (!qword_2809A4730)
  {
    __break(1u);
  }

  if (size % qword_2809A4730)
  {
    address[0] = 0;
    address[1] = 0xE000000000000000;
    sub_27516DD58();
    MEMORY[0x277C6AA30](0xD00000000000001DLL, 0x800000027516F550);
    v8 = sub_27516DD98();
    MEMORY[0x277C6AA30](v8);

    OUTLINED_FUNCTION_19();
    MEMORY[0x277C6AA30](0xD00000000000001CLL);
    result = 0;
  }

  else
  {
    address[0] = a1;
    if (mach_vm_map(*MEMORY[0x277D85F48], address, size, 0, 0x4000, object, 0, 0, max_protection, max_protection, 2u))
    {
      OUTLINED_FUNCTION_19();
      result = 0xD000000000000022;
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

_xpc_connection_s *sub_275165FD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_2751660C4(a1, a2, (a3 + 16));
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "opc", 1uLL);
  xpc_dictionary_set_uint64(empty, "id", a4);
  if (v8)
  {
    xpc_dictionary_set_string(empty, "err", v8);
  }

  else
  {
    swift_beginAccess();
    xpc_dictionary_set_uint64(empty, "fa", *(a3 + 16));
  }

  result = *(a2 + 16);
  if (result)
  {
    xpc_connection_send_message(result, empty);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_2751660C4(void *a1, uint64_t a2, unint64_t *a3)
{
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  v8 = *(a2 + 96);
  swift_beginAccess();
  if (bytes_ptr)
  {
    v9 = length;
  }

  else
  {
    v9 = 0;
  }

  v10 = xojit_xpcmemmgr_run_finalize_actions(v8, *a3, bytes_ptr, v9);

  return v10;
}

uint64_t sub_275166160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2751661A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  v7 = sub_275166D50(a2);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    v11 = *(a1 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 56);
    *(a1 + 56) = 0x8000000000000000;
    v12 = *(v14 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A44D0, &qword_27516E878);
    sub_27516DD68();
    v8 = *(*(v14 + 56) + 8 * v10);
    type metadata accessor for XOJITExecutor.ActiveRunWrapper();
    sub_27516DD78();
    *(a1 + 56) = v14;
  }

  *a3 = v8;
  return swift_endAccess();
}

void sub_2751662A8(void *__src, uint64_t a2, uint64_t a3)
{
  __dst[1] = *MEMORY[0x277D85DE8];
  if (!__src)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = a2 - __src;
  if (a2 - __src <= 8)
  {
LABEL_5:
    __dst[0] = 0;
    memcpy(__dst, __src, v5);
    v7 = __dst[0];
    v12 = BYTE1(__dst[0]);
    v13 = BYTE2(__dst[0]);
    v14 = BYTE3(__dst[0]);
    LOBYTE(v8) = BYTE4(__dst[0]);
    LOBYTE(v9) = BYTE5(__dst[0]);
    LOBYTE(v10) = BYTE6(__dst[0]);
    v15 = HIBYTE(__dst[0]);
    goto LABEL_6;
  }

  v6 = malloc(a2 - __src);
  v7 = v6;
  v19 = v6 >> 16;
  v20 = v6 >> 8;
  v18 = v6 >> 24;
  v8 = HIDWORD(v6);
  v9 = v6 >> 40;
  v10 = HIWORD(v6);
  v11 = HIBYTE(v6);
  memcpy(v6, __src, v5);
  v13 = v19;
  v12 = v20;
  v14 = v18;
  v15 = v11;
LABEL_6:
  *(a3 + 16) = (v10 << 48) | (v15 << 56) | (v9 << 40) | (v8 << 32) | (v14 << 24) | (v13 << 16) | (v12 << 8) | v7;
  *(a3 + 24) = v5;
  *(a3 + 32) = 0;
  v16 = *(a3 + 40);
  sub_27516DD38();

  v17 = *MEMORY[0x277D85DE8];
}

void sub_275166408(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  length = xpc_data_get_length(a1);
  if (bytes_ptr)
  {
    v10 = length;
  }

  else
  {
    v10 = 0;
  }

  v11 = __xojit_run_wrapper(a2, bytes_ptr, v10);
  v13 = v12;
  v18[0] = v11;
  v18[1] = v12;
  if (orc_rt_CWrapperFunctionResultGetOutOfBandError(v18))
  {
    sub_27516DC78();

LABEL_11:
    orc_rt_DisposeCWrapperFunctionResult(v18);
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  v14 = orc_rt_CWrapperFunctionResultData(v18);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "opc", 0);
  xpc_dictionary_set_uint64(empty, "opd", 2uLL);
  xpc_dictionary_set_uint64(empty, "tag", 0);
  xpc_dictionary_set_uint64(empty, "seq", a3);
  if (v13)
  {
    if (v14)
    {
      xpc_dictionary_set_data(empty, "buf", v14, v13);
    }
  }

  v16 = *(a4 + 16);
  if (v16)
  {
    xpc_connection_send_message(v16, empty);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_275166564()
{
  v1 = sub_27516DC28();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = *(v0 + 48);
  *(v8 - v7) = v10;
  (*(v4 + 104))(v8 - v7, *MEMORY[0x277D85200], v1);
  v11 = v10;
  LOBYTE(v10) = sub_27516DC38();
  result = (*(v4 + 8))(v9, v1);
  if (v10)
  {
    result = *(v0 + 64);
    if (result != -1)
    {
      *(v0 + 64) = result + 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27516666C(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{

  sub_2751666D0(a2, a3, a4);
  v8 = v7;

  return v8;
}

void sub_2751666D0(uint64_t a1, const void *a2, size_t a3)
{
  v4 = v3;
  type metadata accessor for XOJITExecutor.ActiveRunWrapper();
  OUTLINED_FUNCTION_14();
  v8 = swift_allocObject();
  sub_275163610();
  v9 = *(v3 + 48);
  sub_27516DCF8();
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "opc", 0);
  xpc_dictionary_set_uint64(empty, "opd", 3uLL);
  xpc_dictionary_set_uint64(empty, "tag", a1);
  xpc_dictionary_set_uint64(empty, "seq", v15);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  xpc_dictionary_set_data(empty, "buf", a2, a3);
  v11 = *(v4 + 16);
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  xpc_connection_send_message(v11, empty);
  v12 = *(v8 + 40);
  sub_27516DD28();

  if ((*(v8 + 32) & 1) == 0)
  {
    v14 = *(v8 + 16);
    v13 = *(v8 + 24);

    swift_unknownObjectRelease();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_275166834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_275166564();
  swift_beginAccess();

  v7 = *(a1 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 56);
  sub_275166DF4(a2, v6);
  *(a1 + 56) = v9;
  result = swift_endAccess();
  *a3 = v6;
  return result;
}

uint64_t sub_2751668DC(uint64_t a1, char a2)
{
  v4 = (a1 + 72);
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = *(a1 + 80);
    v9 = a2;

    v3(&v9);
    sub_275166AAC(v3);
    v6 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 80);
  *v4 = 0;
  v4[1] = 0;

  return sub_275166AAC(v6);
}

uint64_t sub_27516698C()
{
  result = xojit_executor_get_program_arch_name();
  if (result)
  {
    result = sub_27516DC78();
    qword_2809A4720 = result;
    *algn_2809A4728 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2751669D4()
{
  if (qword_2809A43B8 != -1)
  {
    swift_once();
  }

  v1 = qword_2809A4720;
  v2 = *algn_2809A4728;

  MEMORY[0x277C6AA30](45, 0xE100000000000000);
  MEMORY[0x277C6AA30](0x656C707061, 0xE500000000000000);
  MEMORY[0x277C6AA30](45, 0xE100000000000000);
  MEMORY[0x277C6AA30](7565161, 0xE300000000000000);
  result = MEMORY[0x277C6AA30](825110834, 0xE400000000000000);
  qword_2809A4738 = v1;
  unk_2809A4740 = v2;
  return result;
}

uint64_t sub_275166AAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_275166ACC()
{
  result = qword_2809A44C0;
  if (!qword_2809A44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809A44C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XOJITExecutor.TerminationResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for XOJITExecutor.TerminationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275166D0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_275166D50(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_27516DDB8();

  return sub_275166D94(a1, v4);
}

unint64_t sub_275166D94(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_275166DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_275166D50(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809A44D0, &qword_27516E878);
  if ((sub_27516DD68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_275166D50(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_27516DDA8();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    return sub_275166F18(v9, a2, a1, v14);
  }
}

unint64_t sub_275166F18(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_275166FE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275167030(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t orc_rt_CWrapperFunctionResultGetOutOfBandError(void *a1)
{
  if (a1[1])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

void *orc_rt_CWrapperFunctionResultData(void *result)
{
  if (result[1] >= 9uLL)
  {
    return *result;
  }

  return result;
}

void orc_rt_DisposeCWrapperFunctionResult(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 9)
  {
    v2 = *a1;
LABEL_3:
    free(v2);
    return;
  }

  if (!v1)
  {
    v2 = *a1;
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x277C6B150);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

char *xojit_xpcmemmgr_run_finalize_actions(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4)
{
  v24 = 0uLL;
  v25 = 0;
  if (a4 < 8)
  {
    v6 = strdup("Failed to deserialize allocation actions");
    goto LABEL_27;
  }

  v5 = *a3;
  v22 = a3 + 1;
  v23 = a4 - 8;
  if (v5)
  {
    if (!(v5 >> 58))
    {
      __p[0] = &v24;
      std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::AllocationActionsPair>>(v5);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v20 = 0u;
  v21 = 0;
  v25 = 0;
  v24 = 0uLL;
  __s1[0] = 0;
  __s1[1] = 0;
  *&v27 = 0;
  v7 = 0;
  std::mutex::lock(a1);
  v8 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v8 >> 47) ^ v8);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v11 = *(a1 + 112);
  if (!*&v11)
  {
    goto LABEL_23;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
    if (v10 >= *&v11)
    {
      v13 = v10 % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & v10;
  }

  v14 = *(*(a1 + 104) + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v10)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if (v15[2] != a2)
  {
    goto LABEL_22;
  }

  if (v15[3])
  {
    std::vector<__orc_rt::WrapperFunctionCall>::clear[abi:nn200100](v15 + 3);
    operator delete(v15[3]);
    v7 = __s1[1];
  }

  v17 = v27;
  v15[3] = __s1[0];
  v15[4] = v7;
  v15[5] = v17;
  __s1[1] = 0;
  *&v27 = 0;
  __s1[0] = 0;
  std::mutex::unlock(a1);
  __orc_rt::Error::assertIsChecked(1);
  v29 = __s1;
  std::vector<__orc_rt::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v29);
  __s1[0] = &v20;
  std::vector<__orc_rt::AllocationActionsPair>::__destroy_vector::operator()[abi:nn200100](__s1);
  v6 = 0;
  __orc_rt::Error::assertIsChecked(1);
LABEL_27:
  __s1[0] = &v24;
  std::vector<__orc_rt::AllocationActionsPair>::__destroy_vector::operator()[abi:nn200100](__s1);
  return v6;
}

unint64_t __xojit_executor_write_mem(unint64_t *a1, unint64_t a2)
{
  v4 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_275162000, v4, OS_LOG_TYPE_DEBUG, "write_mem", buf, 2u);
  }

  memset(__src, 0, sizeof(__src));
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(buf, "Could not deserialize arguments");
    return *buf;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      if (!(v5 >> 59))
      {
        v9 = __src;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__orc_rt::ExecutorAddr,std::vector<char>>>>(v5);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }
  }

  return v5;
}

char *__orc_rt::WrapperFunctionResult::createOutOfBandError(__orc_rt::WrapperFunctionResult *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  result = strcpy(v5, __s);
  *this = result;
  *(this + 1) = 0;
  return result;
}

uint64_t __xojit_executor_epc_run_as_main()
{
  v0 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_275162000, v0, OS_LOG_TYPE_DEBUG, "runAsMain", v2, 2u);
  }

  return 0;
}

uint64_t __xojit_executor_epc_run_as_void()
{
  v0 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_275162000, v0, OS_LOG_TYPE_DEBUG, "runAsVoid", v2, 2u);
  }

  return 0;
}

uint64_t __xojit_executor_epc_run_as_int()
{
  v0 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_275162000, v0, OS_LOG_TYPE_DEBUG, "runAsInt", v2, 2u);
  }

  return 0;
}

void xojit_executor_set_run_program_on_main_thread(uint64_t a1, uint64_t a2)
{
  v2 = qword_2815ACC50;
  if (!qword_2815ACC50 || (std::mutex::lock((qword_2815ACC50 + 24)), (*(v2 + 136) & 1) != 0) || (v7.__ptr_ = 0, v5 = *(v2 + 16), std::exception_ptr::~exception_ptr(&v7), v5))
  {
    v6 = std::__throw_future_error[abi:nn200100]();
    __xojit_executor_run_program_on_main_thread(v6);
  }

  else
  {
    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
    *(v2 + 136) |= 5u;
    std::condition_variable::notify_all((v2 + 88));
    std::mutex::unlock((v2 + 24));
  }
}

uint64_t __xojit_executor_run_program_on_main_thread(void *a1, unint64_t a2)
{
  v3 = qword_2815ACC50;
  if (!qword_2815ACC50 || (p_exception = (qword_2815ACC50 + 24), std::mutex::lock((qword_2815ACC50 + 24)), state = v3->__state_, (state & 2) != 0))
  {
    std::__throw_future_error[abi:nn200100]();
  }

  else
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v3->__state_ = state | 2;
    std::mutex::unlock(&v3->__mut_);
    __lk.__m_ = &v3->__mut_;
    __lk.__owns_ = 1;
    std::mutex::lock(&v3->__mut_);
    std::__assoc_sub_state::__sub_wait(v3, &__lk);
    p_exception = &v3->__exception_;
    ptr = v3->__exception_.__ptr_;
    v12.__ptr_ = 0;
    std::exception_ptr::~exception_ptr(&v12);
    if (!ptr)
    {
      v8 = v3[1].__vftable;
      shared_owners = v3[1].__shared_owners_;
      if (__lk.__owns_)
      {
        std::mutex::unlock(__lk.__m_);
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
      }

      if (a2 < 8)
      {
        __orc_rt::WrapperFunctionResult::createOutOfBandError(&__lk, "Could not serialize result");
      }

      else
      {
        shared_owners(v8, *a1, a1 + 1, a2 - 8);
      }

      operator new();
    }
  }

  std::exception_ptr::exception_ptr(&v12, p_exception);
  v10.__ptr_ = &v12;
  std::rethrow_exception(v10);
  return __xojit_executor_run_program_wrapper();
}

uint64_t __xojit_executor_run_program_wrapper(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v42[0]) = 0;
    _os_log_impl(&dword_275162000, v4, OS_LOG_TYPE_DEFAULT, "__xojit_executor_run_program_wrapper", v42, 2u);
  }

  v46 = 0;
  v44 = 0u;
  *__p = 0u;
  *v42 = 0u;
  *v43 = 0u;
  *buf = a1;
  *&buf[8] = a2;
  if (!__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::deserialize(buf, v42) || !__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::deserialize(buf, &v43[1]) || (v5 = *&buf[8] - 8, *&buf[8] < 8uLL))
  {
LABEL_32:
    __orc_rt::WrapperFunctionResult::createOutOfBandError(buf, "Could not deserialize arguments for wrapper function call");
    goto LABEL_33;
  }

  v7 = (*buf + 8);
  v6 = **buf;
  if (**buf > ((v46 - __p[0]) >> 4))
  {
    if (!(v6 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string_view>>(**buf);
    }

LABEL_73:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6)
  {
    do
    {
      v8 = v5 - 8;
      if (v5 < 8)
      {
        goto LABEL_32;
      }

      v9 = *v7;
      v5 = v8 - *v7;
      if (v8 < *v7)
      {
        goto LABEL_32;
      }

      v10 = v7 + 1;
      v11 = __p[1];
      if (__p[1] >= v46)
      {
        v13 = (__p[1] - __p[0]) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          goto LABEL_73;
        }

        v15 = v46 - __p[0];
        if ((v46 - __p[0]) >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::string_view>>(v16);
        }

        v17 = (16 * v13);
        *v17 = v10;
        v17[1] = v9;
        v12 = (16 * v13 + 16);
        v18 = (16 * v13 - (__p[1] - __p[0]));
        memcpy(v17 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
        v19 = __p[0];
        __p[0] = v18;
        __p[1] = v12;
        v46 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *__p[1] = v10;
        v11[1] = v9;
        v12 = v11 + 2;
      }

      v7 = (v10 + v9);
      __p[1] = v12;
    }

    while (--v6);
  }

  v20 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275162000, v20, OS_LOG_TYPE_DEFAULT, "__xojit_executor_run_program_wrapper -- CB", buf, 2u);
  }

  __src = 0;
  v51 = 0;
  v52 = 0;
  v21 = __p[1] - __p[0];
  if (__p[1] != __p[0])
  {
    if (!((v21 >> 4) >> 61))
    {
      p_src = &__src;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v21 >> 4);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v22 = (v51 - __src) >> 3;
  v23 = v22 + 1;
  if (v22 != -1)
  {
    if (!(v23 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v23);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *buf = 0;
  std::vector<char *>::push_back[abi:nn200100](&v47, buf);
  if (SHIBYTE(v43[0]) >= 0)
  {
    v26 = v42;
  }

  else
  {
    v26 = v42[0];
  }

  if (v44 >= 0)
  {
    v27 = &v43[1];
  }

  else
  {
    v27 = v43[1];
  }

  v28 = v47;
  v29 = ((v48 - v47) >> 3) - 1;
  v30 = qword_2815ACC48;
  if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = v27;
    v54 = 1024;
    LODWORD(v55) = v29;
    _os_log_impl(&dword_275162000, v30, OS_LOG_TYPE_DEFAULT, "__xojit_executor_run_program %s %s %d", buf, 0x1Cu);
  }

  v31 = dlopen(v26, 1);
  if (v31)
  {
    v32 = dlsym(v31, v27);
    v33 = qword_2815ACC48;
    if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v32;
      _os_log_impl(&dword_275162000, v33, OS_LOG_TYPE_DEFAULT, "  Main = %p", buf, 0xCu);
    }

    if (v32)
    {
      LODWORD(v29) = v32(v29, v28);
      v34 = qword_2815ACC48;
      if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v29;
        _os_log_impl(&dword_275162000, v34, OS_LOG_TYPE_DEFAULT, "  Result = %d", buf, 8u);
      }

      v29 = v29;
      goto LABEL_62;
    }

    v35 = qword_2815ACC48;
    if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }
  }

  else
  {
    v35 = qword_2815ACC48;
    if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
    {
LABEL_60:
      v36 = dlerror();
      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&dword_275162000, v35, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  v29 = -1;
LABEL_62:
  if (v28)
  {
    operator delete(v28);
  }

  v37 = __src;
  if (__src)
  {
    v38 = v51;
    v39 = __src;
    if (v51 != __src)
    {
      do
      {
        v41 = *--v38;
        v40 = v41;
        *v38 = 0;
        if (v41)
        {
          MEMORY[0x277C6AD00](v40, 0x1000C8077774924);
        }
      }

      while (v38 != v37);
      v39 = __src;
    }

    v51 = v37;
    operator delete(v39);
  }

  *buf = v29;
  *&buf[8] = 8;
LABEL_33:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[1]);
  }

  if (SHIBYTE(v43[0]) < 0)
  {
    operator delete(v42[0]);
  }

  result = *buf;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm_orc_registerJITLoaderGDBAllocAction(uint64_t a1, unint64_t a2)
{
  if (a2 >= 8 && a2 != 16 && (a2 & 0xFFFFFFFFFFFFFFF8) != 8)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8) - *a1;
    operator new();
  }

  __orc_rt::WrapperFunctionResult::createOutOfBandError(&v5, "Could not deserialize arguments for wrapper function call");
  return v5;
}

uint64_t xojit_executor_is_sandboxed()
{
  v0 = getpid();

  return MEMORY[0x282204F48](v0, 0, 0);
}

xpc_object_t xojit_create_setup_message(std::string::value_type *__s, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v87[40] = *MEMORY[0x277D85DE8];
  memset(&v78, 0, sizeof(v78));
  *v80 = 0u;
  *v81 = 0u;
  __p = 0u;
  v84 = 0u;
  v82 = 1065353216;
  v85 = 1065353216;
  std::string::__assign_external(&v78, __s);
  v13 = 0;
  v79 = a2;
  v87[0] = "__llvm_orc_SimpleRemoteEPC_dispatch_fn";
  v87[1] = a5;
  v87[2] = "__llvm_orc_SimpleRemoteEPC_dispatch_ctx";
  v87[3] = a6;
  v87[4] = "__xojit_xpcmemmgr_instance";
  v87[5] = a7;
  v87[6] = "__xojit_xpcmemmgr_acquire_slab";
  v87[7] = xojit_xpcmemmgr_acquire_slab;
  v87[8] = "__xojit_xpcmemmgr_release_slab";
  v87[9] = xojit_xpcmemmgr_release_slab;
  v87[10] = "__xojit_xpcmemmgr_deallocate";
  v87[11] = xojit_xpcmemmgr_deallocate;
  v87[12] = "__xojit_xpcmemmgr_make_read_only";
  v87[13] = xojit_xpcmemmgr_make_read_only;
  v87[14] = "__xojit_xpcmemmgr_apply_sandbox_extension";
  v87[15] = xojit_xpcmemmgr_apply_sandbox_extension;
  v87[16] = "__xojit_memaccess_write_uint8s";
  v87[17] = xojit_memaccess_write_uints_wrapper<unsigned char>;
  v87[18] = "__xojit_memaccess_write_uint16s";
  v87[19] = xojit_memaccess_write_uints_wrapper<unsigned short>;
  v87[20] = "__xojit_memaccess_write_uint32s";
  v87[21] = xojit_memaccess_write_uints_wrapper<unsigned int>;
  v87[22] = "__xojit_memaccess_write_uint64s";
  v87[23] = xojit_memaccess_write_uints_wrapper<unsigned long long>;
  v87[24] = "__xojit_memaccess_write_buffers";
  v87[25] = xojit_memaccess_write_buffers_wrapper;
  v87[26] = "__llvm_orc_SimpleExecutorDylibManager_Instance";
  v87[27] = a8;
  v87[28] = "__llvm_orc_SimpleExecutorDylibManager_open_wrapper";
  v87[29] = xojit_dylibmgr_dlopen_wrapper;
  v87[30] = "__llvm_orc_SimpleExecutorDylibManager_lookup_wrapper";
  v87[31] = xojit_dylibmgr_dlsym_wrapper;
  v87[32] = "__llvm_orc_bootstrap_run_as_main_wrapper";
  v87[33] = __xojit_executor_epc_run_as_main;
  v87[34] = "__llvm_orc_bootstrap_run_as_void_function_wrapper";
  v87[35] = __xojit_executor_epc_run_as_void;
  v87[36] = "__llvm_orc_bootstrap_run_as_int_function_wrapper";
  v87[37] = __xojit_executor_epc_run_as_int;
  v87[38] = "_llvm_orc_registerJITLoaderGDBAllocAction";
  v87[39] = llvm_orc_registerJITLoaderGDBAllocAction;
  do
  {
    v14 = v87[v13 + 1];
    std::string::basic_string[abi:nn200100]<0>(v76, v87[v13]);
    v15 = HIBYTE(v77);
    if (v77 >= 0)
    {
      v16 = v76;
    }

    else
    {
      v16 = v76[0];
    }

    if (v77 >= 0)
    {
      v17 = HIBYTE(v77);
    }

    else
    {
      v17 = v76[1];
    }

    v18 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v16, v17);
    v19 = v18;
    v20 = *(&__p + 1);
    if (!*(&__p + 1))
    {
      goto LABEL_24;
    }

    v21 = vcnt_s8(*(&__p + 8));
    v21.i16[0] = vaddlv_u8(v21);
    v22 = v21.u32[0];
    if (v21.u32[0] > 1uLL)
    {
      v23 = v18;
      if (v18 >= *(&__p + 1))
      {
        v23 = v18 % *(&__p + 1);
      }
    }

    else
    {
      v23 = (*(&__p + 1) - 1) & v18;
    }

    v24 = *(__p + 8 * v23);
    if (!v24 || (v25 = *v24) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v26 = v25[1];
      if (v26 == v19)
      {
        break;
      }

      if (v22 > 1)
      {
        if (v26 >= v20)
        {
          v26 %= v20;
        }
      }

      else
      {
        v26 &= v20 - 1;
      }

      if (v26 != v23)
      {
        goto LABEL_24;
      }

LABEL_23:
      v25 = *v25;
      if (!v25)
      {
        goto LABEL_24;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:nn200100](v25 + 2, v76))
    {
      goto LABEL_23;
    }

    v25[5] = v14;
    if (v15 < 0)
    {
      operator delete(v76[0]);
    }

    v13 += 2;
  }

  while (v13 != 40);
  v76[0] = 0;
  v76[1] = 0;
  v77 = 0;
  LOBYTE(v73) = a4;
  std::vector<char>::push_back[abi:nn200100](v76, &v73);
  std::string::basic_string[abi:nn200100]<0>(&v73, "IsSandboxed");
  v86 = &v73;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::vector<char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80, &v73);
  v28 = v27[5];
  if (v28)
  {
    v27[6] = v28;
    operator delete(v28);
  }

  *(v27 + 5) = *v76;
  v27[7] = v77;
  if (v75 < 0)
  {
    operator delete(v73);
  }

  v76[0] = 0;
  v76[1] = 0;
  v77 = 0;
  LOBYTE(v73) = a3;
  std::vector<char>::push_back[abi:nn200100](v76, &v73);
  std::string::basic_string[abi:nn200100]<0>(&v73, "UseOOPJIT");
  v86 = &v73;
  v29 = std::__hash_table<std::__hash_value_type<std::string,std::vector<char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v80, &v73);
  v30 = v29[5];
  if (v30)
  {
    v29[6] = v30;
    operator delete(v30);
  }

  *(v29 + 5) = *v76;
  v29[7] = v77;
  if (v75 < 0)
  {
    operator delete(v73);
  }

  size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v78.__r_.__value_.__l.__size_;
  }

  v32 = v81[0];
  v33 = v84;
  if (v81[0])
  {
    v34 = 8;
    do
    {
      v35 = *(v32 + 39);
      if ((v35 & 0x80u) != 0)
      {
        v35 = v32[3];
      }

      v36 = v32[6] - v32[5] + 8;
      if (v32[6] == v32[5])
      {
        v36 = 8;
      }

      v34 += v35 + v36 + 8;
      v32 = *v32;
    }

    while (v32);
  }

  else
  {
    v34 = 8;
  }

  v37 = 8;
  if (v84)
  {
    do
    {
      v38 = *(v33 + 39);
      if (v38 < 0)
      {
        v38 = v33[3];
      }

      v37 += (v38 + 2);
      v33 = *v33;
    }

    while (v33);
  }

  v39 = size + v34 + v37;
  v40 = (v39 + 16);
  if (v39 + 16 <= 8)
  {
    v76[0] = 0;
    v76[1] = (v39 + 16);
    v41 = v76;
  }

  else
  {
    v41 = malloc_type_malloc(v39 + 16, 0x100004077774924uLL);
    v76[0] = v41;
    v76[1] = v40;
  }

  v73 = v41;
  v74 = v40;
  if (!__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(&v73, &v78))
  {
    goto LABEL_83;
  }

  v42 = v74;
  if (v74 < 8)
  {
    goto LABEL_83;
  }

  v43 = v73;
  *v73 = v79;
  if ((v42 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    goto LABEL_83;
  }

  *(v43 + 1) = v81[1];
  v44 = v43 + 16;
  v45 = v42 - 16;
  v73 = v44;
  v74 = v45;
  v46 = v81[0];
  if (!v81[0])
  {
LABEL_74:
    if (v45 >= 8)
    {
      *v44 = *(&v84 + 1);
      v73 = v73 + 8;
      v74 -= 8;
      v57 = v84;
      if (v84)
      {
        while (1)
        {
          empty = 0;
          if (!__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(&v73, (v57 + 2)))
          {
            break;
          }

          v58 = v74 - 8;
          if (v74 < 8)
          {
            break;
          }

          v59 = v73;
          *v73 = v57[5];
          v73 = v59 + 8;
          v74 = v58;
          v57 = *v57;
          if (!v57)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
LABEL_79:
        empty = xpc_dictionary_create_empty();
        xpc_dictionary_set_uint64(empty, "opd", 0);
        xpc_dictionary_set_uint64(empty, "seq", 0);
        xpc_dictionary_set_uint64(empty, "tag", 0);
        if (v76[1] <= 8)
        {
          v60 = v76;
        }

        else
        {
          v60 = v76[0];
        }

        xpc_dictionary_set_data(empty, "buf", v60, v76[1]);
      }

      goto LABEL_84;
    }

LABEL_83:
    empty = 0;
    goto LABEL_84;
  }

  while (1)
  {
    empty = 0;
    if (!__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(&v73, (v46 + 2)))
    {
      break;
    }

    v48 = v74;
    v45 = v74 - 8;
    if (v74 < 8)
    {
      break;
    }

    v49 = v73;
    *v73 = v46[6] - v46[5];
    v44 = v49 + 8;
    v73 = v44;
    v74 = v45;
    v51 = v46[5];
    v50 = v46[6];
    if (v51 == v50 || v45 == 0)
    {
      if (v51 != v50)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v53 = 0;
      do
      {
        v54 = v51 + v53 + 1;
        *(v44 + v53) = *(v51 + v53);
        v55 = v53 + 1;
      }

      while (v54 != v50 && v48 - 9 != v53++);
      v44 = (v44 + v55);
      v45 = v48 - v55 - 8;
      v73 = v44;
      v74 = v45;
      if (v54 != v50)
      {
        goto LABEL_83;
      }
    }

    v46 = *v46;
    if (!v46)
    {
      goto LABEL_74;
    }
  }

LABEL_84:
  if (v76[1] >= 9)
  {
    v61 = v76[0];
    goto LABEL_88;
  }

  if (!v76[1])
  {
    v61 = v76[0];
    if (v76[0])
    {
LABEL_88:
      free(v61);
    }
  }

  v62 = v84;
  if (v84)
  {
    do
    {
      v63 = *v62;
      if (*(v62 + 39) < 0)
      {
        operator delete(v62[2]);
      }

      operator delete(v62);
      v62 = v63;
    }

    while (v63);
  }

  v64 = __p;
  *&__p = 0;
  if (v64)
  {
    operator delete(v64);
  }

  v65 = v81[0];
  if (v81[0])
  {
    do
    {
      v66 = *v65;
      v67 = *(v65 + 5);
      if (v67)
      {
        *(v65 + 6) = v67;
        operator delete(v67);
      }

      if (v65[39] < 0)
      {
        operator delete(*(v65 + 2));
      }

      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v68 = v80[0];
  v80[0] = 0;
  if (v68)
  {
    operator delete(v68);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v69 = *MEMORY[0x277D85DE8];
  return empty;
}

uint64_t xojit_xpcmemmgr_acquire_slab(const char *a1, unint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 < 8 || (a2 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(&v5, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    v2 = *(a1 + 1);
    address = 0;
    if (mach_vm_map(*MEMORY[0x277D85F48], &address, v2, 0, 1, 0, 0, 0, 0, 7, 2u))
    {
      operator new();
    }

    v8 = address;
    v7 = 2;
    v9 = 0;
    __orc_rt::detail::ResultSerializer<__orc_rt::SPSExpected<__orc_rt::SPSExecutorAddr>,__orc_rt::Expected<__orc_rt::ExecutorAddr>>::serialize(&v5, &address);
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(&address);
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(&v8);
  }

  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t xojit_xpcmemmgr_release_slab(const char *a1, unint64_t a2)
{
  if (a2 < 8 || (a2 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(&v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    __orc_rt::Error::assertIsChecked(1);
    v4 = 0;
    __orc_rt::detail::ResultSerializer<__orc_rt::SPSError,__orc_rt::Error>::serialize(&v3, &v4);
    __orc_rt::Error::assertIsChecked(v4);
    __orc_rt::Error::assertIsChecked(1);
  }

  return v3;
}

uint64_t xojit_xpcmemmgr_deallocate(const char *a1, unint64_t a2)
{
  if (a2 < 8 || (a2 & 0xFFFFFFFFFFFFFFF8) == 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(&v6, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    if (v4)
    {
      v5 = *a1;
      if (!(v4 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::ExecutorAddr>>(v4);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    std::mutex::lock(*a1);
    std::mutex::unlock(v3);
    __orc_rt::Error::assertIsChecked(1);
    v7 = 0;
    __orc_rt::detail::ResultSerializer<__orc_rt::SPSError,__orc_rt::Error>::serialize(&v6, &v7);
    __orc_rt::Error::assertIsChecked(v7);
    __orc_rt::Error::assertIsChecked(1);
  }

  return v6;
}

std::string::size_type xojit_xpcmemmgr_apply_sandbox_extension(const char *a1, unint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  *__p = 0u;
  v14 = 0u;
  if (a2 > 7 && (v2 = *a1, buf.__r_.__value_.__r.__words[0] = (a1 + 8), buf.__r_.__value_.__l.__size_ = a2 - 8, __p[0] = v2, __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::deserialize(&buf, &__p[1])))
  {
    v3 = qword_2815ACC48;
    if (os_log_type_enabled(qword_2815ACC48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_275162000, v3, OS_LOG_TYPE_DEFAULT, "Consuming sandbox extension", &buf, 2u);
    }

    std::mutex::lock(__p[0]);
    v4 = sandbox_extension_consume();
    if (v4 == -1)
    {
      std::string::basic_string[abi:nn200100]<0>(&buf, "Error applying sandbox extension: ");
      v5 = __error();
      v6 = strerror(*v5);
      v7 = strlen(v6);
      v8 = std::string::append(&buf, v6, v7);
      v9 = v8->__r_.__value_.__r.__words[0];
      v16[0] = v8->__r_.__value_.__l.__size_;
      *(v16 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
      v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      operator new();
    }

    *(__p[0] + 18) = v4;
    std::mutex::unlock(__p[0]);
    __orc_rt::Error::assertIsChecked(1);
    v16[0] = 0;
    __orc_rt::detail::ResultSerializer<__orc_rt::SPSError,__orc_rt::Error>::serialize(&buf, v16);
    __orc_rt::Error::assertIsChecked(v16[0]);
    __orc_rt::Error::assertIsChecked(1);
  }

  else
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(&buf, "Could not deserialize arguments for wrapper function call");
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  result = buf.__r_.__value_.__r.__words[0];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t xojit_memaccess_write_uints_wrapper<unsigned char>(unint64_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    if (*a1)
    {
      if (!(*a1 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned char>>>(*a1);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v3[0] = 0;
    v3[1] = 0;
  }

  return v3[0];
}

uint64_t xojit_memaccess_write_uints_wrapper<unsigned short>(unint64_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    if (*a1)
    {
      if (!(*a1 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned short>>>(*a1);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v3[0] = 0;
    v3[1] = 0;
  }

  return v3[0];
}

uint64_t xojit_memaccess_write_uints_wrapper<unsigned int>(unint64_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    if (*a1)
    {
      if (!(*a1 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned int>>>(*a1);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v3[0] = 0;
    v3[1] = 0;
  }

  return v3[0];
}

uint64_t xojit_memaccess_write_uints_wrapper<unsigned long long>(unint64_t *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    if (*a1)
    {
      if (!(*a1 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned long long>>>(*a1);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v3[0] = 0;
    v3[1] = 0;
  }

  return v3[0];
}

uint64_t xojit_memaccess_write_buffers_wrapper(const char *a1, unint64_t a2)
{
  if (a2 < 8)
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v3, "Could not deserialize arguments for wrapper function call");
  }

  else
  {
    if (*a1)
    {
      if (*a1 <= 0xAAAAAAAAAAAAAAAuLL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::BufferWrite>>(*a1);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v3[0] = 0;
    v3[1] = 0;
  }

  return v3[0];
}

uint64_t xojit_dylibmgr_dlopen_wrapper(const char *a1, unint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0;
  memset(&v21[2], 0, 32);
  if (a2 >= 8 && (v2 = *a1, __p[0] = (a1 + 8), __p[1] = (a2 - 8), v21[2] = v2, __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::deserialize(__p, &v21[3])) && __p[1] > 7)
  {
    v22 = *__p[0];
    v3 = v21[2];
    v26 = v21[5];
    *__p = *&v21[3];
    memset(&v21[3], 0, 24);
    if (SHIBYTE(v26) < 0)
    {
      if (__p[1])
      {
        v4 = __p[0];
      }

      else
      {
        v4 = 0;
      }
    }

    else if (HIBYTE(v26))
    {
      v4 = __p;
    }

    else
    {
      v4 = 0;
    }

    v5 = dlopen(v4, 8);
    if (!v5)
    {
      dlerror();
      operator new();
    }

    v6 = v5;
    std::mutex::lock(v21[2]);
    v8 = *(v21[2] + 72);
    v7 = *(v21[2] + 80);
    if (v8 >= v7)
    {
      v10 = *(v21[2] + 64);
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v16 = (v8 - v10) >> 3;
      v17 = (8 * v12);
      v18 = (8 * v12 - 8 * v16);
      *v17 = v6;
      v9 = v17 + 1;
      memcpy(v18, v10, v11);
      *(v3 + 64) = v18;
      *(v3 + 72) = v9;
      *(v3 + 80) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v8 = v6;
      v9 = v8 + 8;
    }

    *(v3 + 72) = v9;
    std::mutex::unlock(v3);
    v23 = v6;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    LOBYTE(__p[1]) = 2;
    v24 = 0;
    __p[0] = v6;
    __orc_rt::detail::ResultSerializer<__orc_rt::SPSExpected<__orc_rt::SPSExecutorAddr>,__orc_rt::Expected<__orc_rt::ExecutorAddr>>::serialize(v21, __p);
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(__p);
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(&v23);
  }

  else
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(v21, "Could not deserialize arguments for wrapper function call");
  }

  if (SHIBYTE(v21[5]) < 0)
  {
    operator delete(v21[3]);
  }

  result = v21[0];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t xojit_dylibmgr_dlsym_wrapper(const char *a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  memset(v24, 0, 24);
  if (a2 < 8 || (*&v23 = *a1, (a2 & 0xFFFFFFFFFFFFFFF8) == 8) || (*(&v23 + 1) = *(a1 + 1), (a2 & 0xFFFFFFFFFFFFFFF8) == 0x10))
  {
    __orc_rt::WrapperFunctionResult::createOutOfBandError(&v22, "Could not deserialize arguments for wrapper function call");
    goto LABEL_9;
  }

  v2 = *(a1 + 2);
  v33 = a1 + 24;
  *&v34 = a2 - 24;
  if (v2)
  {
    if (!(v2 >> 59))
    {
      v28 = v24;
      std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::RemoteSymbolLookupSetElement>>(v2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  memset(v25, 0, sizeof(v25));
  memset(v24, 0, 24);
  *&v27 = 0;
  __p[1] = 0;
  v5 = 0;
  v6 = v35 & 0xFC | 2u;
  v34 = 0uLL;
  __p[0] = v25;
  std::vector<__orc_rt::RemoteSymbolLookupSetElement>::__destroy_vector::operator()[abi:nn200100](__p);
  v35 = v6 & 0xFD;
  if (v6)
  {
    v33 = 0;
    v32 = v6 & 1;
    v31.__r_.__value_.__r.__words[0] = 0;
    LOBYTE(__p[0]) = 0;
    v27 = 0uLL;
    __p[1] = 0;
    v37 = v6 & 1;
    v36.__r_.__value_.__r.__words[0] = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    __orc_rt::Error::assertIsChecked(1);
    v7 = __p[0];
    if ((__p[0] & 1) == 0)
    {
      v11 = HIBYTE(v30);
      if (v30 < 0)
      {
        v11 = v29;
      }

      v9 = v11 + 8;
      goto LABEL_21;
    }

    v5 = __p[1];
    v8 = v27;
  }

  else
  {
    v21 = v34;
    v34 = 0uLL;
    v33 = 0;
    v32 = v6 & 1;
    memset(&v31, 0, sizeof(v31));
    v37 = v6 & 1 | (2 * (v6 & 1));
    v7 = 1;
    LOBYTE(__p[0]) = 1;
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::assertIsChecked(0);
    __p[1] = 0;
    v27 = v21;
    memset(&v36, 0, sizeof(v36));
    v29 = 0;
    v30 = 0;
    v8 = v21;
    v28 = 0;
  }

  if (v5 == v8)
  {
    v9 = 8;
    v10 = 9;
LABEL_22:
    v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
    *v25 = v12;
    *&v25[8] = v10;
    v7 = __p[0];
    goto LABEL_25;
  }

  v9 = 10 * ((v8 - v5 - 16) >> 4) + 18;
LABEL_21:
  v10 = v9 + 1;
  if (v9 + 1 >= 9)
  {
    goto LABEL_22;
  }

  *v25 = 0;
  *&v25[8] = v9 + 1;
  if (v9 == -1)
  {
    goto LABEL_37;
  }

  v12 = v25;
LABEL_25:
  *v12 = v7;
  v38 = v12 + 1;
  v39 = v9;
  if (v7)
  {
    v13 = v9 - 8;
    if (v9 >= 8)
    {
      *(v12 + 1) = (v27 - __p[1]) >> 4;
      v39 = v9 - 8;
      v14 = __p[1];
      v15 = v27;
      if (__p[1] != v27)
      {
        v16 = v12 + 9;
        do
        {
          v17 = v13 >= 8;
          v18 = v13 - 8;
          if (!v17)
          {
            goto LABEL_37;
          }

          *v16 = *v14;
          v39 = v18;
          if (!v18)
          {
            goto LABEL_37;
          }

          v16[8] = v14[9];
          v19 = v18 - 1;
          v39 = v19;
          if (!v19)
          {
            goto LABEL_37;
          }

          v16[9] = v14[8];
          v16 += 10;
          v13 = v19 - 1;
          v39 = v13;
          v14 += 16;
        }

        while (v14 != v15);
      }

LABEL_36:
      v22 = *v25;
      *v25 = 0;
      *&v25[8] = 0;
      goto LABEL_38;
    }
  }

  else if (__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(&v38, &v28))
  {
    goto LABEL_36;
  }

LABEL_37:
  __orc_rt::WrapperFunctionResult::createOutOfBandError(&v22, "Error serializing arguments to blob in call");
LABEL_38:
  if (*&v25[8] < 9uLL)
  {
    if (*&v25[8])
    {
      goto LABEL_43;
    }

    v20 = *v25;
    if (!*v25)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v20 = *v25;
  }

  free(v20);
LABEL_43:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  if (__p[1])
  {
    *&v27 = __p[1];
    operator delete(__p[1]);
  }

  __orc_rt::Expected<std::vector<__orc_rt::ExecutorSymbolDef>>::~Expected(&v36);
  __orc_rt::Expected<std::vector<__orc_rt::ExecutorSymbolDef>>::~Expected(&v31);
  __orc_rt::Expected<std::vector<__orc_rt::ExecutorSymbolDef>>::~Expected(&v33);
LABEL_9:
  __p[0] = v24;
  std::vector<__orc_rt::RemoteSymbolLookupSetElement>::__destroy_vector::operator()[abi:nn200100](__p);
  result = v22;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::vector<char>::push_back[abi:nn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

std::mutex *xojit_dylibmgr_destroy(std::mutex *this)
{
  if (this)
  {
    v1 = this;
    sig = this[1].__m_.__sig;
    if (sig)
    {
      *v1[1].__m_.__opaque = sig;
      operator delete(sig);
    }

    std::mutex::~mutex(v1);

    JUMPOUT(0x277C6AD20);
  }

  return this;
}

std::mutex *xojit_xpcmemmgr_destroy(std::mutex *this)
{
  if (this)
  {
    v1 = this;
    v2 = *&this[1].__m_.__opaque[48];
    if (v2)
    {
      do
      {
        v3 = *v2;
        v8 = (v2 + 24);
        std::vector<__orc_rt::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](&v8);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *&v1[1].__m_.__opaque[32];
    *&v1[1].__m_.__opaque[32] = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v5 = *&v1[1].__m_.__opaque[8];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    sig = v1[1].__m_.__sig;
    v1[1].__m_.__sig = 0;
    if (sig)
    {
      operator delete(sig);
    }

    std::mutex::~mutex(v1);

    JUMPOUT(0x277C6AD20);
  }

  return this;
}

const char *xojit_executor_get_program_arch_name()
{
  prog_image_header = _dyld_get_prog_image_header();
  v1 = *(prog_image_header + 4);
  if (v1 <= 16777222)
  {
    if (v1 == 7)
    {
      return "i386";
    }

    if (v1 == 12)
    {
      return "armv7";
    }

    return "unknown";
  }

  if (v1 == 16777223)
  {
    return "x86_64";
  }

  if (v1 == 33554444)
  {
    return "arm64_32";
  }

  if (v1 != 16777228)
  {
    return "unknown";
  }

  if ((*(prog_image_header + 8) & 0xFFFFFF) == 2)
  {
    return "arm64e";
  }

  else
  {
    return "arm64";
  }
}

void __orc_rt::WrapperFunctionCall::runWithSPSRet<__orc_rt::SPSEmpty,__orc_rt::SPSEmpty>(void *a1, uint64_t a2)
{
  v3 = (*a2)(*(a2 + 8), *(a2 + 16) - *(a2 + 8));
  if (!v4)
  {
    if (v3)
    {
      operator new();
    }

    goto LABEL_9;
  }

  if (v4 <= 8)
  {
LABEL_9:
    *a1 = 0;
    return;
  }

  *a1 = 0;

  free(v3);
}

void __orc_rt::StringError::~StringError(void **this)
{
  *this = &unk_2883F2938;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_2883F2938;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x277C6AD20);
}

void __orc_rt::StringError::toString(__orc_rt::StringError *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t __orc_rt::Error::assertIsChecked(uint64_t this)
{
  if (this != 1)
  {
    fwrite("Error must be checked prior to destruction.\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    abort();
  }

  return this;
}

void *std::construct_at[abi:nn200100]<__orc_rt::WrapperFunctionCall,__orc_rt::WrapperFunctionCall const&,__orc_rt::WrapperFunctionCall*>(void *result, void *a2)
{
  *result = *a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  v3 = a2[1];
  v2 = a2[2];
  if (v2 != v3)
  {
    if (v2 - v3 >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v32 + v35 + v41;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v41 + v33 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v34 + v36 + v47;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v59 + v57 + v68 + v58;
      v50 = __ROR8__(v59 + v57 + v68, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

void std::vector<__orc_rt::WrapperFunctionCall>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<__orc_rt::WrapperFunctionCall>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<__orc_rt::WrapperFunctionCall>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<__orc_rt::AllocationActionsPair>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 8;
        std::__destroy_at[abi:nn200100]<__orc_rt::AllocationActionsPair,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<__orc_rt::AllocationActionsPair,0>(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::__assoc_state<std::pair<void *,orc_rt_CWrapperFunctionResult (*)(void *,unsigned long long,char const*,unsigned long)>>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x277C6AD20);
}

uint64_t *std::promise<std::pair<void *,orc_rt_CWrapperFunctionResult (*)(void *,unsigned long long,char const*,unsigned long)>>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v7.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v7);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v5 = std::future_category();
        MEMORY[0x277C6AC50](v6, 4, v5);
        abort();
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t *__orc_rt::detail::ResultSerializer<__orc_rt::SPSExpected<__orc_rt::SPSExecutorAddr>,__orc_rt::Expected<__orc_rt::ExecutorAddr>>::serialize(__orc_rt::WrapperFunctionResult *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  *(a2 + 8) = v3 & 0xFD;
  if ((v3 & 1) == 0)
  {
    v23 = *a2;
    v24 = 0;
    v15 = 1;
    __orc_rt::Expected<__orc_rt::ExecutorAddr>::assertIsChecked(0);
    v16 = v23;
    __p = 0;
    v7 = 9;
    v18 = 0;
    v19 = 0;
LABEL_10:
    v10 = malloc_type_malloc(v7, 0x100004077774924uLL);
    v22[0] = v10;
    v22[1] = v7;
    v8 = v15;
    goto LABEL_11;
  }

  v4 = *a2;
  *a2 = 0;
  v15 = 0;
  v16 = 0;
  v24 = v3 & 1;
  v23 = 0;
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0 && (*(*v5 + 24))(v4 & 0xFFFFFFFFFFFFFFFELL, &_MergedGlobals))
  {
    (*(*v5 + 40))(&__p, v4 & 0xFFFFFFFFFFFFFFFELL);
    (*(*v5 + 8))(v4 & 0xFFFFFFFFFFFFFFFELL);
    v6 = 1;
  }

  else
  {
    v6 = v4 | 1;
    __p = 0;
    v18 = 0;
    v19 = 0;
  }

  __orc_rt::Error::assertIsChecked(v6);
  v8 = 0;
  v9 = HIBYTE(v19);
  if (v19 < 0)
  {
    v9 = v18;
  }

  v7 = v9 + 9;
  if (v9 <= 0xFFFFFFFFFFFFFFF6)
  {
    goto LABEL_10;
  }

  v22[0] = 0;
  v22[1] = (v9 + 9);
  if (v9 == -9)
  {
    goto LABEL_18;
  }

  v10 = v22;
LABEL_11:
  *v10 = v8;
  v11 = (v10 + 1);
  v20 = v11;
  v21 = v7 - 1;
  if (v8)
  {
    if (v7 - 1 >= 8)
    {
      *v11 = v16;
      v21 = v7 - 9;
LABEL_15:
      *a1 = *v22;
      v22[0] = 0;
      v22[1] = 0;
      goto LABEL_19;
    }
  }

  else if (__orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(&v20, &__p))
  {
    goto LABEL_15;
  }

LABEL_18:
  __orc_rt::WrapperFunctionResult::createOutOfBandError(a1, "Error serializing arguments to blob in call");
LABEL_19:
  if (v22[1] >= 9)
  {
    v12 = v22[0];
LABEL_23:
    free(v12);
    goto LABEL_24;
  }

  if (!v22[1])
  {
    v12 = v22[0];
    if (v22[0])
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  result = __orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(&v23);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(void *a1, uint64_t a2)
{
  if (a1[1] < 8uLL)
  {
    return 0;
  }

  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  **a1 = v2;
  v3 = (*a1 + 8);
  v4 = a1[1] - 8;
  *a1 = v3;
  a1[1] = v4;
  v5 = *(a2 + 23);
  v6 = v5 < 0;
  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = *(a2 + 23);
  }

  v9 = v8 == 0;
  if (v8)
  {
    v10 = v4 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v8 - 1;
    do
    {
      v12 = *v7++;
      *v3 = v12;
      v3 = (*a1 + 1);
      v13 = a1[1] - 1;
      *a1 = v3;
      a1[1] = v13;
      v9 = v11 == 0;
      if (!v11)
      {
        break;
      }

      --v11;
    }

    while (v13);
  }

  return v9;
}

uint64_t __orc_rt::Expected<__orc_rt::ExecutorAddr>::assertIsChecked(uint64_t result)
{
  if ((result & 2) != 0)
  {
    fwrite("Expected<T> must be checked before access or destruction.\n", 0x3AuLL, 1uLL, *MEMORY[0x277D85DF8]);
    abort();
  }

  return result;
}

uint64_t *__orc_rt::Expected<__orc_rt::ExecutorAddr>::~Expected(uint64_t *a1)
{
  __orc_rt::Expected<__orc_rt::ExecutorAddr>::assertIsChecked(*(a1 + 8));
  if (a1[1])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t __orc_rt::detail::ResultSerializer<__orc_rt::SPSError,__orc_rt::Error>::serialize(__orc_rt::WrapperFunctionResult *a1, uint64_t *a2)
{
  __orc_rt::Error::assertIsChecked(1);
  v4 = *a2;
  *a2 = 1;
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    __orc_rt::Error::assertIsChecked(1);
    if ((*(*v5 + 24))(v5, &_MergedGlobals))
    {
      (*(*v5 + 40))(&__p, v5);
      (*(*v5 + 8))(v5);
      v5 = 1;
    }

    else
    {
      __p = 0;
      v13 = 0;
      v14 = 0;
    }

    __orc_rt::Error::assertIsChecked(v5);
    v6 = 1;
    v7 = HIBYTE(v14);
    if (v14 < 0)
    {
      v7 = v13;
    }

    v8 = v7 + 9;
    if (v7 > 0xFFFFFFFFFFFFFFF6)
    {
      v16[0] = 0;
      v16[1] = (v7 + 9);
      if (v7 == -9)
      {
        goto LABEL_17;
      }

      v9 = v16;
    }

    else
    {
      v9 = malloc_type_malloc(v7 + 9, 0x100004077774924uLL);
      v16[0] = v9;
      v16[1] = v8;
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
    v13 = 0;
    v14 = 0;
    __p = 0;
    *v16 = xmmword_27516E900;
    v9 = v16;
    v8 = 1;
  }

  *v9 = v6;
  v15[0] = v9 + 1;
  v15[1] = v8 - 1;
  if ((v6 & 1) == 0 || __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::serialize(v15, &__p))
  {
    *a1 = *v16;
    v16[0] = 0;
    v16[1] = 0;
    goto LABEL_18;
  }

LABEL_17:
  __orc_rt::WrapperFunctionResult::createOutOfBandError(a1, "Error serializing arguments to blob in call");
LABEL_18:
  if (v16[1] >= 9)
  {
    v10 = v16[0];
LABEL_22:
    free(v10);
    goto LABEL_23;
  }

  if (!v16[1])
  {
    v10 = v16[0];
    if (v16[0])
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  return __orc_rt::Error::assertIsChecked(1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::ExecutorAddr>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::string,void>::deserialize(uint64_t a1, std::string *this)
{
  v2 = *(a1 + 8);
  v3 = v2 >= 8;
  v4 = v2 - 8;
  if (!v3)
  {
    return 0;
  }

  v7 = **a1;
  *a1 += 8;
  *(a1 + 8) = v4;
  std::string::reserve(this, v7);
  if (!v7)
  {
    return 1;
  }

  do
  {
    v8 = *(a1 + 8);
    v10 = v8 != 0;
    if (!v8)
    {
      break;
    }

    v9 = *(*a1)++;
    *(a1 + 8) = v8 - 1;
    std::string::push_back(this, v9);
    --v7;
  }

  while (v7);
  return v10;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::BufferWrite>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::RemoteSymbolLookupSetElement>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<__orc_rt::RemoteSymbolLookupSetElement>,__orc_rt::RemoteSymbolLookupSetElement*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      *(a3 + 24) = *(v5 + 24);
      v5 += 2;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 += 2;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<__orc_rt::RemoteSymbolLookupSetElement>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<__orc_rt::RemoteSymbolLookupSetElement>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t __orc_rt::Expected<std::vector<__orc_rt::ExecutorSymbolDef>>::~Expected(uint64_t a1)
{
  __orc_rt::Expected<__orc_rt::ExecutorAddr>::assertIsChecked(*(a1 + 24));
  v2 = *a1;
  if (*(a1 + 24))
  {
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<__orc_rt::ExecutorSymbolDef>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::AllocationActionsPair>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<__orc_rt::AllocationActionsPair>,__orc_rt::AllocationActionsPair*>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      *(a3 + 1) = *(v5 + 1);
      v6 = v5[4];
      a3[3] = v5[3];
      v5[2] = 0;
      v5[3] = 0;
      v5[1] = 0;
      a3[6] = 0;
      a3[7] = 0;
      a3[4] = v6;
      a3[5] = 0;
      *(a3 + 5) = *(v5 + 5);
      a3[7] = v5[7];
      v5[5] = 0;
      v5[6] = 0;
      v5[7] = 0;
      v5 += 8;
      a3 += 8;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<__orc_rt::AllocationActionsPair,0>(v4);
      v4 += 8;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<__orc_rt::AllocationActionsPair>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:nn200100]<__orc_rt::AllocationActionsPair,0>((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t __orc_rt::SPSSerializationTraits<__orc_rt::SPSTuple<__orc_rt::SPSExecutorAddr,__orc_rt::SPSSequence<char>>,__orc_rt::WrapperFunctionCall,void>::deserialize(char **a1, void *a2)
{
  __p = 0;
  v14 = 0uLL;
  v2 = a1[1];
  v3 = v2 >= 8;
  v4 = (v2 - 8);
  if (!v3)
  {
    return 0;
  }

  v6 = **a1;
  *a1 += 8;
  a1[1] = v4;
  v7 = __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::vector<char>,void>::deserialize(a1, &__p);
  v8 = __p;
  if (!v7)
  {
    if (__p)
    {
      operator delete(__p);
    }

    return 0;
  }

  v9 = v14;
  *a2 = v6;
  v10 = a2[1];
  if (v10)
  {
    a2[2] = v10;
    v12 = v9;
    operator delete(v10);
    v9 = v12;
  }

  a2[1] = v8;
  *(a2 + 1) = v9;
  return 1;
}

uint64_t __orc_rt::SPSSerializationTraits<__orc_rt::SPSSequence<char>,std::vector<char>,void>::deserialize(char **a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 >= 8;
  v4 = v2 - 8;
  if (!v3)
  {
    return 0;
  }

  v7 = **a1;
  *a1 += 8;
  a1[1] = v4;
  if (a2[2] - *a2 < v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = a2[1] - *a2;
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!v7)
  {
    return 1;
  }

  do
  {
    v10 = a1[1];
    v9 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v11 = *(*a1)++;
    a1[1] = v10 - 1;
    v13 = v11;
    std::vector<char>::push_back[abi:nn200100](a2, &v13);
    --v7;
  }

  while (v7);
  return v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<__orc_rt::ExecutorAddr,std::vector<char>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<__orc_rt::ExecutorAddr,std::vector<char>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string_view>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<char *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<char []>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x277C6AD00](v4, 0x1000C8077774924);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned char>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned short>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<__orc_rt::UIntWrite<unsigned long long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<char>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<char>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_24;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_24;
    }

LABEL_23:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v14 + 2, a2))
  {
    goto LABEL_23;
  }

  return v14;
}

void _GLOBAL__sub_I_XOJITExecutor_cpp()
{
  qword_2815ACC48 = os_log_create("com.apple.XOJIT", "Instance");
  operator new();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}