uint64_t sub_26BCB69C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26BCB6A1C();
  *a2 = result;
  return result;
}

uint64_t sub_26BCB69F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_26BCB6A60();
}

uint64_t sub_26BCB6A1C()
{
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_26BCB6A60()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26BCB6AC0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_26BCB6B44;
}

void sub_26BCB6B44(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id SupportFlowViewController.init(flowIdentifier:showsSearchBar:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v6 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  v7 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar;
  *(v2 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = 1;
  swift_beginAccess();
  sub_26BCB6D50(a1, v2 + v5);
  swift_endAccess();
  *(v2 + v7) = a2;
  type metadata accessor for SupportFlowViewController();
  OUTLINED_FUNCTION_6();
  v10 = objc_msgSendSuper2(v8, v9);
  sub_26BCB6E54(a1);
  return v10;
}

uint64_t sub_26BCB6D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
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

uint64_t type metadata accessor for SupportFlowViewController()
{
  result = qword_280446780;
  if (!qword_280446780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCB6E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SupportFlowViewController.init(flowIdentifier:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v5 = sub_26BCC8C5C();
  OUTLINED_FUNCTION_7(v5);
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = v2;
  swift_beginAccess();
  sub_26BCB6D50(a1, v1 + v4);
  swift_endAccess();
  type metadata accessor for SupportFlowViewController();
  OUTLINED_FUNCTION_6();
  v8 = objc_msgSendSuper2(v6, v7);
  sub_26BCB6E54(a1);
  return v8;
}

uint64_t sub_26BCB6FB8(void *a1)
{
  v3 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  v5 = sub_26BCC8C5C();
  OUTLINED_FUNCTION_7(v5);
  v6 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken;
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken) = 0;
  *(v1 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar) = v2;
  sub_26BCB8688(v1 + v3);
  sub_26BCB6E54(v1 + v4);
  v7 = *(v1 + v6);
  swift_unknownObjectRelease();
  type metadata accessor for SupportFlowViewController();
  v8 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v9 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_26BCB70C0()
{
  v0 = [objc_opt_self() supportFlowApp];

  return v0;
}

id sub_26BCB7100()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier;
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  sub_26BCB86B0(v0 + v4, v3);
  v5 = *(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_showsSearchBar);
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_26BCC60BC(v6);
  v9 = v8;
  v10 = objc_allocWithZone(type metadata accessor for SupportFlowServiceSpecification());
  return sub_26BCC5780(v3, v5, v7, v9);
}

uint64_t sub_26BCB7208()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446770, &qword_26BCC9CE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446778, &qword_26BCC9CF0);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = type metadata accessor for SupportFlowViewController();
  v19.receiver = v0;
  v19.super_class = v14;
  objc_msgSendSuper2(&v19, sel_clientIsReady);
  v15 = sub_26BCBD9F8();
  sub_26BCC90CC();

  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_26BCB8434(v5);
  }

  (*(v9 + 32))(v13, v5, v6);
  v17 = sub_26BCB73F8();
  (*(v9 + 8))(v13, v6);
  v18 = *&v1[OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken];
  *&v1[OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken] = v17;
  return swift_unknownObjectRelease();
}

uint64_t sub_26BCB73F8()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446778, &qword_26BCC9CF0);
  swift_getOpaqueTypeConformance2();
  sub_26BCB89A4();
  sub_26BCB8AE8(&unk_280446820, sub_26BCB8A40);
  sub_26BCB8AE8(&qword_2804467A8, sub_26BCB8A94);
  sub_26BCB8AE8(&qword_2804467B0, sub_26BCB8B60);
  v0 = sub_26BCC8CDC();

  return v0;
}

void sub_26BCB7590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804467B8, &qword_26BCC9D98);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v38 - v8;
  v10 = sub_26BCC8CAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v44 = v11;
    sub_26BCC8C7C();
    v17 = v3[2];
    v17(v9, a1, v2);
    v17(v7, a1, v2);
    v18 = sub_26BCC8C9C();
    v19 = sub_26BCC905C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = v10;
      v21 = v20;
      v41 = swift_slowAlloc();
      v47 = v41;
      *v21 = 136315394;
      v40 = v19;
      sub_26BCC8CCC();
      v45 = v48;
      v46 = v49;
      v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804467A0, &qword_26BCC9D90);
      v22 = sub_26BCC8F7C();
      v39 = v18;
      v23 = v16;
      v25 = v24;
      v43 = a1;
      v26 = v3[1];
      v26(v9, v2);
      v27 = sub_26BCBA718(v22, v25, &v47);
      v16 = v23;

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      sub_26BCC8CBC();
      v45 = v48;
      v46 = v49;
      v28 = sub_26BCC8F7C();
      v30 = v29;
      v26(v7, v2);
      v31 = sub_26BCBA718(v28, v30, &v47);

      *(v21 + 14) = v31;
      v32 = v39;
      _os_log_impl(&dword_26BCB5000, v39, v40, "flow state has changed from %s to %s", v21, 0x16u);
      v33 = v41;
      swift_arrayDestroy();
      MEMORY[0x26D695170](v33, -1, -1);
      MEMORY[0x26D695170](v21, -1, -1);

      (*(v44 + 8))(v14, v42);
    }

    else
    {

      v34 = v3[1];
      v34(v7, v2);
      v34(v9, v2);
      (*(v44 + 8))(v14, v10);
    }

    sub_26BCC8CBC();
    v35 = v48;
    if (v49)
    {
      if (v49 == 1)
      {
        sub_26BCB8BB4();
        v36 = swift_allocError();
        *v37 = v35;
        sub_26BCB7E3C();

        return;
      }

      if (v49 != 255)
      {
        switch(v48)
        {
          case 2:
            sub_26BCB7A54();
            break;
          case 3:
            sub_26BCB8050();
            break;
          default:
            break;
        }
      }
    }

    else
    {
      sub_26BCB7C30();
    }
  }
}

void sub_26BCB7A54()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  swift_getObjectType();
  v2 = sub_26BCC8CAC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = sub_26BCC8C9C();
  v9 = sub_26BCC905C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    v18[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_26BCB88A8();
    sub_26BCBA718(v11, v12, v18);

    v13 = OUTLINED_FUNCTION_4();
    *(v10 + 14) = sub_26BCBA718(v13 & 0xFFFFFFFFFFFFLL | 0x5364000000000000, 0xEE00292874726174, v18);
    OUTLINED_FUNCTION_10(&dword_26BCB5000, v14, v15, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  (*(v5 + 8))(v0, v2);
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v17 supportFlowViewControllerDidStart_];
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_12();
}

void sub_26BCB7C30()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  v4 = sub_26BCC8CAC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = sub_26BCC8C9C();
  v11 = sub_26BCC905C();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14();
    v22[0] = OUTLINED_FUNCTION_11();
    *v3 = 136315394;
    v12 = sub_26BCB88A8();
    v14 = sub_26BCBA718(v12, v13, v22);

    *(v3 + 4) = v14;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_26BCBA718(0xD00000000000001BLL, 0x800000026BCCB590, v22);
    OUTLINED_FUNCTION_13(&dword_26BCB5000, v15, v16, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    v3 = v21;
    OUTLINED_FUNCTION_5();
  }

  (*(v7 + 8))(v0, v4);
  OUTLINED_FUNCTION_8();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  *(v17 + 24) = v3;
  OUTLINED_FUNCTION_0(v17);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v22[2] = v18;
  v22[3] = &block_descriptor;
  v19 = _Block_copy(v22);
  v20 = v1;

  [v20 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
  OUTLINED_FUNCTION_12();
}

void sub_26BCB7E3C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v3 = v2;
  swift_getObjectType();
  v4 = sub_26BCC8CAC();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = sub_26BCC8C9C();
  v11 = sub_26BCC905C();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_14();
    v23[0] = OUTLINED_FUNCTION_11();
    *v3 = 136315394;
    v12 = sub_26BCB88A8();
    v14 = sub_26BCBA718(v12, v13, v23);

    *(v3 + 4) = v14;
    *(v3 + 6) = 2080;
    *(v3 + 14) = sub_26BCBA718(0xD00000000000001ALL, 0x800000026BCCB5B0, v23);
    OUTLINED_FUNCTION_13(&dword_26BCB5000, v15, v16, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    v3 = v22;
    OUTLINED_FUNCTION_5();
  }

  (*(v7 + 8))(v0, v4);
  OUTLINED_FUNCTION_8();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  *(v17 + 24) = v3;
  OUTLINED_FUNCTION_0(v17);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v23[2] = v18;
  v23[3] = &block_descriptor_21;
  v19 = _Block_copy(v23);
  v20 = v1;
  v21 = v3;

  [v20 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
  OUTLINED_FUNCTION_12();
}

void sub_26BCB8050()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  swift_getObjectType();
  v2 = sub_26BCC8CAC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v8 = sub_26BCC8C9C();
  v9 = sub_26BCC905C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_26BCB88A8();
    sub_26BCBA718(v11, v12, v20);

    v13 = OUTLINED_FUNCTION_4();
    *(v10 + 14) = sub_26BCBA718(v13 & 0xFFFFFFFFFFFFLL | 0x4364000000000000, 0xEF29286C65636E61, v20);
    OUTLINED_FUNCTION_10(&dword_26BCB5000, v14, v15, "%s.%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_5();
  }

  (*(v5 + 8))(v0, v2);
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  OUTLINED_FUNCTION_0(v16);
  OUTLINED_FUNCTION_1(COERCE_DOUBLE(1107296256));
  v20[2] = v17;
  v20[3] = &block_descriptor_27;
  v18 = _Block_copy(v20);
  v19 = v1;

  [v19 dismissViewControllerAnimated:1 completion:v18];
  _Block_release(v18);
  OUTLINED_FUNCTION_12();
}

id SupportFlowViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_26BCB8328()
{
  sub_26BCB8688(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_delegate);
  sub_26BCB6E54(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_flowIdentifier);
  v1 = *(v0 + OBJC_IVAR____TtC13SupportFlowUI25SupportFlowViewController_observerToken);

  return swift_unknownObjectRelease();
}

id SupportFlowViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupportFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BCB8434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446770, &qword_26BCC9CE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26BCB84A4()
{
  sub_26BCB8630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26BCB8630()
{
  if (!qword_280446790)
  {
    sub_26BCC8C5C();
    v0 = sub_26BCC910C();
    if (!v1)
    {
      atomic_store(v0, &qword_280446790);
    }
  }
}

uint64_t sub_26BCB86B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_26BCB8720(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 supportFlowViewController:a1 didFinishWithResult:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26BCB87B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26BCB87F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      v4 = sub_26BCC8BDC();
      [v3 supportFlowViewController:a1 didFinishWithError:v4];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void *sub_26BCB88D8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 supportFlowViewControllerDidCancel_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26BCB8964()
{
  MEMORY[0x26D695210](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26BCB89A4()
{
  result = qword_280446798;
  if (!qword_280446798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446798);
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

unint64_t sub_26BCB8A40()
{
  result = qword_280446830;
  if (!qword_280446830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446830);
  }

  return result;
}

unint64_t sub_26BCB8A94()
{
  result = qword_280446840;
  if (!qword_280446840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446840);
  }

  return result;
}

uint64_t sub_26BCB8AE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467A0, &qword_26BCC9D90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BCB8B60()
{
  result = qword_280446850;
  if (!qword_280446850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446850);
  }

  return result;
}

unint64_t sub_26BCB8BB4()
{
  result = qword_2804467C0;
  if (!qword_2804467C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804467C0);
  }

  return result;
}

uint64_t sub_26BCB8C08()
{
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BCB8C5C()
{
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26BCB8CA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return sub_26BCC8C7C();
}

uint64_t OUTLINED_FUNCTION_4()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;
  return 0x6944776F6C66;
}

void OUTLINED_FUNCTION_5()
{

  JUMPOUT(0x26D695170);
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_11()
{
  *(v1 - 136) = v0;

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_slowAlloc();
}

uint64_t SupportFlowHostingController.HostingType.hashValue.getter()
{
  v1 = *v0;
  sub_26BCC92FC();
  MEMORY[0x26D694C70](v1);
  return sub_26BCC931C();
}

uint64_t sub_26BCB8F28()
{
  v1 = *v0;
  sub_26BCC92FC();
  MEMORY[0x26D694C70](v1);
  return sub_26BCC931C();
}

char *SupportFlowHostingController.init<A>(rootView:configuration:delegate:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _UNKNOWN **a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v80 = a6;
  v77 = a4;
  v91 = a3;
  v86 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467D0, &qword_26BCC9DB0);
  v10 = sub_26BCC8D8C();
  OUTLINED_FUNCTION_1_0();
  v84 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v82 = &v75 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804467D8, &qword_26BCC9DB8);
  v85 = v10;
  v83 = sub_26BCC8D8C();
  OUTLINED_FUNCTION_2_0(v83);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  v81 = &v75 - v19;
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v79 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_26BCC8CAC();
  OUTLINED_FUNCTION_1_0();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a2;
  v87 = a2[1];
  v34 = *(a2 + 2);
  v88 = *(a2 + 1);
  v35 = qword_2804467E0;
  v36 = type metadata accessor for SupportFlowSceneBridge();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *(v7 + v35) = sub_26BCC4D94();
  sub_26BCC8C8C();

  v39 = sub_26BCC8C9C();
  v40 = sub_26BCC905C();

  v41 = os_log_type_enabled(v39, v40);
  v89 = v21;
  v90 = a5;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v95[0] = v43;
    *v42 = 136315650;
    v44 = sub_26BCB88A8();
    v46 = sub_26BCBA718(v44, v45, v95);
    ObjectType = v7;
    v47 = v46;

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_26BCBA718(0xD000000000000026, 0x800000026BCCB700, v95);
    *(v42 + 22) = 2080;
    LOBYTE(v92) = v33;
    BYTE1(v92) = v87;
    v93 = v88;
    v94 = v34;

    v48 = sub_26BCC8F7C();
    v50 = sub_26BCBA718(v48, v49, v95);

    *(v42 + 24) = v50;
    v7 = ObjectType;
    _os_log_impl(&dword_26BCB5000, v39, v40, "%s.%s - configuration: %s", v42, 0x20u);
    swift_arrayDestroy();
    v51 = v43;
    a5 = v90;
    MEMORY[0x26D695170](v51, -1, -1);
    v52 = v42;
    v21 = v89;
    MEMORY[0x26D695170](v52, -1, -1);
  }

  (*(v27 + 8))(v32, v78);
  v53 = v7 + qword_2804467E8;
  *v53 = v33;
  *(v53 + 1) = v87;
  v54 = v88;
  *(v53 + 8) = v88;
  *(v53 + 16) = v34;
  v55 = v86;
  (*(v21 + 16))(v79, v86, a5);

  v56 = v80;
  v92 = sub_26BCC8F0C();
  v57 = sub_26BCC8DDC();
  v58 = v57;
  if (v33)
  {
    if (v33 == 1)
    {
      v92 = 0;
      LOBYTE(v93) = 2;
      type metadata accessor for SupportFlowSceneHostingClientManager();
      v59 = swift_allocObject();
      v60 = v91;
      swift_unknownObjectRetain();
      v61 = v54;
      v62 = v34;
      v63 = v60;
      v64 = v77;
    }

    else
    {
      v65 = v91;
      v66 = v77;
      if (!v91)
      {
        v67 = v57;
        v66 = &protocol witness table for SupportFlowHostingController;
        v65 = v58;
      }

      v92 = 0;
      LOBYTE(v93) = 2;
      type metadata accessor for SupportFlowSceneHostingClientManager();
      v59 = swift_allocObject();
      swift_unknownObjectRetain();
      v61 = v54;
      v62 = v34;
      v63 = v65;
      v64 = v66;
    }

    sub_26BCBA42C(v61, v62, v63, v64, &v92);
  }

  else
  {

    v59 = 0;
  }

  v88 = v59;
  swift_getKeyPath();
  v92 = v59;
  v68 = v58;
  v69 = v82;
  sub_26BCC8EAC();

  swift_getKeyPath();
  v92 = *&v68[qword_2804467E0];
  v70 = sub_26BCBA6C4(&qword_2804467F0, &qword_2804467D0, &qword_26BCC9DB0);
  v95[3] = v56;
  v95[4] = v70;

  v71 = v85;
  WitnessTable = swift_getWitnessTable();
  sub_26BCC8EAC();

  (*(v84 + 8))(v69, v71);
  v73 = sub_26BCBA6C4(&qword_2804467F8, &qword_2804467D8, &qword_26BCC9DB8);
  v95[1] = WitnessTable;
  v95[2] = v73;
  swift_getWitnessTable();
  v92 = sub_26BCC8F0C();
  sub_26BCC8DEC();
  swift_unknownObjectRelease();

  (*(v89 + 8))(v55, v90);
  return v68;
}

uint64_t sub_26BCB96E8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCB9714(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.sceneHostingClientManager.setter(v2);
}

uint64_t sub_26BCB9780(void (*a1)(void))
{
  a1();
  sub_26BCC8DBC();
  return v2;
}

uint64_t sub_26BCB97C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCB9760();
  *a1 = result;
  return result;
}

uint64_t sub_26BCB97F4(uint64_t *a1)
{
  v1 = *a1;

  OUTLINED_FUNCTION_0_0();
  return sub_26BCB982C(v2, v3);
}

uint64_t sub_26BCB9874(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_2804467E0;
  v5 = type metadata accessor for SupportFlowSceneBridge();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_26BCC4D94();

  *(v2 + v4) = v8;

  swift_deallocPartialClassInstance();
  return 0;
}

id SupportFlowHostingController.updateClientFlowPresentationState(_:)(uint64_t *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446808, &qword_26BCC9E10) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  result = MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  if (*(v1 + qword_2804467E8) == 2)
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    result = [v1 _hostedWindowScene];
    if (result)
    {
      v10 = result;
      sub_26BCC90DC();

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446810, &qword_26BCC9E18);
      if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
      {
        return sub_26BCBACDC(v7);
      }

      else
      {
        v12 = v8;
        v13 = v9;
        swift_getOpaqueTypeConformance2();
        sub_26BCB89A4();
        sub_26BCB8AE8(&unk_280446820, sub_26BCB8A40);
        sub_26BCB8AE8(&qword_2804467A8, sub_26BCB8A94);
        sub_26BCB8AE8(&qword_2804467B0, sub_26BCB8B60);
        sub_26BCC8CEC();
        return (*(*(v11 - 8) + 8))(v7, v11);
      }
    }
  }

  return result;
}

uint64_t sub_26BCB9BE0()
{
  v1 = *(v0 + qword_2804467E8 + 16);

  v2 = *(v0 + qword_2804467E0);
}

id SupportFlowHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26BCB9C5C(uint64_t a1)
{
  v2 = *(a1 + qword_2804467E8 + 16);

  v3 = *(a1 + qword_2804467E0);
}

uint64_t SupportFlowHostingController.scene(_:openURLContexts:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = *(v2 + qword_2804467E0);
  v9 = sub_26BCB9DC4(a2);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 URL];

    sub_26BCC8BEC();
    v12 = sub_26BCC8BFC();
    v13 = 0;
  }

  else
  {
    v12 = sub_26BCC8BFC();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v13, 1, v12);
  return sub_26BCC3CCC(v7);
}

uint64_t sub_26BCB9DC4(uint64_t a1)
{
  v2 = sub_26BCBB1E4(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_26BCBB244(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_26BCBB484(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_26BCBB4B8(v7, v9, v11 & 1);
  if (v12)
  {
    sub_26BCBB4B8(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_26BCBB298(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_26BCBB4B8(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_26BCB9E98(void *a1, uint64_t a2, void *a3)
{
  sub_26BCBB148();
  sub_26BCBB18C();
  v5 = sub_26BCC903C();
  v6 = a3;
  v7 = a1;
  SupportFlowHostingController.scene(_:openURLContexts:)(v7, v5);
}

void sub_26BCB9F2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneDidBecomeActive(_:)(v5);
}

void sub_26BCB9F98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneWillResignActive(_:)(v5);
}

uint64_t sub_26BCBA004(uint64_t a1, unsigned int *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *(v2 + qword_2804467E0);
  v9 = *a2;
  v10 = sub_26BCC8CFC();
  OUTLINED_FUNCTION_2_0(v10);
  (*(v11 + 104))(v7, v9, v10);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  return sub_26BCC3E1C(v7);
}

void sub_26BCBA0DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SupportFlowHostingController.sceneDidEnterBackground(_:)(v5);
}

uint64_t SupportFlowSceneHostingClientManager.clientBundleIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SupportFlowSceneHostingClientManager.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26BCBA1B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_26BCBA208(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return SupportFlowSceneHostingClientManager.flowState.setter(&v5);
}

uint64_t SupportFlowSceneHostingClientManager.flowState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_26BCBA29C();
}

uint64_t sub_26BCBA29C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v4 = *(v0 + 56);
    v5 = *(v0 + 48);
    v6 = v4;
    (*(v2 + 16))(&v5, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*SupportFlowSceneHostingClientManager.flowState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26BCBA388;
}

uint64_t sub_26BCBA388(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_26BCBA29C();
  }

  return result;
}

uint64_t SupportFlowSceneHostingClientManager.showsSearchBar.getter()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t sub_26BCBA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 48) = v9;
  *(v5 + 56) = v10;
  return v5;
}

uint64_t SupportFlowSceneHostingClientManager.deinit()
{
  sub_26BCB8688(v0 + 16);
  v1 = *(v0 + 40);

  return v0;
}

uint64_t SupportFlowSceneHostingClientManager.__deallocating_deinit()
{
  sub_26BCB8688(v0 + 16);
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_26BCBA520@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCBA518();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.sceneHostingClientManager.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_26BCBAC88();
  sub_26BCC8DBC();
  return sub_26BCBA5A8;
}

uint64_t sub_26BCBA5A8(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_26BCC8DCC();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_26BCC8DCC();
  }
}

