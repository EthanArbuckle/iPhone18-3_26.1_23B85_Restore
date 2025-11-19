uint64_t sub_274749674(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B370);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2747496EC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27474973C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B3F8);
  sub_27485524C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2747497F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809677E0);
  sub_27471CF08(255, &qword_28096EA30);
  sub_27472AB6C(&qword_28096B520, &qword_2809677E0);
  sub_27475F564();
  sub_2749FC774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B528);
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B530);
  sub_2749FAEA4();
  swift_getWitnessTable();
  sub_27472AB6C(&qword_28096B538, &qword_28096B528);
  swift_getWitnessTable();
  sub_27472AB6C(&qword_28096B540, &qword_28096B530);
  return swift_getWitnessTable();
}

uint64_t sub_2747499E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274749A24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_274749A5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274856760();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274749A8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748568D8();
  *a1 = result;
  return result;
}

uint64_t sub_274749AE0()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274749B14()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274749BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27485A888();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274749C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B660);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_274749CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B660);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274749DAC()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_32();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_274749DE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_274749E4C@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerStaccatoSuggestionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274749E7C()
{
  swift_unknownObjectRelease();

  sub_27478C4DC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_274749F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_274749F9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474A02C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474A064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274861374();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474A094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274861290();
  *a1 = result;
  return result;
}

uint64_t sub_27474A0C4()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474A118()
{
  v2 = type metadata accessor for ReportShortcutView(0);
  OUTLINED_FUNCTION_8_20();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  sub_274727224();

  sub_274866F14(*(v0 + v7 + 48), *(v0 + v7 + 56), *(v0 + v7 + 64), *(v0 + v7 + 72));

  v8 = v0 + v7 + *(v2 + 32);
  v9 = sub_2749F9D74();
  if (!OUTLINED_FUNCTION_14_10(v9))
  {
    (*(*(v1 - 8) + 8))(v8, v1);
  }

  v10 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v4 | 7);
}

uint64_t sub_27474A278(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B760);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27474A348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2749F9284();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27474A3D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2749F9284();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474A458()
{
  v1 = (type metadata accessor for CollectionViewHeader() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  sub_2749F9284();
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v0 + v3 + v5);
  v7 = v0 + v3 + v1[10];
  sub_2747D2480(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27474A594(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9E0);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27474A5FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B9E0);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27474A664()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27474A6E8@<X0>(_WORD *a1@<X8>)
{
  result = sub_27486C93C();
  *a1 = result;
  return result;
}

uint64_t sub_27474A794()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474A7CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474A804()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_27474A884()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474A8C4()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474A8FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474A980@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryPopoverView.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27474A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEA0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_27474AA64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BE18);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEA0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

id sub_27474AB54@<X0>(void *a1@<X8>)
{
  result = sub_274870BE8();
  *a1 = result;
  return result;
}

uint64_t sub_27474AB84@<X0>(_WORD *a1@<X8>)
{
  result = sub_27487112C();
  *a1 = result;
  return result;
}

uint64_t sub_27474ABD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274871E5C();
  *a1 = result;
  return result;
}

uint64_t sub_27474AC08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474AC40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474AC80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474ACB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27474AD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB154();
  *a1 = result;
  return result;
}

uint64_t sub_27474AD60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_27474ADF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474AE8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BFC8);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_27474AF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB3C4();
  *a1 = result;
  return result;
}

uint64_t sub_27474AFA4()
{
  sub_2747A470C(*(v0 + 16));

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_2748301B8(*(v0 + 48), v1);
  }

  sub_274877EBC(*(v0 + 88), *(v0 + 96));
  sub_274830180(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_27474B068()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474B0A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474B0D8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27474B118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474B150()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27487903C();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27474B19C()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_274879014();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27474B1E8()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_274878EF0();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27474B250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27474B2E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474B388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2749FB474();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27474B3F8()
{
  v1 = type metadata accessor for ListButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_27478C4DC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  sub_2747D2480(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160));
  v6 = *(v0 + v4 + 216);
  if (v6 >> 1 != 0xFFFFFFFF || *(v0 + v4 + 352) >= 4u)
  {
    sub_2747D2BDC(*(v5 + 168), *(v5 + 176), *(v5 + 184), *(v5 + 192), *(v5 + 200), *(v5 + 208), v6, *(v5 + 224), *(v5 + 232), *(v5 + 240), *(v5 + 248), *(v5 + 256), *(v5 + 264), *(v5 + 272), *(v5 + 280), *(v5 + 288), *(v5 + 296), *(v5 + 304), *(v5 + 312), *(v5 + 320), *(v5 + 328), *(v5 + 336), *(v5 + 344), *(v5 + 352));
  }

  v8 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_27474B600()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474B638()
{
  swift_unknownObjectRelease();

  sub_27478C4DC(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_2747D2480(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 193, 7);
}

uint64_t sub_27474B724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27487F448();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474B754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27487FC44();
  *a1 = result;
  return result;
}

uint64_t sub_27474B7D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274880838();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474B81C()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474B854()
{
  v1 = sub_2749FAA94();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_27474B920()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_27474B954()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27474B99C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_27474B9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_27474BA48(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C420);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27474BB14()
{
  OUTLINED_FUNCTION_130();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, v0, v2);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27474BB64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF10);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_27474BBD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB134();
  *a1 = result;
  return result;
}

