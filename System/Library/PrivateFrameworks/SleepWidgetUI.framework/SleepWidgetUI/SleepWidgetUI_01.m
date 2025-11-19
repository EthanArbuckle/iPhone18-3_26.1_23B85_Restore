uint64_t sub_269E02570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  sub_269E03DE8(0, &qword_281572220, MEMORY[0x277CE0330]);
  v58 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v51 - v5;
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  v67 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v51 - v8;
  v59 = type metadata accessor for SleepWidgetSmallView();
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SleepWidgetRectangularView();
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E035E0(0, &qword_281572200, MEMORY[0x277CE0330]);
  v62 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v66 = &v51 - v16;
  sub_269E036B4(0, &qword_281572228, type metadata accessor for SleepWidgetCircularView, type metadata accessor for SleepWidgetRectangularView, MEMORY[0x277CE0330]);
  v53 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v55 = &v51 - v19;
  sub_269E0366C(0);
  v64 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v56 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SleepWidgetCircularView();
  v23 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_269E51B0C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v51 - v32;
  sub_269E035C0(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v65 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v63 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E01FB0(v31);
  v38 = sub_269E02FE0(v31, v37);

  v39 = *(v27 + 8);
  v39(v31, v26);
  if (v38)
  {
    sub_269E01FB0(v33);
  }

  else
  {
    sub_269E01DA4(v33);
  }

  v40 = (*(v27 + 88))(v33, v26);
  if (v40 == *MEMORY[0x277CE3B68])
  {
    v41 = type metadata accessor for SleepWidgetView();
    sub_269E03FA8(a1 + *(v41 + 28), v11, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v11, v60, type metadata accessor for SleepWidgetSmallView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView);
    v42 = v61;
    sub_269E513BC();
    sub_269E03E50(v42, v66);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v43 = v65;
    sub_269E513BC();
    sub_269E03ED0(v42);
    sub_269E03F48(v11, type metadata accessor for SleepWidgetSmallView);
  }

  else if (v40 == *MEMORY[0x277CE3B90])
  {
    v44 = type metadata accessor for SleepWidgetView();
    sub_269E03FA8(a1 + *(v44 + 28), v25, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v25, v55, type metadata accessor for SleepWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView);
    v45 = v56;
    sub_269E513BC();
    sub_269E03FA8(v45, v66, sub_269E0366C);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v43 = v65;
    sub_269E513BC();
    sub_269E03F48(v45, sub_269E0366C);
    sub_269E03F48(v25, type metadata accessor for SleepWidgetCircularView);
  }

  else if (v40 == *MEMORY[0x277CE3B98])
  {
    v46 = type metadata accessor for SleepWidgetView();
    v47 = v52;
    sub_269E03FA8(a1 + *(v46 + 28), v52, type metadata accessor for SleepWidgetViewModel);
    sub_269E03FA8(v47, v55, type metadata accessor for SleepWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView);
    v48 = v56;
    sub_269E513BC();
    sub_269E03FA8(v48, v66, sub_269E0366C);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v43 = v65;
    sub_269E513BC();
    sub_269E03F48(v48, sub_269E0366C);
    sub_269E03F48(v47, type metadata accessor for SleepWidgetRectangularView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView);
    v49 = v61;
    sub_269E513BC();
    sub_269E03E50(v49, v66);
    swift_storeEnumTagMultiPayload();
    sub_269E03BF4();
    sub_269E03D1C();
    v43 = v65;
    sub_269E513BC();
    sub_269E03ED0(v49);
    v39(v33, v26);
  }

  sub_269E0376C(v43, v68, sub_269E035C0);
}

BOOL sub_269E02FE0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_269E51B0C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_269E03CD4(&qword_281571E18, MEMORY[0x277CE3BA0]);
  }

  while ((sub_269E51C9C() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_269E030EC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x26D652DF0]();
  *a1 = result;
  return result;
}

uint64_t sub_269E03118(uint64_t *a1)
{
  v1 = *a1;

  return sub_269E5117C();
}

uint64_t _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0355C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v4 = sub_269E51B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269E528E0;
  v9 = *(v5 + 104);
  v9(v8 + v7, *MEMORY[0x277CE3B90], v4);
  v9(v8 + v7 + v6, *MEMORY[0x277CE3B98], v4);
  v23 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269E528D0;
  v9(v10 + v7, *MEMORY[0x277CE3B68], v4);
  sub_269E25A54(v10);
  sub_269E50FFC();
  v11 = v23;

  v12 = sub_269E5100C();
  v13 = sub_269E51E9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_269E47920(0x6469577065656C53, 0xEF77656956746567, &v22);
    *(v14 + 12) = 2082;
    v16 = MEMORY[0x26D653A40](v11, v4);
    v18 = sub_269E47920(v16, v17, &v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] supportedFamilies: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v15, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);
  }

  (*(v20 + 8))(v3, v21);
  return v11;
}

uint64_t type metadata accessor for SleepWidgetView()
{
  result = qword_281572B70;
  if (!qword_281572B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E0355C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E035E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E0366C(255);
    v7 = v6;
    sub_269E03DE8(255, &qword_281572178, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E036B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269E0376C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269E03818()
{
  sub_269E0355C(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SleepWidgetViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269E03908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E03958()
{
  result = qword_281572388;
  if (!qword_281572388)
  {
    sub_269E036B4(255, &qword_281572380, sub_269E034E0, sub_269E03738, MEMORY[0x277CDFAB8]);
    sub_269E03A4C();
    sub_269E03CD4(&qword_2815720B8, sub_269E03738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572388);
  }

  return result;
}

unint64_t sub_269E03A4C()
{
  result = qword_281572490;
  if (!qword_281572490)
  {
    sub_269E034E0(255);
    sub_269E03AFC();
    sub_269E03CD4(&qword_2815720A0, sub_269DFB55C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572490);
  }

  return result;
}

unint64_t sub_269E03AFC()
{
  result = qword_281572008;
  if (!qword_281572008)
  {
    sub_269E03528(255);
    sub_269E03B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572008);
  }

  return result;
}

unint64_t sub_269E03B74()
{
  result = qword_281572128;
  if (!qword_281572128)
  {
    sub_269E035C0(255);
    sub_269E03BF4();
    sub_269E03D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572128);
  }

  return result;
}

unint64_t sub_269E03BF4()
{
  result = qword_281572190;
  if (!qword_281572190)
  {
    sub_269E0366C(255);
    sub_269E03CD4(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView);
    sub_269E03CD4(qword_281572D58, type metadata accessor for SleepWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572190);
  }

  return result;
}

uint64_t sub_269E03CD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E03D1C()
{
  result = qword_281572180;
  if (!qword_281572180)
  {
    sub_269E03DE8(255, &qword_281572178, MEMORY[0x277CE0338]);
    sub_269E03CD4(&qword_281572958, type metadata accessor for SleepWidgetSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572180);
  }

  return result;
}

void sub_269E03DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepWidgetSmallView();
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E03E50(uint64_t a1, uint64_t a2)
{
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E03ED0(uint64_t a1)
{
  sub_269E03DE8(0, &qword_281572178, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E03F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E03FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void SleepSnidgetView.init(sleepDaySummaries:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 1;
  SleepDaySummaryResults.init(summaries:context:)(a1, &v6, v7);
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  *a2 = v7[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t SleepSnidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for SleepWidgetChartView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E04A5C(0, &qword_28035EAF8, MEMORY[0x277CE0330]);
  v55 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = sub_269E50E4C();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_269E50E5C();
  v53 = *(v56 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269E50DAC();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v27 = *v1;
  v26 = *(v1 + 8);
  v28 = *(v1 + 16);
  v29 = *(v1 + 24);
  if (v26)
  {
    v46 = &v45 - v24;
    v47 = v25;
    v48 = v23;
    v54 = v2;
    v30 = v26;
    v31 = [v30 summaryFilteredToLastPeriod];
    if (v31)
    {
      v32 = v31;
      if ([v31 hasSleepStageData])
      {
        sub_269E51F1C();

        v34 = v46;
        v33 = v47;
        v35 = v22;
        v36 = v48;
        (*(v47 + 32))(v46, v35, v48);
        (*(v33 + 16))(v19, v34, v36);
        sub_269E047CC(0, &qword_281571BE8, MEMORY[0x277D84560]);
        v37 = *(v49 + 72);
        v38 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_269E53730;
        sub_269E50E3C();
        sub_269E50E2C();
        sub_269E50DFC();
        sub_269E50DDC();
        v59 = v39;
        sub_269E04728(&qword_281573C30, MEMORY[0x277D626D0]);
        sub_269E047CC(0, &qword_281571DB0, MEMORY[0x277D83940]);
        sub_269E0482C();
        sub_269E51FEC();
        v40 = objc_allocWithZone(sub_269E50EFC());
        sub_269E50EEC();
        v41 = v52;
        sub_269E50DBC();
        v42 = v53;
        v43 = v56;
        (*(v53 + 16))(v9, v41, v56);
        swift_storeEnumTagMultiPayload();
        sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8]);
        sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView);
        sub_269E513BC();
        (*(v42 + 8))(v41, v43);
        return (*(v33 + 8))(v34, v36);
      }
    }

    else
    {
      v32 = v30;
    }
  }

  v59 = v27;
  v60 = v26;
  v61 = v28;
  v62 = v29;
  sub_269E0B178(&v58);
  sub_269E49E94(&v58, 13, v5);
  sub_269E046C4(v5, v9);
  swift_storeEnumTagMultiPayload();
  sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8]);
  sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView);
  sub_269E513BC();
  return sub_269E04770(v5);
}

uint64_t sub_269E046C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E04728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E04770(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetChartView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E047CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269E50E4C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269E0482C()
{
  result = qword_281571DA8;
  if (!qword_281571DA8)
  {
    sub_269E047CC(255, &qword_281571DB0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571DA8);
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

uint64_t sub_269E048C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E04910(uint64_t result, int a2, int a3)
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

unint64_t sub_269E04960()
{
  result = qword_28035EB00;
  if (!qword_28035EB00)
  {
    sub_269E04A5C(255, &qword_28035EB08, MEMORY[0x277CE0338]);
    sub_269E04728(&qword_281573C28, MEMORY[0x277D626E8]);
    sub_269E04728(&qword_281572A30, type metadata accessor for SleepWidgetChartView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB00);
  }

  return result;
}

void sub_269E04A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269E50E5C();
    v7 = type metadata accessor for SleepWidgetChartView();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
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

uint64_t sub_269E04AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E04B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269E04BA0(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_269E519EC();
}

uint64_t sub_269E04D70()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 56);
  if (*(v0 + 64) != 1)
  {
    v7 = *(v0 + 56);

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_269E04EB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  sub_269DFE53C();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0895C(255);
  v8 = *(a1 + 16);
  v34 = *(a1 + 24);
  v39 = v9;
  v40 = v8;
  v41 = MEMORY[0x277CE1180];
  type metadata accessor for SleepWidgetResultsView.SummaryTextView();
  v42 = sub_269E510FC();
  sub_269E08A58();
  v43 = v10;
  swift_getTupleTypeMetadata();
  sub_269E519DC();
  swift_getWitnessTable();
  v11 = sub_269E5194C();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_269E08D9C(&qword_281571BF8, sub_269DFE53C);
  v39 = v11;
  v40 = v4;
  v32 = v4;
  v30[1] = v16;
  v30[2] = WitnessTable;
  v41 = WitnessTable;
  v42 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v30 - v23;
  sub_269E5134C();
  v36 = v8;
  v37 = v34;
  v38 = v35;
  sub_269E5193C();
  v25 = *MEMORY[0x277CDFA10];
  v26 = sub_269E510EC();
  (*(*(v26 - 8) + 104))(v7, v25, v26);
  sub_269E08D9C(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E5179C();
    sub_269E09034(v7, sub_269DFE53C);
    (*(v31 + 8))(v14, v11);
    v28 = v18[2];
    v28(v24, v22, OpaqueTypeMetadata2);
    v29 = v18[1];
    v29(v22, OpaqueTypeMetadata2);
    v28(v33, v24, OpaqueTypeMetadata2);
    return (v29)(v24, OpaqueTypeMetadata2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E05318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v79 = a4;
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v69 - v11;
  sub_269E0895C(0);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v81 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v69 - v18);
  sub_269E51E1C();
  v80 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v20 = sub_269E50A7C();
  v22 = v21;
  *v19 = swift_getKeyPath();
  sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v23 = (v19 + *(type metadata accessor for HeaderView(0) + 20));
  *v23 = v20;
  v23[1] = v22;
  LOBYTE(v20) = sub_269E5150C();
  sub_269E5102C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_269E08998(0);
  v33 = v19 + *(v32 + 36);
  *v33 = v20;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  LOBYTE(v20) = sub_269E514FC();
  v34 = sub_269E5102C();
  v35 = v19 + *(v14 + 36);
  *v35 = v20;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  v40 = *(a1 + 48);
  (*(a1 + 40))(v34);
  v75 = v6[2];
  v75(v12, v10, a2);
  v41 = v6[1];
  v77 = v6 + 1;
  v78 = v41;
  v41(v10, a2);
  v42 = *(a1 + 24);
  v43 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = SleepWidgetModelProviding.summaryDurationTitle.getter(v42, v43);
  v76 = v14;
  v45 = v44;
  v47 = v46;
  v74 = v12;
  v72 = v19;
  v48 = *(a1 + 24);
  v49 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v50 = (*(v49 + 24))(v48, v49);
  *&v89 = v45;
  *(&v89 + 1) = v47;
  *&v90 = v50;
  *(&v90 + 1) = v51;
  sub_269E5150C();
  type metadata accessor for SleepWidgetResultsView.SummaryTextView();
  WitnessTable = swift_getWitnessTable();
  v70 = a2;
  v53 = WitnessTable;
  sub_269E517FC();

  v91 = v107;
  v92[0] = v108[0];
  *(v92 + 9) = *(v108 + 9);
  v89 = v105;
  v90 = v106;
  v54 = sub_269E510FC();
  v111 = v53;
  v112 = MEMORY[0x277CDF918];
  v71 = swift_getWitnessTable();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v113, &v89, v54);
  v115[2] = v91;
  v116[0] = v92[0];
  *(v116 + 9) = *(v92 + 9);
  v115[0] = v89;
  v115[1] = v90;
  v73 = *(v55 + 8);
  v73(v115, v54);
  sub_269E08ABC(a1, v102);
  *(&v103 + 1) = 0;
  LOBYTE(v53) = sub_269E5150C();
  sub_269E04D70();
  sub_269E5102C();
  v105 = v102[0];
  v106 = v102[1];
  v107 = v103;
  v104 = 0;
  LOBYTE(v108[0]) = v53;
  *(&v108[0] + 1) = v56;
  *&v108[1] = v57;
  *(&v108[1] + 1) = v58;
  v109 = v59;
  v110 = 0;
  v60 = v72;
  v61 = v81;
  sub_269E07860(v72, v81, sub_269E0895C);
  v99[0] = v61;
  v62 = v10;
  v69 = v10;
  v63 = v10;
  v64 = v74;
  v65 = v70;
  v75(v63, v74, v70);
  v97 = 0x4024000000000000;
  v98 = 0;
  v99[1] = v62;
  v99[2] = &v97;
  v95 = v113[2];
  v96[0] = v114[0];
  *(v96 + 9) = *(v114 + 9);
  v93 = v113[0];
  v94 = v113[1];
  v99[3] = &v93;
  sub_269E07860(&v105, &v89, sub_269E08A58);
  v99[4] = &v89;
  v88[0] = v76;
  v88[1] = v65;
  v88[2] = MEMORY[0x277CE1180];
  v88[3] = v54;
  sub_269E08A58();
  v88[4] = v66;
  v83 = sub_269E08B20(&qword_2815723F8, sub_269E0895C, sub_269E08BA4);
  v84 = v82;
  v85 = MEMORY[0x277CE1170];
  v86 = v71;
  v87 = sub_269E08B20(&qword_281572558, sub_269E08A58, sub_269E08C54);
  sub_269E04BA0(v99, 5uLL, v88);
  sub_269E09034(&v105, sub_269E08A58);
  v67 = v78;
  v78(v64, v65);
  sub_269E09034(v60, sub_269E0895C);
  sub_269E09034(&v89, sub_269E08A58);
  v100[2] = v95;
  v101[0] = v96[0];
  *(v101 + 9) = *(v96 + 9);
  v100[0] = v93;
  v100[1] = v94;
  v73(v100, v54);
  v67(v69, v65);
  sub_269E09034(v61, sub_269E0895C);
}

uint64_t sub_269E05AEC()
{
  sub_269DF0E28();

  v0 = sub_269E516CC();
  v2 = v1;
  v4 = v3;
  sub_269E518AC();
  v5 = sub_269E5168C();
  v7 = v6;
  v9 = v8;

  sub_269E00F48(v0, v2, v4 & 1);

  sub_269E5162C();
  v10 = sub_269E516AC();
  v12 = v11;
  v14 = v13;

  sub_269E00F48(v5, v7, v9 & 1);

  sub_269E515CC();
  v15 = sub_269E5167C();
  v17 = v16;
  LOBYTE(v0) = v18;
  v20 = v19;
  sub_269E00F48(v10, v12, v14 & 1);

  *&v22 = v15;
  *(&v22 + 1) = v17;
  LOBYTE(v23) = v0 & 1;
  *(&v23 + 1) = v20;
  *&v24 = swift_getKeyPath();
  *(&v24 + 1) = 0x3FE6666666666666;
  *&v25 = swift_getKeyPath();
  *(&v25 + 1) = 1;

  MEMORY[0x26D6539C0](0xD000000000000011, 0x8000000269E56AB0);
  sub_269E08F3C(0);
  sub_269E08F84();
  sub_269E517EC();

  v26[2] = v24;
  v26[3] = v25;
  v27 = 0;
  v26[0] = v22;
  v26[1] = v23;
  return sub_269E09034(v26, sub_269E08F3C);
}

uint64_t sub_269E05D3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_269E05AEC();
}

uint64_t sub_269E05D4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v42 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E09094(0, &qword_281572230, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, MEMORY[0x277CE0330]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v1[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = SleepWidgetModelProviding.hasDataLastNight.getter(v14, v15);
  v18 = v2[3];
  v17 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v18);
  if (v16)
  {
    v19 = SleepWidgetModelProviding.summaryDurationText.getter(v18, v17);
    v21 = v20;
    v22 = v2[3];
    v23 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v22);
    v24 = (*(v23 + 24))(v22, v23);
    v26 = v25;
    v27 = v2[5];
    *v13 = swift_getKeyPath();
    sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v28 = (v13 + v10[5]);
    *v28 = v19;
    v28[1] = v21;
    v29 = (v13 + v10[6]);
    *v29 = v24;
    v29[1] = v26;
    *(v13 + v10[7]) = v27;
    sub_269E07860(v13, v9, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView);
    swift_storeEnumTagMultiPayload();
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView);

    sub_269E513BC();
    v30 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView;
    v31 = v13;
  }

  else
  {
    v32 = (*(v17 + 16))(v18, v17);
    v33 = v2[3];
    v34 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v33);
    v35 = (*(v34 + 24))(v33, v34);
    v37 = v36;
    *v5 = swift_getKeyPath();
    sub_269E07A08(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v38 = v42;
    *(v5 + *(v42 + 20)) = v32;
    v39 = (v5 + *(v38 + 24));
    *v39 = v35;
    v39[1] = v37;
    sub_269E07860(v5, v9, type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
    swift_storeEnumTagMultiPayload();
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
    sub_269E513BC();
    v30 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView;
    v31 = v5;
  }

  return sub_269E09034(v31, v30);
}

uint64_t sub_269E06240()
{
  v1 = sub_269E50A5C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_269E063B0(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_269E516BC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v15[2] = v4;
  v15[3] = v6;
  v8 &= 1u;
  v16 = v8;
  v17 = v10;
  v18 = KeyPath;
  v19 = 0x3FE999999999999ALL;
  v12 = (v0 + *(type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0) + 24));
  v13 = v12[1];
  v15[0] = *v12;
  v15[1] = v13;

  MEMORY[0x26D6539C0](0xD000000000000011, 0x8000000269E56A60);
  sub_269E07E0C();
  sub_269E07E90();
  sub_269E517EC();

  sub_269E00F48(v4, v6, v8);
}

uint64_t sub_269E063B0@<X0>(uint64_t a1@<X8>)
{
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v98 = &v80 - v5;
  v6 = sub_269E5166C();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6);
  v95 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_269E51ADC();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  v10 = MEMORY[0x28223BE20](v83);
  v80 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v80 - v12;
  sub_269E07FE0(0, &qword_281573C98, sub_269E07F8C);
  v102 = v13;
  v105 = *(v13 - 8);
  v14 = *(v105 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v80 - v17;
  sub_269E07FE0(0, &qword_281573C90, sub_269E08040);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v80 - v22;
  v104 = sub_269E50ACC();
  v24 = *(v104 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v104);
  v91 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v93 = &v80 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v80 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v101 = &v80 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v80 - v35;
  v100 = type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView(0);
  v37 = (v1 + *(v100 + 20));
  v38 = *v37;
  v39 = v37[1];

  sub_269E50ABC();
  v103 = a1;
  sub_269E50A6C();
  sub_269E50ABC();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v85 = sub_269E08040();
  sub_269E50A8C();

  v40 = *(v24 + 8);
  v41 = v104;
  v40(v36, v104);
  sub_269E5156C();
  sub_269E515CC();
  v42 = sub_269E515FC();

  v108 = v42;
  sub_269E50A9C();

  v43 = *(v20 + 8);
  v89 = v23;
  v92 = v19;
  v44 = v19;
  v45 = v86;
  v90 = v20 + 8;
  v87 = v43;
  v43(v23, v44);
  v106 = swift_getKeyPath();
  swift_getKeyPath();
  v88 = sub_269E07F8C();
  sub_269E50A8C();
  v46 = v84;

  v94 = v24 + 8;
  v40(v32, v41);
  v47 = *(v46 + *(v100 + 28));
  v100 = v47;
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v49 = v81;
    sub_269E2E90C(v81);
    v50 = v80;
    sub_269E51ABC();
    v51 = sub_269E51AAC();
    v52 = *(v82 + 8);
    v53 = v50;
    v54 = v83;
    v52(v53, v83);
    if (v51)
    {
      v55 = sub_269E518AC();
    }

    else
    {
      v56 = [objc_opt_self() systemGrayColor];
      v55 = sub_269E5183C();
    }

    v48 = v55;
    v52(v49, v54);
  }

  v108 = v48;
  swift_retain_n();
  v57 = v102;
  sub_269E50A9C();

  v58 = *(v105 + 8);
  v105 += 8;
  v86 = v58;
  (v58)(v45, v57);
  sub_269E50A4C();
  sub_269E50ABC();
  v59 = swift_getKeyPath();
  *(&v80 - 2) = MEMORY[0x28223BE20](v59);
  swift_getKeyPath();
  v60 = v89;
  sub_269E50A8C();

  v40(v36, v104);
  v61 = v40;
  v62 = v95;
  v63 = v96;
  v64 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277CE0A90], v97);
  v65 = *MEMORY[0x277CE09A0];
  v66 = sub_269E5159C();
  v67 = *(v66 - 8);
  v68 = v98;
  (*(v67 + 104))(v98, v65, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  sub_269E515EC();
  sub_269E08104(v68);
  (*(v63 + 8))(v62, v64);
  v69 = v61;
  v70 = sub_269E5158C();

  v108 = v70;
  v72 = v91;
  v71 = v92;
  sub_269E50A9C();

  v73 = v100;
  v87(v60, v71);
  v74 = swift_getKeyPath();
  *(&v80 - 2) = MEMORY[0x28223BE20](v74);
  swift_getKeyPath();
  v75 = v99;
  sub_269E50A8C();
  v76 = v104;

  v69(v72, v76);
  if (!v73)
  {
    v73 = sub_269E5189C();
  }

  v108 = v73;
  v77 = v93;
  v78 = v102;
  sub_269E50A9C();

  (v86)(v75, v78);
  sub_269E50A3C();
  v69(v77, v76);
  return (v69)(v101, v76);
}

