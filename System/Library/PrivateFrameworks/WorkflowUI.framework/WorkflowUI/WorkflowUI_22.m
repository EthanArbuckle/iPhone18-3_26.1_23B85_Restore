_BYTE *sub_27493CA40(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_6_29(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_27493CB18(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_53_0(a1);
}

_BYTE *sub_27493CB64(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_27493CC14()
{
  result = qword_280970340;
  if (!qword_280970340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970340);
  }

  return result;
}

unint64_t sub_27493CC6C()
{
  result = qword_280970348;
  if (!qword_280970348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970348);
  }

  return result;
}

unint64_t sub_27493CCC4()
{
  result = qword_280970350;
  if (!qword_280970350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970350);
  }

  return result;
}

unint64_t sub_27493CD1C()
{
  result = qword_280970358;
  if (!qword_280970358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970358);
  }

  return result;
}

unint64_t sub_27493CD74()
{
  result = qword_280970360;
  if (!qword_280970360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970360);
  }

  return result;
}

unint64_t sub_27493CDCC()
{
  result = qword_280970368;
  if (!qword_280970368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970368);
  }

  return result;
}

unint64_t sub_27493CE24()
{
  result = qword_280970370;
  if (!qword_280970370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970370);
  }

  return result;
}

unint64_t sub_27493CE7C()
{
  result = qword_280970378;
  if (!qword_280970378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970378);
  }

  return result;
}

unint64_t sub_27493CED4()
{
  result = qword_280970380;
  if (!qword_280970380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970380);
  }

  return result;
}

unint64_t sub_27493CF2C()
{
  result = qword_280970388;
  if (!qword_280970388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970388);
  }

  return result;
}

unint64_t sub_27493CF84()
{
  result = qword_280970390;
  if (!qword_280970390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970390);
  }

  return result;
}

unint64_t sub_27493CFDC()
{
  result = qword_280970398;
  if (!qword_280970398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970398);
  }

  return result;
}

unint64_t sub_27493D034()
{
  result = qword_2809703A0;
  if (!qword_2809703A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703A0);
  }

  return result;
}

unint64_t sub_27493D08C()
{
  result = qword_2809703A8;
  if (!qword_2809703A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703A8);
  }

  return result;
}

unint64_t sub_27493D0E4()
{
  result = qword_2809703B0;
  if (!qword_2809703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703B0);
  }

  return result;
}

unint64_t sub_27493D13C()
{
  result = qword_2809703B8;
  if (!qword_2809703B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703B8);
  }

  return result;
}

unint64_t sub_27493D194()
{
  result = qword_2809703C0;
  if (!qword_2809703C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703C0);
  }

  return result;
}

unint64_t sub_27493D1EC()
{
  result = qword_2809703C8;
  if (!qword_2809703C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703C8);
  }

  return result;
}

unint64_t sub_27493D244()
{
  result = qword_2809703D0;
  if (!qword_2809703D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703D0);
  }

  return result;
}

unint64_t sub_27493D29C()
{
  result = qword_2809703D8;
  if (!qword_2809703D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703D8);
  }

  return result;
}

unint64_t sub_27493D2F4()
{
  result = qword_2809703E0;
  if (!qword_2809703E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703E0);
  }

  return result;
}

unint64_t sub_27493D34C()
{
  result = qword_2809703E8;
  if (!qword_2809703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703E8);
  }

  return result;
}

unint64_t sub_27493D3A4()
{
  result = qword_2809703F0;
  if (!qword_2809703F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703F0);
  }

  return result;
}

unint64_t sub_27493D3FC()
{
  result = qword_2809703F8;
  if (!qword_2809703F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809703F8);
  }

  return result;
}

unint64_t sub_27493D454()
{
  result = qword_280970400;
  if (!qword_280970400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970400);
  }

  return result;
}

unint64_t sub_27493D4AC()
{
  result = qword_280970408;
  if (!qword_280970408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970408);
  }

  return result;
}

unint64_t sub_27493D504()
{
  result = qword_280970410;
  if (!qword_280970410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970410);
  }

  return result;
}

unint64_t sub_27493D55C()
{
  result = qword_280970418;
  if (!qword_280970418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970418);
  }

  return result;
}

unint64_t sub_27493D5B4()
{
  result = qword_280970420;
  if (!qword_280970420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970420);
  }

  return result;
}

unint64_t sub_27493D60C()
{
  result = qword_280970428;
  if (!qword_280970428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970428);
  }

  return result;
}

unint64_t sub_27493D664()
{
  result = qword_280970430;
  if (!qword_280970430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970430);
  }

  return result;
}

unint64_t sub_27493D6B8()
{
  result = qword_280970438;
  if (!qword_280970438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970438);
  }

  return result;
}

uint64_t sub_27493D70C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_27493D788()
{
  result = qword_2809707A0;
  if (!qword_2809707A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809707A0);
  }

  return result;
}

void *OUTLINED_FUNCTION_49_7()
{

  return memcpy((v1 - 232), (v0 + 336), 0x81uLL);
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.__allocating_init(trigger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SmartShortcutPickerTriggerSuggestionsDataSource.init(trigger:)(a1);
  return v2;
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27493D968@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerTriggerSuggestionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerTriggerSuggestionsDataSource.sections.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_27493DB34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return SmartShortcutPickerTriggerSuggestionsDataSource.$sections.setter(v4);
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.$sections.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_1_29();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v1);
}

void (*SmartShortcutPickerTriggerSuggestionsDataSource.$sections.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_27493DE54;
}

void sub_27493DE54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    SmartShortcutPickerTriggerSuggestionsDataSource.$sections.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SmartShortcutPickerTriggerSuggestionsDataSource.$sections.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.init(trigger:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_29();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUI47SmartShortcutPickerTriggerSuggestionsDataSource__sections;
  v11[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI47SmartShortcutPickerTriggerSuggestionsDataSource_trigger) = a1;
  return v1;
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  *(v1 + 24) = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_27493E0A4()
{
  OUTLINED_FUNCTION_79();
  v0[4] = OBJC_IVAR____TtC10WorkflowUI47SmartShortcutPickerTriggerSuggestionsDataSource_trigger;
  v0[5] = sub_2749FD0A4();
  v0[6] = sub_2749FD094();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27493E144, v2, v1);
}

uint64_t sub_27493E144()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[4];
  v2 = v0[2];

  v0[7] = *(v2 + v1);
  v3 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_27493E1B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [*(v0 + 56) suggestedActions];
  sub_2748DF254();
  v4 = sub_2749FCF84();

  sub_27493E440(v4);
  v6 = v5;

  v7 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);

  v8 = sub_2749FD094();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v6;
  sub_27479930C();
  *(v0 + 64) = v11;
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_27493E33C;

  return MEMORY[0x282200460]();
}

uint64_t sub_27493E33C()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

double sub_27493E440(uint64_t a1)
{
  v49 = type metadata accessor for SmartShortcutPickerEntry();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[0] = MEMORY[0x277D84F90];
  v5 = sub_27472D918(a1);
  v6 = 0;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C5F6D0](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_24;
    }

    v10 = [objc_opt_self() currentDevice];
    v11 = [v9 isDisabledWhenRunOnDevice_];

    if (v11)
    {
    }

    else
    {
      sub_2749FD9E4();
      sub_2749FDA24();
      sub_2749FDA34();
      sub_2749FD9F4();
    }

    ++v6;
  }

  v12 = __src[0];
  v5 = sub_27472D918(__src[0]);
  v6 = 0;
  v13 = v12 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    sub_2747B2790(v6, v13 == 0, v12);
    if (v13)
    {
      MEMORY[0x277C5F6D0](v6, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_27;
    }

    sub_27494E2AC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274763E3C(0, *(v15 + 16) + 1, 1, v15);
      v15 = v18;
    }

    v7 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v7 >= v17 >> 1)
    {
      sub_274763E3C(v17 > 1, v7 + 1, 1, v15);
      v15 = v19;
    }

    *(v15 + 16) = v7 + 1;
    sub_2748605C4(v4, v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7);
    ++v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48);
  v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v21 = swift_allocObject();
  v48 = xmmword_274A0EF10;
  *(v21 + 16) = xmmword_274A0EF10;
  v22 = v21 + v20;
  sub_2748AF4B4(__src);
  memcpy((v21 + v20), __src, 0xB9uLL);
  v5 = 0x277D79000uLL;
  v23 = [objc_opt_self() clearBackground];
  v6 = 0x277D7A000uLL;
  v24 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v25 = sub_27491A250(0xD000000000000019, 0x8000000274A33FC0, v23);
  v26 = v49;
  *(v22 + *(v49 + 24)) = v25;
  sub_27494E9D4(v25, v27, v28, v29, v30, v31, v32, v33, v48, *(&v48 + 1), v49, v50);
  *(v22 + *(v26 + 28)) = v14;
  v51 = v21;
  sub_27478248C();
  v7 = v51;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    goto LABEL_28;
  }

LABEL_24:
  v34 = qword_28159E448;
  v35 = sub_2749FCD64();
  v36 = sub_2749FCD64();

  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  v38 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v40 = v39;

  v41 = [objc_opt_self() clearColor];
  v42 = [objc_allocWithZone(*(v5 + 4024)) initWithColor_];

  v43 = objc_allocWithZone(*(v6 + 344));
  v44 = sub_27491A250(0x6C7562746867696CLL, 0xE900000000000062, v42);
  v51 = MEMORY[0x277D84FA0];
  v45 = sub_274947AD8(v7, &v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
  v46 = swift_allocObject();
  *&result = 1;
  *(v46 + 16) = v48;
  *(v46 + 32) = xmmword_274A11F60;
  *(v46 + 48) = 3;
  *(v46 + 56) = v38;
  *(v46 + 64) = v40;
  *(v46 + 72) = v44;
  *(v46 + 80) = v45;
  *(v46 + 88) = 1;
  return result;
}

uint64_t sub_27493E9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27493EA3C, v7, v6);
}

uint64_t sub_27493EA3C()
{
  OUTLINED_FUNCTION_79();

  SmartShortcutPickerTriggerSuggestionsDataSource.sections.setter();
  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_27493EAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_274819690;

  return sub_27493E9A4(a1, v4, v5, v7, v6);
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI47SmartShortcutPickerTriggerSuggestionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t SmartShortcutPickerTriggerSuggestionsDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI47SmartShortcutPickerTriggerSuggestionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27493EC84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_274819690;

  return SmartShortcutPickerTriggerSuggestionsDataSource.load()();
}

unint64_t sub_27493ED10(uint64_t a1)
{
  result = sub_27493ED38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_27493ED38()
{
  result = qword_280970468;
  if (!qword_280970468)
  {
    type metadata accessor for SmartShortcutPickerTriggerSuggestionsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970468);
  }

  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerTriggerSuggestionsDataSource()
{
  result = qword_280970470;
  if (!qword_280970470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmartShortcutPickerDataSource.selection.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();
}

uint64_t SmartShortcutPickerDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  v2 = sub_2749FA4E4();
  v1[3] = v2;
  OUTLINED_FUNCTION_27(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_2749FD0A4();
  v1[8] = sub_2749FD094();
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_60_5();
  v1[9] = v4;
  v1[10] = v5;
  v6 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_27493EF88()
{
  OUTLINED_FUNCTION_28_10();
  v0[11] = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_12_2();
    *v3 = 0;
    _os_log_impl(&dword_274719000, v1, v2, "Loading all datasources.", v3, 2u);
    OUTLINED_FUNCTION_31();
  }

  v4 = v0[4];
  v5 = v0[2];

  v0[12] = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_125();
  v7(v6);
  v8 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isCurrentlyLoading;
  v0[13] = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isCurrentlyLoading;
  *(v5 + v8) = 1;
  v0[14] = sub_2749FD094();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_27493F120;

  return MEMORY[0x282200600]();
}

uint64_t sub_27493F120()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_27493F250, v6, v5);
}

uint64_t sub_27493F250()
{
  OUTLINED_FUNCTION_28_10();
  v1 = v0[2];
  *(v1 + v0[13]) = 0;
  *(v1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isFullyLoaded) = 1;
  sub_2749FA3D4();
  v2 = sub_2749FA4D4();
  v3 = sub_2749FD2E4();
  if (OUTLINED_FUNCTION_70_2(v3))
  {
    *OUTLINED_FUNCTION_12_2() = 0;
    OUTLINED_FUNCTION_67_5(&dword_274719000, v4, v5, "Finished loading all datasources.");
    OUTLINED_FUNCTION_31();
  }

  v6 = v0[12];

  v7 = OUTLINED_FUNCTION_125();
  v6(v7);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_37_13(v8);

  return sub_274940B30();
}

uint64_t sub_27493F374()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_27493F480, v6, v5);
}

uint64_t sub_27493F480()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t SmartShortcutPickerDataSource.__allocating_init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)()
{
  v0 = swift_allocObject();
  SmartShortcutPickerDataSource.init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)();
  return v0;
}

uint64_t SmartShortcutPickerDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t SmartShortcutPickerDataSource.loadIfNeeded()()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  sub_2749FD0A4();
  v1[3] = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_60_5();
  v1[4] = v2;
  v1[5] = v3;
  v4 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_27493F644()
{
  OUTLINED_FUNCTION_79();
  if (*(*(v0 + 16) + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isFullyLoaded) == 1)
  {

    OUTLINED_FUNCTION_48_0();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_37_13(v3);

    return SmartShortcutPickerDataSource.load()();
  }
}

uint64_t sub_27493F718()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_2748601B0;
  }

  else
  {
    v5 = sub_27493F850;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_27493F850()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

void sub_27493F908()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704B0);
  OUTLINED_FUNCTION_43();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  sub_2749476F8(v4, v2);
  sub_2749FA864();
  sub_2749FA8A4();
  sub_2749FA934();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704B8);
  sub_27472AB6C(&qword_2809704C0, &qword_2809704B8);
  sub_2749FA944();

  sub_27472AB6C(&qword_2809704C8, &qword_2809704B0);
  sub_2749FA934();
  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_46();
}

void SmartShortcutPickerDataSourceProtocol.changePublisher()()
{
  OUTLINED_FUNCTION_48();
  v19 = v0;
  v2 = v1;
  v18[0] = *(v0 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_2749FA824();
  v18[1] = swift_getWitnessTable();
  v9 = sub_2749FA814();
  OUTLINED_FUNCTION_43();
  v11 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v14 = v18 - v13;
  sub_2749FA864();
  v15 = sub_2749FA934();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v20 = v15;
  OUTLINED_FUNCTION_32_2();
  v16 = swift_allocObject();
  v17 = v19;
  *(v16 + 16) = v2;
  *(v16 + 24) = v17;
  sub_2749FA944();

  swift_getWitnessTable();
  sub_2749FA934();
  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerDataSource.selection.setter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_66_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2747B97A0(a1, v6, &unk_280969260);

  sub_2749FA914();
  sub_274940864();
  v7 = OUTLINED_FUNCTION_125();
  return sub_27472ECBC(v7, v8);
}

uint64_t SmartShortcutPickerDataSource.searchText.setter()
{
  OUTLINED_FUNCTION_35_0();
  v3 = (v1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  sub_27494165C(v4, v5);
}

uint64_t sub_27493FEF8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  result = SmartShortcutPickerDataSource.sections.getter();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v11 = v3 != 1 || v2 != 0;
  if (v2 | v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v4 == 3;
  }

  v90 = v12;
  v91 = v4 != 3 || v11;
  v13 = 32;
  while (2)
  {
    if (v9 == v8)
    {

      *(a2 + 41) = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v7 + v13 + 16);
    v14 = *(v7 + v13 + 32);
    v16 = *(v7 + v13 + 41);
    v92 = *(v7 + v13);
    v93 = v15;
    *&v94[9] = v16;
    *v94 = v14;
    switch(v15)
    {
      case 1:
        if (v4 != 1)
        {
          v50 = OUTLINED_FUNCTION_66();
          v52 = OUTLINED_FUNCTION_14_4(v50, v51, v4);
          v19 = OUTLINED_FUNCTION_14_4(v52, v53, 1u);
          v21 = 1;
          goto LABEL_37;
        }

        if (v92 != v3 || *(&v92 + 1) != v2)
        {
          OUTLINED_FUNCTION_99();
          v37 = sub_2749FDCC4();
          v24 = v37;
          OUTLINED_FUNCTION_48_1(v37, v38);
          v39 = OUTLINED_FUNCTION_11_0();
          v42 = OUTLINED_FUNCTION_14_4(v39, v40, v41);
          v44 = OUTLINED_FUNCTION_14_4(v42, v43, 1u);
          sub_27478C4DC(v44, v45, 1u);
          v33 = OUTLINED_FUNCTION_11_0();
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_48_1(result, v6);
        v77 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v77, v78, v79);
        v80 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v80, v81, v82);
        v83 = OUTLINED_FUNCTION_11_0();
        sub_27478C4DC(v83, v84, v85);
        v74 = OUTLINED_FUNCTION_11_0();
        goto LABEL_43;
      case 2:
        if (v4 != 2)
        {
          v46 = OUTLINED_FUNCTION_66();
          v48 = OUTLINED_FUNCTION_14_4(v46, v47, v4);
          v19 = OUTLINED_FUNCTION_14_4(v48, v49, 2u);
          v21 = 2;
          goto LABEL_37;
        }

        if (v92 != v3 || *(&v92 + 1) != v2)
        {
          OUTLINED_FUNCTION_99();
          v23 = sub_2749FDCC4();
          v24 = v23;
          OUTLINED_FUNCTION_48_1(v23, v25);
          v26 = OUTLINED_FUNCTION_12();
          v29 = OUTLINED_FUNCTION_14_4(v26, v27, v28);
          v31 = OUTLINED_FUNCTION_14_4(v29, v30, 2u);
          sub_27478C4DC(v31, v32, 2u);
          v33 = OUTLINED_FUNCTION_12();
LABEL_31:
          sub_27478C4DC(v33, v34, v35);
          if (v24)
          {
            goto LABEL_44;
          }

          result = sub_2747D21CC(&v92);
LABEL_38:
          v13 += 64;
          ++v8;
          continue;
        }

        OUTLINED_FUNCTION_48_1(result, v6);
        v65 = OUTLINED_FUNCTION_12();
        sub_27477D408(v65, v66, v67);
        v68 = OUTLINED_FUNCTION_12();
        sub_27477D408(v68, v69, v70);
        v71 = OUTLINED_FUNCTION_12();
        sub_27478C4DC(v71, v72, v73);
        v74 = OUTLINED_FUNCTION_12();
LABEL_43:
        sub_27478C4DC(v74, v75, v76);
LABEL_44:

LABEL_48:
        v88 = v93;
        *a2 = v92;
        a2[1] = v88;
        a2[2] = *v94;
        *(a2 + 41) = *&v94[9];
        return result;
      case 3:
        if (v92 == 0)
        {
          if (v90)
          {
            OUTLINED_FUNCTION_48_1(result, v6);

            v86 = OUTLINED_FUNCTION_99();
            sub_27478C4DC(v86, v87, 3u);
            v64 = 0;
            goto LABEL_46;
          }
        }

        else if (!v91)
        {
          OUTLINED_FUNCTION_48_1(result, v6);

          v62 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v62, v63, 3u);
          v64 = 1;
LABEL_46:
          v60 = 0;
          v61 = 3;
LABEL_47:
          result = sub_27478C4DC(v64, v60, v61);
          goto LABEL_48;
        }

        v54 = OUTLINED_FUNCTION_66();
        v19 = OUTLINED_FUNCTION_14_4(v54, v55, v4);
        v21 = 3;
        goto LABEL_37;
      default:
        if (v4)
        {
          v17 = OUTLINED_FUNCTION_66();
          v19 = OUTLINED_FUNCTION_14_4(v17, v18, v4);
          v21 = 0;
LABEL_37:
          sub_27478C4DC(v19, v20, v21);
          v56 = OUTLINED_FUNCTION_66();
          result = sub_27478C4DC(v56, v57, v4);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_48_1(result, v6);

        v58 = OUTLINED_FUNCTION_99();
        sub_27478C4DC(v58, v59, 0);
        v64 = OUTLINED_FUNCTION_66();
        v61 = 0;
        goto LABEL_47;
    }
  }
}

uint64_t sub_27494039C@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerDataSource.sections.modify())(void *a1)
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_54(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_93();
  v0[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t sub_274940508(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t SmartShortcutPickerDataSource.$sections.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_125();
  return v5(v4);
}

void (*SmartShortcutPickerDataSource.$sections.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_54(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v1[4] = v3;
  OUTLINED_FUNCTION_27(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_274940788;
}

uint64_t sub_2749407C4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_66_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_2747B97A0(a1, &v8 - v5, &unk_280969260);
  return SmartShortcutPickerDataSource.selection.setter(v6);
}

uint64_t sub_274940864()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_2749FA4E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA3D4();
  v9 = sub_2749FA4D4();
  v10 = sub_2749FD2E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_274719000, v9, v10, "New selection was chosen in datasource.", v11, 2u);
    MEMORY[0x277C61040](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v12);
  sub_2749FD0A4();

  v13 = sub_2749FD094();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v1;
  sub_27479930C();
}

uint64_t sub_274940A84()
{
  v0[2] = sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2747EC4A8;

  return sub_274940B30();
}

uint64_t sub_274940B30()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  v2 = sub_2749FA4E4();
  v1[3] = v2;
  OUTLINED_FUNCTION_27(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  sub_2749FD0A4();
  v1[6] = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_60_5();
  v1[7] = v4;
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_274940C00()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isFullyLoaded) != 1 || (*(v1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isCurrentlyLoading) & 1) != 0)
  {

    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X1, X16 }
  }

  sub_2749FA3D4();
  v4 = sub_2749FA4D4();
  v5 = sub_2749FD2E4();
  if (OUTLINED_FUNCTION_70_2(v5))
  {
    *OUTLINED_FUNCTION_12_2() = 0;
    OUTLINED_FUNCTION_67_5(&dword_274719000, v6, v7, "Refreshing all datasources.");
    OUTLINED_FUNCTION_31();
  }

  v8 = v0[2];

  v9 = OUTLINED_FUNCTION_125();
  v10(v9);
  v11 = 0;
  v12 = *(v8 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_dataSources);
  v27 = *(v12 + 16);
  v13 = (v12 + 40);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[9] = v14;
    if (v27 == v11)
    {
      break;
    }

    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v15 = *v13;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    swift_unknownObjectRetain();
    v18 = v17(ObjectType, v15);
    swift_unknownObjectRelease();
    v19 = *(v18 + 16);
    v20 = *(v14 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v14 + 24) >> 1)
    {
      sub_274763F6C();
      v14 = v21;
    }

    if (*(v18 + 16))
    {
      if ((*(v14 + 24) >> 1) - *(v14 + 16) < v19)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v22 = *(v14 + 16);
        v23 = __OFADD__(v22, v19);
        v24 = v22 + v19;
        if (v23)
        {
          goto LABEL_29;
        }

        *(v14 + 16) = v24;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_27;
      }
    }

    v13 += 2;
    ++v11;
  }

  v25 = swift_task_alloc();
  v0[10] = v25;
  *v25 = v0;
  OUTLINED_FUNCTION_37_13(v25);
  OUTLINED_FUNCTION_65();

  sub_2749439E0();
}