uint64_t sub_27474BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_148(*(a1 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_27474BCB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_130();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = OUTLINED_FUNCTION_13_13();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 24) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_27474BD60()
{
  OUTLINED_FUNCTION_130();
  v2 = sub_2749F9164();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_27474BDA4()
{
  OUTLINED_FUNCTION_130();
  sub_2749F9164();
  v0 = OUTLINED_FUNCTION_13_13();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_27474BDE0(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*(a1 + 8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  v3 = OUTLINED_FUNCTION_3_37();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_27474BE60()
{
  OUTLINED_FUNCTION_130();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v3 = OUTLINED_FUNCTION_3_37();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_27474BF2C()
{
  type metadata accessor for SelectGlyphButton(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  if (*(v1 + v4 + *(v0 + 32)))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_27474C104()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27474C14C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474C184()
{
  v1 = (type metadata accessor for SmartShortcutPickerSelectedEntry() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 232) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_2();
  sub_2747EBBF4(v5, v6, v7, v8, v9, v10, v11, v12, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);

  v13 = v0 + v3;
  OUTLINED_FUNCTION_3_2();
  sub_2747D2BDC(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56);
  sub_27478C4DC(*(v13 + 192), *(v13 + 200), *(v13 + 208));

  v22 = v1[9];
  v23 = sub_2749FA0F4();
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v22, 1, v23))
  {
    (*(*(v23 - 8) + 8))(v13 + v22, v23);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27474C31C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.rootNavigator.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474C34C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096C9E0);
  sub_2749FB9A4();
  sub_274892990();
  OUTLINED_FUNCTION_1_37();
  sub_274892A74(v0, v1);
  return swift_getOpaqueTypeConformance2();
}

void sub_27474C430(__n128 *a1)
{
  OUTLINED_FUNCTION_26_10(a1);
  v3 = OUTLINED_FUNCTION_108(v1, v2);
  sub_274899E60(v3, v4);
}

uint64_t sub_27474C464@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274892D70();
  *a1 = result;
  return result;
}

uint64_t sub_27474C4D0()
{
  sub_27489DADC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_274830180(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 72);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_27474C544(uint64_t a1, int a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    OUTLINED_FUNCTION_74();
    if (*(v8 + 84) != a2)
    {
      return OUTLINED_FUNCTION_148(*(a1 + a3[8]));
    }

    v7 = a3[7];
  }

  v9 = OUTLINED_FUNCTION_51(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_27474C638()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = v2[6];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    OUTLINED_FUNCTION_74();
    if (*(v6 + 84) != v3)
    {
      *(v1 + v2[8]) = (v0 - 1);
      return;
    }

    v5 = v2[7];
  }

  v7 = OUTLINED_FUNCTION_51(v5);

  __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
}

uint64_t sub_27474C770()
{
  type metadata accessor for GalleryPageContentView(0);
  OUTLINED_FUNCTION_23();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_27489A4B0(*v3, *(v3 + 8));
  sub_274830180(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  if (OUTLINED_FUNCTION_59_3() == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (OUTLINED_FUNCTION_59_3() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_27474C8E8()
{
  type metadata accessor for GalleryPageContentView(0);
  OUTLINED_FUNCTION_23();
  v4 = *(v3 + 64);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = v1 + v5;
  sub_27489A4B0(*(v1 + v5), *(v1 + v5 + 8));
  sub_274830180(*(v6 + 16), *(v6 + 24), *(v6 + 32));
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  v9 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_1_2();
    (*(v10 + 8))(v6 + v9);
  }

  else
  {
  }

  v11 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_27474CA84()
{
  OUTLINED_FUNCTION_25_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_148(*(v0 + *(v1 + 24)));
  }

  v4 = OUTLINED_FUNCTION_18_16();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_27474CB1C()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_9_20();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }
}

uint64_t sub_27474CBB4()
{
  OUTLINED_FUNCTION_25_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_32_10(*(v0 + *(v1 + 24)));
  }

  v4 = OUTLINED_FUNCTION_18_16();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_27474CC4C()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_9_20();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_27474CCE4()
{
  v0 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_31_2();
  sub_2748A06D8(v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27474CD64()
{
  sub_274830180(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_27474CDE0()
{
  type metadata accessor for GalleryPageBannerView(0);
  OUTLINED_FUNCTION_23();
  v4 = *(v3 + 64);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_274830180(*(v1 + v5), *(v1 + v5 + 8), *(v1 + v5 + 16));
  v6 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v1 + v5 + v6);
  }

  else
  {
  }

  v8 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_27474CF40()
{
  OUTLINED_FUNCTION_25_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_148(*(v0 + *(v1 + 28)));
  }

  v4 = OUTLINED_FUNCTION_18_16();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_27474CFD8()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40);
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_9_20();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = (v0 - 1);
  }
}

uint64_t sub_27474D070(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
  v5 = OUTLINED_FUNCTION_51(*(a3 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void *sub_27474D0F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    v6 = OUTLINED_FUNCTION_51(*(a4 + 28));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_27474D1A4()
{
  v1 = (type metadata accessor for GalleryCollectionHeaderView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_274830180(*(v2 + 136), *(v2 + 144), *(v2 + 152));
  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_1_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_27474D2C8()
{
  type metadata accessor for GalleryPageCollectionsRowView(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v16 = *(v5 + 64);
  v6 = sub_2749FAF04();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  sub_274830180(*(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16));
  v12 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v13 + 8))(v1 + v4 + v12);
  }

  else
  {
  }

  v14 = (v4 + v16 + v9) & ~v9;

  (*(v8 + 8))(v1 + v14, v6);

  return MEMORY[0x2821FE8E8](v1, v14 + v11, v3 | v9 | 7);
}

uint64_t sub_27474D524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_27474D5B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474D67C()
{
  v1 = type metadata accessor for SmartShortcutPickerSectionRowView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  sub_27478C4DC(*(v5 + 24), *(v5 + 32), *(v5 + 40));

  sub_274807610(*(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 176), *(v5 + 177));
  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2749FA0F4();
    if (!__swift_getEnumTagSinglePayload(v5 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v8 = v5 + v1[9];
  sub_274807638(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152), *(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 184), *(v8 + 185));
  sub_2747F2F1C(*(v5 + v1[10]), *(v5 + v1[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27474D8E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_27474D9C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_27474DAA4()
{
  v0 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  type metadata accessor for GalleryImportView();
  OUTLINED_FUNCTION_4_26();
  sub_27472AB6C(v1, &qword_28096D300);
  OUTLINED_FUNCTION_5_28();
  sub_2748A96E8(v2, v3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27474DB74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D3C0);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_44();
  v4(v3);
  return a2;
}

uint64_t sub_27474DBFC()
{
  type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_49();
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = v1 + v4;
  OUTLINED_FUNCTION_6_24(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 176), *(v8 + 64), *(v8 + 80), *(v8 + 96), *(v8 + 112), *(v8 + 128), *(v8 + 144), *(v8 + 160));
  v9 = *(v0 + 28);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_1_2();
  (*(v10 + 8))(v8 + v9);

  if (*(v1 + v7))
  {
  }

  v11 = v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  sub_27478C4DC(*v11, *(v11 + 8), *(v11 + 16));

  v12 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_27474DDE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D490);
  OUTLINED_FUNCTION_1_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27474DE6C()
{
  type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_49();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  OUTLINED_FUNCTION_6_24(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 176), *(v3 + 64), *(v3 + 80), *(v3 + 96), *(v3 + 112), *(v3 + 128), *(v3 + 144), *(v3 + 160));
  v4 = *(v0 + 28);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_1_2();
  (*(v5 + 8))(v3 + v4);

  v6 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_27474DF84()
{
  v1 = type metadata accessor for SmartShortcutPickerEntry();
  v2 = *(*(v1 - 8) + 80);

  if (*(v0 + 64))
  {

    swift_unknownObjectRelease();
  }

  sub_27477CABC(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  sub_27478C4DC(*(v0 + 208), *(v0 + 216), *(v0 + 224));

  v3 = v0 + ((v2 + 265) & ~v2);
  OUTLINED_FUNCTION_6_24(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 176), *(v3 + 64), *(v3 + 80), *(v3 + 96), *(v3 + 112), *(v3 + 128), *(v3 + 144), *(v3 + 160));
  v4 = *(v1 + 20);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_1_2();
  (*(v5 + 8))(v3 + v4);

  v6 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_27474E140()
{
  type metadata accessor for SmartShortcutPickerEntry();
  OUTLINED_FUNCTION_49();
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v5 + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0(v1 + 16);

  v8 = v1 + v3;
  OUTLINED_FUNCTION_6_24(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 176), *(v8 + 64), *(v8 + 80), *(v8 + 96), *(v8 + 112), *(v8 + 128), *(v8 + 144), *(v8 + 160));
  v9 = *(v0 + 28);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_1_2();
  (*(v10 + 8))(v8 + v9);

  sub_27478C4DC(*(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16));

  sub_27477CABC(*(v1 + v7), *(v1 + v7 + 8), *(v1 + v7 + 16), *(v1 + v7 + 24), *(v1 + v7 + 32), *(v1 + v7 + 40), *(v1 + v7 + 48));
  v11 = OUTLINED_FUNCTION_23_12();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

id sub_27474E2E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEditingNewWorkflow];
  *a2 = result;
  return result;
}

uint64_t sub_27474E330()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474E37C()
{
  v1 = OUTLINED_FUNCTION_3_32();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27474E3C4()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_27474E404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDeleted];
  *a2 = result;
  return result;
}

uint64_t sub_27474E4C4(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0);
        v11 = a3[13];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

void *sub_27474E5F0(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D2F0);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0);
        v11 = a4[13];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_27474E718()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D780);
  type metadata accessor for GalleryImportView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D778);
  type metadata accessor for GalleryShortcutActionsView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D788);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D790);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096D798);
  type metadata accessor for ReportShortcutView(255);
  sub_2748BF974();
  OUTLINED_FUNCTION_3_39();
  sub_2748C0D60(v0, v1);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_31();
  sub_27472AB6C(v2, &qword_28096D790);
  OUTLINED_FUNCTION_8_24();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_22();
  sub_2748C0D60(v3, v4);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_10_26();
  sub_2748C0D60(v5, v6);
  return OUTLINED_FUNCTION_25_10();
}

uint64_t sub_27474E970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748C0F00();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474E9A0()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27474E9E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2748C8674();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27474EA60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748C8CEC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474EA90(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_11_22();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    v7 = OUTLINED_FUNCTION_51(*(a3 + 20));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void *sub_27474EB20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    v6 = OUTLINED_FUNCTION_51(*(a4 + 20));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_27474EBA8()
{
  type metadata accessor for GallerySearchResultsView(0);
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v8 + 8))(v1 + v4 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_27474ECF0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27474ED48(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_11_22();
    return (v3 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v6 = OUTLINED_FUNCTION_51(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void *sub_27474EDCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v6 = OUTLINED_FUNCTION_51(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_27474EE58()
{
  type metadata accessor for CollectionButton(0);
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  sub_274830180(*(v7 + 8), *(v7 + 16), *(v7 + 24));
  v8 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v7 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_27474EF74()
{
  v0 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_2749FAF64();
  sub_27472AB6C(&qword_28096DD88, &qword_28096DD40);
  sub_274728F18(&qword_28159E6A0, MEMORY[0x277CDDB18]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27474F054(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEA0);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0);
        v11 = a3[12];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_27474F180(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BEA0);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[10];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0);
        v11 = a4[12];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_27474F30C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j___sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_27474F3FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474F43C()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27474F470()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27474F4B0()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_27474F568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27474F5A0()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_27474F5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_148(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_27474F68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_27474F750(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_27474F7D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27474F868()
{
  v1 = (_s10WorkflowUI17ColorPickerButtonVMa_0(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v6 + 8))(v0 + v3 + v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27474F9A4()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_27474FAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_27474FB5C()
{
  type metadata accessor for InspectorPaneSegmentedControl();
  OUTLINED_FUNCTION_23();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v5, v2 | 7);
}

uint64_t sub_27474FC78()
{
  type metadata accessor for InspectorPaneSegmentedControl();
  OUTLINED_FUNCTION_23();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v6 + 8))(v0 + v3);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_27474FD98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E518);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27474FE10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27474FE50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748DE69C();
  *a1 = result;
  return result;
}

uint64_t sub_27474FE84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2748DF360();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27474FEDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    v9 = a1 + *(a3 + 60);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_27474FF70(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90);
    v8 = v5 + *(a4 + 60);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274750008()
{
  type metadata accessor for CollectionWorkflowView(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  v7 = v1 + v4;

  v8 = *(v1 + v4 + 160);
  if (v8 != 255)
  {
    sub_2748E43FC(*(v7 + 144), *(v7 + 152), v8);
  }

  OUTLINED_FUNCTION_11_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v7 + v0);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_27475015C()
{
  type metadata accessor for CollectionWorkflowView(0);
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = *(v1 + v4 + 160);
  if (v8 != 255)
  {
    sub_2748E43FC(*(v7 + 144), *(v7 + 152), v8);
  }

  OUTLINED_FUNCTION_11_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v7 + v0);
  }

  else
  {
  }

  v10 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v1, v11 + 8, v3 | 7);
}

uint64_t sub_2747503A0()
{

  sub_2748E8C24(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2747503E8()
{
  sub_2748E8C24(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_274750428()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2747504F8()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27475E078();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_274750544()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27475E050();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_2747506B4()
{

  sub_274727224();
  sub_274727224();
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_274750744()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EAA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096EA00);
  sub_27471CF08(255, &qword_28096EA30);
  type metadata accessor for ImportQuestionEditorView();
  OUTLINED_FUNCTION_1_40();
  sub_27488EE4C(v0);
  sub_2748F0FD0(&qword_28096EA40);
  sub_2748E9FC0(&unk_28096EA48);
  swift_getOpaqueTypeConformance2();
  sub_2748F10A0();
  sub_2748F10F4();
  swift_getOpaqueTypeConformance2();
  sub_27488EE4C(&unk_28096EA98);
  swift_getOpaqueTypeConformance2();
  sub_2748F1378();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274750A2C()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_274750BB8()
{
  v1 = sub_2749FA394();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_274750CA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_274750CE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_274750D50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748FB4A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274750D80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748FB3C0();
  *a1 = result;
  return result;
}

uint64_t sub_274750DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748FB2DC();
  *a1 = result;
  return result;
}

uint64_t sub_274750DFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274750E34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747A87D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274750E64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_274750EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274750F38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274750FC8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C5D140]();
  *a1 = result;
  return result;
}

uint64_t sub_274751010()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2747510AC()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2747510E4()
{

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_274751120()
{
  type metadata accessor for EditorIconPickerView();
  OUTLINED_FUNCTION_49();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  OUTLINED_FUNCTION_47_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_107();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v9 + 8))(v0 + v8);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_2747512BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858) - 8) + 84) == a2)
  {
    v5 = *(a3 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
    v5 = *(a3 + 40);
  }

  v6 = OUTLINED_FUNCTION_51(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_27475138C()
{
  OUTLINED_FUNCTION_64_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B858) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
      v8 = *(v5 + 40);
    }

    v9 = OUTLINED_FUNCTION_51(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_27475145C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
  v5 = OUTLINED_FUNCTION_51(*(a3 + 52));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2747514DC()
{
  OUTLINED_FUNCTION_64_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260);
    v5 = OUTLINED_FUNCTION_51(*(v4 + 52));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_27475155C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F368);
  OUTLINED_FUNCTION_1();
  type metadata accessor for EditorIconPickerView.GroupBackground();
  OUTLINED_FUNCTION_29_13();
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F370);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  sub_2749FB7C4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096F380);
  OUTLINED_FUNCTION_18_20();
  sub_2749FAEA4();
  sub_2749FAEA4();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_18_20();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_18_20();
  sub_2749FC9D4();
  OUTLINED_FUNCTION_15_18();
  OUTLINED_FUNCTION_5_35();
  sub_2749FC694();
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_5_35();
  sub_2749FAA44();
  OUTLINED_FUNCTION_14_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_35();
  sub_2749FAFE4();
  OUTLINED_FUNCTION_1();
  sub_2749FAEA4();
  OUTLINED_FUNCTION_13_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_8();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_27475172C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274751738()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_274751780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274905604();
  *a1 = result;
  return result;
}

uint64_t sub_274751824()
{
  type metadata accessor for EditorIconPickerView.GroupBackground();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_35();
  sub_2749FB894();
  v0 = OUTLINED_FUNCTION_32();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_5_35();
  sub_2749FAEA4();
  v1 = OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1);
  sub_2749FAEA4();
  swift_getWitnessTable();
  sub_27472AB6C(&unk_28096BFB0, &qword_28096D7E0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_4();
  sub_27472AB6C(v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_2747519D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F680);
  OUTLINED_FUNCTION_9();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_274751A38()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_27490F9FC();
  *v0 = result;
  return result;
}

uint64_t sub_274751A64()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_27490FDA0();
  *v0 = result;
  return result;
}

uint64_t sub_274751A90()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2749102D0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274751AE4()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2749105D4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274751B10()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274910F58();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274751DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2749FB184();
  *a1 = result;
  return result;
}

uint64_t sub_274751DE8()
{
  v1 = type metadata accessor for ShortcutChiclet(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  __swift_destroy_boxed_opaque_existential_0(v0 + v3 + 16);

  sub_2747F2F1C(*(v5 + 128), *(v5 + 136));
  sub_2747F2F1C(*(v5 + 144), *(v5 + 152));
  v6 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v5 + v8);
  }

  else
  {
  }

  if (*(v5 + v1[19]))
  {
  }

  if (*(v5 + v1[20]))
  {
  }

  if (*(v5 + v1[21]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27475204C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_274752084()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2747520C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_2749FA0B4();
    v8 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2747521A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_2749FA0B4();
    v10 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_274752278()
{
  v2 = sub_2749F9E04();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  type metadata accessor for EntityPickerRuntimeView();
  OUTLINED_FUNCTION_23();
  v10 = *(v9 + 80);
  v11 = (v6 + v8 + v10) & ~v10;
  v13 = *(v12 + 64);
  (*(v4 + 8))(v1 + v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_6_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v14 + 8))(v1 + v11);
  }

  else
  {
  }

  v15 = v5 | v10;

  OUTLINED_FUNCTION_4_36(v0[8]);

  OUTLINED_FUNCTION_4_36(v0[9]);

  v16 = v0[10];
  sub_2749FA0B4();
  OUTLINED_FUNCTION_1_2();
  (*(v17 + 8))(v1 + v11 + v16);
  OUTLINED_FUNCTION_4_36(v0[11]);

  return MEMORY[0x2821FE8E8](v1, v11 + v13, v15 | 7);
}

uint64_t sub_27475244C()
{
  type metadata accessor for EntityPickerRuntimeView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_6_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  v9 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  OUTLINED_FUNCTION_4_36(v0[8]);

  OUTLINED_FUNCTION_4_36(v0[9]);

  v10 = v0[10];
  sub_2749FA0B4();
  OUTLINED_FUNCTION_1_2();
  (*(v11 + 8))(v7 + v10);
  OUTLINED_FUNCTION_4_36(v0[11]);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v3 | 7);
}

uint64_t sub_2747525B4()
{
  type metadata accessor for EntityPickerRuntimeView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  OUTLINED_FUNCTION_6_32();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v1 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_36(v0[8]);

  OUTLINED_FUNCTION_4_36(v0[9]);

  v8 = v0[10];
  sub_2749FA0B4();
  OUTLINED_FUNCTION_1_2();
  (*(v9 + 8))(v1 + v4 + v8);
  OUTLINED_FUNCTION_4_36(v0[11]);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_274752764()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2747527B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_274752930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676C8);
  OUTLINED_FUNCTION_74();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_274752A34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  OUTLINED_FUNCTION_74();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676C8);
    OUTLINED_FUNCTION_74();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_274752B34()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274752B84()
{
  type metadata accessor for AddToSiriView();
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v8 + 8))(v1 + v4);
  }

  else
  {
  }

  v9 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FACC4();
    OUTLINED_FUNCTION_9();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  if (*(v7 + v0[6]))
  {
  }

  v11 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_15_21();

  OUTLINED_FUNCTION_15_21();
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821FE8E8](v1, v11 + 8, v3 | 7);
}