uint64_t sub_26BCBA664@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneHostingClientManager.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBA694@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BCB9760();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBA6C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BCBA718(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26BCBA7DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26BCBB510(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26BCBA7DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26BCBA8DC(a5, a6);
    *a1 = v9;
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
    result = sub_26BCC91EC();
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

uint64_t sub_26BCBA8DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_26BCBA928(a1, a2);
  sub_26BCBAA40(&unk_287CAD3D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26BCBA928(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26BCC8F9C())
  {
    result = sub_26BCBAB24(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BCC91BC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26BCC91EC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26BCBAA40(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_26BCBAB94(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26BCBAB24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804468F0, &qword_26BCCA018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BCBAB94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804468F0, &qword_26BCCA018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_26BCBAC88()
{
  result = qword_280446800;
  if (!qword_280446800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446800);
  }

  return result;
}

uint64_t sub_26BCBACDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446808, &qword_26BCC9E10);
  OUTLINED_FUNCTION_2_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26BCBAD40()
{
  result = qword_280446868;
  if (!qword_280446868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446868);
  }

  return result;
}

uint64_t type metadata accessor for SupportFlowHostingController()
{
  result = qword_280446870;
  if (!qword_280446870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BCBAE90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCBAEE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupportFlowHostingController.HostingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportFlowHostingController.HostingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x26BCBB0ACLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26BCBB148()
{
  result = qword_2804468E0;
  if (!qword_2804468E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804468E0);
  }

  return result;
}

unint64_t sub_26BCBB18C()
{
  result = qword_2804468E8;
  if (!qword_2804468E8)
  {
    sub_26BCBB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804468E8);
  }

  return result;
}

uint64_t sub_26BCBB1E4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26BCC912C();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_26BCC911C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_26BCBB244(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26BCC917C();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_26BCBB298(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D694AD0](a1, a2, v7);
      sub_26BCBB148();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_26BCBB148();
    if (sub_26BCC914C() == *(a4 + 36))
    {
      sub_26BCC915C();
      swift_dynamicCast();
      v4 = v15;
      v8 = *(a4 + 40);
      v9 = sub_26BCC90EC();
      v10 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v9 & v10;
        if (((*(a4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_26BCC90FC();

        if (v12)
        {
          goto LABEL_18;
        }

        v9 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

BOOL sub_26BCBB484(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x26D694AA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_26BCBB4B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26BCBB510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26BCBB570()
{
  result = qword_2804468F8;
  if (!qword_2804468F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804468F8);
  }

  return result;
}

uint64_t SupportFlowRemoteUIPresenter.__allocating_init(flowIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SupportFlowRemoteUIPresenter.init(flowIdentifier:delegate:)(a1, a2, a3);
  return v9;
}

uint64_t SupportFlowRemoteUIPresenter.init(flowIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  v8 = OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier;
  v9 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  swift_beginAccess();
  sub_26BCB6D50(a1, v4 + v8);
  swift_endAccess();
  v10 = objc_allocWithZone(type metadata accessor for RemoteHandleObserverDelegate());
  v11 = sub_26BCBBF24(a2, a3);
  sub_26BCBD8E0(a1, &qword_280446768, &qword_26BCC9CE0);
  *(v4 + 24) = v11;
  return v4;
}

uint64_t SupportFlowRemoteUIPresenter.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 unregisterObserver_];
    v2 = *(v0 + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_26BCBD8E0(v0 + OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier, &qword_280446768, &qword_26BCC9CE0);
  return v0;
}

uint64_t SupportFlowRemoteUIPresenter.__deallocating_deinit()
{
  SupportFlowRemoteUIPresenter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26BCBB890()
{
  v1 = v0;
  v2 = sub_26BCC8C5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30[-v9];
  v11 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446970, &qword_26BCCA0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BCCA070;
  strcpy(v31, "flowIdentifier");
  v31[15] = -18;
  sub_26BCC91AC();
  v13 = OBJC_IVAR____TtC13SupportFlowUI28SupportFlowRemoteUIPresenter_flowIdentifier;
  swift_beginAccess();
  sub_26BCBD878(v1 + v13, v10, &qword_280446768, &qword_26BCC9CE0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2))
  {
    sub_26BCBD8E0(v10, &qword_280446768, &qword_26BCC9CE0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(inited + 88) = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_26BCBD8E0(v10, &qword_280446768, &qword_26BCC9CE0);
    v15 = sub_26BCC8C4C();
    v16 = v17;
    (*(v3 + 8))(v6, v2);
    v14 = MEMORY[0x277D837D0];
  }

  *(inited + 96) = v14;
  *(inited + 72) = v15;
  *(inited + 80) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446978, &qword_26BCCA0B0);
  v18 = sub_26BCC8F2C();
  v19 = sub_26BCBBC68(v18);

  sub_26BCBD18C(v19, v11);
  v20 = [objc_opt_self() supportFlowApp];
  v21 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v22 = sub_26BCBCDFC(v20, 0xD000000000000021, 0x800000026BCCB870);
  v23 = [objc_opt_self() newHandleWithDefinition:v22 configurationContext:v11];
  v24 = *(v1 + 16);
  *(v1 + 16) = v23;
  v25 = v23;

  if (v25)
  {
    [v25 registerObserver_];
  }

  v26 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  v27 = *(v1 + 16);
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    [v28 activateWithContext_];

    v22 = v29;
  }
}

uint64_t sub_26BCBBC68(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_26BCBD8E0(v20, &unk_280446978, &qword_26BCCA0B0))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    sub_26BCBD81C(*(a1 + 48) + 40 * v12, __src);
    sub_26BCBD878(*(a1 + 56) + 32 * v12, &__src[40], &unk_280446978, &qword_26BCCA0B0);
    memcpy(__dst, __src, sizeof(__dst));
    sub_26BCBD878(&__dst[40], v29, &unk_280446978, &qword_26BCCA0B0);
    if (*&v29[24])
    {
      sub_26BCBD940(v29, v30);
      memcpy(v29, __dst, sizeof(v29));
      sub_26BCBD940(v30, v28);
      v13 = *(v2 + 16);
      if (*(v2 + 24) <= v13)
      {
        sub_26BCBCE74(v13 + 1, 1);
        v2 = v33;
      }

      v14 = *(v2 + 40);
      result = sub_26BCC918C();
      v15 = v2 + 64;
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v16) >> 6;
        while (++v18 != v22 || (v21 & 1) == 0)
        {
          v23 = v18 == v22;
          if (v18 == v22)
          {
            v18 = 0;
          }

          v21 |= v23;
          v24 = *(v15 + 8 * v18);
          if (v24 != -1)
          {
            v19 = __clz(__rbit64(~v24)) + (v18 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v2 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = *(v2 + 48) + 40 * v19;
      v26 = *v29;
      v27 = *&v29[16];
      *(v25 + 32) = *&v29[32];
      *v25 = v26;
      *(v25 + 16) = v27;
      sub_26BCBD940(v28, (*(v2 + 56) + 32 * v19));
      ++*(v2 + 16);
      v20 = &v29[40];
    }

    else
    {
      sub_26BCBD8E0(__dst, &qword_280446A18, &qword_26BCCA1D0);
      v20 = v29;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_26BCBBF24(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_26BCBBFAC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_26BCC8CAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v13 = a1;
  v14 = sub_26BCC8C9C();
  v15 = sub_26BCC904C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_26BCB5000, v14, v15, "SupportFlowRemoteUIPresenter - Did activate handle %@", v16, 0xCu);
    sub_26BCBD8E0(v17, &qword_280446A10, &qword_26BCCA1A8);
    MEMORY[0x26D695170](v17, -1, -1);
    MEMORY[0x26D695170](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v19 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v21 = v2;
  sub_26BCBF5E8(0, 0, v7, &unk_26BCCA1C8, v20);
}

uint64_t sub_26BCBC208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26BCBC228);
}

uint64_t sub_26BCBC228()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[5] = v3;
    v0[6] = swift_getObjectType();
    v0[7] = *(v3 + 8);
    v0[8] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0xE40E000000000000;
    sub_26BCC8FFC();
    v0[9] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v5();
  }
}

uint64_t sub_26BCBC318()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v4(v3, v6);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v7);
}

id sub_26BCBC410(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_26BCC8CAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v13 = a1;
  v14 = sub_26BCC8C9C();
  v15 = sub_26BCC904C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_26BCB5000, v14, v15, "SupportFlowRemoteUIPresenter - Did deactivate handle %@", v16, 0xCu);
    sub_26BCBD8E0(v17, &qword_280446A10, &qword_26BCCA1A8);
    MEMORY[0x26D695170](v17, -1, -1);
    MEMORY[0x26D695170](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v19 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  v21 = v2;
  sub_26BCBF5E8(0, 0, v7, &unk_26BCCA1B8, v20);

  return [v13 invalidate];
}

uint64_t sub_26BCBC67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26BCBC69C);
}

uint64_t sub_26BCBC69C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[5] = v3;
    v0[6] = swift_getObjectType();
    v0[7] = *(v3 + 16);
    v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0x738F000000000000;
    sub_26BCC8FFC();
    v0[9] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v5();
  }
}

uint64_t sub_26BCBC78C()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];

  v4(v3, v6);
  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26BCBC87C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_26BCC8CAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v15 = a1;
  v16 = a2;
  v17 = sub_26BCC8C9C();
  v18 = sub_26BCC906C();

  if (os_log_type_enabled(v17, v18))
  {
    v31 = v3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v20 = v15;
    *(v19 + 12) = 2112;
    v21 = v15;
    if (a2)
    {
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v19 + 14) = v23;
    v20[1] = v24;
    _os_log_impl(&dword_26BCB5000, v17, v18, "SupportFlowRemoteUIPresenter - Did invalidate handle %@ with error %@", v19, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A10, &qword_26BCCA1A8);
    swift_arrayDestroy();
    MEMORY[0x26D695170](v20, -1, -1);
    MEMORY[0x26D695170](v19, -1, -1);
    v3 = v31;
  }

  (*(v11 + 8))(v14, v10);
  v25 = sub_26BCC902C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v3;
  v26[5] = a2;
  v27 = a2;
  v28 = v3;
  sub_26BCBF5E8(0, 0, v9, &unk_26BCCA1A0, v26);
}

uint64_t sub_26BCBCB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_26BCBCB64);
}

uint64_t sub_26BCBCB64()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[3] + OBJC_IVAR____TtC13SupportFlowUIP33_2FF1053B602A1C99DA9867075A1A9B0728RemoteHandleObserverDelegate_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    v0[6] = v3;
    v0[7] = swift_getObjectType();
    v0[8] = *(v3 + 24);
    v0[9] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xB5F5000000000000;
    sub_26BCC8FFC();
    v0[10] = sub_26BCC8FEC();
    sub_26BCC8FDC();
    v4 = OUTLINED_FUNCTION_3_1();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {
    OUTLINED_FUNCTION_1_1();

    return v5();
  }
}