uint64_t sub_274940EC4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_274940FF4, v6, v5);
}

uint64_t sub_274940FF4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

void (*SmartShortcutPickerDataSource.selection.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return sub_274941130;
}

void sub_274941130(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2747B97A0(*(a1 + 16), v2, &unk_280969260);
    SmartShortcutPickerDataSource.selection.setter(v2);
    v4 = OUTLINED_FUNCTION_66_2();
    sub_27472ECBC(v4, v5);
  }

  else
  {
    SmartShortcutPickerDataSource.selection.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_2749411C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  return a7(v10);
}

uint64_t SmartShortcutPickerDataSource.$selection.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EA8);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EF0);
  sub_2749FA8E4();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_125();
  return v5(v4);
}

void (*SmartShortcutPickerDataSource.$selection.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_54(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EA8);
  v1[4] = v3;
  OUTLINED_FUNCTION_27(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EF0);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_274941498;
}

void sub_2749414B0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_66_2();
    v8(v7);
    a3(v5);
    v9 = OUTLINED_FUNCTION_116_1();
    v10(v9);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t SmartShortcutPickerDataSource.searchText.getter()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_2749415C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_27494165C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = (v3 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
  result = swift_beginAccess();
  if (*v9 != a1 || v9[1] != a2)
  {
    result = sub_2749FDCC4();
    if ((result & 1) == 0)
    {
      v12 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
      sub_2749FD0A4();

      v13 = sub_2749FD094();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v3;
      sub_27479930C();
    }
  }

  return result;
}

uint64_t sub_2749417B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2749FD0A4();
  v4[6] = sub_2749FD094();
  v6 = sub_2749FD044();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_27494184C, v6, v5);
}

uint64_t sub_27494184C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5] + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText;
  swift_beginAccess();
  v0[9] = *(v1 + 8);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_274941920;

  return sub_274941AA8();
}

uint64_t sub_274941920()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 64);
  v6 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_274941A50, v6, v5);
}

uint64_t sub_274941A50()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_274941AA8()
{
  OUTLINED_FUNCTION_79();
  v1[48] = v2;
  v1[49] = v0;
  v1[47] = v3;
  sub_2749FD0A4();
  v1[50] = OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_60_5();
  v1[51] = v4;
  v1[52] = v5;
  v6 = OUTLINED_FUNCTION_59_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_274941B28()
{
  v1 = *(*(v0 + 392) + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_dataSources);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();
      v8 = v7(ObjectType, v5);
      v9 = *(v8 + 16);
      v10 = *(v4 + 16);
      if (__OFADD__(v10, v9))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v11 = v8;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v4 + 24) >> 1, v12 < v10 + v9))
      {
        sub_274763F6C();
        v4 = v13;
        v12 = *(v13 + 24) >> 1;
      }

      if (*(v11 + 16))
      {
        if (v12 - *(v4 + 16) < v9)
        {
          goto LABEL_47;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v4 + 16);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_48;
          }

          *(v4 + 16) = v16;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_46;
        }
      }

      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + 424) = v4;
  v18 = *(v0 + 376);
  v17 = *(v0 + 384);
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v48 = swift_task_alloc();
    *(v0 + 432) = v48;
    *v48 = v0;
    v48[1] = sub_274942048;
    goto LABEL_42;
  }

  v20 = *(v4 + 16);
  v21 = *(v0 + 392);
  if (!v20)
  {
    goto LABEL_40;
  }

  v22 = (v4 + 32);
  v23 = v20 - 1;
  v24 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = *v22;
    v26 = v22[1];
    v27 = v22[2];
    *(v0 + 57) = *(v22 + 41);
    *(v0 + 32) = v26;
    *(v0 + 48) = v27;
    *(v0 + 16) = v25;
    if (*(v0 + 32) != 1)
    {
      break;
    }

    v28 = *(v0 + 16);
    v29 = *(v0 + 24);
    sub_2747B24E0(v0 + 16, v0 + 80);
    sub_27477D408(v28, v29, 1u);
    if (qword_280966BA8 != -1)
    {
      swift_once();
    }

    v30 = sub_27477DEAC();
    sub_27478C4DC(v28, v29, 1u);
    v31 = v0 + 16;
    if (v30)
    {
      sub_2747B24E0(v31, v0 + 144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_49_8();
        v24 = v42;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_8(v32);
        OUTLINED_FUNCTION_27_11();
        sub_274763F6C();
        v24 = v43;
      }

      sub_2747D21CC(v0 + 16);
      *(v24 + 16) = v33 + 1;
      v34 = (v24 + (v33 << 6));
      v36 = *(v0 + 32);
      v35 = *(v0 + 48);
      v37 = *(v0 + 16);
      *(v34 + 73) = *(v0 + 57);
      v34[3] = v36;
      v34[4] = v35;
      v34[2] = v37;
      if (!v23)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_2747D21CC(v31);
      if (!v23)
      {
        goto LABEL_39;
      }
    }

LABEL_38:
    --v23;
    v22 += 4;
  }

  sub_2747B24E0(v0 + 16, v0 + 208);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_49_8();
    v24 = v40;
  }

  v39 = *(v24 + 16);
  v38 = *(v24 + 24);
  if (v39 >= v38 >> 1)
  {
    OUTLINED_FUNCTION_8(v38);
    OUTLINED_FUNCTION_27_11();
    sub_274763F6C();
    v24 = v41;
  }

  *(v24 + 16) = v39 + 1;
  OUTLINED_FUNCTION_36_13(v24 + (v39 << 6), *(v0 + 16), *(v0 + 32), *(v0 + 48), *(v0 + 57));
  if (v23)
  {
    goto LABEL_38;
  }

LABEL_39:

  v17 = *(v0 + 384);
  v21 = *(v0 + 392);
  v18 = *(v0 + 376);
LABEL_40:
  *(v0 + 352) = v4;
  *(v0 + 360) = sub_2749477D8;
  *(v0 + 368) = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704D0);
  sub_2749FDB04();
  v44 = *(v0 + 344);
  *(v0 + 448) = v44;
  OUTLINED_FUNCTION_32_2();
  v45 = swift_allocObject();
  *(v0 + 456) = v45;
  *(v45 + 16) = v18;
  *(v45 + 24) = v17;
  v46 = *(v0 + 328);
  *(v0 + 440) = *(v0 + 328);
  *(v0 + 272) = v46;
  *(v0 + 288) = v44;
  *(v0 + 296) = sub_2749477E0;
  *(v0 + 304) = v45;
  *(v0 + 312) = sub_274945FDC;
  *(v0 + 320) = 0;

  *(v0 + 464) = sub_274947394((v0 + 272));

  v47 = swift_task_alloc();
  *(v0 + 472) = v47;
  *v47 = v0;
  v47[1] = sub_2749421D0;
LABEL_42:
  OUTLINED_FUNCTION_65();

  sub_2749439E0();
}

uint64_t sub_274942048()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 416);
  v6 = *(v0 + 408);

  return MEMORY[0x2822009F8](sub_274942178, v6, v5);
}

uint64_t sub_274942178()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2749421D0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 416);
  v6 = *(v0 + 408);

  return MEMORY[0x2822009F8](sub_274942300, v6, v5);
}

uint64_t sub_274942300()
{
  OUTLINED_FUNCTION_72();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t SmartShortcutPickerDataSource.searchText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *(OUTLINED_FUNCTION_54(v2) + 40) = v0;
  v3 = (v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
  OUTLINED_FUNCTION_32();
  swift_beginAccess();
  v4 = v3[1];
  *(v1 + 24) = *v3;
  *(v1 + 32) = v4;

  return OUTLINED_FUNCTION_125();
}

void sub_274942400(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_66();
    SmartShortcutPickerDataSource.searchText.setter();
  }

  else
  {
    OUTLINED_FUNCTION_66();
    SmartShortcutPickerDataSource.searchText.setter();
  }

  free(v2);
}

void SmartShortcutPickerDataSource.init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v38 = v3;
  v5 = v4;
  v39 = v6;
  v43 = v7;
  v42 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v41 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v40 = v11 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EF0);
  OUTLINED_FUNCTION_43();
  v13 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  OUTLINED_FUNCTION_9();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_43();
  v23 = v22;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - v25;
  memcpy(v45, v38, 0xB9uLL);
  sub_27472ECBC(v45, &qword_280968A58);
  v38 = *v39;
  LODWORD(v39) = *v5;
  v27 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource__sections;
  v44 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v23 + 32))(v2 + v27, v26, v21);
  v28 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource__selection;
  v29 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v29);
  sub_2747B97A0(v20, v18, &unk_280969260);
  sub_2749FA8C4();
  sub_27472ECBC(v20, &unk_280969260);
  v30 = v2 + v28;
  v31 = v40;
  (*(v13 + 32))(v30, v1, v37);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_cancellables) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isFullyLoaded) = 0;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_isCurrentlyLoading) = 0;
  v32 = (v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  sub_2749FA3D4();
  v33 = sub_2749FA4D4();
  v34 = sub_2749FD2B4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_12_2();
    *v35 = 0;
    _os_log_impl(&dword_274719000, v33, v34, "Creating SmartShortcutPickerDataSource", v35, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v41 + 8))(v31, v42);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_dataSources) = v43;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_appAvailabilityContext) = v38;
  *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_appAvailabilityStrategy) = v39;
  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerDataSource.deinit()
{
  v1 = v0;
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  sub_2749FA3D4();
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_12_2();
    *v5 = 0;
    _os_log_impl(&dword_274719000, v3, v4, "Destroying SmartShortcutPickerDataSource", v5, 2u);
    OUTLINED_FUNCTION_31();
  }

  v6 = OUTLINED_FUNCTION_32();
  v7(v6);
  v8 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_9();
  (*(v9 + 8))(v1 + v8);
  v10 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource__selection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968EF0);
  OUTLINED_FUNCTION_9();
  (*(v11 + 8))(v1 + v10);

  return v1;
}

uint64_t SmartShortcutPickerDataSource.__deallocating_deinit()
{
  SmartShortcutPickerDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274942B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_2749FD0A4();
  v3[14] = sub_2749FD094();
  v5 = sub_2749FD044();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_274942BE8, v5, v4);
}

uint64_t sub_274942BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_40();
  v18 = *(*(v17 + 80) + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_dataSources);
  v19 = *(v18 + 16);
  if (v19)
  {
    a10 = (v17 + 16);
    a11 = **(v17 + 72);
    v20 = (v18 + 32);
    do
    {
      a12 = v19;
      v21 = *(v17 + 88);
      v22 = *(v17 + 96);
      a13 = *v20;
      v23 = *v20;
      swift_unknownObjectRetain();
      sub_2749FD0C4();
      v24 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = a13;
      v26 = OUTLINED_FUNCTION_32_1();
      sub_2747B97A0(v26, v27, &unk_28096C960);
      LODWORD(v21) = __swift_getEnumTagSinglePayload(v21, 1, v24);
      *&a13 = v23;
      swift_unknownObjectRetain();
      v28 = *(v17 + 88);
      if (v21 == 1)
      {
        v29 = OUTLINED_FUNCTION_32();
        sub_27472ECBC(v29, v30);
      }

      else
      {
        sub_2749FD0D4();
        (*(*(v24 - 8) + 8))(v28, v24);
      }

      if (*(v25 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_2749FD044();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      OUTLINED_FUNCTION_32_2();
      v34 = swift_allocObject();
      *(v34 + 16) = &unk_274A270D8;
      *(v34 + 24) = v25;

      if (v33 | v31)
      {
        v35 = v17 + 16;
        *a10 = 0;
        *(v17 + 24) = 0;
        *(v17 + 32) = v31;
        *(v17 + 40) = v33;
      }

      else
      {
        v35 = 0;
      }

      v36 = *(v17 + 96);
      *(v17 + 48) = 1;
      *(v17 + 56) = v35;
      *(v17 + 64) = a11;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_27472ECBC(v36, &unk_28096C960);
      ++v20;
      v19 = a12 - 1;
    }

    while (a12 != 1);
  }

  *(v17 + 136) = sub_2749FD094();
  v37 = swift_task_alloc();
  *(v17 + 144) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704D8);
  *v37 = v17;
  v37[1] = sub_274942F1C;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822002C8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17);
}

uint64_t sub_274942F1C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_32_14();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  OUTLINED_FUNCTION_31_16();
  v5 = *(v4 + 128);
  v6 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_27494304C, v6, v5);
}

uint64_t sub_27494304C()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2749430B8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_35_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v4[1] = sub_2747F2F14;

  return sub_274942B08(v2, v0, v1);
}

uint64_t sub_274943154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2749FA4E4();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27494322C, 0, 0);
}

uint64_t sub_27494322C()
{
  v23 = v0;
  *(v0 + 120) = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();
  swift_unknownObjectRetain();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 88);
    v20 = *(v0 + 64);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v0 + 48) = v20;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704E0);
    v6 = sub_2749FCDC4();
    v8 = sub_2747AF460(v6, v7, &v22);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_68_3(&dword_274719000, v9, v10, "Loading from %s.");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_125();
    v11(v12);
  }

  else
  {
    v13 = *(v0 + 88);

    v11 = *(v13 + 8);
    v14 = OUTLINED_FUNCTION_125();
    v11(v14);
  }

  *(v0 + 128) = v11;
  v21 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v19 = (*(v21 + 24) + **(v21 + 24));
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  v16[1] = sub_2749434B0;
  v17 = *(v0 + 72);

  return v19(ObjectType, v17);
}

uint64_t sub_2749434B0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_274943790;
  }

  else
  {
    v5 = sub_2749435B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2749435B4()
{
  v18 = v0;
  sub_2749FA3D4();
  swift_unknownObjectRetain();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 64);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    *(v0 + 32) = v15;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704E0);
    v5 = sub_2749FCDC4();
    v7 = sub_2747AF460(v5, v6, &v17);

    *(v3 + 4) = v7;
    OUTLINED_FUNCTION_68_3(&dword_274719000, v8, v9, "%s finished loading.");
    __swift_destroy_boxed_opaque_existential_0(v4);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    v10 = OUTLINED_FUNCTION_125();
    v16(v10);
  }

  else
  {
    v11 = *(v0 + 128);

    v12 = OUTLINED_FUNCTION_125();
    v11(v12);
  }

  OUTLINED_FUNCTION_48_0();

  return v13();
}

uint64_t sub_274943790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_40();
  a24 = v26;
  a25 = v27;
  a23 = v25;
  v28 = *(v25 + 144);
  sub_2749FA3D4();
  swift_unknownObjectRetain();
  v29 = v28;
  v30 = sub_2749FA4D4();
  v31 = sub_2749FD2E4();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v25 + 144);
    a12 = *(v25 + 96);
    a13 = *(v25 + 128);
    a11 = *(v25 + 80);
    a9 = *(v25 + 64);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    a14 = v35;
    *v33 = 136315394;
    *(v25 + 16) = a9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704E0);
    v36 = sub_2749FCDC4();
    v38 = sub_2747AF460(v36, v37, &a14);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2112;
    v39 = v32;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v40;
    *v34 = v40;
    _os_log_impl(&dword_274719000, v30, v31, "%s failed loading due to: %@.", v33, 0x16u);
    sub_27472ECBC(v34, &qword_28096A280);
    OUTLINED_FUNCTION_31();
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    a13(a12, a11);
  }

  else
  {
    v41 = *(v25 + 128);

    v42 = OUTLINED_FUNCTION_125();
    v41(v42);
  }

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_41();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2749439E0()
{
  OUTLINED_FUNCTION_79();
  v1[75] = v0;
  v1[74] = v2;
  v3 = type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_27(v3);
  v1[76] = v4;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  sub_2749FD0A4();
  v1[79] = OUTLINED_FUNCTION_72_3();
  v6 = OUTLINED_FUNCTION_54_10();

  return MEMORY[0x2822009F8](sub_274943AC4, v6, v5);
}

void sub_274943AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = (v26 + 400);
  v30 = *(v26 + 608);

  sub_274943E0C();
  v32 = sub_274948330(v31);

  v33 = 0;
  v71 = *(v32 + 16);
  v72 = v32;
  v70 = v32 + 32;
  v34 = MEMORY[0x277D84F90];
LABEL_2:
  v73 = v34;
LABEL_3:
  while (v33 != v71)
  {
    if (v33 >= *(v72 + 16))
    {
LABEL_31:
      __break(1u);
      return;
    }

    v35 = (v70 + (v33 << 6));
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    *(v26 + 441) = *(v35 + 41);
    *(v26 + 416) = v37;
    *(v26 + 432) = v38;
    *v29 = v36;
    ++v33;
    v39 = *(v26 + 448);
    v40 = *(v39 + 16);
    if (v40)
    {
      if (*(v26 + 416) == 1)
      {
        sub_2747B24E0(v26 + 400, v26 + 528);
        for (i = 0; ; ++i)
        {
          if (v40 == i)
          {
            goto LABEL_20;
          }

          if (i >= *(v39 + 16))
          {
            break;
          }

          v42 = *(v26 + 624);
          v43 = v39 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
          v44 = *(v30 + 72);
          OUTLINED_FUNCTION_2_1();
          sub_2748AF558(v45, v42, v46);
          memmove((v26 + 16), v42, 0xB9uLL);
          v47 = sub_274772AD0(v26 + 16);
          v48 = *(v26 + 624);
          if (v47 == 2)
          {
            sub_274721C98(v26 + 16);
            OUTLINED_FUNCTION_0_38();
            sub_2749477E8(v48, v50);
            v51 = 0;
            v52 = v40 - 1;
            while (v51 < *(v39 + 16))
            {
              v53 = *(v26 + 616);
              OUTLINED_FUNCTION_2_1();
              sub_2748AF558(v43, v53, v54);
              memmove((v26 + 208), v53, 0xB9uLL);
              if (sub_274772AD0(v26 + 208) == 3 && (*(sub_274721C98(v26 + 208) + 48) & 1) != 0)
              {
                OUTLINED_FUNCTION_0_38();
                sub_2749477E8(v57, v58);
                goto LABEL_20;
              }

              OUTLINED_FUNCTION_0_38();
              sub_2749477E8(v55, v56);
              if (v52 == v51)
              {
                sub_2747D21CC(v26 + 400);
                v34 = v73;
                goto LABEL_3;
              }

              v43 += v44;
              ++v51;
            }

            goto LABEL_30;
          }

          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v48, v49);
        }

        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_2747B24E0(v26 + 400, v26 + 464);
LABEL_20:
      v34 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a14 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476D6D8();
        v34 = a14;
      }

      v61 = *(v34 + 16);
      v60 = *(v34 + 24);
      if (v61 >= v60 >> 1)
      {
        OUTLINED_FUNCTION_8(v60);
        sub_27476D6D8();
        v34 = a14;
      }

      *(v34 + 16) = v61 + 1;
      OUTLINED_FUNCTION_36_13(v34 + (v61 << 6), *v29, *(v26 + 416), *(v26 + 432), *(v26 + 441));
      goto LABEL_2;
    }
  }

  a14 = v34;

  sub_27492B358(&a14);

  SmartShortcutPickerDataSource.sections.setter();

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_41();

  v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v70, v71, v72, v73, a14, a15, a16, a17, a18);
}