uint64_t sub_274752D80()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274752E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096FE18);
  sub_274927F88();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274752E80@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerUserLibraryDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274752EB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274752EF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2747530A0@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerPromotedActionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2747530D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274753140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 48) >> 1) > 0x80000000)
    {
      return -(*(a1 + 48) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
    v8 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }
}

void sub_2747531D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 2 * -a2;
    v6 = (a1 + 56);

    bzero(v6, 0x81uLL);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30);
    v9 = a1 + *(a4 + 28);

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }
}

void sub_2747532C4(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_45_7(a1);
}

uint64_t sub_27475333C@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerAppShortcutDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27475336C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_274753544@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerTriggerSuggestionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274753574()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27475362C@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27475375C()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2747537AC()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2747539BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 48) >> 1) > 0x80000000)
    {
      return -(*(a1 + 48) >> 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_2749FA0F4();
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }
}

void sub_274753A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 2 * -a2;
    v6 = (a1 + 56);

    bzero(v6, 0x81uLL);
  }

  else
  {
    v8 = sub_2749FA0F4();
    v9 = a1 + *(a4 + 20);

    __swift_storeEnumTagSinglePayload(v9, a2, a2, v8);
  }
}

uint64_t sub_274753BC0()
{
  sub_274725D44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_274753CCC()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274753D00()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_274753D38()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274753D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274753E28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C3F0);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2747540A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_0();
  v4 = type metadata accessor for WFGlyphCategory();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 6)
  {
    return EnumTagSinglePayload - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2747540E8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WFGlyphCategory();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

BOOL sub_274754148(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

id sub_274754178(void *a1)
{
  [a1 removeFromSuperview];
  v1 = OUTLINED_FUNCTION_24_1();

  return [v1 v2];
}

uint64_t sub_2747542A0()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274754368()
{
  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2747543A4()
{
  OUTLINED_FUNCTION_113_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2747543E0()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274754450()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2747544C8()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2747544FC()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_274754530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_274754574(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_8(a3, result);
  }

  return result;
}

void *sub_274754644(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_274754670(uint64_t result)
{
  v1 = *(result + 184);
  *(result + 48) &= 1uLL;
  *(result + 184) = v1 & 3 | 0xC0;
  return result;
}

uint64_t sub_2747546DC()
{
  v1 = OUTLINED_FUNCTION_3_6();
  result = j___sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2747547B8()
{
  result = qword_280966C98;
  if (!qword_280966C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966C88);
    sub_274754870();
    sub_27472AB6C(&qword_28159E5E8, &qword_280966CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966C98);
  }

  return result;
}

unint64_t sub_274754870()
{
  result = qword_280966CA0;
  if (!qword_280966CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CB0);
    sub_27472AB6C(&qword_280966CB8, &qword_280966CB0);
    swift_getOpaqueTypeConformance2();
    sub_274724E88(&qword_28159E5A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966CA0);
  }

  return result;
}

unint64_t sub_27475499C()
{
  result = qword_280966CE8;
  if (!qword_280966CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CD0);
    sub_274754A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966CE8);
  }

  return result;
}

unint64_t sub_274754A28()
{
  result = qword_280966CF0;
  if (!qword_280966CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CF8);
    sub_274754AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966CF0);
  }

  return result;
}

unint64_t sub_274754AB4()
{
  result = qword_280966D00;
  if (!qword_280966D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966D08);
    sub_274754B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966D00);
  }

  return result;
}

unint64_t sub_274754B38()
{
  result = qword_280966D10;
  if (!qword_280966D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966D18);
    sub_274754BF0();
    sub_27472AB6C(&qword_280966D80, &qword_280966D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966D10);
  }

  return result;
}

unint64_t sub_274754BF0()
{
  result = qword_280966D20;
  if (!qword_280966D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280966D28);
    sub_27473DC6C();
    sub_274754C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966D20);
  }

  return result;
}

unint64_t sub_274754C7C()
{
  result = qword_280966D58;
  if (!qword_280966D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966D60);
    sub_274724E88(&unk_280966D68, type metadata accessor for NameIconView.RunButtonOrIcon);
    sub_27472AB6C(&qword_28159E5E0, &qword_280966D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966D58);
  }

  return result;
}

unint64_t sub_274754D68()
{
  result = qword_280966E20;
  if (!qword_280966E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280966E20);
  }

  return result;
}

uint64_t sub_274754DBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_274754DCC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x277C5B5F0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_274754E20(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x277C5B600](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_274754E90(double a1)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  return MEMORY[0x277C5FB90](*&a1);
}