uint64_t sub_26BCBCC54()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  v4(v7, v3, v6);
  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v8);
}

id sub_26BCBCDB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26BCBCDFC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_26BCC8F5C();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithSceneProvidingProcess:a1 configurationIdentifier:v5];

  return v6;
}

uint64_t sub_26BCBCE74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280446A20, &qword_26BCCA1D8);
  result = sub_26BCC921C();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_35:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        sub_26BCBD128(0, (v35 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
    goto LABEL_35;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 48) + 40 * v19;
    if (a2)
    {
      v21 = *v20;
      v22 = *(v20 + 16);
      v40 = *(v20 + 32);
      v38 = v21;
      v39 = v22;
      sub_26BCBD940((*(v5 + 56) + 32 * v19), v37);
    }

    else
    {
      sub_26BCBD81C(v20, &v38);
      sub_26BCBB510(*(v5 + 56) + 32 * v19, v37);
    }

    v23 = *(v8 + 40);
    result = sub_26BCC918C();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v8 + 48) + 40 * v27;
    v33 = v38;
    v34 = v39;
    *(v32 + 32) = v40;
    *v32 = v33;
    *(v32 + 16) = v34;
    result = sub_26BCBD940(v37, (*(v8 + 56) + 32 * v27));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26BCBD128(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26BCCA080;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_26BCBD18C(uint64_t a1, void *a2)
{
  v3 = sub_26BCC8F1C();

  [a2 setUserInfo_];
}

uint64_t type metadata accessor for SupportFlowRemoteUIPresenter()
{
  result = qword_280446988;
  if (!qword_280446988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCBD260()
{
  sub_26BCB8630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for SupportFlowRemoteUIPresenter.ConfigurationContextKey(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SupportFlowRemoteUIPresenter.ConfigurationContextKey(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCBD448);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BCBD4C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCBD50C()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_1(v6);

  return sub_26BCBCB40(v8, v9, v10, v4, v3);
}

uint64_t sub_26BCBD5B0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BCBD6A4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_1(v5);

  return sub_26BCBC67C(v7, v8, v9, v3);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26BCBD780()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_2_1(v5);

  return sub_26BCBC208(v7, v8, v9, v3);
}

uint64_t sub_26BCBD878(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BCBD8E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_26BCBD940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_1()
{
  **(v0 + 16) = 1;
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_26BCBD9F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26BCC908C();

  return v1;
}

uint64_t sub_26BCBDA6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26BCC909C();
}

void sub_26BCBDAD8()
{
  v2 = v0;
  v3 = sub_26BCC8CAC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v9);
  if ((v13 & 1) == 0)
  {
    v14 = *&v12;
    sub_26BCC8C7C();
    v15 = sub_26BCC8C9C();
    v16 = sub_26BCC905C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26BCB5000, v15, v16, "delayPresentationDuration", v17, 2u);
      MEMORY[0x26D695170](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v1);
    aBlock[4] = sub_26BCBE260;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26BCBE398;
    aBlock[3] = &block_descriptor_0;
    v18 = _Block_copy(aBlock);
    [v2 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v18);
  }

  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  OUTLINED_FUNCTION_3_2();
  v20 = (*(v19 + 112))();
  OUTLINED_FUNCTION_3_2();
  v22 = (*(v21 + 120))();
  sub_26BCBE3E8(v20, v22);
  sub_26BCBDA6C();
  v23 = sub_26BCBD9F8();
  v24 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
  [v23 setActivationController_];

  v25 = sub_26BCBD9F8();
  [v25 setDelegate_];

  v26 = sub_26BCBD9F8();
  v27 = [v26 sceneView];

  v28 = OUTLINED_FUNCTION_2_2();
  if (!v28)
  {
    __break(1u);
    goto LABEL_13;
  }

  v29 = v28;
  v30 = v27;
  [v29 addSubview_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = OUTLINED_FUNCTION_2_2();
  if (!v31)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446AC8, &qword_26BCCA288);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26BCCA1E0;
  v34 = [v30 leadingAnchor];

  v35 = OUTLINED_FUNCTION_2_2();
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = OUTLINED_FUNCTION_1_2();
  *(v33 + 32) = v38;
  v39 = [v30 topAnchor];

  v40 = OUTLINED_FUNCTION_2_2();
  if (!v40)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = OUTLINED_FUNCTION_1_2();
  *(v33 + 40) = v43;
  v44 = [v30 trailingAnchor];

  v45 = OUTLINED_FUNCTION_2_2();
  if (!v45)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v46 = v45;
  v47 = [v45 trailingAnchor];

  v48 = OUTLINED_FUNCTION_1_2();
  *(v33 + 48) = v48;
  v49 = [v30 bottomAnchor];

  v50 = OUTLINED_FUNCTION_2_2();
  if (v50)
  {
    v51 = v50;
    v52 = [v50 bottomAnchor];

    v53 = [v49 constraintEqualToAnchor_];
    *(v33 + 56) = v53;
    sub_26BCBEA5C(0, &unk_280446AD0, 0x277CCAAD0);
    v54 = sub_26BCC8FCC();

    [v32 addConstraints_];

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_26BCBE0A0(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26BCBDA6C();
}

void sub_26BCBE190()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SupportFlowSceneHostingController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_26BCBDAD8();
}

uint64_t type metadata accessor for SupportFlowSceneHostingController()
{
  result = qword_280446A48;
  if (!qword_280446A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCBE260()
{
  v0 = sub_26BCC8CAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v5 = sub_26BCC8C9C();
  v6 = sub_26BCC906C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26BCB5000, v5, v6, "_beginDelayingPresentation timed out", v7, 2u);
    MEMORY[0x26D695170](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_26BCBE398(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  LOBYTE(a2) = v4(a2);

  return a2 & 1;
}

id sub_26BCBE3E8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProcessIdentity:a1 sceneSpecification:a2];

  return v4;
}

id SupportFlowSceneHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SupportFlowSceneHostingController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  sub_26BCC90AC();
  if (a2)
  {
    v6 = sub_26BCC8F5C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SupportFlowSceneHostingController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id SupportFlowSceneHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SupportFlowSceneHostingController.init(coder:)(void *a1)
{
  sub_26BCBEA5C(0, &unk_280446A38, 0x277D761E0);
  sub_26BCC90AC();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SupportFlowSceneHostingController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SupportFlowSceneHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupportFlowSceneHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SupportFlowSceneHostingController.clientIsReady()()
{
  v1 = v0;
  v2 = sub_26BCC8CAC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC8C7C();
  v10 = sub_26BCC8C9C();
  v11 = sub_26BCC905C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26BCB5000, v10, v11, "clientIsReady", v12, 2u);
    MEMORY[0x26D695170](v12, -1, -1);
  }

  (*(v5 + 8))(v9);
  [v1 _endDelayingPresentation];
}

void sub_26BCBE91C()
{
  sub_26BCBE9C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26BCBE9C4()
{
  if (!qword_280446A58)
  {
    sub_26BCBEA5C(255, &unk_280446A38, 0x277D761E0);
    v0 = sub_26BCC90BC();
    if (!v1)
    {
      atomic_store(v0, &qword_280446A58);
    }
  }
}

uint64_t sub_26BCBEA2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26BCBD9F8();
  *a2 = result;
  return result;
}

uint64_t sub_26BCBEA5C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_1_2()
{

  return [v0 (v2 + 3941)];
}

id OUTLINED_FUNCTION_2_2()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_26BCBEB14()
{
  v1 = sub_26BCC8DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_26BCC907C();
    v8 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    sub_26BCBF454(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v10[15];
  }

  return v6;
}

uint64_t SupportFlowView.init(flowIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = a2 + *(type metadata accessor for SupportFlowView() + 20);

  return sub_26BCBF074(a1, v4);
}

id SupportFlowView.makeUIViewController(context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SupportFlowView();
  sub_26BCB86B0(v0 + *(v5 + 20), v4);
  sub_26BCBEB14();
  v6 = sub_26BCC8D0C();
  v7 = objc_allocWithZone(type metadata accessor for SupportFlowViewController());
  return SupportFlowViewController.init(flowIdentifier:showsSearchBar:)(v4, (v6 & 1) == 0);
}

uint64_t sub_26BCBEDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BCBF410(&qword_280446B10);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26BCBEE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BCBF410(&qword_280446B10);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26BCBEEE0()
{
  sub_26BCBF410(&qword_280446B10);
  sub_26BCC8E6C();
  __break(1u);
}

uint64_t View.supportFlowSearchBar(_:)()
{
  swift_getKeyPath();
  sub_26BCC8EAC();
}

uint64_t sub_26BCBEF98()
{
  sub_26BCBF49C();
  sub_26BCC8DBC();
  return v1;
}

uint64_t sub_26BCBEFD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBEF98();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for SupportFlowView()
{
  result = qword_280446AE8;
  if (!qword_280446AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BCBF074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BCBF138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_26BCBF1D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_26BCBF260()
{
  sub_26BCBF2E4();
  if (v0 <= 0x3F)
  {
    sub_26BCB8630();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BCBF2E4()
{
  if (!qword_280446AF8)
  {
    v0 = sub_26BCC8D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280446AF8);
    }
  }
}

uint64_t sub_26BCBF334(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B00, &qword_26BCCA3A8);
  sub_26BCC8D8C();
  sub_26BCBF3AC();
  return swift_getWitnessTable();
}

unint64_t sub_26BCBF3AC()
{
  result = qword_280446B08;
  if (!qword_280446B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B00, &qword_26BCCA3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B08);
  }

  return result;
}

uint64_t sub_26BCBF410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SupportFlowView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BCBF454(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26BCBF49C()
{
  result = qword_280446B18;
  if (!qword_280446B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B18);
  }

  return result;
}

uint64_t sub_26BCBF508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBF500();
  *a1 = result;
  return result;
}

uint64_t sub_26BCBF530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26BCBF594();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_26BCBF594()
{
  result = qword_280446B20;
  if (!qword_280446B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B20);
  }

  return result;
}

uint64_t sub_26BCBF5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_26BCBD878(a3, v26 - v11, &qword_280446A08, &qword_26BCCA190);
  v13 = sub_26BCC902C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26BCBD8E0(v12, &qword_280446A08, &qword_26BCCA190);
  }

  else
  {
    sub_26BCC901C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26BCC8FDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26BCC8F8C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C08, &qword_26BCCA7F8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C08, &qword_26BCCA7F8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26BCBF8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_26BCBD878(a3, v26 - v11, &qword_280446A08, &qword_26BCCA190);
  v13 = sub_26BCC902C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26BCBD8E0(v12, &qword_280446A08, &qword_26BCCA190);
  }

  else
  {
    sub_26BCC901C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26BCC8FDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26BCC8F8C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26BCBD8E0(a3, &qword_280446A08, &qword_26BCCA190);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26BCBFBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B50, &qword_26BCCA710);
  (*(*(v13 - 8) + 16))(a6, a1, v13);
  v14 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B58, &qword_26BCCA718) + 36));
  *v14 = sub_26BCC1FC4;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

