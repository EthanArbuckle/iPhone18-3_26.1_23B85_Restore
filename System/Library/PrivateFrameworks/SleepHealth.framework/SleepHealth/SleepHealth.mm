id HDSleepHealthDaemonPluginServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9CF50];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion_ argumentIndex:0 ofReply:0];
  v2 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_269BD0AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_269BD0BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_269BD0C84()
{
  v1 = (type metadata accessor for SleepScoreDaySummaryQueryDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_269BF8508();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = v1[10];
  v9 = sub_269BF8628();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269BD0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269BF8508();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_269BF8628();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_269BD0EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269BF8508();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_269BF8628();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_269BD1004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269BD103C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_269BD109C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_269BF83D8();
  __break(1u);
}

uint64_t sub_269BD10E0(uint64_t *a1)
{
  v2 = *a1;
  sub_269BDE2AC();
  return sub_269BF86C8();
}

uint64_t sub_269BD1188()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269BD1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BD8758();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_269BF8508();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_269BD131C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269BD8758();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_269BF8508();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_269BD1424(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_269BD14D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269BD1578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  *a2 = result;
  return result;
}

void sub_269BD1618(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.getter(&v4);
  *a2 = v4;
}

void sub_269BD1654(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(&v3);
}

BOOL sub_269BD16D8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter();
  *a2 = result;
  return result;
}

uint64_t sub_269BD1730()
{
  v1 = sub_269BF8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269BD17B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269BD1800()
{
  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 98, 7);
}

uint64_t sub_269BD188C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269BF8688();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_269BF8508();
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

  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  if (*(*(started - 8) + 84) == a2)
  {
    v8 = started;
    v12 = *(started - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  sub_269BD3170();
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_269BD1A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269BF8688();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269BF8508();
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

  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  if (*(*(started - 8) + 84) == a3)
  {
    v10 = started;
    v14 = *(started - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  sub_269BD3170();
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[9];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269BD1BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BF8458();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BD1C14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_269BF8458();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_269BD1C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_269BF8458();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269BD1D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_269BF8458();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void static SleepScoreAlgorithmVersion.current.getter(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      v5 = [v4 sleepResultsNotificationsOnWatch];

      *a1 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

SleepHealth::SleepScoreAlgorithmVersion_optional __swiftcall SleepScoreAlgorithmVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SleepScoreAlgorithmVersion.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_269BD1E7C()
{
  v1 = *v0;
  sub_269BF8C18();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BD1ECC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x26D64C450](v1);
}

uint64_t sub_269BD1F04()
{
  v1 = *v0;
  sub_269BF8C18();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

void *sub_269BD1F50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_269BD1F70(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

void __swiftcall SleepScore.init(sleepDurationPoints:deepSleepDurationPoints:remSleepDurationPoints:sleepStartPunctualityPoints:awakeInterruptionPoints:awakeDurationPoints:)(SleepHealth::SleepScore *__return_ptr retstr, Swift::Int sleepDurationPoints, Swift::Int deepSleepDurationPoints, Swift::Int remSleepDurationPoints, Swift::Int sleepStartPunctualityPoints, Swift::Int awakeInterruptionPoints, Swift::Int awakeDurationPoints)
{
  retstr->sleepDurationPoints = sleepDurationPoints;
  retstr->deepSleepDurationPoints = deepSleepDurationPoints;
  retstr->remSleepDurationPoints = remSleepDurationPoints;
  retstr->sleepStartPunctualityPoints = sleepStartPunctualityPoints;
  retstr->awakeInterruptionPoints = awakeInterruptionPoints;
  retstr->awakeDurationPoints = awakeDurationPoints;
}

uint64_t SleepScore.awakePoints.getter()
{
  if (*(v0 + 40) >= *(v0 + 32))
  {
    return *(v0 + 32);
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t SleepScore.totalPoints.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[2];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v0[3];
  v4 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[4];
  if (v0[5] < v8)
  {
    v8 = v0[5];
  }

  result = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t SleepScore.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  return MEMORY[0x26D64C450](v5);
}

uint64_t SleepScore.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  return sub_269BF8C58();
}

uint64_t sub_269BD22B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  return sub_269BF8C58();
}

uint64_t sub_269BD2354()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  return MEMORY[0x26D64C450](v5);
}

uint64_t sub_269BD23C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  return sub_269BF8C58();
}

uint64_t sub_269BD246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269BD3170();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BD31C8(a1 + *(v13 + 36), v7);
  v14 = (*(v9 + 48))(v7, 1, v8);
  if (v14 == 1)
  {
    sub_269BD3290(a1, type metadata accessor for SleepScoreMetricsDaySummary);
    result = sub_269BD3290(v7, sub_269BD3170);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    sub_269BD322C(v7, v12);
    v19 = sub_269BD2A8C(*(a1 + *(v13 + 28)), *(a1 + *(v13 + 28) + 8), *v12);
    v20 = sub_269BD2C20(*&v12[*(v8 + 32)]);
    v21 = sub_269BD2CA4(*&v12[*(v8 + 36)]);
    started = SleepScoreMetricsDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter();
    v16 = sub_269BD2D28(started, v23 & 1);
    v17 = sub_269BD2F1C(*(v12 + 1));
    v18 = sub_269BD3028(*(v12 + 2));
    sub_269BD3290(a1, type metadata accessor for SleepScoreMetricsDaySummary);
    result = sub_269BD3290(v12, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
  }

  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v14 == 1;
  return result;
}

BOOL _s11SleepHealth0A5ScoreV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0])
  {
    return a1[2].i64[1] == a2[2].i64[1];
  }

  return result;
}

unint64_t sub_269BD271C()
{
  result = qword_28034A578;
  if (!qword_28034A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A578);
  }

  return result;
}