uint64_t sub_274754EEC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2747937CC(*a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_274754F20@<X0>(_WORD *a1@<X8>)
{
  result = CGSizeMake(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_274754F4C()
{
  v1 = OUTLINED_FUNCTION_3_6();
  result = CGSizeMake(v1);
  *v0 = result;
  return result;
}

uint64_t sub_274754FDC()
{
  v1 = OUTLINED_FUNCTION_3_6();
  result = j___sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_274755004()
{
  v1 = OUTLINED_FUNCTION_3_6();
  result = j___sSo19WFSmartPromptStatusa10WorkflowUIE2idSSvg(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_274755044()
{
  sub_274724E88(&qword_280967040, type metadata accessor for WFContentCategory);
  sub_274724E88(&qword_280967048, type metadata accessor for WFContentCategory);

  return sub_2749FDB64();
}

uint64_t sub_274755114(uint64_t a1)
{
  v2 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_274755180(uint64_t a1)
{
  v2 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2747551EC(void *a1, uint64_t a2)
{
  v4 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_27475527C(uint64_t a1, uint64_t a2)
{
  v4 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_27475530C(uint64_t a1)
{
  v2 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_274755378(uint64_t a1)
{
  v2 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2747553E4(void *a1, uint64_t a2)
{
  v4 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_274755474(uint64_t a1, uint64_t a2)
{
  v4 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2747554F0()
{
  sub_2749FDDF4();
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_274755550()
{
  sub_274724E88(&unk_28159E4D0, type metadata accessor for WFWorkflowTypeName);
  sub_274724E88(&qword_280967098, type metadata accessor for WFWorkflowTypeName);

  return sub_2749FDB64();
}

uint64_t sub_27475560C()
{
  sub_274724E88(&qword_280967320, type metadata accessor for WFExecutionPlatform);
  sub_274724E88(&qword_280967328, type metadata accessor for WFExecutionPlatform);

  return sub_2749FDB64();
}

uint64_t sub_2747556C8()
{
  sub_274724E88(&qword_280967368, type metadata accessor for TextStyle);
  sub_274724E88(&unk_280967370, type metadata accessor for TextStyle);

  return sub_2749FDB64();
}

uint64_t sub_274755784()
{
  sub_274724E88(&qword_280967050, type metadata accessor for WFWorkflowRunSource);
  sub_274724E88(&qword_280967058, type metadata accessor for WFWorkflowRunSource);

  return sub_2749FDB64();
}

uint64_t sub_274755840()
{
  sub_274724E88(&qword_28159E480, _s3__C3KeyVMa_0);
  sub_274724E88(&qword_2809673A0, _s3__C3KeyVMa_0);

  return sub_2749FDB64();
}

uint64_t sub_2747558FC()
{
  sub_274724E88(&qword_280967330, type metadata accessor for InfoKey);
  sub_274724E88(&qword_280967338, type metadata accessor for InfoKey);

  return sub_2749FDB64();
}

void *sub_2747559B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_2747559C8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2747559D4()
{
  sub_274724E88(&qword_280967340, type metadata accessor for Weight);
  sub_274724E88(&qword_280967348, type metadata accessor for Weight);
  sub_274757EA0();
  return sub_2749FDB64();
}

uint64_t sub_274755A9C()
{
  sub_274724E88(&qword_280967080, type metadata accessor for WFWorkflowActionKey);
  sub_274724E88(&unk_280967088, type metadata accessor for WFWorkflowActionKey);

  return sub_2749FDB64();
}

uint64_t sub_274755B58()
{
  sub_274724E88(&qword_280967060, type metadata accessor for WFSmartPromptStatus);
  sub_274724E88(&qword_280967068, type metadata accessor for WFSmartPromptStatus);

  return sub_2749FDB64();
}

uint64_t sub_274755C14()
{
  sub_274724E88(&qword_280967310, type metadata accessor for WFCoercionOptionName);
  sub_274724E88(&qword_280967318, type metadata accessor for WFCoercionOptionName);

  return sub_2749FDB64();
}

uint64_t sub_274755CD0()
{
  sub_274724E88(&qword_280967300, type metadata accessor for WFItemClassPrioritizationType);
  sub_274724E88(&qword_280967308, type metadata accessor for WFItemClassPrioritizationType);

  return sub_2749FDB64();
}

uint64_t sub_274755D8C()
{
  sub_274724E88(&unk_28096B0F0, type metadata accessor for AttributeName);
  sub_274724E88(&qword_280967380, type metadata accessor for AttributeName);

  return sub_2749FDB64();
}

uint64_t sub_274755E48()
{
  sub_274724E88(&unk_28096B0E0, type metadata accessor for TraitKey);
  sub_274724E88(&qword_280967360, type metadata accessor for TraitKey);

  return sub_2749FDB64();
}

uint64_t sub_274755F04()
{
  sub_274724E88(&qword_280967070, type metadata accessor for WFShortcutConcerningReportReason);
  sub_274724E88(&qword_280967078, type metadata accessor for WFShortcutConcerningReportReason);

  return sub_2749FDB64();
}

uint64_t sub_274755FC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2749FCD64();

  *a1 = v2;
  return result;
}

uint64_t sub_274756008()
{
  sub_274724E88(&qword_280967388, type metadata accessor for Key);
  sub_274724E88(&unk_280967390, type metadata accessor for Key);

  return sub_2749FDB64();
}

uint64_t sub_2747560C4()
{
  sub_274724E88(&qword_280967030, type metadata accessor for WFActionButtonConfigurationContext);
  sub_274724E88(&qword_280967038, type metadata accessor for WFActionButtonConfigurationContext);

  return sub_2749FDB64();
}

uint64_t sub_274756180(uint64_t a1)
{
  v2 = sub_274724E88(&qword_2809672C0, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2747561EC(uint64_t a1)
{
  v2 = sub_274724E88(&qword_2809672C0, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_274756258(uint64_t a1)
{
  v2 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2747562C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274724E88(&qword_2809672B8, type metadata accessor for WFCloudKitError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_274756348(uint64_t a1)
{
  v2 = sub_274724E88(&qword_280967270, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2747563B4(uint64_t a1)
{
  v2 = sub_274724E88(&qword_280967270, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_274756420(uint64_t a1)
{
  v2 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_27475648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274724E88(&qword_280967268, type metadata accessor for WFGalleryError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2747565E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274756608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_274756D10()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FCE24();
}

uint64_t sub_274756D8C()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2749FDCC4();
  }

  return v5 & 1;
}

uint64_t sub_274756E10(uint64_t a1, id *a2)
{
  result = sub_2749FCD84();
  *a2 = 0;
  return result;
}

uint64_t sub_274756E88(uint64_t a1, id *a2)
{
  v3 = sub_2749FCD94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_274756F0C()
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v0 = sub_2749FCD64();

  return v0;
}

uint64_t sub_274756F44()
{
  sub_2749FDDF4();
  sub_2749FDE24();
  return sub_2749FDE44();
}

uint64_t sub_274756F8C()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v1 = MEMORY[0x277C5EBF0](v0);

  return v1;
}

uint64_t sub_274756FF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274757018(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_274757108(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274757128(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_274757BB0()
{
  result = qword_280967298;
  if (!qword_280967298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967298);
  }

  return result;
}

unint64_t sub_274757EA0()
{
  result = qword_280967350;
  if (!qword_280967350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967350);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t sub_274757FA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274758014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274758014()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v3 = sub_27475C834(v1, v2);
  OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2749F92D4();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_2747580D8()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_3();
  v3 = *(v1 + 16) == v2 && *(v1 + 24) == v0;
  if (v3 || (OUTLINED_FUNCTION_23_0(), (sub_2749FDCC4() & 1) != 0))
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_0();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_1();
  }
}

uint64_t sub_274758194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void sub_274758200()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_274757F64();
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274758310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274758354();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274758354()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v3 = sub_27475C834(v1, v2);
  OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2749F92D4();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_2747583F8()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_0();
  if (sub_27475A928(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_0();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }
}

uint64_t sub_2747584A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void sub_274758510()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_2747582CC();
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274758620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274758664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274758664()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v3 = sub_27475C834(v1, v2);
  OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2749F92D4();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_274758708()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_0();
  if (sub_27475A928(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_0();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }
}

uint64_t sub_2747587B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void sub_274758820()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_2747585DC();
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274758930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747589BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274758974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_2747589BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v3 = sub_27475C834(v1, v2);
  OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2749F92D4();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_274758A60()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_23_0();
  if (sub_27475A928(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_0();
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    *(v1 + 64) = v2;
    *(v1 + 72) = v0;
  }
}

uint64_t sub_274758B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

void sub_274758B78()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_2747588EC();
  OUTLINED_FUNCTION_50_0();
}

void sub_274758CC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27473F28C(a1, &v4 - v3, &qword_280967618);
  sub_274758E28();
}

uint64_t sub_274758D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v6 = sub_27475C834(v4, v5);
  OUTLINED_FUNCTION_16_2(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_2749F92D4();

  v14 = OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionURL;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return sub_27473F28C(v2 + v14, a1, &qword_280967618);
}

void sub_274758E28()
{
  OUTLINED_FUNCTION_49_2();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  v4 = OUTLINED_FUNCTION_34(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionURL;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  sub_27473F28C(v0 + v7, v6, &qword_280967618);
  v8 = OUTLINED_FUNCTION_45();
  v10 = sub_27475A9D0(v8, v9);
  sub_27472ECBC(v6, &qword_280967618);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v12[-16] = v0;
    *&v12[-8] = v2;
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    sub_27473F28C(v2, v6, &qword_280967618);
    swift_beginAccess();
    sub_27475ACD0(v6, v0 + v7);
    swift_endAccess();
  }

  sub_27472ECBC(v2, &qword_280967618);
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_274758FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_27473F28C(a2, &v9 - v5, &qword_280967618);
  v7 = OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionURL;
  swift_beginAccess();
  sub_27475ACD0(v6, a1 + v7);
  return swift_endAccess();
}

void sub_274759090()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_274758C44();
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2747591B0@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_2747592B0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27475D1DC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_274759220(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27475D1D4;
  }

  else
  {
    v4 = 0;
  }

  sub_27473A658(v1);
  return sub_274759360(v4);
}

uint64_t sub_2747592B0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_2();
  v3 = sub_27475C834(v1, v2);
  OUTLINED_FUNCTION_16_2(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_2749F92D4();

  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v11 = OUTLINED_FUNCTION_32_1();
  sub_27473A658(v11);
  return OUTLINED_FUNCTION_32_1();
}

uint64_t sub_274759360(uint64_t a1)
{
  swift_getKeyPath();
  sub_27475A880();
  sub_27471F8A4(a1);
}

uint64_t sub_2747593E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_27473A658(a2);
  return sub_27471F8A4(v6);
}

void sub_27475946C()
{
  OUTLINED_FUNCTION_49_2();
  v1 = OUTLINED_FUNCTION_14_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_15_2(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_0_2();
  v5 = sub_27475C834(v3, v4);
  OUTLINED_FUNCTION_3_7(v5);

  v6 = OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_5_3(v6);

  OUTLINED_FUNCTION_30_2();
  *(v0 + 56) = sub_27475915C();
  OUTLINED_FUNCTION_50_0();
}

void sub_274759538(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  OUTLINED_FUNCTION_45();
  sub_2749F92E4();

  free(v1);
}

uint64_t ShortcutsEmptyStateContent.__allocating_init(title:subtitle:symbolName:actionName:actionURL:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  ShortcutsEmptyStateContent.init(title:subtitle:symbolName:actionName:actionURL:actionHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v21, a9, a10, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return v19;
}

void ShortcutsEmptyStateContent.init(title:subtitle:symbolName:actionName:actionURL:actionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  v37[0] = v24;
  v37[1] = v25;
  v27 = v26;
  v29 = v28;
  v38 = a22;
  v39 = a23;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  v31 = OUTLINED_FUNCTION_34(v30);
  MEMORY[0x28223BE20](v31);
  v33 = v37 - v32;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 32) = 0u;
  v34 = OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionURL;
  v35 = sub_2749F9064();
  __swift_storeEnumTagSinglePayload(v23 + v34, 1, 1, v35);
  v36 = (v23 + OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionHandler);
  *v36 = 0;
  v36[1] = 0;
  sub_2749F9304();
  *(v23 + 16) = v29;
  *(v23 + 24) = v27;
  sub_2747583F8();
  sub_274758708();
  sub_274758A60();
  sub_27473F28C(a21, v33, &qword_280967618);
  sub_274758E28();
  sub_274759360(v38);
  sub_27472ECBC(a21, &qword_280967618);
  OUTLINED_FUNCTION_46();
}

uint64_t static ShortcutsEmptyStateContent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_35_0();
  sub_274758014();
  OUTLINED_FUNCTION_20_5();
  sub_274758014();
  OUTLINED_FUNCTION_29_2();
  v3 = v3 && v0 == v2;
  if (v3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_33_0();

    if ((v1 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_274758354();
  OUTLINED_FUNCTION_20_5();
  v4 = sub_274758354();
  if (v0)
  {
    if (!v5)
    {
      goto LABEL_37;
    }

    if (v1 == v4 && v0 == v5)
    {
    }

    else
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_33_0();

      if ((v1 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v5)
  {
    goto LABEL_39;
  }

  sub_274758664();
  OUTLINED_FUNCTION_20_5();
  v7 = sub_274758664();
  if (!v0)
  {
    if (v8)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (!v8)
  {
LABEL_37:
    v10 = 0;
LABEL_40:

    return v10 & 1;
  }

  if (v1 == v7 && v0 == v8)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_33_0();

  if (v1)
  {
LABEL_30:
    v11 = sub_2747589BC();
    v13 = v12;
    v14 = sub_2747589BC();
    if (v13)
    {
      if (v15)
      {
        if (v11 == v14 && v13 == v15)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_2749FDCC4();
        }

        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (!v15)
    {
      v10 = 1;
      return v10 & 1;
    }

LABEL_39:
    v10 = 0;
    goto LABEL_40;
  }

LABEL_26:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2747599C8()
{
  sub_274758014();
  sub_2749FCE24();

  sub_274758354();
  if (v0)
  {
    OUTLINED_FUNCTION_20_5();
    sub_2749FDE14();
    sub_2749FCE24();
  }

  else
  {
    sub_2749FDE14();
  }

  sub_274758664();
  if (v1)
  {
    OUTLINED_FUNCTION_20_5();
    sub_2749FDE14();
    sub_2749FCE24();
  }

  else
  {
    sub_2749FDE14();
  }

  sub_2747589BC();
  if (!v2)
  {
    return sub_2749FDE14();
  }

  sub_2749FDE14();
  sub_2749FCE24();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_27475A880()
{
  OUTLINED_FUNCTION_0_2();
  sub_27475C834(v0, v1);
  return sub_2749F92C4();
}

BOOL sub_27475A928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_2749FDCC4();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_27475A9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2749F9064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967718);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_27473F28C(a1, &v20 - v13, &qword_280967618);
  sub_27473F28C(a2, &v14[v15], &qword_280967618);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
  {
    sub_27473F28C(v14, v10, &qword_280967618);
    if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_27475C834(&qword_280967720, MEMORY[0x277CC9260]);
      v17 = sub_2749FCD54();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_27472ECBC(v14, &qword_280967618);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_27472ECBC(v14, &qword_280967718);
    v16 = 1;
    return v16 & 1;
  }

  sub_27472ECBC(v14, &qword_280967618);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_27475ACD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ShortcutsEmptyStateContent.deinit()
{

  sub_27472ECBC(v0 + OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionURL, &qword_280967618);
  sub_27471F8A4(*(v0 + OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent__actionHandler));
  v1 = OBJC_IVAR____TtC10WorkflowUI26ShortcutsEmptyStateContent___observationRegistrar;
  sub_2749F9314();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ShortcutsEmptyStateContent.__deallocating_deinit()
{
  ShortcutsEmptyStateContent.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27475AE7C()
{
  sub_2749FDDF4();
  sub_2747599C8();
  return sub_2749FDE44();
}

uint64_t sub_27475AF28()
{
  sub_2749FDDF4();
  sub_2747599C8();
  return sub_2749FDE44();
}

uint64_t ShortcutsEmptyStateView.content.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  return v1;
}

void (*ShortcutsEmptyStateView.content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v5 = *v1;
  v4 = v1[1];
  v3[6] = *v1;
  v3[7] = v4;
  *v3 = v5;
  v3[1] = v4;

  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  return sub_27475B0CC;
}

void sub_27475B0CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    OUTLINED_FUNCTION_42();
    sub_2749FC5D4();
  }

  else
  {
    OUTLINED_FUNCTION_42();
    sub_2749FC5D4();
  }

  free(v2);
}

uint64_t ShortcutsEmptyStateView.$content.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5E4();
  return v1;
}

uint64_t ShortcutsEmptyStateView.init(content:)@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ShortcutsEmptyStateView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ShortcutsEmptyStateContent(0);
  result = sub_2749FC5B4();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

void ShortcutsEmptyStateView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967638);
  v4 = OUTLINED_FUNCTION_34(v3);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - v5);
  *v6 = sub_2749FC914();
  v6[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967640);
  v12 = v0;
  v11 = v0;
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967658);
  sub_27472AB6C(&qword_280967660, &qword_280967648);
  sub_27475C580();
  sub_27475C6C0(&qword_280967678, &qword_280967658, &unk_274A0F080, sub_27475C690);
  sub_2749FB8A4();
  sub_2749FC914();
  sub_2749FB004();
  sub_27475CF54(v6, v2, &qword_280967638);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676A0);
  memcpy((v2 + *(v8 + 36)), v13, 0x70uLL);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_27475B4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967700);
  sub_27475D150();
  return sub_2749FC584();
}

uint64_t sub_27475B55C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  sub_274758014();

  sub_27475D0D0();
  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27475B5F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  sub_274758664();
  v9 = v8;

  if (v9)
  {
    sub_2749FC534();
    sub_2749FB664();
    v10 = sub_2749FB684();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v11 = sub_2749FC544();

    sub_27472ECBC(v6, &qword_280967710);
    v14 = v11;
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  result = sub_2749FB7B4();
  v13 = v17;
  *a2 = v16;
  *(a2 + 8) = v13;
  return result;
}

void *sub_27475B780@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  v4 = sub_274758354();
  v6 = v5;

  if (v6)
  {
    v17[0] = v4;
    v17[1] = v6;
    sub_27475D0D0();
    v7 = sub_2749FBEE4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    sub_2749FC914();
    sub_2749FB004();
    __src[0] = v7;
    __src[1] = v9;
    LOBYTE(__src[2]) = v11 & 1;
    __src[3] = v13;
    sub_27475D138(__src);
  }

  else
  {
    sub_27475D12C(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C050);
  sub_27475C60C();
  sub_2749FB7B4();
  return memcpy(a2, v17, 0x91uLL);
}

uint64_t sub_27475B908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutsEmptyStateView(0);
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = v5;
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676F8);
  MEMORY[0x28223BE20](v53);
  v55 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - v10;
  v51 = sub_2749F9064();
  v47 = *(v51 - 8);
  v12 = *(v47 + 64);
  v13 = MEMORY[0x28223BE20](v51);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v43 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967688);
  MEMORY[0x28223BE20](v58);
  v57 = &v43 - v15;
  v16 = *a1;
  v17 = a1[1];
  v45 = a1;
  v59 = v16;
  v60 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967630);
  sub_2749FC5C4();
  v18 = sub_2747589BC();
  v20 = v19;

  if (v20)
  {
    v49 = v7;
    v52 = a2;
    v59 = v16;
    v60 = v17;
    sub_2749FC5C4();
    v21 = sub_2747592B0();

    if (v21)
    {
      MEMORY[0x28223BE20](v22);
      *(&v43 - 2) = v18;
      *(&v43 - 1) = v20;

      v23 = v54;
      sub_2749FC624();

      v24 = v56;
      v25 = v49;
      (*(v56 + 16))(v55, v23, v49);
      swift_storeEnumTagMultiPayload();
      sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
      v26 = v57;
      sub_2749FB7B4();
      sub_27471F8A4(v21);
      (*(v24 + 8))(v23, v25);
    }

    else
    {
      v59 = v16;
      v60 = v17;
      sub_2749FC5C4();
      sub_274758D6C(v11);

      v28 = v51;
      if (__swift_getEnumTagSinglePayload(v11, 1, v51) == 1)
      {

        sub_27472ECBC(v11, &qword_280967618);
        v29 = 1;
        a2 = v52;
        v26 = v57;
LABEL_9:
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967698);
        __swift_storeEnumTagSinglePayload(v26, v29, 1, v41);
        sub_27475CF54(v26, a2, &qword_280967688);
        v27 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v27, 1, v58);
      }

      v30 = v47;
      v31 = *(v47 + 32);
      v32 = v50;
      v31(v50, v11, v28);
      v59 = v18;
      v60 = v20;
      v33 = v48;
      sub_27472317C(v45, v48, type metadata accessor for ShortcutsEmptyStateView);
      v34 = v43;
      (*(v30 + 16))(v43, v32, v28);
      v35 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v36 = (v46 + *(v30 + 80) + v35) & ~*(v30 + 80);
      v37 = swift_allocObject();
      sub_27475CFA4(v33, v37 + v35);
      v31((v37 + v36), v34, v28);
      sub_27475D0D0();
      v38 = v54;
      sub_2749FC644();
      v39 = v56;
      v40 = v49;
      (*(v56 + 16))(v55, v38, v49);
      swift_storeEnumTagMultiPayload();
      sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
      v26 = v57;
      sub_2749FB7B4();
      (*(v39 + 8))(v38, v40);
      (*(v30 + 8))(v50, v28);
    }

    v29 = 0;
    a2 = v52;
    goto LABEL_9;
  }

  v27 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v58);
}

uint64_t sub_27475C03C@<X0>(uint64_t a1@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27475C0A8(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v16[0] = sub_2749FB4C4();
  v3 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = sub_2749FACC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShortcutsEmptyStateView(0);
  sub_27473F28C(a1 + *(v13 + 20), v8, &unk_28096FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_2749FD2D4();
    v14 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v16[0]);
  }

  sub_2749FAC94();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_27475C360()
{
  sub_2749FACC4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  v1 = OUTLINED_FUNCTION_45();
  v2(v1);
  return sub_2749FB434();
}

uint64_t sub_27475C418()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45();
    v5 = sub_2749FDCC4();
  }

  return v5 & 1;
}

uint64_t sub_27475C498(uint64_t a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27475C4F4()
{
  result = qword_280969860;
  if (!qword_280969860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969860);
  }

  return result;
}

unint64_t sub_27475C580()
{
  result = qword_280967668;
  if (!qword_280967668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967650);
    sub_27475C60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967668);
  }

  return result;
}

unint64_t sub_27475C60C()
{
  result = qword_280967670;
  if (!qword_280967670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096C050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967670);
  }

  return result;
}

uint64_t sub_27475C6C0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27475C73C()
{
  result = qword_280967690;
  if (!qword_280967690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967698);
    sub_27472AB6C(&unk_28096B360, &unk_28096CFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967690);
  }

  return result;
}

uint64_t sub_27475C834(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27475C8A0()
{
  sub_27475CE38(319, &qword_2809676C0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2749F9314();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_27475CD54()
{
  sub_27475CE38(319, &qword_2809676E0, type metadata accessor for ShortcutsEmptyStateContent, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_27475CE38(319, &unk_28096FAD0, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27475CE38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_27475CE9C()
{
  result = qword_2809676E8;
  if (!qword_2809676E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809676A0);
    sub_27472AB6C(&qword_2809676F0, &qword_280967638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809676E8);
  }

  return result;
}

uint64_t sub_27475CF54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_47(a1, a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_27475CFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsEmptyStateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27475D008()
{
  v1 = *(type metadata accessor for ShortcutsEmptyStateView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2749F9064();
  OUTLINED_FUNCTION_34(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_27475C0A8(v0 + v2, v6);
}

unint64_t sub_27475D0D0()
{
  result = qword_28159E570;
  if (!qword_28159E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E570);
  }

  return result;
}

unint64_t sub_27475D150()
{
  result = qword_280967708;
  if (!qword_280967708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967708);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38()
{
}

uint64_t OUTLINED_FUNCTION_39_0()
{
  *v1 = v0;

  return swift_getKeyPath();
}

void sub_27475D228()
{
  OUTLINED_FUNCTION_48();
  v88 = v1;
  v89 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967830);
  OUTLINED_FUNCTION_43();
  v86 = v3;
  v87 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v85 = &v76 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967838);
  OUTLINED_FUNCTION_43();
  v83 = v7;
  v84 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v82 = &v76 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967828);
  OUTLINED_FUNCTION_43();
  v79 = v11;
  v80 = v10;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  v78 = &v76 - v13;
  v14 = sub_2749FAD64();
  OUTLINED_FUNCTION_43();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v77 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  OUTLINED_FUNCTION_43();
  v24 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v27 = &v76 - v26;
  if (sub_27472D918(MEMORY[0x277D84F90]))
  {
    sub_2747AF9E0(MEMORY[0x277D84F90], v28, v29, v30, v31, v32, v33, v34, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  }

  else
  {
    v35 = MEMORY[0x277D84FA0];
  }

  v36 = v89;
  v37 = v89;
  *(v89 + 32) = v35;
  v81 = v37 + 32;
  v38 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__customizingShortcut;
  LOBYTE(v91) = 0;
  sub_2749FA8C4();
  v39 = *(v24 + 32);
  v39(v36 + v38, v27, v22);
  v40 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__selectingParameter;
  LOBYTE(v91) = 0;
  sub_2749FA8C4();
  v39(v36 + v40, v27, v22);
  v41 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__navigationPath;
  sub_2749FAD54();
  (*(v16 + 16))(v77, v21, v14);
  v42 = v78;
  sub_2749FA8C4();
  (*(v16 + 8))(v21, v14);
  (*(v79 + 32))(v36 + v41, v42, v80);
  v43 = v88;
  *(v36 + 16) = v88;
  v44 = objc_allocWithZone(MEMORY[0x277D7C4E0]);
  v45 = v43;
  *(v36 + 24) = [v44 initWithSleepFeature_];
  v46 = [v45 workflowTypes];
  type metadata accessor for WFWorkflowTypeName(0);
  OUTLINED_FUNCTION_3();
  sub_2749FCF84();

  sub_274722984();
  v48 = v47;
  OUTLINED_FUNCTION_5_4();
  v90 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809677D0);
  sub_2749FA8C4();
  swift_endAccess();
  v49 = [v45 importQuestions];
  sub_27471CF08(0, &qword_28096EA30);
  OUTLINED_FUNCTION_3();
  v50 = sub_2749FCF84();

  OUTLINED_FUNCTION_5_4();
  v90 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809677E0);
  sub_2749FA8C4();
  swift_endAccess();
  v51 = [v45 inputClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970440);
  v52 = sub_2749FCF84();

  v53 = *(v52 + 16);
  v54 = MEMORY[0x277D84F90];
  if (v53)
  {
    v55 = v52 + 32;
    sub_27471CF08(0, &qword_28096D760);
    v56 = MEMORY[0x277D84F90];
    do
    {
      v57 = swift_dynamicCastMetatype();
      if (v57)
      {
        v58 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2747636B8();
          v56 = v61;
        }

        v60 = *(v56 + 16);
        v59 = *(v56 + 24);
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_8(v59);
          sub_2747636B8();
          v56 = v62;
        }

        *(v56 + 16) = v60 + 1;
        *(v56 + 8 * v60 + 32) = v58;
      }

      v55 += 8;
      --v53;
    }

    while (v53);
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
  }

  v63 = *(v56 + 16);
  if (v63)
  {
    v91 = v54;
    sub_27476D218(0, v63, 0);
    v64 = v91;
    v65 = *(v91 + 16);
    v66 = 32;
    do
    {
      v67 = *(v56 + v66);
      v91 = v64;
      v68 = *(v64 + 24);
      if (v65 >= v68 >> 1)
      {
        v69 = OUTLINED_FUNCTION_8(v68);
        sub_27476D218(v69, v65 + 1, 1);
        v64 = v91;
      }

      *(v64 + 16) = v65 + 1;
      *(v64 + 8 * v65 + 32) = v67;
      v66 += 8;
      ++v65;
      --v63;
    }

    while (v63);
  }

  v70 = sub_27475F8F8();
  v71 = v89;
  OUTLINED_FUNCTION_5_4();
  v90 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809677F0);
  sub_2749FA8C4();
  swift_endAccess();
  [*(v71 + 24) setObserver_];
  swift_getKeyPath();
  v72 = v82;
  sub_2749F9014();

  sub_27472ABB4(&qword_280967840, &qword_280967838);
  OUTLINED_FUNCTION_7_1();

  v73 = v84;
  sub_2749FA974();
  OUTLINED_FUNCTION_7_1();

  (*(v83 + 8))(v72, v73);
  swift_beginAccess();
  sub_2749FA834();
  swift_endAccess();

  swift_getKeyPath();
  v74 = v85;
  sub_2749F9014();

  sub_27472ABB4(&qword_280967848, &qword_280967830);
  OUTLINED_FUNCTION_7_1();

  v75 = v87;
  sub_2749FA974();
  OUTLINED_FUNCTION_7_1();

  (*(v86 + 8))(v74, v75);
  swift_beginAccess();
  sub_2749FA834();
  swift_endAccess();

  OUTLINED_FUNCTION_46();
}

uint64_t sub_27475DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_2749FA914();
  return a4(v5);
}

uint64_t sub_27475DBB4()
{
  type metadata accessor for ShortcutDetailsViewModel();
  sub_274720DEC(&qword_280967808, type metadata accessor for ShortcutDetailsViewModel);
  sub_2749FA874();
  sub_2749FA894();
}

id sub_27475DC3C()
{
  v1 = *(v0 + 16);
  v2 = sub_27475DCC4();
  sub_2749354E0(v2);
  type metadata accessor for WFWorkflowTypeName(0);
  v3 = sub_2749FCF74();

  [v1 setWorkflowTypes_];

  return [v1 save];
}

id sub_27475DD04()
{
  v1 = *(v0 + 16);
  sub_27475DD98();
  sub_27471CF08(0, &qword_28096EA30);
  v2 = sub_2749FCF74();

  [v1 setImportQuestions_];

  return [v1 save];
}

uint64_t sub_27475DDAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27475DE18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27475DD98();
  *a1 = result;
  return result;
}

void sub_27475DE70()
{
  v0 = sub_27475DD98();
  v8 = MEMORY[0x277D84F90];
  v1 = sub_27472D918(v0);
  v2 = 0;
  while (1)
  {
    if (v1 == v2)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x277C5F6D0](v2, v0);
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v3 = *(v0 + 8 * v2 + 32);
    }

    v4 = v3;
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v6 = [v3 parameter];

    ++v2;
    if (v6)
    {
      MEMORY[0x277C5ECC0]();
      v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v7 >> 1)
      {
        OUTLINED_FUNCTION_8(v7);
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      v2 = v5;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_27475DFA8(uint64_t a1)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a1);
  return sub_2749FDE44();
}

uint64_t sub_27475E000()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t sub_27475E08C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27475E10C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();
}

uint64_t sub_27475E184(uint64_t a1)
{
  v2 = sub_2749FAD64();
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v8, a1, v2);

  sub_2749FA914();
  return (*(v4 + 8))(a1, v2);
}

void sub_27475E298()
{
  OUTLINED_FUNCTION_48();
  v1 = sub_2749F9A54();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_2749F9A74();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  sub_2749F9AA4();
  sub_2749F9A94();
  sub_27475DE70();
  *v14 = v15;
  v14[1] = sub_27475F8D4;
  v14[2] = v0;
  (*(v10 + 104))(v14, *MEMORY[0x277D7BD00], v8);

  sub_2749F9A84();
  (*(v3 + 104))(v7, *MEMORY[0x277D7BCF8], v1);
  sub_2749F9A64();
  sub_2749F9A04();
  sub_2749F9A34();
  OUTLINED_FUNCTION_46();
}

void sub_27475E440()
{
  OUTLINED_FUNCTION_48();
  v1 = [*(v0 + 16) actions];
  sub_27471CF08(0, &qword_28096D540);
  OUTLINED_FUNCTION_3();
  v2 = sub_2749FCF84();

  v3 = sub_27472D918(v2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v3 == v4)
    {

      OUTLINED_FUNCTION_46();
      return;
    }

    sub_2747B2790(v4, v5 == 0, v2);
    v6 = v5 ? MEMORY[0x277C5F6D0](v4, v2) : *(v2 + 8 * v4 + 32);
    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = [v6 disabledOnPlatforms];
    type metadata accessor for WFExecutionPlatform(0);
    OUTLINED_FUNCTION_3();
    sub_2749FCF84();

    MEMORY[0x28223BE20](v9);
    LOBYTE(v8) = sub_274947D28();

    if (v8)
    {
      sub_2749FD9E4();
      sub_2749FDA24();
      sub_2749FDA34();
      sub_2749FD9F4();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
}

uint64_t sub_27475E60C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_2749FD0A4();

  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_27479930C();
}

uint64_t sub_27475E708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2749FD0A4();
  *(v4 + 24) = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27475E7A0, v6, v5);
}

uint64_t sub_27475E7A0()
{

  type metadata accessor for ShortcutDetailsViewModel();
  sub_274720DEC(&qword_280967808, type metadata accessor for ShortcutDetailsViewModel);
  sub_2749FA874();
  sub_2749FA894();

  v1 = *(v0 + 8);

  return v1();
}

void sub_27475E8A8()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v48 = v11 - v10;
  v12 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v49 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v47 = v16 - v15;
  v50 = sub_2749FCAC4();
  OUTLINED_FUNCTION_43();
  v46 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = [v3 key];
  if (!v24)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v24 = sub_2749FCD64();
  }

  v25 = [v5 defaultParameterStateForKey_];

  objc_allocWithZone(MEMORY[0x277D7CA80]);
  v26 = v5;
  v27 = v3;
  swift_unknownObjectRetain();
  v28 = sub_27475F4B4(v26, v27, 0, 0, v25);
  if (v28)
  {
    v42 = v25;
    v43 = v12;
    v44 = v8;
    v45 = v6;
    v29 = v28;
    v52[0] = sub_27475DD98();
    MEMORY[0x277C5ECC0]();
    v30 = *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30 >> 1)
    {
      OUTLINED_FUNCTION_8(v30);
      sub_2749FCFB4();
    }

    sub_2749FCFF4();
    sub_27475DB0C(v52[0]);
    sub_27475E0F8();
    sub_27471CF08(0, &qword_28159E4E0);
    v41 = sub_2749FD404();
    sub_2749FCAB4();
    v31 = v23;
    sub_2749FCB14();
    v46 = *(v46 + 8);
    (v46)(v21, v50);
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    *(v32 + 24) = v29;
    v52[4] = sub_27475F554;
    v52[5] = v32;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 1107296256;
    v52[2] = sub_274760264;
    v52[3] = &block_descriptor;
    v33 = _Block_copy(v52);
    v34 = v29;

    v35 = v47;
    sub_2749FCA94();
    v51 = MEMORY[0x277D84F90];
    sub_274720DEC(&qword_28159E580, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
    sub_27472ABB4(&qword_28159E530, &unk_28096DB60);
    v36 = v48;
    v37 = v45;
    sub_2749FD7B4();
    v38 = v41;
    MEMORY[0x277C5F120](v31, v35, v36, v33);
    _Block_release(v33);

    swift_unknownObjectRelease();
    (*(v44 + 8))(v36, v37);
    (*(v49 + 8))(v35, v43);
    (v46)(v31, v50);

    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_46();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_27475EDBC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_2749FA8F4();
  sub_27471CF08(0, &qword_28096EA30);
  sub_27475F564();
  sub_2749FAD44();
  v2(v4, 0);
}