uint64_t sub_26BCBFCCC(uint64_t (*a1)(uint64_t))
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B60, &qword_26BCCA720);
  sub_26BCC8EEC();
  if (v4)
  {
  }

  sub_26BCC8EFC();

  return a1(v3);
}

uint64_t sub_26BCBFDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  v13 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B68, &qword_26BCCA738) + 36));
  LODWORD(a2) = *(sub_26BCC8D5C() + 20);

  sub_26BCC900C();
  *v13 = &unk_26BCCA730;
  v13[1] = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B70, &qword_26BCCA740);
  v15 = *(*(v14 - 8) + 16);

  return v15(a6, a1, v14);
}

uint64_t sub_26BCBFEB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = a4;
  *(v4 + 106) = a3;
  *(v4 + 48) = a1;
  sub_26BCC8FFC();
  *(v4 + 72) = sub_26BCC8FEC();
  *(v4 + 80) = sub_26BCC8FDC();
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_26BCBFF58);
}

uint64_t sub_26BCBFF58()
{
  v1 = *(v0 + 106);
  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B60, &qword_26BCCA720);
  sub_26BCC8EEC();
  if (*(v0 + 104))
  {
    v2 = *(v0 + 72);

    OUTLINED_FUNCTION_5_1();

    return v3();
  }

  else
  {
    v5 = *(v0 + 64);
    *(v0 + 32) = v1;
    v6 = *(v0 + 48);
    *(v0 + 40) = v5;
    *(v0 + 105) = 1;
    sub_26BCC8EFC();

    v10 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_26BCC0108;
    v9 = *(v0 + 56);

    return v10();
  }
}

uint64_t sub_26BCC0108()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v4 = v3;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26BCC021C);
}

uint64_t sub_26BCC021C()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_5_1();

  return v2();
}

uint64_t sub_26BCC02A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v41 = a1;
  v44 = a6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B78, &unk_26BCCA748);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v37 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B80, &qword_26BCCA758);
  v39 = *(v43 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v37 - v15;
  v17 = sub_26BCC8DAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = a2;
  v23 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v24 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v18 + 8))(v21, v17);
    v22 = v45;
  }

  if (v22)
  {
    sub_26BCC3F6C(v13);
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = v23 & 1;
    v26 = v38;
    *(v25 + 32) = v37;
    *(v25 + 40) = v26;
    j__swift_retain();

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B88, &unk_26BCCA760);
    v28 = sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    v29 = sub_26BCC21A4();
    v30 = v40;
    sub_26BCC8EDC();

    sub_26BCBD8E0(v13, &qword_280446860, &qword_26BCC9E20);
    v31 = v39;
    v32 = v43;
    (*(v39 + 16))(v10, v16, v43);
    swift_storeEnumTagMultiPayload();
    v45 = v27;
    v46 = v30;
    v47 = v28;
    v48 = v29;
    swift_getOpaqueTypeConformance2();
    sub_26BCC8DFC();

    return (*(v31 + 8))(v16, v32);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446B88, &unk_26BCCA760);
    (*(*(v34 - 8) + 16))(v10, v41, v34);
    swift_storeEnumTagMultiPayload();
    v35 = sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    v36 = sub_26BCC21A4();
    v45 = v34;
    v46 = v40;
    v47 = v35;
    v48 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC0780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_26BCC8FFC();
  v6[3] = sub_26BCC8FEC();
  v11 = (a6 + *a6);
  v8 = a6[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_26BCC0890;

  return v11();
}

uint64_t sub_26BCC0890()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v6 = v5;

  sub_26BCC8FDC();

  return MEMORY[0x2822009F8](sub_26BCC30C4);
}

uint64_t sub_26BCC09D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v41 = a1;
  v44 = a6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BB0, &qword_26BCCA7A0);
  v8 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v37 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v37 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BB8, &qword_26BCCA7A8);
  v39 = *(v43 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v37 - v15;
  v17 = sub_26BCC8DAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = a2;
  v23 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v24 = sub_26BCC8E9C();
    sub_26BCC8C6C();

    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v18 + 8))(v21, v17);
    v22 = v45;
  }

  if (v22)
  {
    sub_26BCC3F6C(v13);
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = v23 & 1;
    v26 = v38;
    *(v25 + 32) = v37;
    *(v25 + 40) = v26;
    j__swift_retain();

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BC0, &qword_26BCCA7B0);
    v28 = sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    v29 = sub_26BCC21A4();
    v30 = v40;
    sub_26BCC8EDC();

    sub_26BCBD8E0(v13, &qword_280446860, &qword_26BCC9E20);
    v31 = v39;
    v32 = v43;
    (*(v39 + 16))(v10, v16, v43);
    swift_storeEnumTagMultiPayload();
    v45 = v27;
    v46 = v30;
    v47 = v28;
    v48 = v29;
    swift_getOpaqueTypeConformance2();
    sub_26BCC8DFC();

    return (*(v31 + 8))(v16, v32);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BC0, &qword_26BCCA7B0);
    (*(*(v34 - 8) + 16))(v10, v41, v34);
    swift_storeEnumTagMultiPayload();
    v35 = sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    v36 = sub_26BCC21A4();
    v45 = v34;
    v46 = v40;
    v47 = v35;
    v48 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC0EAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, uint64_t a9)
{
  v46 = a8;
  v47 = a3;
  v48 = a5;
  v49 = a6;
  v44 = a4;
  v50 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446A08, &qword_26BCCA190);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v43[-v12];
  v13 = sub_26BCC8CFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BA8, &qword_26BCCA770);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v43[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v43[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v29 = &v43[-v28];
  (*(v14 + 104))(&v43[-v28], *a7, v13);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v13);
  v30 = *(v19 + 56);
  sub_26BCBD878(v50, v22, &qword_280446860, &qword_26BCC9E20);
  sub_26BCBD878(v29, &v22[v30], &qword_280446860, &qword_26BCC9E20);
  OUTLINED_FUNCTION_11_0(v22);
  if (v31)
  {
    sub_26BCBD8E0(v29, &qword_280446860, &qword_26BCC9E20);
    OUTLINED_FUNCTION_11_0(&v22[v30]);
    if (v31)
    {
      sub_26BCBD8E0(v22, &qword_280446860, &qword_26BCC9E20);
LABEL_11:
      v35 = sub_26BCC902C();
      v36 = v45;
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v35);
      sub_26BCC8FFC();
      v37 = v44 & 1;
      v38 = v47;
      j__swift_retain();
      v39 = v49;

      v40 = sub_26BCC8FEC();
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D85700];
      *(v41 + 16) = v40;
      *(v41 + 24) = v42;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      *(v41 + 48) = v48;
      *(v41 + 56) = v39;
      sub_26BCBF8E0(0, 0, v36, a9, v41);
    }

    return sub_26BCBD8E0(v22, &qword_280446BA8, &qword_26BCCA770);
  }

  sub_26BCBD878(v22, v27, &qword_280446860, &qword_26BCC9E20);
  OUTLINED_FUNCTION_11_0(&v22[v30]);
  if (v31)
  {
    sub_26BCBD8E0(v29, &qword_280446860, &qword_26BCC9E20);
    (*(v14 + 8))(v27, v13);
    return sub_26BCBD8E0(v22, &qword_280446BA8, &qword_26BCCA770);
  }

  (*(v14 + 32))(v17, &v22[v30], v13);
  sub_26BCC2D7C(&qword_280446BA0, MEMORY[0x277CDD6C8]);
  v32 = sub_26BCC8F4C();
  v33 = *(v14 + 8);
  v33(v17, v13);
  sub_26BCBD8E0(v29, &qword_280446860, &qword_26BCC9E20);
  v33(v27, v13);
  result = sub_26BCBD8E0(v22, &qword_280446860, &qword_26BCC9E20);
  if (v32)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26BCC1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_26BCC8FFC();
  v6[3] = sub_26BCC8FEC();
  v11 = (a6 + *a6);
  v8 = a6[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_26BCC1424;

  return v11();
}

uint64_t sub_26BCC1424()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v6 = v5;

  sub_26BCC8FDC();

  return MEMORY[0x2822009F8](sub_26BCC1550);
}

uint64_t sub_26BCC1550()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5_1();

  return v2();
}

uint64_t sub_26BCC15E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v36 = a1;
  v37 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BD0, &qword_26BCCA7C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BD8, &qword_26BCCA7D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = sub_26BCC8DAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v22 = sub_26BCC8E9C();
    v34 = v12;
    v23 = v9;
    v24 = a4;
    v25 = v22;
    sub_26BCC8C6C();

    a4 = v24;
    v9 = v23;
    v12 = v34;
    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v18 + 8))(v21, v17);
    a2 = v38;
  }

  if (a2)
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BE0, &qword_26BCCA7D8);
    (*(*(v26 - 8) + 16))(v12, v36, v26);
    v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C00, &qword_26BCCA7E0) + 36)];
    v28 = v35;
    *v27 = a4;
    *(v27 + 1) = v28;
    v27[16] = 0;
    *(v27 + 3) = 0;
    KeyPath = swift_getKeyPath();
    v30 = &v12[*(v9 + 36)];
    *v30 = KeyPath;
    v30[8] = 0;
    *(v30 + 2) = a4;
    *(v30 + 3) = v28;
    sub_26BCBD878(v12, v16, &qword_280446BD0, &qword_26BCCA7C8);
    swift_storeEnumTagMultiPayload();
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    swift_retain_n();
    sub_26BCC8DFC();
    return sub_26BCBD8E0(v12, &qword_280446BD0, &qword_26BCCA7C8);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BE0, &qword_26BCCA7D8);
    (*(*(v32 - 8) + 16))(v16, v36, v32);
    swift_storeEnumTagMultiPayload();
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  v8 = 0;
  return MEMORY[0x26D694830](v6, a3, a5);
}

uint64_t sub_26BCC1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = a1;
  v14 = a2;

  MEMORY[0x26D694830](&KeyPath, a3, a5, a4);
}

unint64_t sub_26BCC1B38()
{
  result = qword_280446B28;
  if (!qword_280446B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B28);
  }

  return result;
}

unint64_t sub_26BCC1BAC()
{
  result = qword_280446B30;
  if (!qword_280446B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B30);
  }

  return result;
}

unint64_t sub_26BCC1C20()
{
  result = qword_280446B38;
  if (!qword_280446B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B38);
  }

  return result;
}

