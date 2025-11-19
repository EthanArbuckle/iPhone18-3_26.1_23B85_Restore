uint64_t sub_2747861A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 8);
  v9 = *v4;
  v10 = v6;
  sub_2749FDDF4();
  a4(v8);
  return sub_2749FDE44();
}

void LibraryEditingAction.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  switch(v0[3])
  {
    case 0:
      v1 = 0;
      goto LABEL_14;
    case 1:
      v1 = 1;
      goto LABEL_14;
    case 2:
      v1 = 2;
      goto LABEL_14;
    case 3:
      v1 = 3;
      goto LABEL_14;
    case 4:
      v1 = 4;
      goto LABEL_14;
    case 5:
      v1 = 5;
      goto LABEL_14;
    case 6:
      v1 = 7;
      goto LABEL_14;
    case 7:
      v1 = 8;
      goto LABEL_14;
    case 8:
      v1 = 9;
      goto LABEL_14;
    case 9:
      v1 = 10;
      goto LABEL_14;
    case 0xALL:
      v1 = 11;
      goto LABEL_14;
    case 0xBLL:
      v1 = 12;
LABEL_14:
      MEMORY[0x277C5FB60](v1);
      goto LABEL_15;
    default:
      v2 = v0[1];
      v3 = v0[5];
      MEMORY[0x277C5FB60](6);
      sub_2749FDE14();
      if (v2)
      {
        sub_2749FCE24();
      }

      sub_2749FCE24();
      if (v3)
      {
        sub_2749FDE14();
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_50_0();

        sub_2749FCE24();
      }

      else
      {
        sub_2749FDE14();
LABEL_15:
        OUTLINED_FUNCTION_50_0();
      }

      return;
  }
}

uint64_t LibraryEditingAction.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  LibraryEditingAction.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_2747863B8()
{
  sub_2749FDDF4();
  LibraryEditingAction.hash(into:)();
  return sub_2749FDE44();
}

void LibrarySectionOptions.SectionType.count.getter()
{
  OUTLINED_FUNCTION_48();
  v3 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_4();
  v7 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_3_12();
  sub_274729CBC(v0, v14);
  OUTLINED_FUNCTION_99();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = *v14;
    [*v14 count];

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_11:
    OUTLINED_FUNCTION_46();
    return;
  }

  (*(v9 + 32))(v2, v14, v7);
  v16 = *(sub_2749F9504() + 16);
  if (!v16)
  {

LABEL_10:
    (*(v9 + 8))(v2, v7);
    goto LABEL_11;
  }

  v28 = v2;
  v29 = v7;
  v17 = 0;
  v18 = *(v5 + 16);
  OUTLINED_FUNCTION_71();
  v21 = v19 + v20;
  v22 = *(v5 + 72);
  while (1)
  {
    v18(v1, v21, v3);
    v23 = *(sub_2749F97B4() + 16);

    v24 = OUTLINED_FUNCTION_119();
    v25(v24);
    v26 = __OFADD__(v17, v23);
    v17 += v23;
    if (v26)
    {
      break;
    }

    v21 += v22;
    if (!--v16)
    {

      v7 = v29;
      v2 = v28;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t LibrarySectionOptions.SectionType.shortcuts.getter()
{
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_3_12();
  v4 = OUTLINED_FUNCTION_32_1();
  sub_274729CBC(v4, v5);
  v6 = OUTLINED_FUNCTION_135_0();
  if (!v6)
  {
    return *v3;
  }

  v7 = v6;
  result = 0;
  if (v7 == 1)
  {
    sub_2749F9514();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v3);
    return 0;
  }

  return result;
}

void static LibrarySectionOptions.SectionType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibrarySectionOptions.SectionType(v7);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82_1();
  MEMORY[0x28223BE20](v9);
  v11 = (&v29 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680C8);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_56_2();
  v15 = (v0 + v14);
  sub_274729CBC(v3, v0);
  v16 = OUTLINED_FUNCTION_99();
  sub_274729CBC(v16, v17);
  OUTLINED_FUNCTION_95_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_12();
      v19 = OUTLINED_FUNCTION_24_0();
      sub_274729CBC(v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0);
      OUTLINED_FUNCTION_43_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v30;
        (*(v30 + 32))(v1, v15, v4);
        OUTLINED_FUNCTION_66();
        sub_2749F94E4();
        v22 = *(v21 + 8);
        v23 = OUTLINED_FUNCTION_93();
        v22(v23);
        v24 = OUTLINED_FUNCTION_70_1();
        v22(v24);
LABEL_12:
        OUTLINED_FUNCTION_13_5();
        goto LABEL_13;
      }

      v26 = OUTLINED_FUNCTION_70_1();
      v27(v26);
    }

    else
    {
      OUTLINED_FUNCTION_43_0();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_12();
    OUTLINED_FUNCTION_136_0();
    v25 = *v11;
    OUTLINED_FUNCTION_43_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v15;
      sub_27471CF08(0, &qword_28159E390);
      OUTLINED_FUNCTION_66_2();
      sub_2749FD604();

      goto LABEL_12;
    }
  }

  sub_27478C584(v0, &qword_2809680C8);
LABEL_13:
  OUTLINED_FUNCTION_46();
}

void LibrarySectionOptions.SectionType.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  v1 = v0;
  OUTLINED_FUNCTION_134();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = (v5 - v4);
  OUTLINED_FUNCTION_3_12();
  sub_274729CBC(v1, v6);
  OUTLINED_FUNCTION_94_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0);
      OUTLINED_FUNCTION_112_0();
      v8 = OUTLINED_FUNCTION_70_1();
      v9(v8);
      OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_7_4();
      sub_27472153C(v10, v11);
      OUTLINED_FUNCTION_88_0();
      sub_2749FCD04();
      sub_2749FDE14();
      v12 = OUTLINED_FUNCTION_66();
      v13(v12);
    }

    else
    {
      MEMORY[0x277C5FB60](0);
    }
  }

  else
  {
    v14 = *v6;
    MEMORY[0x277C5FB60](1);
    sub_2749FD614();
    sub_2749FDE14();
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t LibrarySectionOptions.footer.getter()
{
  v2 = OUTLINED_FUNCTION_69_0();
  result = type metadata accessor for LibrarySectionOptions(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

void *LibrarySectionOptions.collection.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibrarySectionOptions(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t LibrarySectionOptions.emptyStateContent.getter()
{
  type metadata accessor for LibrarySectionOptions(0);
}

uint64_t LibrarySectionOptions.id.getter()
{
  v0 = OUTLINED_FUNCTION_69_0();
  type metadata accessor for LibrarySectionOptions(v0);
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_88_0();

  return v2(v1);
}

BOOL LibrarySectionOptions.Header.hasNameAndIconName.getter()
{
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_32();
  sub_274729CBC(v1, v2);
  OUTLINED_FUNCTION_45();
  v3 = swift_getEnumCaseMultiPayload() == 0;
  sub_27472AFE4();
  return v3;
}

BOOL LibrarySectionOptions.Header.shouldShowInTable.getter()
{
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_32();
  sub_274729CBC(v1, v2);
  OUTLINED_FUNCTION_45();
  v3 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFD) == 0;
  sub_27472AFE4();
  return v3;
}

void LibrarySectionOptions.Header.hash(into:)()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_59_0();
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v2 = OUTLINED_FUNCTION_50_1();
  type metadata accessor for LibrarySectionOptions.Header(v2);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_1_7();
  v4 = OUTLINED_FUNCTION_63();
  sub_274729CBC(v4, v5);
  OUTLINED_FUNCTION_116_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x277C5FB60](3);
      OUTLINED_FUNCTION_32_1();
      sub_2749FCE24();
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_112_0();
      v8 = OUTLINED_FUNCTION_66_2();
      v9(v8);
      MEMORY[0x277C5FB60](4);
      OUTLINED_FUNCTION_7_4();
      sub_27472153C(v10, v11);
      OUTLINED_FUNCTION_89_0();
      sub_2749FCD04();
      v12 = OUTLINED_FUNCTION_45();
      v13(v12);
      break;
    case 3u:
      v7 = 0;
      goto LABEL_10;
    case 4u:
      v7 = 1;
      goto LABEL_10;
    case 5u:
      v7 = 5;
LABEL_10:
      MEMORY[0x277C5FB60](v7);
      break;
    default:
      v6 = *(v0 + 24);
      MEMORY[0x277C5FB60](2);
      OUTLINED_FUNCTION_121();
      sub_2749FCE24();

      if (v6)
      {
        sub_2749FDE14();
        OUTLINED_FUNCTION_32();
        sub_2749FCE24();
LABEL_8:
      }

      else
      {
        sub_2749FDE14();
      }

      break;
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274787104()
{
  v1 = *v0;
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

BOOL LibrarySectionOptions.hasNoShortcuts.getter()
{
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = (v3 - v2);
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_3_12();
  sub_274729CBC(v0 + v5, v4);
  if (OUTLINED_FUNCTION_135_0())
  {
    OUTLINED_FUNCTION_13_5();
    return 0;
  }

  else
  {
    v7 = *v4;
    v8 = [v7 descriptors];
    sub_27471CF08(0, &qword_28159E4A8);
    OUTLINED_FUNCTION_3();
    v9 = sub_2749FCF84();

    v10 = sub_2747276D0(v9);

    return v10 == 0;
  }
}

uint64_t static LibrarySectionOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  static LibrarySectionOptions.Header.== infix(_:_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for LibrarySectionOptions(0);
  if (*(a1 + *(v5 + 20)) != *(a2 + *(v5 + 20)))
  {
    return 0;
  }

  v7 = v5;
  v8 = *(v5 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_27471CF08(0, &qword_28159E490);
    v11 = v10;
    v12 = v9;
    v13 = sub_2749FD604();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  static LibrarySectionOptions.SectionType.== infix(_:_:)();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(v7 + 32);
  v23 = *(a1 + v15);
  v24 = *(a1 + v15 + 8);
  v16 = a2 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  sub_27472EEFC(v23, v24);
  sub_27472EEFC(v17, v18);
  v19 = static LibraryWorkflowCreationBehavior.== infix(_:_:)();
  sub_27472F124(v17, v18);
  sub_27472F124(v23, v24);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = *(v7 + 36);
  v21 = *(a2 + v20);
  if (!*(a1 + v20))
  {
    if (!v21)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v21)
  {
    return 0;
  }

  type metadata accessor for ShortcutsEmptyStateContent(0);

  OUTLINED_FUNCTION_121();
  v22 = static ShortcutsEmptyStateContent.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_16:

  return sub_2749F9134();
}

uint64_t LibrarySectionOptions.hash(into:)(void *a1)
{
  LibrarySectionOptions.Header.hash(into:)();
  v3 = type metadata accessor for LibrarySectionOptions(0);
  MEMORY[0x277C5FB60](*(v1 + v3[5]));
  v4 = *(v1 + v3[6]);
  if (v4)
  {
    OUTLINED_FUNCTION_101_0();
    v5 = v4;
    OUTLINED_FUNCTION_78();
    sub_2749FD614();
  }

  else
  {
    OUTLINED_FUNCTION_100_0();
  }

  LibrarySectionOptions.SectionType.hash(into:)();
  v6 = (v1 + v3[8]);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      OUTLINED_FUNCTION_132_1();
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_53_1();
    }

    else
    {
      MEMORY[0x277C5FB60](v7 != 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_0();
    sub_2749FD614();
  }

  if (*(v1 + v3[9]))
  {
    OUTLINED_FUNCTION_101_0();
    sub_2747599C8();
  }

  else
  {
    OUTLINED_FUNCTION_100_0();
  }

  sub_2749F9164();
  OUTLINED_FUNCTION_37_1();
  sub_27472153C(v9, v10);
  OUTLINED_FUNCTION_24_0();
  return sub_2749FCD04();
}

uint64_t sub_274787588(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_99_0();
  a1(v3);
  return sub_2749FDE44();
}

uint64_t sub_2747875E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2749FDDF4();
  a4(v6);
  return sub_2749FDE44();
}

uint64_t LibraryGroup.tipShouldDisplay.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 40))();
  if (result)
  {
    OUTLINED_FUNCTION_34_1();
    ObjectType = swift_getObjectType();
    v5 = (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v5 & 1;
  }

  return result;
}

uint64_t LibraryGroup.maybeTipSectionHeader.getter(uint64_t a1, uint64_t a2)
{
  LibraryGroup.tipShouldDisplay.getter(a1, a2);
  OUTLINED_FUNCTION_61();

  return swift_storeEnumTagMultiPayload();
}

uint64_t LibraryGroup.maybeSyncUnavailableSectionHeader.getter()
{
  OUTLINED_FUNCTION_61();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_274787720(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_27478775C()
{

  sub_2747545BC(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2747877D8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2747878A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_274787904(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_274787984;
}

void sub_274787984()
{
  OUTLINED_FUNCTION_105_1();
  *(v0[5] + 40) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_2747879FC()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate;
  OUTLINED_FUNCTION_77();
  return *(v0 + v1);
}

void (*sub_274787A38(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate;
  OUTLINED_FUNCTION_77();
  *(v3 + 32) = *(v1 + v4);
  return sub_274787AB0;
}

void sub_274787AB0(uint64_t a1)
{
  v1 = *a1;
  sub_27473FEC4(*(*a1 + 32));

  free(v1);
}

uint64_t sub_274787AF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_27472F7C0(v2, v1);
}

uint64_t (*sub_274787B38(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_274787BC0;
}

id AllShortcutsGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_274787D8C(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_274787AB0;
}

uint64_t (*sub_274787E10(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27478C64C;
}

uint64_t sub_274787E9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B70);
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_49();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_274A0EF10;
  v5 = v4 + v3;
  sub_27473054C(&OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_delegate);
  v6 = v5 + v0[9];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0) + 48);
  v8 = OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_app;
  OUTLINED_FUNCTION_77();
  sub_2749F9514();
  OUTLINED_FUNCTION_9();
  (*(v9 + 16))(v6, v1 + v8);
  *(v6 + v7) = 1;
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + v0[7]) = 0;
  *(v5 + v0[8]) = 0;
  OUTLINED_FUNCTION_24_3(v5 + v0[10]);
  *(v5 + v0[11]) = 0;
  sub_2749F9154();
  return v4;
}

uint64_t sub_27478802C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_shouldUpdate;
  OUTLINED_FUNCTION_77();
  return *(v0 + v1);
}

uint64_t sub_274788068(char a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_shouldUpdate;
  result = OUTLINED_FUNCTION_125_0();
  *(v1 + v3) = a1;
  return result;
}

void sub_2747880C0()
{
  OUTLINED_FUNCTION_48();
  v28 = v1;
  v3 = v2;
  v4 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681F8);
  OUTLINED_FUNCTION_43();
  v26 = v11;
  v27 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  OUTLINED_FUNCTION_98_1(OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_delegate);
  *&v0[OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_cancellables] = MEMORY[0x277D84FA0];
  v16 = *(v6 + 16);
  v25 = v3;
  v16(&v0[OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_app], v3, v4);
  v0[OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_shouldUpdate] = 0;
  v17 = type metadata accessor for AutoShortcutsGroup(0);
  v29.receiver = v0;
  v29.super_class = v17;
  v18 = objc_msgSendSuper2(&v29, sel_init);
  sub_2749F9834();
  OUTLINED_FUNCTION_86();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16(v10, v3, v4);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v6 + 32))(v21 + v20, v10, v4);
  OUTLINED_FUNCTION_39_1();
  sub_27472ABF8(v22, &qword_2809681F8);
  v23 = v26;
  sub_2749FA974();

  (*(v27 + 8))(v15, v23);
  swift_beginAccess();
  sub_2749FA834();
  swift_endAccess();

  (*(v6 + 8))(v25, v4);
  OUTLINED_FUNCTION_46();
}

void sub_2747883B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2749FA4E4();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_2749F9514();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v28 = v5;
    MEMORY[0x28223BE20](Strong);
    *(&v28 - 2) = a3;
    sub_2748D820C(sub_27478C564, v17, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      sub_27478C584(v10, &qword_280968200);
    }

    else
    {
      (*(v12 + 32))(v16, v10, v11);
      sub_27472153C(qword_280968208, MEMORY[0x277D7BE80]);
      if (sub_2749FCD54())
      {
        (*(v12 + 8))(v16, v11);
      }

      else
      {
        sub_2749FA3D4();
        v20 = sub_2749FA4D4();
        v21 = sub_2749FD2A4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_274719000, v20, v21, "Auto shortcut data source changed, reloading", v22, 2u);
          MEMORY[0x277C61040](v22, -1, -1);
        }

        (*(v30 + 8))(v7, v28);
        v23 = v29;
        (*(v12 + 16))(v29, v16, v11);
        v24 = OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_app;
        swift_beginAccess();
        (*(v12 + 40))(&v19[v24], v23, v11);
        swift_endAccess();
        v25 = &v19[OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v25 + 1);
          ObjectType = swift_getObjectType();
          (*(v26 + 8))(1, ObjectType, v26);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v12 + 8))(v16, v11);
      }
    }
  }
}

uint64_t sub_274788830()
{
  v0 = sub_2749F94D4();
  v2 = v1;
  if (v0 == sub_2749F94D4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2749FDCC4();
  }

  return v5 & 1;
}

