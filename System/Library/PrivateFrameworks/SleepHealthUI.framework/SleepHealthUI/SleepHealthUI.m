uint64_t sub_269C1ADC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269C1ADF8()
{
  sub_269C1AF2C(319, &qword_280C0BBB8, type metadata accessor for SleepStageSegment, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_269C1AF2C(319, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_269C1AF2C(319, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269C1AF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C1AFB0()
{
  result = sub_269D97010();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_269C1B04C()
{
  sub_269C41440();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269C1B0B8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_269C1B134(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_269C1B200@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269C1B268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D9A630();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_269C1B2B0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1B2E8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1B320()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for TimeOfDay(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TimeOfDay(uint64_t result, int a2, int a3)
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

uint64_t sub_269C1B3E8(uint64_t a1, int a2)
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

uint64_t sub_269C1B408(uint64_t result, int a2, int a3)
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

uint64_t sub_269C1B468(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepStagesModel(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_269C1B514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepStagesModel(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleOccurrenceEditModel.ChangeSet(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduleOccurrenceEditModel.ChangeSet(uint64_t result, int a2, int a3)
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

uint64_t sub_269C1B64C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SleepStagesModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  sub_269C3CAC8(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  sub_269C3CAC8(0, &qword_280C0B110, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  sub_269C3CAC8(0, &qword_280C0B108, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_269C1B898(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SleepStagesModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  sub_269C3CAC8(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  sub_269C3CAC8(0, &qword_280C0B110, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  sub_269C3CAC8(0, &qword_280C0B108, MEMORY[0x277CE0A00], MEMORY[0x277CDF468]);
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_269C1BB18()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BB50()
{
  v1 = sub_269D98AE0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_269C1BC68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_269C1BD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C1BEC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1BEF8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BF34()
{

  return swift_deallocObject();
}

uint64_t sub_269C1BF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C1BFCC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_269C1C030()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C06C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C0A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C1C0E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98EC0();
  *a1 = result;
  return result;
}

uint64_t sub_269C1C138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98FA0();
  *a1 = result;
  return result;
}

uint64_t sub_269C1C1C0()
{
  swift_getOpaqueTypeMetadata2();
  sub_269D99540();
  sub_269D98D00();
  sub_269D992E0();
  sub_269D992E0();
  swift_getOpaqueTypeConformance2();
  sub_269C524EC(&qword_28034E0A0, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1C318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 112);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C1C36C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C3BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1C3F4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C42C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C464()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C4AC()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C4EC()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1C55C()
{
  sub_269C59570(255);
  sub_269C5A374();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1C5B4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C648()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C680()
{

  return swift_deallocObject();
}

uint64_t sub_269C1C6B8(uint64_t a1, uint64_t a2)
{
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1C754(uint64_t a1, uint64_t a2)
{
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1C7F4()
{
  v1 = *(type metadata accessor for AlarmSnoozeDurationView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_269C60654(0, &qword_28034E468, type metadata accessor for AlarmSnoozeDurationModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C1C8F8(uint64_t a1, uint64_t a2)
{
  sub_269C608BC(0, &qword_28034E4C0, sub_269C60930, sub_269C3C784);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_269C1C990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_269C1C9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_269C1CA34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_269C1CA78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_269C1CADC@<X0>(_BYTE *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.alarmEnabled.getter();
  *a1 = result & 1;
  return result;
}

id sub_269C1CB88@<X0>(_BYTE *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.allowsSnooze.getter();
  *a1 = result & 1;
  return result;
}

id sub_269C1CC34@<X0>(void *a1@<X8>)
{
  result = ScheduleOccurrenceEditModel.toneIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_269C1CC94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) weekdays];
  *a2 = result;
  return result;
}

uint64_t sub_269C1CCD8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_269C1CD90@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model;
  swift_beginAccess();
  result = type metadata accessor for SleepScheduleComponentsViewModel();
  *a2 = *(v3 + *(result + 32));
  return result;
}

uint64_t sub_269C1CDF4()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1CE34()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1CE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97920();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_269C6C388();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_269C6C550();
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_269C1CFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269D97920();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_269C6C388();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_269C6C550();
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_269C1D108()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1D280()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D2B8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D304()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_269C1D33C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
  if (result)
  {
    result = [result windDownTime];
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_269C1D3C8()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D420()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D458()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_269C1D5D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_lockScreenState;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return sub_269C7DAE8();
}

uint64_t sub_269C1D634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_269C1D68C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI22LockScreenContentModel_demoState;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_269C7ECB0();
}

uint64_t sub_269C1D6E4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D71C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D7D0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D808()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D840()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D878()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1D8B0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D8E8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D928()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D978()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D9B8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1D9F0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1DA4C()
{
  sub_269C95034();

  return swift_deallocObject();
}

uint64_t sub_269C1DAB8(uint64_t a1, uint64_t a2)
{
  sub_269C953C4(0, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C1DC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D972A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_269C1DD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D972A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_269C1DE04()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C1DE44()
{

  return swift_deallocObject();
}

uint64_t sub_269C1DE7C(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1DF18(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1E010()
{
  v1 = *(type metadata accessor for AlarmSnoozeDurationPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C1E110()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C1E150()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

id sub_269C1E1A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

id sub_269C1E1FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

id sub_269C1E258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

uint64_t sub_269C1E2B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_269C1E2FC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_269C1E340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_269C1E388(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

uint64_t sub_269C1E3CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_269C1E414(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

id sub_269C1E45C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *a1;
  }

  swift_beginAccess();
  return [*(v2 + 40) setSleepDurationGoal_];
}

id sub_269C1E4C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) windDownTime];
  *a2 = v5;
  return result;
}

id sub_269C1E51C(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return [*(v3 + 40) setWindDownTime_];
}

id sub_269C1E578@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) windDownTime];
  *a2 = v5 > 0.0;
  return result;
}

id sub_269C1E5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 48) scheduledSleepMode];
  *a2 = result;
  return result;
}

uint64_t sub_269C1E678()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E6B0()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E724()
{

  return swift_deallocObject();
}

uint64_t sub_269C1E75C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1E808()
{
  sub_269C95034();

  return swift_deallocObject();
}

uint64_t sub_269C1E854()
{
  sub_269C95034();

  return swift_deallocObject();
}

uint64_t sub_269C1E8B0()
{
  sub_269CB197C();
  sub_269CB1A4C();
  sub_269CB1E04();
  sub_269CB2C7C(&qword_28034F530, sub_269CB197C);
  sub_269CB2B9C();
  sub_269CB2020();
  sub_269CB29E8();
  sub_269CB2210();
  sub_269CB23D4();
  sub_269CB2570();
  sub_269CB26DC();
  sub_269CB281C();
  sub_269CB28E0();
  sub_269CB2C7C(&qword_28034F510, sub_269CB28E0);
  swift_getOpaqueTypeConformance2();
  sub_269CB2C7C(&qword_28034F528, sub_269CB29E8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_269C1EB70@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
  *a2 = (result & 0x4000) != 0;
  return result;
}

id sub_269C1EC3C@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions];
  *a2 = (result & 8) != 0;
  return result;
}

uint64_t sub_269C1ECF0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1ED48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1ED80()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EDB8()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EE0C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_269C1EE3C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_269C1EE74()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EEB4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1EEEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C1EF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1EF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1F00C(uint64_t a1, uint64_t a2)
{
  sub_269CC01F8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C1F088@<X0>(uint64_t a1@<X8>)
{
  result = sub_269D99010();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_269C1F0EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98F80();
  *a1 = result;
  return result;
}

uint64_t sub_269C1F154()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F2C4()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F304()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F35C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1F39C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C1F3E0()
{
  sub_269CCB36C(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  sub_269CCB36C(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269C9D934();
  sub_269CCB3C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1F4B4()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C1F4EC()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F598()
{
  sub_269CD6F4C();
  sub_269CD70E4(255, &qword_28034FAB8, &type metadata for QuickScheduleManagementViewRepresentation, MEMORY[0x277CE06C8], MEMORY[0x277CDFAB8]);
  sub_269CD6E7C();
  sub_269CD6658();
  sub_269CD73A4(&qword_28034FD50, sub_269CD6658);
  sub_269C3EEE8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_269CCB3C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C1F6FC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C1F74C()
{

  return swift_deallocObject();
}

uint64_t sub_269C1F78C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

void sub_269C1F7C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656B617761;
  v5 = 0x65656C5365726F63;
  v6 = 0xE900000000000070;
  v7 = 0x65656C5370656564;
  v8 = 0xE900000000000070;
  if (v2 != 3)
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (*v1)
  {
    v4 = 0x7065656C536D6572;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_269C1F870(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 251)
  {
    v4 = *a1;
    if (v4 >= 5)
    {
      return v4 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_269D97010();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_269C1F914(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 251)
  {
    *result = a2 + 4;
  }

  else
  {
    v7 = sub_269D97010();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269C1F9B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_269C1FB38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_269C1FCBC(uint64_t a1, uint64_t a2)
{
  sub_269C41440();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_269C1FD28(uint64_t a1, uint64_t a2)
{
  sub_269C41440();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_269C1FDB0()
{
  sub_269CE6CA4();
  sub_269D98D00();
  sub_269D98A60();
  sub_269D98D00();
  sub_269CE8178(&qword_28034FF80, sub_269CE6CA4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1FEB4()
{
  sub_269D98D00();
  sub_269D992E0();
  sub_269C419C0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C1FFC0()
{
  sub_269C5A270();
  sub_269D98D00();
  sub_269D98DB0();
  sub_269CE8178(qword_28034FF88, MEMORY[0x277CDFC08]);
  sub_269D99320();
  swift_getWitnessTable();
  sub_269D98E00();
  sub_269D98D00();
  sub_269CE8178(&qword_28034E328, sub_269C5A270);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C20184()
{
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  sub_269D99F00();

  return swift_getWitnessTable();
}

uint64_t sub_269C202A4()
{
  sub_269D989A0();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C20318()
{
  sub_269D98D00();
  sub_269CE73C0();
  return swift_getWitnessTable();
}

uint64_t sub_269C2037C()
{
  sub_269D98D00();
  sub_269D992E0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C20428()
{
  sub_269C40224(255);
  sub_269D98D00();
  sub_269CE8178(&qword_280C0B5C8, sub_269C40224);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_269D992E0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_269C20564()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C205A4()
{

  return swift_deallocObject();
}

uint64_t sub_269C2061C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_269C20740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_269D977A0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for WeekResults(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C20864()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C2089C()
{

  return swift_deallocObject();
}

uint64_t sub_269C208E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C2091C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C2097C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C209B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C20A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  sub_269CF3830(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269C20AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  sub_269CF3830(0, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_269C20BA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C20C04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269C20C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  return sub_269C6C0F0(v3 + v4, a2);
}

uint64_t sub_269C20CD4()
{
  type metadata accessor for MultiPickerLink();

  return swift_getWitnessTable();
}

uint64_t sub_269C20D1C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MultiPickerLink() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  v4 = sub_269D9A040();
  (*(*(v1 - 8) + 8))(v0 + v3 + *(v4 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_269C20E48()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for ForEachWithIndexAsID() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_269C20F3C()
{

  return swift_deallocObject();
}

uint64_t sub_269C20F74()
{
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_269D9A840();
  swift_getWitnessTable();
  sub_269D9A0A0();
  return swift_getWitnessTable();
}

uint64_t sub_269C21060()
{

  return swift_deallocObject();
}

uint64_t sub_269C21098()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C21174()
{
  sub_269D058E8();
  sub_269D04FA4();
  sub_269D05084();
  type metadata accessor for GetSubviews();
  sub_269D05D48(qword_2803506C8, sub_269D058E8);
  swift_getWitnessTable();
  sub_269D98DC0();
  return swift_getWitnessTable();
}

uint64_t sub_269C2125C()
{
  v1 = sub_269D993C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_269C2134C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_269C213B8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  result = swift_beginAccess();
  *a2 = *(*(v3 + v4) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
  return result;
}

uint64_t sub_269C21458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C214B8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_269C21534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 20);
  v5 = sub_269D977A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id sub_269C215B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 24));
  *a2 = v3;

  return v3;
}

id sub_269C2162C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 28));
  *a2 = v3;

  return v3;
}

void sub_269C21674(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  SleepScheduleComponentsViewModel.validScheduleRange.setter(v1);
}

uint64_t sub_269C216A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for SleepScheduleComponentsViewModel();
  *a2 = *(a1 + *(result + 32));
  return result;
}

uint64_t sub_269C216DC(char *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 32)) = v2;
  return sub_269D0A9B8();
}

uint64_t sub_269C21714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 36);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_269C21798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 40);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_269C2181C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 44);
  v5 = sub_269D971F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

id sub_269C218A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 48));
  *a2 = v3;

  return v3;
}

uint64_t sub_269C218EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269D977A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_269D971F0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_269C21A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_269D977A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_269D971F0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_269C21B48()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C21B80()
{

  return swift_deallocObject();
}

uint64_t sub_269C21BB8()
{

  return swift_deallocObject();
}

uint64_t sub_269C21BF0()
{

  return swift_deallocObject();
}

uint64_t sub_269C21C28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C21C70()
{

  return swift_deallocObject();
}

uint64_t sub_269C21CA8()
{
  sub_269D10820(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_269C21E08()
{

  return swift_deallocObject();
}

uint64_t sub_269C21EA8()
{

  return swift_deallocObject();
}

uint64_t sub_269C21FC0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void *sub_269C2204C(void *result, void *a2)
{
  v2 = *a2 + OBJC_IVAR____TtC13SleepHealthUI13SleepDayModel____lazy_storage___sleepDuration;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t sub_269C2206C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D975C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_269D97010();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_269C2215C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_269D975C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_269D97010();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_269C2228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 48);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_269C22364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D1C7C4(0, &qword_280350C88, MEMORY[0x277D62600]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 48) = -a2;
  }
}

uint64_t sub_269C224B4()
{
  sub_269D98D00();
  sub_269D253E4();
  return swift_getWitnessTable();
}

uint64_t sub_269C22518()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C22554()
{
  sub_269D25554();
  sub_269D255B0(255, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
  sub_269D25674(255, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
  sub_269D256C8();
  sub_269C3EEE8();
  sub_269D25720();
  sub_269C9DA98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C2272C()
{

  return swift_deallocObject();
}

uint64_t sub_269C22764()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C227D0()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C22808()
{

  return swift_deallocObject();
}

uint64_t sub_269C2285C()
{

  return swift_deallocObject();
}

uint64_t sub_269C2289C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C228EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C22924()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269C22984()
{

  return swift_deallocObject();
}

uint64_t sub_269C229C4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269D97010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_269D977A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_269C22AE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_269D97010();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_269D977A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_269C22C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_269D977A0();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269C22C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_269D977A0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_269C22D00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C22D38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_nextOccurrencePublisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_269C22D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

void sub_269C22F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  else
  {
    sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_269C230A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269C230E4()
{
  sub_269D45198();
  sub_269D465D4(255, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
  sub_269D25674(255, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
  sub_269D46638(&qword_280351168, sub_269D45198);
  sub_269C3EEE8();
  sub_269D25720();
  sub_269C9DA98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C23218(uint64_t a1, uint64_t a2)
{
  sub_269D25614();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C2327C(uint64_t a1)
{
  sub_269D25614();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C232DC()
{
  v1 = sub_269D973D0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

id sub_269C23384@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

uint64_t sub_269C233B4()
{

  return swift_deallocObject();
}

uint64_t sub_269C233EC()
{
  sub_269D12C5C();
  sub_269D98D00();
  sub_269D12EFC();
  sub_269D98D00();
  sub_269D48FB0(&qword_2803511F8, sub_269D12C5C);
  swift_getWitnessTable();
  sub_269D48FB0(&qword_280351200, sub_269D12EFC);
  return swift_getWitnessTable();
}

uint64_t sub_269C234FC()
{
  sub_269D98C60();
  sub_269D98D00();
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  sub_269D99FE0();
  return swift_getWitnessTable();
}

uint64_t sub_269C235D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_269C23608()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23648()
{

  return swift_deallocObject();
}

uint64_t sub_269C23688()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C236D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97AC0();
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

    return (v10 + 1);
  }
}

uint64_t sub_269C23790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D97AC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C2384C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269D9A330();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_269D977A0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_269D97B80();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for SleepScoreModel.Bedtime(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_269C239D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269D9A330();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269D977A0();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_269D97B80();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for SleepScoreModel.Bedtime(0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_269C23B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_269D97BA0();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_269C23C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_269D97BA0();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_269C23DBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23E14()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C23E4C()
{

  return swift_deallocObject();
}

uint64_t sub_269C23E84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C23ED4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_269D5C6A4();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_269C23F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_269D5C6A4();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_269C24034@<X0>(void *a1@<X8>)
{
  result = sub_269D98F40();
  *a1 = v3;
  return result;
}

uint64_t sub_269C24088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269D98EE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_269C240E0(uint64_t a1)
{
  sub_269D5D9FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C24180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269D63510(0, &qword_28034F7E8, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_269C24258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269D63510(0, &qword_28034F7E8, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }
}

uint64_t sub_269C2432C()
{
  sub_269D99FC0();
  sub_269D99F00();
  sub_269D992E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C243F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_269C24430()
{

  return swift_deallocObject();
}

uint64_t sub_269C24470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D977A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_269C24530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D977A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C245F4()
{

  return swift_deallocObject();
}

uint64_t sub_269C24634()
{

  return swift_deallocObject();
}

uint64_t sub_269C24678()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C246C8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269C24718()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24750()
{

  return swift_deallocObject();
}

uint64_t sub_269C24790()
{

  return swift_deallocObject();
}

uint64_t sub_269C247D8()
{

  return swift_deallocObject();
}

uint64_t sub_269C24818()
{

  return swift_deallocObject();
}

void sub_269C24870(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.route.setter(v1);
}

uint64_t sub_269C248A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269C2D6BC(2u);
  *a1 = result;
  return result;
}

uint64_t sub_269C248F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269C2D6BC(3u);
  *a1 = result;
  return result;
}

void sub_269C2496C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.provenanceSource.setter(v1);
}

void sub_269C249B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NSUserActivity.provenancePresentation.setter(v1);
}

uint64_t sub_269C24A18@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.route.getter();
  *a1 = result;
  return result;
}

uint64_t sub_269C24A48@<X0>(char *a1@<X8>)
{
  result = sub_269D78A88();
  if (result == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = result & 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_269C24A84(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  return sub_269D78D5C(v2, 2);
}

uint64_t sub_269C24ABC@<X0>(char *a1@<X8>)
{
  result = sub_269D79F58();
  if (result == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = result & 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_269C24AF8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1 & 1;
  }

  return sub_269D78D5C(v2, 3);
}

uint64_t sub_269C24B30@<X0>(uint64_t *a1@<X8>)
{
  result = URLComponents.provenanceSource.getter();
  *a1 = result;
  return result;
}

void *sub_269C24B88@<X0>(void *a1@<X8>)
{
  result = URLComponents.provenancePresentation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_269C24BE0@<X0>(_BYTE *a1@<X8>)
{
  result = URLComponents.articleIdentifier.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_269C24C48()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24C84()
{

  return swift_deallocObject();
}

uint64_t sub_269C24CBC()
{

  return swift_deallocObject();
}

uint64_t sub_269C24CFC@<X0>(_BYTE *a1@<X8>)
{
  sub_269D803D0();
  result = sub_269D99050();
  *a1 = v3;
  return result;
}

uint64_t sub_269C24D9C()
{
  MEMORY[0x26D652550](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_269C24DD4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_269C24E8C()
{

  return swift_deallocObject();
}

uint64_t sub_269C24EC4()
{

  return swift_deallocObject();
}

uint64_t sub_269C24F00()
{
  v1 = sub_269D98250();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_269C250A4(uint64_t a1)
{
  sub_269D8A598();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C25108()
{
  sub_269D8A598();
  sub_269D8A9A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_269C251A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  [*a1 frame];
  result = sub_269D9AD20();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C251E4()
{
  type metadata accessor for GetSubviews.SubviewGetter();
  swift_getWitnessTable();
  sub_269D98BB0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_269C25330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D97580();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_269C253EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269D97580();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_269C25520(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269C255A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269C255B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_269C25614(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269C256C8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269C25734(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_269C257D4;
}

void sub_269C257D4(uint64_t a1, char a2)
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

uint64_t ScheduleOccurrenceViewController.__allocating_init(scheduleOccurrence:isAdding:weekdaysWithExistingOccurrences:sleepScheduleProvider:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, int a2, uint64_t a3, void *a4, int a5, char *a6)
{
  v45 = a6;
  LODWORD(v40) = a5;
  v39 = a3;
  v44 = a2;
  v8 = sub_269D977A0();
  v42 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v12);
  v14 = *(v13 + 40);
  v37 = a1;
  v43 = v14(v12, v13);
  v15 = a4[3];
  v16 = a4[4];
  v38 = a4;
  __swift_project_boxed_opaque_existential_1Tm(a4, v15);
  v17 = (*(v16 + 24))(v15, v16);
  v41 = v9;
  v18 = *(v9 + 16);
  v18(v11, v45, v8);
  type metadata accessor for ScheduleOccurrenceEditModel();
  v19 = swift_allocObject();
  sub_269C2D3B8();
  swift_allocObject();
  *(v19 + 16) = sub_269D98790();
  sub_269C2D430();
  swift_allocObject();
  *(v19 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v19 + 32) = sub_269D98790();
  v46[0] = 0;
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v19 + 40) = sub_269D987F0();
  *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  v20 = v37;
  [v37 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050);
  swift_dynamicCast();
  *(v19 + 48) = v46[5];
  *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v20;
  *(v19 + 56) = v44;
  *(v19 + 57) = 0;
  v21 = v20;
  v22 = [v21 weekdays];
  v23 = v42;
  v24 = v43;
  *(v19 + 64) = v39 & ~v22;
  *(v19 + 72) = v24;
  *(v19 + 80) = v17;
  *(v19 + 88) = v40;
  v40 = v11;
  v18((v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v11, v23);

  sub_269D987C0();
  v25 = v46[0];
  if (v46[0])
  {
    v26 = *(v19 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v27 = sub_269D976E0();
    v28 = [v25 allowableRangeForModifiedOccurrence:v26 gregorianCalendar:v27];
  }

  else
  {
    v28 = 0;
  }

  v46[0] = v28;
  sub_269D987D0();

  v29 = *(v41 + 8);
  v30 = v42;
  v29(v40, v42);
  v31 = v38;
  sub_269C2DB5C(v38, v46);
  v32 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
  sub_269C2F0A4(v19, (v44 & 1) == 0, v46);
  v34 = v33;

  v29(v45, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v34;
}

uint64_t ScheduleOccurrenceViewController.__allocating_init(scheduleOccurrence:isAdding:weekdaysWithExistingOccurrences:sleepSchedulePublisher:sleepDurationGoalPublisher:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, int a2, char *a3, uint64_t a4, uint64_t a5, int a6, unint64_t a7)
{
  LODWORD(v36) = a6;
  v33 = a3;
  v12 = sub_269D977A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v13;
  v16 = *(v13 + 16);
  v37 = a7;
  v16(v15, a7, v12);
  type metadata accessor for ScheduleOccurrenceEditModel();
  v17 = swift_allocObject();
  sub_269C2D3B8();
  swift_allocObject();
  v18 = a1;

  *(v17 + 16) = sub_269D98790();
  sub_269C2D430();
  swift_allocObject();
  *(v17 + 24) = sub_269D98790();
  sub_269C2D498();
  swift_allocObject();
  *(v17 + 32) = sub_269D98790();
  *&v38[0] = 0;
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510);
  swift_allocObject();
  *(v17 + 40) = sub_269D987F0();
  *(v17 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
  [v18 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E050);
  swift_dynamicCast();
  *(v17 + 48) = v40;
  *(v17 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v18;
  v34 = a2;
  *(v17 + 56) = a2;
  *(v17 + 57) = 0;
  v19 = v18;
  v20 = [v19 weekdays];
  *(v17 + 64) = v33 & ~v20;
  *(v17 + 72) = a5;
  *(v17 + 80) = a4;
  *(v17 + 88) = v36;
  v33 = v15;
  v36 = v12;
  v16((v17 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v15, v12);

  sub_269D987C0();
  v21 = *&v38[0];
  if (*&v38[0])
  {
    v22 = *(v17 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    v23 = sub_269D976E0();
    v24 = [v21 allowableRangeForModifiedOccurrence:v22 gregorianCalendar:v23];
  }

  else
  {
    v24 = 0;
  }

  *&v38[0] = v24;
  sub_269D987D0();

  v25 = v36;
  v26 = *(v35 + 8);
  v26(v33, v36);
  v27 = type metadata accessor for ScheduleOccurrenceViewController();
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v28 = objc_allocWithZone(v27);
  sub_269C2F0A4(v17, (v34 & 1) == 0, v38);
  v30 = v29;

  v26(v37, v25);
  return v30;
}

id ScheduleOccurrenceViewController.__allocating_init(overrideOccurrence:allowsDeletion:isAdding:sleepScheduleProvider:pairedWatchSupportsSleep:gregorianCalendar:)(void *a1, int a2, int a3, uint64_t a4, int a5, char *a6)
{
  v13 = *(a4 + 24);
  v14 = *(a4 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_269C2F660(a1, a2, a3, v17, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v19;
}

uint64_t sub_269C261E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id sub_269C26240()
{
  sub_269C2FAD8(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v59 - v2;
  v63 = sub_269D9ACD0();
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = *&v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  v11 = v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_allowsDeletion];

  v12 = [v0 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  LOBYTE(v12) = sub_269D9ACF0();
  objc_allocWithZone(_s10DataSourceCMa());
  v14 = v0;
  v15 = sub_269C488B0(v9, v10, v11, v12 & 1, v14);

  v16 = *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource] = v15;

  v17 = type metadata accessor for ScheduleOccurrenceViewController();
  v79.receiver = v14;
  v79.super_class = v17;
  objc_msgSendSuper2(&v79, sel_viewDidLoad);
  result = [v14 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = sub_269D9A5F0();
  [v18 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v20];

  result = [v14 tableView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v21 = result;
  v65 = v6;
  v59 = v5;
  [result setDelegate_];

  if (sub_269C27264())
  {
    v22 = [v14 navigationItem];
    v23 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v14 action:sel_cancelButtonPressed];
    [v22 setLeftBarButtonItem_];

    v24 = [v14 navigationItem];
    v25 = sub_269C27390(v14);
    [v24 setRightBarButtonItem_];

    v26 = [v14 navigationItem];
    v27 = [v26 rightBarButtonItem];

    if (v27)
    {
      [v27 setEnabled_];
    }
  }

  v76[0] = v10[2];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D3B8();
  sub_269C2FCB0(&qword_28034EF70, sub_269C2D3B8);

  v28 = sub_269D98900();

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmConfigurationObserver] = v28;

  v76[0] = v10[4];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C2FCB0(&qword_28034D858, sub_269C2D498);

  v29 = sub_269D98900();

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_snoozeDurationPickerObserver] = v29;

  v76[0] = v10[3];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D430();
  sub_269C2FCB0(&qword_28034EF80, sub_269C2D430);

  v30 = sub_269D98900();

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelEditObserver] = v30;

  v31 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider;
  swift_beginAccess();
  sub_269C2FD08(&v14[v31], v76);
  v32 = v77;
  if (v77)
  {
    v33 = v78;
    v34 = __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    v35 = *(v32 - 8);
    MEMORY[0x28223BE20](v34);
    v37 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v37);
    sub_269C32388(v76, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v38 = (*(v33 + 24))(v32, v33);
    (*(v35 + 8))(v37, v32);
    v75 = v38;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C2D4F8(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    sub_269C300C0();
    v32 = sub_269D98900();
  }

  else
  {
    sub_269C32388(v76, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
  }

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver] = v32;

  v76[0] = v10[9];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FDFC();
  sub_269C2FCB0(&qword_28034FF20, sub_269C2FDFC);

  v39 = sub_269D98900();

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepDurationGoalObserver] = v39;

  v76[0] = v10[5];
  sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510);
  sub_269C2FE88();
  v76[0] = sub_269D988B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FF08();
  sub_269C2FCB0(&qword_28034EFB0, sub_269C2FF08);
  v40 = sub_269D98900();

  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_validScheduleRangeObserver] = v40;

  v74 = objc_opt_self();
  v41 = [v74 defaultCenter];
  v42 = v60;
  sub_269D9ACE0();

  v64 = sub_269C1B0B8(0, &qword_280C0AEB0);
  v43 = sub_269D9AC40();
  v76[0] = v43;
  v72 = sub_269D9AC30();
  v44 = *(v72 - 8);
  v71 = *(v44 + 56);
  v73 = v44 + 56;
  v45 = v62;
  v71(v62, 1, 1, v72);
  v70 = sub_269C2FCB0(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
  v69 = sub_269C2FC08();
  v46 = v61;
  v47 = v63;
  sub_269D988E0();
  v68 = MEMORY[0x277D85248];
  sub_269C30EF8(v45, &qword_280C0AED0, MEMORY[0x277D85248]);

  v67 = *(v67 + 8);
  (v67)(v42, v47);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_269C2FCB0(&qword_280C0B178, sub_269C2FB3C);
  v48 = v59;
  v49 = sub_269D98900();

  v65 = *(v65 + 8);
  (v65)(v46, v48);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_significantTimeChangeObserver] = v49;

  v50 = [v74 defaultCenter];
  sub_269D9ACE0();

  v51 = sub_269D9AC40();
  v76[0] = v51;
  v71(v45, 1, 1, v72);
  sub_269D988E0();
  sub_269C30EF8(v45, &qword_280C0AED0, v68);

  (v67)(v42, v47);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = sub_269D98900();

  (v65)(v46, v48);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_localeChangeObserver] = v52;

  v53 = [v74 defaultCenter];
  sub_269D9ACE0();

  v54 = sub_269D9AC40();
  v76[0] = v54;
  v71(v45, 1, 1, v72);
  sub_269D988E0();
  sub_269C30EF8(v45, &qword_280C0AED0, v68);

  (v67)(v42, v47);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = sub_269D98900();

  (v65)(v46, v48);
  *&v14[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_willResignActiveObserver] = v55;

  sub_269C2FAD8(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_269D9EBE0;
  v57 = sub_269D983D0();
  v58 = MEMORY[0x277D74DB8];
  *(v56 + 32) = v57;
  *(v56 + 40) = v58;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AC10();
  swift_unknownObjectRelease();
}

uint64_t sub_269C27264()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_269C1B0B8(0, &qword_28034DC38);
  v4 = sub_269D9A7E0();

  if (v4 >> 62)
  {
    result = sub_269D9AF50();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D651260](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = v0;
    v9 = sub_269D9ADD0();

    return v9 & 1;
  }

  __break(1u);
  return result;
}

id sub_269C27390(char *a1)
{
  if (*(*&a1[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] + 56) != 1)
  {
    return [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:a1 action:sel_saveButtonPressed_];
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v2 = type metadata accessor for ScheduleOccurrenceViewController();
  v13[3] = v2;
  v13[0] = a1;
  v3 = a1;
  v4 = sub_269D9A5F0();

  if (v2)
  {
    v5 = __swift_project_boxed_opaque_existential_1Tm(v13, v2);
    v6 = *(v2 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_269D9B260();
    (*(v6 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v9 = 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v12 = [v11 initWithTitle:v4 style:2 target:v9 action:{sel_saveButtonPressed_, v13[0]}];

  swift_unknownObjectRelease();
  return v12;
}

void sub_269C275D8(void **a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C2A2B8();
    v4 = *&v3[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 tableView];
      sub_269C483D0(v1, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C27700(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C2A2B8();
    v4 = *&v3[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v4)
    {
      v5 = v4[qword_28034DF58];
      v4[qword_28034DF58] = v1;
      if (v1 == v5)
      {
      }

      else
      {
        v6 = v4;
        sub_269C48F58();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C27824()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged) = 1;
    if (*(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
    {

      sub_269D98750();
    }

    [v1 setModalInPresentation_];
    v2 = [v1 navigationItem];
    v3 = [v2 rightBarButtonItem];

    if (v3)
    {
      [v3 setEnabled_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_269C279A8(void **a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C27A84(v1);
  }

  else
  {
  }
}

void sub_269C27A84(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_269D977A0();
  v80 = *(v5 - 8);
  v81 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97580();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  v85 = __swift_project_value_buffer(v11, qword_280C0B728);
  v12 = sub_269D98230();
  v13 = sub_269D9AB80();
  v14 = os_log_type_enabled(v12, v13);
  v83 = v8;
  v84 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v87[0] = v16;
    *v15 = 136446210;
    v17 = sub_269D9B4D0();
    v19 = sub_269C2EACC(v17, v18, v87);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] Sleep schedule did change while editing", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D652460](v16, -1, -1);
    MEMORY[0x26D652460](v15, -1, -1);
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged])
  {
    v85 = sub_269D98230();
    v20 = sub_269D9AB80();
    if (os_log_type_enabled(v85, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v87[0] = v22;
      *v21 = 136446210;
      v23 = sub_269D9B4D0();
      v25 = sub_269C2EACC(v23, v24, v87);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_269C18000, v85, v20, "[%{public}s] Ignoring occurrence reset since the user has already edited the model.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D652460](v22, -1, -1);
      MEMORY[0x26D652460](v21, -1, -1);
    }

    else
    {
      v27 = v85;
    }

    return;
  }

  if (a1)
  {
    v26 = a1;
  }

  else
  {
    v28 = sub_269D98230();
    v29 = sub_269D9AB80();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v87[0] = v31;
      *v30 = 136446210;
      v32 = sub_269D9B4D0();
      v34 = sub_269C2EACC(v32, v33, v87);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_269C18000, v28, v29, "[%{public}s] Sleep schedule is nil - creating empty schedule.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x26D652460](v31, -1, -1);
      MEMORY[0x26D652460](v30, -1, -1);
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  v79 = ObjectType;
  v35 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider;
  swift_beginAccess();
  sub_269C2FD08(&v2[v35], v87);
  v36 = v88;
  if (v88)
  {
    v37 = v89;
    v38 = __swift_project_boxed_opaque_existential_1Tm(v87, v88);
    v39 = *(v36 - 8);
    MEMORY[0x28223BE20](v38);
    v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v41);
    v42 = a1;
    sub_269C32388(v87, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v43 = SleepScheduleProviding.sleepScheduleModel.getter(v36, v37);
    (*(v39 + 8))(v41, v36);
  }

  else
  {
    v44 = a1;
    sub_269C32388(v87, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    v43 = [objc_allocWithZone(MEMORY[0x277D62500]) init];
  }

  v45 = v84;
  sub_269D97570();
  v46 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  if (*(v46 + 57) == 1)
  {
    v47 = sub_269D974B0();
    v49 = v80;
    v48 = v81;
    (*(v80 + 16))(v7, v46 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v81);
    v50 = sub_269D976E0();
    (*(v49 + 8))(v7, v48);
    v51 = [v43 overrideOccurrenceGenerationResultForCurrentDate:v47 gregorianCalendar:v50 schedule:v26];

    v52 = [v51 overrideOccurrence];
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v52, 0);

    v53 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource];
    if (v53)
    {
      v54 = v53;
      v55 = [v51 wasGeneratedFromTemplate];
      v57 = v82;
      v56 = v83;
      if (v55)
      {
        v58 = v54[qword_28034DF60];
        v54[qword_28034DF60] = 0;
        if ((v58 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v67 = [v51 upcomingOccurrenceWasOverride];
        v68 = v54[qword_28034DF60];
        v54[qword_28034DF60] = v67;
        if (v67 == v68)
        {
LABEL_35:

          (*(v57 + 8))(v45, v56);
          return;
        }
      }

      sub_269C48F58();
      goto LABEL_35;
    }

LABEL_44:
    __break(1u);
    return;
  }

  if (*(v46 + 56) == 1)
  {
    v59 = [v26 mutableOccurrenceTemplate];
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v59, [v26 weekdaysWithOccurrences]);

    (*(v82 + 8))(v45, v83);
    return;
  }

  swift_beginAccess();
  v60 = [v26 occurrencesOnDays_];
  sub_269C1B0B8(0, &qword_28034E050);
  v61 = sub_269D9A7E0();

  if (v61 >> 62)
  {
    if (sub_269D9AF50())
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_28:
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = v45;
    v63 = MEMORY[0x26D651260](0, v61);
  }

  else
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v62 = v45;
    v63 = *(v61 + 32);
  }

  v64 = v63;

  v65 = [v64 weekdays];
  if (v65 == [*(v46 + 48) weekdays])
  {
    [v64 mutableCopy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034DC30);
    swift_dynamicCast();
    v66 = v86;
    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v86, [v26 weekdaysWithOccurrences]);

    (*(v82 + 8))(v62, v83);
    return;
  }

  v45 = v62;
LABEL_39:
  v69 = sub_269D98230();
  v70 = sub_269D9AB60();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v87[0] = v72;
    *v71 = 136446210;
    v73 = sub_269D9B4D0();
    v75 = v43;
    v76 = sub_269C2EACC(v73, v74, v87);

    *(v71 + 4) = v76;
    v43 = v75;
    _os_log_impl(&dword_269C18000, v69, v70, "[%{public}s] Occurrence being edited has changed weekdays. Dismissing.", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x26D652460](v72, -1, -1);
    MEMORY[0x26D652460](v71, -1, -1);
  }

  v78 = v82;
  v77 = v83;
  [v2 cancelButtonPressed];

  (*(v78 + 8))(v45, v77);
}

void sub_269C28514()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269C2A4DC("[%{public}s] Sleep duration goal did change while editing");
  }

  else
  {
  }
}

void sub_269C285E8()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];
    v3 = [v2 rightBarButtonItem];

    if (v3)
    {
      [v3 setEnabled_];
    }

    sub_269C2A2B8();
  }

  else
  {
  }
}

void sub_269C28718(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a4;
    v7 = Strong;
    [Strong v6];
  }

  else
  {
  }
}

void sub_269C287F4()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269C28D60();
  }

  else
  {
  }
}

void sub_269C288C0(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [a1 traitCollection];
      v7 = [v6 preferredContentSizeCategory];

      LOBYTE(v6) = sub_269D9ACF0();
      v5[qword_28034DF70] = v6 & 1;
      sub_269C48F58();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_269C28A30(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v17.receiver = v2;
  v17.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1 & 1);
  if (sub_269C27264() & 1) != 0 || (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate])
  {
LABEL_8:
    sub_269D4B714();
    return;
  }

  if (v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged] == 1)
  {
    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
    {

      sub_269D98750();
    }

    v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 1);
      ObjectType = swift_getObjectType();
      v7 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();
      (*(v5 + 8))(v2, v7, 0, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, v16);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Skipping notifying delegate due to no changes", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }
}

void sub_269C28D60()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] App will resign active", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  sub_269D4B714();
}

void sub_269C28EE8(uint64_t a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  objc_msgSendSuper2(&v14, sel_restoreUserActivityState_, a1);
  sub_269C2D578(1u);
  if (v4)
  {
    v5 = sub_269D9A5F0();

    v6 = sub_269D9A630();
    v8 = v7;
    v9 = sub_269D9A630();
    v11 = v10;

    if (v6 == v9 && v8 == v11)
    {
    }

    else
    {
      v13 = sub_269D9B280();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    ScheduleOccurrenceEditModel.alarmEnabled.setter(1);
  }
}

void sub_269C29198(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v2)
  {
    v4 = v2;
    sub_269D98380();

    if (v8)
    {
      if ((v7 != 0xD000000000000029 || 0x8000000269DAC210 != v8) && (sub_269D9B280() & 1) == 0)
      {
        if (v7 == 0xD000000000000025 && 0x8000000269DAC320 == v8)
        {
        }

        else
        {
          v6 = sub_269D9B280();

          if ((v6 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_269C29588();
        goto LABEL_7;
      }

      sub_269C292E8();
    }

LABEL_7:
    v5 = sub_269D97830();
    [a1 deselectRowAtIndexPath:v5 animated:1];

    return;
  }

  __break(1u);
}

void sub_269C292E8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [*(*&v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v2 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v3 = objc_opt_self();
  v4 = [v15 toneIdentifier];
  v5 = [v15 vibrationIdentifier];
  v6 = [v3 hksh:v4 alarmPickerWithToneIdentifier:v5 vibrationIdentifier:?];

  [v6 setDelegate_];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Presenting tone picker", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  [v1 showViewController:v6 sender:0];
}

void sub_269C29588()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] & 1) == 0)
  {
    v2 = v0;
    v3 = &v0[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
      swift_beginAccess();
      v7 = *(v4 + 16);
      v8 = *(v6 + 48);
      v7(v2, v8, ObjectType, v4);

      v2[v1] = 1;
      if ((sub_269C27264() & 1) == 0)
      {
        v9 = [v2 navigationController];
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_269C299F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v11 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v11)
  {
    sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_269D9EBF0;
    *(v12 + 32) = a2;
    *(v12 + 40) = 0;
    v13 = v11;
    MEMORY[0x26D64DA70](v12);
    sub_269D98380();

    (*(v7 + 8))(v9, v6);
    if (v28)
    {
      if (v27 == 0xD000000000000029 && 0x8000000269DAC210 == v28 || (sub_269D9B280() & 1) != 0)
      {
        v14 = [objc_allocWithZone(MEMORY[0x277D75B70]) init];

        return v14;
      }
    }

    v16 = *(v3 + v10);
    if (v16)
    {
      v17 = v16;
      sub_269C492FC(a2);
      v19 = v18;

      if (v19)
      {
        v20 = sub_269D9A5F0();
        v21 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

        if (v21)
        {
          type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            v24 = v21;
            v25 = sub_269D59EA0();
            v26 = sub_269D9A5F0();

            [v25 setText_];

            return v23;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

double sub_269C29F00(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  v12 = a6(a4);

  return v12;
}

void sub_269C2A010()
{

  sub_269C32388(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
  sub_269C254E8(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
}

id ScheduleOccurrenceViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_269C2A2B8()
{
  v1 = [v0 tableView];
  if (!v1)
  {
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10);
  v4 = sub_269D9A7E0();

  if (v4 >> 62)
  {
    v5 = sub_269D9AF50();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 >= 1)
      {
        v6 = 0;
        v10 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x26D651260](v6, v4);
          }

          else
          {
            v9 = *(v4 + 8 * v6 + 32);
          }

          v14 = v9;
          sub_269C3232C(0, &qword_28034EF00);
          if (swift_dynamicCast())
          {
            sub_269C25520(v12, v15);
            v8 = v16;
            v7 = v17;
            __swift_project_boxed_opaque_existential_1Tm(v15, v16);
            (*(v7 + 8))(*(v11 + v10), v8, v7);
            __swift_destroy_boxed_opaque_existential_1Tm(v15);
          }

          else
          {
            v13 = 0;
            memset(v12, 0, sizeof(v12));
            sub_269C32388(v12, &unk_28034DC20, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming);
          }

          ++v6;
        }

        while (v5 != v6);

        return;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }
}

void sub_269C2A4DC(const char *a1)
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, a1, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C2A2B8();
}

void sub_269C2A70C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97630();
  v6 = sub_269D97640() & 1;
  (*(v3 + 8))(v5, v2);
  if (v6 != *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime))
  {
    *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime) = v6;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B728);
    v8 = sub_269D98230();
    v9 = sub_269D9AB80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] 24 hour time changed", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    sub_269C2A2B8();
  }
}

void sub_269C2A944()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate) & 1) == 0)
  {
    v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      (*(v3 + 24))(v0, ObjectType, v3);
      swift_unknownObjectRelease();
      *(v0 + v1) = 1;
    }
  }
}

void sub_269C2AA48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void ScheduleOccurrenceViewController.sleepScheduleComponentsEditViewEditingDidChange(_:)(uint64_t a1)
{
  v21 = a1;
  sub_269C2FAD8(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_269D97870();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v9 = (v8 + 48);
  v22 = (v8 + 8);
  v23 = (v8 + 32);
  v10 = 2;
  v11 = &off_287A9F3D8;
  do
  {
    v12 = *&v24[v7];
    if (!v12)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v13 = *v11;
    v25 = *(v11 - 1);
    v26 = v13;

    v14 = v12;
    sub_269D983B0();

    if ((*v9)(v3, 1, v4) == 1)
    {

      sub_269C30EF8(v3, &qword_28034D998, MEMORY[0x277CC9AF8]);
    }

    else
    {
      (*v23)(v6, v3, v4);
      v15 = [v24 tableView];
      if (!v15)
      {
        goto LABEL_16;
      }

      v16 = v15;

      v17 = sub_269D97830();
      v18 = [v16 cellForRowAtIndexPath_];

      if (v18)
      {
        type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
        if (swift_dynamicCastClass())
        {
          sub_269CF5D70(v21);
        }
      }

      (*v22)(v6, v4);
    }

    v11 += 2;
    --v10;
  }

  while (v10);
  swift_arrayDestroy();
  v19 = [v24 navigationItem];
  v20 = [v19 rightBarButtonItem];

  if (v20)
  {
    [v20 setEnabled_];
  }
}

uint64_t ScheduleOccurrenceViewController.sleepScheduleComponentsEditViewEditingDidEnd(_:)(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-1] - v7;
  v9 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v10 = v9[1];
  v15 = *v9;
  v16[0] = v10;
  *(v16 + 11) = *(v9 + 27);
  v11 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(v11 + 144));
  v12 = v9[1];
  v15 = *v9;
  v16[0] = v12;
  *(v16 + 11) = *(v9 + 27);
  sub_269D1EA14(*(v11 + 144));
  ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
  v13 = *(v3 + 8);
  v13(v6, v2);
  return (v13)(v8, v2);
}

uint64_t sub_269C2B004(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
  v3 = a1 + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_model;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) setWeekdays_];
  sub_269D987C0();
  if (v8)
  {
    v5 = *(v2 + v4);
    v6 = sub_269D976E0();
    [v8 allowableRangeForModifiedOccurrence:v5 gregorianCalendar:v6];
  }

  sub_269D987D0();
  return sub_269D98780();
}

BOOL ScheduleOccurrenceViewController.scheduleOccurrenceComponentsAccessibilityTableViewCellCanUpdateValue(_:)(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
  sub_269CF3E6C(v5);
  if (v6)
  {
    v7 = ScheduleOccurrenceEditModel.isValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v5, 3600.0, 72000.0, 300.0);
  }

  else
  {
    v7 = ScheduleOccurrenceEditModel.isValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v5, 3600.0, 72000.0, 300.0);
  }

  v8 = v7;
  (*(v3 + 8))(v5, v2);
  return v8;
}

void ScheduleOccurrenceViewController.scheduleOccurrenceComponentsAccessibilityTableViewCellDidUpdateValue(_:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_269C2FAD8(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v146[-v6];
  sub_269C2FAD8(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v152 = &v146[-v8];
  v9 = sub_269D971F0();
  v10 = *(v9 - 8);
  v161 = v9;
  v162 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v150 = &v146[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v146[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v157 = &v146[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v155 = &v146[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v146[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v146[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v149 = &v146[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v156 = &v146[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v154 = &v146[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v158 = &v146[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v146[-v35];
  MEMORY[0x28223BE20](v34);
  v160 = &v146[-v37];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v38 = sub_269D98250();
  __swift_project_value_buffer(v38, qword_280C0B728);
  v39 = a1;
  v40 = sub_269D98230();
  v41 = sub_269D9AB80();

  v42 = os_log_type_enabled(v40, v41);
  v151 = v15;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v164 = v148;
    *v43 = 136446723;
    v44 = sub_269D9B4D0();
    v147 = v41;
    v46 = sub_269C2EACC(v44, v45, &v164);
    v159 = v2;
    v47 = v46;

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v163 = *(v39 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
    v48 = sub_269D9A660();
    v50 = sub_269C2EACC(v48, v49, &v164);

    *(v43 + 14) = v50;
    *(v43 + 22) = 2081;
    v51 = v160;
    sub_269CF3E6C(v160);
    sub_269C2FCB0(&unk_28034D9B0, MEMORY[0x277CC8990]);
    v52 = v22;
    v53 = v36;
    v54 = v25;
    v55 = v161;
    v56 = sub_269D9B230();
    v58 = v57;
    v59 = v55;
    v25 = v54;
    v36 = v53;
    v22 = v52;
    (*(v162 + 8))(v51, v59);
    v60 = sub_269C2EACC(v56, v58, &v164);
    v2 = v159;

    *(v43 + 24) = v60;
    _os_log_impl(&dword_269C18000, v40, v147, "[%{public}s] AX %{public}s changed to %{private}s", v43, 0x20u);
    v61 = v148;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v61, -1, -1);
    MEMORY[0x26D652460](v43, -1, -1);
  }

  v62 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
  if (*(v39 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component))
  {
    sub_269CF3E6C(v25);
    v63 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
    v64 = [*(v62 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
    sub_269D97120();

    sub_269D97150();
    v65 = v161;
    if (v66)
    {
      v67 = *(v162 + 8);
      v67(v22, v161);
      v67(v25, v65);
LABEL_47:
      sub_269C2A2B8();
      return;
    }

    sub_269D971A0();
    v70 = v69;
    v71 = *(v162 + 8);
    v71(v22, v65);
    if (v70 & 1) != 0 || (sub_269D97150(), (v72) || (sub_269D971A0(), (v73))
    {
      v74 = v25;
LABEL_14:
      v75 = v65;
LABEL_15:
      v71(v74, v75);
      goto LABEL_47;
    }

    v159 = v2;
    v85 = v155;
    (*(v162 + 16))(v155, v25, v65);
    v86 = sub_269D97150();
    v88 = v87;
    v89 = v86;
    v90 = sub_269D971A0();
    v160 = v25;
    v91 = v65;
    v93 = v92;
    v71(v85, v91);
    v94 = v89 * 60.0 * 60.0;
    if (v88)
    {
      v94 = 0.0;
    }

    v95 = v90 * 60.0;
    if (v93)
    {
      v95 = 0.0;
    }

    sub_269D225A8(&v164, round((v94 + v95) / 300.0) * 300.0);
    v96 = v165;
    v158 = v164;
    v162 = v62;
    v97 = [*(v62 + v63) bedtimeComponents];
    v98 = v157;
    sub_269D97120();

    v99 = sub_269D97150();
    if (v100)
    {
      v101 = 0;
    }

    else
    {
      v101 = v99;
    }

    v102 = sub_269D971A0();
    v104 = v103;
    v71(v98, v91);
    if (v104)
    {
      v105 = 0;
    }

    else
    {
      v105 = v102;
    }

    v106 = v96;
    v107 = v158;
    sub_269C679CC(v101, v105, v158, v106);
    if (v108 > 72000.0)
    {
      v109 = v160;
LABEL_46:
      v71(v109, v91);
      goto LABEL_47;
    }

    v132 = v160;
    if (v108 >= 3600.0)
    {
      v133 = [*(v162 + v63) bedtimeComponents];
      v134 = v151;
      sub_269D97120();

      if (v106 != 60 || !__OFADD__(v107, 1))
      {
        v135 = sub_269D977A0();
        (*(*(v135 - 8) + 56))(v152, 1, 1, v135);
        v136 = sub_269D97810();
        (*(*(v136 - 8) + 56))(v153, 1, 1, v136);
        v137 = v150;
        sub_269D971D0();
        ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
        v138 = v137;
        v139 = v161;
        v71(v138, v161);
        v140 = v134;
LABEL_57:
        v71(v140, v139);
        v74 = v132;
        v75 = v139;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_59;
    }

LABEL_53:
    v74 = v132;
    v75 = v161;
    goto LABEL_15;
  }

  sub_269CF3E6C(v36);
  sub_269D97150();
  v65 = v161;
  if (v68)
  {
    (*(v162 + 8))(v36, v161);
    goto LABEL_47;
  }

  sub_269D971A0();
  v76 = v162;
  if (v77)
  {
    (*(v162 + 8))(v36, v65);
    goto LABEL_47;
  }

  v78 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v79 = [*(v62 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
  v80 = v158;
  sub_269D97120();

  sub_269D97150();
  if (v81)
  {
    v82 = *(v76 + 8);
    v82(v80, v65);
    v82(v36, v65);
    goto LABEL_47;
  }

  sub_269D971A0();
  v84 = v83;
  v71 = *(v76 + 8);
  v71(v80, v65);
  if (v84)
  {
    v74 = v36;
    goto LABEL_14;
  }

  v158 = v36;
  v159 = v2;
  v110 = v154;
  (*(v76 + 16))(v154, v36, v65);
  v111 = sub_269D97150();
  v113 = v112;
  v114 = v111;
  v115 = sub_269D971A0();
  v91 = v65;
  v117 = v116;
  v71(v110, v91);
  v118 = v114 * 60.0 * 60.0;
  if (v113)
  {
    v118 = 0.0;
  }

  v119 = v115 * 60.0;
  if (v117)
  {
    v119 = 0.0;
  }

  sub_269D225A8(&v164, round((v118 + v119) / 300.0) * 300.0);
  v120 = v164;
  v121 = v165;
  v162 = v62;
  v122 = [*(v62 + v78) wakeUpComponents];
  v123 = v156;
  sub_269D97120();

  v124 = sub_269D97150();
  if (v125)
  {
    v126 = 0;
  }

  else
  {
    v126 = v124;
  }

  v127 = sub_269D971A0();
  v129 = v128;
  v71(v123, v91);
  if (v129)
  {
    v130 = 0;
  }

  else
  {
    v130 = v127;
  }

  sub_269C679CC(v120, v121, v126, v130);
  if (v131 > 72000.0)
  {
    v109 = v158;
    goto LABEL_46;
  }

  v132 = v158;
  if (v131 < 3600.0)
  {
    goto LABEL_53;
  }

  if (v121 != 60 || !__OFADD__(v120, 1))
  {
    v141 = sub_269D977A0();
    (*(*(v141 - 8) + 56))(v152, 1, 1, v141);
    v142 = sub_269D97810();
    (*(*(v142 - 8) + 56))(v153, 1, 1, v142);
    v143 = v149;
    sub_269D971D0();
    v144 = [*(v162 + v78) wakeUpComponents];
    v145 = v160;
    sub_269D97120();

    ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();
    v139 = v161;
    v71(v145, v161);
    v140 = v143;
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.scheduleOccurrenceAlarmVolumeEditingDidEnd(_:)(UISlider *a1)
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = a1;
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    [(UISlider *)v3 value];
    v11 = sub_269D9A950();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Volume changed to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  [(UISlider *)v3 value];
  ScheduleOccurrenceEditModel.alarmVolume.setter(v14);
  sub_269D4B270();
}

void sub_269C2C218(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.switchCellValueChanged(_:value:)(HKSwitchTableViewCell_optional *_, Swift::Bool value)
{
  if (_)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {
      ScheduleOccurrenceEditModel.alarmEnabled.setter(value);
      sub_269D4B714();
    }

    else
    {
      type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
      if (swift_dynamicCastClass())
      {
        ScheduleOccurrenceEditModel.allowsSnooze.setter(value);
      }
    }
  }
}

void ScheduleOccurrenceViewController.tonePickerViewController(_:willPresent:)(int a1, id a2)
{
  if (a2)
  {
    [a2 setShowsEditButtonInNavigationBar_];

    [a2 setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

id ScheduleOccurrenceViewController.tonePickerViewController(_:didDismiss:)(int a1, id a2)
{
  if (a2)
  {
    return [a2 setDelegate_];
  }

  __break(1u);
  return result;
}

uint64_t sub_269C2C808(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v12 = sub_269D9A630();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a3;
  v15 = a1;
  sub_269C30F68(v12, a4, a6, a7);
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.saveButtonPressed(_:)(UIBarButtonItem_optional a1)
{
  v2 = v1;
  isa = a1.value.super.super.isa;
  ObjectType = swift_getObjectType();
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model];
  if ((*(v5 + 56) & 1) != 0 || (v6 = *(v5 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence), swift_beginAccess(), ([v6 isEqual_] & 1) == 0))
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = ObjectType;
    v21 = *(v5 + 57);
    swift_retain_n();
    if ((v21 & 1) == 0 && (ScheduleOccurrenceEditModel.hasUpcomingSingleDayOverride.getter() & 1) != 0 && ScheduleOccurrenceEditModel.scheduleConflictsWithOverride.getter())
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v22 = sub_269D98250();
      __swift_project_value_buffer(v22, qword_280C0B728);
      v23 = sub_269D98230();
      v24 = sub_269D9AB80();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32[0] = v26;
        *v25 = 136446210;
        v27 = sub_269D9B4D0();
        v29 = sub_269C2EACC(v27, v28, v32);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_269C18000, v23, v24, "[%{public}s] schedule conflicts with override, presenting alert", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D652460](v26, -1, -1);
        MEMORY[0x26D652460](v25, -1, -1);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = sub_269C31178;
      *(v30 + 24) = v20;
      sub_269C1B0B8(0, &unk_28034EF40);

      v31 = static UIAlertController.overlappingOverrideOccurrenceAlert(sender:dismissHandler:)(isa, sub_269C31180, v30);
      [v2 presentViewController:v31 animated:1 completion:0];
    }

    else
    {
      sub_269C2CDCC(1, 0);
    }
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B728);
    v8 = sub_269D98230();
    v9 = sub_269D9AB80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32[0] = v11;
      *v10 = 136446210;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, v32);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] save button pressed but no changes were made", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    v15 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
    if ((v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] & 1) == 0)
    {
      v16 = &v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver])
        {

          sub_269D98750();
        }

        v18 = swift_getObjectType();
        (*(v17 + 24))(v2, v18, v17);
        swift_unknownObjectRelease();
        v2[v15] = 1;
      }
    }
  }
}

void sub_269C2CDCC(char a1, char a2)
{
  if (a1)
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B728);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24[0] = v7;
      *v6 = 136446466;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, v24);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      v11 = sub_269D9A660();
      v13 = sub_269C2EACC(v11, v12, v24);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Saving (deleteOverride: %{public}s)", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_269C2D0E4(a2 & 1);
    }
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v16 = sub_269D98250();
    __swift_project_value_buffer(v16, qword_280C0B728);
    oslog = sub_269D98230();
    v17 = sub_269D9AB80();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136446210;
      v20 = sub_269D9B4D0();
      v22 = sub_269C2EACC(v20, v21, v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_269C18000, oslog, v17, "[%{public}s] Cancelling", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D652460](v19, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_269C2D0E4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate;
  if ((*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate) & 1) == 0)
  {
    v3 = result;
    v4 = v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(v4 + 8);
      if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver))
      {

        sub_269D98750();
      }

      ObjectType = swift_getObjectType();
      v7 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();
      (*(v5 + 8))(v1, v7, v3 & 1, ObjectType, v5);

      result = swift_unknownObjectRelease();
      *(v1 + v2) = 1;
    }
  }

  return result;
}

Swift::Void __swiftcall ScheduleOccurrenceViewController.ppt_toggleAlarmEnabled()()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v2 = [v3 isEnabled];

  ScheduleOccurrenceEditModel.alarmEnabled.setter(v2 ^ 1);
}

void sub_269C2D3B8()
{
  if (!qword_28034D810)
  {
    sub_269C1B0B8(255, &unk_2803519B0);
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034D810);
    }
  }
}

void sub_269C2D430()
{
  if (!qword_28034D820)
  {
    type metadata accessor for ScheduleOccurrenceEditModel();
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034D820);
    }
  }
}

void sub_269C2D498()
{
  if (!qword_2803519C0)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803519C0);
    }
  }
}

void sub_269C2D4F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269C2FD98(255, a3, a4, a5, sub_269C1B0B8);
    v6 = sub_269D987E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_269C2D578(unsigned __int8 a1)
{
  v3 = [v1 userInfo];
  v4 = MEMORY[0x277D84F70];
  if (v3)
  {
    v5 = v3;
    v6 = sub_269D9A490();

    *&v12[0] = sub_269D757D8(a1);
    *(&v12[0] + 1) = v7;
    sub_269D9AFA0();
    if (*(v6 + 16))
    {
      v8 = sub_269C432D0(&v11);
      if (v9)
      {
        sub_269C322D0(*(v6 + 56) + 32 * v8, v12);
        sub_269C3227C(&v11);

        goto LABEL_7;
      }
    }

    sub_269C3227C(&v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_269C326EC(0, &qword_28034DC08, v4 + 8, MEMORY[0x277D83D88]);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269C2D6BC(unsigned __int8 a1)
{
  v3 = [v1 userInfo];
  v4 = MEMORY[0x277D84F70];
  if (v3)
  {
    v5 = v3;
    v6 = sub_269D9A490();

    *&v12[0] = sub_269D757D8(a1);
    *(&v12[0] + 1) = v7;
    sub_269D9AFA0();
    if (*(v6 + 16))
    {
      v8 = sub_269C432D0(v11);
      if (v9)
      {
        sub_269C322D0(*(v6 + 56) + 32 * v8, v12);
        sub_269C3227C(v11);

        goto LABEL_7;
      }
    }

    sub_269C3227C(v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_7:
  sub_269C326EC(0, &qword_28034DC08, v4 + 8, MEMORY[0x277D83D88]);
  if (swift_dynamicCast())
  {
    return v11[0];
  }

  else
  {
    return 2;
  }
}

void *sub_269C2D814@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_269C2D840@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_269C2D8AC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x26D64E070](a1, &v6);
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

uint64_t sub_269C2D900(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x26D64E080](a1, &v7);
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

uint64_t sub_269C2D980(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB50, type metadata accessor for HKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_269C2D9EC(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB50, type metadata accessor for HKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_269C2DA5C(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_269C2DAD0()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269C2DB18()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269C2DB5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269C2DBE4(uint64_t a1, id *a2)
{
  result = sub_269D9A610();
  *a2 = 0;
  return result;
}

uint64_t sub_269C2DC5C(uint64_t a1, id *a2)
{
  v3 = sub_269D9A620();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_269C2DCDC@<X0>(uint64_t *a1@<X8>)
{
  sub_269D9A630();
  v2 = sub_269D9A5F0();

  *a1 = v2;
  return result;
}

uint64_t sub_269C2DD20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_269C2FC70(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_269C2DD70(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_269C2DDDC(uint64_t a1)
{
  v2 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_269C2DE48(void *a1, uint64_t a2)
{
  v4 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_269C2DEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_269C2DF78()
{
  sub_269D9B350();
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t sub_269C2DFD8()
{
  sub_269C2FCB0(&qword_28034DD00, type metadata accessor for Name);
  sub_269C2FCB0(&qword_28034DD08, type metadata accessor for Name);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E094()
{
  sub_269C2FCB0(&qword_28034DD20, type metadata accessor for HKSPSleepLaunchURLRoute);
  sub_269C2FCB0(&qword_28034DD28, type metadata accessor for HKSPSleepLaunchURLRoute);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E150()
{
  sub_269C2FCB0(&qword_28034DD30, type metadata accessor for TextStyle);
  sub_269C2FCB0(&qword_28034DD38, type metadata accessor for TextStyle);

  return sub_269D9B1B0();
}

double sub_269C2E20C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_269C2E218()
{
  sub_269C2FCB0(&qword_28034DBC0, type metadata accessor for Weight);
  sub_269C2FCB0(&qword_28034DBC8, type metadata accessor for Weight);
  sub_269C32228();
  return sub_269D9B1B0();
}

uint64_t sub_269C2E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269C2FCB0(&qword_28034DB88, type metadata accessor for HKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_269C2E364()
{
  sub_269C2FCB0(&qword_28034DB90, type metadata accessor for HKSPProvenanceSource);
  sub_269C2FCB0(&qword_28034DB98, type metadata accessor for HKSPProvenanceSource);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E420()
{
  sub_269C2FCB0(&qword_28034DD10, type metadata accessor for HKFeatureIdentifier);
  sub_269C2FCB0(&qword_28034DD18, type metadata accessor for HKFeatureIdentifier);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E4DC()
{
  sub_269C2FCB0(&qword_28034DBB0, type metadata accessor for NSKeyValueChangeKey);
  sub_269C2FCB0(&qword_28034DBB8, type metadata accessor for NSKeyValueChangeKey);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E598()
{
  sub_269C2FCB0(&qword_28034DBA0, type metadata accessor for Key);
  sub_269C2FCB0(&qword_28034DBA8, type metadata accessor for Key);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E654()
{
  sub_269C2FCB0(&qword_28034DBF8, type metadata accessor for AttributeName);
  sub_269C2FCB0(&qword_28034DC00, type metadata accessor for AttributeName);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E710()
{
  sub_269C2FCB0(&unk_2803505D0, type metadata accessor for FeatureKey);
  sub_269C2FCB0(&qword_28034DBF0, type metadata accessor for FeatureKey);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E7CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269D9A5F0();

  *a1 = v2;
  return result;
}

uint64_t sub_269C2E814()
{
  sub_269C2FCB0(&qword_28034DBD8, type metadata accessor for TraitKey);
  sub_269C2FCB0(&unk_28034DBE0, type metadata accessor for TraitKey);

  return sub_269D9B1B0();
}

uint64_t sub_269C2E8D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26D6515D0](*&v1);
}

uint64_t sub_269C2E92C()
{
  v0 = sub_269D9A630();
  v1 = MEMORY[0x26D650990](v0);

  return v1;
}

uint64_t sub_269C2E968()
{
  sub_269D9A630();
  sub_269D9A6A0();
}

uint64_t sub_269C2E9BC()
{
  sub_269D9A630();
  sub_269D9B350();
  sub_269D9A6A0();
  v0 = sub_269D9B390();

  return v0;
}

uint64_t sub_269C2EA30()
{
  v0 = sub_269D9A630();
  v2 = v1;
  if (v0 == sub_269D9A630() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_269D9B280();
  }

  return v5 & 1;
}

unint64_t sub_269C2EACC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269C2EB98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_269C322D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_269C2EB98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269C2ECA4(a5, a6);
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
    result = sub_269D9B040();
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

uint64_t sub_269C2ECA4(uint64_t a1, unint64_t a2)
{
  v3 = sub_269C2ECF0(a1, a2);
  sub_269C2EE20(&unk_287A9F200);
  return v3;
}

uint64_t sub_269C2ECF0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269C2EF0C(v5, 0);
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

  result = sub_269D9B040();
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
        v10 = sub_269D9A730();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269C2EF0C(v10, 0);
        result = sub_269D9AFF0();
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

uint64_t sub_269C2EE20(uint64_t result)
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

  result = sub_269C2EF98(result, v11, 1, v3);
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

void *sub_269C2EF0C(uint64_t a1, uint64_t a2)
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

  sub_269C326EC(0, &qword_280C0AD88, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269C2EF98(char *result, int64_t a2, char a3, char *a4)
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
    sub_269C326EC(0, &qword_280C0AD88, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

void sub_269C2F0A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269D97650();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmConfigurationObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_snoozeDurationPickerObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelEditObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_significantTimeChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_localeChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepDurationGoalObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_scheduleChangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_validScheduleRangeObserver] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_willResignActiveObserver] = 0;
  v12 = &v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_sleepScheduleProvider];
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_hasFinishedNotifyingDelegate] = 0;
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_modelHasChanged] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource] = 0;
  v13 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_isIn24HourTime;
  sub_269D97630();
  v14 = sub_269D97640();
  (*(v9 + 8))(v11, v8);
  v4[v13] = v14 & 1;
  v15 = a3;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model] = a1;
  v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_allowsDeletion] = a2;
  swift_beginAccess();

  sub_269C324A4(a3, v12);
  swift_endAccess();
  type metadata accessor for AlarmPreviewPlayer();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_alarmPreviewPlayer] = AlarmPreviewPlayer.init(model:)(v16);
  if (*(a1 + 57) & 1) == 0 && (*(a1 + 56))
  {
    swift_beginAccess();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v4[OBJC_IVAR____TtC13SleepHealthUI27SleepTableWelcomeController_hasSystemMargins] = 1;
  v17 = sub_269D9A5F0();
  v18 = type metadata accessor for SleepTableWelcomeController();
  v33.receiver = v4;
  v33.super_class = v18;
  v19 = objc_msgSendSuper2(&v33, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v17, 0, 0, 1);

  v20 = objc_allocWithZone(MEMORY[0x277D75B40]);
  v21 = v19;
  v22 = [v20 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v21 setTableView_];

  v23 = [v21 tableView];
  if (!v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = [objc_opt_self() systemBackgroundColor];
  [v24 setBackgroundColor_];

  v26 = [v21 tableView];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  v28 = [v21 tableView];
  if (v28)
  {

    v29 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v28 setTableHeaderView_];

    v30 = v21;
    v31 = [v30 headerView];
    [v31 setTitleHyphenationFactor_];

    sub_269C32388(v15, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding);
    return;
  }

LABEL_12:
  __break(1u);
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

id sub_269C2F660(void *a1, int a2, int a3, uint64_t a4, int a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v39) = a5;
  LODWORD(v38) = a3;
  v13 = sub_269D977A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = a8;
  v41[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(a8 - 8) + 32))();
  result = [a1 isSingleDayOverride];
  if (result)
  {
    v36 = a2;
    v34 = (*(a9 + 40))(a8, a9);
    v18 = (*(a9 + 24))(a8, a9);
    v35 = v14;
    v19 = *(v14 + 16);
    v37 = a6;
    v19(v16, a6, v13);
    type metadata accessor for ScheduleOccurrenceEditModel();
    v20 = swift_allocObject();
    sub_269C2D3B8();
    swift_allocObject();
    v21 = a1;
    *(v20 + 16) = sub_269D98790();
    sub_269C2D430();
    swift_allocObject();
    *(v20 + 24) = sub_269D98790();
    sub_269C2D498();
    swift_allocObject();
    *(v20 + 32) = sub_269D98790();
    v40[0] = 0;
    sub_269C2D4F8(0, &qword_28034D830, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510);
    swift_allocObject();
    *(v20 + 40) = sub_269D987F0();
    *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
    [v21 copy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E050);
    swift_dynamicCast();
    *(v20 + 48) = v40[5];
    *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v21;
    *(v20 + 56) = v38 & 1;
    *(v20 + 57) = 1;
    v22 = v21;
    [v22 weekdays];
    v23 = v34;
    *(v20 + 64) = 0;
    *(v20 + 72) = v23;
    *(v20 + 80) = v18;
    *(v20 + 88) = v39 & 1;
    v38 = v13;
    v39 = v16;
    v19((v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v16, v13);

    sub_269D987C0();
    v24 = v40[0];
    if (v40[0])
    {
      v25 = *(v20 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
      v26 = sub_269D976E0();
      v27 = [v24 allowableRangeForModifiedOccurrence:v25 gregorianCalendar:v26];
    }

    else
    {
      v27 = 0;
    }

    v40[0] = v27;
    sub_269D987D0();

    v28 = *(v35 + 8);
    v29 = v38;
    v28(v39, v38);
    sub_269C2DB5C(v41, v40);
    v30 = objc_allocWithZone(type metadata accessor for ScheduleOccurrenceViewController());
    sub_269C2F0A4(v20, v36 & 1, v40);
    v32 = v31;

    v28(v37, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269C2FAD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C2FB3C()
{
  if (!qword_280C0B170)
  {
    sub_269D9ACD0();
    sub_269C1B0B8(255, &qword_280C0AEB0);
    sub_269C2FCB0(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
    sub_269C2FC08();
    v0 = sub_269D98710();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B170);
    }
  }
}

unint64_t sub_269C2FC08()
{
  result = qword_280C0AEC0;
  if (!qword_280C0AEC0)
  {
    sub_269C1B0B8(255, &qword_280C0AEB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AEC0);
  }

  return result;
}

uint64_t sub_269C2FC70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_269C2FCB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269C2FD08(uint64_t a1, uint64_t a2)
{
  sub_269C2FD98(0, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding, sub_269C3232C);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269C2FD98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_269D9AE60();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C2FDFC()
{
  if (!qword_280C0B150)
  {
    sub_269C326EC(255, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    v0 = sub_269D987E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B150);
    }
  }
}

unint64_t sub_269C2FE88()
{
  result = qword_28034EFA0;
  if (!qword_28034EFA0)
  {
    sub_269C2D4F8(255, &qword_28034D830, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFA0);
  }

  return result;
}

void sub_269C2FF08()
{
  if (!qword_28034D8B0)
  {
    sub_269C2FD98(255, &qword_280C0BF10, &unk_280C0BF20, 0x277D62510, sub_269C1B0B8);
    v0 = sub_269D98730();
    if (!v1)
    {
      atomic_store(v0, &qword_28034D8B0);
    }
  }
}

unint64_t sub_269C2FFF4()
{
  result = qword_28034D8F0;
  if (!qword_28034D8F0)
  {
    sub_269C3232C(255, &qword_28034E1E0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_28034D8F0);
  }

  return result;
}

unint64_t sub_269C30054()
{
  result = qword_28034D960;
  if (!qword_28034D960)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034D960);
  }

  return result;
}

unint64_t sub_269C300C0()
{
  result = qword_28034D970;
  if (!qword_28034D970)
  {
    sub_269C2D4F8(255, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034D970);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

void sub_269C301BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v1)
  {
    v2 = v1;
    sub_269D98380();

    if (v4)
    {
      if ((v3 != 0xD000000000000029 || 0x8000000269DAC210 != v4) && (sub_269D9B280() & 1) == 0 && (v3 != 0xD000000000000025 || 0x8000000269DAC320 != v4))
      {
        sub_269D9B280();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_269C302BC(void *a1)
{
  type metadata accessor for ScheduleOccurrenceDayPickerTableViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    v5 = OBJC_IVAR____TtC13SleepHealthUI40ScheduleOccurrenceDayPickerTableViewCell_picker;
    v6 = v3;
    swift_beginAccess();
    sub_269D73F54(*(v4 + 64), [*(v4 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) weekdays]);
    *(*(v6 + v5) + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleDayPicker_alertPresenter + 8) = &off_287AA1480;
    swift_unknownObjectWeakAssign();
    [*(v6 + v5) addTarget:v1 action:sel_scheduleDayPickerDidChange_ forControlEvents:4096];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = [*(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
    [v9 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0);
    swift_dynamicCast();
    v10 = v28[0];
    v11 = [v28[0] isEnabled];
LABEL_7:
    v14 = v11;

    [v8 setOn:v14 animated:1];
    [v8 setDelegate_];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v8 = v12;
    v13 = [*(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
    [v13 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0);
    swift_dynamicCast();
    v10 = v28[0];
    v11 = [v28[0] allowsSnooze];
    goto LABEL_7;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    type metadata accessor for AlarmSnoozeDurationModel(0);
    v18 = swift_allocObject();
    sub_269D97A20();
    *(v18 + 16) = v17;
    v19 = OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel;
LABEL_13:
    *&v16[v19] = v18;

    [v16 setNeedsUpdateConfiguration];

    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v16 = v20;
    v21 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model);
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    v18 = swift_allocObject();
    sub_269D97A20();
    *(v18 + 16) = v21;
    v19 = OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel;
    goto LABEL_13;
  }

  type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    sub_269CF55D0(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model));
    v24 = v23 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
    swift_beginAccess();
    *(v24 + 8) = &protocol witness table for ScheduleOccurrenceViewController;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v32 = a1;
    sub_269C1B0B8(0, &unk_28034DC10);
    sub_269C3232C(0, &qword_28034EF00);
    v25 = a1;
    if (swift_dynamicCast())
    {
      sub_269C25520(&v31, v28);
      v26 = v29;
      v27 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      (*(v27 + 8))(*(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_model), v26, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }
  }
}

id sub_269C3079C(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (v7)
  {
    sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_269D9EBF0;
    *(v8 + 32) = a1;
    *(v8 + 40) = 0;
    v9 = v7;
    MEMORY[0x26D64DA70](v8);
    sub_269D98380();

    (*(v4 + 8))(v6, v3);
    if (v13)
    {
      if (v12 == 0xD00000000000002BLL && 0x8000000269DAC120 == v13)
      {

        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }

      v10 = sub_269D9B280();

      if (v10)
      {
        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }
    }
  }

  return 0;
}

double sub_269C3096C(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v7)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269D9EBF0;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  v9 = v7;
  MEMORY[0x26D64DA70](v8);
  sub_269D98380();

  (*(v4 + 8))(v6, v3);
  if (!v13)
  {
    return *MEMORY[0x277D76F30];
  }

  if (v12 == 0xD000000000000029 && 0x8000000269DAC210 == v13)
  {

    return 0.0;
  }

  v11 = sub_269D9B280();

  result = 0.0;
  if ((v11 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C30B30(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v7)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269D9EBF0;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  v9 = v7;
  MEMORY[0x26D64DA70](v8);
  sub_269D98380();

  (*(v4 + 8))(v6, v3);
  if (!v13)
  {
    return *MEMORY[0x277D76F30];
  }

  if (v12 == 0xD00000000000002BLL && 0x8000000269DAC120 == v13)
  {

    return 10.0;
  }

  v11 = sub_269D9B280();

  result = 10.0;
  if ((v11 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C30CF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D97870();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource;
  v9 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI32ScheduleOccurrenceViewController_dataSource);
  if (!v9)
  {
    return 44.0;
  }

  sub_269C326EC(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269D9EBF0;
  *(v10 + 32) = a1;
  *(v10 + 40) = 0;
  v11 = v9;
  MEMORY[0x26D64DA70](v10);
  sub_269D98380();

  (*(v5 + 8))(v7, v4);
  if (!v20)
  {
    goto LABEL_7;
  }

  if (v19 == 0xD000000000000029 && 0x8000000269DAC210 == v20)
  {

    return 1.0;
  }

  v13 = sub_269D9B280();

  result = 1.0;
  if ((v13 & 1) == 0)
  {
LABEL_7:
    v14 = *(v2 + v8);
    if (v14)
    {
      v15 = v14;
      sub_269C492FC(a1);
      v17 = v16;

      if (v17)
      {

        return 45.0;
      }
    }

    return 44.0;
  }

  return result;
}

uint64_t sub_269C30EF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269C2FAD8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269C30F68(uint64_t a1, uint64_t a2, char *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);

  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    format = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (a2)
    {

      v16 = sub_269D9A660();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_269C2EACC(v16, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_269C18000, v9, v10, format, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  return a4(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_269C316CC(uint64_t a1, int a2)
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

uint64_t sub_269C316EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

unint64_t sub_269C32144()
{
  result = qword_28034DB78;
  if (!qword_28034DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DB78);
  }

  return result;
}

unint64_t sub_269C32228()
{
  result = qword_28034DBD0;
  if (!qword_28034DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DBD0);
  }

  return result;
}

uint64_t sub_269C322D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269C3232C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_269C32388(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_269C2FD98(0, a2, a3, a4, sub_269C3232C);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_269C324A4(uint64_t a1, uint64_t a2)
{
  sub_269C2FD98(0, &qword_28034D880, &unk_28034D888, &protocol descriptor for SleepScheduleProviding, sub_269C3232C);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_269C326EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269C32BC4()
{
  sub_269D99CE0();
  v0 = sub_269D99D30();

  qword_280C0AFC8 = v0;
  return result;
}

id sub_269C32C34(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v6 = result;
    sub_269C44580(a2);
    sub_269D9AE40();
    v8 = v7;

    *a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepStagesDiagram.init(sleepDayModel:sleepStagesModel:options:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for SleepDayModel(0);
  sub_269C4264C(&unk_280C0B810, type metadata accessor for SleepDayModel);
  *a3 = sub_269D98C70();
  a3[1] = v6;
  v7 = type metadata accessor for SleepStagesDiagram(0);
  result = sub_269C422C4(a1, a3 + *(v7 + 20), type metadata accessor for SleepStagesModel);
  *(a3 + *(v7 + 24)) = v5;
  return result;
}

uint64_t SleepStagesDiagram.body.getter()
{
  sub_269C32EF0();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C331D8(v0, v3);
  v4 = type metadata accessor for SleepStagesDiagram(0);
  sub_269C33E98((*(v0 + *(v4 + 24)) & 4) != 0);
  return sub_269C42558(v3, sub_269C32EF0);
}

void sub_269C32EF0()
{
  if (!qword_280C0B570)
  {
    sub_269C4232C(255, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
    v0 = sub_269D99D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B570);
    }
  }
}

void sub_269C32F80()
{
  if (!qword_280C0B560)
  {
    sub_269C33014();
    sub_269C4264C(&qword_280C0B538, sub_269C33014);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B560);
    }
  }
}

void sub_269C33014()
{
  if (!qword_280C0B530)
  {
    sub_269C41AFC(255, qword_280C0B740, type metadata accessor for Somnogram, sub_269C330BC);
    v0 = sub_269D9A1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B530);
    }
  }
}

void sub_269C330BC()
{
  if (!qword_280C0B608)
  {
    sub_269C4232C(255, &qword_280C0B610, sub_269C3314C, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B608);
    }
  }
}

void sub_269C3314C()
{
  if (!qword_280C0B618)
  {
    sub_269C420D4(255, &qword_280C0B648, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B618);
    }
  }
}

uint64_t sub_269C331D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269C4232C(0, &qword_280C0B5F8, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - v5);
  sub_269C32F80();
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4232C(0, &qword_280C0B5D0, sub_269C32F80, &type metadata for GridView, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + *(type metadata accessor for SleepStagesDiagram(0) + 20));
  v14 = sub_269CDBD9C(2u, v13);
  v15 = v14 + sub_269CDBD9C(3u, v13);
  if (v15 + sub_269CDBD9C(1u, v13) <= 0.0)
  {
    *v6 = 4;
    swift_storeEnumTagMultiPayload();
    sub_269C4264C(&qword_280C0B568, sub_269C32F80);
    sub_269C3C3B0();
    sub_269D992D0();
  }

  else
  {
    *v9 = sub_269D991A0();
    *(v9 + 1) = 0;
    v9[16] = 0;
    sub_269C42434(0, &qword_280C0B668, sub_269C33014);
    sub_269C33584(a1, &v9[*(v16 + 44)]);
    sub_269C424F0(v9, v6, sub_269C32F80);
    swift_storeEnumTagMultiPayload();
    sub_269C4264C(&qword_280C0B568, sub_269C32F80);
    sub_269C3C3B0();
    sub_269D992D0();
    sub_269C42558(v9, sub_269C32F80);
  }

  sub_269C42398(v12, a2);
}

uint64_t sub_269C33584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v81[0] = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_269D97650();
  v7 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Somnogram(0);
  v11 = MEMORY[0x28223BE20](v10);
  v88 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v81 - v13;
  sub_269D9A8E0();
  v87 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for SleepStagesDiagram(0);
  sub_269C424F0(a1 + *(v15 + 20), v14, type metadata accessor for SleepStagesModel);
  v16 = *(v15 + 24);
  v81[1] = a1;
  v17 = *(a1 + v16);
  KeyPath = swift_getKeyPath();
  v84 = v17;
  *&v14[v10[5]] = v17;
  sub_269D97630();
  v18 = HKSPIsRemoveSpacesForTimeFormatEnabled();
  v19 = objc_opt_self();
  v20 = sub_269D9A5F0();
  v21 = sub_269D97610();
  v22 = [v19 dateFormatFromTemplate:v20 options:0 locale:v21];

  if (v22)
  {
    v23 = sub_269D9A630();
    v25 = v24;
  }

  else
  {
    v25 = 0xE500000000000000;
    v23 = 0x616D6D3A68;
  }

  v26 = v10[6];
  v27 = sub_269D62560(v23, v25, v9, v18);

  (*(v7 + 8))(v9, v85);
  *&v14[v26] = v27;
  v28 = v10[7];
  *&v14[v28] = swift_getKeyPath();
  sub_269C414A8(0);
  swift_storeEnumTagMultiPayload();
  v29 = v10[8];
  *&v14[v29] = swift_getKeyPath();
  sub_269C414DC(0);
  swift_storeEnumTagMultiPayload();
  v30 = v10[9];
  *&v14[v30] = swift_getKeyPath();
  sub_269C41510(0);
  swift_storeEnumTagMultiPayload();
  v31 = &v14[v10[10]];
  *v31 = KeyPath;
  v31[8] = 0;
  if ((v84 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v32 = v82;
  sub_269D16170(v82);
  v33 = sub_269D97010();
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    sub_269C42558(v32, sub_269C40CD0);
LABEL_9:
    sub_269C424D4(&v105);
    goto LABEL_19;
  }

  sub_269C42558(v32, sub_269C40CD0);
  *&v105 = sub_269D1750C();
  *(&v105 + 1) = v34;
  sub_269C3EEE8();
  sub_269D9AE90();
  v85 = v35;

  if (qword_28034D7D8 != -1)
  {
    swift_once();
  }

  v36 = sub_269D996F0();
  v37 = v81[0];
  (*(*(v36 - 8) + 56))(v81[0], 1, 1, v36);
  sub_269D99730();
  sub_269C42558(v37, sub_269C424A0);
  v38 = sub_269D99920();
  v40 = v39;
  v42 = v41;

  v43 = sub_269D99930();
  v45 = v44;
  v47 = v46;
  KeyPath = v48;
  sub_269C41568(v38, v40, v42 & 1);

  if (qword_28034D7E0 != -1)
  {
    swift_once();
  }

  v84 = sub_269D998F0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_269C41568(v43, v45, v47 & 1);

  v55 = sub_269D995E0();
  if (qword_28034D5F8 != -1)
  {
    swift_once();
  }

  sub_269D98990();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  LOBYTE(v98) = v52 & 1;
  LOBYTE(v96[0]) = 0;
  v64 = sub_269D995F0();
  if (qword_28034D600 != -1)
  {
    swift_once();
  }

  sub_269D98990();
  LOBYTE(v105) = 0;
  *&v98 = v84;
  *(&v98 + 1) = v50;
  LOBYTE(v99) = v52 & 1;
  *(&v99 + 1) = v54;
  LOBYTE(v100) = v55;
  *(&v100 + 1) = v57;
  *&v101 = v59;
  *(&v101 + 1) = v61;
  *&v102 = v63;
  BYTE8(v102) = 0;
  LOBYTE(v103) = v64;
  *(&v103 + 1) = v65;
  *&v104[0] = v66;
  *(&v104[0] + 1) = v67;
  *&v104[1] = v68;
  BYTE8(v104[1]) = 0;
  *(&v104[1] + 9) = 256;
  nullsub_1(&v98);
  v109 = v102;
  v110 = v103;
  v111[0] = v104[0];
  *(v111 + 11) = *(v104 + 11);
  v105 = v98;
  v106 = v99;
  v107 = v100;
  v108 = v101;
LABEL_19:
  v69 = v88;
  sub_269C424F0(v14, v88, type metadata accessor for Somnogram);
  v93 = v109;
  v94 = v110;
  v95[0] = v111[0];
  *(v95 + 11) = *(v111 + 11);
  v89 = v105;
  v90 = v106;
  v91 = v107;
  v92 = v108;
  v70 = v86;
  sub_269C424F0(v69, v86, type metadata accessor for Somnogram);
  sub_269C41AFC(0, qword_280C0B740, type metadata accessor for Somnogram, sub_269C330BC);
  v72 = (v70 + *(v71 + 48));
  v74 = v93;
  v73 = v94;
  v96[4] = v93;
  v96[5] = v94;
  v75 = v95[0];
  v97[0] = v95[0];
  *(v97 + 11) = *(v95 + 11);
  v77 = v89;
  v76 = v90;
  v96[0] = v89;
  v96[1] = v90;
  v79 = v91;
  v78 = v92;
  v96[2] = v91;
  v96[3] = v92;
  *(v72 + 107) = *(v95 + 11);
  v72[5] = v73;
  v72[6] = v75;
  v72[3] = v78;
  v72[4] = v74;
  v72[1] = v76;
  v72[2] = v79;
  *v72 = v77;
  sub_269C424F0(v96, &v98, sub_269C330BC);
  sub_269C42558(v14, type metadata accessor for Somnogram);
  v102 = v93;
  v103 = v94;
  v104[0] = v95[0];
  *(v104 + 11) = *(v95 + 11);
  v98 = v89;
  v99 = v90;
  v100 = v91;
  v101 = v92;
  sub_269C42558(&v98, sub_269C330BC);
  sub_269C42558(v69, type metadata accessor for Somnogram);
}

uint64_t sub_269C33E98(char a1)
{
  sub_269C3C28C(0);
  v4 = v3;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_269C42240(0, &qword_280C0B600, sub_269C32EF0, sub_269C3C28C, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  if (a1)
  {
    sub_269C424F0(v1, v18 - v11, sub_269C32EF0);
    swift_storeEnumTagMultiPayload();
    sub_269C32EF0();
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8);
    sub_269C3C404();
    return sub_269D992D0();
  }

  else
  {
    sub_269D9A180();
    sub_269D98DF0();
    sub_269C424F0(v1, v7, sub_269C32EF0);
    v14 = &v7[*(v4 + 36)];
    v15 = v18[5];
    *(v14 + 4) = v18[4];
    *(v14 + 5) = v15;
    *(v14 + 6) = v18[6];
    v16 = v18[1];
    *v14 = v18[0];
    *(v14 + 1) = v16;
    v17 = v18[3];
    *(v14 + 2) = v18[2];
    *(v14 + 3) = v17;
    sub_269C422C4(v7, v9, sub_269C3C28C);
    sub_269C424F0(v9, v12, sub_269C3C28C);
    swift_storeEnumTagMultiPayload();
    sub_269C32EF0();
    sub_269C40648(&qword_280C0B578, sub_269C32EF0, sub_269C3C2C8);
    sub_269C3C404();
    sub_269D992D0();
    return sub_269C42558(v9, sub_269C3C28C);
  }
}

uint64_t sub_269C34204(uint64_t a1)
{
  sub_269C32EF0();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C331D8(v1, v5);
  sub_269C33E98((*(v1 + *(a1 + 24)) & 4) != 0);
  return sub_269C42558(v5, sub_269C32EF0);
}

uint64_t sub_269C342CC()
{
  v0 = sub_269D97510();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D97520();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C42128();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B9C8 != -1)
  {
    swift_once();
  }

  v11 = *(type metadata accessor for SleepStageSegment(0) + 20);
  swift_beginAccess();
  v12 = off_280C0B9D0;
  if (*(off_280C0B9D0 + 2) && (v13 = sub_269C43380(v20 + v11), (v14 & 1) != 0))
  {
    v15 = *(v12[7] + 16 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_269CED60C(v10);
    sub_269D97500();
    sub_269D96ED0();
    (*(v1 + 8))(v3, v0);
    sub_269C4264C(&qword_280C0BB78, MEMORY[0x277CC9510]);
    sub_269D9AA50();
    (*(v5 + 8))(v7, v4);
    sub_269C42558(v10, sub_269C42128);
    v15 = v22;
    v16 = v23;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = off_280C0B9D0;
    off_280C0B9D0 = 0x8000000000000000;
    sub_269C4116C(v15, v16, v20 + v11, isUniquelyReferenced_nonNull_native);
    off_280C0B9D0 = v21;
    swift_endAccess();
  }

  return v15;
}

uint64_t sub_269C34610()
{
  v1 = sub_269D99040();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for Somnogram(0) + 40);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_269D9AB70();
    v7 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C41544(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_269C34768@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v215 = a1;
  v169 = a2;
  v154 = sub_269D97580();
  v153 = *(v154 - 8);
  v2 = MEMORY[0x28223BE20](v154);
  v152 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v151 = &v148 - v4;
  sub_269C40B6C();
  v168 = v5;
  v167 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v150 = (&v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269C40CD0(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_269D97010();
  v10 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v149 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40B38(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v166 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v148 - v15;
  sub_269C3F528();
  v164 = v16;
  MEMORY[0x28223BE20](v16);
  v207 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Somnogram(0);
  v204 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v205 = v18;
  v206 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40D04(0);
  MEMORY[0x28223BE20](v19 - 8);
  v203 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_269D98540();
  v176 = *(v178 - 1);
  MEMORY[0x28223BE20](v178);
  v173 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E85C();
  v174 = v22;
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v170 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E788();
  v177 = v24;
  v175 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v171 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E684();
  v182 = v26;
  v180 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v179 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E500();
  v185 = v28;
  v184 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v181 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E308();
  v187 = v30;
  v186 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v183 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3E0D8();
  v190 = v32;
  v189 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v188 = &v148 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3DE38();
  v193 = v34;
  v191 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v214 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3DB1C();
  v197 = v36;
  v194 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v192 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D7CC();
  v201 = v38;
  v200 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v196 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D430();
  v199 = v40;
  v198 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v195 = &v148 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D2B8(0);
  v158 = v42;
  MEMORY[0x28223BE20](v42);
  v202 = &v148 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D284(0);
  v163 = v44;
  v162 = *(v44 - 8);
  v45 = MEMORY[0x28223BE20](v44);
  v161 = &v148 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v159 = &v148 - v47;
  sub_269D9A8E0();
  v160 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v155 = v9;
  v156 = v10;
  v216 = MEMORY[0x277D84F90];
  sub_269C75370(0, 4, 0);
  v48 = 0;
  v49 = v216;
  do
  {
    v50 = byte_287A9F4E0[v48 + 32];
    if (v50 >= 4)
    {

LABEL_12:
      v54 = 0;
      v53 = 0xE000000000000000;
      goto LABEL_16;
    }

    v51 = sub_269D9B280();

    if (v51)
    {
      goto LABEL_12;
    }

    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v55 = 1701998435;
      }

      else
      {
        v55 = 1885693284;
      }

      v54 = v55 | 0x65656C5300000000;
      v53 = 0xE900000000000070;
    }

    else if (v50)
    {
      v53 = 0xE800000000000000;
      v54 = 0x7065656C536D6572;
    }

    else
    {
      v53 = 0xE500000000000000;
      v54 = 0x656B617761;
    }

LABEL_16:
    v216 = v49;
    v57 = *(v49 + 16);
    v56 = *(v49 + 24);
    if (v57 >= v56 >> 1)
    {
      v52 = sub_269C75370((v56 > 1), v57 + 1, 1);
      v49 = v216;
    }

    ++v48;
    *(v49 + 16) = v57 + 1;
    v58 = v49 + 16 * v57;
    *(v58 + 32) = v54;
    *(v58 + 40) = v53;
  }

  while (v48 != 4);
  MEMORY[0x28223BE20](v52);
  v59 = v215;
  v212 = sub_269D51A60(sub_269C41408, (&v148 - 4), byte_287A9F4E0);
  MEMORY[0x28223BE20](v212);
  v146 = v59;
  sub_269C3E930();
  sub_269C3E9E4();
  v61 = v60;
  v62 = sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4);
  v216 = v61;
  v217 = v62;
  swift_getOpaqueTypeConformance2();
  v63 = v170;
  sub_269D985C0();
  v64 = v173;
  sub_269D983E0();
  v209 = sub_269D98690();
  v65 = *(v209 - 8);
  v208 = *(v65 + 56);
  v210 = v65 + 56;
  v66 = v203;
  v208(v203, 1, 1, v209);
  v67 = sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
  v68 = MEMORY[0x277CBB398];
  v69 = v171;
  v70 = v174;
  v71 = v178;
  sub_269D999E0();
  v211 = sub_269C40D04;
  sub_269C42558(v66, sub_269C40D04);
  (*(v176 + 8))(v64, v71);
  (*(v172 + 8))(v63, v70);
  v72 = v215;
  v213 = *(v215 + *(v213 + 20));
  v216 = v70;
  v217 = v71;
  v218 = v67;
  v219 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v179;
  v75 = v177;
  sub_269D999A0();
  v76 = (*(v175 + 8))(v69, v75);
  v178 = &v148;
  MEMORY[0x28223BE20](v76);
  v146 = v72;
  sub_269C3F0A4();
  v78 = v77;
  v216 = v75;
  v217 = OpaqueTypeConformance2;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
  v81 = v181;
  v82 = v182;
  sub_269D99990();
  v180[1](v74, v82);
  v225 = v49;
  v208(v66, 1, 1, v209);
  v180 = MEMORY[0x277D83940];
  sub_269C41CB8(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v84 = v83;
  v216 = v82;
  v217 = v78;
  v218 = v79;
  v219 = v80;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_269C3F980();
  v87 = v183;
  v88 = v185;
  v179 = v84;
  sub_269D999F0();
  sub_269C42558(v66, v211);
  (*(v184 + 8))(v81, v88);
  v216 = v88;
  v217 = v84;
  v218 = v85;
  v219 = v86;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v188;
  v91 = v187;
  sub_269D999C0();
  v92 = (v186[1])(v87, v91);
  v186 = &v148;
  MEMORY[0x28223BE20](v92);
  v146 = v215;
  sub_269C3FA14();
  v94 = v93;
  v216 = v91;
  v217 = v89;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
  v97 = v190;
  sub_269D999B0();
  (*(v189 + 8))(v90, v97);
  v223 = v212;
  v224 = v49;
  v208(v66, 1, 1, v209);
  sub_269C41CB8(0, &qword_280C0B500, MEMORY[0x277CE0F78], v180);
  v99 = v98;
  v216 = v97;
  v217 = v94;
  v218 = v95;
  v219 = v96;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = sub_269C3FFD8();
  v146 = v101;
  v147 = MEMORY[0x277CE0F60];
  v102 = v192;
  v103 = v193;
  v104 = v179;
  v105 = v214;
  sub_269D99A10();
  sub_269C42558(v66, v211);
  (*(v191 + 8))(v105, v103);
  v106 = v215;

  v216 = v103;
  v217 = v104;
  v218 = v99;
  v219 = v100;
  v220 = v86;
  v221 = v101;
  v222 = MEMORY[0x277CE0F60];
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v196;
  v109 = v197;
  sub_269D999D0();
  (*(v194 + 8))(v102, v109);
  v110 = v206;
  sub_269C424F0(v106, v206, type metadata accessor for Somnogram);
  v111 = (*(v204 + 80) + 16) & ~*(v204 + 80);
  v112 = swift_allocObject();
  sub_269C422C4(v110, v112 + v111, type metadata accessor for Somnogram);
  sub_269C40054(0);
  v216 = v109;
  v217 = v107;
  swift_getOpaqueTypeConformance2();
  sub_269C40144();
  v113 = v195;
  v114 = v201;
  sub_269D99A00();

  v115 = v108;
  v116 = v213;
  (*(v200 + 8))(v115, v114);
  v117 = v202;
  sub_269C39BEC((v116 & 0x200) != 0, *v106, v202);
  (*(v198 + 8))(v113, v199);
  v118 = *MEMORY[0x277CDF9D8];
  v119 = sub_269D98CA0();
  v120 = v207;
  (*(*(v119 - 8) + 104))(v207, v118, v119);
  sub_269C4264C(&qword_280C0B650, MEMORY[0x277CDFA28]);
  result = sub_269D9A560();
  if (result)
  {
    sub_269C406EC();
    sub_269C4264C(&qword_280C0B480, sub_269C3F528);
    v122 = v159;
    sub_269D99AF0();
    sub_269C42558(v120, sub_269C3F528);
    sub_269C41C48(v117, sub_269C3D2B8);
    if ((v116 & 0x81) == 0x80)
    {
      v123 = type metadata accessor for SleepStagesModel(0);
      v124 = v155;
      sub_269C424F0(v106 + *(v123 + 24), v155, sub_269C40CD0);
      v125 = v156;
      v126 = v157;
      v127 = (*(v156 + 48))(v124, 1, v157);
      v128 = v165;
      if (v127 == 1)
      {
        sub_269C42558(v124, sub_269C40CD0);
        v129 = 1;
      }

      else
      {
        v130 = v149;
        (*(v125 + 32))(v149, v124, v126);
        v131 = v151;
        sub_269D96FD0();
        v132 = v152;
        sub_269D96FA0();
        v133 = sub_269D99090();
        v134 = v150;
        *v150 = v133;
        *(v134 + 8) = 0;
        *(v134 + 16) = 1;
        sub_269C42434(0, &qword_28034DE38, sub_269C40C00);
        sub_269C3A69C(v106, v131, v132, (v134 + *(v135 + 44)));
        (*(v125 + 8))(v130, v126);
        v136 = *(v153 + 8);
        v137 = v154;
        v136(v132, v154);
        v136(v131, v137);
        sub_269C41BE0(v134, v128, sub_269C40B6C);
        v129 = 0;
      }
    }

    else
    {
      v129 = 1;
      v128 = v165;
    }

    (*(v167 + 56))(v128, v129, 1, v168);
    v138 = v162;
    v139 = *(v162 + 16);
    v140 = v161;
    v141 = v163;
    v139(v161, v122, v163);
    v142 = v166;
    sub_269C41B78(v128, v166, sub_269C40B38);
    v143 = v169;
    v139(v169, v140, v141);
    sub_269C41AFC(0, &qword_280C0AFE0, sub_269C3D284, sub_269C40B38);
    sub_269C41B78(v142, &v143[*(v144 + 48)], sub_269C40B38);
    sub_269C41C48(v128, sub_269C40B38);
    v145 = *(v138 + 8);
    v145(v122, v141);
    sub_269C41C48(v142, sub_269C40B38);
    v145(v140, v141);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269C36240@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a2 + *(type metadata accessor for Somnogram(0) + 20)) & 0x20) != 0)
  {
    v6 = sub_269D99D20();
  }

  else
  {
    sub_269CDC914(v5);
    v6 = sub_269D99CC0();
  }

  v7 = v6;

  *a3 = v7;
  return result;
}

uint64_t sub_269C36318(uint64_t a1)
{
  sub_269C3E9E4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v9 - 2) = a1;
  sub_269C3EA48();
  sub_269C3EF3C();
  sub_269D985A0();
  sub_269C37338();
  type metadata accessor for Somnogram(0);
  sub_269C4264C(&qword_280C0B6B0, sub_269C3E9E4);
  sub_269D98450();

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_269C3654C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Somnogram(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *a1;
  sub_269C424F0(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Somnogram);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_269C422C4(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Somnogram);
  sub_269C3EB10(0);
  sub_269C3EB44();
  sub_269C4264C(&qword_280C0B508, sub_269C3EB10);
  sub_269C3EC88();
  v9 = v8;
  sub_269C3ED88();
  v11 = v10;
  sub_269C3EE50();
  v13 = v12;
  v14 = sub_269D98480();

  v15 = MEMORY[0x277D837D0];
  v22 = v14;
  v23 = MEMORY[0x277D837D0];
  v24 = MEMORY[0x277CBB2F8];
  v25 = MEMORY[0x277CBB570];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v13;
  v23 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v22 = v11;
  v23 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_269C3EEE8();
  v22 = v9;
  v23 = v15;
  v24 = v18;
  v25 = v19;
  swift_getOpaqueTypeConformance2();
  sub_269C4264C(&qword_280C0B9B8, type metadata accessor for SleepStageSegment);
  sub_269D9A070();
}

uint64_t sub_269C3688C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v81 = a1;
  v78 = a3;
  v3 = sub_269D99120();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C420D4(0, &qword_280C0B6C0, MEMORY[0x277D837D0], MEMORY[0x277CBB570], MEMORY[0x277CBB340]);
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v71 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57[2] = v57 - v8;
  v80 = sub_269D97580();
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C4232C(0, &qword_280C0B6C8, MEMORY[0x277CC9578], MEMORY[0x277CBB1E8], MEMORY[0x277CBB340]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v79 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v57 - v15;
  v61 = sub_269D98480();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3EE50();
  v65 = v18;
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3ED88();
  v68 = v20;
  v64 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v62 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3EC88();
  v69 = *(v22 - 8);
  v70 = v22;
  MEMORY[0x28223BE20](v22);
  v67 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v66 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D99100();
  v57[0] = *(type metadata accessor for SleepStageSegment(0) + 20);
  v24 = v81;
  sub_269D96FD0();
  v57[1] = v16;
  v25 = v80;
  sub_269D98500();

  v26 = *(v9 + 8);
  v26(v11, v25);
  sub_269D99100();
  sub_269D96FA0();
  sub_269D98500();

  v26(v11, v25);
  sub_269D99100();
  v27 = *v24;
  if (v27 == 4)
  {
    v28 = sub_269D9B280();
    v29 = (v28 & 1) == 0;
    if (v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0x65656C5365726F63;
    }

    if (v29)
    {
      v31 = 0xE900000000000070;
    }

    else
    {
      v31 = 0xE000000000000000;
    }
  }

  else
  {
    v30 = sub_269CDB810(*v24);
    v31 = v32;
  }

  v33 = MEMORY[0x277CBB570];
  v84 = v30;
  v85 = v31;
  v34 = MEMORY[0x277D837D0];
  sub_269D98500();

  v35 = v58;
  sub_269D98470();
  sub_269D99100();
  if (v27 == 4)
  {
    v36 = sub_269D9B280();
    v37 = (v36 & 1) == 0;
    if (v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = 0x65656C5365726F63;
    }

    if (v37)
    {
      v39 = 0xE900000000000070;
    }

    else
    {
      v39 = 0xE000000000000000;
    }
  }

  else
  {
    v38 = sub_269CDB810(v27);
    v39 = v40;
  }

  v84 = v38;
  v85 = v39;
  v41 = v71;
  sub_269D98500();

  v42 = MEMORY[0x277CBB2F8];
  v43 = v60;
  v44 = v61;
  sub_269D98430();
  (*(v72 + 8))(v41, v73);
  (*(v59 + 8))(v35, v44);
  type metadata accessor for Somnogram(0);
  v45 = v75;
  v47 = v76;
  v46 = v77;
  (*(v76 + 104))(v75, *MEMORY[0x277CE0118], v77);
  v84 = v44;
  v85 = v34;
  v86 = v42;
  v87 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v62;
  v50 = v65;
  sub_269D98420();
  (*(v47 + 8))(v45, v46);
  (*(v63 + 8))(v43, v50);
  v84 = v50;
  v85 = OpaqueTypeConformance2;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v67;
  v53 = v68;
  sub_269D98460();
  (*(v64 + 8))(v49, v53);
  v84 = sub_269C342CC();
  v85 = v54;
  v82 = v53;
  v83 = v51;
  swift_getOpaqueTypeConformance2();
  sub_269C3EEE8();
  v55 = v70;
  sub_269D98440();

  (*(v69 + 8))(v52, v55);
}

uint64_t sub_269C37338()
{
  v1 = v0;
  v74 = sub_269D99180();
  v2 = *(v74 - 8);
  v3 = MEMORY[0x28223BE20](v74);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v65 - v6;
  v8 = sub_269D989F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  v15 = *(v1 + *(type metadata accessor for Somnogram(0) + 20));
  v73 = v14;
  if ((v15 & 0x20) != 0)
  {
    sub_269C41CB8(0, &qword_280C0B450, MEMORY[0x277CE0F78], MEMORY[0x277D84560]);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_269D9EBE0;
    v70 = sub_269D99CE0();
    v44 = *MEMORY[0x277CDF3D0];
    v69 = v5;
    v67 = v9;
    v45 = v9[13];
    v45(v14, v44, v8);
    v46 = v8;
    v47 = v7;
    sub_269C40D78(sub_269C414DC, sub_269C414DC, MEMORY[0x277CE0228], v7);
    v68 = objc_opt_self();
    v45(v12, *MEMORY[0x277CDF3C0], v8);
    LODWORD(v66) = sub_269D989E0();
    v48 = v67[1];
    v48(v12, v8);
    v49 = v69;
    v50 = v74;
    (*(v2 + 104))(v69, *MEMORY[0x277CE0220], v74);
    v51 = v47;
    LOBYTE(v47) = sub_269D989E0();
    v52 = *(v2 + 8);
    v52(v49, v50);
    [v68 somnogramBackgroundOpacityWithIsDarkMode:v66 & 1 isHighContrast:v47 & 1 isGrayScale:1];
    v52(v51, v50);
    v48(v73, v46);
    v53 = sub_269D99D30();

    *(v71 + 32) = v53;
    return MEMORY[0x26D6503A0]();
  }

  else
  {
    v16 = objc_opt_self();
    v72 = v8;
    v17 = v16;
    v18 = [v16 hk_sleepAwakeColor];
    v68 = sub_269D99CC0();
    v19 = [v17 hk_sleepAsleepREMColor];
    v71 = sub_269D99CC0();
    v20 = [v17 hk_sleepAsleepCoreColor];
    v70 = sub_269D99CC0();
    v21 = [v17 hk_sleepAsleepDeepColor];
    v69 = sub_269D99CC0();
    sub_269C40D78(sub_269C414A8, sub_269C414A8, MEMORY[0x277CDF3E0], v14);
    sub_269C40D78(sub_269C414DC, sub_269C414DC, MEMORY[0x277CE0228], v7);
    v67 = objc_opt_self();
    v22 = v72;
    (v9[13])(v12, *MEMORY[0x277CDF3C0], v72);
    v23 = sub_269D989E0();
    v24 = v12;
    v25 = v9[1];
    v25(v24, v22);
    v26 = *MEMORY[0x277CE0220];
    v27 = *(v2 + 104);
    v28 = v5;
    v66 = v1;
    v29 = v5;
    v30 = v74;
    v27(v28, v26, v74);
    v31 = sub_269D989E0();
    v32 = *(v2 + 8);
    v32(v29, v30);
    [v67 somnogramBackgroundOpacityWithIsDarkMode:v23 & 1 isHighContrast:v31 & 1 isGrayScale:0];
    v32(v7, v30);
    v25(v73, v72);
    v33 = *v66;
    v34 = sub_269CDBD9C(0, *v66);
    v35 = sub_269CDBD9C(1u, v33);
    v36 = sub_269CDBD9C(2u, v33);
    v37 = sub_269CDBD9C(3u, v33);
    v38 = v37 > 2.22507386e-308;
    v39 = sub_269CDBD9C(4u, v33);
    v75 = MEMORY[0x277D84F90];
    if (v34 <= 2.22507386e-308)
    {
      v40 = 0;
      v38 = v37 > 2.22507386e-308 && v35 > 2.22507386e-308;
    }

    else
    {
      v40 = fmax(v36, v37) > 2.22507386e-308;
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(inited + 32) = sub_269D9A130();
      *(inited + 40) = v42;
      sub_269D99D30();
      *(inited + 48) = sub_269D9A130();
      *(inited + 56) = v43;
      sub_269C49C3C(inited);
    }

    if (v35 > 2.22507386e-308 || v40 || v39 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v55 + 32) = sub_269D9A130();
      *(v55 + 40) = v56;
      sub_269D99D30();
      *(v55 + 48) = sub_269D9A130();
      *(v55 + 56) = v57;
      sub_269C49C3C(v55);
    }

    if (v36 > 2.22507386e-308 || v38 || v39 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v58 = swift_initStackObject();
      *(v58 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v58 + 32) = sub_269D9A130();
      *(v58 + 40) = v59;
      sub_269D99D30();
      *(v58 + 48) = sub_269D9A130();
      *(v58 + 56) = v60;
      sub_269C49C3C(v58);
    }

    if (v37 > 2.22507386e-308 || v39 > 2.22507386e-308)
    {
      sub_269C41CB8(0, &qword_280C0B448, MEMORY[0x277CE1308], MEMORY[0x277D84560]);
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_269D9EBF0;
      sub_269D99D30();
      *(v61 + 32) = sub_269D9A130();
      *(v61 + 40) = v62;
      sub_269D99D30();
      *(v61 + 48) = sub_269D9A130();
      *(v61 + 56) = v63;
      sub_269C49C3C(v61);
    }

    v64 = sub_269D9A140();

    return v64;
  }
}

uint64_t sub_269C37CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = sub_269D98520();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Somnogram(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C41A14(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D97780();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D984D0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_269D984A0();
  MEMORY[0x28223BE20](v14 - 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98490();
  (*(v10 + 104))(v12, *MEMORY[0x277CC99A0], v9);
  v15 = sub_269D977A0();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_269D984B0();
  sub_269C42558(v8, sub_269C41A14);
  (*(v10 + 8))(v12, v9);
  v16 = v23;
  sub_269C424F0(v24, v23, type metadata accessor for Somnogram);
  v17 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v18 = swift_allocObject();
  sub_269C422C4(v16, v18 + v17, type metadata accessor for Somnogram);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_269C41A48;
  *(v19 + 24) = v18;
  sub_269D98510();
  sub_269C3FB30(0, &qword_280C0B1D8, sub_269C3F138, sub_269C3F1F0);
  sub_269C3F7A8();
  sub_269D98640();
}

uint64_t sub_269C38140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269C41AFC(0, &qword_280C0B1A0, sub_269C3F138, sub_269C3F1F0);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = v60 - v5;
  v6 = sub_269D98560();
  MEMORY[0x28223BE20](v6 - 8);
  v63 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D98590();
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F224();
  v66 = v10;
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F1F0(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v68 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = v60 - v15;
  v16 = sub_269D98630();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F16C();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3F138(0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v64 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v60 - v28;
  v30 = sub_269D98680();
  v71 = a2;
  v60[3] = a1;
  if (v30)
  {
    v31 = sub_269D98680();
    result = sub_269D98670();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v33 = v31 == result - 1;
  }

  else
  {
    v33 = 1;
  }

  v34 = *(v72 + *(type metadata accessor for Somnogram(0) + 20));
  if ((v34 & 0x80) != 0)
  {
    (*(v22 + 56))(v29, 1, 1, v21);
  }

  else
  {
    sub_269D98A20();
    v80 = v77;
    v81 = v78;
    v82 = v79;
    sub_269D98610();
    sub_269D985E0();
    (*(v17 + 8))(v19, v16);
    (*(v22 + 32))(v29, v24, v21);
    (*(v22 + 56))(v29, 0, 1, v21);
  }

  v35 = !v33;
  if ((v34 & 0x81) == 0x80)
  {
    v35 = 1;
  }

  if (v35)
  {
    v40 = 1;
    v37 = v71;
    v41 = v67;
    v42 = v66;
    v43 = v65;
  }

  else
  {
    v36 = sub_269D98680();
    v37 = v71;
    if (v36)
    {
      sub_269D9A220();
    }

    else
    {
      sub_269D9A210();
    }

    v60[1] = v39;
    v60[0] = v38;
    v44 = sub_269D98570();
    v60[2] = v60;
    MEMORY[0x28223BE20](v44);
    sub_269D98550();
    sub_269C3F348(0, &qword_280C0AFF8, sub_269C3F428, sub_269C3F5BC);
    v46 = v45;
    sub_269C3F428();
    v48 = v47;
    sub_269C3F528();
    v50 = v49;
    v51 = sub_269C3F5BC();
    v52 = sub_269C4264C(&qword_280C0B480, sub_269C3F528);
    v73 = v48;
    v74 = v50;
    v75 = v51;
    v76 = v52;
    v59[2] = v46;
    v59[3] = swift_getOpaqueTypeConformance2();
    v59[0] = sub_269C41CA8;
    v59[1] = v59;
    v53 = v61;
    sub_269D984E0();
    v43 = v65;
    v41 = v67;
    v42 = v66;
    (*(v65 + 32))(v67, v53, v66);
    v40 = 0;
  }

  (*(v43 + 56))(v41, v40, 1, v42);
  v54 = v64;
  sub_269C41B78(v29, v64, sub_269C3F138);
  v55 = v68;
  sub_269C41B78(v41, v68, sub_269C3F1F0);
  sub_269C3F8A4();
  v56 = v69;
  sub_269C41B78(v54, v69, sub_269C3F138);
  sub_269C40648(&qword_280C0B1A8, sub_269C3F1F0, sub_269C3F94C);
  v57 = v70;
  v58 = *(v70 + 48);
  sub_269C41B78(v55, v56 + v58, sub_269C3F1F0);
  sub_269C41BE0(v56, v37, sub_269C3F138);
  sub_269C41BE0(v56 + v58, v37 + *(v57 + 48), sub_269C3F1F0);
  sub_269C41C48(v41, sub_269C3F1F0);
  sub_269C41C48(v29, sub_269C3F138);
  sub_269C41C48(v55, sub_269C3F1F0);
  return sub_269C41C48(v54, sub_269C3F138);
}

uint64_t sub_269C389F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_269D984D0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_269D98520();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for Somnogram(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_269D984A0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98490();
  sub_269C424F0(a1, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Somnogram);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_269C422C4(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for Somnogram);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_269C41790;
  *(v11 + 24) = v10;
  sub_269D98510();
  sub_269D984C0();
  sub_269C3FB30(0, &qword_280C0B1C8, sub_269C3FAA8, sub_269C3FBB0);
  sub_269C3FDC0();
  sub_269D98640();
}

uint64_t sub_269C38CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_269C41AFC(0, &qword_280C0B1F0, sub_269C3FAA8, sub_269C3FBB0);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v82 = &v62 - v4;
  v5 = sub_269D98560();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D98590();
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3FBE4();
  v88 = v9;
  v87 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3FBB0(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v81 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v62 - v14;
  sub_269C41AFC(0, &qword_280C0B210, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  v79 = &v62 - v16;
  sub_269C3FB30(0, &qword_280C0B200, MEMORY[0x277CBB208], MEMORY[0x277CBB430]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v78 = &v62 - v20;
  v21 = sub_269D98600();
  MEMORY[0x28223BE20](v21 - 8);
  v77 = sub_269D98630();
  v76 = *(v77 - 8);
  v22 = MEMORY[0x28223BE20](v77);
  v85 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v74 = sub_269D98400();
  v26 = *(v74 - 8);
  v27 = MEMORY[0x28223BE20](v74);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v62 - v30;
  sub_269C3FAA8();
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v80 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v62 - v35;
  v73 = a1;
  if (sub_269D98680())
  {
    sub_269D98A20();
    v100 = v91;
    v101 = v92;
    v102 = v93;
    v66 = v31;
    sub_269D983F0();
    sub_269D985F0();
    sub_269D98A20();
    v97 = v94;
    v98 = v95;
    v99 = v96;
    v64 = v25;
    sub_269D98620();
    v37 = v26;
    v63 = *(v26 + 16);
    v65 = v29;
    v38 = v74;
    v63(v29, v31, v74);
    v67 = v19;
    v69 = v36;
    v68 = v18;
    v39 = v76;
    v40 = *(v76 + 16);
    v41 = v85;
    v42 = v25;
    v43 = v77;
    v40(v85, v42, v77);
    v44 = v79;
    v63(v79, v29, v38);
    v45 = v75;
    v46 = *(v75 + 48);
    v40(&v44[v46], v41, v43);
    v36 = v69;
    v47 = v78;
    (*(v37 + 32))(v78, v44, v38);
    (*(v39 + 32))(v47 + *(v45 + 48), &v44[v46], v43);
    v48 = *(v39 + 8);
    v48(v64, v43);
    v49 = *(v37 + 8);
    v49(v66, v38);
    v48(v85, v43);
    v49(v65, v38);
    sub_269C417C8(v47, v36);
    (*(v67 + 56))(v36, 0, 1, v68);
  }

  else
  {
    (*(v19 + 56))(v36, 1, 1, v18);
  }

  if ((*(v89 + *(type metadata accessor for Somnogram(0) + 20)) & 0x10) != 0)
  {
    v53 = 1;
    goto LABEL_9;
  }

  result = sub_269D98660();
  if (v90)
  {
    result = _s13SleepHealthUI0A5StageO8rawValueACSgSS_tcfC_0();
    if (result != 5)
    {
      MEMORY[0x28223BE20](result);
      sub_269D98580();
      sub_269D98550();
      sub_269C3FC78();
      v61[2] = v51;
      v61[3] = sub_269C4264C(&qword_280C0B558, sub_269C3FC78);
      v61[0] = sub_269C4185C;
      v61[1] = v61;
      v52 = v70;
      sub_269D984E0();
      (*(v87 + 32))(v86, v52, v88);
      v53 = 0;
LABEL_9:
      v54 = v86;
      (*(v87 + 56))(v86, v53, 1, v88);
      v55 = v80;
      sub_269C424F0(v36, v80, sub_269C3FAA8);
      v56 = v81;
      sub_269C424F0(v54, v81, sub_269C3FBB0);
      sub_269C40648(&qword_280C0B1E8, sub_269C3FAA8, sub_269C3FEF4);
      v57 = v82;
      sub_269C424F0(v55, v82, sub_269C3FAA8);
      sub_269C40648(&qword_280C0B6D0, sub_269C3FBB0, sub_269C3FFA4);
      v58 = v83;
      v59 = *(v83 + 48);
      sub_269C424F0(v56, v57 + v59, sub_269C3FBB0);
      v60 = v84;
      sub_269C422C4(v57, v84, sub_269C3FAA8);
      sub_269C422C4(v57 + v59, v60 + *(v58 + 48), sub_269C3FBB0);
      sub_269C42558(v54, sub_269C3FBB0);
      sub_269C42558(v36, sub_269C3FAA8);
      sub_269C42558(v56, sub_269C3FBB0);
      return sub_269C42558(v55, sub_269C3FAA8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269C398D4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_269C399A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_269C40090();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40054(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98530();
  sub_269C4264C(&qword_280C0B6B8, MEMORY[0x277CBB360]);
  sub_269D99A20();
  if ((*(a1 + *(type metadata accessor for Somnogram(0) + 20)) & 4) != 0)
  {
    v12 = 0x4000000000000000;
  }

  else
  {
    v12 = 0x4008000000000000;
  }

  v13 = sub_269D995D0();
  (*(v5 + 32))(v11, v7, v4);
  v14 = &v11[*(v9 + 36)];
  *v14 = v13;
  *(v14 + 1) = 0;
  *(v14 + 2) = v12;
  *(v14 + 3) = 0;
  *(v14 + 4) = v12;
  v14[40] = 0;
  sub_269C41BE0(v11, v17, sub_269C40054);
}

uint64_t sub_269C39BEC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v117 = a3;
  sub_269C42240(0, &qword_280C0B070, sub_269C3D300, sub_269C3D430, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v7);
  v9 = &v106 - v8;
  sub_269C3D3E8(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C3D300();
  v118 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a2;
  if (a1)
  {
    v18 = &v13[*(v11 + 9)];
    sub_269C40224(0);
    sub_269D98E10();
    *v18 = swift_getKeyPath();
    sub_269C3D430();
    v116 = v19;
    (*(*(v19 - 8) + 16))(v13, v4, v19);
    MEMORY[0x26D6503F0](0.5, 0.7, 0.0);
    sub_269C3EB10(0);
    v21 = v20;
    v22 = sub_269C40258();
    v23 = sub_269C40648(&qword_280C0AF38, sub_269C3EB10, sub_269C406B8);
    sub_269D99980();

    sub_269C41C48(v13, sub_269C3D3E8);
    (*(v15 + 16))(v9, v17, v118);
    swift_storeEnumTagMultiPayload();
    v119 = v11;
    v120 = v21;
    v121 = v22;
    v122 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_269C3D7CC();
    v114 = v24;
    sub_269C40054(255);
    v113 = v25;
    sub_269C3DB1C();
    v112 = v26;
    sub_269C3DE38();
    v110 = v27;
    v28 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v30 = v29;
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v28);
    v109 = v31;
    sub_269C3E0D8();
    v108 = v32;
    sub_269C3FA14();
    v107 = v33;
    sub_269C3E308();
    v35 = v34;
    sub_269C3E500();
    v111 = v9;
    v37 = v36;
    sub_269C3E684();
    v39 = v38;
    sub_269C3F0A4();
    v41 = v40;
    sub_269C3E788();
    v43 = v42;
    sub_269C3E85C();
    v45 = v44;
    v46 = sub_269D98540();
    v47 = sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    v119 = v45;
    v120 = v46;
    v121 = v47;
    v122 = MEMORY[0x277CBB398];
    v48 = swift_getOpaqueTypeConformance2();
    v119 = v43;
    v120 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    v119 = v39;
    v120 = v41;
    v121 = v49;
    v122 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = sub_269C3F980();
    v119 = v37;
    v120 = v30;
    v121 = v51;
    v122 = v52;
    v53 = swift_getOpaqueTypeConformance2();
    v119 = v35;
    v120 = v53;
    v54 = swift_getOpaqueTypeConformance2();
    v55 = sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    v119 = v108;
    v120 = v107;
    v121 = v54;
    v122 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = sub_269C3FFD8();
    v119 = v110;
    v120 = v30;
    v121 = v109;
    v122 = v56;
    v123 = v52;
    v124 = v57;
    v125 = MEMORY[0x277CE0F60];
    v58 = swift_getOpaqueTypeConformance2();
    v119 = v112;
    v120 = v58;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = sub_269C40144();
    v119 = v114;
    v120 = v113;
    v121 = v59;
    v122 = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v118;
    sub_269D992D0();
    return (*(v15 + 8))(v17, v61);
  }

  else
  {
    sub_269C3D430();
    v116 = v63;
    (*(*(v63 - 8) + 16))(v9, v4, v63);
    swift_storeEnumTagMultiPayload();
    sub_269C3EB10(255);
    v65 = v64;
    v66 = sub_269C40258();
    v67 = sub_269C40648(&qword_280C0AF38, sub_269C3EB10, sub_269C406B8);
    v119 = v11;
    v120 = v65;
    v121 = v66;
    v122 = v67;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_269C3D7CC();
    v114 = v68;
    sub_269C40054(255);
    v113 = v69;
    sub_269C3DB1C();
    v112 = v70;
    sub_269C3DE38();
    v111 = v71;
    v72 = MEMORY[0x277D83940];
    sub_269C41CB8(255, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v74 = v73;
    sub_269C41CB8(255, &qword_280C0B500, MEMORY[0x277CE0F78], v72);
    v110 = v75;
    sub_269C3E0D8();
    v109 = v76;
    sub_269C3FA14();
    v78 = v77;
    sub_269C3E308();
    v80 = v79;
    sub_269C3E500();
    v82 = v81;
    sub_269C3E684();
    v84 = v83;
    sub_269C3F0A4();
    v86 = v85;
    sub_269C3E788();
    v88 = v87;
    sub_269C3E85C();
    v90 = v89;
    v91 = sub_269D98540();
    v92 = sub_269C4264C(&qword_280C0B6A0, sub_269C3E85C);
    v119 = v90;
    v120 = v91;
    v121 = v92;
    v122 = MEMORY[0x277CBB398];
    v93 = swift_getOpaqueTypeConformance2();
    v119 = v88;
    v120 = v93;
    v94 = swift_getOpaqueTypeConformance2();
    v95 = sub_269C4264C(&qword_280C0B198, sub_269C3F0A4);
    v119 = v84;
    v120 = v86;
    v121 = v94;
    v122 = v95;
    v96 = swift_getOpaqueTypeConformance2();
    v97 = sub_269C3F980();
    v119 = v82;
    v120 = v74;
    v121 = v96;
    v122 = v97;
    v98 = swift_getOpaqueTypeConformance2();
    v119 = v80;
    v120 = v98;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = sub_269C4264C(&qword_280C0B188, sub_269C3FA14);
    v119 = v109;
    v120 = v78;
    v121 = v99;
    v122 = v100;
    v101 = swift_getOpaqueTypeConformance2();
    v102 = sub_269C3FFD8();
    v119 = v111;
    v120 = v74;
    v121 = v110;
    v122 = v101;
    v123 = v97;
    v124 = v102;
    v125 = MEMORY[0x277CE0F60];
    v103 = swift_getOpaqueTypeConformance2();
    v119 = v112;
    v120 = v103;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = sub_269C40144();
    v119 = v114;
    v120 = v113;
    v121 = v104;
    v122 = v105;
    swift_getOpaqueTypeConformance2();
    return sub_269D992D0();
  }
}