unint64_t sub_26BCC1C94()
{
  result = qword_280446B40;
  if (!qword_280446B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B40);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx011SupportFlowB021OnFirstAppearModifier33_750130770D876F9AD2761B1FB97615DFLLVGAaBHPxAaBHD1__AhA0cK0HPyHCHCTm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_26BCC8D8C();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_26BCC1D78()
{
  result = qword_280446B48;
  if (!qword_280446B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B48);
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

uint64_t sub_26BCC1E1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCC1E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_9_0(result);
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26BCC1EA8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BCC1EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      return OUTLINED_FUNCTION_9_0(result);
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BCC1FC4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_26BCBFCCC(*(v0 + 16));
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCC2014()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BCC20C0;

  return sub_26BCBFEB8(v2, v3, v4, v5);
}

uint64_t sub_26BCC20C0()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return v5();
}

unint64_t sub_26BCC21A4()
{
  result = qword_280446B98;
  if (!qword_280446B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D7C(&qword_280446BA0, MEMORY[0x277CDD6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446B98);
  }

  return result;
}

uint64_t sub_26BCC228C()
{
  OUTLINED_FUNCTION_7_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return sub_26BCC0780(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26BCC232C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BCC2424;

  return v7(a1);
}

uint64_t sub_26BCC2424()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return v5();
}

uint64_t sub_26BCC2508()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26BCC2540()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  j__swift_release();
  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26BCC26C4()
{
  OUTLINED_FUNCTION_7_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_1(v1);

  return sub_26BCC1314(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_26BCC2764()
{
  result = qword_280446BF0;
  if (!qword_280446BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446BD0, &qword_26BCCA7C8);
    sub_26BCC27F0();
    sub_26BCC1C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446BF0);
  }

  return result;
}

unint64_t sub_26BCC27F0()
{
  result = qword_280446BF8;
  if (!qword_280446BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C00, &qword_26BCCA7E0);
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC1BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446BF8);
  }

  return result;
}

uint64_t sub_26BCC2894(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26BCC2988;

  return v6(v2 + 32);
}

uint64_t sub_26BCC2988()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_3();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_5_1();

  return v7();
}

uint64_t sub_26BCC2A88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

uint64_t sub_26BCC2B18()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_3(v1);

  return v4(v3);
}

unint64_t sub_26BCC2BAC()
{
  result = qword_280446C10;
  if (!qword_280446C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B58, &qword_26BCCA718);
    sub_26BCC2D28(&qword_280446C18, &qword_280446B50, &qword_26BCCA710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C10);
  }

  return result;
}

unint64_t sub_26BCC2C54()
{
  result = qword_280446C20;
  if (!qword_280446C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B68, &qword_26BCCA738);
    sub_26BCC2D28(&qword_280446C28, &qword_280446B70, &qword_26BCCA740);
    sub_26BCC2D7C(&qword_280446C30, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C20);
  }

  return result;
}

uint64_t sub_26BCC2D28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26BCC2D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BCC2DC8()
{
  result = qword_280446C38;
  if (!qword_280446C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C40, &qword_26BCCA808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446B88, &unk_26BCCA760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D28(&qword_280446B90, &qword_280446B88, &unk_26BCCA760);
    sub_26BCC21A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C38);
  }

  return result;
}

unint64_t sub_26BCC2ED8()
{
  result = qword_280446C48;
  if (!qword_280446C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C50, &qword_26BCCA810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446BC0, &qword_26BCCA7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446860, &qword_26BCC9E20);
    sub_26BCC2D28(&qword_280446BC8, &qword_280446BC0, &qword_26BCCA7B0);
    sub_26BCC21A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C48);
  }

  return result;
}

unint64_t sub_26BCC2FE8()
{
  result = qword_280446C58;
  if (!qword_280446C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C60, &qword_26BCCA818);
    sub_26BCC2D28(&qword_280446BE8, &qword_280446BE0, &qword_26BCCA7D8);
    sub_26BCC2764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_5_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_7_1()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
}

uint64_t sub_26BCC3194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a4;
  v55 = a1;
  v58 = a6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C70, &qword_26BCCA928);
  v9 = OUTLINED_FUNCTION_2_0(v56);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  v14 = OUTLINED_FUNCTION_2_0(v54);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C78, &qword_26BCCA938);
  v19 = OUTLINED_FUNCTION_2(v57);
  v53 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v49 - v23;
  v25 = sub_26BCC8DAC();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);

  v33 = a2;
  v51 = a3;
  if ((a3 & 1) == 0)
  {
    sub_26BCC907C();
    v34 = sub_26BCC8E9C();
    v50 = v18;
    v35 = a5;
    v36 = v34;
    sub_26BCC8C6C();

    a5 = v35;
    v18 = v50;
    sub_26BCC8D9C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v28 + 8))(v32, v25);
    v33 = v59;
  }

  if (v33)
  {
    sub_26BCC3F90(v18);
    v37 = swift_allocObject();
    *(v37 + 16) = a2;
    *(v37 + 24) = v51 & 1;
    *(v37 + 32) = v52;
    *(v37 + 40) = a5;
    j__swift_retain();

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C80, &qword_26BCCA940);
    v39 = sub_26BCC393C();
    v40 = sub_26BCC39A0();
    v41 = v54;
    sub_26BCC8EDC();

    sub_26BCC3AD8(v18);
    v42 = v53;
    v43 = v57;
    (*(v53 + 16))(v13, v24, v57);
    swift_storeEnumTagMultiPayload();
    v59 = v38;
    v60 = v41;
    v61 = v39;
    v62 = v40;
    OUTLINED_FUNCTION_0_4();
    sub_26BCC8DFC();

    return (*(v42 + 8))(v24, v43);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446C80, &qword_26BCCA940);
    OUTLINED_FUNCTION_2_0(v45);
    (*(v46 + 16))(v13, v55, v45);
    swift_storeEnumTagMultiPayload();
    v47 = sub_26BCC393C();
    v48 = sub_26BCC39A0();
    v59 = v45;
    v60 = v54;
    v61 = v47;
    v62 = v48;
    OUTLINED_FUNCTION_0_4();
    return sub_26BCC8DFC();
  }
}

uint64_t sub_26BCC35DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_26BCC8BFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC3B40(a2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return sub_26BCC3AD8(v10);
  }

  (*(v12 + 32))(v15, v10, v11);
  a5(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.onOpenSupportFlowURL(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = a1;
  v12 = a2;

  MEMORY[0x26D694830](&KeyPath, a3, &type metadata for OnOpenFlowURLModifier, a4);
}

uint64_t sub_26BCC3818(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26BCC8D8C();
  sub_26BCC387C();
  return swift_getWitnessTable();
}

unint64_t sub_26BCC387C()
{
  result = qword_280446C68;
  if (!qword_280446C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C68);
  }

  return result;
}

uint64_t sub_26BCC38D0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26BCC393C()
{
  result = qword_280446C88;
  if (!qword_280446C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C80, &qword_26BCCA940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C88);
  }

  return result;
}

unint64_t sub_26BCC39A0()
{
  result = qword_280446C90;
  if (!qword_280446C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446858, &qword_26BCCA930);
    sub_26BCC3A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C90);
  }

  return result;
}

unint64_t sub_26BCC3A24()
{
  result = qword_280446C98;
  if (!qword_280446C98)
  {
    sub_26BCC8BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446C98);
  }

  return result;
}

uint64_t sub_26BCC3A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  j__swift_release();
  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26BCC3AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BCC3B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BCC3BB4()
{
  result = qword_280446CA0;
  if (!qword_280446CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446CA8, &qword_26BCCA948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446C80, &qword_26BCCA940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280446858, &qword_26BCCA930);
    sub_26BCC393C();
    sub_26BCC39A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26BCC3CCC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__url;
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_8_1();
  sub_26BCC4084(v7, a1);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_3();
    sub_26BCC4684();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    sub_26BCC4C70(a1, v1 + v8, &qword_280446858, &qword_26BCCA930);
    swift_endAccess();
  }

  return sub_26BCC4CF4(a1, &qword_280446858, &qword_26BCCA930);
}

uint64_t sub_26BCC3E1C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__scenePhase;
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_8_1();
  sub_26BCC4384(v7, a1);
  OUTLINED_FUNCTION_4_2();
  if (v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_3();
    sub_26BCC4684();
  }

  else
  {
    OUTLINED_FUNCTION_7_2();
    sub_26BCC4C70(a1, v1 + v8, &qword_280446860, &qword_26BCC9E20);
    swift_endAccess();
  }

  return sub_26BCC4CF4(a1, &qword_280446860, &qword_26BCC9E20);
}

uint64_t sub_26BCC3FB4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v13 = v4;
  OUTLINED_FUNCTION_0_5();
  sub_26BCC4D4C(v9, v10);
  sub_26BCC8C1C();

  v11 = *a1;
  swift_beginAccess();
  return sub_26BCC4BEC(v13 + v11, a4, a2, a3);
}

uint64_t sub_26BCC4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC8BFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446858, &qword_26BCCA930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446CF0, &unk_26BCCA9E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_26BCC4BEC(a1, &v23 - v16, &qword_280446858, &qword_26BCCA930);
  sub_26BCC4BEC(a2, &v17[v18], &qword_280446858, &qword_26BCCA930);
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) != 1)
  {
    sub_26BCC4BEC(v17, v12, &qword_280446858, &qword_26BCCA930);
    if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_26BCC4D4C(&qword_280446C98, MEMORY[0x277CC9260]);
      v20 = sub_26BCC8F4C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_26BCC4CF4(v17, &qword_280446858, &qword_26BCCA930);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_26BCC4CF4(v17, &qword_280446CF0, &unk_26BCCA9E0);
    v19 = 1;
    return v19 & 1;
  }

  sub_26BCC4CF4(v17, &qword_280446858, &qword_26BCCA930);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_26BCC4384(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC8CFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446860, &qword_26BCC9E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446BA8, &qword_26BCCA770);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_26BCC4BEC(a1, &v23 - v16, &qword_280446860, &qword_26BCC9E20);
  sub_26BCC4BEC(a2, &v17[v18], &qword_280446860, &qword_26BCC9E20);
  if (__swift_getEnumTagSinglePayload(v17, 1, v4) != 1)
  {
    sub_26BCC4BEC(v17, v12, &qword_280446860, &qword_26BCC9E20);
    if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_26BCC4D4C(&qword_280446BA0, MEMORY[0x277CDD6C8]);
      v20 = sub_26BCC8F4C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_26BCC4CF4(v17, &qword_280446860, &qword_26BCC9E20);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_26BCC4CF4(v17, &qword_280446BA8, &qword_26BCCA770);
    v19 = 1;
    return v19 & 1;
  }

  sub_26BCC4CF4(v17, &qword_280446860, &qword_26BCC9E20);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_26BCC4684()
{
  OUTLINED_FUNCTION_0_5();
  sub_26BCC4D4C(v0, v1);
  return sub_26BCC8C0C();
}