id sub_274788924(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*sub_274788A54(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI18AutoShortcutsGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27478C64C;
}

void sub_274788AE0()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_43();
  v142 = v2;
  v143 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_39();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v133 = (&v127 - v8);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v9);
  v130 = (&v127 - v10);
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v11);
  v128 = (&v127 - v12);
  OUTLINED_FUNCTION_57_0();
  v140 = sub_2749F9204();
  OUTLINED_FUNCTION_43();
  v148 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v139 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
  OUTLINED_FUNCTION_34(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  v20 = &v127 - v19;
  v21 = sub_2749F90F4();
  OUTLINED_FUNCTION_43();
  v147 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v127 - v25;
  v27 = sub_2749F9214();
  OUTLINED_FUNCTION_43();
  v131 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v30 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  v157[0] = MEMORY[0x277D84F90];
  v154 = MEMORY[0x277D84F90];
  v155 = MEMORY[0x277D84F90];
  v150 = v32 - v31;
  sub_2749F91F4();
  v33 = [*(v0 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shortcutsResult) descriptors];
  v141 = sub_27471CF08(0, &qword_28159E4A8);
  v34 = sub_2749FCF84();

  v35 = sub_2747276D0(v34);
  v129 = v6;
  v132 = v27;
  if (v35)
  {
    if (v35 < 1)
    {
      __break(1u);
LABEL_62:
      OUTLINED_FUNCTION_1_1();
      goto LABEL_29;
    }

    v36 = 0;
    v37 = *(v0 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_dateAccessor);
    v152 = *(v0 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_dateAccessor + 8);
    v153 = v37;
    v151 = v34 & 0xC000000000000001;
    v149 = (v147 + 4);
    v136 = (v148 + 13);
    v135 = (v148 + 1);
    v134 = *MEMORY[0x277CC9940];
    v38 = v147 + 1;
    v147 = MEMORY[0x277D84F90];
    v148 = v38;
    v145 = MEMORY[0x277D84F90];
    v146 = MEMORY[0x277D84F90];
    v144 = MEMORY[0x277D84F90];
    v137 = v34;
    v138 = v1;
    do
    {
      v39 = v35;
      if (v151)
      {
        v40 = OUTLINED_FUNCTION_110_0();
        v41 = MEMORY[0x277C5F6D0](v40);
      }

      else
      {
        v41 = *(v34 + 8 * v36 + 32);
      }

      v42 = v41;
      v0 = v152;
      v153();
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {

        sub_27478C584(v20, &unk_28096D2F0);
      }

      else
      {
        (*v149)(v26, v20, v21);
        sub_2749F90E4();
        if (sub_2749F91C4())
        {
          v43 = v42;
          v0 = v157;
          MEMORY[0x277C5ECC0]();
          OUTLINED_FUNCTION_60_0();
          if (v45)
          {
            OUTLINED_FUNCTION_8(v44);
            OUTLINED_FUNCTION_133_0();
          }

          OUTLINED_FUNCTION_131();

          OUTLINED_FUNCTION_114_0();
          v46 = OUTLINED_FUNCTION_119();
          (v157[0])(v46);
          v47 = OUTLINED_FUNCTION_106_0();
          (v157[0])(v47);
          v147 = v157[0];
        }

        else if (sub_2749F91D4())
        {
          v48 = v42;
          v0 = &v156;
          MEMORY[0x277C5ECC0]();
          OUTLINED_FUNCTION_60_0();
          if (v45)
          {
            OUTLINED_FUNCTION_8(v49);
            OUTLINED_FUNCTION_133_0();
          }

          OUTLINED_FUNCTION_131();

          OUTLINED_FUNCTION_114_0();
          v50 = OUTLINED_FUNCTION_119();
          v156(v50);
          v51 = OUTLINED_FUNCTION_106_0();
          v156(v51);
          v146 = v156;
        }

        else
        {
          v52 = v139;
          v53 = v140;
          (*v136)(v139, v134, v140);
          v54 = sub_2749F91E4();
          (*v135)(v52, v53);
          v55 = v42;
          if (v54)
          {
            v0 = &v155;
            MEMORY[0x277C5ECC0]();
            OUTLINED_FUNCTION_60_0();
            v34 = v137;
            if (v45)
            {
              OUTLINED_FUNCTION_8(v56);
              OUTLINED_FUNCTION_133_0();
            }

            OUTLINED_FUNCTION_131();

            OUTLINED_FUNCTION_114_0();
            v57 = OUTLINED_FUNCTION_119();
            v155(v57);
            v58 = OUTLINED_FUNCTION_106_0();
            v155(v58);
            v145 = v155;
          }

          else
          {
            v0 = &v154;
            MEMORY[0x277C5ECC0]();
            OUTLINED_FUNCTION_60_0();
            v34 = v137;
            if (v45)
            {
              OUTLINED_FUNCTION_8(v59);
              OUTLINED_FUNCTION_133_0();
            }

            OUTLINED_FUNCTION_131();

            OUTLINED_FUNCTION_114_0();
            v60 = OUTLINED_FUNCTION_119();
            v154(v60);
            v61 = OUTLINED_FUNCTION_106_0();
            v154(v61);
            v144 = v154;
          }
        }
      }

      ++v36;
      v35 = v39;
    }

    while (v39 != v36);
  }

  else
  {
    v145 = v30;
    v146 = v30;
    v144 = v30;
    v147 = v30;
  }

  v20 = &unk_28159E000;
  v27 = &selRef_initWithFileResponseCode_error_;
  v6 = 0x277D7C000uLL;
  if (!sub_2747276D0(v147))
  {
    v75 = MEMORY[0x277D84F90];
    v30 = v130;
    goto LABEL_33;
  }

  sub_2749FCE14();
  OUTLINED_FUNCTION_34_1();
  v30 = v130;
  if (qword_28159E3A8 != -1)
  {
    goto LABEL_62;
  }

LABEL_29:
  OUTLINED_FUNCTION_32_1();
  v62 = sub_2749FCD64();
  OUTLINED_FUNCTION_32_1();
  sub_2749FCD64();
  OUTLINED_FUNCTION_78();

  v64 = OUTLINED_FUNCTION_20_0(v63, v27[216]);

  v65 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v67 = v66;

  v68 = v128;
  *v128 = v65;
  v68[1] = v67;
  OUTLINED_FUNCTION_61();
  v68[2] = 0;
  v68[3] = 0;
  swift_storeEnumTagMultiPayload();
  v69 = v142;
  v70 = v68 + v142[7];
  v71 = objc_allocWithZone(*(v6 + 768));
  v72 = sub_2749FCF74();
  v73 = [v71 initWithStaticDescriptors_];

  *v70 = v73;
  v70[8] = 1;
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  swift_storeEnumTagMultiPayload();
  *(v68 + v69[5]) = 0;
  *(v68 + v69[6]) = 0;
  OUTLINED_FUNCTION_24_3(v68 + v69[8]);
  *(v68 + v69[9]) = 0;
  sub_2749F9154();
  sub_2747308B0(0, 1, 1, MEMORY[0x277D84F90]);
  v75 = v74;
  v77 = *(v74 + 16);
  v76 = *(v74 + 24);
  if (v77 >= v76 >> 1)
  {
    OUTLINED_FUNCTION_27_2(v76);
    v75 = v116;
  }

  *(v75 + 16) = v77 + 1;
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_2_9();
  sub_27472A55C(v68, v78);
LABEL_33:
  if (sub_2747276D0(v146))
  {
    v79 = sub_2749FCE14();
    OUTLINED_FUNCTION_52_1();
    if (!v80)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v81 = *(v20 + 137);
    OUTLINED_FUNCTION_45();
    v82 = sub_2749FCD64();
    OUTLINED_FUNCTION_45();
    sub_2749FCD64();
    OUTLINED_FUNCTION_134_0();
    v83 = OUTLINED_FUNCTION_58_0();

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_120_0();

    *v30 = v79;
    *(v30 + 1) = v81;
    OUTLINED_FUNCTION_61();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    swift_storeEnumTagMultiPayload();
    v84 = OUTLINED_FUNCTION_126_0();
    v85 = sub_2749FCF74();
    [v84 initWithStaticDescriptors_];

    OUTLINED_FUNCTION_36_2();
    *(v30 + v82[5]) = 0;
    *(v30 + v82[6]) = 0;
    OUTLINED_FUNCTION_24_3(v30 + v82[8]);
    OUTLINED_FUNCTION_128_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v117 = OUTLINED_FUNCTION_24_2();
      sub_2747308B0(v117, v118, v119, v75);
      v75 = v120;
    }

    OUTLINED_FUNCTION_79_1();
    if (v45)
    {
      OUTLINED_FUNCTION_27_2(v86);
      v75 = v121;
    }

    *(v75 + 16) = v83;
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_2_9();
    sub_27472A55C(v30, v87);
  }

  if (sub_2747276D0(v145))
  {
    v88 = sub_2749FCE14();
    OUTLINED_FUNCTION_52_1();
    if (!v80)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v89 = *(v20 + 137);
    OUTLINED_FUNCTION_45();
    v90 = sub_2749FCD64();
    OUTLINED_FUNCTION_45();
    sub_2749FCD64();
    OUTLINED_FUNCTION_134_0();
    v91 = OUTLINED_FUNCTION_58_0();

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_120_0();

    v92 = v133;
    *v133 = v88;
    v92[1] = v89;
    OUTLINED_FUNCTION_61();
    v92[2] = 0;
    v92[3] = 0;
    swift_storeEnumTagMultiPayload();
    v93 = OUTLINED_FUNCTION_126_0();
    v94 = sub_2749FCF74();
    [v93 initWithStaticDescriptors_];

    OUTLINED_FUNCTION_36_2();
    *(v92 + v90[5]) = 0;
    *(v92 + v90[6]) = 0;
    OUTLINED_FUNCTION_24_3(v92 + v90[8]);
    OUTLINED_FUNCTION_128_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = OUTLINED_FUNCTION_24_2();
      sub_2747308B0(v122, v123, v124, v75);
      v75 = v125;
    }

    OUTLINED_FUNCTION_79_1();
    if (v45)
    {
      OUTLINED_FUNCTION_27_2(v95);
      v75 = v126;
    }

    *(v75 + 16) = v91;
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_2_9();
    sub_27472A55C(v133, v96);
  }

  if (*(v75 + 16))
  {
    v97 = sub_2747276D0(v144);

    if (!v97)
    {
      (*(v131 + 8))(v150, v132);
      goto LABEL_60;
    }
  }

  else
  {
  }

  v98 = sub_2749FCE14();
  OUTLINED_FUNCTION_52_1();
  if (!v80)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v99 = *(v20 + 137);
  OUTLINED_FUNCTION_45();
  v100 = sub_2749FCD64();
  OUTLINED_FUNCTION_45();
  sub_2749FCD64();
  OUTLINED_FUNCTION_134_0();
  v101 = OUTLINED_FUNCTION_58_0();

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_120_0();

  v102 = v129;
  *v129 = v98;
  v102[1] = v99;
  OUTLINED_FUNCTION_61();
  v102[2] = 0;
  v102[3] = 0;
  swift_storeEnumTagMultiPayload();
  v103 = v142;
  v104 = v102 + v142[7];
  v105 = objc_allocWithZone(*(v6 + 768));
  v106 = sub_2749FCF74();
  [v105 initWithStaticDescriptors_];

  OUTLINED_FUNCTION_36_2();
  *(v102 + v103[5]) = 0;
  *(v102 + v103[6]) = 0;
  OUTLINED_FUNCTION_24_3(v102 + v103[8]);
  *(v102 + v103[9]) = 0;
  sub_2749F9154();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v111 = OUTLINED_FUNCTION_24_2();
    sub_2747308B0(v111, v112, v113, v75);
    v75 = v114;
  }

  v107 = v132;
  v108 = v150;
  OUTLINED_FUNCTION_79_1();
  if (v45)
  {
    OUTLINED_FUNCTION_27_2(v109);
    v75 = v115;
  }

  (*(v131 + 8))(v108, v107);
  *(v75 + 16) = v104;
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_2_9();
  sub_27472A55C(v102, v110);
LABEL_60:

  OUTLINED_FUNCTION_46();
}

id sub_2747897CC(id result)
{
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate) != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate))
    {
      v2 = &selRef_registerObserver_;
    }

    else
    {
      v2 = &selRef_unregisterObserver_;
    }

    return [*(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shortcutsResult) *v2];
  }

  return result;
}

id sub_274789828(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate) = a1;
  return sub_2747897CC(v2);
}

id sub_274789894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate] = 0;
  OUTLINED_FUNCTION_98_1(OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_delegate);
  *&v5[OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shortcutsResult] = a1;
  v11 = &v5[OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_dateAccessor];
  *v11 = a2;
  v11[1] = a3;
  v12 = &v5[OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_emptyMessage];
  *v12 = a4;
  v12[1] = a5;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for DateBucketedGroup();
  return objc_msgSendSuper2(&v14, sel_init);
}

void sub_274789960()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_4();
  v19 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_27471CF08(0, &qword_28159E4E0);
  v13 = sub_2749FD404();
  OUTLINED_FUNCTION_86();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v20[4] = v5;
  v20[5] = v14;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_274760264;
  v20[3] = v3;
  v15 = _Block_copy(v20);
  v16 = v0;

  sub_2749FCA94();
  v20[0] = MEMORY[0x277D84F90];
  sub_27472153C(&qword_28159E580, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27472ABF8(&qword_28159E530, &unk_28096DB60);
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v12, v1, v15);
  _Block_release(v15);

  v17 = OUTLINED_FUNCTION_119();
  v18(v17);
  (*(v8 + 8))(v12, v19);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274789BFC(uint64_t a1, void *a2)
{
  v2 = a1 + *a2;
  OUTLINED_FUNCTION_72_1();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id (*sub_274789DA4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_shouldUpdate);
  return sub_274789DD8;
}

uint64_t (*sub_274789E08(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI17DateBucketedGroup_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27478C64C;
}

void sub_274789E94()
{
  OUTLINED_FUNCTION_105_1();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t sub_274789F40(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2749FD844();
LABEL_9:
  result = sub_2749FD984();
  *v1 = result;
  return result;
}

uint64_t sub_274789FE0()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_53_1();
}

void sub_27478A020(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_27478A044(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_27478A068()
{
  OUTLINED_FUNCTION_127_0();
  if (v0)
  {
    v2 = (v1 + 48);
    while (2)
    {
      v3 = *(v2 - 2);
      v4 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      switch(v5)
      {
        case 1:
          MEMORY[0x277C5FB60](1);

          OUTLINED_FUNCTION_32();
          sub_2749FCE24();
          v7 = OUTLINED_FUNCTION_66_2();
          v9 = 1;
          goto LABEL_9;
        case 2:
          MEMORY[0x277C5FB60](3);

          OUTLINED_FUNCTION_32();
          sub_2749FCE24();
          v7 = OUTLINED_FUNCTION_66_2();
          v9 = 2;
LABEL_9:
          sub_27478C4DC(v7, v8, v9);
          goto LABEL_12;
        case 3:
          if (v3 | v4)
          {
            v6 = 4;
          }

          else
          {
            v6 = 2;
          }

          goto LABEL_11;
        default:
          MEMORY[0x277C5FB60](0);
          v6 = 0;
LABEL_11:
          MEMORY[0x277C5FB60](v6);
LABEL_12:
          if (!--v0)
          {
            return;
          }

          continue;
      }
    }
  }
}

uint64_t sub_27478A14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277C5FB60](v3);
  if (v3)
  {
    v5 = a2 + 112;
    do
    {
      v11 = v3;
      v6 = *(v5 - 48);
      v7 = *(v5 - 40);
      v8 = *(v5 - 16);

      v9 = OUTLINED_FUNCTION_94_0();
      sub_274772C44(v9, v10);

      sub_2749FCE24();
      sub_2749FCE24();
      if (v7)
      {
        OUTLINED_FUNCTION_28_3();
        MEMORY[0x277C5FB60]([v8 hash]);
      }

      else
      {
        OUTLINED_FUNCTION_23_3();
      }

      v5 += 88;
      sub_2749FCE24();

      sub_274772C94(v6, v7);

      --v3;
    }

    while (v11 != 1);
  }

  return result;
}

void sub_27478A29C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_59_0();
  v3 = type metadata accessor for SmartShortcutPickerEntry();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  v4 = *(v2 + 16);
  MEMORY[0x277C5FB60](v4);
  if (v4)
  {
    v5 = 0;
    OUTLINED_FUNCTION_71();
    v36 = v4;
    v37 = v0;
    while (1)
    {
      OUTLINED_FUNCTION_38_1();
      sub_274729CBC(v6, v0);
      memcpy(v45, v0, 0xB9uLL);
      memcpy(v46, v0, 0xB9uLL);
      switch(sub_274772AD0(v46))
      {
        case 1u:
          sub_274721C98(v46);
          MEMORY[0x277C5FB60](1);
          MEMORY[0x277C5FB60](0);
          goto LABEL_10;
        case 2u:
          v7 = *sub_274721C98(v46);
          MEMORY[0x277C5FB60](2);
          OUTLINED_FUNCTION_75_0();
          v8 = *sub_274721C98(v44);
          v9 = [v7 identifier];
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          OUTLINED_FUNCTION_120_0();

          OUTLINED_FUNCTION_65_2();
          sub_2749FCE24();

          OUTLINED_FUNCTION_6_1();
          sub_27472AFE4();
          sub_274772BE8(v45);
          goto LABEL_44;
        case 3u:
          v38 = v5;
          v10 = sub_274721C98(v46);
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = *(v10 + 40);
          v14 = *(v10 + 48);
          MEMORY[0x277C5FB60](3);
          if (v14)
          {
            MEMORY[0x277C5FB60](1);
            OUTLINED_FUNCTION_75_0();
            v15 = sub_274721C98(v44);
            sub_274738558(v15, v43, &unk_280970630);
            sub_2749FD614();
            if (v12)
            {
              sub_2749FDE14();
              OUTLINED_FUNCTION_32();
LABEL_14:
              sub_2749FCE24();
              goto LABEL_18;
            }
          }

          else
          {
            MEMORY[0x277C5FB60](0);
            OUTLINED_FUNCTION_75_0();
            v16 = sub_274721C98(v44);
            sub_274738558(v16, v43, &unk_280970630);
            OUTLINED_FUNCTION_99();
            sub_2749FCE24();
            if (v11)
            {
              sub_2749FDE14();
              sub_2749FCE24();
              if (v13)
              {
                goto LABEL_13;
              }
            }

            else
            {
              sub_2749FDE14();
              if (v13)
              {
LABEL_13:
                sub_2749FDE14();
                goto LABEL_14;
              }
            }
          }

          sub_2749FDE14();
LABEL_18:
          memcpy(v44, (v10 + 56), 0x81uLL);
          v17 = sub_274772C3C(v44);
          if (v17)
          {
            if (v17 == 1)
            {
              v18 = CGSizeMake(v44);
              v40 = v18[9];
              v39 = v18[12];
              MEMORY[0x277C5FB60](1);
              sub_2749FCE24();
              sub_2749FCE24();
              sub_2749FCE24();
              OUTLINED_FUNCTION_94_0();
              sub_2749FCE24();
              if (v40)
              {
                OUTLINED_FUNCTION_28_3();
                MEMORY[0x277C5FB60]([v39 hash]);
              }

              else
              {
                OUTLINED_FUNCTION_23_3();
              }

              v28 = v18[15];
              sub_2749FCE24();
              v29 = *(v28 + 16);
              MEMORY[0x277C5FB60](v29);
              if (v29)
              {
                v30 = v28 + 112;
                do
                {
                  v42 = v29;
                  v32 = *(v30 - 48);
                  v31 = *(v30 - 40);
                  v33 = *(v30 - 16);

                  v34 = OUTLINED_FUNCTION_87();
                  sub_274772C44(v34, v35);

                  sub_2749FCE24();
                  sub_2749FCE24();
                  if (v31)
                  {
                    OUTLINED_FUNCTION_28_3();
                    MEMORY[0x277C5FB60]([v33 hash]);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_23_3();
                  }

                  v30 += 88;
                  sub_2749FCE24();

                  sub_274772C94(v32, v31);

                  v29 = v42 - 1;
                }

                while (v42 != 1);
              }
            }

            else
            {
              v27 = *(CGSizeMake(v44) + 48);
              MEMORY[0x277C5FB60](2);
              OUTLINED_FUNCTION_121();
              sub_2749FCE24();
              sub_2749FCE24();
              if (v27)
              {
                v0 = v37;
                v5 = v38;
                if (v27 == 1)
                {
                  MEMORY[0x277C5FB60](1);
                  sub_2749FD614();
                  OUTLINED_FUNCTION_6_1();
                  sub_27472AFE4();
                  sub_274772BE8(v45);
                }

                else
                {
                  MEMORY[0x277C5FB60](2);
                  sub_2749FCE24();
                  sub_274772BE8(v45);
                  OUTLINED_FUNCTION_6_1();
                  sub_27472AFE4();
                }

                v4 = v36;
                goto LABEL_44;
              }

              MEMORY[0x277C5FB60](0);
              OUTLINED_FUNCTION_32();
              sub_2749FCE24();
            }
          }

          else
          {
            v19 = *(CGSizeMake(v44) + 16);
            MEMORY[0x277C5FB60](0);
            OUTLINED_FUNCTION_32();
            sub_2749FCE24();
            MEMORY[0x277C5FB60](*(v19 + 16));
            v20 = *(v19 + 16);
            if (v20)
            {
              v21 = v19 + 112;
              do
              {
                v41 = v20;
                v23 = *(v21 - 48);
                v22 = *(v21 - 40);
                v24 = *(v21 - 16);

                v25 = OUTLINED_FUNCTION_43_0();
                sub_274772C44(v25, v26);

                sub_2749FCE24();
                sub_2749FCE24();
                if (v22)
                {
                  OUTLINED_FUNCTION_28_3();
                  MEMORY[0x277C5FB60]([v24 hash]);
                }

                else
                {
                  OUTLINED_FUNCTION_23_3();
                }

                v21 += 88;
                sub_2749FCE24();

                sub_274772C94(v23, v22);

                v20 = v41 - 1;
              }

              while (v41 != 1);
            }
          }

          sub_274772BE8(v45);
          OUTLINED_FUNCTION_6_1();
          v0 = v37;
          sub_27472AFE4();
          v4 = v36;
          v5 = v38;
LABEL_44:
          if (++v5 == v4)
          {
            goto LABEL_45;
          }

          break;
        default:
          sub_274721C98(v46);
          MEMORY[0x277C5FB60](0);
          OUTLINED_FUNCTION_75_0();
          sub_274721C98(v44);

          OUTLINED_FUNCTION_32();
          sub_2749FCE24();
          OUTLINED_FUNCTION_121();
          sub_2749FCE24();
          sub_274772BE8(v45);
LABEL_10:
          OUTLINED_FUNCTION_6_1();
          sub_27472AFE4();
          goto LABEL_44;
      }
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_46();
}

void sub_27478AA54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = OUTLINED_FUNCTION_118_0();
  MEMORY[0x277C5FB60](v4);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_97_0();
          v9 = v6;
          OUTLINED_FUNCTION_78();
          sub_2749FD614();
          sub_27478C360(v6);
          goto LABEL_9;
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x277C5FB60](v8);
LABEL_9:
      --v3;
    }

    while (v3);
  }
}