unint64_t sub_269BD2774()
{
  result = qword_28034A580;
  if (!qword_28034A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreAlgorithmVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreAlgorithmVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_269BD293C(uint64_t a1, int a2)
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

uint64_t sub_269BD295C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SleepScore.Max(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SleepScore.Max(_WORD *result, int a2, int a3)
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

uint64_t sub_269BD2A8C(uint64_t a1, char a2, double a3)
{
  if (a2)
  {
    v4 = HKSleepDurationGoalAdultRecommendation();
    v5 = [objc_opt_self() secondUnit];
    [v4 doubleValueForUnit_];
    v7 = v6;
  }

  else
  {
    v7 = *&a1;
  }

  result = 0;
  if (v7 > 0.0 && a3 > 0.0)
  {
    if (v7 < a3)
    {
      v9 = (a3 - v7) / 3600.0;
      v10 = 1.0;
      if (v9 <= 1.0)
      {
        v10 = (a3 - v7) / 3600.0;
      }

      v11 = v10 * 4.0 + 36.0;
      if (v9 > 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 36.0;
      }

      v13 = round(v12);
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v13 <= -9.22337204e18)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 < 9.22337204e18)
      {
        return v13;
      }

      __break(1u);
    }

    v13 = a3 * a3 * (36.0 / (v7 * v7));
    if (COERCE__INT64(fabs(v13)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          return v13;
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269BD2C20(double a1)
{
  v1 = a1 / 1200.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  v3 = v2 * 5.0 + 0.0;
  if (v1 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = trunc(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BD2CA4(double a1)
{
  v1 = a1 / 1800.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  v3 = v2 * 5.0 + 0.0;
  if (v1 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = trunc(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BD2D28(uint64_t result, char a2)
{
  if (a2)
  {
    return 30;
  }

  v2 = *&result;
  if (*&result <= -3600.0)
  {
    goto LABEL_15;
  }

  if (*&result <= 900.0)
  {
    return 30;
  }

  if (*&result > 1800.0)
  {
    v3 = (*&result + -1800.0) / 7200.0;
    v4 = 1.0;
    if (v3 <= 1.0)
    {
      v4 = (*&result + -1800.0) / 7200.0;
    }

    v5 = 27.0 - v4 * 27.0;
    if (v3 > 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 27.0;
    }

    v2 = round(v6);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_36;
    }

    if (v2 <= -9.22337204e18)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    __break(1u);
LABEL_15:
    v7 = (v2 + 3600.0) / -3600.0;
    v8 = 1.0;
    if (v7 <= 1.0)
    {
      v8 = v7;
    }

    v9 = v8 * -6.0 + 30.0;
    if (v7 > 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 30.0;
    }

    v2 = round(v10);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v2 > -9.22337204e18)
      {
        if (v2 < 9.22337204e18)
        {
          return v2;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = (*&result + -900.0) / 900.0;
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = (*&result + -900.0) / 900.0;
  }

  v13 = v12 * -3.0 + 30.0;
  if (v11 > 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 30.0;
  }

  v2 = round(v14);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_269BD2F1C(uint64_t result)
{
  if (result < 3)
  {
    return 20;
  }

  if (result > 5)
  {
    v1 = (result - 5) / 10.0;
    v2 = 1.0;
    if (v1 <= 1.0)
    {
      v2 = (result - 5) / 10.0;
    }

    v3 = 18.0 - v2 * 18.0;
    if (v1 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 18.0;
    }

    v5 = round(v4);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 >= 9.22337204e18)
        {
          __break(1u);
          return 20;
        }

        return v5;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = (result - 2) / 3.0;
  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = (result - 2) / 3.0;
  }

  v8 = 20.0 - (v7 + v7);
  if (v6 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 20.0;
  }

  v5 = round(v9);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_269BD3028(double a1)
{
  if (a1 <= 600.0)
  {
    return 20;
  }

  if (a1 > 1200.0)
  {
    v1 = (a1 + -1200.0) / 4200.0;
    v2 = 1.0;
    if (v1 <= 1.0)
    {
      v2 = v1;
    }

    v3 = 18.0 - v2 * 18.0;
    if (v1 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 18.0;
    }

    v5 = round(v4);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 >= 9.22337204e18)
        {
          __break(1u);
          return 20;
        }

        return v5;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = (a1 + -600.0) / 600.0;
  v8 = 1.0;
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  v9 = 20.0 - (v8 + v8);
  if (v7 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 20.0;
  }

  v5 = round(v10);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_269BD3170()
{
  if (!qword_280B61698[0])
  {
    type metadata accessor for SleepScoreMetricsDaySummary.Metrics(255);
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, qword_280B61698);
    }
  }
}

uint64_t sub_269BD31C8(uint64_t a1, uint64_t a2)
{
  sub_269BD3170();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BD322C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BD3290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepScoreMetricsDaySummaryBuilder()
{
  result = qword_280B614C0;
  if (!qword_280B614C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269BD3364()
{
  sub_269BD8044(319, &unk_280B61420, MEMORY[0x277CCB6A8]);
  if (v0 <= 0x3F)
  {
    sub_269BD8168(319, &qword_28034A4B0, &type metadata for SleepScoreMetricsDaySummaryBuilder.SleepStart, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_269BD3444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_269BD34A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_269BD3504(double a1)
{
  v2 = sub_269BF8538();
  result = sub_269BF8538();
  v4 = v2 - result;
  if (__OFSUB__(v2, result))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4 < a1;
    }

    v5 = __OFSUB__(0, v4);
    v4 = result - v2;
    if (!v5)
    {
      return v4 < a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269BD3590(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_269BF8558();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269BF2AC8(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_269BF2AC8(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_269BD3860()
{
  v0 = sub_269BF8538();
  result = sub_269BF8538();
  v2 = v0 - result;
  if (__OFSUB__(v0, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 < 0)
  {
    v3 = __OFSUB__(0, v2);
    v2 = result - v0;
    if (v3)
    {
      goto LABEL_15;
    }
  }

  v4 = sub_269BF8528();
  v6 = v5;
  v7 = sub_269BF8538();
  result = sub_269BF8538();
  v8 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v3 = __OFSUB__(0, v8);
    v8 = result - v7;
    if (v3)
    {
      goto LABEL_16;
    }
  }

  v9 = sub_269BF8528();
  if (v2 == v8)
  {
    if (v4 == v9 && v6 == v10)
    {

      return 0;
    }

    else
    {
      v11 = sub_269BF8BB8();

      return v11 & 1;
    }
  }

  else
  {

    return v2 < v8;
  }
}

uint64_t sub_269BD39BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(type metadata accessor for SleepScoreMetricsDaySummaryBuilder() + 24));
  v10 = sub_269BE5F54(MEMORY[0x277D84F90]);
  v11 = 0;
  v12 = *(v9 + 16);
  v13 = v9 + 24;
LABEL_2:
  v14 = v13 + 32 * v11;
  while (v12 != v11)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      result = sub_269BF8BF8();
      __break(1u);
      return result;
    }

    ++v11;
    v15 = (v14 + 32);
    v16 = *(v14 + 16);
    v14 += 32;
    if ((v16 & 1) == 0)
    {
      v63 = v13;
      v64 = a1;
      v66 = a3;
      v67 = a4;
      v17 = *(v15 - 3);
      v65 = a2;
      if (*v15)
      {
        a1 = *(v15 - 1);
        a2 = *v15;
      }

      else
      {
        if (qword_28034A4D0 != -1)
        {
          swift_once();
        }

        v18 = sub_269BF8588();
        __swift_project_value_buffer(v18, qword_28034CE20);
        v19 = sub_269BF8568();
        v20 = sub_269BF8948();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v68 = v22;
          *v21 = 136446210;
          *(v21 + 4) = sub_269BD5228(0xD000000000000022, 0x8000000269BF9A50, &v68);
          _os_log_impl(&dword_269BCF000, v19, v20, "[%{public}s] Unexpectedly didn't find a time zone. Query may have been incorrectly configured.", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x26D64CB60](v22, -1, -1);
          MEMORY[0x26D64CB60](v21, -1, -1);
        }
      }

      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v10;
      v24 = a1;
      v26 = sub_269BE5A70(a1, a2);
      v27 = v10[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_45;
      }

      v30 = v25;
      if (v10[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_269BD736C();
          v10 = v68;
          if ((v30 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_20:

        goto LABEL_24;
      }

      sub_269BD70D0(v29, isUniquelyReferenced_nonNull_native);
      v10 = v68;
      v31 = sub_269BE5A70(v24, a2);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }

      v26 = v31;
      if (v30)
      {
        goto LABEL_20;
      }

LABEL_22:
      v10[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v10[6] + 16 * v26);
      *v33 = v24;
      v33[1] = a2;
      *(v10[7] + 8 * v26) = MEMORY[0x277D84F90];
      v34 = v10[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_46;
      }

      v10[2] = v36;
LABEL_24:
      v37 = v10[7];
      v38 = *(v37 + 8 * v26);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v26) = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_269BF245C(0, *(v38 + 2) + 1, 1, v38);
        *(v37 + 8 * v26) = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        *(v37 + 8 * v26) = sub_269BF245C((v40 > 1), v41 + 1, 1, v38);
      }

      v42 = *(v37 + 8 * v26);
      *(v42 + 16) = v41 + 1;
      *(v42 + 8 * v41 + 32) = v17;
      a3 = v66;
      a4 = v67;
      a1 = v64;
      a2 = v65;
      v13 = v63;
      goto LABEL_2;
    }
  }

  v43 = sub_269BD74D0(a1, a2, a3, v10, 10800.0);
  v44 = *(v43 + 16);
  if (!v44)
  {

    v49 = v10[2];

    v50 = sub_269BF8458();
    v51 = *(*(v50 - 8) + 56);
    v52 = a4;
    if (v49)
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    goto LABEL_40;
  }

  v45 = v43;

  if (v44 > 3)
  {
    v46 = v44 & 0x7FFFFFFFFFFFFFFCLL;
    v48 = v45;
    v54 = v45 + 48;
    v47 = 0.0;
    v55 = v44 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v56 = *v54;
      v47 = v47 + *(v54 - 16) + *(v54 - 8) + *v54 + *(v54 + 8);
      v54 += 32;
      v55 -= 4;
    }

    while (v55);
    if (v44 == v46)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0.0;
    v48 = v45;
  }

  v57 = v44 - v46;
  v58 = (v48 + 8 * v46 + 32);
  do
  {
    v59 = *v58++;
    v47 = v47 + v59;
    --v57;
  }

  while (v57);
LABEL_39:
  v60 = *(v48 + 16);

  sub_269BF8428();
  v61 = sub_269BF8458();
  v51 = *(*(v61 - 8) + 56);
  v50 = v61;
  v52 = a4;
  v53 = 0;
LABEL_40:

  return v51(v52, v53, 2, v50);
}

uint64_t sub_269BD3ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v149 = sub_269BF8508();
  v148 = *(v149 - 8);
  v4 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v157 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v160 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_269BF8558();
  v145 = *(v146 - 8);
  v9 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_269BF82A8();
  v152 = *(v153 - 8);
  v11 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD8044(0, &qword_280B61578, MEMORY[0x277CC9578]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v165 = &v139 - v15;
  v16 = sub_269BF8458();
  v17 = *(v16 - 8);
  v163 = v16;
  v164 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v150 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v155 = &v139 - v21;
  sub_269BD8044(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v147 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v168 = (&v139 - v26);
  v27 = MEMORY[0x277CCB6A8];
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v159 = &v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v139 - v32;
  v34 = sub_269BF8688();
  v35 = *(v34 - 1);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v156 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v139 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v139 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v139 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v139 - v48;
  v169 = a1;
  [a1 morningIndex];
  sub_269BF8638();
  v50 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  v158 = *(v50 + 20);
  v51 = v27;
  v52 = v35;
  sub_269BD7D80(v170 + v158, v33, &unk_280B61420, v51);
  v53 = (*(v35 + 48))(v33, 1, v34);
  v167 = v34;
  if (v53 == 1)
  {
    sub_269BD51CC(v33, &unk_280B61420, MEMORY[0x277CCB6A8]);
  }

  else
  {
    (*(v35 + 32))(v47, v33, v34);
    sub_269BF8638();
    sub_269BF8648();
    v54 = v35;
    v55 = (v35 + 8);
    v56 = *(v35 + 8);
    v56(v41, v34);
    sub_269BD7F8C();
    v35 = sub_269BF8718();
    v56(v44, v34);
    v56(v47, v34);
    v52 = v54;
    if ((v35 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  v57 = *(v50 + 24);
  v55 = v170;
  v44 = *(v170 + v57);
  v58 = *v170;
  if (*v170 < *(v44 + 2))
  {
    __break(1u);
  }

  else
  {
    v59 = [v169 summaryFilteredWithOptions:5 strategyType:2];
    v166 = v49;
    if (!v59)
    {
      goto LABEL_30;
    }

    v34 = v59;
    v60 = [v59 periods];
    sub_269BD7EBC();
    v47 = sub_269BF8898();

    if (!(v47 >> 62))
    {
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

LABEL_29:

LABEL_30:
      v105 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
      v106 = *(*(v105 - 8) + 56);
      LODWORD(v155) = 1;
      v106(v168, 1, 1, v105);
      v162 = 0;
      v104 = 0;
      v2 = 0;
      v103 = v169;
      if (*(v44 + 2) == v58)
      {
        goto LABEL_31;
      }

LABEL_41:
      v165 = v104;
      v50 = v57;
      v134 = type metadata accessor for SleepScoreMetricsDaySummary(0);
      (*(*(v134 - 8) + 56))(v161, 1, 1, v134);
      [v103 morningIndex];
      v135 = v159;
      sub_269BF8638();
      v41 = v167;
      v52[7](v135, 0, 1, v167);
      sub_269BD7E50(v135, v55 + v158, &unk_280B61420, MEMORY[0x277CCB6A8]);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }
  }

  if (!sub_269BF8AD8())
  {
    goto LABEL_29;
  }

LABEL_8:
  v154 = v52;
  if ((v47 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x26D64C2D0](0, v47);
    v61 = v165;
  }

  else
  {
    v61 = v165;
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_16;
    }

    v62 = *(v47 + 32);
  }

  v52 = [v34 durationsForStrategyType_];

  sub_269BEA444(v61);
  v64 = v163;
  v63 = v164;
  if ((*(v164 + 48))(v61, 1, v163) == 1)
  {

    sub_269BD51CC(v61, &qword_280B61578, MEMORY[0x277CC9578]);
    v55 = v170;
    v52 = v154;
    goto LABEL_30;
  }

  (*(v63 + 32))(v155, v61, v64);
  v65 = [v62 timezoneName];
  v35 = v169;
  v142 = v62;
  if (v65)
  {

    goto LABEL_19;
  }

  if (qword_28034A4D0 != -1)
  {
    goto LABEL_49;
  }

LABEL_16:
  v66 = sub_269BF8588();
  __swift_project_value_buffer(v66, qword_28034CE20);
  v67 = sub_269BF8568();
  v68 = sub_269BF8948();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = v35;
    v71 = v57;
    v72 = swift_slowAlloc();
    v171 = v72;
    *v69 = 136446210;
    *(v69 + 4) = sub_269BD5228(0xD000000000000022, 0x8000000269BF9A50, &v171);
    _os_log_impl(&dword_269BCF000, v67, v68, "[%{public}s] Unexpectedly didn't find a time zone. Query may have been incorrectly configured.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v73 = v72;
    v57 = v71;
    v35 = v70;
    MEMORY[0x26D64CB60](v73, -1, -1);
    MEMORY[0x26D64CB60](v69, -1, -1);
  }

  v64 = v163;
LABEL_19:
  v74 = [v35 dateInterval];
  v75 = v151;
  sub_269BF8278();

  v76 = v150;
  sub_269BF8288();
  (*(v152 + 8))(v75, v153);
  sub_269BF8418();
  v2 = v77;
  v141 = *(v164 + 8);
  v141(v76, v64);
  v78 = v142;
  v79 = [v142 timezoneName];
  v143 = v57;
  if (v79)
  {
    v80 = v79;
    v162 = sub_269BF87E8();
    v165 = v81;
  }

  else
  {
    v162 = 0;
    v165 = 0;
  }

  v82 = [v169 durationsForStrategyType_];
  [v82 sleepDuration];
  v84 = v83;

  v140 = sub_269BEA6F4(0.0);
  [v52 awakeDuration];
  v86 = v85;
  v87 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v88 = v168;
  v89 = v78;
  v90 = v155;
  (*(v164 + 16))(v168 + v87[7], v155, v64);
  [v52 deepSleepDuration];
  v92 = v91;
  [v52 remSleepDuration];
  v94 = v93;
  [v52 coreSleepDuration];
  v96 = v95;
  [v52 remSleepDuration];
  v98 = v96 + v97;
  [v52 deepSleepDuration];
  v100 = v99;

  v141(v90, v163);
  *v88 = v84;
  v88[1] = v140;
  v88[2] = v86;
  *(v88 + v87[8]) = v92;
  *(v88 + v87[9]) = v94;
  *(v88 + v87[10]) = v98 + v100;
  (*(*(v87 - 1) + 56))(v88, 0, 1, v87);
  if (*(v44 + 2) != v58)
  {
    LODWORD(v155) = 0;
    v103 = v169;
    v55 = v170;
    v52 = v154;
    v57 = v143;
    v104 = v165;
    goto LABEL_41;
  }

  v55 = v170;
  v52 = v154;
  v57 = v143;
  v101 = v165;
  if (v165)
  {
    LODWORD(v155) = 0;
    v41 = v162;
    v102 = v165;
    v103 = v169;
    goto LABEL_32;
  }

  LODWORD(v155) = 0;
  v103 = v169;
LABEL_31:
  v107 = v144;
  sub_269BF8548();
  v41 = sub_269BF8528();
  v102 = v108;
  (*(v145 + 8))(v107, v146);
  v101 = 0;
LABEL_32:
  v165 = v101;

  v109 = [v103 dateInterval];
  v110 = v151;
  sub_269BF8278();

  v50 = v150;
  sub_269BF8288();
  (*(v152 + 8))(v110, v153);
  sub_269BD39BC(v41, v102, v50, v160);

  (*(v164 + 8))(v50, v163);
  if (!*(v44 + 2))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v44 = sub_269BF2578(0, *(v44 + 2) + 1, 1, v44);
LABEL_42:
    v133 = v166;
    v131 = *(v44 + 2);
    v130 = *(v44 + 3);
    v132 = v131 + 1;
    v129 = v50;
    if (v131 < v130 >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  sub_269BD7CC0(0, 1);
  v154 = v52;
  (v52[2])(v156, v166, v167);
  v111 = [v103 calendar];
  sub_269BF84F8();

  v112 = [v103 sleepDurationGoal];
  v113 = 0;
  v114 = 0;
  if (v112)
  {
    v115 = [objc_opt_self() secondUnit];
    [v112 doubleValueForUnit_];
    v114 = v116;
  }

  v143 = v57;
  v117 = [v103 minimumRecommendedSleepDurationGoal];
  if (v117)
  {
    v118 = [objc_opt_self() secondUnit];
    [v117 doubleValueForUnit_];
    v113 = v119;
  }

  LODWORD(v164) = v117 == 0;
  v120 = v112 == 0;
  v121 = v147;
  sub_269BD7D80(v168, v147, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v122 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v123 = v161;
  v124 = v161 + v122[6];
  v125 = v161 + v122[7];
  v126 = v122[9];
  v127 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v127 - 8) + 56))(v123 + v126, 1, 1, v127);
  v52 = v154;
  v41 = v167;
  (v154[4])(v123, v156, v167);
  (*(v148 + 32))(v123 + v122[5], v157, v149);
  *v124 = v114;
  *(v124 + 8) = v120;
  *v125 = v113;
  *(v125 + 8) = v164;
  sub_269BD7DEC(v160, v123 + v122[8]);
  sub_269BD7E50(v121, v123 + v126, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  (*(*(v122 - 1) + 56))(v123, 0, 1, v122);
  [v169 morningIndex];
  v128 = v159;
  sub_269BF8638();
  v52[7](v128, 0, 1, v41);
  v55 = v170;
  sub_269BD7E50(v128, v170 + v158, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v129 = v143;
  v44 = *(v55 + v143);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_269BF2578(0, *(v44 + 2) + 1, 1, v44);
  }

  v131 = *(v44 + 2);
  v130 = *(v44 + 3);
  v132 = v131 + 1;
  v133 = v166;
  if (v131 >= v130 >> 1)
  {
LABEL_40:
    v44 = sub_269BF2578((v130 > 1), v132, 1, v44);
  }

LABEL_43:
  sub_269BD51CC(v168, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  result = (v52[1])(v133, v41);
  *(v44 + 2) = v132;
  v137 = &v44[32 * v131];
  *(v137 + 4) = v2;
  v137[40] = v155;
  v138 = v165;
  *(v137 + 6) = v162;
  *(v137 + 7) = v138;
  *(v55 + v129) = v44;
  return result;
}

uint64_t sub_269BD51CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269BD8044(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BD5228(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269BD52F4(v11, 0, 0, 1, a1, a2);
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
    sub_269BD7FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269BD52F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269BD5400(a5, a6);
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
    result = sub_269BF8AB8();
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

uint64_t sub_269BD5400(uint64_t a1, unint64_t a2)
{
  v4 = sub_269BD544C(a1, a2);
  sub_269BD557C(&unk_287A95D90);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_269BD544C(uint64_t a1, unint64_t a2)
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

  v6 = sub_269BD5668(v5, 0);
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

  result = sub_269BF8AB8();
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
        v10 = sub_269BF8848();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269BD5668(v10, 0);
        result = sub_269BF8A78();
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

uint64_t sub_269BD557C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_269BD56F4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_269BD5668(uint64_t a1, uint64_t a2)
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

  sub_269BD8168(0, &qword_28034A710, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269BD56F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BD8168(0, &qword_28034A710, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_269BD5800(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_269BF8558() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_269BF0788(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_269BD58C0(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_269BD58C0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_269BF8B78();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_269BF8558();
        v9 = sub_269BF88A8();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_269BF8558() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_269BD5CE8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_269BD59FC(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_269BD59FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_269BF8558();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_269BD5CE8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_269BF8558();
  v12 = *(*(v163 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](&v134 - v24);
  v161 = v27;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v26;
  v139 = result;
  v151 = v21;
  v147 = v29;
  v148 = v28;
  v137 = a6;
  v31 = 0;
  v159 = (v27 + 8);
  v160 = v27 + 16;
  v155 = (v27 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      v37(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      result = (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        result = v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v64)(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                result = (v123)(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v33;
    if ((result & 1) == 0)
    {
      result = sub_269BF2314(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_269BF2314((v67 > 1), v68 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_269BD68F4(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_269BF064C(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    result = sub_269BF05C0(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
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
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_269BF064C(v32);
  v32 = result;
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_269BD68F4(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_269BF064C(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    result = sub_269BF05C0(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_269BD68F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v78 = sub_269BF8558();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  result = MEMORY[0x28223BE20](v17);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = &v70 - v21;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v27 = (a2 - a1) / v24;
    v86 = a1;
    v85 = a4;
    v81 = v24;
    if (v27 < v26 / v24)
    {
      v28 = v27 * v24;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v28;
      v84 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v54 = *(v11 + 16);
        v75 = v19;
        v76 = v11 + 16;
        v73 = v54;
        v74 = (v11 + 8);
        v55 = v25;
        v56 = v78;
        v57 = v6;
        v72 = a3;
        while (1)
        {
          v82 = a1;
          v58 = v73;
          v73(v55, a2, v56);
          v59 = a2;
          v60 = v55;
          v61 = v75;
          v58(v75, a4, v56);
          v62 = v80(v60, v61);
          if (v57)
          {
            break;
          }

          v63 = v62;
          v83 = 0;
          v64 = *v74;
          (*v74)(v61, v56);
          v64(v60, v56);
          v55 = v60;
          if (v63)
          {
            v65 = v81;
            v66 = v82;
            a2 = v59 + v81;
            if (v82 < v59 || v82 >= a2)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }
          }

          else
          {
            v65 = v81;
            v66 = v82;
            v67 = a4 + v81;
            a2 = v59;
            if (v82 < a4 || v82 >= v67)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }

            v85 = v67;
            a4 = v67;
          }

          a1 = v66 + v65;
          v86 = a1;
          if (a4 >= v77 || a2 >= v72)
          {
            goto LABEL_65;
          }
        }

        v68 = *v74;
        (*v74)(v61, v56);
        v68(v60, v56);
      }

LABEL_65:
      sub_269BD6FEC(&v86, &v85, &v84);
      return 1;
    }

    v77 = v22;
    v29 = a3;
    v30 = a2;
    v31 = v26 / v24 * v24;
    if (a4 < v30 || v30 + v31 <= a4)
    {
      v32 = v30;
      v33 = v78;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v30;
      v33 = v78;
      if (a4 == v30)
      {
LABEL_24:
        v83 = v6;
        v35 = a4 + v31;
        if (v31 >= 1)
        {
          v36 = -v24;
          v70 = a4;
          v71 = (v11 + 16);
          v73 = (v11 + 8);
          v37 = a4 + v31;
          v38 = v29;
          v39 = v77;
          v82 = a1;
          v75 = -v24;
          do
          {
            v76 = v35;
            v72 = v35;
            v40 = v32;
            v78 = v32 + v36;
            v74 = v32;
            while (1)
            {
              if (v40 <= a1)
              {
                v86 = v40;
                v35 = v72;
                goto LABEL_64;
              }

              v41 = v38;
              v42 = v75;
              v81 = v37;
              v43 = v37 + v75;
              v44 = *v71;
              (*v71)(v39, v37 + v75, v33);
              v44(v15, v78, v33);
              v45 = v39;
              v46 = v83;
              v47 = v80(v39, v15);
              v83 = v46;
              if (v46)
              {
                v69 = *v73;
                (*v73)(v15, v33);
                v69(v45, v33);
                v86 = v74;
                v35 = v76;
                goto LABEL_64;
              }

              v48 = v47;
              v49 = &v41[v42];
              v50 = v15;
              v51 = *v73;
              v52 = v50;
              (*v73)();
              v51(v45, v33);
              if (v48)
              {
                break;
              }

              v38 = &v41[v42];
              if (v41 < v81 || v49 >= v81)
              {
                swift_arrayInitWithTakeFrontToBack();
                v15 = v52;
                v39 = v77;
              }

              else
              {
                v15 = v52;
                v39 = v77;
                if (v41 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76 = v43;
              v37 = v43;
              a1 = v82;
              v40 = v74;
              if (v43 <= v70)
              {
                v32 = v74;
                v35 = v76;
                goto LABEL_63;
              }
            }

            v38 = &v41[v42];
            if (v41 < v74 || v49 >= v74)
            {
              v32 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v53 = v70;
              v15 = v52;
              v39 = v77;
            }

            else
            {
              v39 = v77;
              v32 = v78;
              v53 = v70;
              v15 = v52;
              if (v41 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v81;
            a1 = v82;
            v36 = v75;
            v35 = v76;
          }

          while (v81 > v53);
        }

LABEL_63:
        v86 = v32;
LABEL_64:
        v84 = v35;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v81;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_269BD6FEC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_269BF8558();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_269BD70D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_269BD80DC();
  v38 = a2;
  result = sub_269BF8B08();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_269BF8C18();
      sub_269BF8818();
      result = sub_269BF8C58();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_269BD736C()
{
  v1 = v0;
  sub_269BD80DC();
  v2 = *v0;
  v3 = sub_269BF8AF8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_269BD74D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v75 = a3;
  sub_269BD8044(0, &qword_28034A568, MEMORY[0x277CC9A70]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = sub_269BF8558();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v73 = &v66 - v28;
  MEMORY[0x28223BE20](v27);
  v76 = &v66 - v29;
  if (*(a4 + 16))
  {
    v30 = sub_269BE5A70(a1, a2);
    if (v31)
    {
      v32 = *(*(a4 + 56) + 8 * v30);
      if (*(v32 + 16))
      {
        v33 = *(*(a4 + 56) + 8 * v30);

        return v32;
      }
    }
  }

  v72 = v26;
  sub_269BF8518();
  v77 = v22[6];
  if (v77(v20, 1, v21) == 1)
  {
    sub_269BD51CC(v20, &qword_28034A568, MEMORY[0x277CC9A70]);
    return MEMORY[0x277D84F90];
  }

  v69 = v18;
  v70 = v22;
  v67 = v22[4];
  v68 = v22 + 4;
  v67(v76, v20, v21);
  v34 = 1 << *(a4 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a4 + 64);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  v71 = MEMORY[0x277D84F90];
  while (1)
  {
    v39 = v38;
    if (!v36)
    {
      break;
    }

LABEL_14:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = (*(a4 + 48) + ((v38 << 10) | (16 * v40)));
    v42 = *v41;
    v43 = v41[1];

    sub_269BF8518();

    if (v77(v15, 1, v21) == 1)
    {
      sub_269BD51CC(v15, &qword_28034A568, MEMORY[0x277CC9A70]);
    }

    else
    {
      v67(v73, v15, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_269BF2428(0, *(v71 + 2) + 1, 1, v71);
      }

      v45 = *(v71 + 2);
      v44 = *(v71 + 3);
      if (v45 >= v44 >> 1)
      {
        v71 = sub_269BF2428(v44 > 1, v45 + 1, 1, v71);
      }

      v46 = v70;
      v47 = v71;
      *(v71 + 2) = v45 + 1;
      v67(&v47[((*(v46 + 80) + 32) & ~*(v46 + 80)) + v46[9] * v45], v73, v21);
    }
  }

  while (1)
  {
    v38 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v38 >= v37)
    {

      MEMORY[0x28223BE20](v48);
      v50 = v75;
      v49 = v76;
      *(&v66 - 4) = v75;
      *(&v66 - 3) = v49;
      *(&v66 - 2) = a5;
      v51 = sub_269BD3590(sub_269BD8098, (&v66 - 6), v71);
      v52 = MEMORY[0x28223BE20](v51);
      *(&v66 - 2) = v50;
      *(&v66 - 1) = v49;
      v78 = v52;

      sub_269BD5800(sub_269BD80BC, (&v66 - 4));

      v53 = v70;
      if (*(v78 + 16))
      {
        v54 = v69;
        (v70[2])(v69, v78 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v21);
        v55 = 0;
      }

      else
      {
        v55 = 1;
        v54 = v69;
      }

      v56 = v74;

      (v53[7])(v54, v55, 1, v21);
      sub_269BD7D80(v54, v56, &qword_28034A568, MEMORY[0x277CC9A70]);
      if (v77(v56, 1, v21) == 1)
      {
        v57 = MEMORY[0x277CC9A70];
        sub_269BD51CC(v56, &qword_28034A568, MEMORY[0x277CC9A70]);
        sub_269BD51CC(v54, &qword_28034A568, v57);
        (v53[1])(v76, v21);
        return MEMORY[0x277D84F90];
      }

      v58 = v72;
      v67(v72, v56, v21);
      v59 = sub_269BF8528();
      if (*(a4 + 16))
      {
        v61 = sub_269BE5A70(v59, v60);
        v63 = v62;

        if (v63)
        {
          v32 = *(*(a4 + 56) + 8 * v61);

LABEL_32:
          v64 = v53[1];
          v64(v58, v21);
          sub_269BD51CC(v54, &qword_28034A568, MEMORY[0x277CC9A70]);
          v64(v76, v21);
          return v32;
        }
      }

      else
      {
      }

      v32 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v36 = *(a4 + 64 + 8 * v38);
    ++v39;
    if (v36)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_269BD7C00(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_269BD7CC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_269BF2578(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_269BD7C00(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_269BD7D80(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_269BD8044(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269BD7DEC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_269BD7E50(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_269BD8044(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_269BD7EBC()
{
  result = qword_280B61418;
  if (!qword_280B61418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B61418);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_269BD7F8C()
{
  result = qword_280B61430[0];
  if (!qword_280B61430[0])
  {
    sub_269BF8688();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B61430);
  }

  return result;
}

uint64_t sub_269BD7FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_269BD8044(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF89A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269BD8098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_269BD3504(*(v0 + 32)) & 1;
}

uint64_t sub_269BD80BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_269BD3860() & 1;
}

void sub_269BD80DC()
{
  if (!qword_28034A480)
  {
    sub_269BD8168(255, &unk_28034A4A0, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A480);
    }
  }
}

void sub_269BD8168(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SleepScoreDaySummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:debugIdentifier:algorithmVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, char *a6@<X8>)
{
  v69 = a3;
  v70 = a2;
  v68 = a1;
  sub_269BDB108(0, &qword_28034A570, MEMORY[0x277CC99E8]);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v67 = &v54 - v11;
  sub_269BD86F0();
  v63 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v54 - v17;
  v18 = sub_269BF8688();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  sub_269BD8758();
  v27 = v26;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v58 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a5;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor();
  *&a6[*(Descriptor + 24)] = 13;
  v31 = sub_269BF8508();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v61 = v32 + 16;
  v62 = v32;
  v60 = v33;
  v33(a6, v70, v31);
  v64 = Descriptor;
  v34 = *(Descriptor + 20);
  v35 = a6;
  v36 = &a6[v34];
  *v36 = v69;
  *(v36 + 1) = a4;
  v66 = a4;

  v37 = v68;
  sub_269BF8658();
  v57 = v27;
  (*(v19 + 16))(v23, v37 + *(v27 + 36), v18);
  sub_269BDB324(&qword_28034A4C0, MEMORY[0x277CCB6A8]);
  result = sub_269BF86F8();
  if (result)
  {
    v55 = v35;
    v39 = *(v19 + 32);
    v40 = v59;
    v39(v59, v25, v18);
    v56 = v31;
    v41 = v63;
    v39((v40 + *(v63 + 48)), v23, v18);
    sub_269BDB36C(v40, v16, sub_269BD86F0);
    v42 = *(v41 + 48);
    v43 = v58;
    v39(v58, v16, v18);
    v44 = *(v19 + 8);
    v44(&v16[v42], v18);
    sub_269BDB490(v40, v16, sub_269BD86F0);
    v39(&v43[*(v57 + 36)], &v16[*(v41 + 48)], v18);
    v44(v16, v18);
    MEMORY[0x26D64C180](v43);
    v45 = v64;
    v46 = *(v64 + 32);
    v47 = v55;
    sub_269BF85C8();
    v48 = v47;
    v49 = sub_269BF85A8();
    sub_269BF8598();
    v49(v71, 0);
    v50 = v67;
    v51 = v70;
    v52 = v56;
    v60(v67, v70, v56);
    v53 = v62;
    (*(v62 + 56))(v50, 0, 1, v52);
    sub_269BF85B8();
    (*(v53 + 8))(v51, v52);
    result = sub_269BDB3D4(v68, sub_269BD8758);
    v48[*(v45 + 28)] = v65;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269BD86F0()
{
  if (!qword_28034A4C8)
  {
    sub_269BF8688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A4C8);
    }
  }
}

void sub_269BD8758()
{
  if (!qword_28034A4B8)
  {
    sub_269BF8688();
    sub_269BDB324(&qword_28034A4C0, MEMORY[0x277CCB6A8]);
    v0 = sub_269BF8708();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A4B8);
    }
  }
}

uint64_t type metadata accessor for SleepScoreDaySummaryQueryDescriptor()
{
  result = qword_28034A558;
  if (!qword_28034A558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  v2[2] = v1;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor();
  v2[3] = Descriptor;
  v5 = *(Descriptor + 32);
  v6 = *(MEMORY[0x277CCB660] + 4);
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_269BD88F0;

  return MEMORY[0x282120470](a1);
}

uint64_t sub_269BD88F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_269BD8A3C, 0, 0);
  }
}

uint64_t sub_269BD8A3C()
{
  v1 = sub_269BD8AC4(*(*(v0 + 16) + *(*(v0 + 24) + 28)), *(v0 + 40), *(*(v0 + 16) + *(*(v0 + 24) + 24)));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269BD8AC4(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v120 = a3;
  v121 = a2;
  v111 = a1;
  v110 = sub_269BF8458();
  v103 = *(v110 - 8);
  v3 = *(v103 + 64);
  v4 = MEMORY[0x28223BE20](v110);
  v102 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = &v101 - v6;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v8 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v105 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v117 = &v101 - v14;
  v122 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v107 = *(v122 - 8);
  v15 = *(v107 + 64);
  MEMORY[0x28223BE20](v122);
  v123 = (&v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v101 - v22;
  v125 = type metadata accessor for SleepScoreDaySummary();
  v116 = *(v125 - 8);
  v24 = *(v116 + 64);
  MEMORY[0x28223BE20](v125);
  v118 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, &unk_28034A490, sub_269BDB15C);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v101 - v28);
  sub_269BDB15C();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v124 = (&v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = MEMORY[0x277D84F90];
  sub_269BF2B18(0, 0, 0);
  v126 = v127;
  v35 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  v36 = swift_allocBox();
  v38 = v37;
  v39 = *(v35 + 20);
  v40 = sub_269BF8688();
  (*(*(v40 - 8) + 56))(&v38[v39], 1, 1, v40);
  *&v38[*(v35 + 24)] = MEMORY[0x277D84F90];
  *v38 = v120;
  v41 = swift_allocObject();
  *(v41 + 16) = v121;
  *(v41 + 24) = 0;

  v119 = v41;
  v120 = v36;
  sub_269BDA98C(v41, v29);
  v114 = *(v32 + 48);
  v115 = v32 + 48;
  if (v114(v29, 1, v31) == 1)
  {
LABEL_2:

    sub_269BDB434(v29, &unk_28034A490, sub_269BDB15C);
    return v126;
  }

  v121 = (v107 + 48);
  v107 = v103 + 48;
  v104 = (v103 + 32);
  v101 = (v103 + 16);
  v103 += 8;
  v111 &= 1u;
  v43 = v122;
  v44 = v118;
  v108 = v23;
  v113 = v29;
  v112 = v31;
  while (1)
  {
    v45 = v124;
    sub_269BDB490(v29, v124, sub_269BDB15C);
    v46 = *v45;
    sub_269BDB36C(v45 + *(v31 + 48), v23, type metadata accessor for SleepScoreMetricsDaySummary);
    *v44 = v46;
    sub_269BDB36C(v23, v44 + *(v125 + 20), type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB36C(v23, v21, type metadata accessor for SleepScoreMetricsDaySummary);
    v47 = *(v17 + 36);
    v48 = v117;
    sub_269BD31C8(&v21[v47], v117);
    v49 = *v121;
    v50 = (*v121)(v48, 1, v43);
    if (v50 != 1)
    {
      break;
    }

    v51 = v46;
    sub_269BDB3D4(v21, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB434(v48, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
LABEL_29:
    sub_269BDB3D4(v23, type metadata accessor for SleepScoreMetricsDaySummary);
    v86 = v124;
    v87 = v125;
    v88 = v118;
    v89 = &v118[*(v125 + 24)];
    *v89 = v52;
    *(v89 + 1) = v53;
    *(v89 + 2) = v54;
    *(v89 + 3) = v55;
    *(v89 + 4) = v56;
    *(v89 + 5) = v57;
    v89[48] = v50 == 1;
    v44 = v88;
    *(v88 + *(v87 + 28)) = v111;
    sub_269BDB3D4(v86, sub_269BDB15C);
    v90 = v126;
    v127 = v126;
    v92 = *(v126 + 16);
    v91 = *(v126 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_269BF2B18(v91 > 1, v92 + 1, 1);
      v90 = v127;
    }

    *(v90 + 16) = v92 + 1;
    v93 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v126 = v90;
    sub_269BDB490(v44, v90 + v93 + *(v116 + 72) * v92, type metadata accessor for SleepScoreDaySummary);
    v29 = v113;
    sub_269BDA98C(v119, v113);
    v31 = v112;
    v94 = v114(v29, 1, v112);
    v43 = v122;
    if (v94 == 1)
    {
      goto LABEL_2;
    }
  }

  v58 = v48;
  v59 = v17;
  v60 = v123;
  sub_269BDB490(v58, v123, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v61 = *v60;
  v62 = v59;
  v63 = &v21[*(v59 + 28)];
  v64 = *v63;
  v65 = v63[8];
  v66 = v46;
  result = sub_269BD2A8C(v64, v65, v61);
  v67 = *(v60 + *(v43 + 32)) / 1200.0;
  if (v67 <= 1.0)
  {
    v68 = *(v60 + *(v43 + 32)) / 1200.0;
  }

  else
  {
    v68 = 1.0;
  }

  v69 = v68 * 5.0 + 0.0;
  if (v67 > 0.0)
  {
    v70 = v69;
  }

  else
  {
    v70 = 0.0;
  }

  v71 = trunc(v70);
  if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v71 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v71 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v72 = *(v123 + *(v43 + 36)) / 1800.0;
    if (v72 <= 1.0)
    {
      v73 = *(v123 + *(v43 + 36)) / 1800.0;
    }

    else
    {
      v73 = 1.0;
    }

    v74 = v73 * 5.0 + 0.0;
    if (v72 > 0.0)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0.0;
    }

    v76 = trunc(v75);
    if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v76 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v76 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v52 = result;
    v77 = v109;
    sub_269BDB36C(&v21[*(v62 + 32)], v109, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v78 = v110;
    if (!(*v107)(v77, 2, v110))
    {
      v79 = v106;
      (*v104)(v106, v77, v78);
      v80 = &v21[v47];
      v81 = v105;
      sub_269BD31C8(v80, v105);
      v82 = v122;
      if (v49(v81, 1, v122) != 1)
      {
        v95 = v81 + *(v82 + 28);
        v96 = v102;
        (*v101)(v102, v95, v78);
        sub_269BDB3D4(v81, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v97 = v79;
        sub_269BF8418();
        v99 = v98;
        v100 = *v103;
        (*v103)(v96, v78);
        v100(v97, v78);
        v84 = 0;
        v83 = v99;
        goto LABEL_28;
      }

      (*v103)(v79, v78);
      sub_269BDB434(v81, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    }

    v83 = 0;
    v84 = 1;
LABEL_28:
    v53 = v71;
    v54 = v76;
    v55 = sub_269BD2D28(v83, v84);
    v85 = v123;
    v56 = sub_269BD2F1C(*(v123 + 1));
    v57 = sub_269BD3028(*(v85 + 16));
    sub_269BDB3D4(v21, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB3D4(v85, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v17 = v62;
    v23 = v108;
    goto LABEL_29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_269BD9668(int a1)
{
  v2 = v1;
  v131 = a1;
  v115 = sub_269BF8458();
  v117 = *(v115 - 8);
  v3 = *(v117 + 64);
  v4 = MEMORY[0x28223BE20](v115);
  v108 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v106 - v6;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v8 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v123 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v111 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v106 - v14;
  v15 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v128 = *(v15 - 8);
  v129 = v15;
  v16 = *(v128 + 64);
  MEMORY[0x28223BE20](v15);
  v130 = (&v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v106 - v23;
  v133 = type metadata accessor for SleepScoreDaySummary();
  v120 = *(v133 - 8);
  v25 = *(v120 + 64);
  MEMORY[0x28223BE20](v133);
  v122 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, &unk_28034A490, sub_269BDB15C);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v126 = (&v106 - v29);
  sub_269BDB15C();
  v31 = v30;
  v127 = *(v30 - 8);
  v32 = *(v127 + 64);
  MEMORY[0x28223BE20](v30);
  v132 = (&v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = MEMORY[0x277D84F90];
  sub_269BF2B18(0, 0, 0);
  v134 = v136;
  v34 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  v35 = swift_allocBox();
  v37 = v36;
  v38 = *(v2 + 32);
  v39 = *(v34 + 20);
  v40 = sub_269BF8688();
  (*(*(v40 - 8) + 56))(&v37[v39], 1, 1, v40);
  v41 = *(v34 + 24);
  v42 = v126;
  *&v37[v41] = MEMORY[0x277D84F90];
  *v37 = v38;
  v43 = swift_allocObject();
  v44 = *(v2 + 16);
  *(v43 + 16) = *v2;
  *(v43 + 32) = v44;
  *(v43 + 48) = v44;

  sub_269BDB36C(v2, v135, sub_269BDB228);
  v124 = v43;
  v125 = v35;
  sub_269BDACA4(v43, v42);
  v45 = *(v127 + 48);
  v127 += 48;
  v119 = v45;
  if (v45(v42, 1, v31) == 1)
  {
LABEL_2:

    sub_269BDB434(v42, &unk_28034A490, sub_269BDB15C);
    return v134;
  }

  v128 += 48;
  v113 = (v117 + 48);
  v110 = (v117 + 32);
  v107 = (v117 + 16);
  v109 = (v117 + 8);
  LODWORD(v117) = v131 & 1;
  v47 = v123;
  v48 = v122;
  v116 = v18;
  v114 = v24;
  v118 = v31;
  while (1)
  {
    v49 = v132;
    sub_269BDB490(v42, v132, sub_269BDB15C);
    v50 = *v49;
    sub_269BDB36C(v49 + *(v31 + 48), v24, type metadata accessor for SleepScoreMetricsDaySummary);
    *v48 = v50;
    sub_269BDB36C(v24, v48 + *(v133 + 20), type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB36C(v24, v22, type metadata accessor for SleepScoreMetricsDaySummary);
    v51 = *(v18 + 36);
    v52 = v121;
    sub_269BD31C8(&v22[v51], v121);
    v53 = *v128;
    v54 = v22;
    v55 = v129;
    v131 = (*v128)(v52, 1, v129);
    if (v131 == 1)
    {
      v56 = v50;
      sub_269BDB3D4(v54, type metadata accessor for SleepScoreMetricsDaySummary);
      sub_269BDB434(v52, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      v57 = 0;
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v22 = v54;
      v63 = v131;
      goto LABEL_30;
    }

    v64 = v52;
    v65 = v18;
    v66 = v130;
    sub_269BDB490(v64, v130, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v67 = *v66;
    v68 = v54 + *(v65 + 28);
    v69 = *v68;
    v70 = *(v68 + 8);
    v71 = v50;
    result = sub_269BD2A8C(v69, v70, v67);
    v72 = *(v66 + *(v55 + 32)) / 1200.0;
    v73 = v72 <= 1.0 ? *(v66 + *(v55 + 32)) / 1200.0 : 1.0;
    v74 = v73 * 5.0 + 0.0;
    v75 = v72 > 0.0 ? v74 : 0.0;
    v76 = trunc(v75);
    if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v76 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v76 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v77 = *(v130 + *(v55 + 36)) / 1800.0;
    if (v77 <= 1.0)
    {
      v78 = *(v130 + *(v55 + 36)) / 1800.0;
    }

    else
    {
      v78 = 1.0;
    }

    v79 = v78 * 5.0 + 0.0;
    if (v77 > 0.0)
    {
      v80 = v79;
    }

    else
    {
      v80 = 0.0;
    }

    v81 = trunc(v80);
    if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v81 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v81 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v57 = result;
    v22 = v54;
    sub_269BDB36C(v54 + *(v116 + 32), v47, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v82 = v115;
    if ((*v113)(v47, 2, v115))
    {
      v83 = 0;
      v84 = 1;
      v24 = v114;
      v63 = v131;
    }

    else
    {
      v85 = v112;
      (*v110)(v112, v47, v82);
      v86 = v54 + v51;
      v87 = v111;
      sub_269BD31C8(v86, v111);
      v88 = v129;
      v89 = v53(v87, 1, v129);
      v24 = v114;
      v63 = v131;
      if (v89 == 1)
      {
        (*v109)(v85, v82);
        sub_269BDB434(v87, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v83 = 0;
        v84 = 1;
      }

      else
      {
        v90 = v87 + *(v88 + 28);
        v91 = v108;
        (*v107)(v108, v90, v82);
        sub_269BDB3D4(v87, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v92 = v85;
        sub_269BF8418();
        v94 = v93;
        v95 = *v109;
        (*v109)(v91, v82);
        v95(v92, v82);
        v84 = 0;
        v83 = v94;
      }
    }

    v58 = v76;
    v59 = v81;
    v60 = sub_269BD2D28(v83, v84);
    v96 = v130;
    v61 = sub_269BD2F1C(*(v130 + 1));
    v62 = sub_269BD3028(*(v96 + 16));
    sub_269BDB3D4(v22, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB3D4(v96, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v18 = v116;
LABEL_30:
    sub_269BDB3D4(v24, type metadata accessor for SleepScoreMetricsDaySummary);
    v97 = v132;
    v98 = v133;
    v99 = v122;
    v100 = &v122[*(v133 + 24)];
    *v100 = v57;
    *(v100 + 1) = v58;
    *(v100 + 2) = v59;
    *(v100 + 3) = v60;
    *(v100 + 4) = v61;
    *(v100 + 5) = v62;
    v100[48] = v63 == 1;
    v48 = v99;
    *(v99 + *(v98 + 28)) = v117;
    sub_269BDB3D4(v97, sub_269BDB15C);
    v101 = v134;
    v136 = v134;
    v103 = *(v134 + 16);
    v102 = *(v134 + 24);
    if (v103 >= v102 >> 1)
    {
      sub_269BF2B18(v102 > 1, v103 + 1, 1);
      v101 = v136;
    }

    *(v101 + 16) = v103 + 1;
    v104 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v134 = v101;
    sub_269BDB490(v48, v101 + v104 + *(v120 + 72) * v103, type metadata accessor for SleepScoreDaySummary);
    v42 = v126;
    sub_269BDACA4(v124, v126);
    v31 = v118;
    v105 = v119(v42, 1, v118);
    v47 = v123;
    if (v105 == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_269BDA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  v6 = *(a3 + 32);
  v7 = *(MEMORY[0x277CCB660] + 4);
  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_269BDA358;

  return MEMORY[0x282120470](a2);
}

uint64_t sub_269BDA358(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_269BDA4A4, 0, 0);
  }
}

uint64_t sub_269BDA4A4()
{
  v1 = *(v0 + 16);
  v2 = sub_269BD8AC4(*(*(v0 + 24) + *(*(v0 + 32) + 28)), *(v0 + 48), *(*(v0 + 24) + *(*(v0 + 32) + 24)));

  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

id SleepScoreDaySummaryQueryDescriptor.makeQuery(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor();
  v7 = Descriptor - 8;
  v8 = *(Descriptor - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](Descriptor);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 40);
  v12 = sub_269BF85D8();
  v30 = v13;
  v31 = v12;
  v29 = sub_269BF8618();
  sub_269BDB1E0(0, &qword_28034A488, 0x277CCD838);
  sub_269BF85E8();
  v14 = sub_269BF8968();
  v15 = sub_269BF8608();
  sub_269BDB36C(v3, v10, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_269BDB490(v10, v17 + v16, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
  v18 = objc_allocWithZone(MEMORY[0x277CCD9C0]);
  aBlock[4] = sub_269BDA900;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269BDAF70;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);

  v20 = [v18 initWithMorningIndexRange:v31 ascending:v30 limit:v29 & 1 options:v14 resultsHandler:{v15, v19}];
  _Block_release(v19);

  v21 = sub_269BF84D8();
  [v20 setCalendarOverrides_];

  v22 = (v3 + *(v7 + 28));
  v23 = *v22;
  v24 = v22[1];
  v25 = v20;
  v26 = sub_269BF87D8();
  [v25 setDebugIdentifier_];

  return v25;
}

void sub_269BDA7E4(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), id a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor();
    v10 = *(a6 + *(Descriptor + 24));
    LODWORD(a6) = *(a6 + *(Descriptor + 28));

    v11 = sub_269BD8AC4(a6, a2, v10);

    a4(v11, 0);
  }

  else
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v13 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
      v12 = v13;
    }

    v14 = a3;
    a4(v12, 1);
  }
}

void sub_269BDA900(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v7 = *(type metadata accessor for SleepScoreDaySummaryQueryDescriptor() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_269BDA7E4(a1, a2, a3, v8, v9, v10);
}

id sub_269BDA98C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_269BDB108(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  swift_projectBox();
  v13 = (v9 + 48);
  while (1)
  {
    swift_beginAccess();
    v14 = *(a1 + 16);
    if (v14 >> 62)
    {
      if (v14 < 0)
      {
        v18 = *(a1 + 16);
      }

      result = sub_269BF8AD8();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = *(a1 + 24);
    if (v16 == result)
    {
      swift_endAccess();
      sub_269BDB15C();
      return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D64C2D0](*(a1 + 24), v14);
      goto LABEL_9;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    result = *(v14 + 8 * v16 + 32);
LABEL_9:
    v17 = result;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_19;
    }

    *(a1 + 24) = v16 + 1;
    swift_endAccess();
    swift_beginAccess();
    sub_269BD3ED0(v17, v7);
    swift_endAccess();
    if ((*v13)(v7, 1, v8) != 1)
    {
      sub_269BDB490(v7, v12, type metadata accessor for SleepScoreMetricsDaySummary);
      sub_269BDB15C();
      v21 = v20;
      v22 = *(v20 + 48);
      *a2 = v17;
      sub_269BDB490(v12, a2 + v22, type metadata accessor for SleepScoreMetricsDaySummary);
      return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    }

    sub_269BDB434(v7, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_269BDACA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_269BDB108(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-v6];
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  swift_projectBox();
  result = swift_beginAccess();
  v14 = a1[6];
  v15 = a1[5] >> 1;
  if (v14 == v15)
  {
LABEL_6:
    sub_269BDB15C();
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }

  else
  {
    while (v14 < v15 && v14 >= a1[4])
    {
      v16 = *(a1[3] + 8 * v14);
      a1[6] = v14 + 1;
      swift_beginAccess();
      v17 = v16;
      sub_269BD3ED0(v17, v7);
      swift_endAccess();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_269BDB490(v7, v12, type metadata accessor for SleepScoreMetricsDaySummary);
        sub_269BDB15C();
        v20 = v19;
        v21 = *(v19 + 48);
        *a2 = v17;
        sub_269BDB490(v12, a2 + v21, type metadata accessor for SleepScoreMetricsDaySummary);
        return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
      }

      result = sub_269BDB434(v7, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
      v14 = a1[6];
      v15 = a1[5] >> 1;
      if (v14 == v15)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_269BDAF70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
    v5 = sub_269BF8898();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269BDB068()
{
  result = sub_269BF8508();
  if (v1 <= 0x3F)
  {
    result = sub_269BF8628();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_269BDB108(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF89A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269BDB15C()
{
  if (!qword_280B61410)
  {
    sub_269BDB1E0(255, &qword_280B61580, 0x277CCD9B0);
    type metadata accessor for SleepScoreMetricsDaySummary(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B61410);
    }
  }
}

uint64_t sub_269BDB1E0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_269BDB228()
{
  if (!qword_28034A8B0)
  {
    sub_269BDB2BC();
    sub_269BDB324(&qword_28034A8C0, sub_269BDB2BC);
    v0 = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A8B0);
    }
  }
}

void sub_269BDB2BC()
{
  if (!qword_28034A718)
  {
    sub_269BDB1E0(255, &qword_280B61580, 0x277CCD9B0);
    v0 = sub_269BF89D8();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A718);
    }
  }
}

uint64_t sub_269BDB324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269BDB36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BDB3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BDB434(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269BDB108(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BDB490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BDB4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v139 = a6;
  v138 = a5;
  v131 = a4;
  v135 = a1;
  sub_269BDC68C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_269BF82E8();
  v14 = *(v137 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_269BF8478();
  v121 = *(v119 - 8);
  v17 = *(v121 + 64);
  MEMORY[0x28223BE20](v119);
  v111 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDC720();
  v116 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v118 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D83D88];
  sub_269BDE134(0, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v112 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v117 = &v109 - v28;
  MEMORY[0x28223BE20](v27);
  v120 = &v109 - v29;
  v115 = sub_269BF84A8();
  v114 = *(v115 - 8);
  v30 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A740, MEMORY[0x277CC9788], v22);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v130 = &v109 - v34;
  v35 = sub_269BF8398();
  v132 = *(v35 - 8);
  v133 = v35;
  v36 = *(v132 + 64);
  MEMORY[0x28223BE20](v35);
  v136 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_269BF8728();
  v140 = *(v38 - 8);
  v39 = *(v140 + 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_269BF84C8();
  v128 = *(v129 - 8);
  v42 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v43 = sub_269BF87B8();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v127 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = sub_269BF8338();
  v143 = *(v47 - 8);
  v144 = v47;
  v48 = *(v143 + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v126 = &v109 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v145 = &v109 - v51;
  v52 = sub_269BF8798();
  v141 = *(v52 - 8);
  v142 = v52;
  v53 = *(v141 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  result = MEMORY[0x28223BE20](v54);
  v58 = &v109 - v57;
  if ((a7 & 0x100) != 0 && !a3)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v122 = v38;
  v123 = v56;
  v125 = v14;
  sub_269BF8328();
  result = sub_269BF8318();
  v124 = BYTE2(a7);
  if (BYTE2(a7) == 2)
  {
    if ((a7 & 0x100) == 0)
    {
      v147 = sub_269BDE574(v138);
      v148 = v59;
      MEMORY[0x26D64C060](95, 0xE100000000000000);
      v60 = sub_269BDEDB4(v139, a7 | 0x20000u);
      MEMORY[0x26D64C060](v60);

      sub_269BF87C8();
      sub_269BDC818();
      if (!sub_269BF8978())
      {
        v61 = [objc_opt_self() mainBundle];
      }

      sub_269BF8488();
      v62 = sub_269BF87F8();
      (*(v143 + 8))(v145, v144);
      return v62;
    }

    goto LABEL_34;
  }

  v110 = v13;
  if ((a7 & 0x100) == 0)
  {
    sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
    v73 = swift_allocObject();
    v74 = MEMORY[0x277D83B88];
    *(v73 + 16) = xmmword_269BF9B40;
    v75 = MEMORY[0x277D83C10];
    *(v73 + 56) = v74;
    *(v73 + 64) = v75;
    *(v73 + 32) = v135;
    sub_269BF8308();
    sub_269BF8788();
    v147 = sub_269BDE574(v138);
    v148 = v76;
    MEMORY[0x26D64C060](22111, 0xE200000000000000);
    v146 = v139;
    v77 = sub_269BF8B88();
    MEMORY[0x26D64C060](v77);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    v78 = v140;
    v79 = v122;
    (*(v140 + 13))(v41, *MEMORY[0x277CC9BD8], v122);
    sub_269BF8748();
    v78[1](v41, v79);
    v80 = v126;
    v81 = v143;
    sub_269BF8778();

    goto LABEL_20;
  }

  if (a3)
  {
    sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_269BF9B50;
    v64 = MEMORY[0x277D83C10];
    *(v63 + 56) = MEMORY[0x277D83B88];
    *(v63 + 64) = v64;
    *(v63 + 32) = v135;
    *(v63 + 96) = MEMORY[0x277D837D0];
    *(v63 + 104) = sub_269BDDFCC();
    *(v63 + 72) = a2;
    *(v63 + 80) = a3;

    sub_269BF8308();
    sub_269BF8788();
    v147 = sub_269BDE574(v138);
    v148 = v65;
    MEMORY[0x26D64C060](22111, 0xE200000000000000);
    v146 = v139;
    v66 = sub_269BF8B88();
    MEMORY[0x26D64C060](v66);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    v67 = v140;
    v68 = *(v140 + 13);
    v69 = v122;
    v68(v41, *MEMORY[0x277CC9BD8], v122);
    v70 = 0xE400000000000000;
    sub_269BF8748();
    v71 = *(v67 + 1);
    v140 = v67 + 8;
    v71(v41, v69);
    v147 = 0;
    v148 = 0xE000000000000000;
    if (a7)
    {
      if (a7 == 1)
      {
        v72 = 1497449567;
      }

      else
      {
        v72 = 0;
      }

      if (a7 != 1)
      {
        v70 = 0xE000000000000000;
      }
    }

    else
    {
      v70 = 0xE600000000000000;
      v72 = 0x544847494E5FLL;
    }

    MEMORY[0x26D64C060](v72, v70);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    v68(v41, *MEMORY[0x277CC9BE0], v69);
    sub_269BF8748();
    v71(v41, v69);
    v81 = v143;
    v80 = v126;
LABEL_20:
    v82 = *(v141 + 16);
    v140 = v58;
    v82(v123, v58, v142);
    sub_269BF87A8();
    v83 = v144;
    (*(v81 + 16))(v80, v145, v144);
    sub_269BDC818();
    if (!sub_269BF8978())
    {
      v84 = [objc_opt_self() mainBundle];
    }

    v85 = v128;
    v86 = v130;
    v87 = v129;
    (*(v128 + 16))(v130, v131, v129);
    (*(v85 + 56))(v86, 0, 1, v87);
    v88 = v136;
    sub_269BF8388();
    v89 = v137;
    v90 = v140;
    if (v124)
    {
      goto LABEL_31;
    }

    v91 = v113;
    sub_269BF84B8();
    v92 = v120;
    sub_269BF8498();
    (*(v114 + 8))(v91, v115);
    v93 = v117;
    sub_269BF8468();
    v94 = v121;
    v95 = v119;
    (*(v121 + 56))(v93, 0, 1, v119);
    v96 = *(v116 + 48);
    v97 = v118;
    sub_269BDDF38(v92, v118);
    sub_269BDDF38(v93, v97 + v96);
    v98 = *(v94 + 48);
    if (v98(v97, 1, v95) == 1)
    {
      v99 = MEMORY[0x277CC9640];
      sub_269BDE1DC(v93, &qword_28034A738, MEMORY[0x277CC9640]);
      sub_269BDE1DC(v92, &qword_28034A738, v99);
      v100 = v98(v97 + v96, 1, v95);
      v89 = v137;
      v81 = v143;
      if (v100 == 1)
      {
        sub_269BDE1DC(v97, &qword_28034A738, MEMORY[0x277CC9640]);
        v83 = v144;
        v88 = v136;
LABEL_30:
        sub_269BDC864(1, v135);
        goto LABEL_31;
      }
    }

    else
    {
      v101 = v112;
      sub_269BDDF38(v97, v112);
      if (v98(v97 + v96, 1, v95) != 1)
      {
        v103 = v121;
        v104 = v97 + v96;
        v105 = v111;
        (*(v121 + 32))(v111, v104, v95);
        sub_269BDE410(&qword_28034A760, MEMORY[0x277CC9640]);
        LODWORD(v139) = sub_269BF8718();
        v106 = *(v103 + 8);
        v106(v105, v95);
        v107 = MEMORY[0x277CC9640];
        sub_269BDE1DC(v93, &qword_28034A738, MEMORY[0x277CC9640]);
        sub_269BDE1DC(v120, &qword_28034A738, v107);
        v106(v101, v95);
        sub_269BDE1DC(v97, &qword_28034A738, v107);
        v88 = v136;
        v89 = v137;
        v81 = v143;
        v83 = v144;
        if (v139)
        {
          goto LABEL_30;
        }

LABEL_31:
        v108 = v134;
        sub_269BF82D8();
        sub_269BDDB38(v110);
        (*(v125 + 8))(v108, v89);
        v62 = sub_269BF8808();
        (*(v132 + 8))(v88, v133);
        (*(v81 + 8))(v145, v83);
        (*(v141 + 8))(v90, v142);
        return v62;
      }

      v102 = MEMORY[0x277CC9640];
      sub_269BDE1DC(v93, &qword_28034A738, MEMORY[0x277CC9640]);
      sub_269BDE1DC(v120, &qword_28034A738, v102);
      (*(v121 + 8))(v101, v95);
      v89 = v137;
      v81 = v143;
    }

    sub_269BDE24C(v97, sub_269BDC720);
    v83 = v144;
    v88 = v136;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_269BDC68C()
{
  if (!qword_28034A720)
  {
    sub_269BF82E8();
    sub_269BDE410(&qword_28034A728, MEMORY[0x277CC8B30]);
    v0 = sub_269BF8C08();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A720);
    }
  }
}

void sub_269BDC720()
{
  if (!qword_28034A730)
  {
    sub_269BDE134(255, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A730);
    }
  }
}

unint64_t sub_269BDC7B4()
{
  result = qword_28034A750;
  if (!qword_28034A750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034A750);
  }

  return result;
}

unint64_t sub_269BDC818()
{
  result = qword_28034A758;
  if (!qword_28034A758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034A758);
  }

  return result;
}

uint64_t sub_269BDC864(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v61 = a1;
  v3 = sub_269BF8398();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE020();
  v7 = v6;
  v55 = *(v6 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x277CC8BC0];
  sub_269BDE0D4(0, &qword_28034A790, MEMORY[0x277CC8BC0]);
  v12 = v11;
  v58 = *(v11 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v45 - v14;
  v53 = MEMORY[0x277CC8BD0];
  sub_269BDE0D4(0, &qword_28034A798, MEMORY[0x277CC8BD0]);
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v52 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v45 - v20;
  v56 = sub_269BF8348();
  v22 = *(v56 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v56);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A7A0, sub_269BDE020, MEMORY[0x277D83D88]);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v57 = v45 - v31;
  sub_269BDE0B4(0);
  v45[1] = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v46 = v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  sub_269BF8368();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_269BF8358();

  (*(v22 + 8))(v25, v56);
  v35 = *(v59 + 16);
  v56 = v21;
  v35(v52, v21, v60);
  sub_269BDE198(&qword_28034A7A8, &qword_28034A798, v53);
  v36 = v55;
  sub_269BF8858();
  sub_269BDE198(&qword_28034A7B0, &qword_28034A790, v54);
  sub_269BF89B8();
  v37 = *(v36 + 48);
  for (i = v37(v30, 1, v7); i != 1; i = v37(v30, 1, v7))
  {
    sub_269BDE4BC(v30, v10, sub_269BDE020);
    if ((v10[8] & 1) == 0 && *v10 == v61)
    {
      (*(v58 + 8))(v15, v12);
      (*(v59 + 8))(v56, v60);
      v39 = v57;
      sub_269BDE4BC(v10, v57, sub_269BDE020);
      v40 = 0;
      goto LABEL_8;
    }

    sub_269BDE24C(v10, sub_269BDE020);
    sub_269BF89B8();
  }

  (*(v58 + 8))(v15, v12);
  (*(v59 + 8))(v56, v60);
  v40 = 1;
  v39 = v57;
LABEL_8:
  (*(v36 + 56))(v39, v40, 1, v7);
  if (v37(v39, 1, v7) == 1)
  {
    return sub_269BDE1DC(v39, &qword_28034A7A0, sub_269BDE020);
  }

  v42 = v46;
  sub_269BDE4BC(v39 + *(v7 + 48), v46, sub_269BDE0B4);
  v43 = v48;
  sub_269BDDA24();
  sub_269BDE410(&qword_28034A7B8, sub_269BDE0B4);
  sub_269BDE410(&qword_28034A7C0, MEMORY[0x277CC8C40]);
  v44 = v50;
  sub_269BF82F8();
  (*(v49 + 8))(v43, v44);
  return sub_269BDE24C(v42, sub_269BDE0B4);
}

uint64_t sub_269BDCFEC(uint64_t a1, int a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, int a6)
{
  LODWORD(v78) = a6;
  v84 = a3;
  v90 = a2;
  sub_269BDC68C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269BF82E8();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v11);
  v91 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A740, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v75 - v16;
  v17 = sub_269BF87B8();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = &v75 - v21;
  v22 = sub_269BF8398();
  v86 = *(v22 - 8);
  v87 = v22;
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v22);
  v85 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_269BF8728();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_269BF8338();
  v95 = *(v30 - 8);
  v96 = v30;
  v31 = *(v95 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v77 = &v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v75 - v34;
  v36 = sub_269BF8798();
  v80 = *(v36 - 8);
  v37 = *(v80 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v75 - v41;
  sub_269BF8328();
  sub_269BF8318();
  sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  v44 = MEMORY[0x277D83B88];
  *(v43 + 16) = xmmword_269BF9B40;
  v45 = MEMORY[0x277D83C10];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  v82 = a1;
  *(v43 + 32) = a1;
  sub_269BF8308();
  v46 = v42;
  sub_269BF8788();
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_269BF8A88();

  v97 = 0xD000000000000013;
  v98 = 0x8000000269BFB370;
  if ((a4 >> 14) > 1u)
  {
    if (a4 >> 14 != 2)
    {
      v49 = v36;
      if (a4 == 49152)
      {
        v47 = 5721932;
      }

      else
      {
        v47 = 0x574F4C59524556;
      }

      if (a4 == 49152)
      {
        v48 = 0xE300000000000000;
      }

      else
      {
        v48 = 0xE700000000000000;
      }

      goto LABEL_17;
    }

    v48 = 0xE200000000000000;
    v47 = 19279;
  }

  else
  {
    if (a4 >> 14)
    {
      v47 = 1212631368;
    }

    else
    {
      v47 = 0x4E454C4C45435845;
    }

    if (a4 >> 14)
    {
      v48 = 0xE400000000000000;
    }

    else
    {
      v48 = 0xE900000000000054;
    }
  }

  v49 = v36;
LABEL_17:
  v50 = v77;
  MEMORY[0x26D64C060](v47, v48);

  MEMORY[0x26D64C060](95, 0xE100000000000000);
  sub_269BF8778();

  (*(v26 + 104))(v29, *MEMORY[0x277CC9BD8], v25);
  sub_269BF8748();
  (*(v26 + 8))(v29, v25);
  v52 = v95;
  v51 = v96;
  sub_269BF8778();

  v53 = v46;
  v54 = v80;
  v55 = *(v80 + 16);
  v78 = v53;
  v55(v40);
  sub_269BF87A8();
  (*(v52 + 16))(v50, v35, v51);
  sub_269BDC818();
  v56 = sub_269BF8978();
  v77 = v49;
  v76 = v35;
  if (!v56)
  {
    v57 = [objc_opt_self() mainBundle];
  }

  v58 = sub_269BF84C8();
  v59 = *(v58 - 8);
  v60 = v81;
  (*(v59 + 16))(v81, v84, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  v61 = v85;
  sub_269BF8388();
  sub_269BDC864(1, v82);
  sub_269BDE524(0, &qword_28034A7E8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_269BF9B60;
  v63 = v83;
  sub_269BF8738();
  v64 = sub_269BDF7A8(v63);
  v66 = v65;
  v67 = v89;
  v68 = *(v88 + 8);
  v68(v63, v89);
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  v69 = v91;
  sub_269BF82D8();
  sub_269BDDB38(v94);
  (*(v92 + 8))(v69, v93);
  *(v62 + 48) = sub_269BF8808();
  *(v62 + 56) = v70;
  sub_269BF8738();
  v71 = sub_269BDF7A8(v63);
  v73 = v72;
  v68(v63, v67);
  *(v62 + 64) = v71;
  *(v62 + 72) = v73;
  (*(v86 + 8))(v61, v87);
  (*(v95 + 8))(v76, v96);
  (*(v54 + 8))(v78, v77);
  return v62;
}

uint64_t sub_269BDD9CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_269BDE2AC();
  return sub_269BF8718() & 1;
}

uint64_t sub_269BDDA24()
{
  v0 = sub_269BF83C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_269BF8B88();
  MEMORY[0x26D64C060](v2);

  sub_269BF83B8();
  return sub_269BF83A8();
}

uint64_t sub_269BDDB38@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  sub_269BDE30C();
  v37 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_269BF8378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE0B4(0);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE374(0, &qword_28034A7D8, MEMORY[0x277D84328]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - v20;
  v22 = sub_269BF82E8();
  v23 = sub_269BDE410(&qword_28034A728, MEMORY[0x277CC8B30]);
  v39 = v22;
  v24 = v23;
  sub_269BF8908();
  sub_269BDE410(&qword_28034A7E0, MEMORY[0x277CC8C20]);
  result = sub_269BF8718();
  if (result)
  {
    sub_269BF8918();
    sub_269BDE410(&qword_28034A788, MEMORY[0x277CC8C20]);
    result = sub_269BF86F8();
    if (result)
    {
      v35 = v1;
      v26 = *(v9 + 32);
      v26(v7, v21, v8);
      v33 = v14;
      v34 = v24;
      v27 = v9;
      v29 = v36;
      v28 = v37;
      v26(&v7[*(v37 + 48)], v12, v8);
      sub_269BDE458(v7, v29);
      v30 = *(v28 + 48);
      v26(v17, v29, v8);
      v31 = *(v27 + 8);
      v31(v29 + v30, v8);
      sub_269BDE4BC(v7, v29, sub_269BDE30C);
      v26(&v17[*(v33 + 36)], (v29 + *(v28 + 48)), v8);
      v31(v29, v8);
      sub_269BF8928();
      return sub_269BDE24C(v17, sub_269BDE0B4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269BDDF38(uint64_t a1, uint64_t a2)
{
  sub_269BDE134(0, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269BDDFCC()
{
  result = qword_28034A768;
  if (!qword_28034A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A768);
  }

  return result;
}

void sub_269BDE020()
{
  if (!qword_28034A770)
  {
    sub_269BDE524(255, &qword_28034A778, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    sub_269BDE0B4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A770);
    }
  }
}

void sub_269BDE0D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CC8A50], MEMORY[0x277CC8A48]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269BDE134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269BDE198(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_269BDE0D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269BDE1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269BDE134(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BDE24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BDE2AC()
{
  if (!qword_28034A7C8)
  {
    sub_269BF82C8();
    v0 = sub_269BF8C88();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A7C8);
    }
  }
}

void sub_269BDE30C()
{
  if (!qword_28034A7D0)
  {
    sub_269BF8378();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A7D0);
    }
  }
}

void sub_269BDE374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269BF8378();
    v7 = sub_269BDE410(&qword_28034A788, MEMORY[0x277CC8C20]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_269BDE410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269BDE458(uint64_t a1, uint64_t a2)
{
  sub_269BDE30C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BDE4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BDE524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269BDE574(unsigned int a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (a1 >> 14)
    {
      v16 = (a1 >> 8) & 0x3F;
      v33 = 0x5F48474948;
      v17 = a1;
      v18 = 0xE800000000000000;
      v19 = 0x544445424554414CLL;
      v20 = 0xEB00000000454D49;
      v21 = 0x4E494E454B415741;
      v22 = 0xEA00000000005347;
      if (a1 != 3)
      {
        v21 = 0x4D4954454B415741;
        v22 = 0xE900000000000045;
      }

      if (a1 != 2)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = 0x444542594C524145;
      if (a1)
      {
        v18 = 0xEC000000454D4954;
      }

      else
      {
        v23 = 0x4E4F495441525544;
      }

      if (a1 <= 1u)
      {
        v24 = v23;
      }

      else
      {
        v24 = v19;
      }

      if (v17 <= 1)
      {
        v25 = v18;
      }

      else
      {
        v25 = v20;
      }

      MEMORY[0x26D64C060](v24, v25);

      MEMORY[0x26D64C060](95, 0xE100000000000000);
      v26 = 0xE800000000000000;
      v27 = 0x544445424554414CLL;
      v28 = 0xEB00000000454D49;
      v29 = 0x4E494E454B415741;
      v30 = 0xEA00000000005347;
      if (v16 != 3)
      {
        v29 = 0x4D4954454B415741;
        v30 = 0xE900000000000045;
      }

      if (v16 != 2)
      {
        v27 = v29;
        v28 = v30;
      }

      v31 = 0x444542594C524145;
      if (v16)
      {
        v26 = 0xEC000000454D4954;
      }

      else
      {
        v31 = 0x4E4F495441525544;
      }

      if (v16 <= 1)
      {
        v7 = v31;
      }

      else
      {
        v7 = v27;
      }

      if (v16 <= 1)
      {
        v8 = v26;
      }

      else
      {
        v8 = v28;
      }
    }

    else
    {
      v1 = 0xEA00000000005347;
      v2 = 0x4E4F495441525544;
      v33 = 0x4E454C4C45435845;
      v3 = a1;
      v4 = 0xE800000000000000;
      v5 = 0x544445424554414CLL;
      v6 = 0x4E494E454B415741;
      if (a1 != 3)
      {
        v6 = 0x4D4954454B415741;
        v1 = 0xE900000000000045;
      }

      if (a1 == 2)
      {
        v1 = 0xEB00000000454D49;
      }

      else
      {
        v5 = v6;
      }

      if (a1)
      {
        v2 = 0x444542594C524145;
        v4 = 0xEC000000454D4954;
      }

      if (a1 <= 1u)
      {
        v7 = v2;
      }

      else
      {
        v7 = v5;
      }

      if (v3 <= 1)
      {
        v8 = v4;
      }

      else
      {
        v8 = v1;
      }
    }

LABEL_55:
    MEMORY[0x26D64C060](v7, v8);

    return v33;
  }

  if (a1 >> 14 == 2)
  {
    v9 = 0x4E4F495441525544;
    v10 = a1;
    v33 = 6245199;
    v11 = 0xE800000000000000;
    v12 = 0x544445424554414CLL;
    v13 = 0xEB00000000454D49;
    v14 = 0x4E494E454B415741;
    v15 = 0xEA00000000005347;
    if (a1 != 3)
    {
      v14 = 0x4D4954454B415741;
      v15 = 0xE900000000000045;
    }

    if (a1 != 2)
    {
      v12 = v14;
      v13 = v15;
    }

    if (a1)
    {
      v9 = 0x444542594C524145;
      v11 = 0xEC000000454D4954;
    }

    if (a1 <= 1u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v12;
    }

    if (v10 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    goto LABEL_55;
  }

  if (a1 == 49152)
  {
    return 5721932;
  }

  else
  {
    return 0x574F4C59524556;
  }
}

uint64_t sub_269BDE91C(uint64_t a1, unsigned int a2)
{
  if ((a2 >> 14) <= 1u)
  {
    if (a2 >> 14)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](a2);
      v3 = (a2 >> 8) & 0x3F;
      return MEMORY[0x26D64C450](v3);
    }

    MEMORY[0x26D64C450](0);
    goto LABEL_6;
  }

  if (a2 >> 14 == 2)
  {
    MEMORY[0x26D64C450](2);
LABEL_6:
    v3 = a2;
    return MEMORY[0x26D64C450](v3);
  }

  if (a2 == 49152)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return MEMORY[0x26D64C450](v3);
}

uint64_t sub_269BDE9B0(unsigned int a1)
{
  sub_269BF8C18();
  if ((a1 >> 14) <= 1u)
  {
    if (a1 >> 14)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](a1);
      v2 = (a1 >> 8) & 0x3F;
      goto LABEL_11;
    }

    MEMORY[0x26D64C450](0);
    goto LABEL_6;
  }

  if (a1 >> 14 == 2)
  {
    MEMORY[0x26D64C450](2);
LABEL_6:
    v2 = a1;
    goto LABEL_11;
  }

  if (a1 == 49152)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

LABEL_11:
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BDEA70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  sub_269BF8C38();
  MEMORY[0x26D64C450](v4);
  return sub_269BF8C58();
}

uint64_t sub_269BDEAF8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  sub_269BF8C38();
  return MEMORY[0x26D64C450](v3);
}

uint64_t sub_269BDEB58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  sub_269BF8C38();
  MEMORY[0x26D64C450](v4);
  return sub_269BF8C58();
}

BOOL sub_269BDEBDC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0)
  {
    return *(a1 + 10) == *(a2 + 10);
  }

  return result;
}

uint64_t sub_269BDEC34()
{
  v1 = *v0;
  sub_269BF8C18();
  v2 = v1 >> 14;
  if (v1 >> 14 <= 1)
  {
    if (v2)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](v1);
      v4 = (v1 >> 8) & 0x3F;
      goto LABEL_11;
    }

    v3 = 0;
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v3 = 2;
LABEL_6:
    MEMORY[0x26D64C450](v3);
    v4 = v1;
    goto LABEL_11;
  }

  if (v1 == 49152)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

LABEL_11:
  MEMORY[0x26D64C450](v4);
  return sub_269BF8C58();
}

unint64_t sub_269BDECF0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269BDF48C(*a1);
  *a2 = result;
  return result;
}

uint64_t _s11SleepHealth0A16ScoreNoteBuilderV08RelativeA5OnsetO9hashValueSivg_0()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BDED70()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BDEDB4(uint64_t a1, int a2)
{
  v2 = a2;
  if ((a2 & 0xFE0000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x646C6C255FLL;
  }

  if ((a2 & 0xFE0000) != 0)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_269BF8B88();
  MEMORY[0x26D64C060](v5);

  MEMORY[0x26D64C060](v3, v4);

  if (v2)
  {
    if (v2 == 1)
    {
      v6 = 1497449567;
    }

    else
    {
      v6 = 0;
    }

    if (v2 == 1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x544847494E5FLL;
  }

  v8 = (v2 & 0x100) == 0;
  if ((v2 & 0x100) != 0)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4203871;
  }

  MEMORY[0x26D64C060](v6, v7);

  MEMORY[0x26D64C060](v10, v9);

  return 86;
}

BOOL sub_269BDEEE0(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 != 2)
    {
      if (a1 == 49152)
      {
        if (a2 == 49152)
        {
          return 1;
        }
      }

      else if (a2 == 49153)
      {
        return 1;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x8000)
    {
      return (a2 ^ a1) == 0;
    }

    return 0;
  }

  if (!(a1 >> 14))
  {
    if (a2 >= 0x4000u)
    {
      return 0;
    }

    return (a2 ^ a1) == 0;
  }

  if ((a2 & 0xC000) != 0x4000)
  {
    return 0;
  }

  return a2 == a1 && ((a2 ^ a1) & 0x3F00) == 0;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Contributor(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreNote.Contributor(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Customization(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for SleepScoreNote.Customization(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Level(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FD)
  {
    goto LABEL_17;
  }

  if (a2 + 64515 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 64515 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 64515;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 64515;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 64515;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * ((*a1 >> 6) & 0xE0 | (*a1 >> 3)))) ^ 0x3FF;
  if (v6 >= 0x3FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for SleepScoreNote.Level(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64515 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 64515 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3FD)
  {
    v4 = 0;
  }

  if (a2 > 0x3FC)
  {
    v5 = ((a2 - 1021) >> 16) + 1;
    *result = a2 - 1021;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = (-a2 >> 2) - (a2 << 8);
    *result = (v6 << 6) & 0xF800 | (8 * (v6 & 0x1F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269BDF30C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 7 | (8 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_269BDF340(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x707 | (a2 << 14);
  }

  else
  {
    *result = (32 * (a2 - 3)) & 0x700 | (a2 - 3) & 7 | 0xC000;
  }

  return result;
}

unint64_t sub_269BDF388()
{
  result = qword_28034A7F0;
  if (!qword_28034A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A7F0);
  }

  return result;
}

unint64_t sub_269BDF3E0()
{
  result = qword_28034A7F8;
  if (!qword_28034A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A7F8);
  }

  return result;
}

unint64_t sub_269BDF438()
{
  result = qword_28034A800;
  if (!qword_28034A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A800);
  }

  return result;
}

unint64_t sub_269BDF48C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreComponent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreComponent(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FD && *(a1 + 19))
  {
    return (*a1 + 1021);
  }

  v3 = ((*a1 >> 14) | (4 * ((*a1 >> 6) & 0xE0 | (*a1 >> 3)))) ^ 0x3FF;
  if (v3 >= 0x3FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SleepScoreNote(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FC)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 1021;
    *(result + 8) = 0;
    if (a3 >= 0x3FD)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FD)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) - (a2 << 8);
      *result = (v3 << 6) & 0xF800 | (8 * (v3 & 0x1F));
    }
  }

  return result;
}

unint64_t sub_269BDF6DC()
{
  result = qword_28034A808;
  if (!qword_28034A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A808);
  }

  return result;
}

unint64_t sub_269BDF734()
{
  result = qword_28034A810;
  if (!qword_28034A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A810);
  }

  return result;
}

uint64_t sub_269BDF7A8(uint64_t a1)
{
  v2 = sub_269BF84C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_269BF87B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_269BDC818();
  if (!sub_269BF8978())
  {
    v8 = [objc_opt_self() mainBundle];
  }

  sub_269BF8488();
  return sub_269BF87F8();
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.init(_:baselineDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.init<A>(_:baselineDays:suffixLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v15);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v23);
  result = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    sub_269BF86D8();
    (*(v13 + 8))(a1, a5);
    v25 = *(a6 + 8);
    v26 = *(swift_getAssociatedConformanceWitness() + 8);
    v27 = v29;
    (*(v19 + 32))(v29, v22, a4);
    result = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator();
    *(v27 + *(result + 36)) = a2;
  }

  return result;
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.makeIterator()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v1 + *(a1 + 36));
  v13 = *(v8 + 20);
  v14 = sub_269BF8688();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  *&v11[*(v8 + 24)] = MEMORY[0x277D84F90];
  *v11 = v12;
  v15 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v16 = swift_allocBox();
  (*(v4 + 16))(v7, v1, v3);
  sub_269BF8858();
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = v15;
  v17[4] = v16;
  v17[5] = v9;
  sub_269BDB15C();
  return sub_269BF8A28();
}

uint64_t sub_269BDFD7C@<X0>(void *a1@<X8>)
{
  v19 = a1;
  sub_269BE0518(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v18 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder();
  swift_projectBox();
  v9 = (v6 + 48);
  while (1)
  {
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    sub_269BF89B8();
    swift_endAccess();
    v10 = v20;
    if (!v20)
    {
      sub_269BDB15C();
      return (*(*(v11 - 8) + 56))(v19, 1, 1, v11);
    }

    swift_beginAccess();
    sub_269BD3ED0(v10, v4);
    swift_endAccess();
    if ((*v9)(v4, 1, v5) != 1)
    {
      break;
    }

    sub_269BE057C(v4);
  }

  v13 = v18;
  sub_269BE0608(v4, v18);
  sub_269BDB15C();
  v15 = v14;
  v16 = *(v14 + 48);
  v17 = v19;
  *v19 = v10;
  sub_269BE0608(v13, v17 + v16);
  return (*(*(v15 - 8) + 56))(v17, 0, 1, v15);
}

uint64_t sub_269BE0064@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_269BDFD7C(a1);
}

unint64_t sub_269BE0074()
{
  result = qword_28034A818;
  if (!qword_28034A818)
  {
    sub_269BE0518(255, &qword_28034A820, sub_269BDB15C, MEMORY[0x277D84048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A818);
  }

  return result;
}

uint64_t sub_269BE00FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = SleepScoreMetricsDaySummaryEnumerator.makeIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_269BE0174(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BE0514(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_269BE0214(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269BE028C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
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
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_269BE0390(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
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
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_269BE0518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269BE057C(uint64_t a1)
{
  sub_269BE0518(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269BE0608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BE0710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t SleepScoreLevels.levels.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84FA0];
  if (v1)
  {
    sub_269BE0C48(&v3, 0);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_269BE0C48(&v4, 1);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_269BE0C48(&v6, 3);
    if ((v1 & 0x10) == 0)
    {
      return v8;
    }

    goto LABEL_6;
  }

LABEL_10:
  sub_269BE0C48(&v5, 2);
  if ((v1 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v1 & 0x10) != 0)
  {
LABEL_6:
    sub_269BE0C48(&v7, 4);
  }

  return v8;
}

BOOL sub_269BE0870(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v3);
  v5 = sub_269BF8C58();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_269BE0948()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BE09BC()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

BOOL sub_269BE0A44(void *a1, uint64_t *a2)
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

void *sub_269BE0A74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_269BE0AA0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_269BE0B78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269BE0C48(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_269BF8C18();
  MEMORY[0x26D64C450](a2);
  v7 = sub_269BF8C58();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_269BE14E8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_269BE0D44()
{
  result = qword_28034A828;
  if (!qword_28034A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A828);
  }

  return result;
}

unint64_t sub_269BE0D9C()
{
  result = qword_28034A830;
  if (!qword_28034A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A830);
  }

  return result;
}

unint64_t sub_269BE0DF0()
{
  result = qword_28034A838;
  if (!qword_28034A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A838);
  }

  return result;
}

unint64_t sub_269BE0E48()
{
  result = qword_28034A840;
  if (!qword_28034A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreLevels(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreLevels(uint64_t result, int a2, int a3)
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

uint64_t sub_269BE0F00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_269BF8C18();
  sub_269BF8818();
  v9 = sub_269BF8C58();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_269BF8BB8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_269BE1634(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_269BE1050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269BE1ED0();
  result = sub_269BF8A48();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_269BF8C18();
      MEMORY[0x26D64C450](v18);
      result = sub_269BF8C58();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_269BE1294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269BE1E78();
  result = sub_269BF8A48();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_269BF8C18();
      sub_269BF8818();
      result = sub_269BF8C58();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_269BE14E8(uint64_t result, unint64_t a2, char a3)
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
    sub_269BE1050(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_269BE17B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_269BE1A38(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v4);
  result = sub_269BF8C58();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_269BF8BE8();
  __break(1u);
  return result;
}

uint64_t sub_269BE1634(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_269BE1294(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_269BE18E8();
      goto LABEL_16;
    }

    sub_269BE1C4C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_269BF8C18();
  sub_269BF8818();
  result = sub_269BF8C58();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_269BF8BB8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_269BF8BE8();
  __break(1u);
  return result;
}

void *sub_269BE17B4()
{
  v1 = v0;
  sub_269BE1ED0();
  v2 = *v0;
  v3 = sub_269BF8A38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_269BE18E8()
{
  v1 = v0;
  sub_269BE1E78();
  v2 = *v0;
  v3 = sub_269BF8A38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_269BE1A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269BE1ED0();
  result = sub_269BF8A48();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_269BF8C18();
      MEMORY[0x26D64C450](v17);
      result = sub_269BF8C58();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}