uint64_t sub_26BCC472C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_26BCC4BEC(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_26BCC47D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_26BCC4C70(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_26BCC4858()
{
  sub_26BCC4CF4(v0 + OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__url, &qword_280446858, &qword_26BCCA930);
  sub_26BCC4CF4(v0 + OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge__scenePhase, &qword_280446860, &qword_26BCC9E20);
  v1 = OBJC_IVAR____TtC13SupportFlowUI22SupportFlowSceneBridge___observationRegistrar;
  v2 = sub_26BCC8C3C();
  OUTLINED_FUNCTION_2_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_26BCC48F0()
{
  sub_26BCC4858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SupportFlowSceneBridge()
{
  result = qword_280446CC8;
  if (!qword_280446CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCC499C()
{
  sub_26BCC4AD8(319, &qword_280446CD8, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26BCC4AD8(319, &qword_280446CE0, MEMORY[0x277CDD6C8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_26BCC8C3C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26BCC4AD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BCC910C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BCC4BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_5_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_26BCC4C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_5_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_0(v6);
  (*(v7 + 24))(v4, v5);
  return v4;
}

uint64_t sub_26BCC4CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_26BCC4D4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BCC4D94()
{
  sub_26BCC8BFC();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_4();
  sub_26BCC8CFC();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_4();
  sub_26BCC8C2C();
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_4_2()
{

  return sub_26BCC4CF4(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_1()
{

  return sub_26BCC4BEC(v0 + v4, v3, v1, v2);
}

uint64_t SupportFlowError.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x206E776F6E6B6E55;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001FLL;
  }

  result = sub_26BCC92BC();
  __break(1u);
  return result;
}

unint64_t SupportFlowError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26BCC4FB0()
{
  result = qword_280446CF8;
  if (!qword_280446CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446CF8);
  }

  return result;
}

uint64_t sub_26BCC5018()
{
  sub_26BCC92FC();
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t sub_26BCC5070(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC5478();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_26BCC50C4()
{
  sub_26BCC92FC();
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

unint64_t sub_26BCC5118@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SupportFlowError.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26BCC5160(uint64_t a1)
{
  v2 = sub_26BCC5478();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_26BCC519C(uint64_t a1)
{
  v2 = sub_26BCC5478();

  return MEMORY[0x28211C018](a1, v2);
}

unint64_t sub_26BCC5294()
{
  result = qword_280446D00;
  if (!qword_280446D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D00);
  }

  return result;
}

unint64_t sub_26BCC52EC()
{
  result = qword_280446D08;
  if (!qword_280446D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D08);
  }

  return result;
}

unint64_t sub_26BCC5344()
{
  result = qword_280446D10;
  if (!qword_280446D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D10);
  }

  return result;
}

unint64_t sub_26BCC539C()
{
  result = qword_280446D18;
  if (!qword_280446D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D18);
  }

  return result;
}

uint64_t sub_26BCC5414(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCC5478();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t sub_26BCC5478()
{
  result = qword_280446D20;
  if (!qword_280446D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446D20);
  }

  return result;
}

uint64_t NSUserActivity.isSupportFlowServiceActivity.getter()
{
  v1 = [v0 activityType];
  v2 = sub_26BCC8F6C();
  v4 = v3;

  if (v2 == 0xD00000000000001ELL && 0x800000026BCCBC80 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_26BCC92AC();
  }

  return v6 & 1;
}

_BYTE *_s11UserInfoKeyOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCC5670);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_26BCC56A8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar] = 1;
  v2 = OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier;
  v3 = sub_26BCC8C5C();
  __swift_storeEnumTagSinglePayload(&v0[v2], 1, 1, v3);
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_26BCC60BC(v4);
  v6 = &v0[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier];
  *v6 = v5;
  v6[1] = v7;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_26BCC5780(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar;
  v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar] = 1;
  sub_26BCB86B0(a1, &v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier]);
  v4[v10] = a2;
  v11 = &v4[OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier];
  *v11 = a3;
  v11[1] = a4;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_26BCB6E54(a1);
  return v12;
}

id sub_26BCC5834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446768, &qword_26BCC9CE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = sub_26BCC8C5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BCC5DB4();
  v11 = sub_26BCC5BB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D58, &qword_26BCCAC68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BCCA070;
  strcpy(v25, "showsSearchBar");
  v25[15] = -18;
  v13 = MEMORY[0x277D837D0];
  sub_26BCC91AC();
  v14 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_showsSearchBar);
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = v14;
  v15 = sub_26BCC8F2C();
  sub_26BCB86B0(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_flowIdentifier, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26BCB6E54(v5);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    strcpy(&v23, "flowIdentifier");
    HIBYTE(v23) = -18;
    sub_26BCC91AC();
    v16 = sub_26BCC8C4C();
    v24 = v13;
    *&v23 = v16;
    *(&v23 + 1) = v17;
    sub_26BCBD940(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    v15 = v21;
    sub_26BCC612C(v25);
    (*(v7 + 8))(v10, v6);
  }

  v18 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier + 8);
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR____TtC13SupportFlowUI31SupportFlowServiceSpecification_bundleIdentifier);
    *&v23 = 0xD000000000000010;
    *(&v23 + 1) = 0x800000026BCCBC60;

    sub_26BCC91AC();
    v24 = v13;
    *&v23 = v19;
    *(&v23 + 1) = v18;
    sub_26BCBD940(&v23, v22);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_0_6();
    v15 = v21;
    sub_26BCC612C(v25);
  }

  sub_26BCBD18C(v15, v11);
  return v11;
}

id sub_26BCC5BB4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26BCC8F5C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

uint64_t type metadata accessor for SupportFlowServiceSpecification()
{
  result = qword_280446D40;
  if (!qword_280446D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BCC5D10()
{
  sub_26BCB8630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_26BCC5DB4()
{
  result = qword_280446D50;
  if (!qword_280446D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280446D50);
  }

  return result;
}

unint64_t sub_26BCC5DF8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26BCC918C();

  return sub_26BCC5E3C(a1, v5);
}

unint64_t sub_26BCC5E3C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_26BCBD81C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D694B00](v8, a1);
    sub_26BCC612C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_26BCC5F00(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_26BCC5DF8(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D60, &unk_26BCCAC70);
  if ((sub_26BCC91FC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_26BCC5DF8(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_26BCC92CC();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = (v14[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v15);

    return sub_26BCBD940(a1, v15);
  }

  else
  {
    sub_26BCBD81C(a2, v17);
    return sub_26BCC6040(v9, v17, a1, v14);
  }
}

_OWORD *sub_26BCC6040(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_26BCBD940(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_26BCC60BC(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26BCC8F6C();

  return v3;
}

_OWORD *OUTLINED_FUNCTION_0_6()
{
  *(v1 - 304) = v0;

  return sub_26BCC5F00((v1 - 296), v1 - 232);
}

uint64_t static ClientFlowPresentationState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  switch(v2)
  {
    case 1:
      if (v4 != 2 || v3 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v4 != 2 || v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v4 != 2 || v3 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t sub_26BCC6288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCBF500();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BCC62B4(uint64_t a1)
{
  v2 = sub_26BCC71BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC62F0(uint64_t a1)
{
  v2 = sub_26BCC71BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC632C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_26BCC92AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000;
    if (v6 || (sub_26BCC92AC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646564616F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_26BCC92AC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
        if (v8 || (sub_26BCC92AC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
          if (v9 || (sub_26BCC92AC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
          {

            return 5;
          }

          else
          {
            v11 = sub_26BCC92AC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26BCC655C(unsigned __int8 a1)
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](a1);
  return sub_26BCC931C();
}

uint64_t sub_26BCC65A4(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E6964616F6CLL;
      break;
    case 2:
      result = 0x646564616F6CLL;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0x656C6C65636E6163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26BCC66B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26BCC92AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26BCC6728()
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](0);
  return sub_26BCC931C();
}

uint64_t sub_26BCC6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BCC632C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BCC67D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCC651C();
  *a1 = result;
  return result;
}

uint64_t sub_26BCC6800(uint64_t a1)
{
  v2 = sub_26BCC7168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC683C(uint64_t a1)
{
  v2 = sub_26BCC7168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC68A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BCC66B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26BCC68CC(uint64_t a1)
{
  v2 = sub_26BCC7210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6908(uint64_t a1)
{
  v2 = sub_26BCC7210();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BCC6698();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BCC6970(uint64_t a1)
{
  v2 = sub_26BCC730C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC69AC(uint64_t a1)
{
  v2 = sub_26BCC730C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC69E8(uint64_t a1)
{
  v2 = sub_26BCC7360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6A24(uint64_t a1)
{
  v2 = sub_26BCC7360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6A60()
{
  sub_26BCC92FC();
  MEMORY[0x26D694C70](0);
  return sub_26BCC931C();
}

uint64_t sub_26BCC6AA0(uint64_t a1)
{
  v2 = sub_26BCC72B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6ADC(uint64_t a1)
{
  v2 = sub_26BCC72B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26BCC6B18(uint64_t a1)
{
  v2 = sub_26BCC73B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BCC6B54(uint64_t a1)
{
  v2 = sub_26BCC73B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClientFlowPresentationState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D68, &qword_26BCCAC80);
  v5 = OUTLINED_FUNCTION_2(v4);
  v72 = v6;
  v73 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_3();
  v71 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D70, &qword_26BCCAC88);
  v12 = OUTLINED_FUNCTION_2(v11);
  v77 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_3();
  v76 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D78, &qword_26BCCAC90);
  v19 = OUTLINED_FUNCTION_2(v18);
  v74 = v20;
  v75 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D80, &qword_26BCCAC98);
  v27 = OUTLINED_FUNCTION_2(v26);
  v69 = v28;
  v70 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_5_3();
  v68 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D88, &qword_26BCCACA0);
  v34 = OUTLINED_FUNCTION_2(v33);
  v66 = v35;
  v67 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_3();
  v65 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D90, &qword_26BCCACA8);
  OUTLINED_FUNCTION_2(v40);
  v64 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  v46 = &v64 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446D98, &qword_26BCCACB0);
  v48 = OUTLINED_FUNCTION_2(v47);
  v79 = v49;
  v80 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v64 - v53;
  v55 = *v2;
  v56 = *(v2 + 8);
  v57 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v57);
  sub_26BCC7168();
  sub_26BCC933C();
  if (!v56)
  {
    v85 = 3;
    sub_26BCC72B8();
    OUTLINED_FUNCTION_6_3(&type metadata for ClientFlowPresentationState.SuccessCodingKeys, &v85);
    v58 = v75;
    sub_26BCC928C();
    v59 = v74;
    goto LABEL_5;
  }

  if (v56 == 1)
  {
    v86 = 4;
    sub_26BCC7210();
    v25 = v76;
    OUTLINED_FUNCTION_6_3(&type metadata for ClientFlowPresentationState.FailureCodingKeys, &v86);
    v81 = v55;
    sub_26BCC7264();
    v58 = v78;
    sub_26BCC929C();
    v59 = v77;
LABEL_5:
    (*(v59 + 8))(v25, v58);
    return (*(v79 + 8))(v54, v40);
  }

  switch(v55)
  {
    case 1:
      v83 = 1;
      sub_26BCC7360();
      v61 = v65;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.LoadingCodingKeys, &v83);
      v63 = v66;
      v62 = v67;
      goto LABEL_11;
    case 2:
      v84 = 2;
      sub_26BCC730C();
      v61 = v68;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.LoadedCodingKeys, &v84);
      v63 = v69;
      v62 = v70;
      goto LABEL_11;
    case 3:
      v87 = 5;
      sub_26BCC71BC();
      v61 = v71;
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.CancelledCodingKeys, &v87);
      v63 = v72;
      v62 = v73;
LABEL_11:
      (*(v63 + 8))(v61, v62);
      break;
    default:
      v82 = 0;
      sub_26BCC73B4();
      OUTLINED_FUNCTION_4_3(&type metadata for ClientFlowPresentationState.UnknownCodingKeys, &v82);
      (*(v64 + 8))(v46, v40);
      break;
  }

  return (*(v79 + 8))(v54, v57);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26BCC7168()
{
  result = qword_280446DA0;
  if (!qword_280446DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DA0);
  }

  return result;
}

unint64_t sub_26BCC71BC()
{
  result = qword_280446DA8;
  if (!qword_280446DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DA8);
  }

  return result;
}

unint64_t sub_26BCC7210()
{
  result = qword_280446DB0;
  if (!qword_280446DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DB0);
  }

  return result;
}

unint64_t sub_26BCC7264()
{
  result = qword_280446DB8;
  if (!qword_280446DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DB8);
  }

  return result;
}

unint64_t sub_26BCC72B8()
{
  result = qword_280446DC0;
  if (!qword_280446DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DC0);
  }

  return result;
}

unint64_t sub_26BCC730C()
{
  result = qword_280446DC8;
  if (!qword_280446DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DC8);
  }

  return result;
}

unint64_t sub_26BCC7360()
{
  result = qword_280446DD0;
  if (!qword_280446DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DD0);
  }

  return result;
}

unint64_t sub_26BCC73B4()
{
  result = qword_280446DD8;
  if (!qword_280446DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446DD8);
  }

  return result;
}

uint64_t ClientFlowPresentationState.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x26D694C70](4);
      sub_26BCC52EC();
      return sub_26BCC8F3C();
    }

    v4 = *v0;
    switch(v1)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 5;
        break;
      default:
        v3 = 0;
        break;
    }
  }

  else
  {
    MEMORY[0x26D694C70](3);
    v3 = v1;
  }

  return MEMORY[0x26D694C70](v3);
}

uint64_t ClientFlowPresentationState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26BCC92FC();
  if (!v2)
  {
    MEMORY[0x26D694C70](3);
    v3 = v1;
LABEL_5:
    MEMORY[0x26D694C70](v3);
    return sub_26BCC931C();
  }

  if (v2 != 1)
  {
    switch(v1)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 5;
        break;
      default:
        v3 = 0;
        break;
    }

    goto LABEL_5;
  }

  MEMORY[0x26D694C70](4);
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t ClientFlowPresentationState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DE0, &qword_26BCCACB8);
  v112 = OUTLINED_FUNCTION_2(v3);
  v113 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_3();
  v117 = v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DE8, &qword_26BCCACC0);
  OUTLINED_FUNCTION_2(v111);
  v115 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  v121 = v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DF0, &qword_26BCCACC8);
  OUTLINED_FUNCTION_2(v120);
  v114 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_3();
  v119 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446DF8, &qword_26BCCACD0);
  v20 = OUTLINED_FUNCTION_2(v19);
  v109 = v21;
  v110 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_3();
  v116 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E00, &qword_26BCCACD8);
  v27 = OUTLINED_FUNCTION_2(v26);
  v107 = v28;
  v108 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E08, &qword_26BCCACE0);
  OUTLINED_FUNCTION_2(v34);
  v106 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E10, &qword_26BCCACE8);
  OUTLINED_FUNCTION_2(v41);
  v43 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v100 - v47;
  v49 = a1[3];
  v50 = a1[4];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_26BCC7168();
  v51 = v123;
  sub_26BCC932C();
  if (v51)
  {
    goto LABEL_9;
  }

  v103 = v40;
  v102 = v34;
  v104 = v33;
  v105 = v43;
  v123 = v48;
  v52 = sub_26BCC926C();
  v56 = sub_26BCC7FDC(v52, 0);
  v57 = v41;
  if (v54 == v55 >> 1)
  {
LABEL_8:
    v71 = sub_26BCC91DC();
    swift_allocError();
    v73 = v72;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280446E18, &qword_26BCCACF0) + 48);
    *v73 = &type metadata for ClientFlowPresentationState;
    v75 = v123;
    sub_26BCC923C();
    sub_26BCC91CC();
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D84160], v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v105 + 8))(v75, v57);
LABEL_9:
    v76 = v122;
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v101 = 0;
  if (v54 >= (v55 >> 1))
  {
    __break(1u);
    JUMPOUT(0x26BCC7E84);
  }

  v58 = *(v53 + v54);
  sub_26BCC8024(v54 + 1, v55 >> 1, v56, v53, v54, v55);
  v60 = v59;
  v62 = v61;
  swift_unknownObjectRelease();
  if (v60 != v62 >> 1)
  {
    v57 = v41;
    goto LABEL_8;
  }

  v63 = v118;
  v64 = v101;
  v65 = v123;
  switch(v58)
  {
    case 1:
      v126 = 1;
      sub_26BCC7360();
      OUTLINED_FUNCTION_2_3();
      swift_unknownObjectRelease();
      v83 = OUTLINED_FUNCTION_8_2();
      v84(v83);
      v85 = OUTLINED_FUNCTION_1_5();
      v86(v85);
      v95 = 2;
      v70 = 1;
      goto LABEL_19;
    case 2:
      v127 = 2;
      sub_26BCC730C();
      OUTLINED_FUNCTION_2_3();
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_8_2();
      v80(v79);
      v81 = OUTLINED_FUNCTION_1_5();
      v82(v81);
      v70 = 2;
      goto LABEL_14;
    case 3:
      v128 = 3;
      sub_26BCC72B8();
      OUTLINED_FUNCTION_2_3();
      v70 = sub_26BCC924C();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_9_1();
      v97(v96);
      v98 = OUTLINED_FUNCTION_1_5();
      v99(v98);
      v95 = 0;
      goto LABEL_19;
    case 4:
      v129 = 4;
      sub_26BCC7210();
      sub_26BCC922C();
      if (v64)
      {
        v87 = OUTLINED_FUNCTION_1_5();
        v88(v87);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      sub_26BCC80A0();
      sub_26BCC925C();
      v78 = v105;
      swift_unknownObjectRelease();
      v93 = OUTLINED_FUNCTION_7_3();
      v94(v93);
      (*(v78 + 8))(v65, v41);
      v70 = v124;
      v95 = 1;
LABEL_19:
      v76 = v122;
      *v63 = v70;
      *(v63 + 8) = v95;
      break;
    case 5:
      v130 = 5;
      sub_26BCC71BC();
      OUTLINED_FUNCTION_2_3();
      swift_unknownObjectRelease();
      v89 = OUTLINED_FUNCTION_8_2();
      v90(v89);
      v91 = OUTLINED_FUNCTION_1_5();
      v92(v91);
      v95 = 2;
      v70 = 3;
      goto LABEL_19;
    default:
      v125 = 0;
      sub_26BCC73B4();
      OUTLINED_FUNCTION_2_3();
      swift_unknownObjectRelease();
      v66 = OUTLINED_FUNCTION_8_2();
      v67(v66, v102);
      v68 = OUTLINED_FUNCTION_1_5();
      v69(v68);
      v70 = 0;
LABEL_14:
      v95 = 2;
      goto LABEL_19;
  }

  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t sub_26BCC7ED4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26BCC92FC();
  if (!v2)
  {
    MEMORY[0x26D694C70](3);
    v3 = v1;
LABEL_5:
    MEMORY[0x26D694C70](v3);
    return sub_26BCC931C();
  }

  if (v2 != 1)
  {
    switch(v1)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 5;
        break;
      default:
        v3 = 0;
        break;
    }

    goto LABEL_5;
  }

  MEMORY[0x26D694C70](4);
  sub_26BCC52EC();
  sub_26BCC8F3C();
  return sub_26BCC931C();
}