void sub_27478AAE4()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_134();
  v77 = type metadata accessor for LibrarySectionOptions.SectionType(v5);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v81 = (v8 - v7);
  OUTLINED_FUNCTION_57_0();
  v70 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v79 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  v67 = v11 - v12;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v13);
  v66 = &v65 - v14;
  v15 = OUTLINED_FUNCTION_57_0();
  v76 = type metadata accessor for LibrarySectionOptions.Header(v15);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v80 = v18 - v17;
  v19 = OUTLINED_FUNCTION_57_0();
  v20 = type metadata accessor for LibrarySectionOptions(v19);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_80();
  v75 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v78 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v74 = v25 - v24;
  v26 = OUTLINED_FUNCTION_57_0();
  v27 = type metadata accessor for ShortcutsLibraryItem.ItemType(v26);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v31 = (v30 - v29);
  v32 = type metadata accessor for ShortcutsLibraryItem(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32 - 8);
  OUTLINED_FUNCTION_13_4();
  v34 = *(v4 + 16);
  v35 = OUTLINED_FUNCTION_118_0();
  MEMORY[0x277C5FB60](v35);
  if (v34)
  {
    OUTLINED_FUNCTION_71();
    v37 = v4 + v36;
    v82 = *(v33 + 72);
    v68 = (v79 + 8);
    v69 = (v79 + 32);
    v72 = (v78 + 2);
    v73 = (v78 + 8);
    v78 = v20;
    v79 = v27;
    v71 = v1;
    do
    {
      sub_274729CBC(v37, v1);
      sub_274729CBC(v1, v31);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v38 = *v31;
          v39 = 1;
          goto LABEL_10;
        case 2u:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8);
          v40 = v20;
          v41 = v2;
          v42 = v74;
          v43 = v75;
          (*v73)(v74, v31, v75);
          OUTLINED_FUNCTION_97_0();
          sub_27472153C(&qword_2809681E0, MEMORY[0x277D7BF10]);
          OUTLINED_FUNCTION_88_0();
          sub_2749FCD04();
          sub_2749FDE14();
          v44 = v42;
          v2 = v41;
          v20 = v40;
          v1 = v71;
          (*v72)(v44, v43);
          goto LABEL_36;
        case 3u:
          OUTLINED_FUNCTION_2_9();
          v45 = OUTLINED_FUNCTION_107_1();
          sub_27472A55C(v45, v46);
          OUTLINED_FUNCTION_132_1();
          OUTLINED_FUNCTION_1_7();
          sub_274729CBC(v2, v80);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_132_1();
              sub_2749FCE24();
              v20 = v78;

              break;
            case 2u:
              v49 = v70;
              v50 = v66;
              (*v69)(v66, v80, v70);
              MEMORY[0x277C5FB60](4);
              OUTLINED_FUNCTION_7_4();
              sub_27472153C(&qword_280967B98, v51);
              OUTLINED_FUNCTION_88_0();
              sub_2749FCD04();
              v52 = v50;
              v20 = v78;
              (*v68)(v52, v49);
              break;
            case 3u:
              v48 = 0;
              goto LABEL_16;
            case 4u:
              v48 = 1;
              goto LABEL_16;
            case 5u:
              v48 = 5;
LABEL_16:
              MEMORY[0x277C5FB60](v48);
              break;
            default:
              v47 = *(v80 + 24);
              v65 = *(v80 + 16);
              OUTLINED_FUNCTION_97_0();
              sub_2749FCE24();

              if (v47)
              {
                OUTLINED_FUNCTION_101_0();
                sub_2749FCE24();
              }

              else
              {
                OUTLINED_FUNCTION_100_0();
              }

              v20 = v78;
              break;
          }

          MEMORY[0x277C5FB60](*(v2 + v20[5]));
          v53 = *(v2 + v20[6]);
          if (v53)
          {
            OUTLINED_FUNCTION_101_0();
            v54 = v53;
            OUTLINED_FUNCTION_78();
            sub_2749FD614();
          }

          else
          {
            OUTLINED_FUNCTION_100_0();
          }

          OUTLINED_FUNCTION_3_12();
          sub_274729CBC(v2 + v55, v81);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0);
              (*v69)(v67);
              OUTLINED_FUNCTION_97_0();
              OUTLINED_FUNCTION_7_4();
              sub_27472153C(&qword_280967B98, v57);
              OUTLINED_FUNCTION_88_0();
              sub_2749FCD04();
              sub_2749FDE14();
              v58 = OUTLINED_FUNCTION_110_0();
              v20 = v78;
              v59(v58);
            }

            else
            {
              MEMORY[0x277C5FB60](0);
            }
          }

          else
          {
            v60 = *v81;
            MEMORY[0x277C5FB60](1);
            OUTLINED_FUNCTION_123_0();
            sub_2749FD614();
            v20 = v78;
            sub_2749FDE14();
          }

          v61 = v2 + v20[8];
          v62 = *v61;
          v63 = *(v61 + 8);
          if (v63)
          {
            if (v63 == 1)
            {
              OUTLINED_FUNCTION_132_1();
              _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
              OUTLINED_FUNCTION_53_1();
            }

            else
            {
              MEMORY[0x277C5FB60](v62 != 0);
            }
          }

          else
          {
            OUTLINED_FUNCTION_97_0();
            OUTLINED_FUNCTION_123_0();
            sub_2749FD614();
          }

          if (*(v2 + v20[9]))
          {
            OUTLINED_FUNCTION_101_0();
            OUTLINED_FUNCTION_123_0();
            sub_2747599C8();
          }

          else
          {
            OUTLINED_FUNCTION_100_0();
          }

          sub_2749F9164();
          OUTLINED_FUNCTION_37_1();
          sub_27472153C(&qword_2809707C0, v64);
          sub_2749FCD04();
          sub_27472AFE4();
LABEL_36:
          OUTLINED_FUNCTION_45_0();
          break;
        default:
          v38 = *v31;
          v39 = 0;
LABEL_10:
          MEMORY[0x277C5FB60](v39);
          OUTLINED_FUNCTION_123_0();
          sub_2749FD614();
          OUTLINED_FUNCTION_45_0();

          break;
      }

      v37 += v82;
      --v34;
    }

    while (v34);
  }

  OUTLINED_FUNCTION_46();
}

void sub_27478B2CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x277C5FB60](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v19 = a2 + 32;
    v20 = v3;
    while (1)
    {
      v6 = v5 + 16 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*(v6 + 8))
      {
        break;
      }

      MEMORY[0x277C5FB60](0);
      MEMORY[0x277C5FB60](v7[2]);
      v11 = v7[2];
      if (v11)
      {

        v21 = v7;
        v12 = v7 + 5;
        do
        {
          v13 = v12[2];
          switch(v13)
          {
            case 0uLL:
              v14 = 0;
              goto LABEL_23;
            case 1uLL:
              v14 = 1;
              goto LABEL_23;
            case 2uLL:
              v14 = 2;
              goto LABEL_23;
            case 3uLL:
              v14 = 3;
              goto LABEL_23;
            case 4uLL:
              v14 = 4;
              goto LABEL_23;
            case 5uLL:
              v14 = 5;
              goto LABEL_23;
            case 6uLL:
              v14 = 7;
              goto LABEL_23;
            case 7uLL:
              v14 = 8;
              goto LABEL_23;
            case 8uLL:
              v14 = 9;
              goto LABEL_23;
            case 9uLL:
              v14 = 10;
              goto LABEL_23;
            case 0xAuLL:
              v14 = 11;
              goto LABEL_23;
            case 0xBuLL:
              v14 = 12;
LABEL_23:
              MEMORY[0x277C5FB60](v14);
              break;
            default:
              v15 = *(v12 - 1);
              v16 = *v12;
              v17 = v12[1];
              v18 = v12[4];
              MEMORY[0x277C5FB60](6);
              sub_2749FDE14();

              if (v16)
              {

                sub_2749FCE24();
              }

              sub_2749FCE24();
              sub_2749FDE14();
              if (v18)
              {
                sub_2749FCE24();
              }

              sub_27478C5D8(v15, v16, v17, v13);
              break;
          }

          v12 += 6;
          --v11;
        }

        while (v11);
        LOBYTE(v8) = 0;
        v5 = v19;
        v3 = v20;
        v7 = v21;
        goto LABEL_31;
      }

LABEL_32:
      if (++v4 == v3)
      {
        return;
      }
    }

    if (v8 == 1)
    {
      v9 = *(v6 + 8);
    }

    else
    {
      v9 = 2;
    }

    MEMORY[0x277C5FB60](v9);
    v10 = v7;
    sub_2749FD614();
LABEL_31:
    sub_27478A020(v7, v8);
    goto LABEL_32;
  }
}

uint64_t sub_27478B554(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277C5FB60](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = v5[2];
      switch(v6)
      {
        case 0uLL:
          v7 = 0;
          goto LABEL_16;
        case 1uLL:
          v7 = 1;
          goto LABEL_16;
        case 2uLL:
          v7 = 2;
          goto LABEL_16;
        case 3uLL:
          v7 = 3;
          goto LABEL_16;
        case 4uLL:
          v7 = 4;
          goto LABEL_16;
        case 5uLL:
          v7 = 5;
          goto LABEL_16;
        case 6uLL:
          v7 = 7;
          goto LABEL_16;
        case 7uLL:
          v7 = 8;
          goto LABEL_16;
        case 8uLL:
          v7 = 9;
          goto LABEL_16;
        case 9uLL:
          v7 = 10;
          goto LABEL_16;
        case 0xAuLL:
          v7 = 11;
          goto LABEL_16;
        case 0xBuLL:
          v7 = 12;
LABEL_16:
          result = MEMORY[0x277C5FB60](v7);
          break;
        default:
          v8 = *(v5 - 1);
          v9 = *v5;
          v10 = v5[1];
          v11 = v5[4];
          MEMORY[0x277C5FB60](6);
          sub_2749FDE14();

          if (v9)
          {

            sub_2749FCE24();
          }

          sub_2749FCE24();
          sub_2749FDE14();
          if (v11)
          {
            sub_2749FCE24();
          }

          result = sub_27478C5D8(v8, v9, v10, v6);
          break;
      }

      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_27478B750()
{
  result = qword_280968100;
  if (!qword_280968100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968100);
  }

  return result;
}

unint64_t sub_27478B7A8()
{
  result = qword_280968108;
  if (!qword_280968108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968108);
  }

  return result;
}

unint64_t sub_27478B848()
{
  result = qword_280968118;
  if (!qword_280968118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968118);
  }

  return result;
}

unint64_t sub_27478B8A0()
{
  result = qword_280968120;
  if (!qword_280968120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968120);
  }

  return result;
}

unint64_t sub_27478B988()
{
  result = qword_280968138;
  if (!qword_280968138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968138);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27478BA94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_27478BAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t dispatch thunk of LibraryDelegate.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

uint64_t getEnumTagSinglePayload for ShortcutChiclet.Progress.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShortcutChiclet.Progress.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27478BDD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 48))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27478BE28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 11;
    }
  }

  return result;
}

void sub_27478BEA8()
{
  if (!qword_28159E488)
  {
    sub_27471CF08(255, &qword_28159E490);
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E488);
    }
  }
}

void sub_27478BF10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_3();
    v4 = sub_2749FD6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *sub_27478BF60(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27478C28C()
{
  result = sub_2749F9514();
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

void sub_27478C360(id a1)
{
  if (a1 >= 2)
  {
  }
}

id sub_27478C370(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_27478C380()
{
  OUTLINED_FUNCTION_127_0();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      v3 = *v2;
      v2 += 2;
      sub_2749FDE14();
      if (v3)
      {

        sub_2749FCE24();
      }

      --v0;
    }

    while (v0);
  }
}

uint64_t sub_27478C4DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

void sub_27478C4F8()
{
  OUTLINED_FUNCTION_134();
  v2 = sub_2749F9514();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2747883B0(v0, v4, v5);
}

uint64_t sub_27478C584(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_108(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_27478C5D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0xC)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_3()
{
  *(v3 + v0[7]) = 0;
  *(v3 + v0[8]) = v1;
  v5 = v3 + v0[9];

  return sub_27472A55C(v2, v5);
}

void *OUTLINED_FUNCTION_75_0()
{

  return memcpy((v0 + 296), (v0 + 488), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_131()
{

  return sub_2749FCFF4();
}

void OUTLINED_FUNCTION_132_1()
{

  JUMPOUT(0x277C5FB60);
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return sub_2749FCFB4();
}

uint64_t OUTLINED_FUNCTION_134_0()
{
}

unint64_t sub_27478C7BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_27478CB34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27478C834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_27478C958(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_27478CB34()
{
  result = qword_28096F950;
  if (!qword_28096F950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28096F950);
  }

  return result;
}

unint64_t sub_27478CB98()
{
  result = sub_27478CEF4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GalleryContentView.LoadingState();
    sub_2749FD6C4();
    result = sub_2749FC5F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27478CC3C(uint64_t *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = (v4 & 0xFFFFFFFFFFFFFFF8) + ((v7 + 39) & ~v7 & 0x1F8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

void sub_27478CD50(_BYTE *a1, int a2, int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + (((*(v5 + 80) & 0xF8) + 39) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 16;
  if (a3 < 0)
  {
    v9 = a3 - 2147483646;
    if (v7)
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if ((a2 & 0x80000000) == 0)
    {
LABEL_5:
      switch(v8)
      {
        case 1:
          a1[v7] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_26;
        case 2:
          *&a1[v7] = 0;
          goto LABEL_25;
        case 3:
          goto LABEL_32;
        case 4:
          *&a1[v7] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_26;
        default:
LABEL_25:
          if (a2)
          {
LABEL_26:
            *a1 = (a2 - 1);
          }

          break;
      }

      return;
    }
  }

  v11 = a2 & 0x7FFFFFFF;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 + 1;
  }

  if (v7)
  {
    bzero(a1, v7);
    *a1 = v11;
  }

  switch(v8)
  {
    case 1:
      a1[v7] = v12;
      break;
    case 2:
      *&a1[v7] = v12;
      break;
    case 3:
LABEL_32:
      __break(1u);
      break;
    case 4:
      *&a1[v7] = v12;
      break;
    default:
      return;
  }
}

unint64_t sub_27478CEF4()
{
  result = qword_28096D820;
  if (!qword_28096D820)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28096D820);
  }

  return result;
}

uint64_t sub_27478CF88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968310);
  v28 = a1[3];
  v4 = v28;
  sub_2749FB7C4();
  v29 = sub_2749FB7C4();
  v5 = sub_2749FC4F4();
  OUTLINED_FUNCTION_43();
  v30 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = sub_2749FAEA4();
  OUTLINED_FUNCTION_43();
  v31 = v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v33 = a1[2];
  v18 = v33;
  v34 = v4;
  v19 = a1[4];
  v35 = v19;
  v36 = v2;
  v42 = sub_27478E4C4();
  v43 = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_27478E528();
  v40 = WitnessTable;
  v41 = v21;
  v22 = swift_getWitnessTable();
  sub_2749FC4E4();
  sub_27478DFB0(v2, v18, v28, v19);
  v39 = v22;
  OUTLINED_FUNCTION_1_8();
  v23 = swift_getWitnessTable();
  sub_2749FC2F4();

  (*(v30 + 8))(v9, v5);
  v37 = v23;
  v38 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_0_8();
  v24 = swift_getWitnessTable();
  sub_27490E93C(v15, v10, v24);
  v25 = *(v31 + 8);
  v25(v15, v10);
  sub_27490E93C(v17, v10, v24);
  return (v25)(v17, v10);
}

uint64_t sub_27478D294@<X0>(void (**a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v58 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v57 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v60 = &v56 - v12;
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968310);
  v16 = sub_2749FB7C4();
  v64 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v63 = &v56 - v18;
  v62 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = type metadata accessor for GalleryContentView.LoadingState();
  v22 = sub_2749FD6C4();
  MEMORY[0x28223BE20](v22);
  v24 = (&v56 - v23);
  v25 = sub_2749FB7C4();
  v66 = *(v25 - 8);
  v67 = v25;
  MEMORY[0x28223BE20](v25);
  v65 = &v56 - v26;
  v68 = a4;
  type metadata accessor for GalleryContentView();
  sub_2749FC5F4();
  sub_2749FC5C4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v21) == 1)
  {
    goto LABEL_5;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v50 = v59;
    (*(v61 + 32))(v59, v24, a2);
    v51 = v57;
    (*a1)(v50);
    v52 = v60;
    v29 = v68;
    sub_27490E93C(v51, a3, v68);
    v62 = *(v58 + 8);
    (v62)(v51, a3);
    sub_27490E93C(v52, a3, v29);
    v53 = sub_27478E4C4();
    v54 = v63;
    sub_274903BAC();
    v74 = v53;
    v75 = v29;
    swift_getWitnessTable();
    sub_27478E528();
    v32 = v65;
    sub_274903B04();
    (*(v64 + 8))(v54, v16);
    v55 = v62;
    (v62)(v51, a3);
    v55(v60, a3);
    (*(v61 + 8))(v59, a2);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    sub_2749FCE14();
    if (qword_28159E3A8 != -1)
    {
      swift_once();
    }

    v33 = qword_28159E448;
    v34 = sub_2749FCD64();
    v35 = sub_2749FCD64();

    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v39 = v38;

    v82 = v37;
    v83 = v39;
    sub_27475D0D0();
    v40 = sub_2749FD704();
    v42 = v41;

    v72 = v40;
    v73 = v42;
    sub_2749FAB74();
    v43 = sub_27478E4C4();
    v44 = v63;
    v29 = v68;
    sub_274903B04();
    v70 = v43;
    v71 = v29;
    swift_getWitnessTable();
    sub_27478E528();
    v32 = v65;
    sub_274903B04();
    (*(v64 + 8))(v44, v16);
    (*(v62 + 8))(v20, v15);
  }

  else
  {
    v28 = *v24;
    v29 = v68;
    v30 = sub_27478DAB0(a1, a2, a3, v68);
    v82 = v28;
    v83 = v30;
    v84 = v31;
    v80 = sub_27478E4C4();
    v81 = v29;
    swift_getWitnessTable();
    sub_27478E528();
    v32 = v65;
    sub_274903BAC();
  }

LABEL_8:
  v78 = sub_27478E4C4();
  v79 = v29;
  WitnessTable = swift_getWitnessTable();
  v46 = sub_27478E528();
  v76 = WitnessTable;
  v77 = v46;
  v47 = v67;
  v48 = swift_getWitnessTable();
  sub_27490E93C(v32, v47, v48);
  return (*(v66 + 8))(v32, v47);
}

uint64_t (*sub_27478DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = type metadata accessor for GalleryContentView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, v8);
  return sub_27478E57C;
}