void sub_274943E0C()
{
  OUTLINED_FUNCTION_48();
  v436 = v0;
  v3 = v2;
  v4 = type metadata accessor for SmartShortcutPickerEntry();
  v5 = OUTLINED_FUNCTION_27(v4);
  v446 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v448 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_3();
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v439 = v16;
  v440 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v423 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v432 = v423 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v423 - v23;
  v433 = *MEMORY[0x277D7A4C0];
  sub_2749FA3D4();
  v25 = sub_2749FA4D4();
  v26 = sub_2749FD2B4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_12_2();
    *v27 = 0;
    _os_log_impl(&dword_274719000, v25, v26, "Creating entry for previous selection", v27, 2u);
    OUTLINED_FUNCTION_31();
  }

  v28 = *(v440 + 8);
  v440 += 8;
  v434 = v28;
  v28(v24, v439);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  if (__swift_getEnumTagSinglePayload(v1, 1, v448))
  {
    sub_27472ECBC(v1, &unk_280969260);
    sub_2749FA3D4();
    v29 = sub_2749FA4D4();
    v30 = sub_2749FD2B4();
    if (OUTLINED_FUNCTION_70_2(v30))
    {
      v31 = OUTLINED_FUNCTION_12_2();
      *v31 = 0;
      _os_log_impl(&dword_274719000, v29, v30, "No selection, bailing.", v31, 2u);
      OUTLINED_FUNCTION_31();
    }

    v434(v20, v439);
    goto LABEL_221;
  }

  sub_2748AF558(v1, v13, type metadata accessor for SmartShortcutPickerSelectedEntry);
  sub_27472ECBC(v1, &unk_280969260);
  memcpy(v474, v13, 0xB9uLL);
  memcpy(v473, v13, sizeof(v473));
  sub_274772ADC(v474, v468);
  v32 = OUTLINED_FUNCTION_93();
  sub_2749477E8(v32, v33);
  v34 = 0;
  v35 = (v3 + 32);
  v36 = *(v3 + 16);
  v37 = &unk_280969270;
  v38 = v446;
  v426 = (v3 + 32);
  v427 = v36;
  v430 = v3;
  v435 = v9;
  while (2)
  {
    if (v34 == v36)
    {
      OUTLINED_FUNCTION_53_8(v468);
      if (sub_274772AD0(v468) != 3)
      {
        goto LABEL_217;
      }

      v365 = sub_274721C98(v468);
      memcpy(v470, v365, 0xB9uLL);
      v13 = v470[0];
      v37 = v470[1];
      v9 = v470[2];
      v41 = v470[3];
      v38 = v470[4];
      LOBYTE(v42) = v470[6];
      v456 = v470[0];
      v457 = v470[1];
      v458 = v470[2];
      v459 = v470[3];
      v460 = v470[4];
      v448 = v470[5];
      v461 = v470[5];
      v462 = v470[6];
      memcpy(v453, v473, 0xB9uLL);
      v366 = sub_274721C98(v453);
      sub_2747B97A0(v366, v467, &unk_280970630);
      sub_274772B94(&v470[7]);
      v367 = v427;
      if (v427)
      {
        v443 = v38;
        v444 = v41;
        v445 = v9;
        v446 = v37;
        v447 = v13;
        v450[0] = MEMORY[0x277D84F90];
        sub_27476D6D8();
        v368 = v450[0];
        v369 = v367 - 1;
        v370 = v426;
        v371 = v448;
        while (1)
        {
          v372 = v370[1];
          v467[0] = *v370;
          v467[1] = v372;
          v374 = *v370;
          v373 = v370[1];
          v467[2] = v370[2];
          *(&v467[2] + 9) = *(v370 + 41);
          v454[0] = v374;
          v454[1] = v373;
          v454[2] = v370[2];
          v375 = v370;
          *(&v454[2] + 9) = *(v370 + 41);
          sub_2747B24E0(v467, v452);
          sub_274945FF0(v454, &v456, v474, v436, v455);
          v451[0] = v454[0];
          v451[1] = v454[1];
          v451[2] = v454[2];
          *(&v451[2] + 9) = *(&v454[2] + 9);
          sub_2747D21CC(v451);
          *(&v452[2] + 9) = *(&v455[2] + 9);
          v452[1] = v455[1];
          v452[2] = v455[2];
          v452[0] = v455[0];
          v376 = v368;
          v450[0] = v368;
          v378 = *(v368 + 16);
          v377 = *(v368 + 24);
          if (v378 >= v377 >> 1)
          {
            OUTLINED_FUNCTION_8(v377);
            sub_27476D6D8();
            v376 = v450[0];
          }

          *(v376 + 16) = v378 + 1;
          v368 = v376;
          OUTLINED_FUNCTION_36_13(v376 + (v378 << 6), v452[0], v452[1], v452[2], *(&v452[2] + 9));
          if (!v369)
          {
            break;
          }

          --v369;
          v370 = v375 + 4;
        }

        sub_274772BE8(v474);
        sub_27477CABC(v447, v446, v445, v444, v443, v371, v42);
        goto LABEL_222;
      }

LABEL_233:
      sub_274772BE8(v474);
      sub_27477CABC(v13, v37, v9, v41, v38, v448, v42);
      goto LABEL_222;
    }

    v39 = &v35[4 * v34];
    *(v472 + 9) = *(v39 + 41);
    v40 = v39[2];
    v471[1] = v39[1];
    v472[0] = v40;
    v471[0] = *v39;
    v41 = *&v472[1];
    v448 = *(*&v472[1] + 16);
    if (!v448)
    {
      goto LABEL_212;
    }

    v431 = v34;
    v447 = (*&v472[1] + ((v38[80] + 32) & ~v38[80]));
    sub_2747B24E0(v471, v468);

    v42 = 0;
    v444 = v41;
LABEL_11:
    if (v42 >= *(v41 + 2))
    {
      __break(1u);
      goto LABEL_233;
    }

    OUTLINED_FUNCTION_2_1();
    sub_2748AF558(v43, v9, v44);
    ++v42;
    memcpy(v467, v9, 0xB9uLL);
    memcpy(v468, v9, 0xB9uLL);
    memcpy(v469, v473, sizeof(v469));
    memcpy(v470, v9, 0xB9uLL);
    v45 = sub_274772AD0(v470);
    v46 = sub_274721C98(v470);
    v47 = v46;
    switch(v45)
    {
      case 1:
        v96 = OUTLINED_FUNCTION_15_24();
        sub_274772ADC(v96, v97);
        OUTLINED_FUNCTION_0_38();
        sub_2749477E8(v9, v98);
        OUTLINED_FUNCTION_53_8(v476);
        if (sub_274772AD0(v476) != 1)
        {
          v99 = OUTLINED_FUNCTION_30_12();
          sub_27472ECBC(v99, v100);
          goto LABEL_57;
        }

        sub_274721C98(v476);
        sub_2747D21CC(v471);

        sub_27472ECBC(v468, &unk_280969270);
        goto LABEL_217;
      case 2:
        v54 = *v46;
        OUTLINED_FUNCTION_53_8(v477);
        if (sub_274772AD0(v477) != 2)
        {
          goto LABEL_34;
        }

        v55 = *sub_274721C98(v477);
        v56 = OUTLINED_FUNCTION_15_24();
        sub_274772ADC(v56, v57);
        OUTLINED_FUNCTION_33_12();
        v58 = OUTLINED_FUNCTION_15_24();
        sub_274772ADC(v58, v59);
        OUTLINED_FUNCTION_33_12();
        v60 = [v54 identifier];
        v61 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v63 = v62;

        v64 = [v55 identifier];
        v65 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v67 = v66;

        if (v61 == v65 && v63 == v67)
        {

          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v360);
          sub_274772BE8(v474);
          sub_274772BE8(v467);
        }

        else
        {
          OUTLINED_FUNCTION_93();
          v13 = sub_2749FDCC4();

          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v69);
          sub_274772BE8(v474);
          sub_274772BE8(v467);
          if ((v13 & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_215;
      case 3:
        OUTLINED_FUNCTION_53_8(v478);
        if (sub_274772AD0(v478) != 3)
        {
LABEL_34:
          v91 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v91, v92);
          OUTLINED_FUNCTION_33_12();
          v93 = OUTLINED_FUNCTION_30_12();
          sub_27472ECBC(v93, v94);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v95);
          goto LABEL_57;
        }

        v70 = sub_274721C98(v478);
        memcpy(v455, v70, 0xB9uLL);
        v13 = *v47;
        v71 = *(v47 + 8);
        v72 = *(v47 + 16);
        v73 = *(v47 + 24);
        v75 = *(v47 + 32);
        v74 = *(v47 + 40);
        v76 = *(v47 + 48);
        v77 = *&v455[0];
        v456 = *v47;
        v457 = v71;
        v442 = v75;
        v443 = v72;
        v458 = v72;
        v445 = v73;
        v459 = v73;
        v460 = v75;
        v441 = v74;
        v461 = v74;
        v462 = v76;
        v463 = v455[0];
        v41 = *(&v455[1] + 1);
        v78 = *&v455[1];
        v464 = v455[1];
        v79 = *(&v455[2] + 1);
        v80 = *&v455[2];
        v465 = v455[2];
        v466 = v455[3];
        if ((v76 & 1) == 0)
        {
          if (v455[3])
          {
            v110 = OUTLINED_FUNCTION_15_24();
            sub_274772ADC(v110, v111);
            OUTLINED_FUNCTION_33_12();
            OUTLINED_FUNCTION_6_37();
            sub_27477C094(v112, v113, v114, v115, v116, v117, 1);
            OUTLINED_FUNCTION_39_13();
LABEL_50:
            v124 = 0;
LABEL_52:
            sub_27477C094(v118, v119, v120, v121, v122, v123, v124);
LABEL_53:
            v37 = &unk_280969270;
            sub_27472ECBC(v468, &unk_280969270);
            v133 = &v456;
            v134 = &unk_2809707D0;
LABEL_54:
            sub_27472ECBC(v133, v134);
LABEL_55:
            v38 = v446;
            v9 = v435;
LABEL_56:
            OUTLINED_FUNCTION_0_38();
            sub_2749477E8(v9, v135);
            v41 = v444;
            goto LABEL_57;
          }

          v136 = v13 == *&v455[0] && v71 == *(&v455[0] + 1);
          v137 = v71;
          v138 = *(&v455[0] + 1);
          v429 = v13;
          if (!v136)
          {
            v13 = v137;
            v139 = sub_2749FDCC4();
            v137 = v13;
            if ((v139 & 1) == 0)
            {
              sub_274772ADC(v474, v453);
              OUTLINED_FUNCTION_33_12();
              OUTLINED_FUNCTION_6_37();
              sub_27477C094(v175, v176, v177, v178, v179, v180, 0);
              OUTLINED_FUNCTION_39_13();
              sub_27477C094(v181, v182, v183, v184, v185, v186, 0);
              sub_27472ECBC(&v456, &unk_2809707D0);
              v133 = v468;
              v37 = &unk_280969270;
              v134 = &unk_280969270;
              goto LABEL_54;
            }
          }

          v428 = v77;
          v437 = v138;
          v438 = v137;
          if (v445)
          {
            v38 = v441;
            v13 = v78;
            if (!v41)
            {
              v187 = OUTLINED_FUNCTION_15_24();
              sub_274772ADC(v187, v188);
              OUTLINED_FUNCTION_33_12();
              OUTLINED_FUNCTION_47_7(v428, v437, v78, 0, v80);
              OUTLINED_FUNCTION_51_5(v429, v438, v443, v445, v442);

              v37 = &unk_280969270;
              sub_27472ECBC(v468, &unk_280969270);
              sub_27472ECBC(&v456, &unk_2809707D0);
              goto LABEL_93;
            }

            v140 = v442;
            v141 = v443 == v78 && v445 == v41;
            if (!v141 && (sub_2749FDCC4() & 1) == 0)
            {
              v142 = OUTLINED_FUNCTION_15_24();
              sub_274772ADC(v142, v143);
              OUTLINED_FUNCTION_33_12();
              v144 = OUTLINED_FUNCTION_3_47();
              OUTLINED_FUNCTION_47_7(v144, v145, v146, v147, v148);
              v118 = OUTLINED_FUNCTION_2_41();
              v123 = v38;
              goto LABEL_50;
            }
          }

          else
          {
            v38 = v441;
            v140 = v442;
            v13 = v78;
            if (v41)
            {
              v152 = OUTLINED_FUNCTION_15_24();
              sub_274772ADC(v152, v153);
              OUTLINED_FUNCTION_33_12();
              v154 = OUTLINED_FUNCTION_3_47();
              OUTLINED_FUNCTION_47_7(v154, v155, v156, v157, v158);
              OUTLINED_FUNCTION_51_5(v429, v438, v443, 0, v140);

              v37 = &unk_280969270;
              sub_27472ECBC(v468, &unk_280969270);
              sub_27472ECBC(&v456, &unk_2809707D0);
              goto LABEL_93;
            }
          }

          if (!v38)
          {
            v189 = OUTLINED_FUNCTION_15_24();
            sub_274772ADC(v189, v190);
            OUTLINED_FUNCTION_33_12();
            v191 = OUTLINED_FUNCTION_3_47();
            OUTLINED_FUNCTION_47_7(v191, v192, v193, v194, v195);
            v196 = OUTLINED_FUNCTION_2_41();
            sub_27477C094(v196, v197, v198, v199, v200, 0, 0);
            OUTLINED_FUNCTION_73_2();
            v201 = OUTLINED_FUNCTION_16_18();
            sub_274772B38(v201, v453);

            sub_27472ECBC(&v456, &unk_2809707D0);
            v9 = v435;
            if (!v79)
            {
              goto LABEL_96;
            }

LABEL_89:
            v202 = OUTLINED_FUNCTION_16_18();
            sub_274772B94(v202);
            sub_274772B94(v47 + 56);
            v37 = &unk_280969270;
            sub_27472ECBC(v468, &unk_280969270);

LABEL_90:
            v38 = v446;
            goto LABEL_56;
          }

          if (v79)
          {
            if (v140 == v80 && v38 == v79)
            {
              v216 = OUTLINED_FUNCTION_15_24();
              sub_274772ADC(v216, v217);
              OUTLINED_FUNCTION_33_12();
              OUTLINED_FUNCTION_51_5(v428, v437, v13, v41, v140);
              v218 = OUTLINED_FUNCTION_2_41();
              OUTLINED_FUNCTION_51_5(v218, v219, v220, v221, v222);
              OUTLINED_FUNCTION_73_2();
              v223 = OUTLINED_FUNCTION_16_18();
              sub_274772B38(v223, v453);
              v9 = v435;
LABEL_95:
              sub_27472ECBC(&v456, &unk_2809707D0);
              goto LABEL_96;
            }

            v160 = sub_2749FDCC4();
            v161 = OUTLINED_FUNCTION_15_24();
            sub_274772ADC(v161, v162);
            OUTLINED_FUNCTION_33_12();
            v163 = OUTLINED_FUNCTION_3_47();
            OUTLINED_FUNCTION_47_7(v163, v164, v165, v166, v167);
            v168 = OUTLINED_FUNCTION_2_41();
            OUTLINED_FUNCTION_51_5(v168, v169, v170, v171, v172);
            OUTLINED_FUNCTION_73_2();
            v173 = OUTLINED_FUNCTION_16_18();
            sub_274772B38(v173, v453);
            sub_27472ECBC(&v456, &unk_2809707D0);
            v9 = v435;
            if (v160)
            {
              goto LABEL_96;
            }

LABEL_83:
            v174 = OUTLINED_FUNCTION_16_18();
            sub_274772B94(v174);
            sub_274772B94(v47 + 56);
            v37 = &unk_280969270;
            sub_27472ECBC(v468, &unk_280969270);
            goto LABEL_90;
          }

          v204 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v204, v205);
          OUTLINED_FUNCTION_33_12();
          v206 = OUTLINED_FUNCTION_3_47();
          sub_27477C094(v206, v207, v208, v209, v210, 0, 0);
          v211 = OUTLINED_FUNCTION_2_41();
          OUTLINED_FUNCTION_51_5(v211, v212, v213, v214, v215);

          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          sub_27472ECBC(&v456, &unk_2809707D0);
LABEL_93:

          goto LABEL_55;
        }

        v437 = *(&v455[0] + 1);
        v438 = v71;
        if ((v455[3] & 1) == 0)
        {
          v125 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v125, v126);
          OUTLINED_FUNCTION_33_12();
          OUTLINED_FUNCTION_6_37();
          sub_27477C094(v127, v128, v129, v130, v131, v132, 0);
          OUTLINED_FUNCTION_39_13();
          v124 = 1;
          goto LABEL_52;
        }

        v428 = sub_2747949D8();
        v81 = OUTLINED_FUNCTION_15_24();
        sub_274772ADC(v81, v82);
        OUTLINED_FUNCTION_33_12();
        OUTLINED_FUNCTION_6_37();
        sub_27477C094(v83, v84, v85, v86, v87, v88, 1);
        v41 = v443;
        sub_27477C094(v13, v438, v443, v445, v442, v441, 1);
        OUTLINED_FUNCTION_73_2();
        sub_274772B38(&v455[3] + 8, v453);
        if ((sub_2749FD604() & 1) == 0)
        {
          sub_274772B94(&v455[3] + 8);
          sub_274772B94(v47 + 56);
          goto LABEL_53;
        }

        v38 = v446;
        if (!v41)
        {

          sub_27472ECBC(&v456, &unk_2809707D0);
          v9 = v435;
          if (v78)
          {
            goto LABEL_89;
          }

          goto LABEL_96;
        }

        v9 = v435;
        if (!v78)
        {

          v203 = OUTLINED_FUNCTION_16_18();
          sub_274772B94(v203);
          sub_274772B94(v47 + 56);
          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          sub_27472ECBC(&v456, &unk_2809707D0);

          goto LABEL_56;
        }

        if (v438 == v437 && v41 == v78)
        {
          goto LABEL_95;
        }

        v90 = sub_2749FDCC4();
        sub_27472ECBC(&v456, &unk_2809707D0);
        if ((v90 & 1) == 0)
        {
          goto LABEL_83;
        }