uint64_t sub_27475EE8C()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__workflowTypes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967810);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__importQuestions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967818);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__inputTypes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967820);
  OUTLINED_FUNCTION_1_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__customizingShortcut;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__selectingParameter, v8);
  v10 = OBJC_IVAR____TtC10WorkflowUI24ShortcutDetailsViewModel__navigationPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967828);
  OUTLINED_FUNCTION_1_2();
  (*(v11 + 8))(v0 + v10);
  return v0;
}

uint64_t sub_27475F040()
{
  sub_27475EE8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ShortcutDetailsViewModel()
{
  result = qword_2809677B8;
  if (!qword_2809677B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27475F0EC()
{
  sub_27472BC94(319, &qword_2809677C8, &qword_2809677D0);
  if (v0 <= 0x3F)
  {
    sub_27472BC94(319, &qword_2809677D8, &qword_2809677E0);
    if (v1 <= 0x3F)
    {
      sub_27472BC94(319, &qword_2809677E8, &qword_2809677F0);
      if (v2 <= 0x3F)
      {
        sub_27475F2D0();
        if (v3 <= 0x3F)
        {
          sub_27475F320();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_27475F2D0()
{
  if (!qword_28159E750)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E750);
    }
  }
}

void sub_27475F320()
{
  if (!qword_2809677F8)
  {
    sub_2749FAD64();
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_2809677F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShortcutDetailsViewModel.InputType(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ShortcutDetailsViewModel.InputType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27475F414()
{
  result = qword_280967800;
  if (!qword_280967800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280967800);
  }

  return result;
}

uint64_t sub_27475F474@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShortcutDetailsViewModel();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

id sub_27475F4B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4)
  {
    v10 = sub_2749FCD64();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithAction:a1 parameter:a2 question:v10 defaultState:a5];

  swift_unknownObjectRelease();
  return v11;
}

unint64_t sub_27475F564()
{
  result = qword_28096EA40;
  if (!qword_28096EA40)
  {
    sub_27471CF08(255, &qword_28096EA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096EA40);
  }

  return result;
}

uint64_t sub_27475F5CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27475F680;

  return sub_27475E708(a1, v4, v5, v6);
}

uint64_t sub_27475F680()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27475F774()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2749FDCC4();
  }

  return v5 & 1;
}

uint64_t sub_27475F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2749FDCC4() & 1;
  }
}