uint64_t sub_27478DBF8(uint64_t a1)
{
  v2 = (a1 - 8);
  v41 = *(a1 - 8);
  v42 = a1;
  MEMORY[0x28223BE20](a1);
  v39 = v3;
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v2[3];
  v5 = v2[5];
  v37 = v2[4];
  v38 = v4;
  v36 = v5;
  v6 = type metadata accessor for GalleryContentView.LoadingState();
  v7 = sub_2749FD6C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v33 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  sub_2749FC5F4();
  sub_2749FC5C4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v6);
  v35 = v8;
  v19 = v17;
  v20 = v1;
  v21 = *(v8 + 8);
  v21(v19, v7);
  sub_2749FC5C4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) == 1)
  {
    result = (v21)(v15, v7);
    if (EnumTagSinglePayload != 1)
    {
      return result;
    }

LABEL_9:
    v25 = v33;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    (*(v35 + 16))(v34, v25, v7);
    sub_2749FC5D4();
    v21(v25, v7);
    v26 = *(v20 + 16);
    v28 = v40;
    v27 = v41;
    v29 = v42;
    (*(v41 + 16))(v40, v20, v42);
    v30 = (*(v27 + 80) + 40) & ~*(v27 + 80);
    v31 = swift_allocObject();
    v32 = v37;
    *(v31 + 2) = v38;
    *(v31 + 3) = v32;
    *(v31 + 4) = v36;
    (*(v27 + 32))(&v31[v30], v28, v29);
    v26(sub_27478E594, v31);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = (*(*(v6 - 8) + 8))(v15, v6);
  if (EnumCaseMultiPayload == 1 || EnumTagSinglePayload == 1)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t (*sub_27478DFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = type metadata accessor for GalleryContentView();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v9 + 16))(&v15 - v10, a1, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v9 + 32))(&v13[v12], v11, v8);
  return sub_27478E57C;
}

uint64_t sub_27478E0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = a5;
  v23[3] = a2;
  v23[0] = a1;
  v23[1] = a4;
  v6 = type metadata accessor for GalleryContentView.LoadingState();
  v7 = sub_2749FD6C4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (v23 - v13);
  v15 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967C18);
  v18 = sub_2749FDE54();
  MEMORY[0x28223BE20](v18);
  v20 = (v23 - v19);
  (*(v21 + 16))(v23 - v19, v23[0], v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v14 = *v20;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
    type metadata accessor for GalleryContentView();
    (*(v8 + 16))(v11, v14, v7);
    sub_2749FC5F4();
    sub_2749FC5D4();
    return (*(v8 + 8))(v14, v7);
  }

  else
  {
    (*(v15 + 32))(v17, v20, a3);
    (*(v15 + 16))(v14, v17, a3);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v6);
    type metadata accessor for GalleryContentView();
    (*(v8 + 16))(v11, v14, v7);
    sub_2749FC5F4();
    sub_2749FC5D4();
    (*(v8 + 8))(v14, v7);
    return (*(v15 + 8))(v17, a3);
  }
}

unint64_t sub_27478E4C4()
{
  result = qword_280968318;
  if (!qword_280968318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968318);
  }

  return result;
}

unint64_t sub_27478E528()
{
  result = qword_28096CB10;
  if (!qword_28096CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096CB10);
  }

  return result;
}

uint64_t sub_27478E594(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for GalleryContentView() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_27478E0F8(a1, v7, v3, v4, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_3_13();
  v2 = (type metadata accessor for GalleryContentView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);

  v6 = (v0 + v4 + v2[14]);
  OUTLINED_FUNCTION_3_13();
  v7 = type metadata accessor for GalleryContentView.LoadingState();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
    }

    else if (!EnumCaseMultiPayload)
    {
      (*(*(v1 - 8) + 8))(v6, v1);
    }
  }

  sub_2749FD6C4();
  sub_2749FC5F4();

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27478E7A4(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(type metadata accessor for GalleryContentView() - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a1(v6, v2, v3, v4);
}

id WorkflowConflictViewController.init(conflict:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_hostingViewController] = 0;
  v2 = &v1[OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_delegate];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_conflict] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WorkflowConflictViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

void sub_27478E944()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_hostingViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_delegate);
  *v1 = 0;
  v1[1] = 0;
  sub_2749FDAE4();
  __break(1u);
}

void sub_27478E9D4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setView_];

  sub_2749FC6A4();
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E640));
  v4 = sub_2749FB6C4();
  [v1 addChildViewController_];
  v5 = OUTLINED_FUNCTION_1_0();
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
  v17 = OUTLINED_FUNCTION_1_0();

  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  v19 = OUTLINED_FUNCTION_1_0();
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v19 setAutoresizingMask_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = OUTLINED_FUNCTION_1_0();

  if (v22)
  {
    [v21 addSubview_];

    [v4 didMoveToParentViewController_];
    v23 = *&v1[OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_hostingViewController];
    *&v1[OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_hostingViewController] = v4;

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_27478EC88()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for WorkflowConflictViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_27478EE54();
}

uint64_t sub_27478ED08(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_27478ED94(v2, v1);
}

uint64_t sub_27478ED94(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_27478EE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_hostingViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_conflict);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    sub_2747F9C44(v2, sub_27478F358, v3, sub_27478F360, v4, v6);
    sub_27478F368();
    v6[0] = sub_2749FC6A4();
    sub_2749FB6D4();
  }
}

void sub_27478EF58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (Strong + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_delegate);
    swift_beginAccess();
    if (*v2)
    {
      v3 = v2[1];
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      swift_unknownObjectRetain();
      v5(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_27478F028(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____TtC10WorkflowUI30WorkflowConflictViewController_delegate);
    swift_beginAccess();
    if (*v4)
    {
      v5 = v4[1];
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v7(v3, a1, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id WorkflowConflictViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkflowConflictViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkflowConflictViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27478F368()
{
  result = qword_280968338;
  if (!qword_280968338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968338);
  }

  return result;
}

uint64_t sub_27478F3D0(void *a1)
{
  v1 = a1;
  v2 = WFContentItem.conformsToContentItemPreviewProviding.getter();

  return v2 & 1;
}

uint64_t WFContentItem.conformsToContentItemPreviewProviding.getter()
{
  sub_27478F47C();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968340);
  v2 = swift_dynamicCast();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(&v4);
  }

  return v2;
}

unint64_t sub_27478F47C()
{
  result = qword_28096D760;
  if (!qword_28096D760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096D760);
  }

  return result;
}

uint64_t sub_27478F4C0(void *a1)
{
  v1 = a1;
  v2 = WFContentItem.shouldPresentFullScreenPreview.getter();

  return v2 & 1;
}

uint64_t WFContentItem.shouldPresentFullScreenPreview.getter()
{
  sub_27478F47C();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968340);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v2 = sub_2749F9F24();
    __swift_destroy_boxed_opaque_existential_0(&v4);
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    sub_27478F5B0(&v4);
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_27478F5B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_27478F624(void *a1)
{
  v1 = a1;
  WFContentItem.generatePagePreviewUIView()(v2);
  v4 = v3;

  return v4;
}

id sub_27478F674(unsigned int *a1)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968350);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v55 - v3;
  sub_2749F9E34();
  OUTLINED_FUNCTION_43();
  v63 = v5;
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v65 = v7 - v6;
  v8 = sub_2749F9E14();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v62 = v13 - v12;
  v14 = sub_2749F9E44();
  OUTLINED_FUNCTION_43();
  v60 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_2749F9E54();
  OUTLINED_FUNCTION_43();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v55 - v27);
  objc_opt_self();
  v29 = v1;
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v32 = v29;
    v33 = sub_27478FC70(v31);
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0;
    }

    v36 = 0xE000000000000000;
    if (v34)
    {
      v36 = v34;
    }

    *v28 = v35;
    v28[1] = v36;
    (*(v22 + 104))(v28, *MEMORY[0x277D7D340], v20);
    (*(v10 + 104))(v62, *v66, v8);
    (*(v63 + 104))(v65, *MEMORY[0x277D7D330], v64);
    sub_2749F9ED4();
    swift_allocObject();
    v37 = v32;
    sub_2749F9EE4();
    sub_2749F9E24();
    v38 = objc_allocWithZone(OUTLINED_FUNCTION_2_10());
    result = sub_2749F9E64();
    goto LABEL_13;
  }

  v56 = v26;
  v57 = v14;
  v58 = v8;
  v59 = v19;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  v42 = v64;
  v41 = v65;
  v44 = v62;
  v43 = v63;
  v45 = v66;
  if (v40)
  {
    v46 = v40;
    v55 = v29;
    v47 = [v46 attributedString];
    if (v47)
    {
      v48 = v47;
      v49 = v56;
      *v56 = v47;
      (*(v22 + 104))(v49, *MEMORY[0x277D7D338], v20);
      (*(v10 + 104))(v44, *MEMORY[0x277D7D318], v58);
      (*(v43 + 104))(v41, *MEMORY[0x277D7D330], v42);
      sub_2749F9ED4();
      swift_allocObject();
      v37 = v55;
      v50 = v48;
      sub_2749F9EE4();
      OUTLINED_FUNCTION_3_14();
      sub_2749F9E24();
      v51 = objc_allocWithZone(OUTLINED_FUNCTION_2_10());
      v52 = sub_2749F9E64();

LABEL_14:
      return v52;
    }
  }

  (*(v10 + 104))(v44, *v45, v58);
  (*(v43 + 104))(v41, *MEMORY[0x277D7D330], v42);
  sub_2749F9ED4();
  swift_allocObject();
  v53 = v29;
  sub_2749F9EE4();
  OUTLINED_FUNCTION_3_14();
  sub_2749F9E24();
  sub_2749FD294();
  (*(v60 + 8))(v22, v57);
  v54 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968358));
  v37 = sub_2749F9F34();
  sub_2749FB6B4();
  result = [v37 view];
  if (result)
  {
LABEL_13:
    v52 = result;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_27478FC2C(void *a1)
{
  v1 = a1;
  WFContentItem.generateListPreviewUIView()(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_27478FC70(void *a1)
{
  v1 = [a1 string];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_27478FCD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27478FD48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_27478FDB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27478FE2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_27478FEA8()
{
  OUTLINED_FUNCTION_10_3();
  type metadata accessor for WFGlyphCharacter(0);
  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_10_3();
  sub_2749FA8C4();
  swift_endAccess();
  return v0;
}

uint64_t sub_27478FF58()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionConfiguration__selectedGlyphCharacter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968418);
  OUTLINED_FUNCTION_9_3();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionConfiguration__folderName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
  OUTLINED_FUNCTION_9_3();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t WFCollectionConfigurationViewController.previewNavigationController.getter()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void WFCollectionConfigurationViewController.previewNavigationController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_274790174@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*WFCollectionConfigurationViewController.previewNavigationController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_previewNavigationController;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_10_3();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_2747902A8;
}

void sub_2747902A8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

double WFCollectionConfigurationViewController.previewDimension.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension);
  if ((*(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4061800000000000;
  v1[8] = 0;
  return 140.0;
}

void WFCollectionConfigurationViewController.previewDimension.setter(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension;
  *v2 = a1;
  *(v2 + 8) = 0;
}

void *(*WFCollectionConfigurationViewController.previewDimension.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  *a1 = WFCollectionConfigurationViewController.previewDimension.getter();
  return sub_274790460;
}

void *sub_274790460(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id sub_27479047C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView);
    objc_allocWithZone(type metadata accessor for WFCollectionConfigurationDataSource());
    v6 = v5;

    sub_274972B84();
    v7 = *(v0 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id WFCollectionConfigurationViewController.init(mode:updatingWithDatabase:)(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 20);
  v9 = *(a1 + 16);
  swift_unknownObjectWeakInit();
  p_opt_class_meths = &OBJC_PROTOCOL___UIGestureRecognizerDelegate.opt_class_meths;
  v11 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_iconPreview;
  type metadata accessor for WFCollectionIconPreview();
  *(v3 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_previewPadding) = 0x4049000000000000;
  v12 = v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_folderNameCancellable) = 0;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___dataSource) = 0;
  v13 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968398);
  *(v3 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode;
  *v14 = v7;
  *(v14 + 8) = v6;
  *(v14 + 20) = v8;
  *(v14 + 16) = v9;
  if (v8 >> 6)
  {
    [objc_opt_self() defaultGlyphCharacter];
    type metadata accessor for WFCollectionConfiguration();
    v17 = swift_allocObject();
    sub_27478FEA8();
  }

  else
  {
    v15 = v7;
    [v15 glyphCharacter];
    v16 = [v15 name];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

    type metadata accessor for WFCollectionConfiguration();
    v17 = swift_allocObject();
    p_opt_class_meths = (&OBJC_PROTOCOL___UIGestureRecognizerDelegate + 48);
    sub_27478FEA8();
    sub_274793828(v7, v6, v9 & 0xFFFFFF00FFFFFFFFLL | (v8 << 32));
  }

  *(v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_collectionConfiguration) = v17;
  *(v3 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_database) = a2;
  v18 = a2;
  OUTLINED_FUNCTION_24();
  v21 = objc_msgSendSuper2(v19, v20);
  v22 = *(p_opt_class_meths[109] + v21);
  if (swift_dynamicCastClass())
  {
    v23 = v21;
    v24 = v22;

    sub_27478FCD4();

    sub_27486C9B0();
  }

  return v21;
}

Swift::Void __swiftcall WFCollectionConfigurationViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683B8);
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v26[-v7];
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  sub_274790C6C();
  v9 = *&v1[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView];
  [v9 setKeyboardDismissMode_];
  [v9 setAutoresizingMask_];
  [v9 setClipsToBounds_];
  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    [v10 addSubview_];

    v12 = sub_27479047C();
    sub_274794088(&qword_2809683C0, 255, type metadata accessor for WFCollectionConfigurationDataSource);
    OUTLINED_FUNCTION_1_9();
    *&v9[*(v13 + 160) + 8] = v14;
    swift_unknownObjectWeakAssign();

    sub_274794088(&qword_2809683C8, v15, type metadata accessor for WFCollectionConfigurationViewController);
    OUTLINED_FUNCTION_1_9();
    *&v9[*(v16 + 168) + 8] = v17;
    swift_unknownObjectWeakAssign();
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_1_9();
    v20 = &off_288395290;
    if (!Strong)
    {
      v20 = 0;
    }

    *&v9[*(v19 + 176) + 8] = v20;
    swift_unknownObjectWeakAssign();

    v21 = type metadata accessor for WFCollectionNameFieldCell();
    sub_2747938DC(v21, 0xD00000000000002DLL, 0x8000000274A2B900, sub_2748E3D94, sub_2748E3E80);
    v22 = type metadata accessor for WFIconPickerContentUnavailableView();
    sub_2747938DC(v22, 0xD000000000000016, 0x8000000274A2B070, sub_2748E3D94, sub_2748E3E80);
    v23 = type metadata accessor for WFIconPickerHeaderView();
    OUTLINED_FUNCTION_7_5(v23, "IconPickerHeaderView");
    v24 = type metadata accessor for WFIconPickerSymbolCell();
    OUTLINED_FUNCTION_7_5(v24, "IconPickerSymbolCell");
    OUTLINED_FUNCTION_10_3();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809683D8);
    sub_2749FA8D4();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_27472AB6C(&qword_2809683E0, &qword_2809683B8);
    v25 = sub_2749FA974();

    (*(v5 + 8))(v8, v3);
    *&v1[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_folderNameCancellable] = v25;
  }

  else
  {
    __break(1u);
  }
}