LABEL_96:
        memcpy(v453, (v47 + 56), 0x81uLL);
        memcpy(&v453[136], &v455[3] + 8, 0x81uLL);
        memcpy(v454, (v47 + 56), 0x81uLL);
        v224 = sub_274772C3C(v454);
        if (v224)
        {
          if (v224 == 1)
          {
            v225 = CGSizeMake(v454);
            memcpy(v452, &v455[3] + 8, 0x81uLL);
            if (sub_274772C3C(v452) == 1)
            {
              v13 = CGSizeMake(v452);
              v226 = v225[2];
              v227 = v225[3];
              v41 = *(v13 + 16);
              v38 = *(v13 + 24);
              v228 = *v225 == *v13 && v225[1] == *(v13 + 8);
              if (v228 || (sub_2749FDCC4() & 1) != 0)
              {
                v229 = v226 == v41 && v227 == v38;
                if (v229 || (OUTLINED_FUNCTION_116_1(), (sub_2749FDCC4() & 1) != 0))
                {
                  v230 = v225[4] == *(v13 + 32) && v225[5] == *(v13 + 40);
                  if (v230 || (sub_2749FDCC4()) && (v225[6] == *(v13 + 48) ? (v231 = v225[7] == *(v13 + 56)) : (v231 = 0), v231 || (sub_2749FDCC4()))
                  {
                    v41 = *(v13 + 64);
                    v38 = *(v13 + 72);
                    v233 = *(v13 + 80);
                    v232 = *(v13 + 88);
                    v234 = *(v13 + 96);
                    if (v225[9])
                    {
                      v438 = v225[9];
                      v235 = v225[10];
                      v236 = v225[11];
                      v442 = v225[8];
                      v443 = v235;
                      v437 = v236;
                      v441 = v225[12];
                      v445 = v38;
                      v237 = v38;
                      v238 = v232;
                      v239 = v234;
                      sub_274772C44(v41, v237);
                      sub_274772C44(v442, v438);
                      v240 = OUTLINED_FUNCTION_23_16();
                      sub_274772B38(v240, v241);
                      v242 = OUTLINED_FUNCTION_16_18();
                      sub_274772B38(v242, v451);
                      v425 = v41;
                      v428 = v239;
                      v429 = v233;
                      v243 = v238;
                      sub_274772C44(v41, v445);
                      v38 = v438;
                      sub_274772C44(v442, v438);

                      if (v445)
                      {

                        v423[1] = v243;

                        v41 = v441;
                        v424 = [v441 isEqual_];
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        sub_274772C94(v425, v445);
                        sub_274772C94(v442, v38);
                        v37 = &unk_280969270;
                        if (v424)
                        {
LABEL_201:
                          v353 = v225[13] == *(v13 + 104) && v225[14] == *(v13 + 112);
                          if (v353 || (sub_2749FDCC4() & 1) != 0)
                          {
                            v354 = sub_2747843DC(v225[15], *(v13 + 120));
                            sub_27472ECBC(v453, &qword_280970170);
                            v355 = OUTLINED_FUNCTION_30_12();
                            sub_27472ECBC(v355, v356);
                            OUTLINED_FUNCTION_46_9();
                            v13 = v455;
                            if ((v354 & 1) == 0)
                            {
                              goto LABEL_211;
                            }

                            goto LABEL_237;
                          }
                        }

LABEL_189:
                        sub_27472ECBC(v453, &qword_280970170);
                        v332 = OUTLINED_FUNCTION_30_12();
                        sub_27472ECBC(v332, v333);
                        v41 = v444;
LABEL_190:
                        v38 = v446;
                        goto LABEL_198;
                      }

                      swift_unknownObjectRelease();
                      v316 = v442;
                      v317 = v38;
                    }

                    else
                    {
                      if (!v38)
                      {
                        v350 = OUTLINED_FUNCTION_23_16();
                        sub_274772B38(v350, v351);
                        v352 = OUTLINED_FUNCTION_16_18();
                        sub_274772B38(v352, v451);
                        v37 = &unk_280969270;
                        goto LABEL_201;
                      }

                      sub_274772C44(*(v13 + 64), *(v13 + 72));
                      v311 = OUTLINED_FUNCTION_23_16();
                      sub_274772B38(v311, v312);
                      v313 = OUTLINED_FUNCTION_16_18();
                      sub_274772B38(v313, v451);
                      v314 = OUTLINED_FUNCTION_44_8();
                      sub_274772C44(v314, v315);
                      swift_unknownObjectRelease();

                      v316 = OUTLINED_FUNCTION_44_8();
                    }

                    sub_274772C94(v316, v317);
                  }

                  else
                  {
                    v307 = OUTLINED_FUNCTION_23_16();
                    sub_274772B38(v307, v308);
                    v309 = OUTLINED_FUNCTION_16_18();
                    sub_274772B38(v309, v451);
                  }

                  v37 = &unk_280969270;
                  goto LABEL_189;
                }
              }

LABEL_175:
              v303 = OUTLINED_FUNCTION_23_16();
              sub_274772B38(v303, v304);
              OUTLINED_FUNCTION_50_10();
              sub_27472ECBC(v453, &qword_280970170);
              v37 = &unk_280969270;
              sub_27472ECBC(v468, &unk_280969270);
              OUTLINED_FUNCTION_46_9();
              goto LABEL_211;
            }

LABEL_173:
            OUTLINED_FUNCTION_46_9();
LABEL_174:
            v37 = &unk_280969270;
            sub_274772B38(v47 + 56, v452);
            v13 = v455;
            sub_274772B38(&v455[3] + 8, v452);
            sub_27472ECBC(v453, &qword_280970170);
            v301 = OUTLINED_FUNCTION_30_12();
            sub_27472ECBC(v301, v302);
            goto LABEL_211;
          }

          v265 = CGSizeMake(v454);
          v13 = *v265;
          v266 = *(v265 + 8);
          v38 = *(v265 + 16);
          v41 = *(v265 + 24);
          v268 = *(v265 + 32);
          v267 = *(v265 + 40);
          LODWORD(v445) = *(v265 + 48);
          memcpy(v452, &v455[3] + 8, 0x81uLL);
          if (sub_274772C3C(v452) != 2)
          {
            goto LABEL_173;
          }

          v441 = v268;
          v442 = v267;
          v269 = CGSizeMake(v452);
          v270 = *v269;
          v271 = *(v269 + 8);
          v273 = *(v269 + 16);
          v272 = *(v269 + 24);
          v274 = *(v269 + 40);
          v438 = *(v269 + 32);
          v443 = v274;
          LODWORD(v437) = *(v269 + 48);
          if (v13 != v270 || v266 != v271)
          {
            OUTLINED_FUNCTION_66_2();
            if ((sub_2749FDCC4() & 1) == 0)
            {
              goto LABEL_175;
            }
          }

          v276 = v38 == v273 && v41 == v272;
          if (!v276 && (sub_2749FDCC4() & 1) == 0)
          {
            goto LABEL_175;
          }

          if (v445)
          {
            v277 = v443;
            v41 = v444;
            v278 = v438;
            v13 = v437;
            if (v445 == 1)
            {
              v38 = v446;
              v37 = &unk_280969270;
              if (v437 == 1)
              {
                v445 = sub_2747949D8();
                v279 = v443;
                sub_2747E2DB4(v438, v443, 1);
                OUTLINED_FUNCTION_27_11();
                sub_2747E2DB4(v280, v281, v282);
                sub_2747E2DB4(v438, v279, 1);
                v283 = v441;
                v284 = OUTLINED_FUNCTION_93();
                sub_2747E2DB4(v284, v285, 1);
                v286 = OUTLINED_FUNCTION_23_16();
                sub_274772B38(v286, v287);
                v288 = OUTLINED_FUNCTION_16_18();
                sub_274772B38(v288, v451);
                v289 = OUTLINED_FUNCTION_93();
                sub_2747E2DB4(v289, v290, 1);
                sub_2747E2DB4(v438, v443, 1);
                OUTLINED_FUNCTION_93();
                LODWORD(v445) = sub_2749FD604();
                sub_2747D2EB8(v283, v442, 1);
                OUTLINED_FUNCTION_27_11();
                sub_2747D2EB8(v291, v292, v293);
                v294 = OUTLINED_FUNCTION_93();
                sub_2747D2EB8(v294, v295, 1);
                v296 = OUTLINED_FUNCTION_93();
                sub_2747D2EB8(v296, v297, 1);
                sub_27472ECBC(v453, &qword_280970170);
                sub_2747D2EB8(v438, v443, 1);
                v298 = OUTLINED_FUNCTION_93();
                v300 = 1;
LABEL_196:
                sub_2747D2EB8(v298, v299, v300);
                if (v445)
                {
                  goto LABEL_236;
                }

                goto LABEL_197;
              }

              v318 = v441;
              sub_2747E2DB4(v441, v442, 1);
              v319 = v318;
              v278 = v438;
              v277 = v443;
            }

            else
            {
              v38 = v446;
              v37 = &unk_280969270;
              if (v437 == 2)
              {
                v386 = OUTLINED_FUNCTION_23_16();
                sub_274772B38(v386, v387);
                OUTLINED_FUNCTION_50_10();
                v388 = OUTLINED_FUNCTION_40_14();
                sub_2747E2DB4(v388, v389, v390);
                v392 = v441;
                v391 = v442;
                sub_2747D2EB8(v441, v442, 2);
                v393 = OUTLINED_FUNCTION_40_14();
                sub_2747D2EB8(v393, v394, v395);
                sub_27472ECBC(v453, &qword_280970170);
                v396 = OUTLINED_FUNCTION_40_14();
                sub_2747D2EB8(v396, v397, v398);
                sub_2747D2EB8(v392, v391, 2);
                sub_27472ECBC(v468, &unk_280969270);
                goto LABEL_237;
              }
            }
          }

          else
          {
            v41 = v444;
            LOBYTE(v13) = v437;
            if (!v437)
            {
              v334 = v441 == v438 && v442 == v443;
              v38 = v446;
              v37 = &unk_280969270;
              if (v334)
              {
                sub_2747E2DB4(v441, v442, 0);
                v399 = OUTLINED_FUNCTION_8_33();
                sub_2747E2DB4(v399, v400, v401);
                v402 = OUTLINED_FUNCTION_23_16();
                sub_274772B38(v402, v403);
                v404 = OUTLINED_FUNCTION_16_18();
                sub_274772B38(v404, v451);
                v405 = OUTLINED_FUNCTION_8_33();
                sub_2747E2DB4(v405, v406, v407);
                v408 = OUTLINED_FUNCTION_8_33();
                sub_2747E2DB4(v408, v409, v410);
                v411 = OUTLINED_FUNCTION_8_33();
                sub_2747D2EB8(v411, v412, v413);
                v414 = OUTLINED_FUNCTION_8_33();
                sub_2747D2EB8(v414, v415, v416);
                sub_27472ECBC(v453, &qword_280970170);
                v417 = OUTLINED_FUNCTION_8_33();
                sub_2747D2EB8(v417, v418, v419);
                v420 = OUTLINED_FUNCTION_8_33();
                sub_2747D2EB8(v420, v421, v422);
                goto LABEL_236;
              }

              v335 = v442;
              v336 = v443;
              v337 = sub_2749FDCC4();
              v338 = v336;
              LODWORD(v445) = v337;
              v339 = v438;
              sub_2747E2DB4(v438, v338, 0);
              sub_2747E2DB4(v441, v335, 0);
              v340 = OUTLINED_FUNCTION_23_16();
              sub_274772B38(v340, v341);
              v342 = OUTLINED_FUNCTION_16_18();
              sub_274772B38(v342, v451);
              v343 = v441;
              sub_2747E2DB4(v441, v442, 0);
              sub_2747E2DB4(v339, v443, 0);
              sub_2747D2EB8(v343, v442, 0);
              v344 = OUTLINED_FUNCTION_32();
              sub_2747D2EB8(v344, v345, 0);
              sub_27472ECBC(v453, &qword_280970170);
              v346 = OUTLINED_FUNCTION_32();
              sub_2747D2EB8(v346, v347, 0);
              v298 = v441;
              v299 = v442;
              v300 = 0;
              goto LABEL_196;
            }

            v310 = v443;
            sub_2747E2DB4(v441, v442, 0);

            v277 = v310;
            v38 = v446;
            v37 = &unk_280969270;
            v278 = v438;
          }

          sub_2747E2DB4(v278, v277, v13);
          v320 = OUTLINED_FUNCTION_23_16();
          sub_274772B38(v320, v321);
          v322 = OUTLINED_FUNCTION_16_18();
          sub_274772B38(v322, v451);
          v323 = OUTLINED_FUNCTION_38_13();
          sub_2747E2DB4(v323, v324, v325);
          sub_2747D2EB8(v441, v442, v445);
          v326 = OUTLINED_FUNCTION_38_13();
          sub_2747D2EB8(v326, v327, v328);
          sub_27472ECBC(v453, &qword_280970170);
          v329 = OUTLINED_FUNCTION_38_13();
          sub_2747D2EB8(v329, v330, v331);
          sub_2747D2EB8(v441, v442, v445);
LABEL_197:
          v348 = OUTLINED_FUNCTION_30_12();
          sub_27472ECBC(v348, v349);
LABEL_198:
          v13 = v455;
          goto LABEL_211;
        }

        v244 = CGSizeMake(v454);
        v245 = *v244;
        v13 = v244[1];
        v246 = v244[2];
        memcpy(v452, &v455[3] + 8, 0x81uLL);
        sub_274772C3C(v452);
        OUTLINED_FUNCTION_46_9();
        if (v247)
        {
          goto LABEL_174;
        }

        v248 = CGSizeMake(v452);
        v249 = v248[2];
        v250 = v245 == *v248 && v13 == v248[1];
        if (!v250 && (OUTLINED_FUNCTION_32(), (sub_2749FDCC4() & 1) == 0) || (v251 = *(v246 + 16), v251 != *(v249 + 16)))
        {
          v305 = OUTLINED_FUNCTION_23_16();
          sub_274772B38(v305, v306);
          OUTLINED_FUNCTION_50_10();
          sub_27472ECBC(v453, &qword_280970170);
          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          goto LABEL_211;
        }

        if (v251 && v246 != v249)
        {
          v252 = (v246 + 32);
          v253 = OUTLINED_FUNCTION_23_16();
          sub_274772B38(v253, v254);
          v255 = OUTLINED_FUNCTION_16_18();
          sub_274772B38(v255, v451);
          v445 = v251 - 1;
          for (i = (v249 + 32); ; i = v443 + 88)
          {
            memcpy(v450, v252, sizeof(v450));
            memcpy(v451, i, 0x58uLL);
            v257 = v450[0] == *&v451[0] && v450[1] == *(&v451[0] + 1);
            if (!v257 && (OUTLINED_FUNCTION_116_1(), (sub_2749FDCC4() & 1) == 0) || (v450[2] == *&v451[1] ? (v258 = v450[3] == *(&v451[1] + 1)) : (v258 = 0), !v258 && (sub_2749FDCC4() & 1) == 0))
            {
              sub_27472ECBC(v453, &qword_280970170);
              v37 = &unk_280969270;
              sub_27472ECBC(v468, &unk_280969270);
              goto LABEL_210;
            }

            v38 = v450[5];
            v41 = *(&v451[2] + 1);
            v443 = i;
            if (!v450[5])
            {
              if (*(&v451[2] + 1))
              {
                goto LABEL_209;
              }

              sub_27478C42C(v450, v449);
              sub_27478C42C(v451, v449);
              v41 = v444;
              v37 = &unk_280969270;
              goto LABEL_149;
            }

            v259 = *&v451[4];
            v260 = v450[8];
            v441 = v252;
            v442 = v450[6];
            v261 = v450[4];
            sub_27478C42C(v450, v449);
            sub_27478C42C(v451, v449);
            sub_274772C44(v261, v38);

            if (!v41)
            {
              break;
            }

            swift_unknownObjectRetain();

            v262 = [v260 isEqual_];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v41 = v444;
            v37 = &unk_280969270;
            v252 = v441;
            if ((v262 & 1) == 0)
            {
              sub_27478C488(v451);
              sub_27478C488(v450);
              sub_27472ECBC(v453, &qword_280970170);
              v358 = OUTLINED_FUNCTION_30_12();
              sub_27472ECBC(v358, v359);
              goto LABEL_190;
            }

LABEL_149:
            v263 = v450[9] == *(&v451[4] + 1) && v450[10] == *&v451[5];
            v38 = v446;
            if (v263)
            {
              sub_27478C488(v451);
              sub_27478C488(v450);
            }

            else
            {
              v264 = sub_2749FDCC4();
              sub_27478C488(v451);
              sub_27478C488(v450);
              if ((v264 & 1) == 0)
              {
                sub_27472ECBC(v453, &qword_280970170);
                goto LABEL_197;
              }
            }

            if (!v445)
            {
              goto LABEL_235;
            }

            --v445;
            v252 += 88;
          }

          swift_unknownObjectRelease();
          sub_27478C488(v451);
          sub_27478C488(v450);
LABEL_209:
          sub_27472ECBC(v453, &qword_280970170);
          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_46_9();
LABEL_210:
          v13 = v455;
LABEL_211:
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v357);
          sub_274772B94(v13 + 56);
          sub_274772B94(v47 + 56);
LABEL_57:
          if (v42 == v448)
          {
            sub_2747D21CC(v471);

            v34 = v431;
            v35 = v426;
            v36 = v427;
LABEL_212:
            ++v34;
            continue;
          }

          goto LABEL_11;
        }

        v382 = OUTLINED_FUNCTION_23_16();
        sub_274772B38(v382, v383);
        v384 = OUTLINED_FUNCTION_16_18();
        sub_274772B38(v384, v451);
LABEL_235:
        sub_27472ECBC(v453, &qword_280970170);
LABEL_236:
        sub_27472ECBC(v468, &unk_280969270);
        v13 = v455;
LABEL_237:
        OUTLINED_FUNCTION_0_38();
        sub_2749477E8(v9, v385);
        sub_274772B94(v13 + 56);
        sub_274772B94(v47 + 56);

        sub_2747D21CC(v471);
LABEL_217:
        v361 = v432;
        sub_2749FA3D4();
        v362 = sub_2749FA4D4();
        v363 = sub_2749FD2B4();
        if (OUTLINED_FUNCTION_70_2(v363))
        {
          v364 = OUTLINED_FUNCTION_12_2();
          *v364 = 0;
          _os_log_impl(&dword_274719000, v362, v363, "Selected entry is present already, bailing.", v364, 2u);
          OUTLINED_FUNCTION_31();

          sub_274772BE8(v474);
        }

        else
        {
          sub_274772BE8(v474);
        }

        v434(v361, v439);
LABEL_221:

LABEL_222:
        OUTLINED_FUNCTION_46();
        return;
      default:
        v48 = *v46;
        v49 = *(v46 + 8);
        v50 = *(v46 + 16);
        v13 = *(v46 + 24);
        OUTLINED_FUNCTION_53_8(v475);
        if (sub_274772AD0(v475))
        {
          v51 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v51, v52);
          OUTLINED_FUNCTION_33_12();
          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v53);
          goto LABEL_57;
        }

        v101 = sub_274721C98(v475);
        v102 = v101[2];
        v103 = v101[3];
        if (v48 != *v101 || v49 != v101[1])
        {
          OUTLINED_FUNCTION_116_1();
          if ((sub_2749FDCC4() & 1) == 0)
          {
            v149 = OUTLINED_FUNCTION_15_24();
            sub_274772ADC(v149, v150);
            OUTLINED_FUNCTION_33_12();
            v37 = &unk_280969270;
            sub_27472ECBC(v468, &unk_280969270);
            OUTLINED_FUNCTION_0_38();
            sub_2749477E8(v9, v151);
            v38 = v446;
            v41 = v444;
            goto LABEL_57;
          }
        }

        if (v50 == v102 && v13 == v103)
        {
          v379 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v379, v380);
          OUTLINED_FUNCTION_33_12();
          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v381);
          sub_2747D21CC(v471);
        }

        else
        {
          OUTLINED_FUNCTION_32();
          v106 = sub_2749FDCC4();
          v107 = OUTLINED_FUNCTION_15_24();
          sub_274772ADC(v107, v108);
          OUTLINED_FUNCTION_33_12();
          v37 = &unk_280969270;
          sub_27472ECBC(v468, &unk_280969270);
          OUTLINED_FUNCTION_0_38();
          sub_2749477E8(v9, v109);
          v38 = v446;
          v41 = v444;
          if ((v106 & 1) == 0)
          {
            goto LABEL_57;
          }

LABEL_215:
          sub_2747D21CC(v471);
        }

        goto LABEL_217;
    }
  }
}

uint64_t sub_274945E9C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_appAvailabilityStrategy))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (*(a1 + 16) == 1 && (sub_274948688() & 1) != 0)
    {
      if (qword_280966BA8 != -1)
      {
        swift_once();
      }

      v2 = sub_27477DEAC();
    }
  }

  return v2 & 1;
}

uint64_t sub_274945FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v163 = a5;
  v165 = a4;
  v173 = a3;
  v164 = type metadata accessor for SmartShortcutPickerSelectedEntry();
  MEMORY[0x28223BE20](v164);
  v150 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v147 - v12;
  v174 = sub_2749FA0F4();
  v14 = *(v174 - 8);
  v15 = MEMORY[0x28223BE20](v174);
  v156 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v170 = &v147 - v17;
  v18 = type metadata accessor for SmartShortcutPickerEntry();
  v19 = MEMORY[0x28223BE20](v18);
  v175 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v169 = &v147 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v147 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v154 = &v147 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v153 = &v147 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v152 = &v147 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v168 = &v147 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v167 = &v147 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v166 = &v147 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v40 = &v147 - v39;
  v41 = *a1;
  v159 = *(a1 + 8);
  v160 = v41;
  v158 = *(a1 + 16);
  v42 = *(a1 + 32);
  v157 = *(a1 + 24);
  v44 = *(a1 + 40);
  v43 = *(a1 + 48);
  v161 = v42;
  v162 = v44;
  v45 = *(v43 + 16);
  if (v45)
  {
    v172 = v37;
    v147 = v11;
    v148 = v13;
    v195 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v46 = v43 + v195;
    v171 = (v14 + 16);
    v184 = *(v38 + 72);
    v151 = (v14 + 8);
    v47 = MEMORY[0x277D84F90];
    v179 = &v147 - v39;
    v180 = a2;
    v48 = v175;
    while (1)
    {
      sub_2748AF558(v46, v40, type metadata accessor for SmartShortcutPickerEntry);
      memcpy(v193, v40, sizeof(v193));
      memcpy(v194, v40, 0xB9uLL);
      if (sub_274772AD0(v194) == 3)
      {
        v183 = v47;
        v49 = sub_274721C98(v194);
        v51 = *v49;
        v50 = *(v49 + 8);
        v52 = *(v49 + 16);
        v53 = *(v49 + 24);
        v54 = *(v49 + 32);
        v185 = *(v49 + 40);
        v186 = v54;
        v55 = *(v49 + 48);
        if (*(v180 + 48))
        {
          if ((v55 & 1) == 0)
          {
            memcpy(v192, v193, 0xB9uLL);
            v69 = sub_274721C98(v192);
            sub_2747B97A0(v69, v191, &unk_280970630);
            sub_274772B94(v49 + 56);
            v62 = v51;
            v63 = v50;
            v64 = v52;
            v65 = v53;
            v67 = v185;
            v66 = v186;
            v68 = 0;
            goto LABEL_11;
          }

          v178 = *(v49 + 48);
          v56 = *(v180 + 16);
          v189[0] = *v180;
          v189[1] = v56;
          v189[2] = *(v180 + 32);
          v190 = *(v180 + 48);
          v176 = v51;
          v177 = v50;
          v187[0] = v51;
          v187[1] = v50;
          v181 = v52;
          v182 = v53;
          v187[2] = v52;
          v187[3] = v53;
          v57 = v185;
          v58 = v186;
          v187[4] = v186;
          v187[5] = v185;
          v188 = 1;
          memcpy(v192, v193, 0xB9uLL);
          v59 = sub_274721C98(v192);
          sub_2747B97A0(v59, v191, &unk_280970630);
          v60 = static SmartShortcutPickerActionTemplate.== infix(_:_:)(v189, v187);
          v40 = v179;
          v47 = v183;
          if (v60)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v181 = v52;
          v182 = v53;
          if (v55)
          {
            memcpy(v192, v193, 0xB9uLL);
            v61 = sub_274721C98(v192);
            sub_2747B97A0(v61, v191, &unk_280970630);
            sub_274772B94(v49 + 56);
            v62 = v51;
            v63 = v50;
            v64 = v181;
            v65 = v182;
            v67 = v185;
            v66 = v186;
            v68 = 1;
LABEL_11:
            sub_27477CABC(v62, v63, v64, v65, v66, v67, v68);
            goto LABEL_46;
          }

          v178 = v55;
          v70 = *(v180 + 32);
          v71 = *(v180 + 40);
          v72 = *v180 == v51 && v50 == *(v180 + 8);
          v57 = v185;
          if (!v72)
          {
            v73 = v51;
            v74 = *(v180 + 32);
            v75 = v185;
            v76 = v50;
            v77 = *(v180 + 40);
            v78 = sub_2749FDCC4();
            v70 = v74;
            v71 = v77;
            v51 = v73;
            v50 = v76;
            v57 = v75;
            if ((v78 & 1) == 0)
            {
              memcpy(v192, v193, 0xB9uLL);
              v102 = sub_274721C98(v192);
              sub_2747B97A0(v102, v191, &unk_280970630);
              sub_274772B94(v49 + 56);
              v83 = v73;
              v84 = v50;
              v85 = v181;
              v86 = v182;
              v87 = v186;
              goto LABEL_44;
            }
          }

          if (!v57)
          {
            v176 = v51;
            v177 = v50;
            v58 = v186;
            if (!v71)
            {
              goto LABEL_27;
            }

            memcpy(v192, v193, 0xB9uLL);
            v82 = sub_274721C98(v192);
            sub_2747B97A0(v82, v191, &unk_280970630);
            sub_274772B94(v49 + 56);
            v83 = v176;
            v84 = v177;
            v85 = v181;
            v86 = v182;
            v87 = v58;
            v88 = 0;
            goto LABEL_45;
          }

          v58 = v186;
          if (!v71)
          {
            memcpy(v192, v193, 0xB9uLL);
            v103 = sub_274721C98(v192);
            sub_2747B97A0(v103, v191, &unk_280970630);
            sub_274772B94(v49 + 56);
            v83 = v51;
            v84 = v50;
            v85 = v181;
            v86 = v182;
            v87 = v58;
LABEL_44:
            v88 = v57;
LABEL_45:
            sub_27477CABC(v83, v84, v85, v86, v87, v88, 0);
            v48 = v175;
LABEL_46:
            v40 = v179;
            v47 = v183;
            goto LABEL_47;
          }

          v176 = v51;
          v177 = v50;
          if (v186 == v70 && v57 == v71)
          {
LABEL_27:
            memcpy(v192, v193, 0xB9uLL);
            v89 = sub_274721C98(v192);
            sub_2747B97A0(v89, v191, &unk_280970630);
            v40 = v179;
            v47 = v183;
LABEL_28:
            memcpy(v191, (v49 + 56), 0x81uLL);
            v90 = sub_274772C3C(v191);
            if (!v90)
            {
              CGSizeMake(v191);
              sub_274772B94(v49 + 56);
              sub_27477CABC(v176, v177, v181, v182, v58, v57, v178);
              sub_2748AF558(v40, v169, type metadata accessor for SmartShortcutPickerEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_274763E3C(0, *(v47 + 16) + 1, 1, v47);
                v47 = v131;
              }

              v95 = *(v47 + 16);
              v94 = *(v47 + 24);
              v48 = v175;
              if (v95 >= v94 >> 1)
              {
                sub_274763E3C(v94 > 1, v95 + 1, 1, v47);
                v47 = v132;
              }

              sub_2749477E8(v40, type metadata accessor for SmartShortcutPickerEntry);
              *(v47 + 16) = v95 + 1;
              v96 = v47 + v195 + v95 * v184;
              v97 = v184;
              v98 = v169;
              goto LABEL_52;
            }

            if (v90 != 1)
            {
              if (*(CGSizeMake(v191) + 48) != 2)
              {
                sub_274772B94(v49 + 56);
                sub_27477CABC(v176, v177, v181, v182, v58, v57, v178);
                sub_2748AF558(v40, v155, type metadata accessor for SmartShortcutPickerEntry);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_274763E3C(0, *(v47 + 16) + 1, 1, v47);
                  v47 = v133;
                }

                v48 = v175;
                v107 = *(v47 + 16);
                v106 = *(v47 + 24);
                if (v107 >= v106 >> 1)
                {
                  sub_274763E3C(v106 > 1, v107 + 1, 1, v47);
                  v47 = v134;
                }

                sub_2749477E8(v40, type metadata accessor for SmartShortcutPickerEntry);
                *(v47 + 16) = v107 + 1;
                v96 = v47 + v195 + v107 * v184;
                v97 = v184;
                v98 = v155;
                goto LABEL_52;
              }

              v99 = &v40[v172[5]];
              v149 = *v171;
              v149(v156, v99, v174);
              swift_getKeyPath();
              swift_getKeyPath();
              v100 = v147;
              sub_2749FA904();

              if (__swift_getEnumTagSinglePayload(v100, 1, v164))
              {
                sub_27472ECBC(v100, &unk_280969260);
                goto LABEL_41;
              }

              v117 = v150;
              sub_2748AF558(v100, v150, type metadata accessor for SmartShortcutPickerSelectedEntry);
              sub_27472ECBC(v100, &unk_280969260);
              v118 = *(v117 + 216);
              v183 = v118;
              sub_2749477E8(v117, type metadata accessor for SmartShortcutPickerSelectedEntry);
              if (v118)
              {
                v101 = v172;
              }

              else
              {
LABEL_41:
                v101 = v172;
                v183 = *&v40[v172[6]];
              }

              v119 = v152;
              memcpy(v152, v173, 0xB9uLL);
              v120 = v156;
              v149(&v119[v101[5]], v156, v174);
              *&v119[v101[6]] = v183;
              sub_274772ADC(v173, v192);
              (*v151)(v120, v174);
              *&v119[v101[7]] = MEMORY[0x277D84F90];
              sub_2748AF558(v119, v153, type metadata accessor for SmartShortcutPickerEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_274763E3C(0, *(v47 + 16) + 1, 1, v47);
                v47 = v135;
              }

              v97 = v184;
              v122 = *(v47 + 16);
              v121 = *(v47 + 24);
              v123 = v122 + 1;
              if (v122 >= v121 >> 1)
              {
                sub_274763E3C(v121 > 1, v122 + 1, 1, v47);
                v47 = v136;
              }

              sub_274772B94(v49 + 56);
              sub_27477CABC(v176, v177, v181, v182, v186, v185, v178);
              sub_2749477E8(v152, type metadata accessor for SmartShortcutPickerEntry);
              *(v47 + 16) = v123;
              sub_2748605C4(v153, v47 + v195 + v122 * v97);
              sub_2748AF558(v40, v154, type metadata accessor for SmartShortcutPickerEntry);
              v124 = *(v47 + 24);
              v125 = v122 + 2;
              if ((v122 + 2) > (v124 >> 1))
              {
                sub_274763E3C(v124 > 1, v122 + 2, 1, v47);
                v47 = v137;
              }

              v48 = v175;
              sub_2749477E8(v40, type metadata accessor for SmartShortcutPickerEntry);
              *(v47 + 16) = v125;
              v96 = v47 + v195 + v123 * v97;
              v98 = v154;
              goto LABEL_52;
            }

            CGSizeMake(v191);
            v91 = &v40[v172[5]];
            v149 = *v171;
            v149(v170, v91, v174);
            swift_getKeyPath();
            swift_getKeyPath();
            v92 = v148;
            sub_2749FA904();

            if (__swift_getEnumTagSinglePayload(v92, 1, v164))
            {
              sub_27472ECBC(v92, &unk_280969260);
              goto LABEL_32;
            }

            v108 = v150;
            sub_2748AF558(v92, v150, type metadata accessor for SmartShortcutPickerSelectedEntry);
            sub_27472ECBC(v92, &unk_280969260);
            v109 = *(v108 + 216);
            v183 = v109;
            sub_2749477E8(v108, type metadata accessor for SmartShortcutPickerSelectedEntry);
            if (v109)
            {
              v93 = v172;
            }

            else
            {
LABEL_32:
              v93 = v172;
              v183 = *&v40[v172[6]];
            }

            v110 = v166;
            memcpy(v166, v173, 0xB9uLL);
            v111 = v170;
            v149(&v110[v93[5]], v170, v174);
            *&v110[v93[6]] = v183;
            sub_274772ADC(v173, v192);
            (*v151)(v111, v174);
            *&v110[v93[7]] = MEMORY[0x277D84F90];
            sub_2748AF558(v110, v167, type metadata accessor for SmartShortcutPickerEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274763E3C(0, *(v47 + 16) + 1, 1, v47);
              v47 = v128;
            }

            v97 = v184;
            v113 = *(v47 + 16);
            v112 = *(v47 + 24);
            v114 = v113 + 1;
            if (v113 >= v112 >> 1)
            {
              sub_274763E3C(v112 > 1, v113 + 1, 1, v47);
              v47 = v129;
            }

            sub_274772B94(v49 + 56);
            sub_27477CABC(v176, v177, v181, v182, v186, v185, v178);
            sub_2749477E8(v166, type metadata accessor for SmartShortcutPickerEntry);
            *(v47 + 16) = v114;
            sub_2748605C4(v167, v47 + v195 + v113 * v97);
            sub_2748AF558(v40, v168, type metadata accessor for SmartShortcutPickerEntry);
            v115 = *(v47 + 24);
            v116 = v113 + 2;
            if ((v113 + 2) > (v115 >> 1))
            {
              sub_274763E3C(v115 > 1, v113 + 2, 1, v47);
              v47 = v130;
            }

            v48 = v175;
            sub_2749477E8(v40, type metadata accessor for SmartShortcutPickerEntry);
            *(v47 + 16) = v116;
            v96 = v47 + v195 + v114 * v97;
            v98 = v168;
            goto LABEL_52;
          }

          v80 = sub_2749FDCC4();
          memcpy(v192, v193, 0xB9uLL);
          v81 = sub_274721C98(v192);
          sub_2747B97A0(v81, v191, &unk_280970630);
          v40 = v179;
          v47 = v183;
          if (v80)
          {
            goto LABEL_28;
          }
        }

        sub_274772B94(v49 + 56);
        sub_27477CABC(v176, v177, v181, v182, v58, v57, v178);
        v48 = v175;
      }

LABEL_47:
      sub_2748AF558(v40, v48, type metadata accessor for SmartShortcutPickerEntry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274763E3C(0, *(v47 + 16) + 1, 1, v47);
        v47 = v126;
      }

      v105 = *(v47 + 16);
      v104 = *(v47 + 24);
      if (v105 >= v104 >> 1)
      {
        sub_274763E3C(v104 > 1, v105 + 1, 1, v47);
        v47 = v127;
      }

      sub_2749477E8(v40, type metadata accessor for SmartShortcutPickerEntry);
      *(v47 + 16) = v105 + 1;
      v96 = v47 + v195 + v105 * v184;
      v97 = v184;
      v98 = v48;
LABEL_52:
      sub_2748605C4(v98, v96);
      v46 += v97;
      if (!--v45)
      {
        goto LABEL_78;
      }
    }
  }

  v47 = MEMORY[0x277D84F90];