uint64_t sub_27475F844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[0] = a1;
  v9[1] = a2;
  v10 = a3;
  v7[0] = a4;
  v7[1] = a5;
  v8 = a6;
  return static SmartShortcutPickerSection.ID.== infix(_:_:)(v9, v7) & 1;
}

uint64_t sub_27475F8F8()
{
  OUTLINED_FUNCTION_82_0();
  v2 = sub_274772D68();
  v7 = MEMORY[0x277C5EEC0](v1, &type metadata for ShortcutDetailsViewModel.InputType, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_274764D7C(&v6, *(v0 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return v1;
}

void sub_27475F9B8()
{
  OUTLINED_FUNCTION_82_0();
  v5 = sub_2747729D4();
  MEMORY[0x277C5EEC0](v1, &type metadata for WFIconPickerItem, v5);
  OUTLINED_FUNCTION_120();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    ++v2;
    v6 = *v4;
    v4 += 24;
    v7 = OUTLINED_FUNCTION_66();
    sub_2747729AC(v7, v8, v6);
    OUTLINED_FUNCTION_85();
    sub_274765318(v9, v10, v11, v6);
    sub_274772984(v12, v13, v14);
  }

  __break(1u);
}

void sub_27475FA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_58();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v26 = sub_2747276D0(v24);
  v27 = sub_27471CF08(0, &qword_28159E490);
  v28 = sub_274772DBC();
  a10 = MEMORY[0x277C5EEC0](v26, v27, v28);
  v29 = sub_27472D918(v25);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {

      OUTLINED_FUNCTION_56_1();
      return;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x277C5F6D0](i, v25);
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v31 = *(v25 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_2747655E8(&a9, v31, &qword_28159E490, 0x277D7A1C0, &unk_280967A60, &unk_274A0FC68);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_27475FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_82_0();
  v7 = v6();
  v11 = MEMORY[0x277C5EEC0](v4, a3, v7);
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      sub_274765FE0();
      ++v9;
      --v8;
    }

    while (v8);

    return v11;
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return v4;
}

uint64_t sub_27475FC74()
{
  OUTLINED_FUNCTION_82_0();
  v2 = sub_274772A28();
  v7 = MEMORY[0x277C5EEC0](v1, &type metadata for WFAddToHomeScreenSection, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_274765EF0(&v6, *(v0 + v4++));
      --v3;
    }

    while (v3);

    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_78();
  }

  return v1;
}

void sub_27475FD34()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_134();
  v1 = type metadata accessor for WFAddToHomeScreenItem();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(v0 + 16);
  v7 = sub_274720E30(&qword_280967B00, 255, type metadata accessor for WFAddToHomeScreenItem);
  MEMORY[0x277C5EEC0](v6, v1, v7);
  v8 = *(v0 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_71();
    v10 = v0 + v9;
    v11 = *(v3 + 72);
    do
    {
      sub_2747231DC();
      v12 = OUTLINED_FUNCTION_66();
      sub_2747660E4(v12, v13);
      sub_274722608();
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_27475FEBC(uint64_t a1)
{
  result = MEMORY[0x277C5EEC0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    OUTLINED_FUNCTION_85();
    sub_274766304(v6, v7, v8);
  }

  __break(1u);
  return result;
}

void sub_27475FF74()
{
  OUTLINED_FUNCTION_82_0();
  v5 = sub_274772E4C();
  MEMORY[0x277C5EEC0](v1, &type metadata for WFFolderConfigItem, v5);
  OUTLINED_FUNCTION_120();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v0 + 16))
    {
      break;
    }

    ++v2;
    v6 = *v4;
    v4 += 24;
    v7 = OUTLINED_FUNCTION_66();
    sub_274772E38(v7, v8, v6);
    OUTLINED_FUNCTION_85();
    sub_274766450(v9, v10, v11, v6);
    sub_274772E24(v12, v13, v14);
  }

  __break(1u);
}