void sub_274790C6C()
{
  v1 = v0;
  sub_27471CF08(0, &qword_280968428);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_27471CF08(0, &qword_28096D750);
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_2749FD644();
  v7 = sub_2749FD304();
  v8 = [v1 navigationItem];
  [v8 setLeftBarButtonItem:v7 animated:0];

  sub_2749FCE14();
  v9 = sub_2749FCD64();
  v10 = sub_2749FCD64();

  v11 = [v2 localizedStringForKey:v9 value:v10 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v14 = v12;
  sub_2749FD644();
  v13 = sub_2749FD304();
  [v13 setStyle_];
  v15 = [v1 navigationItem];
  [v15 setRightBarButtonItem:v13 animated:0];
}

void sub_274790FE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_iconPreview];

  type metadata accessor for WFCollectionIconPreview();
  v5 = swift_dynamicCastClass();

  if (v5)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      v8 = *&v7[OBJC_IVAR___WFPreviewNavigationController_titleLabel];

      sub_274885D4C(v1, v2, v8);
    }
  }
}

Swift::Void __swiftcall WFCollectionConfigurationViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v26.receiver = v1;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewIsAppearing_, a1);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___WFPreviewNavigationController_additionContainedScrollViewTopInset;
    OUTLINED_FUNCTION_24();
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = *&v1[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView];
    [v7 setContentOffset_];
    v8 = [v1 view];
    if (!v8)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 safeAreaInsets];
    v11 = v10;

    if (v11 == 0.0)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 0.0;
    }

    [v7 setContentInset_];
  }

  v13 = *&v1[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(UIScrollView *)v13 setFrame:v17, v19, v21, v23];
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    WFPreviewNavigationController.gridViewDidScroll(_:isAnimatingSnapshotChanges:)(v13, 0);
  }
}

void sub_274791338()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong dismissViewControllerAnimated:1 completion:0];
}

void sub_274791388()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_2747913D4();
}

void sub_2747913D4()
{
  v1 = v0;
  v59[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2749FA4E4();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v56 - v7;
  v10 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode];
  v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode + 8];
  v11 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode + 16] | (v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode + 20] << 32);
  v12 = v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_editMode + 20] >> 6;
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_database];
      v14 = swift_allocObject();
      v15 = swift_unknownObjectWeakInit();
      MEMORY[0x28223BE20](v15);
      *(&v56 - 4) = v14;
      *(&v56 - 3) = v9;
      *(&v56 - 2) = v10;
      *(&v56 - 2) = v11;
      *(&v56 - 4) = BYTE4(v11) & 1;
      sub_274793EFC(v10, v9, v11);
      v16 = v13;
      sub_2749FD234();

      return;
    }

    v25 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_database];

    v26 = sub_27478FDB8();
    v28 = v27;

    v29 = sub_27478FCD4();

    v59[0] = 0;
    v30 = sub_274793FFC(v26, v28, v29, v59, v25);

    v31 = v59[0];
    if (v30)
    {

      [v1 dismissViewControllerAnimated:1 completion:0];
      v32 = [objc_allocWithZone(MEMORY[0x277D7C2C0]) init];
      sub_2748FE694(0x4272616265646953, 0xED00006E6F747475, v32);

      v33 = sub_27478FCD4();

      [v32 setIcon_];
      [v32 track];

      return;
    }

    v46 = v31;
    v47 = sub_2749F8FE4();

    swift_willThrow();
    v59[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
    sub_27471CF08(0, qword_280967C90);
    swift_dynamicCast();
    v48 = v58;
    sub_2749FA3D4();
    v49 = v48;
    v50 = sub_2749FA4D4();
    v51 = sub_2749FD2C4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138543362;
      *(v52 + 4) = v49;
      *v53 = v49;
      v54 = v49;
      _os_log_impl(&dword_274719000, v50, v51, "An error occurred while creating a folder from the sidebar: %{public}@", v52, 0xCu);
      sub_274793F58(v53);
      MEMORY[0x277C61040](v53, -1, -1);
      MEMORY[0x277C61040](v52, -1, -1);
    }

    (*(v56 + 8))(v8, v57);
    v55 = WFUserInterfaceFromViewController();
    sub_27471CF08(0, &qword_28096D720);
    v44 = v49;
    v45 = sub_2748FCEE0(v44);
    [v55 presentAlert_];
  }

  else
  {
    v17 = *&v0[OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_database];
    sub_274793EFC(v10, v9, v11);
    v18 = v17;

    v19 = sub_27478FDB8();
    v21 = v20;

    v22 = sub_27478FCD4();

    v59[0] = 0;
    v23 = sub_27490C8A0(v10, v19, v21, v22, v59, v18);

    v24 = v59[0];
    if (v23)
    {

      [v1 dismissViewControllerAnimated:1 completion:0];
      sub_274793828(v10, v9, v11);
      return;
    }

    v34 = v24;
    v35 = sub_2749F8FE4();

    swift_willThrow();
    v59[0] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18);
    sub_27471CF08(0, qword_280967C90);
    swift_dynamicCast();
    v36 = v58;
    sub_2749FA3D4();
    v37 = v36;
    v38 = sub_2749FA4D4();
    v39 = sub_2749FD2C4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      *(v40 + 4) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_274719000, v38, v39, "An error occurred while updating a folder from the sidebar: %{public}@", v40, 0xCu);
      sub_274793F58(v41);
      MEMORY[0x277C61040](v41, -1, -1);
      MEMORY[0x277C61040](v40, -1, -1);
    }

    (*(v56 + 8))(v5, v57);
    v43 = WFUserInterfaceFromViewController();
    sub_27471CF08(0, &qword_28096D720);
    v44 = v37;
    v45 = sub_2748FCEE0(v44);
    [v43 presentAlert_];
    sub_274793828(v10, v9, v11);
  }

  swift_unknownObjectRelease();
}

void sub_274791D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a4;
  v42 = a2;
  aBlock[9] = *MEMORY[0x277D85DE8];
  v6 = sub_2749FCA74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749FCAA4();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v36 = v9;
    v37 = v10;
    v38 = v7;
    v39 = v6;
    v15 = a3;
    v16 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_collectionConfiguration;
    v17 = *(Strong + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_database);

    sub_27478FDB8();

    v18 = sub_2749FCD64();

    v35 = v16;

    v19 = sub_27478FCD4();

    aBlock[0] = 0;
    v20 = [v17 createFolderWithName:v18 icon:v19 error:aBlock];

    if (!v20)
    {
      v24 = aBlock[0];
      sub_2749F8FE4();

      swift_willThrow();
      v22 = v14;
      goto LABEL_6;
    }

    v21 = aBlock[0];
    v22 = v20;
    v23 = v15;
    sub_2748E6B98(v15, v20, 0, 0);
    if (v4)
    {

LABEL_6:
      return;
    }

    sub_2748E6E80(v40 | ((HIDWORD(v40) & 1) << 32));
    v34 = v22;

    sub_27471CF08(0, &qword_28159E4E0);
    v42 = sub_2749FD404();
    v25 = swift_allocObject();
    v25[2] = v14;
    aBlock[4] = sub_274794078;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_2;
    v26 = _Block_copy(aBlock);
    v33 = v14;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274794088(&qword_28159E580, 255, MEMORY[0x277D85198]);
    v40 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27472AB6C(&qword_28159E530, &unk_28096DB60);
    v27 = v36;
    v28 = v39;
    sub_2749FD7B4();
    v29 = v42;
    MEMORY[0x277C5F170](0, v12, v27, v26);
    _Block_release(v26);

    (*(v38 + 8))(v27, v28);
    (*(v41 + 8))(v12, v37);
    v30 = [objc_allocWithZone(MEMORY[0x277D7C2C0]) init];
    sub_2748FE694(0x6F466F5465766F4DLL, 0xEC0000007265646CLL, v30);
    v31 = sub_27472D918(v40);
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v31))
    {
      [v30 setShortcutCount_];

      v32 = sub_27478FCD4();

      [v30 setIcon_];
      [v30 track];

      return;
    }

    __break(1u);
  }
}

void sub_274792284(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = [a1 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

id WFCollectionConfigurationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WFCollectionConfigurationViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_iconPreview;
  type metadata accessor for WFCollectionIconPreview();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_previewPadding) = 0x4049000000000000;
  v2 = v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___previewDimension;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_folderNameCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController____lazy_storage___dataSource) = 0;
  v3 = OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_gridView;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968398);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2749FDAE4();
  __break(1u);
}

id WFCollectionConfigurationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFCollectionConfigurationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_274792634(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = v5;
  v10 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  v12 = OUTLINED_FUNCTION_34(v11);
  MEMORY[0x28223BE20](v12);
  v90 = &v80 - v13;
  v14 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v85 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v84 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v23 = OUTLINED_FUNCTION_34(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15();
  v94 = v28;
  if (v10 != 1)
  {
    return;
  }

  v29 = sub_27486C8C8(a5);
  v89 = a1;
  v93 = v26;
  if (v29)
  {
    v30 = v29;
    type metadata accessor for WFIconPickerSymbolCell();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MEMORY[0x277D7A1D8]) initWithGlyph_];
      sub_2749775FC(v33, 1);

      v26 = v93;
      v34 = v89;
      *(v32 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
      a1 = v34;
      sub_274977DCC();
    }
  }

  sub_27478FD48();

  v35 = *(v6 + OBJC_IVAR____TtC10WorkflowUI39WFCollectionConfigurationViewController_iconPreview);
  type metadata accessor for WFCollectionIconPreview();
  if (swift_dynamicCastClass())
  {
    v36 = v35;
    sub_27486C9B0();
  }

  v81 = a2;
  v37 = MEMORY[0x277D85000];
  v38 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v39 + 64);
  v44 = *((*v37 & *a1) + 0x98);
  v83 = v39;

  v88 = v44;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v45 = 0;
  v46 = (v41 + 63) >> 6;
  v82 = v85 + 16;
  v91 = v19;
  v92 = v85 + 32;
  v86 = v85 + 8;
  v87 = v40;
  v47 = v94;
  while (v43)
  {
    v48 = v45;
LABEL_17:
    v49 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v50 = v49 | (v48 << 6);
    v51 = v83;
    v52 = v85;
    (*(v85 + 16))(v84, *(v83 + 48) + *(v85 + 72) * v50, v14);
    v53 = *(*(v51 + 56) + 8 * v50);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    v55 = *(v54 + 48);
    v56 = *(v52 + 32);
    v26 = v93;
    v57 = v14;
    v56();
    *(v26 + v55) = v53;
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v54);
    v58 = v53;
    v47 = v94;
LABEL_18:
    sub_274793E0C(v26, v47);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    if (__swift_getEnumTagSinglePayload(v47, 1, v59) == 1)
    {

      return;
    }

    v60 = *(v47 + *(v59 + 48));
    v61 = OUTLINED_FUNCTION_12_6();
    v62(v61, v47, v57);
    v63 = v90;
    sub_274793E7C(v89 + v88, v90);
    v95 = 1;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
    sub_2749F95D4();
    OUTLINED_FUNCTION_9_3();
    (*(v65 + 8))(v63, v64);
    v66 = v96;
    if (v96)
    {
      v67 = sub_2749F9264();
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v67 >= *(v66 + 16))
      {
        goto LABEL_39;
      }

      v68 = v66 + 24 * v67;
      v69 = *(v68 + 32);
      v70 = *(v68 + 40);
      v71 = *(v68 + 48);
      sub_274772E38(v69, v70, *(v68 + 48));

      if (v71)
      {
        if (v71 != 1)
        {
          v26 = v93;
          v47 = v94;
          v14 = v57;

          goto LABEL_34;
        }

        v14 = v57;
        v26 = v93;
        if (v69 != v81)
        {

          goto LABEL_33;
        }

        type metadata accessor for WFIconPickerSymbolCell();
        v72 = swift_dynamicCastClass();
        v40 = v87;
        if (v72)
        {
          *(v72 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 1;
          sub_274977DCC();
        }

        v73 = OUTLINED_FUNCTION_12_6();
        v74(v73, v14);
        v47 = v94;
      }

      else
      {

        sub_274772E24(v69, v70, 0);
        v14 = v57;
        v26 = v93;
LABEL_33:
        v47 = v94;
LABEL_34:
        v40 = v87;
        v78 = OUTLINED_FUNCTION_12_6();
        v79(v78, v14);
      }
    }

    else
    {
      v75 = OUTLINED_FUNCTION_12_6();
      v76(v75, v57);

      v14 = v57;
      v26 = v93;
      v47 = v94;
      v40 = v87;
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v48 >= v46)
    {
      v57 = v14;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v77);
      v43 = 0;
      goto LABEL_18;
    }

    v43 = *(v40 + 8 * v48);
    ++v45;
    if (v43)
    {
      v45 = v48;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_274792CFC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v136 = a2;
  v7 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  v9 = OUTLINED_FUNCTION_34(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39();
  v142 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v144 = v13;
  v14 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v149 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_39();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v139 = &v135 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15();
  v148 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  v25 = OUTLINED_FUNCTION_34(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v135 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v146 = &v135 - v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  v145 = v35;
  if (v7 != 1)
  {
    return;
  }

  v36 = a1;
  v37 = sub_27486C8C8(a5);
  v140 = v32;
  if (v37)
  {
    v38 = v37;
    type metadata accessor for WFIconPickerSymbolCell();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v40 = v39;
      v41 = objc_allocWithZone(MEMORY[0x277D7A1D8]);
      v42 = [v41 initWithGlyph_];
      sub_2749775FC(v42, 0);

      *(v40 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
      sub_274977DCC();
    }
  }

  v141 = v28;
  v150 = v19;
  v43 = v36;
  v44 = MEMORY[0x277D85000];
  v45 = *((*MEMORY[0x277D85000] & *v36) + 0x70);
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v135 = v45;
  v46 = *(v43 + v45);
  v49 = *(v46 + 64);
  v48 = v46 + 64;
  v47 = v49;
  v50 = 1 << *(*(v43 + v45) + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v47;
  v53 = *((*v44 & *v43) + 0x98);
  v138 = *(v43 + v45);

  v152 = v53;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v54 = 0;
  v55 = v50 + 63;
  v56 = v43;
  v57 = v55 >> 6;
  v147 = v149 + 16;
  v154 = v14;
  v155 = (v149 + 32);
  v151 = v149 + 8;
  v153 = v56;
  v58 = v139;
  v143 = v48;
  v137 = v55 >> 6;
  while (1)
  {
    if (v52)
    {
      v59 = v54;
LABEL_15:
      v60 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v61 = v60 | (v59 << 6);
      v62 = v138;
      v63 = v148;
      v64 = v149;
      (*(v149 + 16))(v148, *(v138 + 48) + *(v149 + 72) * v61, v14);
      v65 = *(*(v62 + 56) + 8 * v61);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      v67 = *(v66 + 48);
      v68 = *(v64 + 32);
      v69 = v146;
      v68(v146, v63, v14);
      *(v69 + v67) = v65;
      __swift_storeEnumTagSinglePayload(v69, 0, 1, v66);
      v70 = v65;
      v56 = v153;
      v58 = v139;
      v57 = v137;
    }

    else
    {
      while (1)
      {
        v59 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v59 >= v57)
        {
          break;
        }

        v52 = *(v48 + 8 * v59);
        ++v54;
        if (v52)
        {
          v54 = v59;
          goto LABEL_15;
        }
      }

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
      v69 = v146;
      __swift_storeEnumTagSinglePayload(v146, 1, 1, v87);
      v52 = 0;
    }

    v71 = v145;
    sub_274793E0C(v69, v145);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420);
    if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
    {
      break;
    }

    v73 = *(v71 + *(v72 + 48));
    (*v155)(v58, v71, v154);
    v74 = v144;
    sub_274793E7C(v56 + v152, v144);
    v156 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_9_3();
    (*(v75 + 8))(v74, v56);
    v76 = v157;
    if (v157)
    {
      v77 = sub_2749F9264();
      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      if (v77 >= *(v76 + 16))
      {
        goto LABEL_74;
      }

      v78 = v76 + 24 * v77;
      v80 = *(v78 + 32);
      v79 = *(v78 + 40);
      v81 = *(v78 + 48);
      sub_274772E38(v80, v79, *(v78 + 48));
    }

    else
    {
      v80 = 0;
      v79 = 0;
      v81 = 255;
    }

    type metadata accessor for WFIconPickerSymbolCell();
    v82 = swift_dynamicCastClass();
    if (v82)
    {
      v83 = v73;
    }

    if (v81)
    {
      if (v81 == 1)
      {
        v56 = v153;
        if (v80 != v136)
        {

          goto LABEL_35;
        }

        v14 = v154;
        if (v82)
        {
          *(v82 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
          sub_274977DCC();
LABEL_31:

          goto LABEL_36;
        }

        v90 = OUTLINED_FUNCTION_4_5();
        v91(v90);

        v48 = v143;
      }

      else
      {
        v84 = v81 == 2;
        v56 = v153;
        v14 = v154;
        if (v84)
        {
          goto LABEL_31;
        }

        v85 = OUTLINED_FUNCTION_4_5();
        v86(v85);

        v48 = v143;
      }
    }

    else
    {

      sub_27477BF70(v80, v79, 0);
      v56 = v153;
LABEL_35:
      v14 = v154;
LABEL_36:
      v88 = OUTLINED_FUNCTION_4_5();
      v89(v88);
      v48 = v143;
    }
  }

  v92 = *(v56 + v135);
  v95 = *(v92 + 64);
  v94 = v92 + 64;
  v93 = v95;
  v96 = 1 << *(*(v56 + v135) + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & v93;
  v99 = (v96 + 63) >> 6;
  v145 = *(v56 + v135);

  v100 = 0;
  v101 = v154;
  v146 = v94;
  while (v98)
  {
    v102 = v56;
    v103 = v100;
LABEL_47:
    v104 = __clz(__rbit64(v98));
    v98 &= v98 - 1;
    v105 = v104 | (v103 << 6);
    v106 = v145;
    v108 = v148;
    v107 = v149;
    (*(v149 + 16))(v148, *(v145 + 48) + *(v149 + 72) * v105, v101);
    v109 = *(*(v106 + 56) + 8 * v105);
    v110 = *(v72 + 48);
    v111 = *(v107 + 32);
    v112 = v141;
    v111(v141, v108, v101);
    *(v112 + v110) = v109;
    __swift_storeEnumTagSinglePayload(v112, 0, 1, v72);
    v113 = v109;
    v56 = v102;
LABEL_48:
    v114 = v140;
    sub_274793E0C(v112, v140);
    if (__swift_getEnumTagSinglePayload(v114, 1, v72) == 1)
    {

      return;
    }

    v115 = *(v114 + *(v72 + 48));
    (*v155)(v150, v114, v101);
    v116 = v142;
    sub_274793E7C(v56 + v152, v142);
    v156 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E38);
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_9_3();
    (*(v117 + 8))(v116, v56);
    v118 = v157;
    if (v157)
    {
      v119 = sub_2749F9264();
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if (v119 >= *(v118 + 16))
      {
        goto LABEL_76;
      }

      v120 = v118 + 24 * v119;
      v121 = *(v120 + 32);
      v122 = *(v120 + 40);
      v123 = *(v120 + 48);
      sub_274772E38(v121, v122, *(v120 + 48));
    }

    else
    {
      v121 = 0;
      v122 = 0;
      v123 = 255;
    }

    type metadata accessor for WFIconPickerSymbolCell();
    v124 = swift_dynamicCastClass();
    if (v124)
    {
      v125 = v115;
    }

    if (!v123)
    {

      sub_27477BF70(v121, v122, 0);
      v56 = v153;
      v101 = v154;
      goto LABEL_67;
    }

    if (v123 != 1)
    {
      v84 = v123 == 2;
      v56 = v153;
      v101 = v154;
      if (!v84)
      {
        v126 = OUTLINED_FUNCTION_5_6();
        v127(v126);

        v94 = v146;
        continue;
      }

LABEL_63:

LABEL_67:
      v131 = OUTLINED_FUNCTION_5_6();
      v132(v131);
      v94 = v146;
      continue;
    }

    v101 = v154;
    if (v121 != v136)
    {

      v56 = v153;
      goto LABEL_67;
    }

    v56 = v153;
    if (v124)
    {
      v128 = objc_allocWithZone(MEMORY[0x277D7A1D8]);
      v129 = v56;
      v130 = [v128 initWithGlyph_];
      sub_2749775FC(v130, 0);

      v56 = v129;
      *(v124 + OBJC_IVAR____TtC10WorkflowUI22WFIconPickerSymbolCell_isSelected) = 0;
      sub_274977DCC();
      goto LABEL_63;
    }

    v133 = OUTLINED_FUNCTION_5_6();
    v134(v133);

    v94 = v146;
  }

  while (1)
  {
    v103 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if (v103 >= v99)
    {
      v112 = v141;
      __swift_storeEnumTagSinglePayload(v141, 1, 1, v72);
      v98 = 0;
      goto LABEL_48;
    }

    v98 = *(v94 + 8 * v103);
    ++v100;
    if (v98)
    {
      v102 = v56;
      v100 = v103;
      goto LABEL_47;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

uint64_t type metadata accessor for WFCollectionConfiguration()
{
  result = qword_280968400;
  if (!qword_280968400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274793828(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = (a3 >> 38) & 3;
  if (v4 == 1)
  {
  }

  else if (!v4)
  {
  }
}

uint64_t sub_2747938DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
  OUTLINED_FUNCTION_10_3();

  a4(v12);
  v13 = *(*(v5 + v11) + 16);
  a5(v13);
  v14 = *(v5 + v11);
  *(v14 + 16) = v13 + 1;
  v15 = (v14 + 24 * v13);
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;
  *(v5 + v11) = v14;
  return swift_endAccess();
}

unint64_t sub_274793A24()
{
  result = qword_2809683E8;
  if (!qword_2809683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809683E8);
  }

  return result;
}

unint64_t sub_274793A7C()
{
  result = qword_2809683F0;
  if (!qword_2809683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809683F0);
  }

  return result;
}

void sub_274793AD8()
{
  sub_274793BA4();
  if (v0 <= 0x3F)
  {
    sub_274793BFC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_274793BA4()
{
  if (!qword_280968410)
  {
    type metadata accessor for WFGlyphCharacter(255);
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_280968410);
    }
  }
}

void sub_274793BFC()
{
  if (!qword_28159E768)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E768);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI39WFCollectionConfigurationViewControllerC8EditModeO(uint64_t a1)
{
  v1 = *(a1 + 20) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_274793CA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 21))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v3 = (*(a1 + 16) | (*(a1 + 20) << 32)) >> 26;
      v2 = ((v3 >> 12) | (4 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7 | v3 & 0xF80))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_274793D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 20) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_274793D98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_274793DB4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16);
    result += 16;
    v3 = (a2 << 38) | ((*(result + 4) & 1) << 32);
    *(result - 8) &= 0xFFFFFFFFFFFFFF8uLL;
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 20) = 0x80;
  }

  return result;
}