uint64_t sub_269E06DA0(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *a2;
  sub_269E089D4(0, a4, MEMORY[0x277CDF2B0], a5, MEMORY[0x277D84DE0]);
  return sub_269E51C9C() & 1;
}

uint64_t sub_269E06E2C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_269E08498(0, &qword_281571BE0, MEMORY[0x277CE08E0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269E528E0;
  v8 = sub_269E514AC();
  *(inited + 32) = v8;
  v9 = sub_269E514CC();
  *(inited + 33) = v9;
  v10 = sub_269E514BC();
  sub_269E514BC();
  if (sub_269E514BC() != v8)
  {
    v10 = sub_269E514BC();
  }

  sub_269E514BC();
  if (sub_269E514BC() != v9)
  {
    v10 = sub_269E514BC();
  }

  v16[1] = a1;
  *a1 = v10;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E08190();
  v12 = *(v11 + 44);
  v16[2] = *(v2 + *(v4 + 20));
  swift_getKeyPath();
  sub_269E07860(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_269E085B8(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_269E08498(0, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_269E09094(0, &qword_2815722F0, sub_269E082F8, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  sub_269E084E8();
  sub_269E0869C(&qword_2815722F8, &qword_2815722F0, sub_269E082F8, sub_269E08774);

  sub_269E5197C();
}

uint64_t sub_269E07198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a2;
  v63 = a3;
  v60 = sub_269E51ADC();
  v59 = *(v60 - 8);
  v4 = *(v59 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v64 = &v57 - v7;
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - v10;
  v12 = sub_269E5166C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = a1[1];
  sub_269E51E1C();
  v61 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v70[0] = v18;
  *(&v70[0] + 1) = v17;
  sub_269DF0E28();

  v19 = sub_269E516CC();
  v21 = v20;
  v23 = v22;
  v57 = v24;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  v25 = v12;
  v26 = *MEMORY[0x277CE09A0];
  v27 = sub_269E5159C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v11, v26, v27);
  (*(v28 + 56))(v11, 0, 1, v27);
  sub_269E515EC();
  sub_269E08104(v11);
  (*(v13 + 8))(v16, v25);
  sub_269E5154C();

  v29 = sub_269E516AC();
  v31 = v30;
  v33 = v32;

  sub_269E00F48(v19, v21, v23 & 1);

  sub_269E515AC();
  v34 = sub_269E5167C();
  v36 = v35;
  v38 = v37;
  sub_269E00F48(v29, v31, v33 & 1);

  v39 = v62;
  sub_269E2E90C(v64);
  v40 = v58;
  sub_269E51ABC();
  LOBYTE(v27) = sub_269E51AAC();
  v41 = *(v59 + 8);
  v42 = v40;
  v43 = v60;
  v41(v42, v60);
  if (v27)
  {
    sub_269E518AC();
  }

  else
  {
    v44 = [objc_opt_self() secondaryLabelColor];
    sub_269E5183C();
  }

  v41(v64, v43);
  v45 = sub_269E5168C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_269E00F48(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v73 = v49 & 1;
  v72 = 0;
  v53 = swift_getKeyPath();
  *&v65 = v45;
  *(&v65 + 1) = v47;
  LOBYTE(v66) = v49 & 1;
  *(&v66 + 1) = v51;
  *&v67 = KeyPath;
  *(&v67 + 1) = 1;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = 257;
  *(&v68 + 1) = v53;
  v69 = 0x3FE999999999999ALL;
  v54 = (v39 + *(type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0) + 24));
  v55 = v54[1];
  *&v70[0] = *v54;
  *(&v70[0] + 1) = v55;

  MEMORY[0x26D6539C0](0x54617461446F4E2ELL, 0xEB00000000747865);
  sub_269E082F8();
  sub_269E08774();
  sub_269E517EC();

  v70[2] = v67;
  v70[3] = v68;
  v71 = v69;
  v70[0] = v65;
  v70[1] = v66;
  sub_269E09034(v70, sub_269E082F8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_269E07860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E078C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269E07940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E07988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269E07A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E07A80()
{
  sub_269E07A08(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E08498(319, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E07B84()
{
  sub_269E07A08(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E08498(319, &qword_281572020, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_269E07C6C()
{
  result = qword_2815721C0;
  if (!qword_2815721C0)
  {
    sub_269E09094(255, &qword_2815721B8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView, type metadata accessor for SleepStageSummaryValueView.NoDataStringView, MEMORY[0x277CE0338]);
    sub_269E08D9C(qword_2815734D8, type metadata accessor for SleepStageSummaryValueView.SummaryValueStringView);
    sub_269E08D9C(qword_281573578, type metadata accessor for SleepStageSummaryValueView.NoDataStringView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721C0);
  }

  return result;
}

void sub_269E07E0C()
{
  if (!qword_281572500)
  {
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572500);
    }
  }
}

unint64_t sub_269E07E90()
{
  result = qword_281572508;
  if (!qword_281572508)
  {
    sub_269E07E0C();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572508);
  }

  return result;
}

unint64_t sub_269E07F10()
{
  result = qword_2815720C8;
  if (!qword_2815720C8)
  {
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720C8);
  }

  return result;
}

unint64_t sub_269E07F8C()
{
  result = qword_281573CA8;
  if (!qword_281573CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573CA8);
  }

  return result;
}

void sub_269E07FE0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_269E50AAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269E08040()
{
  result = qword_281573CA0;
  if (!qword_281573CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573CA0);
  }

  return result;
}

uint64_t keypath_hashTm(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = *a1;
  sub_269E089D4(0, a3, MEMORY[0x277CDF2B0], a4, MEMORY[0x277D84DE0]);
  return sub_269E51C5C();
}

uint64_t sub_269E08104(uint64_t a1)
{
  sub_269E07A08(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269E08190()
{
  if (!qword_281572580)
  {
    sub_269E081FC();
    sub_269E08564();
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_281572580);
    }
  }
}

void sub_269E081FC()
{
  if (!qword_281571F20)
  {
    sub_269E08498(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_269E09094(255, &qword_2815722F0, sub_269E082F8, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_269E084E8();
    v0 = sub_269E5198C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F20);
    }
  }
}

void sub_269E082F8()
{
  if (!qword_281572330)
  {
    sub_269E089D4(255, &qword_2815723B0, sub_269E083BC, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_269E08498(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572330);
    }
  }
}

void sub_269E083BC()
{
  if (!qword_2815724F0)
  {
    sub_269E0841C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2815724F0);
    }
  }
}

void sub_269E0841C()
{
  if (!qword_281572080)
  {
    sub_269E08498(255, &qword_281571D28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v0 = sub_269E5147C();
    if (!v1)
    {
      atomic_store(v0, &qword_281572080);
    }
  }
}

void sub_269E08498(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E084E8()
{
  result = qword_281571D60;
  if (!qword_281571D60)
  {
    sub_269E08498(255, &qword_281571D70, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D60);
  }

  return result;
}

unint64_t sub_269E08564()
{
  result = qword_2815722C8;
  if (!qword_2815722C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815722C8);
  }

  return result;
}

uint64_t sub_269E085B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0861C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepStageSummaryValueView.NoDataStringView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_269E07198(a1, v6, a2);
}

uint64_t sub_269E0869C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_269E09094(255, a2, a3, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    a4();
    sub_269E08D9C(&qword_281572078, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E08774()
{
  result = qword_281572338;
  if (!qword_281572338)
  {
    sub_269E082F8();
    sub_269E087F4();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572338);
  }

  return result;
}

unint64_t sub_269E087F4()
{
  result = qword_2815723B8;
  if (!qword_2815723B8)
  {
    sub_269E089D4(255, &qword_2815723B0, sub_269E083BC, MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_269E088AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723B8);
  }

  return result;
}

unint64_t sub_269E088AC()
{
  result = qword_2815724F8;
  if (!qword_2815724F8)
  {
    sub_269E083BC();
    sub_269E08D9C(&qword_281572088, sub_269E0841C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815724F8);
  }

  return result;
}

void sub_269E089D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_269E08A58()
{
  if (!qword_281572550)
  {
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572550);
    }
  }
}

uint64_t sub_269E08ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269E08B20(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E08BA4()
{
  result = qword_281572538;
  if (!qword_281572538)
  {
    sub_269E08998(255);
    sub_269E08D9C(qword_281572810, type metadata accessor for HeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572538);
  }

  return result;
}

unint64_t sub_269E08C54()
{
  result = qword_281573438[0];
  if (!qword_281573438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281573438);
  }

  return result;
}

uint64_t sub_269E08CD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_269E08D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269E08D5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_269E08D9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E08DE4()
{
  if (!qword_2815725B0)
  {
    sub_269E081FC();
    sub_269E08E48();
    v0 = sub_269E5105C();
    if (!v1)
    {
      atomic_store(v0, &qword_2815725B0);
    }
  }
}

unint64_t sub_269E08E48()
{
  result = qword_281571F28;
  if (!qword_281571F28)
  {
    sub_269E081FC();
    sub_269E0869C(&qword_2815722F8, &qword_2815722F0, sub_269E082F8, sub_269E08774);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571F28);
  }

  return result;
}

unint64_t sub_269E08F84()
{
  result = qword_2815723C8;
  if (!qword_2815723C8)
  {
    sub_269E08F3C(255);
    sub_269E07E90();
    sub_269E08D9C(&qword_281572088, sub_269E0841C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723C8);
  }

  return result;
}

uint64_t sub_269E09034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269E09094(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

__n128 SleepStageWidgetView.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  *a2 = swift_getKeyPath();
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v5 = type metadata accessor for SleepStageWidgetView();
  v10 = *(a1 + 16);
  v11 = *a1;
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v7[32] = 0;
  v8 = a2 + v5[7];
  result = v11;
  *v8 = v11;
  *(v8 + 1) = v10;
  v8[32] = v4;
  return result;
}

uint64_t sub_269E09264(uint64_t a1)
{
  v2 = sub_269E51B0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_269E0ABD8();
  sub_269E512EC();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_269E093A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_269E00F68(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269E095B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SleepStageWidgetView();
  sub_269E00F68(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

id SleepStageWidgetView.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepStageWidgetView() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_269DF6E4C(v4, v5, v6, v7);
}

__n128 SleepStageWidgetView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_269E09A4C(v1, v26);
  v24 = v26[1];
  v22 = v26[0];
  v23 = v27;
  v11 = v28;
  v25 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v29 = v11;
  v12 = swift_getKeyPath();
  v13 = _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E095B4(v8);
  v14 = sub_269E02FE0(v8, v13);

  (*(v4 + 8))(v8, v3);
  if (v14)
  {
    sub_269E095B4(v10);
  }

  else
  {
    sub_269E093A8(v10);
  }

  sub_269E0A3D8();
  v16 = (a1 + *(v15 + 36));
  sub_269E0A508(0, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
  (*(v4 + 32))(v16 + *(v17 + 28), v10, v3);
  *v16 = v12;
  result = v24;
  *a1 = v22;
  *(a1 + 16) = result;
  *(a1 + 32) = v23;
  *(a1 + 34) = v11;
  *(a1 + 39) = BYTE4(v26[0]);
  *(a1 + 35) = v26[0];
  v19 = v25;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v19;
  return result;
}

uint64_t sub_269E09A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269E51B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E095B4(v9);
  v13 = sub_269E02FE0(v9, v12);

  v14 = *(v5 + 8);
  v14(v9, v4);
  if (v13)
  {
    sub_269E095B4(v11);
  }

  else
  {
    sub_269E093A8(v11);
  }

  v15 = (*(v5 + 88))(v11, v4);
  if (v15 == *MEMORY[0x277CE3B68])
  {
    v16 = a1 + *(type metadata accessor for SleepStageWidgetView() + 28);
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    LOBYTE(v16) = *(v16 + 32);
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    *(&v42 + 1) = v20;
    v43 = v16;
    sub_269DF6E4C(v17, v18, v19, v20);
    sub_269DF6E4C(v17, v18, v19, v20);
    sub_269E0AAA4();
    sub_269E513BC();
    if (v40)
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    v33 = v37;
    v34 = v38;
    v35 = v21 | v39;
    v36 = 1;
    sub_269E0A604(0, &qword_2815721A8);
    sub_269E0A604(0, &qword_281572198);
    sub_269E0A974();
    sub_269E0AA0C();
LABEL_19:
    sub_269E513BC();
    sub_269DF6EA0(v17, v18, v19, v20);

    v26 = v41;
    v27 = v42;
    v28 = v43;
    v29 = v44;
    goto LABEL_20;
  }

  if (v15 == *MEMORY[0x277CE3B90])
  {
    v22 = a1 + *(type metadata accessor for SleepStageWidgetView() + 28);
    v17 = *v22;
    v18 = *(v22 + 8);
    v19 = *(v22 + 16);
    v20 = *(v22 + 24);
    LOBYTE(v22) = *(v22 + 32);
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    *(&v42 + 1) = v20;
    v43 = v22;
LABEL_15:
    sub_269DF6E4C(v17, v18, v19, v20);
    sub_269DF6E4C(v17, v18, v19, v20);
    sub_269DF1674();
    sub_269DEF5A8();
    sub_269E513BC();
    if (v40)
    {
      v24 = 256;
    }

    else
    {
      v24 = 0;
    }

    v33 = v37;
    v34 = v38;
    v35 = v24 | v39;
    v36 = 0;
    sub_269E0A604(0, &qword_2815721A8);
    sub_269E0A604(0, &qword_281572198);
    sub_269E0A974();
    sub_269E0AA0C();
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x277CE3B98])
  {
    v23 = a1 + *(type metadata accessor for SleepStageWidgetView() + 28);
    v17 = *v23;
    v18 = *(v23 + 8);
    v19 = *(v23 + 16);
    v20 = *(v23 + 24);
    LOBYTE(v23) = *(v23 + 32);
    *&v41 = v17;
    *(&v41 + 1) = v18;
    *&v42 = v19;
    *(&v42 + 1) = v20;
    LOBYTE(v43) = v23;
    HIBYTE(v43) = 1;
    goto LABEL_15;
  }

  v41 = 0u;
  v42 = 0u;
  v43 = 256;
  sub_269E0AAA4();
  sub_269E513BC();
  if (v40)
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  v33 = v37;
  v34 = v38;
  v35 = v30 | v39;
  v36 = 1;
  sub_269E0A604(0, &qword_2815721A8);
  sub_269E0A604(0, &qword_281572198);
  sub_269E0A974();
  sub_269E0AA0C();
  sub_269E513BC();
  v31 = v42;
  v32 = v41;
  v28 = v43;
  v29 = v44;
  v14(v11, v4);

  v27 = v31;
  v26 = v32;
LABEL_20:
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  *(a2 + 34) = v29;
  return result;
}

uint64_t type metadata accessor for SleepStageWidgetView()
{
  result = qword_2815730F8;
  if (!qword_2815730F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E0A060(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x26D652F10]();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t _s13SleepWidgetUI0a5StageB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0A508(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v4 = sub_269E51B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269E528E0;
  v9 = *(v5 + 104);
  v9(v8 + v7, *MEMORY[0x277CE3B90], v4);
  v9(v8 + v7 + v6, *MEMORY[0x277CE3B98], v4);
  v23 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269E528D0;
  v9(v10 + v7, *MEMORY[0x277CE3B68], v4);
  sub_269E25A54(v10);
  sub_269E50FFC();
  v11 = v23;

  v12 = sub_269E5100C();
  v13 = sub_269E51E9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E53DE0, &v22);
    *(v14 + 12) = 2082;
    v16 = MEMORY[0x26D653A40](v11, v4);
    v18 = sub_269E47920(v16, v17, &v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] supportedFamilies: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v15, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);
  }

  (*(v20 + 8))(v3, v21);
  return v11;
}

void sub_269E0A3D8()
{
  if (!qword_281572390)
  {
    sub_269E0A470();
    sub_269E0A508(255, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572390);
    }
  }
}