LABEL_78:
  v138 = v163;
  v140 = v159;
  v139 = v160;
  *v163 = v160;
  v138[1] = v140;
  v141 = v158;
  *(v138 + 16) = v158;
  v143 = v161;
  v142 = v162;
  v138[3] = v157;
  v138[4] = v143;
  v138[5] = v142;
  v194[0] = MEMORY[0x277D84FA0];
  sub_27477D408(v139, v140, v141);

  v144 = v142;
  v145 = sub_274947AD8(v47, v194);

  v138[6] = v145;
  *(v138 + 56) = 1;
  return result;
}

uint64_t dispatch thunk of SmartShortcutPickerDataSourceProtocol.load()()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_35_0();
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2747ED3A8;

  return v6(v1, v0);
}

uint64_t type metadata accessor for SmartShortcutPickerDataSource()
{
  result = qword_280970498;
  if (!qword_280970498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27494723C()
{
  sub_27472CBCC(319, &qword_28096B738, &qword_28096B710);
  if (v0 <= 0x3F)
  {
    sub_27472CBCC(319, &qword_2809704A8, &unk_280969260);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_274947394(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v37 = a1[5];
  v38 = a1[3];
  v53[0] = v1;
  v3 = *(v1 + 16);
  sub_2747B97A0(v53, &v50, &qword_28096B710);

  v5 = 0;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v34 = (MEMORY[0x277D84F90] + 32);
  v8 = v1 + 32;
  while (2)
  {
    v36 = v5;
    while (2)
    {
      v9 = v8;
      v10 = (v8 + (v6 << 6));
      for (i = v6; ; ++i)
      {
        if (v3 == i)
        {
          sub_27472ECBC(v53, &qword_28096B710);

          v31 = v7[3];
          if (v31 >= 2)
          {
            v32 = v31 >> 1;
            v27 = __OFSUB__(v32, v36);
            v33 = v32 - v36;
            if (v27)
            {
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v7[2] = v33;
          }

          return v7;
        }

        if (i >= v3)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v12 = *v10;
        v13 = v10[1];
        v14 = v10[2];
        *(v46 + 9) = *(v10 + 41);
        v45[1] = v13;
        v46[0] = v14;
        v45[0] = v12;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_32;
        }

        v15 = v10[1];
        v47 = *v10;
        v48 = v15;
        v49[0] = v10[2];
        *(v49 + 9) = *(v10 + 41);
        sub_2747B24E0(v45, &v42);
        if (v2(&v47))
        {
          break;
        }

        v42 = v47;
        v43 = v48;
        v44[0] = v49[0];
        *(v44 + 9) = *(v49 + 9);
        result = sub_2747D21CC(&v42);
        v10 += 4;
      }

      v39 = v47;
      v40 = v48;
      v41[0] = v49[0];
      *(v41 + 9) = *(v49 + 9);
      v38(&v50, &v39);
      v42 = v39;
      v43 = v40;
      v44[0] = v41[0];
      *(v44 + 9) = *(v41 + 9);
      sub_2747D21CC(&v42);
      result = v37(&v50);
      if ((result & 1) == 0)
      {
        v39 = v50;
        v40 = v51;
        v41[0] = v52[0];
        *(v41 + 9) = *(v52 + 9);
        result = sub_2747D21CC(&v39);
        v8 = v9;
        continue;
      }

      break;
    }

    v39 = v50;
    v40 = v51;
    v41[0] = v52[0];
    *(v41 + 9) = *(v52 + 9);
    v16 = v36;
    if (v36)
    {
      goto LABEL_25;
    }

    v17 = v7[3];
    if (((v17 >> 1) + 0x4000000000000000) >= 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
      v20 = swift_allocObject();
      v21 = _swift_stdlib_malloc_size(v20);
      v22 = (v21 - 32) / 64;
      v20[2] = v19;
      v20[3] = 2 * v22;
      v23 = (v20 + 4);
      v24 = v7[3];
      v25 = v24 >> 1;
      if (v7[2])
      {
        if (v20 != v7 || v23 >= &v7[8 * v25 + 4])
        {
          v35 = (v21 - 32) / 64;
          memmove(v20 + 4, v7 + 4, v25 << 6);
          v22 = v35;
          v23 = (v20 + 4);
        }

        v7[2] = 0;
      }

      v34 = (v23 + (v25 << 6));
      v16 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

      v7 = v20;
LABEL_25:
      v8 = v9;
      v27 = __OFSUB__(v16, 1);
      v5 = v16 - 1;
      if (!v27)
      {
        v28 = v39;
        v29 = v40;
        v30 = v41[0];
        *(v34 + 41) = *(v41 + 9);
        v34[1] = v29;
        v34[2] = v30;
        *v34 = v28;
        v34 += 4;
        continue;
      }

LABEL_34:
      __break(1u);
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_2749476F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_274947740()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_18(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_15(v3);

  return sub_2749417B4(v5, v6, v7, v1);
}

uint64_t sub_2749477E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_274947840()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_18(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_15(v1);

  return sub_274940A84();
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_35_0();
  swift_unknownObjectRelease();
  v1(*(v0 + 32));
  v2 = OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v2, v3, 7);
}

uint64_t sub_27494792C()
{
  OUTLINED_FUNCTION_28_10();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_15(v4);

  return sub_274943154(v6, v7, v8, v2, v1);
}

uint64_t sub_2749479D0()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18(v4);
  *v5 = v6;
  v5[1] = sub_2747F2F14;

  return sub_274917328(v2, v3);
}

uint64_t OUTLINED_FUNCTION_33_12()
{

  return sub_274772ADC(v0 + 1408, v0 + 688);
}

void OUTLINED_FUNCTION_49_8()
{

  sub_274763F6C();
}

uint64_t sub_274947AD8(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for SmartShortcutPickerEntry();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_5_1();
  v26 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  v16 = 0;
  v29 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v29 == v16)
    {

      return v27;
    }

    if (v16 >= *(a1 + 16))
    {
      break;
    }

    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v18 = *(v4 + 72);
    sub_27483585C(a1 + v17 + v18 * v16, v15);
    sub_27483585C(v15, v9);
    sub_274765864();
    v20 = v19;
    sub_274835920(v12);
    if (v20)
    {
      sub_2748605C4(v15, v26);
      v21 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476D7A8();
        v21 = v30;
      }

      v23 = *(v21 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v21 + 24) >> 1)
      {
        v27 = v23 + 1;
        v25 = v23;
        sub_27476D7A8();
        v24 = v27;
        v23 = v25;
        v21 = v30;
      }

      ++v16;
      *(v21 + 16) = v24;
      v27 = v21;
      result = sub_2748605C4(v26, v21 + v17 + v23 * v18);
    }

    else
    {
      result = sub_274835920(v15);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_274947D28()
{
  OUTLINED_FUNCTION_16_19();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v11 = *v4;
    v7 = v11;
    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;

    ++v4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

BOOL sub_274947DC8()
{
  OUTLINED_FUNCTION_16_19();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_274947E70()
{
  OUTLINED_FUNCTION_16_19();
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *(v3 - 1);
    v6 = *v3;
    v9 = *(v3 - 2);
    v10 = v5;
    v11 = v6;
    sub_27477D408(v9, v5, v6);
    v7 = v1(&v9);
    sub_27478C4DC(v9, v10, v11);
    if (v0)
    {
      break;
    }

    v3 += 24;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

uint64_t static SmartShortcutPickerSection.ID.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_27;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_32_1();
        v15 = sub_2749FDCC4();
        v37 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v37, v38, v39);
        v40 = OUTLINED_FUNCTION_1_44();
        sub_27477D408(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_1_44();
        sub_27478C4DC(v43, v44, v45);
        v25 = OUTLINED_FUNCTION_11_0();
        goto LABEL_26;
      }

      v32 = 1;
      v62 = OUTLINED_FUNCTION_1_44();
      sub_27477D408(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_1_44();
      sub_27477D408(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_1_44();
      sub_27478C4DC(v68, v69, v70);
      v33 = OUTLINED_FUNCTION_1_44();
      goto LABEL_38;
    case 2u:
      if (v7 != 2)
      {
LABEL_27:

        goto LABEL_28;
      }

      v13 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_27477D408(v13, v2, 2u);
        v56 = OUTLINED_FUNCTION_2_42();
        sub_27477D408(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_2_42();
        sub_27478C4DC(v59, v60, v61);
        v10 = OUTLINED_FUNCTION_2_42();
        goto LABEL_36;
      }

      v15 = sub_2749FDCC4();
      v16 = OUTLINED_FUNCTION_12();
      sub_27477D408(v16, v17, v18);
      v19 = OUTLINED_FUNCTION_2_42();
      sub_27477D408(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_2_42();
      sub_27478C4DC(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_12();
LABEL_26:
      sub_27478C4DC(v25, v26, v27);
      return v15 & 1;
    case 3u:
      if (v3 | v2)
      {
        if (v7 != 3 || v6 != 1 || v5 != 0)
        {
LABEL_28:
          v47 = OUTLINED_FUNCTION_66();
          sub_27477D408(v47, v48, v7);
          v49 = OUTLINED_FUNCTION_32_1();
          sub_27478C4DC(v49, v50, v4);
          v51 = OUTLINED_FUNCTION_66();
          sub_27478C4DC(v51, v52, v7);
          return 0;
        }

        v30 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v30, v31, 3u);
        v32 = 1;
        v33 = 1;
        v34 = 0;
        v35 = 3;
LABEL_38:
        sub_27478C4DC(v33, v34, v35);
      }

      else
      {
        if (v7 != 3 || (v5 | v6) != 0)
        {
          goto LABEL_28;
        }

        v54 = OUTLINED_FUNCTION_32_1();
        sub_27478C4DC(v54, v55, 3u);
        v10 = OUTLINED_FUNCTION_18_23();
LABEL_36:
        sub_27478C4DC(v10, v11, v12);
        return 1;
      }

      return v32;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_28;
      }

      v8 = OUTLINED_FUNCTION_32_1();
      sub_27478C4DC(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_66();
      v12 = 0;
      goto LABEL_36;
  }
}

void static SmartShortcutPickerSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v16 = *(a2 + 40);
  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  v21[0] = v2;
  v21[1] = v3;
  v22 = v9;
  v19[0] = v5;
  v19[1] = v6;
  v20 = v10;
  sub_27477D408(v2, v3, v9);
  sub_27477D408(v5, v6, v10);
  v11 = static SmartShortcutPickerSection.ID.== infix(_:_:)(v21, v19);
  sub_27478C4DC(v5, v6, v10);
  sub_27478C4DC(v2, v3, v9);
  if (v11)
  {
    v12 = v18 == v7 && v4 == v8;
    if (v12 || (sub_2749FDCC4() & 1) != 0)
    {
      sub_2747949D8();
      v13 = v17;
      v14 = v16;
      v15 = sub_2749FD604();

      if (v15)
      {

        sub_2747840D0();
      }
    }
  }
}

BOOL sub_274948284(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return static SmartShortcutPickerSection.ID.< infix(_:_:)(v7, v9);
}

BOOL sub_2749482D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return !static SmartShortcutPickerSection.ID.< infix(_:_:)(v9, v7);
}

uint64_t sub_274948330(uint64_t a1)
{
  sub_27494B33C();
  v2 = sub_2749FCCB4();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return sub_27493550C(v2);
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v56 = v3;
    v5 = i[1];
    v62 = *i;
    v63 = v5;
    *&v64[9] = *(i + 41);
    *v64 = i[2];
    v6 = v62;
    v7 = v5;
    if (v2[2])
    {
      sub_2747B24E0(&v62, &v59);
      v8 = OUTLINED_FUNCTION_9_26();
      v11 = sub_2747984F8(v8, v9, v10);
      if (v12)
      {
        v13 = *&v64[8];
        v14 = *v64;
        v55 = *(&v63 + 1);
        v15 = (v2[7] + (v11 << 6));
        v17 = v15[1];
        v16 = v15[2];
        v18 = *v15;
        *&v61[9] = *(v15 + 41);
        v60 = v17;
        *v61 = v16;
        v59 = v18;
        v58 = *&v61[16];
        sub_2747B24E0(&v59, v57);
        v19 = OUTLINED_FUNCTION_9_26();
        sub_27477D408(v19, v20, v21);

        v22 = v13;

        sub_27478248C();
        v57[0] = MEMORY[0x277D84FA0];
        v23 = sub_274947AD8(v58, v57);

        v65 = v6;
        v66 = v7;
        v67 = v55;
        v68 = v14;
        v69 = v22;
        v70 = v23;
        v71 = 1;
        swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v2;
        sub_2748F9FD4(&v65, v6, *(&v6 + 1), v7);
        sub_2747D21CC(&v59);
        sub_2747D21CC(&v62);
        v2 = v57[0];
        goto LABEL_15;
      }
    }

    else
    {
      sub_2747B24E0(&v62, &v59);
    }

    sub_2747B24E0(&v62, &v59);
    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v2;
    v24 = OUTLINED_FUNCTION_9_26();
    v27 = sub_2747984F8(v24, v25, v26);
    if (__OFADD__(v2[2], (v28 & 1) == 0))
    {
      break;
    }

    v29 = v27;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F070);
    if (sub_2749FDA84())
    {
      v31 = OUTLINED_FUNCTION_9_26();
      v34 = sub_2747984F8(v31, v32, v33);
      if ((v30 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    if (v30)
    {
      v2 = v57[0];
      v36 = (*(v57[0] + 56) + (v29 << 6));
      v38 = v36[1];
      v37 = v36[2];
      v39 = *v36;
      *&v61[9] = *(v36 + 41);
      v60 = v38;
      *v61 = v37;
      v59 = v39;
      v40 = v62;
      v41 = v63;
      v42 = *v64;
      *(v36 + 41) = *&v64[9];
      v36[1] = v41;
      v36[2] = v42;
      *v36 = v40;
      sub_2747D21CC(&v59);
      sub_2747D21CC(&v62);
    }

    else
    {
      v2 = v57[0];
      *(v57[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v43 = v2[6] + 24 * v29;
      *v43 = v6;
      *(v43 + 16) = v7;
      v44 = (v2[7] + (v29 << 6));
      v45 = *&v64[9];
      v47 = v63;
      v46 = *v64;
      *v44 = v62;
      v44[1] = v47;
      v44[2] = v46;
      *(v44 + 41) = v45;
      v48 = OUTLINED_FUNCTION_9_26();
      sub_27477D408(v48, v49, v50);
      sub_2747D21CC(&v62);
      v51 = v2[2];
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        goto LABEL_18;
      }

      v2[2] = v53;
    }

LABEL_15:
    v3 = v56 - 1;
    if (v56 == 1)
    {
      return sub_27493550C(v2);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_274948688()
{
  v1 = type metadata accessor for SmartShortcutPickerEntry();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1 - 8);
  v5 = &__dst[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 48);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10 = v7 - 1;
  while (v8 < v7)
  {
    sub_27483585C(v9 + *(v2 + 72) * v8, v5);
    memcpy(__dst, v5, 0xB9uLL);
    if (sub_274772AD0(__dst) == 3 && *(sub_274721C98(__dst) + 48) == 1)
    {
      sub_274835920(v5);
      return 1;
    }

    result = sub_274835920(v5);
    if (v10 == v8)
    {
      return 0;
    }

    v7 = *(v6 + 16);
    ++v8;
  }

  __break(1u);
  return result;
}

uint64_t SmartShortcutPickerSection.filter(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_43();
  v76 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_1();
  v77 = v9;
  MEMORY[0x28223BE20](v10);
  v82 = &v63 - v11;
  v12 = *v3;
  v69 = *(v3 + 8);
  v68 = *(v3 + 16);
  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  v15 = *(v3 + 48);
  v67 = *(v3 + 24);
  v95[0] = v67;
  v95[1] = v13;
  v94[0] = a1;
  v94[1] = a2;
  sub_27475D0D0();

  if ((sub_2749FD754() & 1) == 0)
  {
    v63 = v12;
    v64 = v13;
    v65 = v14;
    v66 = a3;

    v18 = 0;
    v75 = *(v15 + 16);
    v16 = MEMORY[0x277D84F90];
    v74 = v15;
    while (1)
    {
LABEL_4:
      if (v18 == v75)
      {
        v14 = v65;
        a3 = v66;
        v12 = v63;
        v13 = v64;
        goto LABEL_30;
      }

      if (v18 >= *(v15 + 16))
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v81 = v16;
      v19 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v20 = v18 + 1;
      v78 = *(v76 + 72);
      v79 = v19;
      v21 = v82;
      sub_27483585C(v15 + v19 + v78 * v18, v82);
      memcpy(v94, v21, 0xB9uLL);
      memcpy(v95, v21, 0xB9uLL);
      v22 = sub_274772AD0(v95);
      v80 = v20;
      switch(v22)
      {
        case 1:
          sub_274721C98(v95);
          sub_2749FCE14();
          if (qword_28159E3A8 != -1)
          {
            swift_once();
          }

          v43 = qword_28159E448;
          v44 = sub_2749FCD64();
          v45 = sub_2749FCD64();

          v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

          v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v25 = v47;

          goto LABEL_17;
        case 2:
          v26 = *sub_274721C98(v95);
          OUTLINED_FUNCTION_20_17();
          v27 = *sub_274721C98(&v91);
          v28 = [v26 name];
          v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v25 = v29;

          sub_274772BE8(v94);
          goto LABEL_17;
        case 3:
          v30 = sub_274721C98(v95);
          v31 = *v30;
          v32 = *(v30 + 8);
          v34 = *(v30 + 16);
          v33 = *(v30 + 24);
          v35 = *(v30 + 32);
          v71 = *(v30 + 40);
          v72 = v35;
          LODWORD(v70) = *(v30 + 48);
          OUTLINED_FUNCTION_20_17();
          v36 = sub_274721C98(&v91);
          sub_274948E60(v36, &v89);
          sub_27477CABC(v31, v32, v34, v33, v72, v71, v70);
          memcpy(v93, (v30 + 56), 0x81uLL);
          if (sub_274772C3C(v93) == 1)
          {
            CGSizeMake(v93);
            v38 = v37[9];
            if (v38)
            {
              v39 = v37[8];
              v70 = v37[7];
              v71 = v39;
              v40 = v37[6];
              v41 = *v37;
              v42 = v37[1];

              v87 = v41;
              v88 = v42;
              v72 = v42;
              v89 = 31524;
              v90 = 0xE200000000000000;

              MEMORY[0x277C5EBC0](v40, v70);
              MEMORY[0x277C5EBC0](125, 0xE100000000000000);
              v85 = v89;
              v86 = v90;
              v83 = v71;
              v84 = v38;
              sub_2748A5874();
              sub_2748A58C8();
              sub_2749FD204();

              sub_274772B94(v30 + 56);
              v24 = v89;
              v25 = v90;
              goto LABEL_17;
            }

            v24 = v37[2];
            v25 = v37[3];
          }

          else
          {
            CGSizeMake(v93);
            v24 = *v48;
            v25 = v48[1];
          }

          sub_274772B94(v30 + 56);
LABEL_17:
          v91 = v24;
          v92 = v25;
          v49 = OUTLINED_FUNCTION_13_26();

          if ((v49 & 1) == 0)
          {
            v50 = *&v82[*(v73 + 28)];
            v51 = (v50 + 40);
            v52 = -*(v50 + 16);
            v53 = -1;
            while (1)
            {
              if (v52 + v53 == -1)
              {
                result = sub_274835920(v82);
                v18 = v80;
                v16 = v81;
                v15 = v74;
                goto LABEL_4;
              }

              if (++v53 >= *(v50 + 16))
              {
                break;
              }

              v54 = v51 + 2;
              v55 = *v51;
              v91 = *(v51 - 1);
              v92 = v55;
              result = OUTLINED_FUNCTION_13_26();
              v51 = v54;
              if (result)
              {
                goto LABEL_22;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

LABEL_22:
          sub_2748605C4(v82, v77);
          v16 = v81;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_27476D7A8();
            v16 = v96;
          }

          v15 = v74;
          v57 = v80;
          v58 = *(v16 + 16);
          if (v58 >= *(v16 + 24) >> 1)
          {
            sub_27476D7A8();
            v16 = v96;
          }

          *(v16 + 16) = v58 + 1;
          result = sub_2748605C4(v77, v16 + v79 + v58 * v78);
          v18 = v57;
          break;
        default:
          v23 = sub_274721C98(v95);
          v24 = *(v23 + 16);
          v25 = *(v23 + 24);
          OUTLINED_FUNCTION_20_17();
          sub_274721C98(&v91);

          goto LABEL_17;
      }
    }
  }

  v16 = v15;
LABEL_30:
  v59 = v69;
  *a3 = v12;
  *(a3 + 8) = v59;
  v60 = v68;
  *(a3 + 16) = v68;
  *(a3 + 24) = v67;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  v95[0] = MEMORY[0x277D84FA0];
  sub_27477D408(v12, v59, v60);

  v61 = v14;
  v62 = sub_274947AD8(v16, v95);

  *(a3 + 48) = v62;
  *(a3 + 56) = 1;
  return result;
}

uint64_t sub_274948E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280970630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_274948EFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return !static SmartShortcutPickerSection.ID.< infix(_:_:)(v7, v9);
}

BOOL static SmartShortcutPickerSection.ID.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(*(a1 + 16))
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_28;
      }

      v27 = v3 == v6 && v2 == v5;
      if (v27 || (OUTLINED_FUNCTION_7_29(), (sub_2749FDCC4() & 1) != 0))
      {
        v28 = OUTLINED_FUNCTION_1_44();
        sub_27477D408(v28, v29, v30);
        v31 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_11_0();
        sub_27478C4DC(v34, v35, v36);
        v10 = OUTLINED_FUNCTION_1_44();
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_7_29();
      v47 = sub_2749FDCC4();
      v60 = OUTLINED_FUNCTION_1_44();
      sub_27477D408(v60, v61, v62);
      v63 = OUTLINED_FUNCTION_11_0();
      sub_27477D408(v63, v64, v65);
      v66 = OUTLINED_FUNCTION_11_0();
      sub_27478C4DC(v66, v67, v68);
      v57 = OUTLINED_FUNCTION_1_44();
      goto LABEL_52;
    case 2:
      if (v7 != 2)
      {
LABEL_28:

        goto LABEL_29;
      }

      v13 = v3 == v6 && v2 == v5;
      if (v13 || (OUTLINED_FUNCTION_7_29(), (sub_2749FDCC4() & 1) != 0))
      {
        v14 = OUTLINED_FUNCTION_2_42();
        sub_27477D408(v14, v15, v16);
        v17 = OUTLINED_FUNCTION_12();
        sub_27477D408(v17, v18, v19);
        v20 = OUTLINED_FUNCTION_12();
        sub_27478C4DC(v20, v21, v22);
        v10 = OUTLINED_FUNCTION_2_42();
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_7_29();
      v47 = sub_2749FDCC4();
      v48 = OUTLINED_FUNCTION_2_42();
      sub_27477D408(v48, v49, v50);
      v51 = OUTLINED_FUNCTION_12();
      sub_27477D408(v51, v52, v53);
      v54 = OUTLINED_FUNCTION_12();
      sub_27478C4DC(v54, v55, v56);
      v57 = OUTLINED_FUNCTION_2_42();
LABEL_52:
      sub_27478C4DC(v57, v58, v59);
      return v47 & 1;
    case 3:
      if (v3 | v2)
      {
        if (v7 != 3 || v6 != 1 || v5 != 0)
        {
LABEL_29:
          v37 = OUTLINED_FUNCTION_32_1();
          sub_27477D408(v37, v38, v7);
          v39 = OUTLINED_FUNCTION_66();
          sub_27478C4DC(v39, v40, v4);
          v41 = OUTLINED_FUNCTION_32_1();
          sub_27478C4DC(v41, v42, v7);
          switch(v4)
          {
            case 1uLL:
              v4 = 1;
              break;
            case 2uLL:
              v4 = 3;
              break;
            case 3uLL:
              if (v3 | v2)
              {
                v4 = 4;
              }

              else
              {
                v4 = 2;
              }

              break;
            default:
              break;
          }

          switch(v7)
          {
            case 1uLL:
              v7 = 1;
              break;
            case 2uLL:
              v7 = 3;
              break;
            case 3uLL:
              if (v6 | v5)
              {
                v7 = 4;
              }

              else
              {
                v7 = 2;
              }

              break;
            default:
              return v4 < v7;
          }

          return v4 < v7;
        }

        v25 = OUTLINED_FUNCTION_66();
        sub_27478C4DC(v25, v26, 3u);
        v10 = 1;
      }

      else
      {
        if (v7 != 3 || (v5 | v6) != 0)
        {
          goto LABEL_29;
        }

        v45 = OUTLINED_FUNCTION_66();
        sub_27478C4DC(v45, v46, 3u);
        v10 = 0;
      }

      v11 = 0;
      v12 = 3;
LABEL_49:
      sub_27478C4DC(v10, v11, v12);
      return 0;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_29;
      }

      v8 = OUTLINED_FUNCTION_66();
      sub_27478C4DC(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_32_1();
      v12 = 0;
      goto LABEL_49;
  }
}

uint64_t sub_2749492A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000274A340D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2749FDCC4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_274949344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (sub_2749FDCC4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_2749FDCC4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
      if (v7 || (sub_2749FDCC4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x467972617262696CLL && a2 == 0xED00007265646C6FLL;
        if (v8 || (sub_2749FDCC4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2749FDCC4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_2749494F4(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x746163696C707061;
      break;
    case 2:
      result = 0x7972617262696CLL;
      break;
    case 3:
      result = 0x467972617262696CLL;
      break;
    case 4:
      result = 0x736E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2749495A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000274A340B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2749FDCC4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_274949620()
{
  sub_2749FDDF4();
  v0 = OUTLINED_FUNCTION_14_19();
  MEMORY[0x277C5FB60](v0);
  return sub_2749FDE44();
}

uint64_t sub_27494967C(uint64_t a1)
{
  v2 = sub_27494B044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749496B8(uint64_t a1)
{
  v2 = sub_27494B044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2749496F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2749492A8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_274949724(uint64_t a1)
{
  v2 = sub_27494B140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274949760(uint64_t a1)
{
  v2 = sub_27494B140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2749497A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274949344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2749497CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2749494EC();
  *a1 = result;
  return result;
}

uint64_t sub_2749497F4(uint64_t a1)
{
  v2 = sub_27494AFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274949830(uint64_t a1)
{
  v2 = sub_27494AFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27494986C(uint64_t a1)
{
  v2 = sub_27494B194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2749498A8(uint64_t a1)
{
  v2 = sub_27494B194();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2749498E4(uint64_t a1)
{
  v2 = sub_27494B0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274949920(uint64_t a1)
{
  v2 = sub_27494B0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27494995C()
{
  sub_2749FDDF4();
  v0 = OUTLINED_FUNCTION_14_19();
  MEMORY[0x277C5FB60](v0);
  return sub_2749FDE44();
}

uint64_t sub_27494999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2749495A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2749499C8(uint64_t a1)
{
  v2 = sub_27494B098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274949A04(uint64_t a1)
{
  v2 = sub_27494B098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmartShortcutPickerSection.ID.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704E8);
  OUTLINED_FUNCTION_43();
  v45 = v4;
  v46 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704F0);
  OUTLINED_FUNCTION_43();
  v51 = v8;
  v52 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v50 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809704F8);
  OUTLINED_FUNCTION_43();
  v42 = v12;
  v43 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  v41 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970500);
  OUTLINED_FUNCTION_43();
  v48 = v16;
  v49 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970508);
  OUTLINED_FUNCTION_43();
  v47 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970510);
  OUTLINED_FUNCTION_43();
  v54 = v26;
  v55 = v25;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  v29 = &v40 - v28;
  v30 = *v1;
  *&v53 = v1[1];
  *(&v53 + 1) = v30;
  v31 = *(v1 + 16);
  v32 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_27494AFF0();
  sub_2749FDE94();
  switch(v31)
  {
    case 1:
      v57 = 1;
      sub_27494B140();
      OUTLINED_FUNCTION_19_20();
      v34 = v49;
      sub_2749FDC34();
      v35 = v48;
      goto LABEL_7;
    case 2:
      v59 = 3;
      sub_27494B098();
      v19 = v50;
      OUTLINED_FUNCTION_19_20();
      v34 = v52;
      sub_2749FDC34();
      v35 = v51;
LABEL_7:
      (*(v35 + 8))(v19, v34);
      result = (*(v54 + 8))(v29, v24);
      break;
    case 3:
      v36 = (v54 + 8);
      if (v53 == 0)
      {
        v58 = 2;
        sub_27494B0EC();
        v37 = v41;
        OUTLINED_FUNCTION_12_28();
        v39 = v42;
        v38 = v43;
      }

      else
      {
        v60 = 4;
        sub_27494B044();
        v37 = v44;
        OUTLINED_FUNCTION_12_28();
        v39 = v45;
        v38 = v46;
      }

      (*(v39 + 8))(v37, v38);
      result = (*v36)(v29, v32);
      break;
    default:
      v56 = 0;
      sub_27494B194();
      OUTLINED_FUNCTION_12_28();
      sub_27494B1E8();
      sub_2749FDC44();
      (*(v47 + 8))(v24, v20);
      result = (*(v54 + 8))(v29, v32);
      break;
  }

  return result;
}

uint64_t SmartShortcutPickerSection.ID.hash(into:)()
{
  switch(*(v0 + 16))
  {
    case 1:
      v2 = 1;
      goto LABEL_7;
    case 2:
      v2 = 3;
LABEL_7:
      MEMORY[0x277C5FB60](v2);

      return sub_2749FCE24();
    case 3:
      if (*v0 == 0)
      {
        v1 = 2;
      }

      else
      {
        v1 = 4;
      }

      return MEMORY[0x277C5FB60](v1);
    default:
      MEMORY[0x277C5FB60](0);
      v1 = 0;
      return MEMORY[0x277C5FB60](v1);
  }
}

uint64_t SmartShortcutPickerSection.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2749FDDF4();
  switch(v3)
  {
    case 1:
      v6 = 1;
      goto LABEL_7;
    case 2:
      v6 = 3;
LABEL_7:
      MEMORY[0x277C5FB60](v6);
      sub_2749FCE24();
      return sub_2749FDE44();
    case 3:
      if (v1 | v2)
      {
        v5 = 4;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_9;
    default:
      v4 = OUTLINED_FUNCTION_14_19();
      MEMORY[0x277C5FB60](v4);
      v5 = OUTLINED_FUNCTION_14_19();
LABEL_9:
      MEMORY[0x277C5FB60](v5);
      return sub_2749FDE44();
  }
}

uint64_t SmartShortcutPickerSection.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970550);
  OUTLINED_FUNCTION_43();
  v77 = v3;
  v78 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v83 = v6;
  v72[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970558);
  OUTLINED_FUNCTION_43();
  v79 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v81 = v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970560);
  OUTLINED_FUNCTION_43();
  v73 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v80 = v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970568);
  OUTLINED_FUNCTION_43();
  v74 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970570);
  OUTLINED_FUNCTION_43();
  v72[5] = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = v72 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970578);
  OUTLINED_FUNCTION_43();
  v24 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = v72 - v26;
  v28 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_27494AFF0();
  v29 = v85;
  sub_2749FDE74();
  if (v29)
  {
    goto LABEL_8;
  }

  v72[2] = v17;
  v72[3] = v21;
  v72[4] = v16;
  v30 = v83;
  v85 = v24;
  v31 = sub_2749FDBF4();
  result = sub_27493D810(v31, 0);
  if (v34 == v35 >> 1)
  {
LABEL_7:
    v43 = v22;
    v44 = v85;
    v45 = sub_2749FD9B4();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A0C8);
    *v47 = &type metadata for SmartShortcutPickerSection.ID;
    sub_2749FDBA4();
    sub_2749FD9A4();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v27, v43);
LABEL_8:
    v42 = v84;
    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  v72[1] = 0;
  if (v34 < (v35 >> 1))
  {
    v36 = *(v33 + v34);
    sub_27493D804(v34 + 1);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      v41 = v82;
      switch(v36)
      {
        case 1:
          v87 = 1;
          sub_27494B140();
          OUTLINED_FUNCTION_10_31();
          v83 = v22;
          v54 = sub_2749FDBD4();
          v42 = v84;
          v64 = v54;
          v65 = v67;
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_17_23();
          v69(v68);
          v70 = OUTLINED_FUNCTION_3_48();
          v71(v70, v83);
          v66 = 1;
          break;
        case 2:
          v88 = 2;
          sub_27494B0EC();
          v50 = v80;
          OUTLINED_FUNCTION_10_31();
          swift_unknownObjectRelease();
          (*(v73 + 8))(v50, v75);
          v51 = OUTLINED_FUNCTION_3_48();
          v52(v51, v22);
          v64 = 0;
          v65 = 0;
          v66 = 3;
          goto LABEL_12;
        case 3:
          v89 = 3;
          sub_27494B098();
          OUTLINED_FUNCTION_10_31();
          v83 = v22;
          v53 = sub_2749FDBD4();
          v42 = v84;
          v64 = v53;
          v65 = v55;
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_17_23();
          v57(v56);
          v58 = OUTLINED_FUNCTION_3_48();
          v59(v58, v83);
          v66 = 2;
          break;
        case 4:
          v90 = 4;
          sub_27494B044();
          OUTLINED_FUNCTION_10_31();
          swift_unknownObjectRelease();
          (*(v78 + 8))(v30, v77);
          v48 = OUTLINED_FUNCTION_3_48();
          v49(v48, v22);
          v65 = 0;
          v66 = 3;
          v64 = 1;
LABEL_12:
          v42 = v84;
          break;
        default:
          v86 = 0;
          sub_27494B194();
          OUTLINED_FUNCTION_10_31();
          sub_27494B23C();
          sub_2749FDBE4();
          v42 = v84;
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_23_17();
          v61(v60);
          v62 = OUTLINED_FUNCTION_3_48();
          v63(v62, v22);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          break;
      }

      *v41 = v64;
      *(v41 + 8) = v65;
      *(v41 + 16) = v66;
      return __swift_destroy_boxed_opaque_existential_0(v42);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_27494A900()
{
  sub_2749FDDF4();
  SmartShortcutPickerSection.ID.hash(into:)();
  return sub_2749FDE44();
}

uint64_t SmartShortcutPickerSection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_27477D408(v2, v3, v4);
}

uint64_t SmartShortcutPickerSection.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void SmartShortcutPickerSection.hash(into:)()
{
  v1 = *(v0 + 40);
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      MEMORY[0x277C5FB60](v3);
      sub_2749FCE24();
      goto LABEL_10;
    case 3:
      if (*v0 == 0)
      {
        v2 = 2;
      }

      else
      {
        v2 = 4;
      }

      goto LABEL_9;
    default:
      MEMORY[0x277C5FB60](0);
      v2 = 0;
LABEL_9:
      MEMORY[0x277C5FB60](v2);
LABEL_10:
      sub_2749FCE24();
      MEMORY[0x277C5FB60]([v1 hash]);

      sub_27478A29C();
      return;
  }
}

uint64_t static SmartShortcutPickerSection.< infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v11 = a2[3];
  v10 = a2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FEF8);
  switch(v4)
  {
    case 1:
      result = 0;
      switch(v9)
      {
        case 1:
          goto LABEL_10;
        case 3:
          goto LABEL_21;
        default:
          return result;
      }

    case 2:
      result = 0;
      switch(v9)
      {
        case 1:
          goto LABEL_20;
        case 2:
          goto LABEL_10;
        case 3:
          goto LABEL_21;
        default:
          return result;
      }

    case 3:
      if (v2 | v3)
      {
        if ((v9 - 1) < 2)
        {
          goto LABEL_20;
        }

        if (!v9)
        {
          goto LABEL_29;
        }

        result = (v7 | v8) == 0;
      }

      else
      {
        result = 0;
        switch(v9)
        {
          case 1:
          case 2:
            if (v3 | v2)
            {
              goto LABEL_32;
            }

            v14 = OUTLINED_FUNCTION_18_23();
            sub_27477D408(v14, v15, v16);
            goto LABEL_20;
          case 3:
LABEL_21:
            if (v7 == 1 && v8 == 0)
            {
              goto LABEL_29;
            }

            if (v7 | v8)
            {
              sub_27477D408(v2, v3, v4);
            }

            else
            {
              if ((v4 - 1) < 2u)
              {
                goto LABEL_29;
              }

              if (!(v3 | v2))
              {
                v18 = OUTLINED_FUNCTION_18_23();
                sub_27477D408(v18, v19, v20);
                goto LABEL_29;
              }
            }

LABEL_32:
            result = sub_2749FDCB4();
            __break(1u);
            break;
          default:
            return result;
        }
      }

      break;
    default:
      if (v9)
      {
LABEL_20:
        result = 1;
      }

      else
      {
LABEL_10:
        if (v6 == v11 && v5 == v10)
        {
LABEL_29:
          result = 0;
        }

        else
        {

          result = sub_2749FDCC4();
        }
      }

      break;
  }

  return result;
}

uint64_t SmartShortcutPickerSection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[5];
  sub_2749FDDF4();
  switch(v3)
  {
    case 1:
      v7 = 1;
      goto LABEL_7;
    case 2:
      v7 = 3;
LABEL_7:
      MEMORY[0x277C5FB60](v7);
      sub_2749FCE24();
      goto LABEL_10;
    case 3:
      if (v1 | v2)
      {
        v6 = 4;
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_9;
    default:
      v5 = OUTLINED_FUNCTION_14_19();
      MEMORY[0x277C5FB60](v5);
      v6 = OUTLINED_FUNCTION_14_19();
LABEL_9:
      MEMORY[0x277C5FB60](v6);
LABEL_10:
      sub_2749FCE24();
      MEMORY[0x277C5FB60]([v4 hash]);
      sub_27478A29C();
      return sub_2749FDE44();
  }
}

BOOL sub_27494AE94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_274948F3C(v5, v7);
}

BOOL sub_27494AEF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_274948310(v5, v7);
}

uint64_t sub_27494AF4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2749482C0(v5, v7) & 1;
}

uint64_t sub_27494AFB4()
{
  sub_2749FDDF4();
  SmartShortcutPickerSection.hash(into:)();
  return sub_2749FDE44();
}

unint64_t sub_27494AFF0()
{
  result = qword_280970518;
  if (!qword_280970518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970518);
  }

  return result;
}

unint64_t sub_27494B044()
{
  result = qword_280970520;
  if (!qword_280970520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970520);
  }

  return result;
}

unint64_t sub_27494B098()
{
  result = qword_280970528;
  if (!qword_280970528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970528);
  }

  return result;
}

unint64_t sub_27494B0EC()
{
  result = qword_280970530;
  if (!qword_280970530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970530);
  }

  return result;
}

unint64_t sub_27494B140()
{
  result = qword_280970538;
  if (!qword_280970538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970538);
  }

  return result;
}

unint64_t sub_27494B194()
{
  result = qword_280970540;
  if (!qword_280970540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970540);
  }

  return result;
}

unint64_t sub_27494B1E8()
{
  result = qword_280970548;
  if (!qword_280970548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970548);
  }

  return result;
}