void sub_27476002C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_27471F128();
    v5 = sub_2747B0FD4();
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_27471F128();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_274772EA0(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_274772EA0(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_274760264(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall RootViewSidebar.createNewFolder()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = [objc_opt_self() alertWithPreferredStyle_];
  v7 = [objc_opt_self() defaultName];
  if (!v7)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = sub_2749FCD64();
  }

  [v6 setTitle_];

  v22[4] = sub_274760590;
  v22[5] = 0;
  OUTLINED_FUNCTION_47_0();
  v22[1] = 1107296256;
  v22[2] = sub_2747606B8;
  v22[3] = &block_descriptor_0;
  v8 = _Block_copy(v22);
  [v6 addTextFieldWithConfigurationHandler_];
  _Block_release(v8);
  v9 = [objc_opt_self() cancelButtonWithHandler_];
  [v6 addButton_];

  sub_27471CF08(0, &qword_28096D710);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v10 = qword_28159E448;
  OUTLINED_FUNCTION_99();
  v11 = sub_2749FCD64();
  OUTLINED_FUNCTION_99();
  v12 = sub_2749FCD64();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v4;
  v14[4] = v6;
  v14[5] = v3;
  v15 = v6;
  swift_unknownObjectRetain();
  v16 = OUTLINED_FUNCTION_98_0();
  v19 = sub_274760C44(v16, v17, 0, 1, v18, v14);
  [v15 addButton_];

  v20 = OUTLINED_FUNCTION_119();
  [v21(v20) presentAlert_];

  swift_unknownObjectRelease();
}

void sub_274760590(void *a1)
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v2 = qword_28159E448;
  v3 = sub_2749FCD64();
  v4 = sub_2749FCD64();

  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  if (!v5)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = sub_2749FCD64();
  }

  [a1 setPlaceholder_];
}

uint64_t sub_2747606B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_274760720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2749FA4E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a1 textFieldResults];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2749FCF84();

    if (!v16[2])
    {
      goto LABEL_9;
    }

    v43 = v8;
    v18 = v16[4];
    v17 = v16[5];

    v19 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v19 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = (*(a4 + 32))(a3, a4);
      v21 = sub_2749FCD64();

      v22 = [objc_opt_self() defaultGlyphCharacter];
      v44[0] = 0;
      v23 = [v20 createFolderWithName:v21 icon:v22 error:v44];

      if (v23)
      {
        v24 = *(a4 + 40);
        v25 = v44[0];
        if (v24(a3, a4))
        {
          *v13 = v23;
          swift_storeEnumTagMultiPayload();
          swift_getAssociatedTypeWitness();
          v26 = *(swift_getAssociatedConformanceWitness() + 16);
          v27 = *(v26 + 16);
          v28 = v23;
          v29 = swift_checkMetadataState();
          v27(v13, v29, v26);

          swift_unknownObjectRelease();
          sub_274722608();
        }

        else
        {
        }
      }

      else
      {
        v30 = v44[0];
        v31 = sub_2749F8FE4();

        swift_willThrow();
        sub_2749FA3D4();
        v32 = v31;
        v33 = sub_2749FA4D4();
        v34 = sub_2749FD2C4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v44[0] = v42;
          *v35 = 136446210;
          swift_getErrorValue();
          v41 = v34;
          v36 = sub_2749FDD84();
          v38 = sub_2747AF460(v36, v37, v44);

          *(v35 + 4) = v38;
          _os_log_impl(&dword_274719000, v33, v41, "Unable to create folder: %{public}s", v35, 0xCu);
          v39 = v42;
          __swift_destroy_boxed_opaque_existential_0(v42);
          MEMORY[0x277C61040](v39, -1, -1);
          MEMORY[0x277C61040](v35, -1, -1);
        }

        (*(v43 + 8))(v10, v7);
        (*(a4 + 64))(a3, a4);
        swift_getObjectType();
        sub_2749FD484();
        swift_unknownObjectRelease();
      }
    }

    else
    {
LABEL_9:
    }
  }
}

id sub_274760C44(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2749FCD64();

  if (a5)
  {
    v14[4] = a5;
    v14[5] = a6;
    OUTLINED_FUNCTION_47_0();
    v14[1] = 1107296256;
    v14[2] = sub_274760264;
    v14[3] = &block_descriptor_83;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() buttonWithTitle:v10 style:a3 preferred:a4 & 1 handler:v11];
  _Block_release(v11);

  return v12;
}

uint64_t SidebarStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t sub_274760DD0()
{
  v1 = *v0;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](v1);
  return sub_2749FDE44();
}

uint64_t StaticSidebarSection.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_274760E60()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_81(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 56);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v4;
  return OUTLINED_FUNCTION_93_0();
}

uint64_t sub_274760EEC(char a1)
{
  result = OUTLINED_FUNCTION_42_1();
  *(v1 + 64) = a1;
  return result;
}

uint64_t StaticSidebarSection.__allocating_init(name:destinations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_104_0();
  v5 = OUTLINED_FUNCTION_66();
  StaticSidebarSection.init(name:destinations:)(v5, v6, a3);
  return v4;
}

uint64_t StaticSidebarSection.deinit()
{

  sub_2747545BC(v0 + 48);
  v1 = OBJC_IVAR____TtC10WorkflowUI20StaticSidebarSection_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t (*sub_2747610A8(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_274772FD8;
}

uint64_t sub_274761160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_2747611D4(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return OUTLINED_FUNCTION_93_0();
}

BOOL sub_274761260()
{
  sub_27472722C();
  v1 = *(v0 + 16);

  return v1 != 0;
}

id sub_2747612A8(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (*(v1 + v3))
    {
      v5 = &selRef_registerObserver_;
    }

    else
    {
      v5 = &selRef_unregisterObserver_;
    }

    return [*(v1 + 32) *v5];
  }

  return result;
}

uint64_t sub_274761328()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges;
  OUTLINED_FUNCTION_46_1();
  return *(v0 + v1);
}

id sub_274761360(char a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges;
  OUTLINED_FUNCTION_42_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_2747612A8(v4);
}

uint64_t sub_2747613AC(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges;
  OUTLINED_FUNCTION_77();
  *(v3 + 32) = *(v1 + v4);
  return OUTLINED_FUNCTION_93_0();
}

void sub_274761438()
{
  OUTLINED_FUNCTION_48();
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_13_4();
  v1 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_27471CF08(0, &qword_28159E4E0);
  v8 = sub_2749FD404();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  v16[2] = v9;
  v16[3] = &block_descriptor_3;
  v10 = _Block_copy(v16);

  sub_2749FCA94();
  OUTLINED_FUNCTION_51_0();
  sub_274720E30(v11, 255, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  OUTLINED_FUNCTION_80_0();
  v13 = OUTLINED_FUNCTION_86_0();
  MEMORY[0x277C5F170](v13);
  _Block_release(v10);

  v14 = OUTLINED_FUNCTION_119();
  v15(v14);
  (*(v3 + 8))(v7, v1);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_274761644(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v5 = sub_274720E30(&qword_280967BC0, 255, type metadata accessor for FoldersSidebarSection);
    (*(v3 + 8))(a1, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t FoldersSidebarSection.deinit()
{
  sub_2747545BC(v0 + 16);

  v1 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void (*sub_2747617F4(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI21FoldersSidebarSection_observeChanges;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_274761420;
}

uint64_t (*sub_274761878(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_274772FDC;
}

void sub_2747618F8()
{
  OUTLINED_FUNCTION_96_0();
  *(v2 + 24) = v3;
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

uint64_t sub_2747619C4(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1();
  *(v1 + 32) = a1;
}

uint64_t sub_274761A58(uint64_t a1)
{
  OUTLINED_FUNCTION_42_1();
  *(v1 + 40) = a1;
}

uint64_t sub_274761B08()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_81(v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v0 + 56);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v4;
  return OUTLINED_FUNCTION_93_0();
}

uint64_t sub_274761B68(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  result = swift_beginAccess();
  if (*(v2 + 64) != v3)
  {
    if (*(v2 + 64))
    {
      if (qword_28159F7A0 != -1)
      {
        swift_once();
      }

      type metadata accessor for SidebarPreferences();
      sub_274720E30(&unk_28159F790, v5, type metadata accessor for SidebarPreferences);
      sub_2749FA874();
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = sub_274772EAC;
      *(v7 + 24) = v6;
      sub_2749FA8A4();
      v8 = sub_2749FA974();
    }

    else
    {
      v8 = 0;
    }

    *(v2 + 80) = v8;
  }

  return result;
}

uint64_t sub_274761CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_2749FD0A4();

  v6 = sub_2749FD094();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_2747995BC();
}

uint64_t sub_274761DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2749FD0A4();
  v4[7] = sub_2749FD094();
  v6 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274761E8C, v6, v5);
}

uint64_t sub_274761E8C()
{

  OUTLINED_FUNCTION_77();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_27471E18C();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_274761F24(char a1)
{
  OUTLINED_FUNCTION_42_1();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
  return sub_274761B68(v3);
}

uint64_t sub_274761F60(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_77();
  *(v3 + 32) = *(v1 + 64);
  return OUTLINED_FUNCTION_93_0();
}

void sub_274761FE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t MyShortcutsSidebarSection.__allocating_init(name:)(char a1)
{
  v2 = OUTLINED_FUNCTION_104_0();
  MyShortcutsSidebarSection.init(name:)(a1);
  return v2;
}

uint64_t MyShortcutsSidebarSection.deinit()
{

  sub_2747545BC(v0 + 48);

  v1 = OBJC_IVAR____TtC10WorkflowUI25MyShortcutsSidebarSection_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void (*sub_274762114(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 64);
  return sub_274761FCC;
}

uint64_t (*sub_27476218C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_274772FD8;
}

void sub_27476220C()
{
  OUTLINED_FUNCTION_96_0();
  *(v2 + 56) = v3;
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

void MyShortcutsSidebarSection.healthFeatureAvailability(_:sleepOnboardingStatusDidChange:)()
{
  OUTLINED_FUNCTION_48();
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_13_4();
  v1 = sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_27471CF08(0, &qword_28159E4E0);
  v8 = sub_2749FD404();
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  v16[2] = v9;
  v16[3] = &block_descriptor_7;
  v10 = _Block_copy(v16);

  sub_2749FCA94();
  OUTLINED_FUNCTION_51_0();
  sub_274720E30(v11, 255, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60);
  sub_27473FCD0();
  OUTLINED_FUNCTION_80_0();
  v13 = OUTLINED_FUNCTION_86_0();
  MEMORY[0x277C5F170](v13);
  _Block_release(v10);

  v14 = OUTLINED_FUNCTION_119();
  v15(v14);
  (*(v3 + 8))(v7, v1);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_274762510()
{
  v0 = sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  sub_2749FCD64();
  OUTLINED_FUNCTION_78();

  v3 = [v1 localizedStringForKey:v2 value:v0 table:0];

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v4;
}

uint64_t sub_27476260C(char a1)
{
  result = OUTLINED_FUNCTION_42_1();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2747626C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

BOOL sub_274762734()
{
  v0 = *(sub_2749F9824() + 16);

  return v0 != 0;
}

uint64_t sub_274762798()
{
  OUTLINED_FUNCTION_35_0();
  v2 = OUTLINED_FUNCTION_104_0();
  v0(v1);
  return v2;
}

uint64_t AutoShortcutsSidebarSection.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10WorkflowUI27AutoShortcutsSidebarSection_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_27476285C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t static SidebarPreferences.shared.getter()
{
  if (qword_28159F7A0 != -1)
  {
    OUTLINED_FUNCTION_57();
  }
}

BOOL sub_2747629F4()
{
  type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_3();
  sub_2747231DC();
  OUTLINED_FUNCTION_125();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = 1;
  if ((EnumCaseMultiPayload - 7) >= 2)
  {
    v2 = EnumCaseMultiPayload == 1;
    sub_274722608();
  }

  return v2;
}

void sub_274762AAC()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v2 = type metadata accessor for RootNavigationDestination();
  v3 = OUTLINED_FUNCTION_27(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52_0();
  sub_2747231DC();
  sub_2749FD0A4();
  OUTLINED_FUNCTION_78();

  v8 = sub_2749FD094();
  v9 = (v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  v12 = v11;
  sub_274722708();
  *(v10 + v9) = v0;
  sub_2747231DC();

  v13 = sub_2749FD094();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_274722708();
  *(v14 + v9) = v1;
  sub_2749FC6F4();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274762C68@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2747231DC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 7) < 2)
  {
    sub_27471FE94();
    sub_2747A6E50();
    v7 = v6;

    v9 = v7 & 1;
LABEL_5:
    *a1 = v9;
    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *v4;
    sub_274722764();
    sub_274722D30();
    v12 = v11;

    v9 = (v12 & 1) == 0;
    goto LABEL_5;
  }

  *a1 = 1;
  return sub_274722608();
}

void sub_274762DB4(char *a1)
{
  v2 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *a1;
  sub_2747231DC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 7) >= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *v4;
      sub_2747633A8(v5, *v4);
    }

    else
    {
      sub_274722608();
    }
  }

  else
  {
    sub_274763430(v5);
  }
}

void sub_274762EF0(uint64_t a1)
{
  type metadata accessor for SidebarPreferences();
  OUTLINED_FUNCTION_50_2();
  sub_274720E30(v3, v4, v5);
  OUTLINED_FUNCTION_3();
  sub_2749FA874();
  sub_2749FA894();

  v6 = *(v1 + 16);
  sub_27476002C(a1);
  v8 = v7;

  v10 = v8;

  sub_27476EEF0(&v10);

  sub_2749FCF74();
  OUTLINED_FUNCTION_126();

  v9 = sub_2749FCD64();
  [v6 setValue:v8 forKey:v9];
}

void sub_274763048()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = type metadata accessor for RootNavigationDestination();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  type metadata accessor for SidebarPreferences();
  OUTLINED_FUNCTION_50_2();
  sub_274720E30(v6, v7, v8);
  OUTLINED_FUNCTION_3();
  sub_2749FA874();
  sub_2749FA894();

  v26 = *(v0 + 16);
  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v2 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_15_3();
    sub_2747231DC();
    OUTLINED_FUNCTION_99();
    sub_2747231DC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      v25 = 0xD000000000000010;
      v17 = 0x8000000274A29F70;
LABEL_13:
      v24 = v17;
      sub_274722608();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_2();
        sub_274763850();
        v14 = v21;
      }

      v18 = *(v14 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v14 + 24) >> 1)
      {
        sub_274763850();
        v19 = v18 + 1;
        v14 = v22;
      }

      *(v14 + 16) = v19;
      v20 = v14 + 16 * v18;
      *(v20 + 32) = v25;
      *(v20 + 40) = v24;
    }

    else
    {
      if (EnumCaseMultiPayload == 8)
      {
        v25 = 0x796C746E65636552;
        v17 = 0xEB000000006E7552;
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_15_3();
      sub_274722608();
      sub_274722608();
    }
  }

  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      v27 = v14;

      sub_27476EEF0(&v27);

      sub_2749FCF74();
      OUTLINED_FUNCTION_126();

      v23 = sub_2749FCD64();
      [v26 setValue:v3 forKey:v23];

      OUTLINED_FUNCTION_46();
      return;
    }

    v11 = *(v2 + 56 + 8 * v13);
    ++v15;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_2747633A8(char a1, void *a2)
{
  if (a1)
  {
    sub_274722764();
    v9 = v3;

    v4 = v9;
  }

  else
  {
    sub_274722764();
    v7 = v5;
    v6 = a2;
    sub_274722B60();

    v4 = v7;
  }

  sub_274762EF0(v4);
}

void sub_274763430(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967850);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for RootNavigationDestination();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  if (a1)
  {
    OUTLINED_FUNCTION_52_0();
    sub_2747231DC();
    sub_27471FE94();
    v12 = v9;
    sub_274764E74(v8);
    sub_274722608();
  }

  else
  {
    sub_27471FE94();
    v12 = v10;
    sub_27476FA68(v4);
    sub_2747359D0(v4, &qword_280967850);
  }

  sub_274763048();
}