uint64_t sub_26BCC7FDC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BCC8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_26BCC80A0()
{
  result = qword_280446E20;
  if (!qword_280446E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E20);
  }

  return result;
}

unint64_t sub_26BCC80F8()
{
  result = qword_280446E28;
  if (!qword_280446E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E28);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientFlowPresentationState(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientFlowPresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BCC81E4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26BCC81FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientFlowPresentationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientFlowPresentationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x26BCC8378);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26BCC83F8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x26BCC8494);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26BCC84F0()
{
  result = qword_280446E30;
  if (!qword_280446E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E30);
  }

  return result;
}

unint64_t sub_26BCC8548()
{
  result = qword_280446E38;
  if (!qword_280446E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E38);
  }

  return result;
}

unint64_t sub_26BCC85A0()
{
  result = qword_280446E40;
  if (!qword_280446E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E40);
  }

  return result;
}

unint64_t sub_26BCC85F8()
{
  result = qword_280446E48;
  if (!qword_280446E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E48);
  }

  return result;
}

unint64_t sub_26BCC8650()
{
  result = qword_280446E50;
  if (!qword_280446E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E50);
  }

  return result;
}

unint64_t sub_26BCC86A8()
{
  result = qword_280446E58;
  if (!qword_280446E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E58);
  }

  return result;
}

unint64_t sub_26BCC8700()
{
  result = qword_280446E60;
  if (!qword_280446E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E60);
  }

  return result;
}

unint64_t sub_26BCC8758()
{
  result = qword_280446E68;
  if (!qword_280446E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E68);
  }

  return result;
}

unint64_t sub_26BCC87B0()
{
  result = qword_280446E70;
  if (!qword_280446E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E70);
  }

  return result;
}

unint64_t sub_26BCC8808()
{
  result = qword_280446E78;
  if (!qword_280446E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E78);
  }

  return result;
}

unint64_t sub_26BCC8860()
{
  result = qword_280446E80;
  if (!qword_280446E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E80);
  }

  return result;
}

unint64_t sub_26BCC88B8()
{
  result = qword_280446E88;
  if (!qword_280446E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E88);
  }

  return result;
}

unint64_t sub_26BCC8910()
{
  result = qword_280446E90;
  if (!qword_280446E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E90);
  }

  return result;
}

unint64_t sub_26BCC8968()
{
  result = qword_280446E98;
  if (!qword_280446E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446E98);
  }

  return result;
}

unint64_t sub_26BCC89C0()
{
  result = qword_280446EA0;
  if (!qword_280446EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EA0);
  }

  return result;
}

unint64_t sub_26BCC8A18()
{
  result = qword_280446EA8;
  if (!qword_280446EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EA8);
  }

  return result;
}

unint64_t sub_26BCC8A70()
{
  result = qword_280446EB0;
  if (!qword_280446EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280446EB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_26BCC922C();
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 112);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 112);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}