unint64_t sub_27494B23C()
{
  result = qword_280970580;
  if (!qword_280970580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970580);
  }

  return result;
}

unint64_t sub_27494B290()
{
  result = qword_280970588;
  if (!qword_280970588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970588);
  }

  return result;
}

unint64_t sub_27494B2E4()
{
  result = qword_280970590;
  if (!qword_280970590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970590);
  }

  return result;
}

unint64_t sub_27494B33C()
{
  result = qword_280970598;
  if (!qword_280970598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970598);
  }

  return result;
}

unint64_t sub_27494B390()
{
  result = qword_2809705A0;
  if (!qword_2809705A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705A0);
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

uint64_t sub_27494B400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_27494B440(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WFAddToHomeScreenSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerSection.ID.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_27494B648(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_27494B708()
{
  result = qword_2809705A8;
  if (!qword_2809705A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705A8);
  }

  return result;
}

unint64_t sub_27494B760()
{
  result = qword_2809705B0;
  if (!qword_2809705B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705B0);
  }

  return result;
}

unint64_t sub_27494B7B8()
{
  result = qword_2809705B8;
  if (!qword_2809705B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705B8);
  }

  return result;
}

unint64_t sub_27494B810()
{
  result = qword_2809705C0;
  if (!qword_2809705C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705C0);
  }

  return result;
}

