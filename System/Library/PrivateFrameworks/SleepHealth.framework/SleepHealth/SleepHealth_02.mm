void sub_269BF35E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269BF3630(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF8B98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t SleepScoreMetricsDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter()
{
  sub_269BD3170();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269BF8458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v14 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BF39E8(v0 + *(v17 + 32), v16, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  if ((*(v6 + 48))(v16, 2, v5))
  {
    return 0;
  }

  (*(v6 + 32))(v12, v16, v5);
  sub_269BF39E8(v0 + *(v17 + 36), v4, sub_269BD3170);
  v18 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
  {
    (*(v6 + 8))(v12, v5);
    sub_269BF61E4(v4, sub_269BD3170);
    return 0;
  }

  (*(v6 + 16))(v10, &v4[*(v18 + 28)], v5);
  sub_269BF61E4(v4, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8418();
  v21 = v20;
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v12, v5);
  return v21;
}

uint64_t sub_269BF39E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.init(sleepDuration:awakeSegmentCount:awakeSegmentsDuration:sleepStartTime:deepSleepSegmentsDuration:remSegmentsDuration:classifiedSleepSegmentsDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a5;
  v13 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v14 = v13[7];
  v15 = sub_269BF8458();
  result = (*(*(v15 - 8) + 32))(a3 + v14, a2, v15);
  *(a3 + v13[8]) = a6;
  *(a3 + v13[9]) = a7;
  *(a3 + v13[10]) = a8;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.init(morningIndex:gregorianCalendar:sleepDurationGoal:minimumRecommendedSleepDurationGoal:usualSleepStart:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v16 = a9 + v15[6];
  v17 = a9 + v15[7];
  v18 = v15[9];
  v19 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = sub_269BF8688();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = v15[5];
  v22 = sub_269BF8508();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  sub_269BF5D6C(a7, a9 + v15[8], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  return sub_269BF40EC(a8, a9 + v18, sub_269BD3170);
}

uint64_t SleepScoreMetricsDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269BF8688();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepScoreMetricsDaySummary.morningIndex.setter(uint64_t a1)
{
  v3 = sub_269BF8688();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SleepScoreMetricsDaySummary.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreMetricsDaySummary.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreMetricsDaySummary.sleepDurationGoal.getter()
{
  v1 = (v0 + *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SleepScoreMetricsDaySummary.sleepDurationGoal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.minimumRecommendedSleepDurationGoal.getter()
{
  v1 = (v0 + *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SleepScoreMetricsDaySummary.minimumRecommendedSleepDurationGoal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_269BF40EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t SleepScoreMetricsDaySummary.SleepStartBaseline.hash(into:)()
{
  v1 = sub_269BF8458();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF39E8(v0, v9, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    return MEMORY[0x26D64C450](v10 != 1);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x26D64C450](2);
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
  sub_269BF86B8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t SleepScoreMetricsDaySummary.SleepStartBaseline.hashValue.getter()
{
  v1 = v0;
  v2 = sub_269BF8458();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v8 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8C18();
  sub_269BF39E8(v1, v10, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    MEMORY[0x26D64C450](v11 != 1);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
    sub_269BF86B8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_269BF8C58();
}

uint64_t sub_269BF4578(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BF8458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF39E8(v2, v12, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    return MEMORY[0x26D64C450](v13 != 1);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x26D64C450](2);
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
  sub_269BF86B8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_269BF4750(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_269BF8458();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8C18();
  sub_269BF39E8(v4, v13, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    MEMORY[0x26D64C450](v14 != 1);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
    sub_269BF86B8();
    (*(v6 + 8))(v10, v5);
  }

  return sub_269BF8C58();
}

uint64_t SleepScoreMetricsDaySummary.Metrics.sleepStartTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0) + 28);
  v4 = sub_269BF8458();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreMetricsDaySummary.Metrics.sleepStartTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0) + 28);
  v4 = sub_269BF8458();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreMetricsDaySummary.Metrics.deepSleepSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.remSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.classifiedSleepSegmentsDuration.setter(double a1)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26D64C470](*&v2);
  MEMORY[0x26D64C450](*(v0 + 8));
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26D64C470](*&v3);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v5 = v4[7];
  sub_269BF8458();
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
  sub_269BF86B8();
  v6 = *(v1 + v4[8]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26D64C470](*&v6);
  v7 = *(v1 + v4[9]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26D64C470](*&v7);
  v8 = *(v1 + v4[10]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  return MEMORY[0x26D64C470](*&v8);
}

uint64_t SleepScoreMetricsDaySummary.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269BF8458();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v15 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8688();
  sub_269BF5D24(&qword_28034AA78, MEMORY[0x277CCB6A8]);
  sub_269BF86B8();
  v18 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v19 = v18[5];
  sub_269BF8508();
  sub_269BF5D24(&qword_28034AA80, MEMORY[0x277CC99E8]);
  sub_269BF86B8();
  v20 = (v1 + v18[6]);
  if (*(v20 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v21 = *v20;
    sub_269BF8C38();
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x26D64C470](v22);
  }

  v23 = (v1 + v18[7]);
  if (*(v23 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v24 = *v23;
    sub_269BF8C38();
    if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    MEMORY[0x26D64C470](v25);
  }

  sub_269BF39E8(v1 + v18[8], v17, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v26 = (*(v10 + 48))(v17, 2, v9);
  if (v26)
  {
    MEMORY[0x26D64C450](v26 != 1);
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578]);
    sub_269BF86B8();
    (*(v10 + 8))(v13, v9);
  }

  v28 = v33;
  v27 = v34;
  sub_269BF39E8(v1 + v18[9], v8, sub_269BD3170);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    return sub_269BF8C38();
  }

  v30 = v32;
  sub_269BF5D6C(v8, v32, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8C38();
  SleepScoreMetricsDaySummary.Metrics.hash(into:)();
  return sub_269BF61E4(v30, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
}

uint64_t sub_269BF540C(void (*a1)(_BYTE *))
{
  sub_269BF8C18();
  a1(v3);
  return sub_269BF8C58();
}

uint64_t sub_269BF546C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_269BF8C18();
  a3(v5);
  return sub_269BF8C58();
}

uint64_t sub_269BF54D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_269BF8C18();
  a4(v6);
  return sub_269BF8C58();
}

uint64_t _s11SleepHealth0A22ScoreMetricsDaySummaryV0A13StartBaselineO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BF8458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  v10 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF6128(0, &qword_28034AAB8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_269BF39E8(a1, &v24 - v16, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  sub_269BF39E8(a2, &v17[v18], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_269BF39E8(v17, v12, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_269BF8438();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_269BF61E4(v17, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_269BF6188(v17, &qword_28034AAB8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v21 = 0;
    return v21 & 1;
  }

  sub_269BF61E4(v17, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v21 = 1;
  return v21 & 1;
}

BOOL _s11SleepHealth0A22ScoreMetricsDaySummaryV0D0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v5 = v4[7];
  return (sub_269BF8438() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]);
}

BOOL _s11SleepHealth0A22ScoreMetricsDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF6128(0, &qword_28034AAB0, sub_269BD3170);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  sub_269BF8688();
  sub_269BF5D24(qword_280B61430, MEMORY[0x277CCB6A8]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  if ((MEMORY[0x26D64BD10](a1 + v18[5], a2 + v18[5]) & 1) == 0)
  {
    return 0;
  }

  v19 = v18[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v18[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if ((_s11SleepHealth0A22ScoreMetricsDaySummaryV0A13StartBaselineO2eeoiySbAE_AEtFZ_0(a1 + v18[8], a2 + v18[8]) & 1) == 0)
  {
    return 0;
  }

  v29 = v18[9];
  v30 = *(v14 + 48);
  sub_269BF39E8(a1 + v29, v17, sub_269BD3170);
  sub_269BF39E8(a2 + v29, &v17[v30], sub_269BD3170);
  v31 = *(v5 + 48);
  if (v31(v17, 1, v4) != 1)
  {
    sub_269BF39E8(v17, v12, sub_269BD3170);
    if (v31(&v17[v30], 1, v4) == 1)
    {
      sub_269BF61E4(v12, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      goto LABEL_21;
    }

    sub_269BF5D6C(&v17[v30], v8, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v33 = _s11SleepHealth0A22ScoreMetricsDaySummaryV0D0V2eeoiySbAE_AEtFZ_0(v12, v8);
    sub_269BF61E4(v8, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    sub_269BF61E4(v12, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    sub_269BF61E4(v17, sub_269BD3170);
    return v33;
  }

  if (v31(&v17[v30], 1, v4) != 1)
  {
LABEL_21:
    sub_269BF6188(v17, &qword_28034AAB0, sub_269BD3170);
    return 0;
  }

  sub_269BF61E4(v17, sub_269BD3170);
  return 1;
}

uint64_t sub_269BF5D24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269BF5D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BF5ED4()
{
  sub_269BF8688();
  if (v0 <= 0x3F)
  {
    sub_269BF8508();
    if (v1 <= 0x3F)
    {
      sub_269BF5FA0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(319);
        if (v3 <= 0x3F)
        {
          sub_269BD3170();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_269BF5FA0()
{
  if (!qword_280B61588)
  {
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, &qword_280B61588);
    }
  }
}

uint64_t sub_269BF6018()
{
  v0 = sub_269BF8458();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_269BF6098()
{
  result = sub_269BF8458();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_269BF6128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269BF6188(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269BF6128(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BF61E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BF6460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_269BF67E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

id HKSHCreatePossibleSleepApneaDetectedNotificationRequest(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v3 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"POSSIBLE_SLEEP_APNEA_DETECTED_TITLE" arguments:0];
  [v2 setTitle:v3];

  v4 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"POSSIBLE_SLEEP_APNEA_DETECTED_BODY" arguments:0];
  [v2 setBody:v4];

  v5 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v2 setSound:v5];

  [v2 setCategoryIdentifier:@"PossibleSleepApnea"];
  [v2 setThreadIdentifier:@"SleepApneaNotificationsThreadCategory"];
  if (v1)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v6 setObject:&unk_287A99010 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
    v7 = HKSHSleepApneaEventSampleDetailsLink(v1);
    v8 = [v7 absoluteString];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCE4E0]];

    [v2 setUserInfo:v6];
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [v2 setDate:v9];
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 hk_dateByAddingDays:1 toDate:v9];
  [v2 setExpirationDate:v11];

  v12 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"HealthApp.SleepApneaNotifications" content:v2 trigger:0];

  return v12;
}

id HKSHSleepApneaEventSampleDetailsLink(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-health://SleepHealthAppPlugin.healthplugin/%@/%@", @"SleepApneaEventSampleDetail", a1];
  v3 = [v1 URLWithString:v2];

  return v3;
}

id HKSHSleepApneaControlServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9CFB0];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_getBreathingDisturbanceSamplesInDateInterval_includeTimeZones_completion_ argumentIndex:0 ofReply:1];

  return v0;
}