void sub_269E0A470()
{
  if (!qword_281572498)
  {
    sub_269E0A508(255, &qword_281572010, sub_269E0A56C, MEMORY[0x277CE0FA8]);
    sub_269DFB55C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572498);
    }
  }
}

void sub_269E0A508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E0A56C()
{
  if (!qword_281572130)
  {
    sub_269E0A604(255, &qword_2815721A8);
    sub_269E0A604(255, &qword_281572198);
    v0 = sub_269E513CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572130);
    }
  }
}

void sub_269E0A604(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269E513CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_269E0A698()
{
  sub_269E0A508(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E0A7C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269E0A84C()
{
  result = qword_281572018;
  if (!qword_281572018)
  {
    sub_269E0A508(255, &qword_281572010, sub_269E0A56C, MEMORY[0x277CE0FA8]);
    sub_269E0A8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572018);
  }

  return result;
}

unint64_t sub_269E0A8F4()
{
  result = qword_281572138;
  if (!qword_281572138)
  {
    sub_269E0A56C();
    sub_269E0A974();
    sub_269E0AA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572138);
  }

  return result;
}

unint64_t sub_269E0A974()
{
  result = qword_2815721B0;
  if (!qword_2815721B0)
  {
    sub_269E0A604(255, &qword_2815721A8);
    sub_269DF1674();
    sub_269DEF5A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721B0);
  }

  return result;
}

unint64_t sub_269E0AA0C()
{
  result = qword_2815721A0;
  if (!qword_2815721A0)
  {
    sub_269E0A604(255, &qword_281572198);
    sub_269E0AAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721A0);
  }

  return result;
}

unint64_t sub_269E0AAA4()
{
  result = qword_281572FC8[0];
  if (!qword_281572FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281572FC8);
  }

  return result;
}

unint64_t sub_269E0AAF8()
{
  result = qword_2815720A0;
  if (!qword_2815720A0)
  {
    sub_269DFB55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720A0);
  }

  return result;
}

unint64_t sub_269E0AB50()
{
  result = qword_2815720B8;
  if (!qword_2815720B8)
  {
    sub_269E0A508(255, &qword_2815720B0, MEMORY[0x277CE3BA0], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720B8);
  }

  return result;
}

unint64_t sub_269E0ABD8()
{
  result = qword_281572960;
  if (!qword_281572960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572960);
  }

  return result;
}