uint64_t sub_274793E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274793E7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_274793EFC(id result, uint64_t a2, unint64_t a3)
{
  v4 = (a3 >> 38) & 3;
  if (v4 == 1)
  {
  }

  else if (!v4)
  {

    return result;
  }

  return result;
}

uint64_t sub_274793F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_274793FFC(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4, void *a5)
{
  v8 = sub_2749FCD64();

  v9 = [a5 createFolderWithName:v8 icon:a3 error:a4];

  return v9;
}

uint64_t sub_274794088(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2747940D0(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for WFGridViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2747941C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGridViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for WFIconPickerSection(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI16WFIconPickerItemO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_274794314(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_274794354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_274794398(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

double sub_2747943C0(char a1)
{
  result = 16.0;
  if (a1)
  {
    return 8.0;
  }

  return result;
}

double sub_2747943D4(char a1)
{
  result = 16.0;
  if (a1)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_2747943E8(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_28159E448;
  OUTLINED_FUNCTION_32_1();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_32_1();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v5;
}

uint64_t sub_2747944C8()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

uint64_t sub_2747945B0(char a1)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1 & 1);
  return sub_2749FDE44();
}

uint64_t sub_274794648(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_17;
      }

      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_18;
      }

      return sub_2749FDCC4();
    case 2:
      if (a6 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 3:
      if (a6 != 3 || a5 | a4)
      {
        goto LABEL_17;
      }

LABEL_18:
      result = 1;
      break;
    default:
      if (a6)
      {
LABEL_17:
        result = 0;
      }

      else
      {
LABEL_5:
        sub_2747949D8();
        OUTLINED_FUNCTION_32_1();
        result = sub_2749FD604() & 1;
      }

      break;
  }

  return result;
}

uint64_t sub_274794730(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 1:
      MEMORY[0x277C5FB60](1);
      OUTLINED_FUNCTION_32_1();

      result = sub_2749FCE24();
      break;
    case 2:
      v4 = 2;
      goto LABEL_4;
    case 3:
      result = MEMORY[0x277C5FB60](3);
      break;
    default:
      v4 = 0;
LABEL_4:
      MEMORY[0x277C5FB60](v4);
      result = sub_2749FD614();
      break;
  }

  return result;
}

uint64_t sub_2747947DC(uint64_t a1, uint64_t a2, char a3)
{
  sub_2749FDDF4();
  sub_274794730(v7, a1, a2, a3);
  return sub_2749FDE44();
}

uint64_t sub_274794864()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  sub_274794730(v5, v1, v2, v3);
  return sub_2749FDE44();
}

unint64_t sub_2747948DC()
{
  result = qword_280968430;
  if (!qword_280968430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968430);
  }

  return result;
}

unint64_t sub_274794930(uint64_t a1)
{
  result = sub_2747729D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274794958(uint64_t a1)
{
  result = sub_274772A7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_274794984()
{
  result = qword_280968438;
  if (!qword_280968438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968438);
  }

  return result;
}

unint64_t sub_2747949D8()
{
  result = qword_28159E390;
  if (!qword_28159E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28159E390);
  }

  return result;
}

uint64_t sub_274794A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for GalleryShortcutActionsView();
  sub_2747959C4(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_274795A34(v9, a1);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GalleryShortcutActionsView.init(workflow:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for GalleryShortcutActionsView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for GalleryShortcutActionsView()
{
  result = qword_280968468;
  if (!qword_280968468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GalleryShortcutActionsView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968440);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096DFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096EAC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968450);
  sub_274795614();
  OUTLINED_FUNCTION_0();
  sub_27475D0D0();
  OUTLINED_FUNCTION_0();
  sub_27472AB6C(&qword_280968460, &unk_28096DFF0);
  OUTLINED_FUNCTION_0();
  return sub_2749FAEC4();
}

uint64_t sub_274794E14@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v38 = sub_2749FB4F4();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749F9A14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968450);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096EAC0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968448);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v40 = &v38 - v16;
  v44 = a1;
  v17 = *a1;
  sub_2749F9AA4();
  v18 = v17;
  sub_2749F9A94();
  (*(v7 + 104))(v9, *MEMORY[0x277D7BCE8], v6);
  sub_2749F9A24();
  sub_2749F9A04();
  sub_2749F99E4();
  v19 = [objc_opt_self() wf_systemGroupedBackgroundColor];
  v20 = sub_2749FC3E4();
  v21 = sub_2749FBC64();
  v22 = &v12[*(v10 + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = v38;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v38);
  v24 = sub_274795614();
  sub_2749FC224();
  (*(v3 + 8))(v5, v23);
  sub_2747359D0(v12, &qword_280968450);
  v25 = [v18 name];
  if (v25)
  {
    v26 = v25;
    v27 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v46 = v27;
  v47 = v29;
  v50 = v10;
  v51 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_27475D0D0();
  v32 = MEMORY[0x277D837D0];
  v34 = v40;
  v33 = v41;
  sub_2749FC0A4();

  v35 = (*(v39 + 8))(v14, v33);
  MEMORY[0x28223BE20](v35);
  *(&v38 - 2) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DFF0);
  v46 = v33;
  v47 = v32;
  v48 = OpaqueTypeConformance2;
  v49 = v31;
  swift_getOpaqueTypeConformance2();
  sub_27472AB6C(&qword_280968460, &unk_28096DFF0);
  v36 = v43;
  sub_2749FC2D4();
  return (*(v42 + 8))(v34, v36);
}

uint64_t sub_27479537C(uint64_t a1)
{
  v2 = type metadata accessor for GalleryShortcutActionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_2749FA9C4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA9B4();
  sub_27479589C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_274795900(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return MEMORY[0x277C5E390](v7, sub_274795964, v9);
}

uint64_t sub_2747954D0()
{
  v0 = sub_2749FAF84();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_274794A1C(&v5 - v2);
  MEMORY[0x277C5E410](v1);
  sub_2749FAF74();
  sub_2749FC6C4();
  return sub_2747359D0(v3, &qword_28096B2A0);
}

unint64_t sub_274795614()
{
  result = qword_28096EAD0;
  if (!qword_28096EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968450);
    sub_2747956CC();
    sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EAD0);
  }

  return result;
}

unint64_t sub_2747956CC()
{
  result = qword_280968458;
  if (!qword_280968458)
  {
    sub_2749F99F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968458);
  }

  return result;
}

void sub_274795768()
{
  sub_2747957EC();
  if (v0 <= 0x3F)
  {
    sub_274795830();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2747957EC()
{
  result = qword_28096BF80;
  if (!qword_28096BF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096BF80);
  }

  return result;
}

void sub_274795830()
{
  if (!qword_28096D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B2A0);
    v0 = sub_2749FAAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096D3A0);
    }
  }
}

uint64_t sub_27479589C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryShortcutActionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274795900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryShortcutActionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274795964()
{
  type metadata accessor for GalleryShortcutActionsView();

  return sub_2747954D0();
}

uint64_t sub_2747959C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274795A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274795AA4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_27479846C(v1, v2);
  OUTLINED_FUNCTION_3_4();

  return *(v0 + 16);
}

uint64_t sub_274795B24(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_10_4();
    *(v4 - 8) = v2;
    sub_27479608C(v5, j__OUTLINED_FUNCTION_4_6, v6, &OBJC_IVAR____TtC10WorkflowUI14SearchBarState___observationRegistrar, &qword_280968668, type metadata accessor for SearchBarState);
  }

  return result;
}

uint64_t sub_274795BF8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_11();
  sub_27479846C(v1, v2);
  OUTLINED_FUNCTION_3_4();

  v3 = *(v0 + 24);

  return v3;
}

uint64_t sub_274795C88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_274795CC8(v1, v2);
}

uint64_t sub_274795CC8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_2749FDCC4() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_27479608C(v8, sub_274799014, v9, &OBJC_IVAR____TtC10WorkflowUI14SearchBarState___observationRegistrar, &qword_280968668, type metadata accessor for SearchBarState);
  }
}

uint64_t sub_274795E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
}

uint64_t sub_274795E3C()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI14SearchBarState___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_274795ED8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  sub_2749F9304();
  return v0;
}

uint64_t sub_274795F28()
{
  swift_getKeyPath();
  sub_27479846C(&unk_280968690, type metadata accessor for HomeScreenViewModel);
  OUTLINED_FUNCTION_3_4();

  return *(v0 + 16);
}

uint64_t sub_274795FB8(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    v2 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_10_4();
    *(v4 - 8) = v2;
    sub_27479608C(v5, j__OUTLINED_FUNCTION_4_6, v6, &OBJC_IVAR____TtC10WorkflowUI19HomeScreenViewModel___observationRegistrar, &unk_280968690, type metadata accessor for HomeScreenViewModel);
  }

  return result;
}

uint64_t sub_27479611C()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI19HomeScreenViewModel___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2747961B8()
{
  v1 = v0;
  *(v0 + 16) = 3;
  type metadata accessor for SearchBarState(0);
  v2 = swift_allocObject();
  sub_274795ED8();
  *(v1 + 24) = v2;
  sub_2749F9304();
  return v1;
}

uint64_t AddToHomeScreenViewController.__allocating_init(aggregatedEntry:)(uint64_t a1)
{
  v3 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, a1, v3);
  v10 = objc_allocWithZone(v1);
  AddToHomeScreenViewController.init(aggregatedEntry:activity:)(v9, 0);
  v12 = v11;
  (*(v5 + 8))(a1, v3);
  return v12;
}

void AddToHomeScreenViewController.init(aggregatedEntry:activity:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v13, a1, v7);
  type metadata accessor for HomeScreenIconState();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC10WorkflowUI29AddToHomeScreenViewController_model) = sub_274880C08(v13);
  swift_unknownObjectWeakAssign();
  type metadata accessor for HomeScreenViewModel(0);
  v14 = swift_allocObject();
  sub_2747961B8();
  *(v3 + OBJC_IVAR____TtC10WorkflowUI29AddToHomeScreenViewController_viewModel) = v14;
  v15 = objc_allocWithZone(type metadata accessor for AddToHomeScreenCollectionViewController());

  sub_2747C0DD0(v16, v14);
  *(v3 + OBJC_IVAR____TtC10WorkflowUI29AddToHomeScreenViewController_collectionViewController) = v17;
  OUTLINED_FUNCTION_24();
  v20 = objc_msgSendSuper2(v18, v19, v3, ObjectType);
  v21 = OBJC_IVAR____TtC10WorkflowUI29AddToHomeScreenViewController_collectionViewController;
  v22 = *&v20[OBJC_IVAR____TtC10WorkflowUI29AddToHomeScreenViewController_collectionViewController];
  v23 = v20;
  [v23 addChildViewController_];
  v24 = [v23 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = v24;
  v26 = [*&v20[v21] view];
  if (!v26)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v27 = v26;
  [v25 addSubview_];

  v28 = [*&v20[v21] view];
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v28;
  v30 = [v23 view];

  if (v30)
  {

    sub_274796618();
    sub_27479696C();
    sub_2747969D0();

    (*(v9 + 8))(a1, v7);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_274796618()
{
  ObjectType = swift_getObjectType();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v29 = ObjectType;
  v28[0] = v0;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v9 = v0;
  v10 = sub_2748C4E24(v6, v8, 0, v28, sel_cancel);
  v11 = [v9 navigationItem];
  [v11 setLeftBarButtonItem_];

  sub_2749FCE14();
  sub_2749FCE14();
  v12 = sub_2749FCD64();

  v13 = sub_2749FCD64();

  v14 = [v2 localizedStringForKey:v12 value:v13 table:0];

  v15 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v17 = v16;

  v29 = ObjectType;
  v28[0] = v9;
  objc_allocWithZone(MEMORY[0x277D751E0]);
  v18 = v9;
  v19 = sub_2748C4E24(v15, v17, 2, v28, sel_addHomeScreenShortcut);
  v20 = [v18 navigationItem];
  [v20 setRightBarButtonItem_];

  v27 = [v18 navigationItem];
  sub_2749FCE14();
  v21 = sub_2749FCD64();
  v22 = sub_2749FCD64();

  v23 = [v2 localizedStringForKey:v21 value:v22 table:0];

  v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v26 = v25;

  sub_2748B8E2C(v24, v26, v27);
}

uint64_t (*sub_274796A60())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_2747991EC;
}

uint64_t sub_274796ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_2749FD0A4();
  *(v4 + 48) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274796B54, v6, v5);
}

uint64_t sub_274796B54()
{

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_274795F28();
    if (v3 != 3)
    {
      sub_274796C04(v3);
    }

    sub_27479696C();
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_274796C04(char a1)
{
  v2 = v1;
  v4 = sub_2749FA414();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
      [v11 setAllowsEditing_];
      [v11 setDelegate_];
      [v11 setSourceType_];
    }

    else
    {
      sub_27471CF08(0, &qword_2809686A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_280968DF0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_274A0EF10;
      sub_2749FA404();
      v13 = sub_2749FA3E4();
      v15 = v14;
      (*(v6 + 8))(v10, v4);
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      v11 = sub_2747C77D4(v12, 0);
      [v11 setDelegate_];
      [v11 setModalPresentationStyle_];
    }
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D755C8]) init];
    [v11 setAllowsEditing_];
    [v11 setDelegate_];
    [v11 setSourceType_];
  }

  [v2 presentViewController:v11 animated:1 completion:0];
}

uint64_t (*sub_274796E60())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_274799104;
}

uint64_t sub_274796EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_2749FD0A4();

  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;

  sub_27479930C();
}

uint64_t sub_27479700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_2749FD0A4();
  *(v4 + 48) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747970A4, v6, v5);
}

uint64_t sub_2747970A4()
{

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationItem];
    v4 = [v3 rightBarButtonItem];

    if (v4)
    {

      v5 = sub_27487E89C();

      [v4 setEnabled_];
    }

    sub_2747969D0();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_2747971B8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong activityDidFinish_];
  }

  else
  {

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_274797298()
{
  sub_27487E8DC();

  sub_2747971B8(1);
}

void sub_274797324()
{
  swift_unknownObjectWeakInit();
  sub_2749FDAE4();
  __break(1u);
}

id AddToHomeScreenViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AddToHomeScreenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AddToHomeScreenViewController.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController *_, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  if (*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v3 = v2;
    v5 = sub_274797F40(*MEMORY[0x277D76A50]);
    if (v6)
    {
      sub_274797FD4(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v5, v13);
      sub_27471CF08(0, &qword_280968030);
      if (swift_dynamicCast())
      {
        v7 = UIImagePNGRepresentation(image);
        if (v7)
        {
          v8 = v7;
          v9 = sub_2749F9094();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0xF000000000000000;
        }

        sub_27487F32C(v9, v11);
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

Swift::Void __swiftcall AddToHomeScreenViewController.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController *_, Swift::OpaquePointer didPickDocumentsAt)
{
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    sub_2749F9064();
    v2 = objc_opt_self();
    v3 = sub_2749F9024();
    v8 = [v2 fileWithURL:v3 options:3 ofType:0];

    if (v8)
    {
      v4 = [v8 data];
      v5 = sub_2749F9094();
      v7 = v6;

      sub_27487F32C(v5, v7);
    }
  }
}

uint64_t AddToHomeScreenViewControllerRepresentable.aggregatedEntry.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2749F9494();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

id AddToHomeScreenViewControllerRepresentable.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x277D79BB8], v9);
  v16 = sub_2749FA3B4();
  (*(v11 + 8))(v15, v9);
  (*(v4 + 16))(v8, v1, v2);
  if (v16)
  {
    v17 = objc_allocWithZone(type metadata accessor for WFAddToHomeScreenViewController());
    v18 = WFAddToHomeScreenViewController.init(aggregatedEntry:activity:)(v8, 0);
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for AddToHomeScreenViewController());
    AddToHomeScreenViewController.init(aggregatedEntry:activity:)(v8, 0);
  }

  v20 = v18;
  v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v21;
}