unint64_t sub_27494B868()
{
  result = qword_2809705C8;
  if (!qword_2809705C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705C8);
  }

  return result;
}

unint64_t sub_27494B8C0()
{
  result = qword_2809705D0;
  if (!qword_2809705D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705D0);
  }

  return result;
}

unint64_t sub_27494B918()
{
  result = qword_2809705D8;
  if (!qword_2809705D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705D8);
  }

  return result;
}

unint64_t sub_27494B970()
{
  result = qword_2809705E0;
  if (!qword_2809705E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705E0);
  }

  return result;
}

unint64_t sub_27494B9C8()
{
  result = qword_2809705E8;
  if (!qword_2809705E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705E8);
  }

  return result;
}

unint64_t sub_27494BA20()
{
  result = qword_2809705F0;
  if (!qword_2809705F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705F0);
  }

  return result;
}

unint64_t sub_27494BA78()
{
  result = qword_2809705F8;
  if (!qword_2809705F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809705F8);
  }

  return result;
}

unint64_t sub_27494BAD0()
{
  result = qword_280970600;
  if (!qword_280970600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970600);
  }

  return result;
}

unint64_t sub_27494BB28()
{
  result = qword_280970608;
  if (!qword_280970608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970608);
  }

  return result;
}

unint64_t sub_27494BB80()
{
  result = qword_280970610;
  if (!qword_280970610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970610);
  }

  return result;
}

unint64_t sub_27494BBD8()
{
  result = qword_280970618;
  if (!qword_280970618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970618);
  }

  return result;
}

unint64_t sub_27494BC30()
{
  result = qword_280970620;
  if (!qword_280970620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970620);
  }

  return result;
}

unint64_t sub_27494BC84()
{
  result = qword_280970628;
  if (!qword_280970628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970628);
  }

  return result;
}

uint64_t static SmartShortcutPickerEntry.Identifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_1_45(v158);
  OUTLINED_FUNCTION_29_12(v159);
  OUTLINED_FUNCTION_1_45(v160);
  OUTLINED_FUNCTION_29_12(&v161);
  OUTLINED_FUNCTION_1_45(v162);
  switch(sub_274772AD0(v162))
  {
    case 1u:
      v99 = sub_274721C98(v162);
      OUTLINED_FUNCTION_2_43(v99, v100, v101, v102, v103, v104, v105, v106, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v151, v152, v153, v154, v155, v156);
      if (sub_274772AD0(v157) != 1)
      {
        goto LABEL_18;
      }

      sub_274721C98(v157);
      goto LABEL_36;
    case 2u:
      v20 = sub_274721C98(v162);
      v21 = *v20;
      OUTLINED_FUNCTION_2_43(v20, v22, v23, v24, v25, v26, v27, v28, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v151, v152, v153, v154, v155, v156);
      v29 = sub_274772AD0(v157);
      if (v29 != 2)
      {
        OUTLINED_FUNCTION_7_30(v29, v30, v31, v32, v33, v34, v35, v36, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
        v107 = *sub_274721C98(__dst);
        goto LABEL_18;
      }

      v37 = sub_274721C98(v157);
      v38 = *v37;
      OUTLINED_FUNCTION_8_34(v37, v39, v40, v41, v42, v43, v44, v45, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
      v46 = OUTLINED_FUNCTION_3_49();
      v48 = sub_274772ADC(v46, v47);
      OUTLINED_FUNCTION_8_34(v48, v49, v50, v51, v52, v53, v54, v55, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
      v56 = OUTLINED_FUNCTION_3_49();
      sub_274772ADC(v56, v57);
      v58 = [v21 identifier];
      v59 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v61 = v60;

      v62 = [v38 identifier];
      v63 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v65 = v64;

      if (v59 == v63 && v61 == v65)
      {

        sub_27472ECBC(v160, &unk_280969270);
        sub_274772BE8(v159);
        sub_274772BE8(v158);
      }

      else
      {
        OUTLINED_FUNCTION_32_1();
        v67 = sub_2749FDCC4();

        sub_27472ECBC(v160, &unk_280969270);
        sub_274772BE8(v159);
        sub_274772BE8(v158);
        if ((v67 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_37;
    case 3u:
      v68 = sub_274721C98(v162);
      OUTLINED_FUNCTION_2_43(v68, v69, v70, v71, v72, v73, v74, v75, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v151, v152, v153, v154, v155, v156);
      v76 = sub_274772AD0(v157);
      if (v76 != 3)
      {
        OUTLINED_FUNCTION_7_30(v76, v77, v78, v79, v80, v81, v82, v83, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
        v108 = sub_274721C98(__dst);
        sub_274948E60(v108, v142);
        goto LABEL_18;
      }

      v84 = sub_274721C98(v157);
      v85 = *(v68 + 48);
      v86 = *(v84 + 48);
      v87 = *(v68 + 16);
      *v142 = *v68;
      *&v142[16] = v87;
      *&v142[32] = *(v68 + 32);
      v142[48] = v85;
      v88 = *(v84 + 16);
      v137 = *v84;
      v138 = v88;
      v139 = *(v84 + 32);
      LOBYTE(v140) = v86;
      OUTLINED_FUNCTION_8_34(v84, v89, v90, v91, v92, v93, v94, v95, v137, *(&v137 + 1), v88, *(&v88 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
      v96 = OUTLINED_FUNCTION_3_49();
      sub_274772ADC(v96, v97);
      sub_274772B38(v68 + 56, __dst);
      sub_274772B38(v84 + 56, __dst);
      if (static SmartShortcutPickerActionTemplate.== infix(_:_:)(v142, &v137))
      {
        memcpy(__dst, (v68 + 56), 0x81uLL);
        memcpy(v142, (v84 + 56), 0x81uLL);
        v98 = static SmartShortcutPickerActionConfiguration.== infix(_:_:)(__dst, v142);
        sub_27472ECBC(v160, &unk_280969270);
        sub_274772B94(v84 + 56);
        sub_274772B94(v68 + 56);
        return v98 & 1;
      }

      sub_274772B94(v84 + 56);
      sub_274772B94(v68 + 56);
      goto LABEL_20;
    default:
      v0 = sub_274721C98(v162);
      v1 = *v0;
      v2 = v0[1];
      v3 = v0[2];
      v4 = v0[3];
      OUTLINED_FUNCTION_2_43(v0, v5, v6, v7, v8, v9, v10, v11, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], v151, v152, v153, v154, v155, v156);
      v12 = sub_274772AD0(v157);
      if (v12)
      {
        OUTLINED_FUNCTION_7_30(v12, v13, v14, v15, v16, v17, v18, v19, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
        sub_274721C98(__dst);

LABEL_18:
        v109 = v159;
        v110 = v157;
LABEL_19:
        sub_274772ADC(v109, v110);
LABEL_20:
        sub_27472ECBC(v160, &unk_280969270);
        goto LABEL_21;
      }

      v111 = sub_274721C98(v157);
      v117 = *v111;
      v118 = v111[1];
      v119 = v111[2];
      v120 = v111[3];
      if (v1 != *v111 || v2 != v118)
      {
        v111 = sub_2749FDCC4();
        if ((v111 & 1) == 0)
        {
          OUTLINED_FUNCTION_8_34(v111, v112, v117, v118, v113, v114, v115, v116, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
          v109 = OUTLINED_FUNCTION_3_49();
          goto LABEL_19;
        }
      }

      if (v3 == v119 && v4 == v120)
      {
        OUTLINED_FUNCTION_8_34(v111, v112, v117, v118, v113, v114, v115, v116, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
        v134 = OUTLINED_FUNCTION_3_49();
        sub_274772ADC(v134, v135);
LABEL_36:
        sub_27472ECBC(v160, &unk_280969270);
      }

      else
      {
        v123 = sub_2749FDCC4();
        v124 = v123;
        OUTLINED_FUNCTION_8_34(v123, v125, v126, v127, v128, v129, v130, v131, v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, v141, *v142, *&v142[8], *&v142[16], *&v142[24], *&v142[32], *&v142[40], *&v142[48], *&v142[56], *&v142[64], *&v142[72], *&v142[80], *&v142[88], *&v142[96], *&v142[104], *&v142[112], *&v142[120], *&v142[128], v143, v144, v145, v146, v147, v148, v149, __dst[0]);
        v132 = OUTLINED_FUNCTION_3_49();
        sub_274772ADC(v132, v133);
        sub_27472ECBC(v160, &unk_280969270);
        if ((v124 & 1) == 0)
        {
LABEL_21:
          v98 = 0;
          return v98 & 1;
        }
      }

LABEL_37:
      v98 = 1;
      return v98 & 1;
  }
}

void SmartShortcutPickerEntry.displayName.getter()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_1_45(v77);
  OUTLINED_FUNCTION_1_45(v78);
  switch(sub_274772AD0(v78))
  {
    case 1u:
      sub_274721C98(v78);
      sub_2749FCE14();
      if (qword_28159E3A8 != -1)
      {
        swift_once();
      }

      v38 = qword_28159E448;
      OUTLINED_FUNCTION_32_1();
      v39 = sub_2749FCD64();
      OUTLINED_FUNCTION_32_1();
      v40 = sub_2749FCD64();

      v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      goto LABEL_12;
    case 2u:
      v8 = sub_274721C98(v78);
      v9 = *v8;
      OUTLINED_FUNCTION_9_27(v8, v10, v11, v12, v13, v14, v15, v16, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
      v17 = *sub_274721C98(v75);
      v18 = [v9 name];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

      sub_274772BE8(v77);
      goto LABEL_12;
    case 3u:
      v19 = sub_274721C98(v78);
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 40);
      v26 = *(v19 + 48);
      OUTLINED_FUNCTION_9_27(v19, v27, v28, v29, v30, v31, v32, v33, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
      v34 = sub_274721C98(v75);
      sub_274948E60(v34, &v51);
      sub_27477CABC(v20, v21, v22, v23, v24, v25, v26);
      memcpy(__dst, (v19 + 56), 0x81uLL);
      if (sub_274772C3C(__dst) != 1)
      {
        CGSizeMake(__dst);
LABEL_11:

        sub_274772B94(v19 + 56);
        goto LABEL_12;
      }

      CGSizeMake(__dst);
      if (!v35[9])
      {
        goto LABEL_11;
      }

      v36 = v35[7];
      v37 = v35[6];

      v51 = 31524;
      v52 = 0xE200000000000000;

      MEMORY[0x277C5EBC0](v37, v36);
      MEMORY[0x277C5EBC0](125, 0xE100000000000000);
      sub_2748A5874();
      sub_2748A58C8();
      sub_2749FD204();

      sub_274772B94(v19 + 56);
LABEL_12:
      OUTLINED_FUNCTION_46();
      return;
    default:
      v0 = sub_274721C98(v78);
      OUTLINED_FUNCTION_9_27(v0, v1, v2, v3, v4, v5, v6, v7, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75[0]);
      sub_274721C98(v75);

      goto LABEL_12;
  }
}

uint64_t static SmartShortcutPickerEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_1_45(v2);
  OUTLINED_FUNCTION_29_12(v3);
  sub_274772ADC(v2, v5);
  sub_274772ADC(v3, v5);
  OUTLINED_FUNCTION_32_1();
  v0 = static SmartShortcutPickerEntry.Identifier.== infix(_:_:)();
  OUTLINED_FUNCTION_29_12(v4);
  sub_274772BE8(v4);
  OUTLINED_FUNCTION_1_45(v5);
  sub_274772BE8(v5);
  return v0 & 1;
}

uint64_t sub_27494C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 752) = v13;
  *(v8 + 744) = a8;
  *(v8 + 209) = a7;
  *(v8 + 736) = a6;
  *(v8 + 728) = a5;
  *(v8 + 720) = a4;
  *(v8 + 712) = a3;
  *(v8 + 704) = a2;
  *(v8 + 696) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809707E0);
  *(v8 + 760) = swift_task_alloc();
  v9 = sub_2749FA4E4();
  *(v8 + 768) = v9;
  *(v8 + 776) = *(v9 - 8);
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  v10 = sub_2749F91B4();
  *(v8 + 816) = v10;
  *(v8 + 824) = *(v10 - 8);
  *(v8 + 832) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27494C6D4, 0, 0);
}

uint64_t sub_27494C6D4()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = [objc_allocWithZone(MEMORY[0x277D23B70]) init];
  v0[105] = v4;
  v5 = sub_2749FCD64();
  v0[106] = v5;

  sub_2749F91A4();
  sub_2749F9174();
  (*(v2 + 8))(v1, v3);
  v6 = sub_2749FCD64();
  v0[107] = v6;

  v0[2] = v0;
  v0[7] = v0 + 86;
  v0[3] = sub_27494C8B0;
  v7 = swift_continuation_init();
  v0[85] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706B0);
  v0[82] = v7;
  v0[78] = MEMORY[0x277D85DD0];
  v0[79] = 1107296256;
  v0[80] = sub_27494E92C;
  v0[81] = &block_descriptor_42;
  [v4 autoShortcutsForBundleIdentifier:v5 localeIdentifier:v6 completion:v0 + 78];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27494C8B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 864) = v1;
  if (v1)
  {

    v2 = sub_27494D828;
  }

  else
  {
    v2 = sub_27494C9D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27494C9D4()
{
  v165 = v0;
  v1 = *(v0 + 848);
  v2 = *(v0 + 688);

  v3 = sub_27472D918(v2);
  v151 = v3;
  if (v3)
  {
    v4 = 0;
    v146 = v0 + 488;
    v147 = v0 + 216;
    v5 = v2 & 0xC000000000000001;
    v148 = v2 + 32;
    v149 = v2 & 0xFFFFFFFFFFFFFF8;
    v156 = (*(v0 + 776) + 8);
    v153 = v2;
    v154 = v0;
    v150 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v3 = MEMORY[0x277C5F6D0](v4, v2);
      }

      else
      {
        if (v4 >= *(v149 + 16))
        {
          goto LABEL_79;
        }

        v3 = *(v148 + 8 * v4);
      }

      v1 = v3;
      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        v107 = MEMORY[0x277C5F6D0](v3, v1);
        goto LABEL_62;
      }

      v152 = v7;
      sub_2749FA3D4();
      v8 = v1;
      v9 = sub_2749FA4D4();
      v10 = sub_2749FD2C4();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 808);
      v13 = *(v0 + 768);
      v157 = v8;
      if (v11)
      {
        v14 = v8;
        v15 = OUTLINED_FUNCTION_15_25();
        v16 = OUTLINED_FUNCTION_14_20();
        v17 = swift_slowAlloc();
        __dst[0] = v17;
        *v15 = 138412546;
        *(v15 + 4) = v14;
        *v16 = v14;
        *(v15 + 12) = 2080;
        v18 = v14;
        v19 = WFPrimaryPhrasesForAutoShortcut();
        v20 = sub_27471CF08(0, &qword_280970088);
        v160 = v13;
        v21 = sub_2749FCF84();

        v22 = MEMORY[0x277C5ECF0](v21, v20);
        v24 = v23;

        v25 = sub_2747AF460(v22, v24, __dst);
        v0 = v154;

        *(v15 + 14) = v25;
        _os_log_impl(&dword_274719000, v9, v10, "Found autoshortcut: %@ for base phrase template: %s", v15, 0x16u);
        sub_27472ECBC(v16, &qword_28096A280);
        OUTLINED_FUNCTION_31();
        __swift_destroy_boxed_opaque_existential_0(v17);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();

        v26 = *v156;
        v27 = v12;
        v28 = v160;
      }

      else
      {

        v26 = *v156;
        v27 = v12;
        v28 = v13;
      }

      v155 = v26;
      v26(v27, v28);
      if (*(v0 + 209))
      {
        v1 = WFPrimaryPhrasesForAutoShortcut();
        v145 = sub_27471CF08(0, &qword_280970088);
        v29 = sub_2749FCF84();

        v3 = sub_27472D918(v29);
        v30 = v3;
        for (i = 0; ; ++i)
        {
          if (v30 == i)
          {

            sub_2749FA3D4();
            v53 = v157;
            v1 = sub_2749FA4D4();
            v54 = sub_2749FD2C4();

            v55 = os_log_type_enabled(v1, v54);
            v56 = *(v0 + 784);
            v57 = *(v0 + 768);
            if (v55)
            {
              v161 = *(v0 + 768);
              v58 = OUTLINED_FUNCTION_15_25();
              v158 = v56;
              v59 = OUTLINED_FUNCTION_14_20();
              v60 = swift_slowAlloc();
              __dst[0] = v60;
              *v58 = 138412546;
              *(v58 + 4) = v53;
              *v59 = v53;
              *(v58 + 12) = 2080;
              v61 = v53;
              v62 = WFPrimaryPhrasesForAutoShortcut();
              v63 = sub_2749FCF84();

              v64 = MEMORY[0x277C5ECF0](v63, v145);
              v66 = v65;

              v0 = v154;
              v67 = sub_2747AF460(v64, v66, __dst);

              *(v58 + 14) = v67;
              _os_log_impl(&dword_274719000, v1, v54, "Found autoshortcut: %@ with base phrase templates: %s", v58, 0x16u);
              sub_27472ECBC(v59, &qword_28096A280);
              OUTLINED_FUNCTION_31();
              __swift_destroy_boxed_opaque_existential_0(v60);
              OUTLINED_FUNCTION_31();
              OUTLINED_FUNCTION_31();

              v68 = v158;
              v69 = v161;
            }

            else
            {

              v68 = v56;
              v69 = v57;
            }

            goto LABEL_46;
          }

          if ((v29 & 0xC000000000000001) != 0)
          {
            v3 = MEMORY[0x277C5F6D0](i, v29);
          }

          else
          {
            if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v3 = *(v29 + 8 * i + 32);
          }

          v1 = v3;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v32 = *(v0 + 728);
          v33 = *(v0 + 720);
          v34 = [v3 basePhraseTemplate];
          v35 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v37 = v36;

          if (v35 == v33 && v37 == v32)
          {
            break;
          }

          v39 = OUTLINED_FUNCTION_13_27();

          if (v39)
          {
            goto LABEL_49;
          }
        }

LABEL_49:

        v88 = sub_2749353AC(v157);
        if (v89)
        {
          v90 = v88;
          v91 = v89;
        }

        else
        {
          v92 = [v1 localizedPhrase];
          v90 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v91 = v93;
        }

        *(v0 + 216) = v90;
        *(v0 + 224) = v91;
        *(v0 + 232) = MEMORY[0x277D84F90];
        sub_2747EBF0C(v147);
        sub_27471CF08(0, &qword_280970840);
        v94 = v157;
        v95 = v157;
        v96 = sub_274952410();
        v97 = v147;
        goto LABEL_53;
      }

      v40 = v157;
      v41 = sub_2749353B8(v157);
      if (v41)
      {
        break;
      }

LABEL_42:
      sub_2749FA3D4();
      v70 = v40;
      v1 = sub_2749FA4D4();
      v71 = sub_2749FD2C4();

      v72 = os_log_type_enabled(v1, v71);
      v73 = *(v0 + 792);
      v74 = *(v0 + 768);
      if (v72)
      {
        v162 = *(v0 + 792);
        v75 = OUTLINED_FUNCTION_15_25();
        v159 = v74;
        v76 = OUTLINED_FUNCTION_14_20();
        v77 = swift_slowAlloc();
        __dst[0] = v77;
        *v75 = 138412546;
        *(v75 + 4) = v70;
        *v76 = v70;
        *(v75 + 12) = 2080;
        v78 = v70;
        v79 = WFPrimaryPhrasesForAutoShortcut();
        v80 = sub_27471CF08(0, &qword_280970088);
        v81 = sub_2749FCF84();

        v82 = MEMORY[0x277C5ECF0](v81, v80);
        v84 = v83;

        v85 = sub_2747AF460(v82, v84, __dst);
        v0 = v154;

        *(v75 + 14) = v85;
        _os_log_impl(&dword_274719000, v1, v71, "Found autoshortcut: %@ with base phrase templates: %s", v75, 0x16u);
        sub_27472ECBC(v76, &qword_28096A280);
        OUTLINED_FUNCTION_31();
        __swift_destroy_boxed_opaque_existential_0(v77);
        OUTLINED_FUNCTION_31();
        OUTLINED_FUNCTION_31();

        v69 = v159;
        v68 = v162;
      }

      else
      {

        v68 = v73;
        v69 = v74;
      }

LABEL_46:
      v3 = v155(v68, v69);
      v4 = v152;
      v2 = v153;
      v5 = v150;
      if (v152 == v151)
      {
        goto LABEL_47;
      }
    }

    v1 = v41;
    v3 = sub_27472D918(v41);
    v42 = v3;
    v43 = 0;
    while (1)
    {
      if (v42 == v43)
      {

        v40 = v157;
        goto LABEL_42;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x277C5F6D0](v43, v1);
      }

      else
      {
        if (v43 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v3 = *(v1 + 8 * v43 + 32);
      }

      v44 = v3;
      if (__OFADD__(v43, 1))
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v45 = *(v0 + 728);
      v46 = *(v0 + 720);
      v47 = [v3 key];
      v48 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v50 = v49;

      if (v48 == v46 && v50 == v45)
      {
        break;
      }

      v52 = OUTLINED_FUNCTION_13_27();

      ++v43;
      if (v52)
      {
        goto LABEL_57;
      }
    }

LABEL_57:

    v104 = [v157 parameterPresentation];
    if (v104)
    {
      v105 = sub_27494F4D4(v104);
      if (v105)
      {
        v1 = v105;
        v106 = *(v0 + 736);
        if (sub_27472D918(v105) > v106)
        {
          sub_2747B2790(*(v0 + 736), (v1 & 0xC000000000000001) == 0, v1);
          v3 = *(v0 + 736);
          if ((v1 & 0xC000000000000001) != 0)
          {
            goto LABEL_80;
          }

          v107 = *(v1 + 8 * v3 + 32);
LABEL_62:
          v108 = v107;

          v109 = sub_2749353D4(v157);
          if (v110)
          {
            v111 = v109;
            v112 = v110;
          }

          else
          {
            v124 = [(objc_class *)v108 optionsProviderReference];
            v125 = [v124 parameterIdentifier];

            v111 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
            v112 = v126;
          }

          v127 = *(v0 + 760);
          v163 = *(v0 + 728);
          v128 = *(v0 + 720);
          v129 = [(objc_class *)v108 optionsProviderReference];
          v130 = [(objc_class *)v108 localizedTitle];
          v131 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v133 = v132;

          *(v154 + 488) = v131;
          *(v154 + 496) = v133;
          *(v154 + 504) = v111;
          *(v154 + 512) = v112;
          *(v154 + 520) = v129;
          *(v154 + 528) = 0;
          *(v154 + 536) = 1;
          sub_2748AF4F0(v146);
          v134 = [v157 bundleIdentifier];
          v135 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v137 = v136;

          v138 = [v157 actionIdentifier];
          v139 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v141 = v140;

          v142 = sub_2749F9164();
          __swift_storeEnumTagSinglePayload(v127, 1, 1, v142);
          v143 = objc_allocWithZone(MEMORY[0x277D79F58]);
          v144 = v137;
          v94 = v157;
          v0 = v154;
          v96 = sub_2749341D4(v135, v144, v128, v163, v139, v141, v127);

          v97 = v146;
LABEL_53:
          memcpy((v0 + 80), v97, 0x81uLL);
          v98 = *(v0 + 752);
          memcpy(__dst, (v0 + 80), 0x81uLL);
          v99 = v96;
          sub_274772B38(v0 + 80, v0 + 352);
          v100 = [v94 actionIdentifier];
          _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

          sub_274933ECC();

          if (!v98)
          {
            v101 = [v94 systemImageName];
            _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          }

          v102 = *(v0 + 840);
          sub_27494DE48();
          sub_274772B94(v0 + 80);

          v103 = *(v0 + 8);
          goto LABEL_69;
        }
      }
    }

    sub_2749FA3D4();
    v86 = v157;
    v113 = sub_2749FA4D4();
    v114 = sub_2749FD2C4();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = *(v0 + 736);
      v116 = OUTLINED_FUNCTION_15_25();
      v117 = OUTLINED_FUNCTION_14_20();
      *v116 = 138412546;
      *(v116 + 4) = v86;
      *v117 = v86;
      *(v116 + 12) = 2048;
      *(v116 + 14) = v115;
      v118 = v86;
      _os_log_impl(&dword_274719000, v113, v114, "Unable to find matching options collection for %@ at index %ld", v116, 0x16u);
      sub_27472ECBC(v117, &qword_28096A280);
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_31();
    }

    v119 = *(v0 + 840);
    v120 = *(v0 + 800);
    v121 = *(v0 + 768);

    v155(v120, v121);
    sub_27494F480();
    swift_allocError();
    *v122 = 0;
    swift_willThrow();
  }

  else
  {
LABEL_47:

    v86 = *(v0 + 840);

    sub_27494F480();
    swift_allocError();
    *v87 = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5_38();

  v103 = *(v0 + 8);
LABEL_69:

  return v103();
}