void sub_269E0AC2C(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_269E5204C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_269DF0E9C(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_269E5200C();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_269E51FFC();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_269E0EEFC(v32, v33, v34, a1);
        v13 = v12;
        v14 = [v12 integerValue];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_269DF0E9C((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_269E5201C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_269E0F6B0();
          v7 = sub_269E51E5C();
          sub_269E5206C();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_269E0F724(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_269E0F724(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_269E0F724(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
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
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void SleepDaySummaryResults.init(summaries:context:)(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v6 = sub_269E5204C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_18:

    v8 = MEMORY[0x26D653D70](v7, a1);

    if (v5 != 2)
    {
LABEL_8:
      if (!v8)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_16;
      }

      v9 = v8;
      v8 = [v8 summaryFilteredToLastPeriod];
      if (!v8)
      {
LABEL_10:
        v10 = 0;
LABEL_16:
        *a3 = a1;
        *(a3 + 8) = v9;
        *(a3 + 16) = v5;
        *(a3 + 24) = v10;
        return;
      }

LABEL_15:
      v12 = objc_opt_self();
      sub_269E0F7AC(0, &qword_281571BA8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_269E53E20;
      *(v13 + 32) = v8;
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
      v14 = v8;
      v15 = sub_269E51D9C();

      v10 = [v12 sleepMetricsForDaySummaries_];

      goto LABEL_16;
    }

LABEL_14:
    v11 = v8;
    v9 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 8 * v7 + 32);
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_269E0B178@<X0>(char **a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  i = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - v9;
  v10 = *v1;
  v11 = *(v1 + 8);
  LODWORD(v12) = *(v1 + 16);
  v13 = *(v1 + 24);
  v70[0] = *v1;
  v70[1] = v11;
  v71 = v12;
  v72 = v13;
  if (!SleepDaySummaryResults.hasAnyDataInLastWeek.getter())
  {
    sub_269E50FFC();
    v18 = sub_269E5100C();
    v19 = sub_269E51ECC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v70[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_269E47920(0xD000000000000016, 0x8000000269E53FB0, v70);
      _os_log_impl(&dword_269DE5000, v18, v19, "[%{public}s] no data in last week, returning nil", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26D654490](v21, -1, -1);
      MEMORY[0x26D654490](v20, -1, -1);
    }

    result = (*(v4 + 8))(i, v3);
    v14 = 0;
    goto LABEL_77;
  }

  v62 = v4;
  v14 = (v10 >> 62);
  if (!(v10 >> 62))
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = -v15;
    if (!__OFSUB__(0, v15))
    {
      goto LABEL_4;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_80:
  v15 = sub_269E5204C();
  v16 = -v15;
  if (__OFSUB__(0, v15))
  {
    goto LABEL_82;
  }

LABEL_4:
  if ((v16 + 6) >= 7)
  {
    i = v15 - 7;
    if (__OFSUB__(v15, 7))
    {
      goto LABEL_92;
    }

    if (v15 < i)
    {
      goto LABEL_93;
    }

    if (!v14)
    {
LABEL_7:
      v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  else
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_91;
    }

    i = 0;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v17 = sub_269E5204C();
LABEL_15:
  if (v17 < i)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (i < 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v14)
  {
    v23 = sub_269E5204C();
  }

  else
  {
    v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 < v15)
  {
    goto LABEL_85;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v61 = v3;
  if ((v10 & 0xC000000000000001) == 0 || i == v15)
  {

    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_31:

    v10 = sub_269E5216C();
    i = v27;
    v15 = v28;
    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (i >= v15)
  {
    goto LABEL_94;
  }

  sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);

  v24 = i;
  do
  {
    v25 = v24 + 1;
    sub_269E520DC();
    v24 = v25;
  }

  while (v15 != v25);
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_28:
  v10 &= 0xFFFFFFFFFFFFFF8uLL;
  v26 = v10 + 32;
  v15 = (2 * v15) | 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v14 = v26;
  sub_269E521DC();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = MEMORY[0x277D84F90];
  }

  v31 = *(v30 + 16);

  if (__OFSUB__(v15 >> 1, i))
  {
    goto LABEL_95;
  }

  if (v31 != (v15 >> 1) - i)
  {
    goto LABEL_96;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (i)
  {
    goto LABEL_40;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v29)
  {
    swift_unknownObjectRelease();
LABEL_40:
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_87:
      v32 = sub_269E5204C();
    }

    else
    {
      v32 = *(i + 16);
    }

    v3 = MEMORY[0x277D84F90];
    v67 = i;
    v68 = v32;
    if (v32)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    v15 = v63;
LABEL_65:
    sub_269E50FFC();
    i = sub_269E5100C();
    v49 = sub_269E51ECC();

    if (os_log_type_enabled(i, v49))
    {
      v10 = swift_slowAlloc();
      v50 = v15;
      v12 = swift_slowAlloc();
      v70[0] = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_269E47920(0xD000000000000016, 0x8000000269E53FB0, v70);
      *(v10 + 12) = 2082;
      *v69 = v68;
      v51 = sub_269E5219C();
      v15 = v52;
      v11 = sub_269E47920(v51, v52, v70);

      *(v10 + 14) = v11;
      _os_log_impl(&dword_269DE5000, i, v49, "[%{public}s] lastSummaries.count = %{public}s, prepending empty bars", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D654490](v12, -1, -1);
      MEMORY[0x26D654490](v10, -1, -1);

      v53 = v50;
      v32 = v68;
      (*(v62 + 8))(v53, v61);
    }

    else
    {

      (*(v62 + 8))(v15, v61);
    }

    if (__OFSUB__(7, v32))
    {
      __break(1u);
    }

    else if (((7 - v32) & 0x8000000000000000) == 0)
    {
      v54 = *(v14 + 2);
      v55 = v32 - 7;
      do
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v54 >= *(v14 + 3) >> 1)
        {
          v14 = sub_269E0DE9C(isUniquelyReferenced_nonNull_native, v54 + 1, 1, v14);
        }

        swift_arrayDestroy();
        v56 = *(v14 + 2);
        result = memmove(v14 + 80, v14 + 32, 48 * v56);
        v54 = v56 + 1;
        *(v14 + 2) = v54;
        *(v14 + 4) = v3;
        *(v14 + 5) = v3;
        *(v14 + 6) = v3;
        *(v14 + 7) = v3;
        *(v14 + 8) = v3;
        *(v14 + 9) = v3;
      }

      while (!__CFADD__(v55++, 1));
      goto LABEL_77;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_unknownObjectRelease();
    v26 = v14;
LABEL_32:
    sub_269E0E334(v10, v26, i, v15);
  }

  v70[0] = MEMORY[0x277D84F90];
  v15 = v70;
  sub_269DF0E7C(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    goto LABEL_90;
  }

  v60 = a1;
  a1 = 0;
  v10 = 0;
  v14 = v70[0];
  v33 = i;
  v65 = v11;
  v66 = i & 0xC000000000000001;
  if (v12 == 2)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  v64 = v34;
  do
  {
    if (v66)
    {
      v35 = MEMORY[0x26D653D70](a1, v33);
      if (!v11)
      {
        goto LABEL_54;
      }

LABEL_51:
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
      v36 = v35;
      v37 = v11;
      v38 = sub_269E51F6C();

      if (v38)
      {
        LOBYTE(v11) = v64;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      goto LABEL_54;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (a1 >= *(v33 + 16))
    {
      goto LABEL_79;
    }

    v35 = *(v33 + 8 * a1 + 32);
    if (v11)
    {
      goto LABEL_51;
    }

LABEL_54:
    v39 = sub_269E350F4(&unk_287AB32E0);
    v69[0] = v11;
    v40 = HKSleepDaySummary.segments(_:highlightBehavior:)(v39, v69);

    v41 = HKCategoryValueSleepAnalysisAsleepValues();
    sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
    sub_269E0F23C();
    v42 = sub_269E51E3C();

    sub_269E0AC2C(v42);
    v44 = v43;

    v45 = sub_269E0F2A4(v44);

    v69[0] = v11;
    i = HKSleepDaySummary.segments(_:highlightBehavior:)(v45, v69);

    v70[0] = v14;
    v47 = *(v14 + 2);
    v46 = *(v14 + 3);
    v12 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      sub_269DF0E7C((v46 > 1), v47 + 1, 1);
      v14 = v70[0];
    }

    a1 = (a1 + 1);
    *(v14 + 2) = v12;
    v48 = &v14[48 * v47];
    *(v48 + 4) = v40;
    *(v48 + 5) = i;
    *(v48 + 6) = v3;
    *(v48 + 7) = v3;
    *(v48 + 8) = v3;
    *(v48 + 9) = v3;
    v33 = v67;
    v32 = v68;
    v11 = v65;
  }

  while (v68 != a1);
  v15 = v63;
  if (v68 < 7)
  {
    a1 = v60;
    goto LABEL_65;
  }

  a1 = v60;
LABEL_77:
  *a1 = v14;
  return result;
}

void *SleepDaySummaryResults.lastSummary.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *SleepDaySummaryResults.lastSummaryMetricsForContext.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

unint64_t SleepDaySummaryResults.lastSleepScoreSummary(algorithmVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a1;
  v76 = a2;
  v4 = sub_269E50CDC();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v69 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0E444(0, &qword_281571CF0, sub_269E0C1C0, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = v64 - v9;
  sub_269E0C1C0();
  v11 = v10;
  v84 = *(v10 - 8);
  v12 = *(v84 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v67 = (v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v68 = (v64 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v64 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v64 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v65 = v64 - v24;
  MEMORY[0x28223BE20](v23);
  v66 = v64 - v25;
  sub_269E0C244();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v82 = v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = v64 - v32;
  v85 = *v3;
  v83 = v85;

  v81 = sub_269E50CEC();
  sub_269E0C2F8(0, &qword_281571C00, MEMORY[0x277D83F98]);
  v34 = MEMORY[0x277D83940];
  sub_269E0C2F8(0, &qword_281573CD0, MEMORY[0x277D83940]);
  v35 = v22;
  sub_269E0C368(&qword_281571D50, &qword_281573CD0, v34);
  v36 = v77;
  sub_269E50D1C();
  v73 = v33;
  v74 = v28;
  (*(v28 + 16))(v82, v33, v27);
  sub_269E0F5D4(&qword_281573C50, sub_269E0C244);
  v75 = v27;
  sub_269E51D7C();
  sub_269E5218C();
  v37 = *(v84 + 48);
  v84 += 48;
  v82 = v37;
  if ((v37)(v36, 1, v11) == 1)
  {
LABEL_2:
    (*(v74 + 8))(v73, v75);

    v38 = 1;
    v39 = v76;
LABEL_3:
    v40 = sub_269E50CCC();
    return (*(*(v40 - 8) + 56))(v39, v38, 1, v40);
  }

  v42 = v83 & 0xFFFFFFFFFFFFFF8;
  if (v83 < 0)
  {
    v43 = v83;
  }

  else
  {
    v43 = v83 & 0xFFFFFFFFFFFFFF8;
  }

  v64[1] = v43;
  v78 = v83 + 32;
  v79 = v83 & 0xC000000000000001;
  v80 = v35;
  v81 = v11;
  while (1)
  {
    sub_269E0C3AC(v36, v35);
    sub_269E0C410(v35, v19);
    v45 = *v19;
    v46 = [*v19 morningIndex];

    if (v83 >> 62)
    {
      v47 = sub_269E5204C();
    }

    else
    {
      v47 = *(v42 + 16);
    }

    v48 = v36;
    v49 = *(v11 + 48);
    if (!v47)
    {
      v44 = sub_269E50CFC();
      (*(*(v44 - 8) + 8))(v19 + v49, v44);
      goto LABEL_9;
    }

    v50 = __OFSUB__(v47, 1);
    result = v47 - 1;
    if (v50)
    {
      break;
    }

    if (v79)
    {
      v51 = MEMORY[0x26D653D70](result, v83);
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (result >= *(v42 + 16))
      {
        goto LABEL_24;
      }

      v51 = *(v78 + 8 * result);
    }

    v52 = v51;
    v53 = [v51 morningIndex];

    v54 = sub_269E50CFC();
    v55 = *(*(v54 - 8) + 8);
    v55(v19 + v49, v54);
    if (v46 == v53)
    {

      v56 = v65;
      sub_269E0C3AC(v80, v65);
      v57 = v66;
      sub_269E0C3AC(v56, v66);
      v58 = v68;
      sub_269E0C410(v57, v68);
      v59 = *v58;
      v60 = v81;
      v61 = *(v81 + 48);
      v62 = v67;
      sub_269E0C410(v57, v67);

      v63 = *(v60 + 48);
      (*(v70 + 16))(v69, v72, v71);
      v39 = v76;
      sub_269E50CBC();
      sub_269E0C474(v57);
      (*(v74 + 8))(v73, v75);
      v55(v58 + v61, v54);
      v38 = 0;
      goto LABEL_3;
    }

LABEL_9:
    v35 = v80;
    sub_269E0C474(v80);
    v36 = v48;
    sub_269E5218C();
    v11 = v81;
    if ((v82)(v48, 1, v81) == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_269E0C1C0()
{
  if (!qword_281571CF8)
  {
    sub_269DF6A7C(255, &qword_281573CC0, 0x277CCD9B0);
    sub_269E50CFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281571CF8);
    }
  }
}

void sub_269E0C244()
{
  if (!qword_281573C48)
  {
    v0 = MEMORY[0x277D83F98];
    sub_269E0C2F8(255, &qword_281571C00, MEMORY[0x277D83F98]);
    sub_269E0C368(&qword_281571C08, &qword_281571C00, v0);
    v1 = sub_269E50D0C();
    if (!v2)
    {
      atomic_store(v1, &qword_281573C48);
    }
  }
}

void sub_269E0C2F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269DF6A7C(255, &qword_281573CC0, 0x277CCD9B0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E0C368(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_269E0C2F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E0C3AC(uint64_t a1, uint64_t a2)
{
  sub_269E0C1C0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0C410(uint64_t a1, uint64_t a2)
{
  sub_269E0C1C0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E0C474(uint64_t a1)
{
  sub_269E0C1C0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E0C4E8(SEL *a1)
{
  if (*(v1 + 8) && ([*(v1 + 8) *a1], v2 > COERCE_DOUBLE(1)))
  {
    return *&v2;
  }

  else
  {
    return 0;
  }
}

id sub_269E0C550(SEL *a1)
{
  if (!*(v1 + 24))
  {
    return 0;
  }

  result = [*(v1 + 24) *a1];
  if (!result)
  {
    return result;
  }

  v3 = result;
  [result _value];
  v5 = v4;

  if (v5 > COERCE_DOUBLE(1))
  {
    return *&v5;
  }

  else
  {
    return 0;
  }
}

BOOL SleepDaySummaryResults.hasAnyDataOnLastDay.getter()
{
  v1 = *(v0 + 8);
  result = 0;
  if (v1)
  {
    [*(v0 + 8) sleepDuration];
    if (v2 > COERCE_DOUBLE(1) && v2 > 0.0)
    {
      return 1;
    }

    [v1 inBedDuration];
    if (v3 > COERCE_DOUBLE(1) && v3 > 0.0)
    {
      return 1;
    }
  }

  return result;
}

BOOL SleepDaySummaryResults.hasAnyDataInLastWeek.getter()
{
  v2 = *v1;
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_56;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_58;
  }

LABEL_3:
  if ((v5 + 6) >= 7)
  {
    v0 = v4 - 7;
    if (!__OFSUB__(v4, 7))
    {
      if (v4 >= v0)
      {
        if (!v3)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v0 = 0;
  if (!v3)
  {
LABEL_6:
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_10:
  v6 = sub_269E5204C();
LABEL_11:
  if (v6 >= v0)
  {
    if (v0 < 0)
    {
      goto LABEL_60;
    }

    if (v3)
    {
      v7 = sub_269E5204C();
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 < v4)
    {
      goto LABEL_61;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_62;
    }

    if ((v2 & 0xC000000000000001) == 0 || v0 == v4)
    {

      if (!v3)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (v0 < v4)
    {
      sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);

      v8 = v0;
      do
      {
        v9 = v8 + 1;
        sub_269E520DC();
        v8 = v9;
      }

      while (v4 != v9);
      if (!v3)
      {
LABEL_24:
        v2 &= 0xFFFFFFFFFFFFFF8uLL;
        v10 = v2 + 32;
        v4 = (2 * v4) | 1;
        if (v4)
        {
LABEL_29:
          v3 = v10;
          sub_269E521DC();
          swift_unknownObjectRetain_n();
          v14 = swift_dynamicCastClass();
          if (!v14)
          {
            swift_unknownObjectRelease();
            v14 = MEMORY[0x277D84F90];
          }

          v15 = *(v14 + 16);

          if (!__OFSUB__(v4 >> 1, v0))
          {
            if (v15 == (v4 >> 1) - v0)
            {
              v0 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v0)
              {
                goto LABEL_36;
              }

              v0 = MEMORY[0x277D84F90];
LABEL_35:
              swift_unknownObjectRelease();
LABEL_36:
              if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v2 = *(v0 + 16);
              if (v2)
              {
                goto LABEL_39;
              }

              goto LABEL_64;
            }

            goto LABEL_71;
          }

LABEL_70:
          __break(1u);
LABEL_71:
          swift_unknownObjectRelease();
          v10 = v3;
        }

LABEL_28:
        sub_269E0E334(v2, v10, v0, v4);
        v0 = v13;
        goto LABEL_35;
      }

LABEL_27:

      v2 = sub_269E5216C();
      v0 = v11;
      v4 = v12;
      if (v12)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v2 = sub_269E5204C();
    if (!v2)
    {
      break;
    }

LABEL_39:
    v16 = 0;
    v3 = 0x277CCD9D8uLL;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D653D70](v16, v0);
      }

      else
      {
        if (v16 >= *(v0 + 16))
        {
          goto LABEL_55;
        }

        v17 = *(v0 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = [v17 periods];
      sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
      v21 = sub_269E51DAC();

      if (v21 >> 62)
      {
        v22 = sub_269E5204C();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = v22 > 0;
      ++v16;
      if (v22 > 0 || v19 == v2)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v4 = sub_269E5204C();
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_3;
    }

LABEL_58:
    __break(1u);
  }

LABEL_64:
  v23 = 0;
LABEL_65:

  return v23;
}

unint64_t SleepDaySummaryResults.sleepSampleEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E509EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E0E444(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = *(v1 + 8);
  if (!v12)
  {
    v22 = sub_269E50B9C();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }

  v13 = [v12 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v14 = sub_269E51DAC();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:

    v24 = sub_269E50B9C();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    return sub_269E0E4A8(v11, a1);
  }

  v15 = sub_269E5204C();
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v18 = MEMORY[0x26D653D70](result, v14);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v14 + 8 * result + 32);
LABEL_9:
    v19 = v18;

    v20 = [v19 dateInterval];

    sub_269E5099C();
    sub_269E509AC();
    (*(v4 + 8))(v7, v3);
    v21 = sub_269E50B9C();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    return sub_269E0E4A8(v11, a1);
  }

  __break(1u);
  return result;
}

void PresentationContext.highlightBehavior.getter(char *a1@<X8>)
{
  if (*v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a1 = v2;
}

void SleepDaySummaryResults.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_269E0EE0C(a1, *v1);
  sub_269E5222C();
  if (v2)
  {
    v5 = v2;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v3);
  if (v4)
  {
    sub_269E5222C();
    v6 = v4;
    sub_269E51F7C();
  }

  else
  {
    sub_269E5222C();
  }
}

uint64_t SleepDaySummaryResults.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_269E5220C();
  sub_269E0EE0C(v8, v1);
  sub_269E5222C();
  if (v2)
  {
    v5 = v2;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v3);
  sub_269E5222C();
  if (v4)
  {
    v6 = v4;
    sub_269E51F7C();
  }

  return sub_269E5223C();
}

uint64_t sub_269E0CEC8()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_269E5220C();
  SleepDaySummaryResults.hash(into:)(v5);
  return sub_269E5223C();
}

uint64_t sub_269E0CF28()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = v0[3];
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_269E5220C();
  SleepDaySummaryResults.hash(into:)(v5);
  return sub_269E5223C();
}

uint64_t sub_269E0CFC8()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

uint64_t sub_269E0D010()
{
  v1 = *v0;
  sub_269E5220C();
  MEMORY[0x26D653EA0](v1);
  return sub_269E5223C();
}

char *HKSleepDaySummary.segments(_:highlightBehavior:)(uint64_t a1, unsigned __int8 *a2)
{
  LODWORD(v3) = *a2;
  v4 = [v2 periods];
  sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
  v5 = sub_269E51DAC();

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_44:
    v7 = sub_269E5204C();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D653D70](v8, v5);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_38;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v12 = sub_269E0D3E4(v8, v9, a1, v2, v3);

    ++v8;
    if (v12)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v30;
      }

      else
      {
        v13 = sub_269E0DD48(0, v30[2] + 1, 1, v30);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = sub_269E0DD48((v14 > 1), v15 + 1, 1, v13);
      }

      v13[2] = v15 + 1;
      v30 = v13;
      v13[v15 + 4] = v12;
      v8 = v11;
    }
  }

  v16 = v30;
  v17 = v30[2];
  if (v17)
  {
    v18 = 0;
    v2 = MEMORY[0x277D84F90];
    v19 = v30 + 4;
    v3 = &qword_28035E8B0;
    while (1)
    {
      if (v18 >= v16[2])
      {
        goto LABEL_39;
      }

      v5 = v19[v18];
      v20 = *(v5 + 16);
      v6 = *(v2 + 2);
      v21 = v6 + v20;
      if (__OFADD__(v6, v20))
      {
        goto LABEL_40;
      }

      v22 = v19[v18];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= *(v2 + 3) >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 <= v21)
        {
          v24 = v6 + v20;
        }

        else
        {
          v24 = v6;
        }

        v2 = sub_269E0E0F8(isUniquelyReferenced_nonNull_native, v24, 1, v2, &qword_28035E8B0, &type metadata for Segment);
        if (!*(v5 + 16))
        {
LABEL_19:

          v16 = v30;
          if (v20)
          {
            goto LABEL_41;
          }

          goto LABEL_20;
        }
      }

      v25 = *(v2 + 2);
      if ((*(v2 + 3) >> 1) - v25 < v20)
      {
        goto LABEL_42;
      }

      memcpy(&v2[24 * v25 + 32], (v5 + 32), 24 * v20);

      v16 = v30;
      if (v20)
      {
        v26 = *(v2 + 2);
        v27 = __OFADD__(v26, v20);
        v28 = v26 + v20;
        if (v27)
        {
          goto LABEL_43;
        }

        *(v2 + 2) = v28;
      }

LABEL_20:
      if (v17 == ++v18)
      {
        goto LABEL_36;
      }
    }
  }

  v2 = MEMORY[0x277D84F90];
LABEL_36:

  return v2;
}

uint64_t static HKCategoryValueSleepAnalysis.hk_asleepValues.getter()
{
  v0 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
  sub_269E0F23C();
  v1 = sub_269E51E3C();

  sub_269E0AC2C(v1);
  v3 = v2;

  v4 = sub_269E0F2A4(v3);

  return v4;
}

char *sub_269E0D3E4(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v81 = a4;
  v65 = a1;
  v74 = sub_269E50B9C();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v74);
  v73 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v65 - v12;
  v80 = sub_269E509EC();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v80);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v65 - v17;
  v18 = [a2 segments];
  sub_269DF6A7C(0, &qword_28035EB80, 0x277CCD9E0);
  v19 = sub_269E51DAC();

  v20 = v19;
  v83 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_47;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v22 = MEMORY[0x277D84F90];
    if (!v21)
    {
      break;
    }

    v23 = v21;
    v76 = v8;
    v77 = v20;
    LODWORD(v75) = v5;
    v5 = v13;
    v24 = 0;
    v78 = v20 & 0xC000000000000001;
    v25 = v20 & 0xFFFFFFFFFFFFFF8;
    v26 = v20 + 32;
    v13 = a3 + 56;
    v27 = v21;
    while (1)
    {
      if (v78)
      {
        v20 = MEMORY[0x26D653D70](v24, v77);
      }

      else
      {
        if (v24 >= *(v25 + 16))
        {
          goto LABEL_45;
        }

        v20 = *(v26 + 8 * v24);
      }

      v8 = v20;
      if (__OFADD__(v24++, 1))
      {
        break;
      }

      v29 = [v20 category];
      if (!*(a3 + 16))
      {
        goto LABEL_5;
      }

      v30 = v29;
      v31 = *(a3 + 40);
      sub_269E5220C();
      MEMORY[0x26D653EA0](v30);
      v32 = sub_269E5223C();
      v27 = v23;
      v33 = -1 << *(a3 + 32);
      v34 = v32 & ~v33;
      if ((*(v13 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a3 + 48) + 8 * v34) != v30)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v13 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_269E5210C();
        v36 = *(v83 + 16);
        sub_269E5213C();
        sub_269E5214C();
        v20 = sub_269E5211C();
        v27 = v23;
        if (v24 == v23)
        {
LABEL_19:
          v37 = v83;
          v13 = v5;
          LOBYTE(v5) = v75;
          v8 = v76;
          v22 = MEMORY[0x277D84F90];
          goto LABEL_21;
        }
      }

      else
      {
LABEL_5:

        if (v24 == v27)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v64 = v20;
    v21 = sub_269E5204C();
    v20 = v64;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_21:

  if (v37 < 0 || (v37 & 0x4000000000000000) != 0)
  {
    v38 = sub_269E5204C();
    if (v38)
    {
      goto LABEL_24;
    }

LABEL_43:

    return v22;
  }

  v38 = *(v37 + 16);
  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_24:
  v82 = v22;
  result = sub_269DF0EBC(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v37;
    v70 = v37 & 0xC000000000000001;
    v22 = v82;
    v42 = (v13 + 8);
    v69 = (v8 + 8);
    v68 = v5;
    v67 = v37;
    v66 = v38;
    v78 = v13 + 8;
    v43 = v71;
    v44 = v74;
    while (1)
    {
      v75 = v22;
      v77 = v40;
      if (v70)
      {
        v45 = MEMORY[0x26D653D70](v40, v41);
      }

      else
      {
        v45 = *(v41 + 8 * v40 + 32);
      }

      v76 = v45;
      v46 = [v45 dateInterval];
      sub_269E5099C();

      v47 = v72;
      sub_269E509CC();
      v48 = [v81 &selRef_systemGray3Color];
      sub_269E5099C();

      v49 = v73;
      sub_269E509CC();
      v13 = *v42;
      v50 = v80;
      (v13)(v43, v80);
      sub_269E50B3C();
      v52 = v51;
      LODWORD(v5) = v69;
      v53 = *v69;
      (*v69)(v49, v44);
      v53(v47, v44);
      sub_269E509AC();
      v54 = [v81 dateInterval];
      sub_269E5099C();

      sub_269E509CC();
      v55 = v50;
      v42 = v78;
      (v13)(v43, v55);
      sub_269E50B3C();
      v57 = v56;
      v53(v49, v44);
      v53(v47, v44);
      if (v68 == 2)
      {
        v59 = [v81 periods];
        sub_269DF6A7C(0, &qword_28035EB20, 0x277CCD9D8);
        v8 = sub_269E51DAC();

        if (v8 >> 62)
        {
          v60 = sub_269E5204C();
        }

        else
        {
          v60 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a3 = v77;

        v20 = (v13)(v79, v80);
        if (__OFSUB__(v60, 1))
        {
          goto LABEL_46;
        }

        v58 = v60 - 1 == v65;
        v22 = v75;
      }

      else
      {
        if (v68 == 1)
        {
          (v13)(v79, v80);

          v58 = 1;
        }

        else
        {
          (v13)(v79, v80);

          v58 = 0;
        }

        v22 = v75;
        a3 = v77;
      }

      v82 = v22;
      v62 = *(v22 + 16);
      v61 = *(v22 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_269DF0EBC((v61 > 1), v62 + 1, 1);
        v22 = v82;
      }

      v40 = a3 + 1;
      *(v22 + 16) = v62 + 1;
      v63 = v22 + 24 * v62;
      *(v63 + 32) = v52;
      *(v63 + 40) = v57;
      *(v63 + 48) = v58;
      v41 = v67;
      if (v66 == v40)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
  return result;
}

size_t sub_269E0DB4C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269E0E444(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v10 = *(sub_269E51B0C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_269E51B0C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_269E0DD48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_269E0F730();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_269E0F7AC(0, &qword_28035EB78, &type metadata for Segment, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0DE9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_28035E8B8, &type metadata for SleepWidgetChartBar, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0DFD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_269E0E0F8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_269E0F7AC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_269E0E218(char *result, int64_t a2, char a3, char *a4)
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
    sub_269E0F7AC(0, &qword_28035EB50, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_269E0E334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_269E0F7AC(0, &qword_281571BA8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_269E0E444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E0E4A8(uint64_t a1, uint64_t a2)
{
  sub_269E0E444(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269E0E53C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_269E0F7AC(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_269E0E62C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_269E5220C();
  MEMORY[0x26D653EA0](a2);
  v7 = sub_269E5223C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
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
    sub_269E0E968(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_269E0E724(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269E0F61C();
  result = sub_269E5208C();
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_269E5220C();
      MEMORY[0x26D653EA0](v18);
      result = sub_269E5223C();
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
      *(*(v6 + 48) + 8 * v14) = v18;
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

void sub_269E0E968(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269E0E724(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_269E0EAC4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_269E0EBF8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_269E5220C();
  MEMORY[0x26D653EA0](a1);
  v10 = sub_269E5223C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for HKCategoryValueSleepAnalysis(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_269E521EC();
  __break(1u);
}

void *sub_269E0EAC4()
{
  v1 = v0;
  sub_269E0F61C();
  v2 = *v0;
  v3 = sub_269E5207C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_269E0EBF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_269E0F61C();
  result = sub_269E5208C();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_269E5220C();
      MEMORY[0x26D653EA0](v17);
      result = sub_269E5223C();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

void sub_269E0EE0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_269E5204C();
    MEMORY[0x26D653EA0](v8);
    v3 = sub_269E5204C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x26D653EA0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x26D653D70](i, a2);
      sub_269E51F7C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_269E51F7C();

      --v3;
    }

    while (v3);
  }
}

void sub_269E0EEFC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x26D653CE0](a1, a2, v7);
      sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
    if (sub_269E5202C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_269E5203C();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_269E51F5C();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_269E51F6C();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_269E28DF4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    result = 0;
    if (v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
    return 0;
  }

  sub_269DF6A7C(0, &qword_281573CC0, 0x277CCD9B0);
  v8 = v5;
  v9 = v2;
  v10 = sub_269E51F6C();

  result = 0;
  if (v10)
  {
LABEL_7:
    if (v3 != v6)
    {
      return result;
    }

    if (v4)
    {
      if (v7)
      {
        sub_269DF6A7C(0, &qword_281573CC8, 0x277CCD9C8);
        v12 = v7;
        v13 = v4;
        v14 = sub_269E51F6C();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_269E0F23C()
{
  result = qword_28035EB30;
  if (!qword_28035EB30)
  {
    sub_269DF6A7C(255, &qword_28035EB28, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB30);
  }

  return result;
}

uint64_t sub_269E0F2A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_269E0F5D4(&qword_28035EB58, type metadata accessor for HKCategoryValueSleepAnalysis);
  result = MEMORY[0x26D653AD0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_269E0E62C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_269E0F354()
{
  result = qword_28035EB38;
  if (!qword_28035EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB38);
  }

  return result;
}

unint64_t sub_269E0F3AC()
{
  result = qword_28035EB40;
  if (!qword_28035EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB40);
  }

  return result;
}

unint64_t sub_269E0F404()
{
  result = qword_28035EB48;
  if (!qword_28035EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EB48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepStageWidgetViewModel.OverrideState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepStageWidgetViewModel.OverrideState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269E0F5D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E0F61C()
{
  if (!qword_28035EB60)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    sub_269E0F5D4(&qword_28035EB58, type metadata accessor for HKCategoryValueSleepAnalysis);
    v0 = sub_269E520AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EB60);
    }
  }
}

void sub_269E0F6B0()
{
  if (!qword_28035EB68)
  {
    sub_269DF6A7C(255, &qword_28035EB28, 0x277CCABB0);
    sub_269E0F23C();
    v0 = sub_269E51E6C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EB68);
    }
  }
}

uint64_t sub_269E0F724(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_269E0F730()
{
  if (!qword_28035EB70)
  {
    sub_269E0F7AC(255, &qword_28035EB78, &type metadata for Segment, MEMORY[0x277D83940]);
    v0 = sub_269E521AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EB70);
    }
  }
}

void sub_269E0F7AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269E0F828(uint64_t a1@<X8>)
{
  v3 = sub_269E51ADC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_269E14C44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_269E5130C();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_269E150A0(0, &qword_2815725A8, sub_269E14CD8);
  sub_269E0FA34(v1, &v14[*(v15 + 44)]);
  sub_269E2E90C(v10);
  sub_269E51ABC();
  v16 = sub_269E51AAC();
  v17 = *(v4 + 8);
  v17(v8, v3);
  if (v16)
  {
    v18 = sub_269E5187C();
  }

  else
  {
    v18 = sub_269E5180C();
  }

  v19 = v18;
  v17(v10, v3);
  KeyPath = swift_getKeyPath();
  sub_269E163CC(v14, a1, sub_269E14C44);
  sub_269E14FEC();
  v22 = (a1 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = v19;
}

uint64_t sub_269E0FA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v87 = a2;
  sub_269E14F38(0, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  v85 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v86 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v70 - v6;
  sub_269E1506C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_269E5166C();
  v82 = *(v88 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x28223BE20](v88);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269E50FBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E160B8(0, &qword_281572048);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v70 - v22;
  sub_269E14D9C(0);
  v78 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v83 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v70 - v28;
  sub_269E51E1C();
  v81 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FAC();
  v30 = sub_269E50F8C();
  (*(v14 + 8))(v17, v13);
  v89 = v30;
  v31 = MEMORY[0x277CE1088];
  v32 = MEMORY[0x277CE1078];
  sub_269E5172C();

  v89 = v31;
  v90 = v32;
  swift_getOpaqueTypeConformance2();
  sub_269E5177C();
  (*(v20 + 8))(v23, v19);
  sub_269E14DBC(0);
  v34 = &v29[*(v33 + 36)];
  v75 = v29;
  sub_269E14E98(0);
  v36 = *(v35 + 28);
  v37 = *MEMORY[0x277CE1050];
  v38 = sub_269E518DC();
  (*(*(v38 - 8) + 104))(v34 + v36, v37, v38);
  *v34 = swift_getKeyPath();
  v77 = *MEMORY[0x277CE0A58];
  v39 = v82;
  v76 = *(v82 + 104);
  v40 = v80;
  v41 = v88;
  v76(v80);
  v73 = sub_269E5159C();
  v42 = *(v73 - 8);
  v72 = *(v42 + 56);
  v74 = v42 + 56;
  v72(v10, 1, 1, v73);
  sub_269E515EC();
  v71 = sub_269E1506C;
  sub_269E16A54(v10, sub_269E1506C);
  v82 = *(v39 + 8);
  (v82)(v40, v41);
  sub_269E5154C();

  sub_269E515CC();
  v43 = sub_269E515FC();

  KeyPath = swift_getKeyPath();
  v45 = &v29[*(v78 + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  v46 = sub_269E51D2C();
  v48 = v47;
  v49 = (v79 + *(type metadata accessor for HeaderView(0) + 20));
  v50 = v10;
  v52 = *v49;
  v51 = v49[1];
  v89 = v46;
  v90 = v48;

  MEMORY[0x26D6539C0](v52, v51);

  sub_269DF0E28();
  v53 = sub_269E516CC();
  v55 = v54;
  v89 = v53;
  v90 = v54;
  LOBYTE(v41) = v56 & 1;
  v91 = v56 & 1;
  v92 = v57;
  v58 = v84;
  sub_269E5172C();
  sub_269E00F48(v53, v55, v41);

  v59 = v88;
  (v76)(v40, v77, v88);
  v72(v50, 1, 1, v73);
  sub_269E515EC();
  sub_269E16A54(v50, v71);
  (v82)(v40, v59);
  sub_269E5154C();

  sub_269E515CC();
  v60 = sub_269E515FC();

  v61 = swift_getKeyPath();
  v62 = (v58 + *(v85 + 36));
  *v62 = v61;
  v62[1] = v60;
  v63 = v75;
  v64 = v83;
  sub_269E16614(v75, v83, sub_269E14D9C);
  v65 = v86;
  sub_269DEA13C(v58, v86);
  v66 = v87;
  sub_269E16614(v64, v87, sub_269E14D9C);
  sub_269E14D0C();
  sub_269DEA13C(v65, v66 + *(v67 + 48));
  v68 = MEMORY[0x277CE0AE0];
  sub_269E16BB4(v58, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
  sub_269E165B4(v63, sub_269E14D9C);
  sub_269E16BB4(v65, &qword_2815724D0, &qword_2815720A8, &qword_281572068, v68);
  sub_269E165B4(v64, sub_269E14D9C);
}

uint64_t sub_269E10288@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E166D0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  sub_269E159B0(v1 + *(v12 + 28), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E510EC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269E1049C()
{
  sub_269DFE53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15714();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E5134C();
  v10 = *(v0 + *(type metadata accessor for ScheduleOccurrenceSectionView(0) + 24));
  *v8 = v9;
  *(v8 + 1) = 0;
  v8[16] = (v10 & 8) != 0;
  sub_269E150A0(0, &qword_28035EC78, sub_269E157A8);
  sub_269E1073C(v0, &v8[*(v11 + 44)]);
  v12 = *MEMORY[0x277CDF998];
  v13 = sub_269E510EC();
  (*(*(v13 - 8) + 104))(v4, v12, v13);
  sub_269E16DA0(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E16DA0(&qword_28035EC80, sub_269E15714);
    sub_269E16DA0(&qword_281571BF8, sub_269DFE53C);
    sub_269E5179C();
    sub_269E16A54(v4, sub_269DFE53C);
    return sub_269E165B4(v8, sub_269E15714);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E1073C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v81 = a2;
  v76 = type metadata accessor for DateView(0);
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15874();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v60 - v9;
  v10 = sub_269E510EC();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = type metadata accessor for SleepWidgetViewModel();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v72 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v70 = type metadata accessor for TimeView(0);
  v24 = *(*(v70 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v70);
  v74 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v69 = &v60 - v28;
  MEMORY[0x28223BE20](v27);
  v83 = &v60 - v29;
  sub_269E51E1C();
  v73 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v32 = *(v30 + 20);
  v31 = *(v30 + 24);
  v33 = v32;
  v71 = *(a1 + v32);
  v82 = *(a1 + v31);
  v67 = type metadata accessor for SleepWidgetViewModel;
  v68 = v32;
  sub_269E169EC(a1, v23, type metadata accessor for SleepWidgetViewModel);
  v62 = *(a1 + v33);
  sub_269E10288(v17);
  v64 = *MEMORY[0x277CDF988];
  v34 = v11[13];
  v65 = v11 + 13;
  v66 = v34;
  v34(v15);
  v63 = sub_269E16DA0(&qword_281572568, MEMORY[0x277CDFA28]);
  v35 = sub_269E51C8C();
  v36 = v11[1];
  v36(v15, v10);
  v36(v17, v10);
  v37 = v10;
  v38 = v82;
  v39 = a1;
  v61 = (v82 & 4) == 0;
  v40 = v17;
  v41 = v15;
  v42 = v35 & v61;
  v43 = v23;
  v44 = v69;
  sub_269E15948(v43, v69, type metadata accessor for SleepWidgetViewModel);
  v45 = v70;
  *(v44 + *(v70 + 20)) = v62;
  *(v44 + *(v45 + 24)) = v42;
  *(v44 + *(v45 + 28)) = v38;
  sub_269E15948(v44, v83, type metadata accessor for TimeView);
  v46 = v72;
  sub_269E169EC(v39, v72, v67);
  LOBYTE(v44) = *(v39 + v68);
  sub_269E10288(v40);
  v66(v41, v64, v37);
  LOBYTE(v39) = sub_269E51C8C();
  v36(v41, v37);
  v36(v40, v37);
  LOBYTE(v38) = v39 & v61;
  v47 = v75;
  sub_269E15948(v46, v75, type metadata accessor for SleepWidgetViewModel);
  v48 = v76;
  *(v47 + *(v76 + 20)) = v44;
  *(v47 + *(v48 + 24)) = v38;
  *(v47 + *(v48 + 28)) = v82;
  sub_269E16DA0(&qword_28035EC68, type metadata accessor for DateView);
  v49 = v77;
  sub_269E5171C();
  sub_269E16A54(v47, type metadata accessor for DateView);
  v50 = v74;
  sub_269E169EC(v83, v74, type metadata accessor for TimeView);
  v52 = v78;
  v51 = v79;
  v53 = *(v79 + 16);
  v54 = v80;
  v53(v78, v49, v80);
  v55 = v81;
  *v81 = v71;
  *(v55 + 1) = v82;
  sub_269E157DC();
  v57 = v56;
  sub_269E169EC(v50, &v55[*(v56 + 48)], type metadata accessor for TimeView);
  v53(&v55[*(v57 + 64)], v52, v54);
  v58 = *(v51 + 8);
  v58(v49, v54);
  sub_269E16A54(v83, type metadata accessor for TimeView);
  v58(v52, v54);
  sub_269E16A54(v50, type metadata accessor for TimeView);
}

void sub_269E10E84()
{
  sub_269E166D0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_269E10F8C()
{
  type metadata accessor for SleepWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_269E166D0(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269E166D0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
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

void __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269E166D0(0, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

void sub_269E1128C()
{
  sub_269E166D0(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_269E11334()
{
  result = qword_28035EBB0;
  if (!qword_28035EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBB0);
  }

  return result;
}

unint64_t sub_269E1138C()
{
  result = qword_28035EBB8;
  if (!qword_28035EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBB8);
  }

  return result;
}

unint64_t sub_269E113E4()
{
  result = qword_28035EBC0;
  if (!qword_28035EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBC0);
  }

  return result;
}

unint64_t sub_269E1143C()
{
  result = qword_28035EBC8;
  if (!qword_28035EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EBC8);
  }

  return result;
}

uint64_t sub_269E114C8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_269E160B8(0, &qword_281572050);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - v4;
  sub_269E14F38(0, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
  v49 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *v1;
  v8 = *(v1 + 1);
  v44 = v8 & 4;
  v50 = &v42 - v9;
  if ((v8 & 4) != 0)
  {
    if ((v8 & 8) == 0)
    {
      LOBYTE(v52) = v7;
      v10 = sub_269E3A588();
      v43 = 0;
      goto LABEL_7;
    }

    LOBYTE(v52) = v7;
    v10 = sub_269E3A4C0();
    v12 = 1;
  }

  else
  {
    LOBYTE(v52) = v7;
    v10 = sub_269E3A4C0();
    v12 = (v8 >> 3) & 1;
  }

  v43 = v12;
LABEL_7:
  v52 = v10;
  v53 = v11;
  sub_269DF0E28();
  v13 = sub_269E516CC();
  v15 = v14;
  v17 = v16;
  LOBYTE(v52) = v7;
  sub_269E1190C(&v52, v8);
  v18 = sub_269E5168C();
  v20 = v19;
  v22 = v21;
  v46 = v7;

  sub_269E00F48(v13, v15, v17 & 1);

  sub_269E1193C(v8);
  v23 = sub_269E516AC();
  v25 = v24;
  LOBYTE(v13) = v26;
  v28 = v27;

  sub_269E00F48(v18, v20, v22 & 1);
  v29 = v46;

  v52 = v23;
  v53 = v25;
  v54 = v13 & 1;
  v55 = v28;
  v30 = v45;
  sub_269E5172C();
  sub_269E00F48(v23, v25, v13 & 1);

  v31 = v44 >> 2;
  KeyPath = swift_getKeyPath();
  v33 = v50;
  (*(v47 + 32))(v50, v30, v48);
  v34 = v33 + *(v49 + 36);
  *v34 = KeyPath;
  *(v34 + 8) = v31;
  *(v34 + 16) = 0;
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v36 = qword_281575978;
  v35 = qword_281575980;
  v52 = 46;
  v53 = 0xE100000000000000;
  if (v29 == 3)
  {
    v37 = 0x656D6974646542;
  }

  else
  {
    v37 = 0x7055656B6157;
  }

  if (v29 == 3)
  {
    v38 = 0xE700000000000000;
  }

  else
  {
    v38 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v37, v38);

  MEMORY[0x26D6539C0](0x6554656C7469542ELL, 0xEA00000000007478);
  v39 = v52;
  v40 = v53;
  v52 = v36;
  v53 = v35;

  MEMORY[0x26D6539C0](v39, v40);

  sub_269E16AB4();
  sub_269E517EC();

  return sub_269E16BB4(v33, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
}

uint64_t sub_269E1190C(_BYTE *a1, char a2)
{
  if ((a2 & 8) != 0)
  {
    if (*a1 != 2)
    {
      return MEMORY[0x2821333A0]();
    }

    return sub_269E5189C();
  }

  if ((a2 & 0x10) == 0)
  {
    if ((a2 & 2) == 0)
    {
      return sub_269E518AC();
    }

    return sub_269E5187C();
  }

  if ((a2 & 2) == 0)
  {
    return sub_269E5189C();
  }

  return sub_269E5187C();
}

uint64_t sub_269E1193C(char a1)
{
  sub_269E1506C(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269E5166C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 8) != 0)
  {
    sub_269E5165C();
    sub_269E515CC();
    v18 = sub_269E515FC();

    return v18;
  }

  else if ((a1 & 4) != 0)
  {

    return sub_269E13BFC(a1);
  }

  else
  {
    v12 = v9;
    (*(v7 + 104))(v11, *MEMORY[0x277CE0AA0], v9);
    v13 = *MEMORY[0x277CE0990];
    v14 = sub_269E5159C();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v5, v13, v14);
    (*(v15 + 56))(v5, 0, 1, v14);
    sub_269E515CC();
    v16 = sub_269E515EC();
    sub_269E16A54(v5, sub_269E1506C);
    (*(v7 + 8))(v11, v12);
    return v16;
  }
}

uint64_t sub_269E11B94()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_281575978;
  sub_269E520CC();

  v2 = type metadata accessor for TimeView(0);
  v3 = *(v0 + *(v2 + 20)) == 3;
  if (*(v0 + *(v2 + 20)) == 3)
  {
    v4 = 0x656D6974646542;
  }

  else
  {
    v4 = 0x7055656B6157;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v4, v5);

  MEMORY[0x26D6539C0](0x616E67697365442ELL, 0xEF74786554726F74);

  MEMORY[0x26D6539C0](46, 0xE100000000000000);

  return v1;
}

uint64_t sub_269E11CD8()
{
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v1 = qword_281575978;
  v2 = type metadata accessor for TimeView(0);
  v3 = *(v0 + *(v2 + 20)) == 3;
  if (*(v0 + *(v2 + 20)) == 3)
  {
    v4 = 0x656D6974646542;
  }

  else
  {
    v4 = 0x7055656B6157;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v4, v5);

  MEMORY[0x26D6539C0](0x786554656D69542ELL, 0xE900000000000074);

  MEMORY[0x26D6539C0](46, 0xE100000000000000);

  return v1;
}

uint64_t sub_269E11DF4@<X0>(uint64_t a1@<X8>)
{
  sub_269E16EAC(0, &qword_28035ED48, sub_269E1667C, sub_269E16798, MEMORY[0x277CE0330]);
  v66 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v51 - v5;
  sub_269E16800(0, &qword_28035ED70, MEMORY[0x277CE0330]);
  v58 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v61 = v51 - v8;
  sub_269E1669C(0);
  v60 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v59 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269E50ACC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TimeView.TimeText(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E16798(0);
  v65 = v18;
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v55 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v54 = v51 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v56 = v51 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v51 - v26;
  sub_269E1667C(0);
  v62 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v57 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_269E50F5C();
  v63 = *(v31 - 8);
  v64 = v31;
  v32 = *(v63 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v51 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TimeView(0);
  v36 = v35[5];
  v69[0] = *(v1 + v36);
  sub_269E3AB78(v69);
  if (*(v1 + v35[6]) != 1 || (sub_269E50F2C(), !v37))
  {
    v68 = *(v1 + v36);
    v41 = *(v1 + v35[7]);
    SleepWidgetViewModel.scheduleOccurrenceTimeAttributedString(occurrence:isCondensed:)(&v68, (v41 & 4) != 0, v17);
    *&v17[*(v14 + 20)] = v41;
    sub_269E11CD8();
    sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText);
    sub_269E517EC();

    sub_269E16A54(v17, type metadata accessor for TimeView.TimeText);
    sub_269E169EC(v27, v67, sub_269E16798);
    swift_storeEnumTagMultiPayload();
    sub_269E16864();
    sub_269E1690C();
    sub_269E513BC();
    v42 = sub_269E16798;
    v43 = v27;
LABEL_9:
    sub_269E16A54(v43, v42);
    return (*(v63 + 8))(v34, v64);
  }

  v53 = a1;

  result = sub_269E50F2C();
  if (v39)
  {
    v51[1] = result;
    if (sub_269E50F1C())
    {
      v40 = *(v1 + v35[7]);
      sub_269E50ABC();
      sub_269E50A6C();
      *&v17[*(v14 + 20)] = v40;
      sub_269E11B94();
      v52 = sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText);
      sub_269E517EC();

      sub_269E16A54(v17, type metadata accessor for TimeView.TimeText);
      sub_269E50F4C();
      sub_269E50ABC();
      sub_269E50A6C();
      *&v17[*(v14 + 20)] = v40;
      sub_269E11CD8();
    }

    else
    {
      sub_269E50F4C();
      v44 = *(v1 + v35[7]);
      v51[0] = v44;
      sub_269E50ABC();
      sub_269E50A6C();
      *&v17[*(v14 + 20)] = v44;
      sub_269E11CD8();
      v52 = sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText);
      sub_269E517EC();

      sub_269E16A54(v17, type metadata accessor for TimeView.TimeText);
      sub_269E50ABC();
      sub_269E50A6C();
      *&v17[*(v14 + 20)] = v51[0];
      sub_269E11B94();
    }

    v45 = v56;
    sub_269E517EC();

    sub_269E16A54(v17, type metadata accessor for TimeView.TimeText);
    v46 = v54;
    sub_269E169EC(v27, v54, sub_269E16798);
    v47 = v55;
    sub_269E169EC(v45, v55, sub_269E16798);
    v48 = v59;
    sub_269E169EC(v46, v59, sub_269E16798);
    sub_269E16734();
    sub_269E169EC(v47, v48 + *(v49 + 48), sub_269E16798);
    sub_269E16A54(v47, sub_269E16798);
    sub_269E16A54(v46, sub_269E16798);
    sub_269E169EC(v48, v61, sub_269E1669C);
    swift_storeEnumTagMultiPayload();
    sub_269E16DA0(&qword_28035ED88, sub_269E1669C);
    v50 = v57;
    sub_269E513BC();
    sub_269E16A54(v48, sub_269E1669C);
    sub_269E16A54(v45, sub_269E16798);
    sub_269E16A54(v27, sub_269E16798);
    sub_269E169EC(v50, v67, sub_269E1667C);
    swift_storeEnumTagMultiPayload();
    sub_269E16864();
    sub_269E1690C();
    sub_269E513BC();
    v42 = sub_269E1667C;
    v43 = v50;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_269E12748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E50A5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v7 = sub_269E516BC();
  v9 = v8;
  v11 = v10;
  v26 = *(v1 + *(type metadata accessor for TimeView.TimeText(0) + 20));
  if ((v26 & 2) != 0)
  {
    sub_269E5187C();
  }

  else
  {
    sub_269E5189C();
  }

  v12 = sub_269E5168C();
  v14 = v13;
  v16 = v15;

  sub_269E00F48(v7, v9, v11 & 1);

  sub_269E12920(v26);
  v17 = sub_269E516AC();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_269E00F48(v12, v14, v16 & 1);

  result = swift_getKeyPath();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_269E12920(char a1)
{
  v2 = sub_269E5166C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E5161C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 8) != 0)
  {
    sub_269E5157C();
    sub_269E515BC();
    v20 = sub_269E515FC();

    return v20;
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      sub_269E515CC();
      v22 = *MEMORY[0x277CE09A0];
      v23 = sub_269E5159C();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v15, v22, v23);
      (*(v24 + 56))(v15, 0, 1, v23);
      sub_269E515DC();
      sub_269E16A54(v15, sub_269E1506C);
      (*(v8 + 104))(v11, *MEMORY[0x277CE0A10], v7);
      v19 = sub_269E5163C();

      (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v3 + 104))(v6, *MEMORY[0x277CE0A68], v2);
      v16 = *MEMORY[0x277CE09A0];
      v17 = sub_269E5159C();
      v18 = *(v17 - 8);
      (*(v18 + 104))(v15, v16, v17);
      (*(v18 + 56))(v15, 0, 1, v17);
      sub_269E515EC();
      sub_269E16A54(v15, sub_269E1506C);
      (*(v3 + 8))(v6, v2);
      sub_269E5154C();

      v19 = sub_269E5158C();
    }

    return v19;
  }
}

void sub_269E12D18(uint64_t a1@<X8>)
{
  *a1 = sub_269E5130C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_269E150A0(0, &qword_28035ECC0, sub_269E15F3C);
  sub_269E12E34(v1, a1 + *(v3 + 44));
  v4 = type metadata accessor for DateView(0);
  v5 = *(v1 + *(v4 + 28));
  v14 = *(v1 + *(v4 + 20));
  v6 = sub_269E13B78(&v14, v5);
  KeyPath = swift_getKeyPath();
  sub_269E16160();
  v9 = (a1 + *(v8 + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  v10 = sub_269E13BFC(v5);
  v11 = swift_getKeyPath();
  sub_269E16274(0, &qword_28035ED18, sub_269E16160);
  v13 = (a1 + *(v12 + 36));
  *v13 = v11;
  v13[1] = v10;
}

uint64_t sub_269E12E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  sub_269E16118(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v130 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v128 = &v105 - v7;
  sub_269E162F8(0, &qword_28035ED20, MEMORY[0x277CE0330]);
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v105 - v11;
  v13 = sub_269E50FBC();
  v14 = *(v13 - 8);
  v124 = v13;
  v125 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v105 - v19;
  sub_269E160B8(0, &qword_28035ECF0);
  v120 = *(v21 - 8);
  v121 = v21;
  v22 = *(v120 + 64);
  MEMORY[0x28223BE20](v21);
  v119 = &v105 - v23;
  sub_269E1600C();
  v118 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v123 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E15FC4(0);
  v28 = v27;
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v122 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v105 - v32;
  sub_269E15FA4(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v127 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v105 - v38;
  sub_269E51E1C();
  v126 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = type metadata accessor for DateView(0);
  v41 = v40;
  if (*(a1 + *(v40 + 24)))
  {
    swift_storeEnumTagMultiPayload();
    sub_269E16434();
    sub_269E513BC();
LABEL_14:
    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_15;
  }

  v116 = v33;
  v117 = v9;
  v42 = *(v40 + 20);
  LOBYTE(v133) = *(a1 + v42);
  if (!SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v133) && v43 == 0xE000000000000000)
  {

LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_269E16434();
    sub_269E513BC();
    goto LABEL_11;
  }

  v44 = sub_269E521CC();

  if (v44)
  {
    goto LABEL_10;
  }

  v45 = *(a1 + v42);
  if (v45 == 3)
  {
    goto LABEL_10;
  }

  sub_269E16360();
  v113 = v77;
  v78 = *(v77 + 48);
  *v20 = v45 != 2;
  v79 = *MEMORY[0x277D62748];
  v80 = sub_269E50F9C();
  v81 = *(v80 - 8);
  v82 = *(v81 + 104);
  v112 = v79;
  v111 = v80;
  v110 = v82;
  v109 = v81 + 104;
  (v82)(&v20[v78], v79);
  v83 = v125;
  v84 = *(v125 + 13);
  v107 = *MEMORY[0x277D62740];
  v108 = v125 + 104;
  v106 = v84;
  v84(v20);
  v85 = sub_269E50F8C();
  v86 = v20;
  v87 = v124;
  v114 = *(v83 + 8);
  v125 = (v83 + 8);
  v114(v86, v124);
  v115 = v85;
  v133 = v85;
  v88 = *(a1 + v42);
  if (v88 == 3)
  {
    sub_269E50FAC();
  }

  else
  {
    v90 = *(v113 + 48);
    *v18 = v88 != 2;
    v110(&v18[v90], v112, v111);
    v106(v18, v107, v87);
  }

  v91 = v87;
  v92 = v119;
  sub_269E516DC();
  v114(v18, v91);

  v93 = *(a1 + *(v41 + 28));
  LOBYTE(v133) = *(a1 + v42);
  v94 = sub_269E139E0(&v133);
  KeyPath = swift_getKeyPath();
  v96 = v123;
  (*(v120 + 32))(v123, v92, v121);
  v97 = (v96 + *(v118 + 36));
  *v97 = KeyPath;
  v97[1] = v94;
  v98 = v122;
  v99 = &v122[*(v28 + 36)];
  sub_269E14E98(0);
  v101 = *(v100 + 28);
  v102 = *MEMORY[0x277CE1050];
  v103 = sub_269E518DC();
  (*(*(v103 - 8) + 104))(v99 + v101, v102, v103);
  *v99 = swift_getKeyPath();
  sub_269E163CC(v96, v98, sub_269E1600C);
  v104 = v116;
  sub_269E163CC(v98, v116, sub_269E15FC4);
  sub_269E16614(v104, v12, sub_269E15FC4);
  swift_storeEnumTagMultiPayload();
  sub_269E16434();
  sub_269E513BC();
  sub_269E165B4(v104, sub_269E15FC4);
LABEL_11:
  v46 = *(v41 + 20);
  LOBYTE(v133) = *(a1 + v46);
  if (!SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v133) && v47 == 0xE000000000000000)
  {

    goto LABEL_14;
  }

  v49 = 0xE000000000000000;
  v76 = sub_269E521CC();

  if ((v76 & 1) != 0 || *(a1 + v46) == 3)
  {
    v48 = 0;
  }

  else
  {
    v48 = sub_269E51D2C();
    v49 = v89;
  }

LABEL_15:
  v125 = v39;
  v50 = *(v41 + 20);
  LOBYTE(v133) = *(a1 + v50);
  v51 = SleepWidgetViewModel.scheduleOccurrenceRelativeDateString(occurrence:)(&v133);
  v53 = v52;
  v133 = v48;
  v134 = v49;

  MEMORY[0x26D6539C0](v51, v53);

  sub_269DF0E28();
  v54 = sub_269E516CC();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = (*(a1 + *(v41 + 28)) >> 2) & 1;
  v62 = swift_getKeyPath();
  v133 = v54;
  v134 = v56;
  v135 = v58 & 1;
  v136 = v60;
  v137 = v62;
  v138 = v61;
  v139 = 0;
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v63 = qword_281575978;
  v64 = qword_281575980;
  v131 = 46;
  v132 = 0xE100000000000000;
  if (*(a1 + v50) == 3)
  {
    v65 = 0x656D6974646542;
  }

  else
  {
    v65 = 0x7055656B6157;
  }

  if (*(a1 + v50) == 3)
  {
    v66 = 0xE700000000000000;
  }

  else
  {
    v66 = 0xE600000000000000;
  }

  MEMORY[0x26D6539C0](v65, v66);

  MEMORY[0x26D6539C0](0x786554657461442ELL, 0xE900000000000074);
  v67 = v131;
  v68 = v132;
  v131 = v63;
  v132 = v64;

  MEMORY[0x26D6539C0](v67, v68);

  sub_269E083BC();
  sub_269E088AC();
  v69 = v128;
  sub_269E517EC();

  sub_269E00F48(v54, v56, v58 & 1);

  v70 = v125;
  v71 = v127;
  sub_269E16614(v125, v127, sub_269E15FA4);
  v72 = v130;
  sub_269E169EC(v69, v130, sub_269E16118);
  v73 = v129;
  sub_269E16614(v71, v129, sub_269E15FA4);
  sub_269E15F70(0);
  sub_269E169EC(v72, v73 + *(v74 + 48), sub_269E16118);
  sub_269E16A54(v69, sub_269E16118);
  sub_269E165B4(v70, sub_269E15FA4);
  sub_269E16A54(v72, sub_269E16118);
  sub_269E165B4(v71, sub_269E15FA4);
}

uint64_t sub_269E139E0(unsigned __int8 *a1)
{
  v2 = sub_269E50FBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ((v5 & 0xA) != 0)
  {
    v16 = v8;
    return sub_269E13B78(&v16, v5);
  }

  else
  {
    if (v8 == 3)
    {
      sub_269E50FAC();
    }

    else
    {
      sub_269E16360();
      v11 = *(v10 + 48);
      *v7 = v8 != 2;
      v12 = *MEMORY[0x277D62748];
      v13 = sub_269E50F9C();
      (*(*(v13 - 8) + 104))(&v7[v11], v12, v13);
      (*(v3 + 104))(v7, *MEMORY[0x277D62740], v2);
    }

    v14 = sub_269E50F7C();
    (*(v3 + 8))(v7, v2);
    return v14;
  }
}

uint64_t sub_269E13B78(_BYTE *a1, char a2)
{
  if ((a2 & 0xA) == 0)
  {
    goto LABEL_7;
  }

  if (*a1 != 2)
  {

    return sub_269E5187C();
  }

  if ((a2 & 8) != 0)
  {
    v5 = [objc_opt_self() systemGray2Color];

    return sub_269E5183C();
  }

  else
  {
LABEL_7:

    return sub_269E518AC();
  }
}

uint64_t sub_269E13BFC(char a1)
{
  v2 = sub_269E5161C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E5166C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 8) != 0)
  {
    sub_269E5157C();
    sub_269E515BC();
    v21 = sub_269E515FC();

    return v21;
  }

  else
  {
    v16 = *(v12 + 104);
    if ((a1 & 4) != 0)
    {
      v16(v15, *MEMORY[0x277CE0AA8], v11);
      v23 = *MEMORY[0x277CE09A0];
      v24 = sub_269E5159C();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v10, v23, v24);
      (*(v25 + 56))(v10, 0, 1, v24);
      sub_269E515CC();
      sub_269E515EC();
      sub_269E16A54(v10, sub_269E1506C);
      (*(v12 + 8))(v15, v11);
      (*(v3 + 104))(v6, *MEMORY[0x277CE0A10], v2);
      v20 = sub_269E5163C();

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16(v15, *MEMORY[0x277CE0AA0], v11);
      v17 = *MEMORY[0x277CE0990];
      v18 = sub_269E5159C();
      v19 = *(v18 - 8);
      (*(v19 + 104))(v10, v17, v18);
      (*(v19 + 56))(v10, 0, 1, v18);
      sub_269E515CC();
      v20 = sub_269E515EC();
      sub_269E16A54(v10, sub_269E1506C);
      (*(v12 + 8))(v15, v11);
    }

    return v20;
  }
}

uint64_t sub_269E13FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_269E1506C(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E5166C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1559C();
  v78 = v12;
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x28223BE20](v12);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E154C0(0);
  v74 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v70 - v19;
  sub_269E151F0(0);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v79 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - v25;
  sub_269E51E1C();
  v76 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v26 = sub_269E5130C();
  *(v26 + 1) = 0;
  v26[16] = 1;
  sub_269E150A0(0, &qword_28035EC38, sub_269E1533C);
  sub_269E147C0(a1, &v26[*(v27 + 44)]);
  *&v26[*(v21 + 36)] = sub_269E5180C();
  v72 = type metadata accessor for BedTitleView(0);
  v28 = (a1 + *(v72 + 20));
  v29 = v28[1];
  *&v90[0] = *v28;
  *(&v90[0] + 1) = v29;
  sub_269DF0E28();

  v30 = sub_269E516CC();
  v73 = v26;
  v32 = v31;
  v34 = v33;
  v70 = v35;
  (*(v8 + 104))(v11, *MEMORY[0x277CE0A90], v7);
  v36 = v7;
  v37 = *MEMORY[0x277CE09A0];
  v38 = sub_269E5159C();
  v71 = a1;
  v39 = v38;
  v40 = *(v38 - 8);
  (*(v40 + 104))(v6, v37, v38);
  (*(v40 + 56))(v6, 0, 1, v39);
  sub_269E515EC();
  sub_269E16A54(v6, sub_269E1506C);
  (*(v8 + 8))(v11, v36);
  sub_269E5154C();

  v41 = sub_269E516AC();
  v43 = v42;
  v45 = v44;

  sub_269E00F48(v30, v32, v34 & 1);

  sub_269E515AC();
  v46 = sub_269E5167C();
  v48 = v47;
  LOBYTE(v37) = v49;
  v51 = v50;
  sub_269E00F48(v41, v43, v45 & 1);

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v89 = v37 & 1;
  v88 = 0;
  *&v83 = v46;
  *(&v83 + 1) = v48;
  LOBYTE(v84) = v37 & 1;
  *(&v84 + 1) = v51;
  *&v85 = KeyPath;
  *(&v85 + 1) = 0x3FE8000000000000;
  *&v86 = v53;
  *(&v86 + 1) = 1;
  v87 = 0;
  v54 = v72;
  v55 = v71;
  v56 = *(v71 + *(v72 + 24));
  sub_269E08F3C(0);
  v58 = v57;
  v59 = sub_269E08F84();
  v60 = v75;
  sub_269E5170C();
  v90[2] = v85;
  v90[3] = v86;
  v91 = v87;
  v90[0] = v83;
  v90[1] = v84;
  sub_269E16A54(v90, sub_269E08F3C);
  v61 = *(v55 + *(v54 + 28));
  *&v83 = v58;
  *(&v83 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v62 = v80;
  v63 = v78;
  sub_269E5171C();
  (*(v77 + 8))(v60, v63);
  *(v62 + *(v74 + 36)) = sub_269E5180C();
  v64 = v73;
  v65 = v79;
  sub_269E169EC(v73, v79, sub_269E151F0);
  v66 = v81;
  sub_269E16614(v62, v81, sub_269E154C0);
  v67 = v82;
  sub_269E169EC(v65, v82, sub_269E151F0);
  sub_269E15140(0);
  sub_269E16614(v66, v67 + *(v68 + 48), sub_269E154C0);
  sub_269E165B4(v62, sub_269E154C0);
  sub_269E16A54(v64, sub_269E151F0);
  sub_269E165B4(v66, sub_269E154C0);
  sub_269E16A54(v65, sub_269E151F0);
}

uint64_t sub_269E147C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v26 = a2;
  v2 = sub_269E518CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269E50FBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E153D8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  sub_269E51E1C();
  v25[1] = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E50FAC();
  sub_269E50F8C();
  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v19 = sub_269E518EC();

  (*(v3 + 8))(v6, v2);
  v20 = *(v25[0] + *(type metadata accessor for BedTitleView(0) + 32));
  sub_269E5199C();
  sub_269E5106C();
  v27 = v19;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31 = v36;
  v32 = v37;
  sub_269E1546C(0, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
  sub_269E15670();
  sub_269E5177C();

  sub_269E169EC(v18, v16, sub_269E153D8);
  v21 = v26;
  sub_269E169EC(v16, v26, sub_269E153D8);
  sub_269E15370();
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_269E16A54(v18, sub_269E153D8);
  sub_269E16A54(v16, sub_269E153D8);
}

uint64_t sub_269E14BB4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_269E5134C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  sub_269E150A0(0, &qword_28035EBD0, sub_269E1510C);
  return sub_269E13FF0(v1, a1 + *(v3 + 44));
}

void sub_269E14C44()
{
  if (!qword_281571FE0)
  {
    sub_269E14CD8(255);
    sub_269E16DA0(&qword_281571EA8, sub_269E14CD8);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571FE0);
    }
  }
}

void sub_269E14D0C()
{
  if (!qword_281572310)
  {
    sub_269E14D9C(255);
    sub_269E14F38(255, &qword_2815724D0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281572310);
    }
  }
}

void sub_269E14E04()
{
  if (!qword_2815724C8)
  {
    sub_269E160B8(255, &qword_281572048);
    sub_269E5148C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2815724C8);
    }
  }
}

void sub_269E14ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269E15620(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269E5147C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E14F38(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269E160B8(255, &qword_281572050);
    sub_269E14ECC(255, a3, a4, a5);
    v9 = sub_269E510FC();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E14FEC()
{
  if (!qword_281572468)
  {
    sub_269E14C44();
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572468);
    }
  }
}

void sub_269E150A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E15174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E15210(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E1546C(255, &qword_2815720D0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E152A8()
{
  if (!qword_28035EBF0)
  {
    sub_269E1533C(255);
    sub_269E16DA0(&qword_28035EC18, sub_269E1533C);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EBF0);
    }
  }
}

void sub_269E15370()
{
  if (!qword_28035EC00)
  {
    sub_269E153D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035EC00);
    }
  }
}

void sub_269E153D8()
{
  if (!qword_28035EC08)
  {
    sub_269E1546C(255, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_269E5148C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EC08);
    }
  }
}

void sub_269E1546C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E154E0()
{
  if (!qword_28035EC28)
  {
    sub_269E1559C();
    sub_269E08F3C(255);
    sub_269E08F84();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC28);
    }
  }
}

void sub_269E1559C()
{
  if (!qword_28035EC30)
  {
    sub_269E08F3C(255);
    sub_269E08F84();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC30);
    }
  }
}

void sub_269E15620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269E15670()
{
  result = qword_28035EC40;
  if (!qword_28035EC40)
  {
    sub_269E1546C(255, &qword_28035EC10, MEMORY[0x277CE1088], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EC40);
  }

  return result;
}

void sub_269E15714()
{
  if (!qword_28035EC48)
  {
    sub_269E157A8(255);
    sub_269E16DA0(&qword_28035EC70, sub_269E157A8);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EC48);
    }
  }
}

void sub_269E157DC()
{
  if (!qword_28035EC58)
  {
    type metadata accessor for TimeView(255);
    sub_269E15874();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28035EC58);
    }
  }
}

void sub_269E15874()
{
  if (!qword_28035EC60)
  {
    type metadata accessor for DateView(255);
    sub_269E16DA0(&qword_28035EC68, type metadata accessor for DateView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035EC60);
    }
  }
}

uint64_t sub_269E15948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E159B0(uint64_t a1, uint64_t a2)
{
  sub_269E166D0(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_45Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_46Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SleepWidgetViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_269E15C18()
{
  result = type metadata accessor for SleepWidgetViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleOccurrenceTextView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduleOccurrenceTextView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_269E15D44(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_269E16DA0(a3, a4);
    sub_269E15E04(&qword_2815720A0, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E15E04(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269E14ECC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E15E54()
{
  if (!qword_28035ECB0)
  {
    sub_269E1510C(255);
    sub_269E16DA0(&qword_28035ECB8, sub_269E1510C);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035ECB0);
    }
  }
}

void sub_269E1600C()
{
  if (!qword_28035ECE8)
  {
    sub_269E160B8(255, &qword_28035ECF0);
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035ECE8);
    }
  }
}

void sub_269E160B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E16160()
{
  if (!qword_28035ED00)
  {
    sub_269E161E0();
    sub_269E14ECC(255, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035ED00);
    }
  }
}

void sub_269E161E0()
{
  if (!qword_28035ED08)
  {
    sub_269E15F3C(255);
    sub_269E16DA0(&qword_28035ED10, sub_269E15F3C);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035ED08);
    }
  }
}

void sub_269E16274(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_269E14ECC(255, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E162F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_269E15FC4(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269E16360()
{
  if (!qword_28035ED28)
  {
    sub_269E50F9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035ED28);
    }
  }
}

uint64_t sub_269E163CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269E16434()
{
  result = qword_28035ED30;
  if (!qword_28035ED30)
  {
    sub_269E15FC4(255);
    sub_269E164E4();
    sub_269E16DA0(&qword_28035ED40, sub_269E14E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED30);
  }

  return result;
}

unint64_t sub_269E164E4()
{
  result = qword_28035ED38;
  if (!qword_28035ED38)
  {
    sub_269E1600C();
    swift_getOpaqueTypeConformance2();
    sub_269E15E04(&qword_2815720A0, &qword_281572098, &qword_281572020, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED38);
  }

  return result;
}

uint64_t sub_269E165B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E16614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269E166D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E16734()
{
  if (!qword_28035ED60)
  {
    sub_269E16798(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035ED60);
    }
  }
}

void sub_269E16800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E1669C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269E16864()
{
  result = qword_28035ED80;
  if (!qword_28035ED80)
  {
    sub_269E1667C(255);
    sub_269E16DA0(&qword_28035ED88, sub_269E1669C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED80);
  }

  return result;
}

unint64_t sub_269E1690C()
{
  result = qword_28035ED90;
  if (!qword_28035ED90)
  {
    sub_269E16798(255);
    sub_269E16DA0(&qword_28035ED78, type metadata accessor for TimeView.TimeText);
    sub_269E16DA0(&qword_281572078, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035ED90);
  }

  return result;
}

uint64_t sub_269E169EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E16A54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269E16AB4()
{
  result = qword_28035EDA0;
  if (!qword_28035EDA0)
  {
    v1 = MEMORY[0x277D83B88];
    sub_269E14F38(255, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
    swift_getOpaqueTypeConformance2();
    sub_269E15E04(&qword_281572088, &qword_281572080, &qword_281571D28, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDA0);
  }

  return result;
}

uint64_t sub_269E16BB4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_269E14F38(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_269E16C38()
{
  result = sub_269E50A5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_269E16CAC()
{
  result = qword_28035EDB8;
  if (!qword_28035EDB8)
  {
    sub_269E16274(255, &qword_28035ED18, sub_269E16160);
    sub_269E15D44(&qword_28035EDC0, sub_269E16160, &qword_28035EDC8, sub_269E161E0);
    sub_269E15E04(&qword_28035EDD0, &qword_2815720A8, &qword_281572068, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDB8);
  }

  return result;
}

uint64_t sub_269E16DA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E16DE8()
{
  result = qword_28035EDD8;
  if (!qword_28035EDD8)
  {
    sub_269E16EAC(255, &qword_28035EDE0, sub_269E1667C, sub_269E16798, MEMORY[0x277CE0338]);
    sub_269E16864();
    sub_269E1690C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDD8);
  }

  return result;
}

void sub_269E16EAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_269E16F30()
{
  result = qword_28035EDE8;
  if (!qword_28035EDE8)
  {
    sub_269E16FE0();
    sub_269E16AB4();
    sub_269E16DA0(&qword_281572078, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EDE8);
  }

  return result;
}

void sub_269E16FE0()
{
  if (!qword_28035EDF0)
  {
    sub_269E14F38(255, &qword_28035ED98, &qword_281572080, &qword_281571D28, MEMORY[0x277D83B88]);
    sub_269E5148C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EDF0);
    }
  }
}

uint64_t type metadata accessor for GreetingSleepWidgetRectangularView()
{
  result = qword_2815739A8;
  if (!qword_2815739A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E170FC()
{
  sub_269E17B98(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepWidgetViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E171A4(uint64_t a1)
{
  result = sub_269E17C50(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E17218()
{
  v1 = (v0 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    if (v3)
    {
      v4 = v1[2];
      v5 = v1[3];
      v6 = v5;

      v7 = v3;
      [v7 sleepDuration];
      if (v8 > COERCE_DOUBLE(1) && v8 > 0.0)
      {
        sub_269DF6EA0(v2, v3, v4, v5);
        return 1;
      }

      [v7 inBedDuration];
      v10 = v9;
      sub_269DF6EA0(v2, v3, v4, v5);
      if (v10 > COERCE_DOUBLE(1) && v10 > 0.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_269E17310()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_269E17458()
{
  v1 = v0 + *(type metadata accessor for GreetingSleepWidgetRectangularView() + 20);
  v2 = sub_269DEFEA4();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_269DF0E08(0, v3, 0);
    sub_269E51E1C();
    v4 = v15;
    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_269E51E0C();
      sub_269E51DDC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_269DF0E28();
      v8 = sub_269E51FAC();
      v10 = v9;

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_269DF0E08((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_269E175F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SleepWidgetChartView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1 + *(type metadata accessor for GreetingSleepWidgetRectangularView() + 20);
  v9 = (v8 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v10 = *v9;
  if (*v9)
  {
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[1];
    v29[0] = v10;
    v29[1] = v13;
    v30 = v12;
    v31 = v11;
    sub_269E0B178(&v32);
    v14 = v32;
  }

  else
  {
    v14 = 0;
  }

  v29[0] = v14;
  if (sub_269E17310())
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  sub_269E49E94(v29, v15, v7);
  v16 = sub_269E514FC();
  v17 = sub_269E5152C();
  sub_269E5152C();
  if (sub_269E5152C() != v16)
  {
    v17 = sub_269E5152C();
  }

  sub_269E17310();
  sub_269E5102C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_269E17BE8(v7, a2, type metadata accessor for SleepWidgetChartView);
  sub_269E17A88();
  v27 = a2 + *(v26 + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
}

uint64_t sub_269E177A4(uint64_t a1)
{
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  sub_269E17458();
  v5 = *(v2 + 28);
  if (sub_269E17218())
  {
    sub_269E17B98(0, &qword_281571BC0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_269E528D0;
    *(v6 + 32) = sub_269DF01B0();
    *(v6 + 40) = v7;
  }

  else
  {
    sub_269DF035C();
  }

  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  sub_269E179B4(v1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_269E17BE8(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GreetingSleepWidgetRectangularView);
  sub_269E17A88();
  sub_269E17AE8();

  return sub_269E51A4C();
}

uint64_t sub_269E179B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GreetingSleepWidgetRectangularView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E17A18(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GreetingSleepWidgetRectangularView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_269E175F8(v4, a1);
}

void sub_269E17A88()
{
  if (!qword_281572540)
  {
    type metadata accessor for SleepWidgetChartView();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572540);
    }
  }
}

unint64_t sub_269E17AE8()
{
  result = qword_281572548;
  if (!qword_281572548)
  {
    sub_269E17A88();
    sub_269E17C50(&qword_281572A30, type metadata accessor for SleepWidgetChartView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572548);
  }

  return result;
}

void sub_269E17B98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269E17BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E17C50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E17C98()
{
  if (!qword_281571E38)
  {
    sub_269E17A88();
    sub_269E17AE8();
    v0 = sub_269E51A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571E38);
    }
  }
}

uint64_t sub_269E17D28@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  v1 = sub_269E51A8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_269E50FBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E18034();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  v13 = sub_269E50F6C();
  v21[1] = v14;
  v21[2] = v13;
  (*(v4 + 8))(v7, v3);
  if (qword_28035E898 != -1)
  {
    swift_once();
  }

  v16 = qword_280361098;
  v15 = qword_2803610A0;
  v22 = MEMORY[0x277D84F90];
  sub_269E18230(&qword_281571E30, MEMORY[0x277D12700]);
  sub_269E1811C(0, &qword_281571D80, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_269DF2070();

  sub_269E51FEC();
  sub_269E51A7C();
  v17 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v9 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  v22 = v16;
  v23 = v15;

  MEMORY[0x26D6539C0](0x776569562ELL, 0xE500000000000000);
  sub_269E18180();
  sub_269E517EC();

  return sub_269E18278(v12);
}

void sub_269E18034()
{
  if (!qword_28035EDF8)
  {
    sub_269E51A9C();
    sub_269E1811C(255, &qword_281572098, sub_269E180CC, MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EDF8);
    }
  }
}

void sub_269E180CC()
{
  if (!qword_281572020)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281572020);
    }
  }
}

void sub_269E1811C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269E18180()
{
  result = qword_28035EE00;
  if (!qword_28035EE00)
  {
    sub_269E18034();
    sub_269E18230(&qword_281571E28, MEMORY[0x277D12710]);
    sub_269E0AAF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE00);
  }

  return result;
}

uint64_t sub_269E18230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E18278(uint64_t a1)
{
  sub_269E18034();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E182D4()
{
  v0 = sub_269E5101C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v5 = sub_269E5100C();
  v6 = sub_269E51E9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_269E47920(0xD00000000000001DLL, 0x8000000269E54600, &v15);
    *(v7 + 12) = 2082;
    v9 = sub_269E51B0C();
    v10 = MEMORY[0x26D653A40](MEMORY[0x277D84F90], v9);
    v12 = sub_269E47920(v10, v11, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_269DE5000, v5, v6, "[%{public}s] supportedFamilies: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v8, -1, -1);
    MEMORY[0x26D654490](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return MEMORY[0x277D84F90];
}

unint64_t sub_269E184C8()
{
  result = qword_28035EE08;
  if (!qword_28035EE08)
  {
    sub_269E18578();
    sub_269E18180();
    sub_269E18230(&qword_281572078, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE08);
  }

  return result;
}

void sub_269E18578()
{
  if (!qword_28035EE10)
  {
    sub_269E18034();
    sub_269E5148C();
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EE10);
    }
  }
}

uint64_t SleepStageWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_281575988;

  return v0;
}

__n128 SleepStageWidgetViewModel.init(summaryResults:overrideState:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

SleepWidgetUI::SleepStageWidgetViewModel::OverrideState_optional __swiftcall SleepStageWidgetViewModel.OverrideState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id SleepStageWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    result = sub_269DF6E4C(*v1, v4, v5, v6);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t SleepStageWidgetViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 32);
  if (!*v1)
  {
    goto LABEL_7;
  }

  v5 = *(v1 + 8);
  v6 = *(v1 + 24);
  v7 = *(v1 + 16);
  sub_269E5222C();
  sub_269E0EE0C(a1, v3);
  sub_269E5222C();
  if (v5)
  {
    v8 = v5;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v7);
  if (v6)
  {
    sub_269E5222C();
    v9 = v6;
    sub_269E51F7C();

    if (v4 != 3)
    {
LABEL_6:
      sub_269E5222C();
      return MEMORY[0x26D653EA0](v4);
    }
  }

  else
  {
LABEL_7:
    sub_269E5222C();
    if (v4 != 3)
    {
      goto LABEL_6;
    }
  }

  return sub_269E5222C();
}

uint64_t SleepStageWidgetViewModel.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v4);
  return sub_269E5223C();
}

uint64_t sub_269E18864()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v4);
  return sub_269E5223C();
}

uint64_t sub_269E188BC()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_269E5220C();
  SleepStageWidgetViewModel.hash(into:)(v4);
  return sub_269E5223C();
}