uint64_t sub_274797B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27479846C(&qword_280968688, type metadata accessor for AddToHomeScreenViewControllerRepresentable);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_274797BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27479846C(&qword_280968688, type metadata accessor for AddToHomeScreenViewControllerRepresentable);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_274797C48()
{
  sub_27479846C(&qword_280968688, type metadata accessor for AddToHomeScreenViewControllerRepresentable);
  sub_2749FBB74();
  __break(1u);
}

unint64_t sub_274797CC0(uint64_t a1, uint64_t a2)
{
  sub_2749FDDF4();
  sub_2749FCE24();
  v4 = sub_2749FDE44();

  return sub_2747986EC(a1, a2, v4);
}

unint64_t sub_274797D38()
{
  OUTLINED_FUNCTION_7_6();
  sub_2749FD5F4();
  v0 = OUTLINED_FUNCTION_8_5();
  return sub_274798AE8(v0, v1, v2);
}

unint64_t sub_274797D7C()
{
  OUTLINED_FUNCTION_11_5();
  sub_2749F9EB4();
  v0 = MEMORY[0x277D7D388];
  sub_27479846C(&qword_280967AF0, MEMORY[0x277D7D388]);
  sub_2749FCCF4();
  v1 = OUTLINED_FUNCTION_8_5();
  return sub_2747987A0(v1, v2, v3, v4, v0, v5);
}

unint64_t sub_274797E40()
{
  OUTLINED_FUNCTION_11_5();
  sub_2749F9284();
  v0 = MEMORY[0x277CC9AF8];
  sub_27479846C(&qword_280968658, MEMORY[0x277CC9AF8]);
  sub_2749FCCF4();
  v1 = OUTLINED_FUNCTION_8_5();
  return sub_2747987A0(v1, v2, v3, v4, v0, v5);
}

unint64_t sub_274797F04()
{
  OUTLINED_FUNCTION_7_6();
  v1 = sub_2749FD8B4();

  return sub_27479892C(v0, v1);
}

unint64_t sub_274797F40(uint64_t a1)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FDDF4();
  sub_2749FCE24();
  v2 = sub_2749FDE44();

  return sub_2747989F0(a1, v2);
}

uint64_t sub_274797FD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_274798124()
{
  result = sub_2749F9314();
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

uint64_t sub_27479820C()
{
  result = sub_2749F9494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeScreenViewModel.PickerType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274798358()
{
  result = qword_280968638;
  if (!qword_280968638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968638);
  }

  return result;
}

unint64_t sub_2747983C0()
{
  result = qword_280968648;
  if (!qword_280968648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968648);
  }

  return result;
}

unint64_t sub_274798418()
{
  result = qword_280968650;
  if (!qword_280968650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968650);
  }

  return result;
}

uint64_t sub_27479846C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2747984B4()
{
  OUTLINED_FUNCTION_7_6();
  sub_2749FD5F4();
  v0 = OUTLINED_FUNCTION_8_5();
  return sub_274798AE8(v0, v1, v2);
}

unint64_t sub_2747984F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_2749FDDF4();
  switch(a3)
  {
    case 1u:
      v7 = 1;
      goto LABEL_7;
    case 2u:
      v7 = 3;
LABEL_7:
      MEMORY[0x277C5FB60](v7);
      sub_2749FCE24();
      goto LABEL_10;
    case 3u:
      if (a1 | a2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_9;
    default:
      MEMORY[0x277C5FB60](0);
      v6 = 0;
LABEL_9:
      MEMORY[0x277C5FB60](v6);
LABEL_10:
      v8 = sub_2749FDE44();

      return sub_274798BB8(a1, a2, a3, v8);
  }
}

unint64_t sub_2747985F4()
{
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x277C5FB60](v0);
  v1 = sub_2749FDE44();

  return sub_274798F50(v0, v1);
}

unint64_t sub_274798650()
{
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x277C5FB60](v0 & 1);
  v1 = sub_2749FDE44();
  return sub_274798FB0(v0 & 1, v1);
}

unint64_t sub_2747986A8(uint64_t a1)
{
  v2 = sub_2749FDDE4();

  return sub_274799094(a1, v2);
}

unint64_t sub_2747986EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2749FDCC4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2747987A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a1;
  v8 = a3(0);
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v23 = v6 + 64;
  v19 = v6;
  v14 = ~(-1 << *(v6 + 32));
  for (i = a2 & v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_27479846C(v20, v21);
    v16 = sub_2749FCD54();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_27479892C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_274799038(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x277C5F620](v8, a1);
    sub_27477EED0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2747989F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
    if (v5 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v7 == v8)
    {

      return i;
    }

    v10 = sub_2749FDCC4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_274798AE8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = v3;
  v6 = v3 + 64;
  v7 = ~(-1 << *(v3 + 32));
  for (i = a2 & v7; ((1 << i) & *(v6 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_27471CF08(0, a3);
    v9 = *(*(v5 + 48) + 8 * i);
    v10 = sub_2749FD604();

    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_274798BB8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v30 = ~v5;
  v10 = a3 != 3;
  v11 = a3 == 3;
  if (a2 | a1)
  {
    v11 = 0;
  }

  if (a1 != 1 || a2 != 0)
  {
    v10 = 1;
  }

  v28 = v11;
  v29 = v10;
  while (2)
  {
    v13 = *(v4 + 48) + 24 * v6;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    switch(v16)
    {
      case 1u:
        if (a3 != 1)
        {
          sub_27477D408(a1, a2, a3);
          v21 = v15;
          v22 = v14;
          v23 = 1;
          goto LABEL_34;
        }

        if (v15 == a1 && v14 == a2)
        {
          sub_27477D408(a1, a2, 1u);
          sub_27477D408(a1, a2, 1u);
          sub_27478C4DC(a1, a2, 1u);
          v24 = a1;
          v25 = a2;
          v26 = 1;
          goto LABEL_40;
        }

        v20 = sub_2749FDCC4();
        sub_27477D408(a1, a2, 1u);
        sub_27477D408(v15, v14, 1u);
        sub_27478C4DC(v15, v14, 1u);
        sub_27478C4DC(a1, a2, 1u);
        if ((v20 & 1) == 0)
        {
          goto LABEL_35;
        }

        return v6;
      case 2u:
        if (a3 != 2)
        {
          sub_27477D408(a1, a2, a3);
          v21 = v15;
          v22 = v14;
          v23 = 2;
          goto LABEL_34;
        }

        if (v15 == a1 && v14 == a2)
        {
          sub_27477D408(a1, a2, 2u);
          sub_27477D408(a1, a2, 2u);
          sub_27478C4DC(a1, a2, 2u);
          v24 = a1;
          v25 = a2;
          v26 = 2;
          goto LABEL_40;
        }

        v18 = sub_2749FDCC4();
        sub_27477D408(a1, a2, 2u);
        sub_27477D408(v15, v14, 2u);
        sub_27478C4DC(v15, v14, 2u);
        sub_27478C4DC(a1, a2, 2u);
        if ((v18 & 1) == 0)
        {
          goto LABEL_35;
        }

        return v6;
      case 3u:
        if (v15 | v14)
        {
          if (v29)
          {
            goto LABEL_33;
          }

          sub_27478C4DC(v15, v14, 3u);
          v24 = 1;
          v25 = 0;
          v26 = 3;
        }

        else
        {
          if (!v28)
          {
            goto LABEL_33;
          }

          sub_27478C4DC(v15, v14, 3u);
          v24 = 0;
          v25 = 0;
          v26 = 3;
        }

        goto LABEL_40;
      default:
        if (a3)
        {
LABEL_33:
          v21 = a1;
          v22 = a2;
          v23 = a3;
LABEL_34:
          sub_27477D408(v21, v22, v23);
          sub_27478C4DC(v15, v14, v16);
          sub_27478C4DC(a1, a2, a3);
LABEL_35:
          v6 = (v6 + 1) & v30;
          if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          continue;
        }

        sub_27478C4DC(*v13, *(v13 + 8), 0);
        v24 = a1;
        v25 = a2;
        v26 = 0;
LABEL_40:
        sub_27478C4DC(v24, v25, v26);
        return v6;
    }
  }
}

unint64_t sub_274798F50(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_274798FB0(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_274799094(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_27479913C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_7(v1);

  return sub_27479700C(v2, v3, v4, v5);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_274799264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_5_7(v1);

  return sub_274796ABC(v2, v3, v4, v5);
}

void sub_27479930C()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_61_0();
  v11 = OUTLINED_FUNCTION_70_1();
  sub_274738558(v11, v12, &unk_28096C960);
  v13 = sub_2749FD0E4();
  v14 = OUTLINED_FUNCTION_118_1(v0);

  if (v14 == 1)
  {
    sub_27472ECBC(v0, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    (*(*(v13 - 8) + 8))(v0, v13);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27472ECBC(v6, &unk_28096C960);
    OUTLINED_FUNCTION_32_2();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2749FD044();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_100_1();
  sub_2749FCE04();
  OUTLINED_FUNCTION_32_2();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_27472ECBC(v6, &unk_28096C960);

LABEL_9:
  OUTLINED_FUNCTION_46();
}

void sub_2747995BC()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_34(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_61_0();
  v11 = OUTLINED_FUNCTION_70_1();
  sub_274738558(v11, v12, &unk_28096C960);
  v13 = sub_2749FD0E4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_27472ECBC(v0, &unk_28096C960);
  }

  else
  {
    sub_2749FD0D4();
    v15 = OUTLINED_FUNCTION_121();
    v16(v15);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_27472ECBC(v6, &unk_28096C960);
    OUTLINED_FUNCTION_32_2();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_2749FD044();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_100_1();
  sub_2749FCE04();
  OUTLINED_FUNCTION_32_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968718);
  swift_task_create();
  OUTLINED_FUNCTION_78();

  sub_27472ECBC(v6, &unk_28096C960);

LABEL_9:
  OUTLINED_FUNCTION_46();
}

uint64_t static GalleryShortcutDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v5 == 1)
      {
        sub_27471CF08(0, &qword_28159E390);
        v6 = OUTLINED_FUNCTION_63();
        sub_2747A3140(v6, v7, 1);
        v8 = OUTLINED_FUNCTION_45();
        sub_2747A3140(v8, v9, 1);
        OUTLINED_FUNCTION_78_1();
        v10 = sub_2749FD604();
        v11 = OUTLINED_FUNCTION_45();
        sub_27476D24C(v11, v12, 1);
        v13 = OUTLINED_FUNCTION_63();
        v15 = 1;
LABEL_13:
        sub_27476D24C(v13, v14, v15);
        return v10 & 1;
      }
    }

    else if (v5 == 2)
    {
      sub_27471CF08(0, &qword_28159E390);
      v24 = OUTLINED_FUNCTION_63();
      sub_2747A3140(v24, v25, 2);
      v26 = OUTLINED_FUNCTION_45();
      sub_2747A3140(v26, v27, 2);
      OUTLINED_FUNCTION_78_1();
      v10 = sub_2749FD604();
      v28 = OUTLINED_FUNCTION_45();
      sub_27476D24C(v28, v29, 2);
      v13 = OUTLINED_FUNCTION_63();
      v15 = 2;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (*(a2 + 16))
  {
LABEL_14:
    v31 = OUTLINED_FUNCTION_63();
    sub_2747A3140(v31, v32, v5);
    v33 = OUTLINED_FUNCTION_45();
    sub_2747A3140(v33, v34, v4);
    v35 = OUTLINED_FUNCTION_45();
    sub_27476D24C(v35, v36, v4);
    v37 = OUTLINED_FUNCTION_63();
    sub_27476D24C(v37, v38, v5);
    return 0;
  }

  v16 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    v10 = sub_2749FDCC4();
    v18 = OUTLINED_FUNCTION_63();
    sub_2747A3140(v18, v19, 0);
    v20 = OUTLINED_FUNCTION_45();
    sub_2747A3140(v20, v21, 0);
    v22 = OUTLINED_FUNCTION_45();
    sub_27476D24C(v22, v23, 0);
    v13 = OUTLINED_FUNCTION_63();
    v15 = 0;
    goto LABEL_13;
  }

  sub_2747A3140(v16, v2, 0);
  v39 = OUTLINED_FUNCTION_45();
  sub_2747A3140(v39, v40, 0);
  v41 = OUTLINED_FUNCTION_45();
  sub_27476D24C(v41, v42, 0);
  v43 = OUTLINED_FUNCTION_45();
  sub_27476D24C(v43, v44, 0);
  return 1;
}

uint64_t GalleryShortcutDescriptor.hash(into:)()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    MEMORY[0x277C5FB60](v1);
    return sub_2749FD614();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_45();

    return sub_2749FCE24();
  }
}

uint64_t GalleryShortcutDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_99_0();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x277C5FB60](v2);
    sub_2749FD614();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
    OUTLINED_FUNCTION_68();
    sub_2749FCE24();
  }

  return sub_2749FDE44();
}

uint64_t sub_274799B84()
{
  sub_2749FDDF4();
  GalleryShortcutDescriptor.hash(into:)();
  return sub_2749FDE44();
}

uint64_t static GalleryCollectionDescriptor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_2749FDCC4();
        OUTLINED_FUNCTION_66();
        sub_2747A3168();
        OUTLINED_FUNCTION_32_1();
        sub_2747A3168();
        OUTLINED_FUNCTION_32_1();
        sub_27476D244();
        OUTLINED_FUNCTION_66();
        goto LABEL_16;
      }

      sub_2747A3168();
      OUTLINED_FUNCTION_32_1();
      sub_2747A3168();
      OUTLINED_FUNCTION_32_1();
      sub_27476D244();
      OUTLINED_FUNCTION_32_1();
      sub_27476D244();
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_66();
    sub_2747A3168();
    OUTLINED_FUNCTION_32_1();
    sub_2747A3168();
    OUTLINED_FUNCTION_32_1();
    sub_27476D244();
    OUTLINED_FUNCTION_66();
    sub_27476D244();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    OUTLINED_FUNCTION_32_1();
    sub_2747A3168();
    OUTLINED_FUNCTION_32_1();
    sub_2747A3168();
    OUTLINED_FUNCTION_32_1();
    sub_27476D244();
    OUTLINED_FUNCTION_32_1();
    sub_27476D244();
    return v8;
  }

  OUTLINED_FUNCTION_32_1();
  v7 = sub_2749FDCC4();
  OUTLINED_FUNCTION_66();
  sub_2747A3168();
  OUTLINED_FUNCTION_32_1();
  sub_2747A3168();
  OUTLINED_FUNCTION_32_1();
  sub_27476D244();
  OUTLINED_FUNCTION_66();
LABEL_16:
  sub_27476D244();
  return v7 & 1;
}

uint64_t GalleryCollectionDescriptor.hash(into:)()
{
  MEMORY[0x277C5FB60](*(v0 + 16));

  return sub_2749FCE24();
}