uint64_t sub_27494D828()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  swift_willThrow();

  OUTLINED_FUNCTION_5_38();

  v4 = v0[1];

  return v4();
}

Swift::Bool __swiftcall SmartShortcutPickerEntry.isAvailable(in:)(WorkflowUI::SmartShortcutPickerAppAvailabilityChecker::Availability in)
{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_1_45(v11);
  switch(sub_274772AD0(v11))
  {
    case 1u:
    case 2u:
      sub_274721C98(v11);
      break;
    case 3u:
      v3 = sub_274721C98(v11);
      OUTLINED_FUNCTION_1_45(v10);
      v4 = sub_274721C98(v10);
      v5 = *v3;
      v6 = *(v3 + 48);
      sub_274948E60(v4, v9);
      sub_274772B94(v3 + 56);
      if ((v6 & 1) == 0)
      {

        goto LABEL_9;
      }

      if (qword_280966BA8 != -1)
      {
        swift_once();
      }

      v7 = [v5 bundleIdentifier];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

      v9[0] = v2;
      sub_27477DEAC();

      break;
    default:
      sub_274721C98(v11);
      OUTLINED_FUNCTION_1_45(v10);
      sub_274721C98(v10);

LABEL_9:

      break;
  }

  OUTLINED_FUNCTION_46();
  return result;
}

uint64_t SmartShortcutPickerEntry.associatedBundleIdentifier.getter()
{
  OUTLINED_FUNCTION_1_45(v10);
  switch(sub_274772AD0(v10))
  {
    case 1u:
    case 2u:
      sub_274721C98(v10);
      return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    case 3u:
      v2 = sub_274721C98(v10);
      OUTLINED_FUNCTION_1_45(v9);
      v3 = sub_274721C98(v9);
      v4 = *v2;
      v0 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = *(v2 + 48);
      sub_274948E60(v3, &v8);
      sub_274772B94(v2 + 56);
      if (v6)
      {

        v7 = [v4 bundleIdentifier];
        v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      }

      else
      {

        if (!v5)
        {
          return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        }
      }

      return v0;
    default:
      sub_274721C98(v10);
      OUTLINED_FUNCTION_1_45(v9);
      sub_274721C98(v9);

      return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }
}

void sub_27494DC14(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [objc_opt_self() workflowPalette];
  sub_27471CF08(0, &qword_280968670);
  sub_2749FCF84();

  v5 = [a1 icon];
  v6 = [v5 backgroundColor];

  sub_27484FC08();
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    v8 = 12;
    goto LABEL_4;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_4:
    __src[0] = a1;
    sub_27477D3E8(__src);
    memcpy(a2, __src, 0xB9uLL);
    v11 = a1;
    v12 = sub_274829F6C(v11);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v17 = sub_2749340F8(v14, v15, 0);
      v23 = v17;
      if (v17)
      {

        sub_27471CF08(0, &qword_28096BB10);
        v18 = sub_274903E28();
        goto LABEL_8;
      }
    }

    v18 = sub_2749FD4A4();

LABEL_8:
    v19 = type metadata accessor for SmartShortcutPickerEntry();
    *&a2[v19[6]] = v18;
    v20 = v19[5];
    *&a2[v20] = v8;
    v21 = *MEMORY[0x277D7D5E8];
    sub_2749FA0F4();
    OUTLINED_FUNCTION_9();
    (*(v22 + 104))(&a2[v20], v21);
    *&a2[v19[7]] = MEMORY[0x277D84F90];
    return;
  }

  __break(1u);
}

void sub_27494DE48()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_2749FA0F4();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x28223BE20](v16);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[136] = 1;
  memcpy(&v57[7], v9, 0x81uLL);
  v58[0] = v11;
  v58[1] = v7;
  v58[2] = v5;
  memset(&v58[3], 0, 24);
  LOBYTE(v58[6]) = 1;
  memcpy(&v58[6] + 1, v57, 0x88uLL);
  sub_274754670(v58);
  memcpy(v15, v58, 0xB9uLL);
  if (!v1)
  {
    v18 = [v13 systemImageName];
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v1 = v19;
  }

  sub_274934EA0(v13);
  if (!v20)
  {
    v21 = [v13 bundleIdentifier];
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v22 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v22 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = [objc_opt_self() clearColor];
    v24 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

    v25 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v26 = sub_27491A250(v3, v1, v24);
  }

  else
  {

    sub_27471CF08(0, &qword_28096BB10);

    v26 = sub_274903E28();
  }

  v27 = v26;
  v28 = type metadata accessor for SmartShortcutPickerEntry();
  *&v15[v28[6]] = v27;
  v29 = v52;
  sub_2749FA0C4();

  v31 = v53;
  v30 = v54;
  (*(v53 + 16))(&v15[v28[5]], v29, v54);
  v32 = [v13 orderedPhrases];
  sub_27471CF08(0, &qword_280970088);
  v33 = sub_2749FCF84();

  v34 = sub_27472D918(v33);
  if (!v34)
  {

    (*(v31 + 8))(v29, v30);
    v37 = MEMORY[0x277D84F90];
LABEL_21:
    *&v15[v28[7]] = v37;
    OUTLINED_FUNCTION_46();
    return;
  }

  v35 = v34;
  v56 = MEMORY[0x277D84F90];
  sub_27471F128();
  if ((v35 & 0x8000000000000000) == 0)
  {
    v55 = v35;
    v49 = v28;
    v50 = v13;
    v51 = v15;
    v36 = 0;
    v37 = v56;
    v38 = v33 & 0xC000000000000001;
    v39 = v33;
    do
    {
      if (v38)
      {
        v40 = MEMORY[0x277C5F6D0](v36, v33);
      }

      else
      {
        v40 = *(v33 + 8 * v36 + 32);
      }

      v41 = v40;
      v42 = [v40 localizedPhrase];
      v43 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v45 = v44;

      v56 = v37;
      v46 = *(v37 + 16);
      if (v46 >= *(v37 + 24) >> 1)
      {
        sub_27471F128();
        v37 = v56;
      }

      ++v36;
      *(v37 + 16) = v46 + 1;
      v47 = v37 + 16 * v46;
      *(v47 + 32) = v43;
      *(v47 + 40) = v45;
      v33 = v39;
    }

    while (v55 != v36);
    (*(v53 + 8))(v52, v54);

    v15 = v51;
    v28 = v49;
    goto LABEL_21;
  }

  __break(1u);
}

void sub_27494E2AC()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  __dst = v2;
  v3 = [v0 serializedParameters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970258);
  v4 = sub_2749FCCA4();

  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v63 = MEMORY[0x277D84F90];
  v64 = v4;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
    v15 = *v13;
    v14 = v13[1];

    swift_unknownObjectRetain();
    v16 = sub_2749FCD64();
    v17 = v1;
    v18 = [v1 parameterStateForKey_];

    v65 = v18;
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = sub_2749FCD64();
    v20 = [v17 parameterForKey_];

    if (v20)
    {
      v61 = v15;
      swift_bridgeObjectRetain_n();
      v21 = [v20 localizedLabel];
      v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v60 = v23;

      v24 = sub_2749552B4(v17);
      if (v25)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = 0xE000000000000000;
      if (v25)
      {
        v27 = v25;
      }

      v59 = v27;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274764B74();
        v63 = v31;
      }

      v28 = v61;
      v29 = *(v63 + 16);
      if (v29 >= *(v63 + 24) >> 1)
      {
        sub_274764B74();
        v28 = v61;
        v63 = v32;
      }

      *(v63 + 16) = v29 + 1;
      v30 = (v63 + 88 * v29);
      v30[4] = v28;
      v30[5] = v14;
      v30[6] = v28;
      v30[7] = v14;
      v30[8] = v22;
      v30[9] = v60;
      v30[10] = v26;
      v30[11] = v59;
      v4 = v64;
      v30[12] = v65;
      v30[13] = 0;
      v30[14] = 0xE000000000000000;
      v1 = v17;
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = v64;
LABEL_12:
      swift_unknownObjectRelease();

      v1 = v17;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v33 = [v1 identifier];
  v34 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v36 = v35;

  v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v39 = v38;
  v40 = [v1 localizedName];
  v41 = v1;
  v42 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v44 = v43;

  __src[0] = v42;
  __src[1] = v44;
  v45 = v41;
  __src[2] = v63;
  sub_2747EBF0C(__src);
  v67[136] = 0;
  memcpy(&v67[7], __src, 0x81uLL);
  v68[0] = v34;
  v68[1] = v36;
  v68[2] = v37;
  v68[3] = v39;
  memset(&v68[4], 0, 17);
  memcpy(&v68[6] + 1, v67, 0x88uLL);
  sub_274754670(v68);
  memcpy(__dst, v68, 0xB9uLL);
  v46 = [v41 icon];
  if (!v46)
  {
    sub_27471CF08(0, &qword_28096BB10);
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v46 = sub_274903E28();
  }

  v47 = type metadata accessor for SmartShortcutPickerEntry();
  *&__dst[v47[6]] = v46;
  v48 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  v49 = [objc_opt_self() whiteColor];
  v50 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];

  v51 = &__dst[v47[5]];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 64);
  *v51 = v48;
  v55 = *MEMORY[0x277D7D6D0];
  sub_2749FA2F4();
  OUTLINED_FUNCTION_9();
  (*(v56 + 104))(&v51[v53], v55);
  *&v51[v54] = v50;
  v57 = *MEMORY[0x277D7D5E0];
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  (*(v58 + 104))(v51, v57);

  *&__dst[v47[7]] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_46();
}

uint64_t SmartShortcutPickerEntry.id.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_1_45(v4);
  OUTLINED_FUNCTION_1_45(a1);
  return sub_274772ADC(v4, v3);
}

uint64_t SmartShortcutPickerEntry.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmartShortcutPickerEntry() + 20);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id SmartShortcutPickerEntry.icon.getter()
{
  v1 = *(v0 + *(type metadata accessor for SmartShortcutPickerEntry() + 24));

  return v1;
}

uint64_t SmartShortcutPickerEntry.searchPhrases.getter()
{
  type metadata accessor for SmartShortcutPickerEntry();
}

uint64_t sub_27494E92C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_27488721C(v4, v5);
  }

  else
  {
    sub_27471CF08(0, &qword_2809706D8);
    v7 = sub_2749FCF84();

    return sub_274887218(v4, v7);
  }
}

uint64_t sub_27494E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809706A0);
  v15 = v13 + *(v14 + 48);
  v16 = *(v14 + 64);
  v17 = objc_opt_self();
  v18 = [v17 wf_secondaryLabelColor];
  v19 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  *v13 = v19;
  v20 = [v17 wf_secondaryLabelColor];
  v21 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  *v15 = v21;
  v15[8] = 0;
  v22 = *MEMORY[0x277D7D6C0];
  sub_2749FA2F4();
  OUTLINED_FUNCTION_9();
  (*(v23 + 104))(v15, v22);
  v24 = [v17 wf_systemGray3Color];
  v25 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  *(v13 + v16) = v25;
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_46();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t SmartShortcutPickerEntry.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  SmartShortcutPickerEntry.Identifier.hash(into:)(v1);
  return sub_2749FDE44();
}

uint64_t sub_27494EBC0()
{
  sub_2749FDDF4();
  SmartShortcutPickerEntry.Identifier.hash(into:)(v1);
  return sub_2749FDE44();
}

uint64_t static IdentifiableWorkflowReference.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identifier];
  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = v5;

  v7 = [v2 identifier];
  v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_32_1();
    v12 = sub_2749FDCC4();
  }

  return v12 & 1;
}

uint64_t type metadata accessor for SmartShortcutPickerEntry()
{
  result = qword_280970680;
  if (!qword_280970680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmartShortcutPickerEntry.Identifier.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0xB9uLL);
  v3 = sub_274772AD0(__dst);
  v4 = sub_274721C98(__dst);
  v5 = v4;
  switch(v3)
  {
    case 1:
      MEMORY[0x277C5FB60](1);
      result = MEMORY[0x277C5FB60](0);
      break;
    case 2:
      v7 = *v4;
      MEMORY[0x277C5FB60](2);
      v8 = [v7 identifier];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

      sub_2749FCE24();

      break;
    case 3:
      v9 = *(v4 + 32);
      v10 = *(v4 + 40);
      v11 = *(v4 + 48);
      v12 = *(v4 + 16);
      v13 = *v4;
      MEMORY[0x277C5FB60](3);
      *&v14[16] = v12;
      *v14 = v13;
      *&v14[32] = v9;
      *&v14[40] = v10;
      v14[48] = v11;
      SmartShortcutPickerActionTemplate.hash(into:)();
      memcpy(v14, (v5 + 56), sizeof(v14));
      result = SmartShortcutPickerActionConfiguration.hash(into:)(a1);
      break;
    default:
      MEMORY[0x277C5FB60](0);
      sub_2749FCE24();
      result = sub_2749FCE24();
      break;
  }

  return result;
}

uint64_t SmartShortcutPickerEntry.Identifier.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  SmartShortcutPickerEntry.Identifier.hash(into:)(v1);
  return sub_2749FDE44();
}

uint64_t IdentifiableWorkflowReference.hash(into:)()
{
  v1 = [*v0 identifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_2749FCE24();
}

uint64_t IdentifiableWorkflowReference.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_99_0();
  v2 = [v1 identifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494EFE8()
{
  v1 = *v0;
  sub_2749FDDF4();
  v2 = [v1 identifier];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t SmartShortcutPickerNavigationDestination.hashValue.getter()
{
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

unint64_t sub_27494F108()
{
  result = qword_280970650;
  if (!qword_280970650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970650);
  }

  return result;
}

unint64_t sub_27494F160()
{
  result = qword_280970658;
  if (!qword_280970658)
  {
    type metadata accessor for SmartShortcutPickerEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970658);
  }

  return result;
}

unint64_t sub_27494F1C0()
{
  result = qword_280970668;
  if (!qword_280970668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970668);
  }

  return result;
}

unint64_t sub_27494F218()
{
  result = qword_280970670;
  if (!qword_280970670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970670);
  }

  return result;
}

void sub_27494F294()
{
  sub_2749FA0F4();
  if (v0 <= 0x3F)
  {
    sub_27471CF08(319, &qword_280970690);
    if (v1 <= 0x3F)
    {
      sub_27494F350();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27494F350()
{
  if (!qword_280970698)
  {
    v0 = sub_2749FD014();
    if (!v1)
    {
      atomic_store(v0, &qword_280970698);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerNavigationDestination(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_27494F480()
{
  result = qword_2809706C0;
  if (!qword_2809706C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809706C0);
  }

  return result;
}

uint64_t sub_27494F4D4(void *a1)
{
  v2 = [a1 optionsCollections];

  if (!v2)
  {
    return 0;
  }

  sub_27471CF08(0, &qword_2809706D0);
  v3 = sub_2749FCF84();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerEntry.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27494F62C()
{
  result = qword_2809706E0;
  if (!qword_2809706E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809706E0);
  }

  return result;
}

uint64_t sub_27494F680()
{
  OUTLINED_FUNCTION_99_0();
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F6E0()
{
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_14_21();
  return sub_2749FDE44();
}

uint64_t sub_27494F720(uint64_t a1)
{
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x277C5FB60](a1);
  return sub_2749FDE44();
}

uint64_t sub_27494F760()
{
  sub_2749FDDF4();
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F7C4(uint64_t a1, char a2)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2 & 1);
  return sub_2749FDE44();
}

uint64_t sub_27494F808()
{
  sub_2749FDDF4();
  sub_2749FCE24();

  return sub_2749FDE44();
}

uint64_t sub_27494F884()
{
  sub_2749FDDF4();
  OUTLINED_FUNCTION_14_21();
  return sub_2749FDE44();
}

uint64_t sub_27494F8BC(uint64_t a1, uint64_t a2)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2);
  return sub_2749FDE44();
}

double sub_27494F900@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_274797CC0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_274797FD4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_27494F964(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_274797D38();
    if (v2)
    {
      OUTLINED_FUNCTION_43_7();
    }
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_27494F9A8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_274797D7C();
    if (v2)
    {
      OUTLINED_FUNCTION_43_7();
    }
  }

  return OUTLINED_FUNCTION_44();
}

void *sub_27494F9EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_274797E40();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}