uint64_t SidebarPreferences.deinit()
{

  return v0;
}

uint64_t SidebarPreferences.__deallocating_deinit()
{
  SidebarPreferences.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_274763608@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SidebarPreferences();
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_274763650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A88);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_28096C990;
  }

  else
  {
    v1 = &unk_280967A90;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1);
}

void sub_2747636B8()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    sub_274763650();
    v7 = swift_allocObject();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    OUTLINED_FUNCTION_114();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_274763780()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967998);
    v7 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35_1();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_274763850()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280968DF0);
    v7 = OUTLINED_FUNCTION_55();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_9_0(v8);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_109();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274763930()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678D8);
    v7 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_35_1();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    if (v7 != v0 || &v10[2 * v3] <= v9)
    {
      memmove(v9, v10, 2 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 2 * v3);
  }
}

void sub_274763A80()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B80);
    v9 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_7_2();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v9 != v0 || v5 + 8 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_42();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B88);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_274763B88()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_5_5();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_25_1();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A80);
    v6 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_8_4(v6);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v9)
    {
      v10 = v8 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      OUTLINED_FUNCTION_94_1();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274763C50()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B28);
    v7 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    OUTLINED_FUNCTION_114();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_274763D14()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A78);
    v7 = OUTLINED_FUNCTION_55();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_9_0(v8);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_109();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274763E7C()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AD0);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v3;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    if (v7 != v0 || &v10[40 * v3] <= v9)
    {
      memmove(v9, v10, 40 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274763F6C()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_12_5(v7);
    OUTLINED_FUNCTION_35_1();
    *(v3 + 16) = v2;
    *(v3 + 24) = v8;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274764044()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679E0);
    v9 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_8_4(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      OUTLINED_FUNCTION_94_1();
      v11 = OUTLINED_FUNCTION_42();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679E8);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_27476411C()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679C0);
    v7 = OUTLINED_FUNCTION_55();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_9_0(v8);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_109();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2747641E0()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679D0);
    v9 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_8_4(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      OUTLINED_FUNCTION_94_1();
      v11 = OUTLINED_FUNCTION_42();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679D8);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_2747642B8()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679A0);
    v9 = OUTLINED_FUNCTION_55();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_9_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_42();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809679A8);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_2747643F0()
{
  OUTLINED_FUNCTION_84_0();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_92_0();
  if (v5 ^ v6 | v13)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_102_1(v7, v8, v9, v10, v11);
    v15 = OUTLINED_FUNCTION_142();
    OUTLINED_FUNCTION_12_5(v15);
    *(v14 + 16) = v2;
    *(v14 + 24) = 2 * (v16 / v3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v17 = OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    if (v14 != v0 || &v18[24 * v2] <= v17)
    {
      memmove(v17, v18, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_124();
    swift_arrayInitWithCopy();
  }
}

void sub_2747644B4()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967AC0);
    v7 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_2();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v2] <= v9)
    {
      memmove(v9, v10, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2747645C4()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967960);
    v7 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_8_4(v7);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2747646D4()
{
  OUTLINED_FUNCTION_28_1();
  if (v6)
  {
    OUTLINED_FUNCTION_5_5();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_25_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967968);
    v9 = OUTLINED_FUNCTION_55();
    v10 = _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_9_0(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_73();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_42();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967970);
    OUTLINED_FUNCTION_34_0();
  }
}

void sub_2747647F0()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_23_1();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280970240);
    v7 = OUTLINED_FUNCTION_69();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_7_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  v9 = OUTLINED_FUNCTION_65_1();
  if (v1)
  {
    OUTLINED_FUNCTION_114();
    if (v14)
    {
      v15 = v13 > v11;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_2747648D8()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_106();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_92_0();
  if (v5 ^ v6 | v13)
  {
    v14 = v3;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_102_1(v7, v8, v9, v10, v11);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v3;
    v15[3] = 2 * ((v16 - 32) / 24);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v2)
  {
    if (v15 != v0 || &v0[3 * v3 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_98_0();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v1);
    OUTLINED_FUNCTION_98_0();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_50_0();
}

void sub_2747649D4()
{
  OUTLINED_FUNCTION_28_1();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_5_5(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_10_0();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967918);
      v7 = OUTLINED_FUNCTION_69();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_7_2();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        sub_274764CAC(v0 + 32, v2, (v7 + 4));
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6B0);
    OUTLINED_FUNCTION_37_0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_25_1();
  if (!v5)
  {
    OUTLINED_FUNCTION_4_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_274764AAC()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_5_5();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_25_1();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809678F0);
    v6 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_8_4(v6);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v9)
    {
      v10 = v8 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      OUTLINED_FUNCTION_94_1();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_274764B74()
{
  OUTLINED_FUNCTION_28_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_5();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_25_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_4_3();
    }
  }

  OUTLINED_FUNCTION_10_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A50);
    v7 = OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_8_4(v7);
  }

  OUTLINED_FUNCTION_37_0();
  if (v1)
  {
    OUTLINED_FUNCTION_72_0();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 88 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_274764C44(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_8(a3, result);
  }

  return result;
}

char *sub_274764C6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_8(a3, result);
  }

  return result;
}

char *sub_274764C8C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_8(a3, result);
  }

  return result;
}

unint64_t sub_274764CAC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6B0);

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E6B0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

BOOL sub_274764D7C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](a2);
  v6 = sub_2749FDE44();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      sub_274768F28(a2, v8, isUniquelyReferenced_nonNull_native);
      *v2 = v12;
      goto LABEL_7;
    }

    if (*(*(v5 + 48) + 8 * v8) == a2)
    {
      break;
    }

    v6 = v8 + 1;
  }

  a2 = *(*(v5 + 48) + 8 * v8);
LABEL_7:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

BOOL sub_274764E74(uint64_t a1)
{
  v15[1] = a1;
  v2 = type metadata accessor for RootNavigationDestination();
  v15[2] = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v1;
  v5 = *v1;
  sub_2749FDDF4();
  RootNavigationDestination.hash(into:)();
  v6 = sub_2749FDE44();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v9)
    {
      v12 = v15[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2747231DC();
      v16 = *v12;
      sub_274769060(v4, v8, isUniquelyReferenced_nonNull_native);
      *v12 = v16;
      sub_274722708();
      return v9 == 0;
    }

    sub_2747231DC();
    static RootNavigationDestination.== infix(_:_:)();
    v11 = v10;
    sub_274722608();
    if (v11)
    {
      break;
    }

    v6 = v8 + 1;
  }

  sub_274722608();
  sub_2747231DC();
  return v9 == 0;
}

BOOL sub_274765094(_WORD *a1, uint64_t a2)
{
  v6 = *v2;
  sub_2749FDDF4();
  sub_2749FDE24();
  sub_2749FDE44();
  OUTLINED_FUNCTION_41_2();
  while (1)
  {
    OUTLINED_FUNCTION_121_0();
    v9 = (v7 << v3) & v8;
    if (!v9)
    {
      break;
    }

    if (*(*(v6 + 48) + 2 * v3) == a2)
    {
      goto LABEL_6;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  sub_2747692B8(a2, v3, isUniquelyReferenced_nonNull_native);
  *v2 = v12;
LABEL_6:
  result = v9 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_274765318(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_2749FDDF4();
  sub_274794730(v36, a2, a3, a4);
  v9 = sub_2749FDE44();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v35 = a2;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v14 = a4 == 3 && (a3 | a2) == 0;
    v34 = v14;
    while (1)
    {
      v15 = *(v8 + 48) + 24 * v11;
      v17 = *v15;
      v16 = *(v15 + 8);
      v18 = *(v15 + 16);
      switch(v18)
      {
        case 1:
          if (a4 == 1)
          {
            v25 = v17 == v35 && v16 == a3;
            if (v25 || (sub_2749FDCC4() & 1) != 0)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_24;
        case 2:
          if (a4 != 2)
          {
            goto LABEL_24;
          }

          sub_27471CF08(0, &qword_28159E390);
          v24 = v17;
          v20 = sub_2749FD604();
          v21 = v17;
          v22 = v16;
          v23 = 2;
          break;
        case 3:
          if (v34)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        default:
          if (a4)
          {
            goto LABEL_24;
          }

          sub_27471CF08(0, &qword_28159E390);
          v19 = v17;
          v20 = sub_2749FD604();
          v21 = v17;
          v22 = v16;
          v23 = 0;
          break;
      }

      sub_274772984(v21, v22, v23);
      if (v20)
      {
        break;
      }

LABEL_24:
      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    sub_274772984(v35, a3, v18);
LABEL_27:
    v28 = *(v8 + 48) + 24 * v11;
    v29 = *v28;
    v30 = *(v28 + 8);
    *a1 = *v28;
    *(a1 + 8) = v30;
    v31 = *(v28 + 16);
    *(a1 + 16) = v31;
    sub_2747729AC(v29, v30, v31);
    return 0;
  }

  else
  {
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *v32;
    sub_2747729AC(v35, a3, a4);
    sub_274769568(v35, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v32 = v36[0];
    *a1 = v35;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }
}