uint64_t GalleryCollectionDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](v1);
  OUTLINED_FUNCTION_68();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_274799E2C()
{
  v1 = *(v0 + 16);
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t static GalleryNavigationDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v66[0] = *a1;
  v66[1] = v3;
  v66[2] = v5;
  v66[3] = v4;
  v67 = v6;
  v68 = v7;
  v69 = v8;
  v70 = v10;
  v71 = v9;
  v72 = v11;
  switch(v6 >> 5)
  {
    case 1u:
      if ((v11 & 0xE0) != 0x20)
      {
        goto LABEL_29;
      }

      if (!v3)
      {
        if (v8)
        {
          v48 = OUTLINED_FUNCTION_6_3();
          sub_2747A3170(v48, v49, v50, v51, v52);
          v39 = v2;
          v40 = 0;
          goto LABEL_31;
        }

        goto LABEL_41;
      }

      if (v8)
      {
        v36 = v2 == v7 && v3 == v8;
        if (v36 || (OUTLINED_FUNCTION_29_1(), (sub_2749FDCC4() & 1) != 0))
        {
LABEL_41:
          v63 = v5;
          v64 = v4;
          v65 = v6 & 1;
          v60 = v10;
          v61 = v9;
          v62 = v11 & 1;
          v53 = OUTLINED_FUNCTION_6_3();
          sub_2747A3170(v53, v54, v55, v56, v57);
          OUTLINED_FUNCTION_15_4();
          OUTLINED_FUNCTION_32_1();
          sub_2747A3168();
          OUTLINED_FUNCTION_99();
          sub_2747A3168();
          v18 = static GalleryCollectionDescriptor.== infix(_:_:)(&v63, &v60);
          sub_27472ECBC(v66, &qword_2809686F0);
          OUTLINED_FUNCTION_99();
          sub_27476D244();
          OUTLINED_FUNCTION_32();
          sub_27476D244();
          return v18 & 1;
        }

LABEL_29:
        v37 = v7;
        v38 = v8;
      }

      else
      {
        v37 = v7;
        v38 = 0;
      }

      sub_2747A3170(v37, v38, v10, v9, v11);
      v39 = OUTLINED_FUNCTION_29_1();
LABEL_31:
      sub_2747A3170(v39, v40, v5, v4, v6);
      sub_27472ECBC(v66, &qword_2809686F0);
      v18 = 0;
      return v18 & 1;
    case 2u:
      if ((v11 & 0xE0) != 0x40)
      {
        goto LABEL_29;
      }

      sub_27471CF08(0, &qword_28159E390);
      v13 = OUTLINED_FUNCTION_6_3();
      sub_2747A3170(v13, v14, v15, v16, v17);
      OUTLINED_FUNCTION_15_4();
      v18 = sub_2749FD604();
      sub_27472ECBC(v66, &qword_2809686F0);
      return v18 & 1;
    case 3u:
      if ((v11 & 0xE0) != 0x60)
      {
        goto LABEL_29;
      }

      v63 = v2;
      v64 = v3;
      v65 = v5;
      v60 = v7;
      v61 = v8;
      v62 = v10;
      v19 = OUTLINED_FUNCTION_6_3();
      sub_2747A3170(v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_15_4();
      v24 = OUTLINED_FUNCTION_6_3();
      sub_2747A3170(v24, v25, v26, v27, v28);
      OUTLINED_FUNCTION_15_4();
      v58 = v4;
      v18 = static GalleryShortcutDescriptor.== infix(_:_:)(&v63, &v60);
      sub_27472ECBC(v66, &qword_2809686F0);
      v29 = OUTLINED_FUNCTION_6_3();
      sub_274725D44(v29, v30, v31, v32, v33);
      v34 = OUTLINED_FUNCTION_29_1();
      sub_274725D44(v34, v35, v5, v58, v6);
      return v18 & 1;
    case 4u:
      if ((v11 & 0xE0) != 0x80 || v8 | v7 | v10 | v9 || v11 != 128)
      {
        goto LABEL_29;
      }

      goto LABEL_44;
    default:
      if (v11 >= 0x20)
      {
        goto LABEL_29;
      }

      if (v3)
      {
        if (!v8)
        {
          goto LABEL_29;
        }

        if (v2 != v7 || v3 != v8)
        {
          OUTLINED_FUNCTION_29_1();
          if ((sub_2749FDCC4() & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v8)
      {
        goto LABEL_29;
      }

      if (v5 != v10 || v4 != v9)
      {
        OUTLINED_FUNCTION_32_1();
        v59 = OUTLINED_FUNCTION_116_2();
        v43 = OUTLINED_FUNCTION_6_3();
        sub_2747A3170(v43, v44, v45, v46, v47);
        OUTLINED_FUNCTION_15_4();
        sub_27472ECBC(v66, &qword_2809686F0);
        return v59 & 1;
      }

      sub_2747A3170(v7, v8, v5, v4, v11);
      OUTLINED_FUNCTION_15_4();
LABEL_44:
      sub_27472ECBC(v66, &qword_2809686F0);
      v18 = 1;
      return v18 & 1;
  }
}

void GalleryNavigationDestination.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  switch(v3 >> 5)
  {
    case 1u:
      MEMORY[0x277C5FB60](2);
      if (v1)
      {
        sub_2749FDE14();
        OUTLINED_FUNCTION_68_1();
        sub_2749FCE24();
        if (v3)
        {
LABEL_11:
          v5 = 1;
LABEL_15:
          MEMORY[0x277C5FB60](v5);
          goto LABEL_16;
        }
      }

      else
      {
        sub_2749FDE14();
        if (v3)
        {
          goto LABEL_11;
        }
      }

      v5 = 0;
      goto LABEL_15;
    case 2u:
      v4 = 3;
      goto LABEL_21;
    case 3u:
      MEMORY[0x277C5FB60](4);
      if (v2)
      {
        if (v2 == 1)
        {
          v4 = 1;
        }

        else
        {
          v4 = 2;
        }

LABEL_21:
        MEMORY[0x277C5FB60](v4);
        sub_2749FD614();
LABEL_22:
        OUTLINED_FUNCTION_50_0();
      }

      else
      {
        MEMORY[0x277C5FB60](0);
        OUTLINED_FUNCTION_68_1();
LABEL_16:
        OUTLINED_FUNCTION_50_0();

        sub_2749FCE24();
      }

      return;
    case 4u:
      MEMORY[0x277C5FB60](0);
      goto LABEL_22;
    default:
      MEMORY[0x277C5FB60](1);
      sub_2749FDE14();
      if (v1)
      {
        OUTLINED_FUNCTION_68_1();
        sub_2749FCE24();
      }

      goto LABEL_16;
  }
}

uint64_t GalleryNavigationDestination.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  GalleryNavigationDestination.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_27479A40C()
{
  sub_2749FDDF4();
  GalleryNavigationDestination.hash(into:)();
  return sub_2749FDE44();
}

uint64_t OpenWorkflowOptions.actionError.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t OpenWorkflowOptions.onOpen.getter()
{
  v0 = OUTLINED_FUNCTION_44();
  sub_27473A658(v0);
  return OUTLINED_FUNCTION_44();
}

void sub_27479A504()
{
  qword_2809686A8 = 0;
  byte_2809686B0 = 1;
  qword_2809686C0 = 0;
  unk_2809686C8 = 0;
  qword_2809686B8 = 0;
  unk_2809686CF = 0;
  qword_2809686E0 = 0;
  unk_2809686E8 = 0;
  qword_2809686D8 = 0;
}

__n128 OpenWorkflowOptions.init(scrolledToActionIndex:actionError:isNewWorkflow:showIconPicker:isEmbeddedInAutomation:triggerInputType:onOpen:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, unint64_t a10)
{
  v10 = a3[1].n128_u64[0];
  a9->n128_u64[0] = a1;
  a9->n128_u8[8] = a2 & 1;
  result = *a3;
  a9[1] = *a3;
  a9[2].n128_u64[0] = v10;
  a9[2].n128_u8[8] = a4;
  a9[2].n128_u8[9] = a5;
  a9[2].n128_u8[10] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4].n128_u64[0] = a10;
  return result;
}

uint64_t static OpenWorkflowOptions.default.getter()
{
  if (qword_280966BB8 != -1)
  {
    OUTLINED_FUNCTION_42_2();
  }

  memcpy(__dst, &qword_2809686A8, sizeof(__dst));
  v0 = OUTLINED_FUNCTION_44();
  memcpy(v0, v1, 0x48uLL);
  return sub_2747A3270(__dst, &v3);
}

uint64_t WorkflowOpener.openWorkflow(_:)()
{
  OUTLINED_FUNCTION_41_0();
  if (qword_280966BB8 != -1)
  {
    OUTLINED_FUNCTION_42_2();
  }

  memcpy(__dst, &qword_2809686A8, sizeof(__dst));
  memcpy(__src, &qword_2809686A8, sizeof(__src));
  v1 = *(v0 + 8);
  sub_2747A3270(__dst, v5);
  OUTLINED_FUNCTION_93_1();
  v1();
  OUTLINED_FUNCTION_84();
  memcpy(v5, __src, sizeof(v5));
  sub_2747A32A8(v5);
  return OUTLINED_FUNCTION_44();
}

uint64_t RootNavigationDestination.symbolName.getter()
{
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_0_9();
  v2 = OUTLINED_FUNCTION_32();
  sub_274723238(v2, v3, v4);
  OUTLINED_FUNCTION_45();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = *v0;
      WFWorkflowTypeName.symbolName.getter();
      OUTLINED_FUNCTION_34_1();
      goto LABEL_6;
    case 2u:
      v5 = *v0;
      v6 = [v5 systemIconName];
      if (v6)
      {
        v7 = v6;
        _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        OUTLINED_FUNCTION_34_1();
      }

LABEL_6:

      break;
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      return OUTLINED_FUNCTION_32_1();
    default:
      sub_274722658(v0, type metadata accessor for RootNavigationDestination);
      break;
  }

  return OUTLINED_FUNCTION_32_1();
}

uint64_t RootNavigationDestination.dropBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_93();
  sub_274723238(v4, v5, v6);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      *a1 = *v1;
      v8 = 1;
      goto LABEL_7;
    case 2:
      *a1 = *v1;
      *(a1 + 8) = 0;
      return result;
    case 5:
      *a1 = 1;
      v8 = 2;
LABEL_7:
      *(a1 + 8) = v8;
      return result;
  }

  *a1 = 0;
  *(a1 + 8) = 2;
  OUTLINED_FUNCTION_1_10();
  return sub_274722658(v1, v9);
}

void RootNavigationDestination.countOfItems(in:autoShortcutsDataSource:)(unint64_t a1)
{
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_93();
  sub_274723238(v4, v5, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = *v1;
      v8 = [a1 sortedVisibleWorkflowsWithType_];
      a1 = [v8 count];

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_4;
      }

      break;
    case 2u:
      v11 = *v1;
      v12 = [a1 sortedVisibleWorkflowsInCollection_];
      a1 = [v12 count];

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_11;
      }

      break;
    case 5u:
LABEL_4:
      if (([a1 countOfAllVisibleWorkflows] & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_16;
      }

      break;
    case 6u:
LABEL_11:
      v13 = [a1 allConfiguredTriggers];
      a1 = [v13 count];

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_13;
      }

      break;
    case 7u:
LABEL_13:
      v14 = [a1 recentlyModifiedShortcuts];
      v15 = [v14 count];

      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_16:
        __break(1u);
      }

      break;
    case 8u:
      v1 = [a1 recentlyRunShortcuts];
      v9 = [v1 count];

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_8;
      }

      break;
    default:
LABEL_8:
      OUTLINED_FUNCTION_1_10();
      sub_274722658(v1, v10);
      break;
  }
}

void static RootNavigationDestination.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v101 = v5;
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v100 = v7 - v6;
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v99 - v13);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v99 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809686F8);
  OUTLINED_FUNCTION_34(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_67();
  v21 = v0 + *(v20 + 56);
  sub_274723238(v3, v0, type metadata accessor for RootNavigationDestination);
  v22 = OUTLINED_FUNCTION_29_1();
  sub_274723238(v22, v23, type metadata accessor for RootNavigationDestination);
  OUTLINED_FUNCTION_100_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_9();
      sub_274723238(v0, v1, v49);
      v50 = *v1;
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_29;
      }

      v51 = *v21;
      v52 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v54 = v53;
      if (v52 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v54 != v55)
      {
        sub_2749FDCC4();
      }

      goto LABEL_34;
    case 2u:
      OUTLINED_FUNCTION_0_9();
      v36 = OUTLINED_FUNCTION_80_1();
      sub_274723238(v36, v37, v38);
      v39 = *v14;
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v40 = *v21;
        sub_27471CF08(0, &qword_28159E390);
        OUTLINED_FUNCTION_119();
        sub_2749FD604();

        goto LABEL_10;
      }

      goto LABEL_29;
    case 3u:
      OUTLINED_FUNCTION_0_9();
      v41 = OUTLINED_FUNCTION_99();
      sub_274723238(v41, v42, v43);
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (v101)[1](v11, v102);
        goto LABEL_29;
      }

      v45 = v100;
      v44 = v101;
      v46 = v102;
      (v101[4])(v100, v21, v102);
      sub_2749F94E4();
      v47 = v44[1];
      v47(v45, v46);
      v47(v11, v46);
LABEL_10:
      OUTLINED_FUNCTION_1_10();
      sub_274722658(v0, v48);
      goto LABEL_36;
    case 4u:
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    case 5u:
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    case 6u:
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    case 7u:
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_34;
      }

      goto LABEL_29;
    case 8u:
      OUTLINED_FUNCTION_34_2();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_29;
      }

LABEL_34:
      OUTLINED_FUNCTION_1_10();
      v69 = v0;
      goto LABEL_35;
    default:
      OUTLINED_FUNCTION_0_9();
      v24 = v0;
      sub_274723238(v0, v17, v25);
      v27 = *v17;
      v26 = *(v17 + 1);
      v29 = *(v17 + 2);
      v28 = *(v17 + 3);
      v30 = v17[32];
      OUTLINED_FUNCTION_34_2();
      if (!swift_getEnumCaseMultiPayload())
      {
        v57 = *v21;
        v58 = *(v21 + 8);
        v60 = *(v21 + 16);
        v59 = *(v21 + 24);
        v61 = *(v21 + 32);
        if (v30 <= 0xFD)
        {
          v105[0] = v27;
          v105[1] = v26;
          v105[2] = v29;
          v105[3] = v28;
          v106 = v30;
          if (v61 <= 0xFD)
          {
            v103[0] = v57;
            v103[1] = v58;
            v103[2] = v60;
            v103[3] = v59;
            v104 = v61;
            v101 = v57;
            v85 = OUTLINED_FUNCTION_36_3();
            v87 = v86;
            sub_2747A36C4(v85, v88, v29, v28, v30);
            LODWORD(v102) = static GalleryNavigationDestination.== infix(_:_:)(v105, v103);
            sub_274725D44(v101, v58, v60, v87, v61);
            v89 = OUTLINED_FUNCTION_5_8();
            sub_274725D44(v89, v90, v91, v92, v93);
            v94 = OUTLINED_FUNCTION_5_8();
            sub_274725D30(v94, v95, v96, v97, v98);
LABEL_41:
            OUTLINED_FUNCTION_1_10();
            v69 = v24;
LABEL_35:
            sub_274722658(v69, v68);
            goto LABEL_36;
          }

          v62 = v57;
          v102 = v59;
          v70 = OUTLINED_FUNCTION_5_8();
          sub_2747A36C4(v70, v71, v72, v73, v74);
          v75 = OUTLINED_FUNCTION_5_8();
          sub_274725D44(v75, v76, v77, v78, v79);
        }

        else
        {
          v62 = *v21;
          v102 = v59;
          if (v61 > 0xFD)
          {
            v63 = OUTLINED_FUNCTION_5_8();
            sub_274725D30(v63, v64, v65, v66, v67);
            goto LABEL_41;
          }
        }

        v80 = OUTLINED_FUNCTION_5_8();
        sub_274725D30(v80, v81, v82, v83, v84);
        sub_274725D30(v62, v58, v60, v102, v61);
        goto LABEL_41;
      }

      v31 = OUTLINED_FUNCTION_5_8();
      sub_274725D30(v31, v32, v33, v34, v35);
      v0 = v24;
LABEL_29:
      sub_27472ECBC(v0, &qword_2809686F8);
LABEL_36:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void RootNavigationDestination.hash(into:)()
{
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_0_9();
  sub_274723238(v0, v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v0;
      MEMORY[0x277C5FB60](6);
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      sub_2749FCE24();

      break;
    case 2u:
      v8 = *v0;
      MEMORY[0x277C5FB60](7);
      sub_2749FD614();

      break;
    case 3u:
      v9 = OUTLINED_FUNCTION_70_1();
      v10(v9);
      MEMORY[0x277C5FB60](8);
      sub_274721580(&qword_280967B98, MEMORY[0x277D7BE80]);
      sub_2749FCD04();
      v11 = OUTLINED_FUNCTION_66();
      v12(v11);
      break;
    case 4u:
      v7 = 1;
      goto LABEL_12;
    case 5u:
      v7 = 2;
      goto LABEL_12;
    case 6u:
      v7 = 3;
      goto LABEL_12;
    case 7u:
      v7 = 4;
      goto LABEL_12;
    case 8u:
      v7 = 5;
LABEL_12:
      MEMORY[0x277C5FB60](v7);
      break;
    default:
      v4 = *(v0 + 16);
      v5 = *(v0 + 24);
      v6 = *(v0 + 32);
      MEMORY[0x277C5FB60](0);
      sub_2749FDE14();
      if (v6 < 0xFE)
      {
        GalleryNavigationDestination.hash(into:)();
        v14 = OUTLINED_FUNCTION_66_2();
        sub_274725D44(v14, v15, v4, v5, v6);
      }

      break;
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t RootNavigationDestination.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  RootNavigationDestination.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_27479B3C0()
{
  sub_2749FDDF4();
  RootNavigationDestination.hash(into:)();
  return sub_2749FDE44();
}

uint64_t sub_27479B3FC@<X0>(uint64_t *a1@<X8>)
{
  result = RootNavigationDestination.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RootNavigationContext.TransitionType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t RootNavigationContext.pptTest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_2747A36D8(v2, v3);
}

uint64_t LibraryLayoutMode.accessibilityLabel.getter()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = qword_28159E448;
  OUTLINED_FUNCTION_32();
  v1 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v2 = sub_2749FCD64();

  v3 = OUTLINED_FUNCTION_65_3(v0, sel_localizedStringForKey_value_table_, v1);

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_84();

  return OUTLINED_FUNCTION_44();
}

WorkflowUI::LibraryLayoutMode_optional __swiftcall LibraryLayoutMode.init(rawValue:)(Swift::String rawValue)
{
  sub_2749FDB74();
  OUTLINED_FUNCTION_78();

  if (v1 == 1)
  {
    v2.value = WorkflowUI_LibraryLayoutMode_grid;
  }

  else
  {
    v2.value = WorkflowUI_LibraryLayoutMode_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

WorkflowUI::LibraryLayoutMode_optional sub_27479B688@<W0>(Swift::String *a1@<X0>, WorkflowUI::LibraryLayoutMode_optional *a2@<X8>)
{
  result.value = LibraryLayoutMode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_27479B6B8@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryLayoutMode.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

void RootView.scroll(toWorkflow:animated:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v45 = v7;
  v8 = type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v49 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968700) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_67();
  v14 = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v14);
  v16 = OUTLINED_FUNCTION_34(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_1();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *(v4 + 88);
  v47 = v4;
  v48 = v0;
  v46 = v6;
  v22(v6, v4);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  v23 = *(v12 + 56);
  OUTLINED_FUNCTION_93_1();
  sub_274738558(v24, v25, v26);
  OUTLINED_FUNCTION_93_1();
  sub_274738558(v27, v28, v29);
  if (OUTLINED_FUNCTION_118_1(v1) == 1)
  {
    OUTLINED_FUNCTION_68();
    sub_27472ECBC(v30, v31);
    OUTLINED_FUNCTION_68();
    sub_27472ECBC(v32, v33);
    if (OUTLINED_FUNCTION_118_1(v1 + v23) == 1)
    {
      sub_27472ECBC(v1, &qword_280967850);
      goto LABEL_11;
    }
  }

  else
  {
    v34 = v44;
    sub_274738558(v1, v44, &qword_280967850);
    if (OUTLINED_FUNCTION_118_1(v1 + v23) != 1)
    {
      v36 = v49;
      sub_2747A377C(v1 + v23, v49);
      static RootNavigationDestination.== infix(_:_:)();
      v43 = v42;
      sub_274722658(v36, type metadata accessor for RootNavigationDestination);
      sub_27472ECBC(v2, &qword_280967850);
      sub_27472ECBC(v21, &qword_280967850);
      sub_274722658(v34, type metadata accessor for RootNavigationDestination);
      sub_27472ECBC(v1, &qword_280967850);
      if (v43)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    sub_27472ECBC(v2, &qword_280967850);
    sub_27472ECBC(v21, &qword_280967850);
    OUTLINED_FUNCTION_1_10();
    sub_274722658(v34, v35);
  }

  sub_27472ECBC(v1, &qword_280968700);
  v36 = v49;
LABEL_7:
  swift_storeEnumTagMultiPayload();
  if (v45)
  {
    v37 = 0x100010101;
  }

  else
  {
    v37 = 0x100000101;
  }

  v50 = v37;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  OUTLINED_FUNCTION_24();
  RootView.navigate(to:with:completion:)();
  OUTLINED_FUNCTION_24();
  sub_2747A371C(v38, v39, v40);
  OUTLINED_FUNCTION_1_10();
  sub_274722658(v36, v41);
LABEL_11:
  OUTLINED_FUNCTION_46();
}