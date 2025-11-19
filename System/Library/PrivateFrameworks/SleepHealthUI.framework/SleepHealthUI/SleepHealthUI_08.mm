uint64_t sub_269CF0A98()
{
  MEMORY[0x26D650930](60, 0xE100000000000000);
  swift_getObjectType();
  sub_269CF12E8();
  v0 = sub_269D9A660();
  MEMORY[0x26D650930](v0);

  MEMORY[0x26D650930](32, 0xE100000000000000);
  sub_269D9B0E0();
  return 0;
}

void sub_269CF0B70(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for TimePickerTableViewCell();
  v6 = *a4;
  v7 = a1;
  objc_msgSendSuper2(&v8, v6);
  sub_269CF121C();
}

id sub_269CF0C40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimePickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CF0CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269CF0D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269CF0354(&OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item, sub_269CF0630, &OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
}

uint64_t (*sub_269CF0DFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269CF0E60;
}

uint64_t sub_269CF0E60(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269CF0354(&OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item, sub_269CF0630, &OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  }

  return result;
}

uint64_t sub_269CF0EB8(uint64_t a1)
{
  *(a1 + 8) = sub_269CF0F20(&qword_2803501C8);
  result = sub_269CF0F20(&qword_2803501D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_269CF0F20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimePickerTableViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269CF0F78(uint64_t (*a1)(void))
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setBackgroundView_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setSelectedBackgroundView_];

  v5 = [v1 contentView];
  v6 = a1();
  [v5 addSubview_];
}

void sub_269CF1064()
{
  v1 = v0;
  v2 = sub_269D97F80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = [v0 viewController];
  if (v9)
  {
    v10 = v9;
    sub_269D9AC00();

    (*(v3 + 32))(v8, v6, v2);
  }

  else
  {
    (*(v3 + 104))(v8, *MEMORY[0x277D10E40], v2);
  }

  v11 = sub_269D97F70();
  (*(v3 + 8))(v8, v2);
  v12 = v11;
  [v1 setBackgroundColor_];
  v13 = [v1 selectedBackgroundView];
  [v13 setBackgroundColor_];
}

void sub_269CF121C()
{
  v1 = [v0 backgroundColor];
  if (!v1)
  {
    v1 = [objc_opt_self() systemGroupedBackgroundColor];
  }

  v3 = v1;
  [v0 setBackgroundColor_];
  v2 = [v0 selectedBackgroundView];
  [v2 setBackgroundColor_];
}

unint64_t sub_269CF12E8()
{
  result = qword_2803501E8;
  if (!qword_2803501E8)
  {
    type metadata accessor for TimePickerTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2803501E8);
  }

  return result;
}

uint64_t AttributedString.applyingLetterSmallCaps(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_269D972A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF1778(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  sub_269CF1778(0, &qword_280C0AF18, sub_269CF17CC);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  sub_269CF17CC();
  v41 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v7 + 16);
  v37 = a2;
  v42 = v6;
  v43 = v3;
  result = v18(a2, v3, v6);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_269D97650();
    v22 = *(v21 - 8);
    v40 = (v16 + 48);
    v32 = (v7 + 8);
    v23 = *(v22 + 56);
    v38 = v22 + 56;
    v39 = v23;
    v24 = (a1 + 40);
    v33 = v11;
    v34 = v14;
    v25 = v42;
    do
    {
      v26 = *v24;
      v44 = *(v24 - 1);
      v45 = v26;
      v39(v11, 1, 1, v21);
      sub_269CF224C(&qword_2803501F0, MEMORY[0x277CC8C40]);
      sub_269C3EEE8();

      sub_269D97370();
      sub_269CF1860(v11, &qword_280C0B3E0, MEMORY[0x277CC9788]);
      if ((*v40)(v14, 1, v41) == 1)
      {

        result = sub_269CF1860(v14, &qword_280C0AF18, sub_269CF17CC);
      }

      else
      {
        v27 = v35;
        sub_269CF18BC(v14, v35);
        v28 = v21;
        v29 = v36;
        sub_269D9A700();

        sub_269CF224C(&qword_280C0AF10, sub_269CF17CC);
        sub_269D97220();
        v30 = v29;
        v21 = v28;
        (*v32)(v30, v25);
        v31 = v27;
        v11 = v33;
        v14 = v34;
        result = sub_269CF1920(v31);
      }

      v24 += 2;
      --v20;
    }

    while (v20);
  }

  return result;
}

void sub_269CF1778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CF17CC()
{
  if (!qword_280C0AF20)
  {
    sub_269D97270();
    sub_269CF224C(&qword_280C0B3F0, MEMORY[0x277CC8C20]);
    v0 = sub_269D9AA60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AF20);
    }
  }
}

uint64_t sub_269CF1860(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269CF1778(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269CF18BC(uint64_t a1, uint64_t a2)
{
  sub_269CF17CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF1920(uint64_t a1)
{
  sub_269CF17CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttributedString.setNumericAttributes(_:)(uint64_t a1)
{
  v2 = v1;
  v26[1] = a1;
  sub_269CF17CC();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D96F60();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = sub_269D97210();
  MEMORY[0x28223BE20](v13);
  sub_269D97200();
  sub_269CF224C(&qword_280C0B3F8, MEMORY[0x277CC8B30]);
  v28[0] = sub_269D9A760();
  v28[1] = v14;
  sub_269D96F40();
  sub_269D96F50();
  v15 = *(v7 + 8);
  v15(v12, v6);
  sub_269C3EEE8();
  v16 = sub_269D9AE80();
  v15(v10, v6);

  v17 = sub_269CF20A4(v16);

  sub_269CF1CE4(v17, v2);
  v19 = v18;

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v27 + 80);
    v26[0] = v19;
    v22 = v19 + ((v21 + 32) & ~v21);
    v23 = *(v27 + 72);
    do
    {
      sub_269CF213C(v22, v5);
      sub_269CF224C(&qword_280C0AF10, sub_269CF17CC);
      v24 = sub_269D972B0();
      sub_269D972D0();
      v24(v28, 0);
      sub_269CF1920(v5);
      v22 += v23;
      --v20;
    }

    while (v20);
  }
}

void sub_269CF1CE4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_269CF1778(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v32 - v4;
  v36 = sub_269D972A0();
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v33 = (v5 + 8);
  v34 = (v5 + 16);
  v39 = a1;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v10)
  {
    v42 = v13;
LABEL_11:
    v15 = (*(v39 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v15;
    v17 = v15[1];
    v18 = v35;
    v19 = v36;
    (*v34)(v35, v38, v36);
    v40 = v16;
    v41 = v17;
    v20 = sub_269D97650();
    v21 = v37;
    (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
    sub_269C3EEE8();

    v22 = sub_269D97280();
    sub_269CF1860(v21, &qword_280C0B3E0, MEMORY[0x277CC9788]);
    (*v33)(v18, v19);

    v23 = *(v22 + 16);
    v13 = v42;
    v24 = v42[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > v13[3] >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v13 = sub_269D623B4(isUniquelyReferenced_nonNull_native, v27, 1, v13);
    }

    v10 &= v10 - 1;
    if (*(v22 + 16))
    {
      v28 = (v13[3] >> 1) - v13[2];
      sub_269CF17CC();
      if (v28 < v23)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v23)
      {
        v29 = v13[2];
        v30 = __OFADD__(v29, v23);
        v31 = v29 + v23;
        if (v30)
        {
          goto LABEL_28;
        }

        v13[2] = v31;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v42 = v13;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_269CF20A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D650BC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_269D690B4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_269CF213C(uint64_t a1, uint64_t a2)
{
  sub_269CF17CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF21A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_269CF224C(&qword_2803501F8, type metadata accessor for HKCategoryValueSleepAnalysis);
  result = MEMORY[0x26D650BC0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_269D69204(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_269CF224C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepScorePetals()
{
  result = qword_280350230;
  if (!qword_280350230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CF2308()
{
  sub_269CF3830(319, &qword_280C0B118, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_269CF23FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269D99040();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF3830(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SleepScorePetals();
  sub_269CF3894(v1 + *(v10 + 44), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_269D989F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_269D9AB70();
    v13 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_269CF2610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v92 = a2;
  v5 = sub_269D990F0();
  MEMORY[0x28223BE20](v5 - 8);
  v107 = sub_269D989F0();
  v6 = *(v107 - 8);
  v7 = MEMORY[0x28223BE20](v107);
  v106 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v80 - v9;
  v10 = sub_269D97AC0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - v16;
  sub_269CF34DC();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v85 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v80 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v83 = &v80 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v80 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v98 = &v80 - v28;
  MEMORY[0x28223BE20](v27);
  v102 = &v80 - v29;
  sub_269D9A8E0();
  v82 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = *(a1 + 48);
  v99 = *(a1 + 56);
  v31 = *(a1 + 64);
  v32 = *MEMORY[0x277D62588];
  v33 = *(v11 + 104);
  v95 = v11 + 104;
  v104 = v33;
  v33(v17, v32, v10);
  SleepScoreComponent.uiColor.getter();
  v34 = sub_269D99CC0();
  v35 = *(v11 + 8);
  v94 = v10;
  v97 = v11 + 8;
  v103 = v35;
  v35(v17, v10);
  v36 = v105;
  sub_269CF23FC(v105);
  v37 = *(v6 + 104);
  v38 = v106;
  v39 = v107;
  v87 = *MEMORY[0x277CDF3C0];
  v88 = v6 + 104;
  v86 = v37;
  v37(v106);
  v40 = sub_269D989E0();
  v41 = *(v6 + 8);
  v41(v38, v39);
  v91 = v6 + 8;
  v89 = v41;
  v41(v36, v39);
  if (v40)
  {
    v42 = 0.28;
  }

  else
  {
    v42 = 0.24;
  }

  v43 = *a1;
  v44 = *(a1 + 8);
  v45 = *(a1 + 72);
  v46 = a3 + -1.57079633;
  sub_269D9A250();
  *&v121 = a3;
  *(&v121 + 1) = v30;
  v96 = v30;
  v47 = v99;
  *&v122 = v99;
  *(&v122 + 1) = v31;
  *&v123 = v34;
  *(&v123 + 1) = v42;
  *&v124 = v43;
  *(&v124 + 1) = v44;
  *&v125 = v45;
  *(&v125 + 1) = a3 + -1.57079633;
  *&v126 = v48;
  *(&v126 + 1) = v49;
  sub_269D990E0();
  sub_269D990D0();
  if (qword_28034D668 != -1)
  {
    swift_once();
  }

  sub_269D990C0();
  sub_269D990D0();
  v50 = v43 * 100.0;
  if (COERCE__INT64(fabs(v43 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v50 < 9.22337204e18)
  {
    *&v120[0] = v50;
    sub_269D990A0();
    sub_269D990D0();
    sub_269D99110();
    sub_269CF3544();
    v52 = v51;
    v100 = sub_269CF3928(&qword_280350280, sub_269CF3544, sub_269CF3718);
    v101 = v52;
    sub_269D99B40();

    v120[2] = v123;
    v120[3] = v124;
    v120[4] = v125;
    v120[5] = v126;
    v120[0] = v121;
    v120[1] = v122;
    sub_269CF37D0(v120, sub_269CF3544);
    v53 = v93;
    v41 = v94;
    v104(v93, *MEMORY[0x277D62580], v94);
    SleepScoreComponent.uiColor.getter();
    v54 = sub_269D99CC0();
    v103(v53, v41);
    v46 = *(a1 + 16);
    v55 = *(a1 + 24);
    sub_269D9A250();
    *&v114 = 0x3FF41B2F769CF0E0;
    v42 = v96;
    *(&v114 + 1) = v96;
    *&v115 = v47;
    *(&v115 + 1) = v31;
    *&v116 = v54;
    *(&v116 + 1) = 0x3FD3333333333333;
    *&v117 = v46;
    *(&v117 + 1) = v55;
    *&v118 = v45;
    *(&v118 + 1) = 0x3FF921FB54442D18;
    *&v119 = v56;
    *(&v119 + 1) = v57;
    sub_269D990E0();
    sub_269D990D0();
    if (qword_28034D670 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  sub_269D990C0();
  sub_269D990D0();
  v58 = v46 * 100.0;
  v59 = v98;
  if (COERCE__INT64(fabs(v46 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  *&v121 = v58;
  sub_269D990A0();
  sub_269D990D0();
  sub_269D99110();
  sub_269D99B40();

  v123 = v116;
  v124 = v117;
  v125 = v118;
  v126 = v119;
  v121 = v114;
  v122 = v115;
  sub_269CF37D0(&v121, sub_269CF3544);
  v60 = v90;
  v104(v90, *MEMORY[0x277D62590], v41);
  SleepScoreComponent.uiColor.getter();
  v61 = sub_269D99CC0();
  v103(v60, v41);
  v62 = v105;
  sub_269CF23FC(v105);
  v64 = v106;
  v63 = v107;
  v86(v106, v87, v107);
  LOBYTE(v60) = sub_269D989E0();
  v65 = v89;
  v89(v64, v63);
  v65(v62, v63);
  if (v60)
  {
    v66 = 0.4;
  }

  else
  {
    v66 = 0.3;
  }

  v46 = *(a1 + 32);
  v67 = *(a1 + 40);
  sub_269D9A250();
  *&v108 = 0x400921FB54442D18;
  *(&v108 + 1) = v42;
  *&v109 = v47;
  *(&v109 + 1) = v31;
  *&v110 = v61;
  *(&v110 + 1) = v66;
  *&v111 = v46;
  *(&v111 + 1) = v67;
  *&v112 = v45;
  *(&v112 + 1) = 0x4012D97C7F3321D2;
  *&v113 = v68;
  *(&v113 + 1) = v69;
  sub_269D990E0();
  sub_269D990D0();
  if (qword_28034D678 != -1)
  {
    goto LABEL_30;
  }

LABEL_19:
  sub_269D990C0();
  result = sub_269D990D0();
  v71 = v46 * 100.0;
  v72 = v92;
  if (COERCE__INT64(fabs(v46 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v71 < 9.22337204e18)
  {
    *&v114 = v71;
    sub_269D990A0();
    sub_269D990D0();
    sub_269D99110();
    v73 = v81;
    sub_269D99B40();

    v116 = v110;
    v117 = v111;
    v118 = v112;
    v119 = v113;
    v114 = v108;
    v115 = v109;
    sub_269CF37D0(&v114, sub_269CF3544);
    v74 = v102;
    v75 = v83;
    sub_269CF376C(v102, v83);
    v76 = v84;
    sub_269CF376C(v59, v84);
    v77 = v85;
    sub_269CF376C(v73, v85);
    sub_269CF376C(v75, v72);
    sub_269CF3474();
    v79 = v78;
    sub_269CF376C(v76, v72 + *(v78 + 48));
    sub_269CF376C(v77, v72 + *(v79 + 64));
    sub_269CF37D0(v73, sub_269CF34DC);
    sub_269CF37D0(v59, sub_269CF34DC);
    sub_269CF37D0(v74, sub_269CF34DC);
    sub_269CF37D0(v77, sub_269CF34DC);
    sub_269CF37D0(v76, sub_269CF34DC);
    sub_269CF37D0(v75, sub_269CF34DC);
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_269CF324C(uint64_t a1, unsigned int *a2, uint64_t *a3, void *a4)
{
  v7 = sub_269D97AC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *a2, v7);
  v11 = sub_269D97A90();
  v13 = v12;
  result = (*(v8 + 8))(v10, v7);
  *a3 = v11;
  *a4 = v13;
  return result;
}

void sub_269CF3358(uint64_t *a1@<X8>)
{
  *a1 = sub_269D9A180();
  a1[1] = v3;
  sub_269CF33DC();
  sub_269CF2610(v1, a1 + *(v4 + 44), 1.88495559);
  sub_269D9A250();
  v6 = v5;
  v8 = v7;
  sub_269CF359C();
  v10 = (a1 + *(v9 + 36));
  *v10 = 0xBFFE28C731EB6950;
  v10[1] = v6;
  v10[2] = v8;
}

void sub_269CF33DC()
{
  if (!qword_280350240)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    v0 = sub_269D98BB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350240);
    }
  }
}

void sub_269CF3474()
{
  if (!qword_280350250)
  {
    sub_269CF34DC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280350250);
    }
  }
}

void sub_269CF34DC()
{
  if (!qword_280350258)
  {
    sub_269CF3544();
    sub_269D99540();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350258);
    }
  }
}

void sub_269CF3544()
{
  if (!qword_280350260)
  {
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350260);
    }
  }
}

void sub_269CF359C()
{
  if (!qword_280350268)
  {
    sub_269CF35FC();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350268);
    }
  }
}

void sub_269CF35FC()
{
  if (!qword_280350270)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    sub_269CF3690();
    v0 = sub_269D99FE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350270);
    }
  }
}

unint64_t sub_269CF3690()
{
  result = qword_280350278;
  if (!qword_280350278)
  {
    sub_269CF3830(255, &qword_280350248, sub_269CF3474, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350278);
  }

  return result;
}

unint64_t sub_269CF3718()
{
  result = qword_280350288;
  if (!qword_280350288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350288);
  }

  return result;
}

uint64_t sub_269CF376C(uint64_t a1, uint64_t a2)
{
  sub_269CF34DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF37D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269CF3830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269CF3894(uint64_t a1, uint64_t a2)
{
  sub_269CF3830(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CF3928(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_269CF39AC()
{
  result = qword_280350298;
  if (!qword_280350298)
  {
    sub_269CF35FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350298);
  }

  return result;
}

uint64_t ScheduleOccurrenceComponentsAccessibilityTableViewCell.Component.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t sub_269CF3B18(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269CF3B84(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
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

uint64_t sub_269CF3C38(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C0F0(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  sub_269CF3DA8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_269CF3CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  return sub_269C6C0F0(v1 + v3, a1);
}

uint64_t sub_269CF3D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  sub_269CF3DA8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_269CF3DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_269CF3E6C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = sub_269D97580();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_269D977A0();
  v5 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker);
  result = [v8 calendar];
  if (result)
  {
    v10 = result;
    sub_269D97710();

    sub_269CF8298(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v11 = sub_269D97780();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_269D9EBF0;
    v16 = v15 + v14;
    v17 = *(v12 + 104);
    v17(v16, *MEMORY[0x277CC9980], v11);
    v17(v16 + v13, *MEMORY[0x277CC99A0], v11);
    sub_269CF7250(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v18 = [v8 date];
    sub_269D97540();

    sub_269D976C0();

    (*(v20 + 8))(v4, v21);
    return (*(v5 + 8))(v7, v19[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CF4184()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView);
  }

  else
  {
    v4 = sub_269CF7564();
    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id ScheduleOccurrenceComponentsAccessibilityTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void sub_269CF435C()
{
  v1 = [v0 contentView];
  [v1 addSubview_];

  v2 = [v0 contentView];
  [v2 addSubview_];
}

id sub_269CF4400()
{
  v1 = objc_allocWithZone(MEMORY[0x277D75348]);
  v11[4] = sub_269CC7C58;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_269CC7F6C;
  v11[3] = &block_descriptor_22;
  v2 = _Block_copy(v11);
  v3 = [v1 initWithDynamicProvider_];
  _Block_release(v2);

  [v0 setBackgroundColor_];

  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];
  LODWORD(v5) = 1148829696;
  [v4 setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
  LODWORD(v8) = 1144750080;
  [v7 setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v9];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setContentHorizontalAlignment_];
  sub_269CF648C();
  [v7 addTarget:v0 action:sel_datePickerDidChange forControlEvents:4096];
  return [v7 addTarget:v0 action:sel_datePickerDidEndEditing forControlEvents:0x40000];
}

void sub_269CF45F0()
{
  v1 = v0;
  swift_getObjectType();
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v60 - v10;
  v12 = v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    v66 = ObjectType;
    if (v15(v1))
    {
      v63 = v13;
      v64 = v6;
      v16 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
      v17 = (v6 + 24);
      v65 = v5;
      if (v16)
      {
        sub_269CF3E6C(v9);
        v18 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
        swift_beginAccess();
        v19 = type metadata accessor for SleepScheduleComponentsViewModel();
        v20 = v19[10];
        (*v17)(v18 + v20, v9, v5);
        v21 = *(v18 + v19[7]);
        v62 = v20;
        if (v21)
        {
          v22 = sub_269D09440() & 1;
          v23 = sub_269D09680();
          v24 = v22 | 2;
          if ((v23 & 1) == 0)
          {
            v24 = v22;
          }

          *(v18 + v19[15]) = v24;
          if (v24)
          {
            v26 = 0;
            v25 = 1;
            goto LABEL_27;
          }

          if (v24)
          {
            v25 = 0;
            v26 = 1;
LABEL_27:
            *(v18 + v19[13]) = v25;
            *(v18 + v19[14]) = v26;
            v61 = v19[5];
            sub_269D97720();
            v44 = sub_269D0CBC0(v4, v18);
            v46 = v45;
            sub_269C67C78(v4);
            v47 = (v18 + v19[18]);

            *v47 = v44;
            v47[1] = v46;
            sub_269D97720();
            v48 = sub_269D0CBC0(v4, v18);
            v50 = v49;
            sub_269C67C78(v4);
            v51 = (v18 + v19[19]);

            *v51 = v48;
            v51[1] = v50;
            sub_269D0A9B8();
            (*(v64 + 8))(v9, v65);
LABEL_30:
            swift_endAccess();
            (*(v63 + 16))(v1, v66);
            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          *(v18 + v19[15]) = 0;
        }

        v25 = 0;
        v26 = 0;
        goto LABEL_27;
      }

      v62 = v4;
      sub_269CF3E6C(v11);
      v35 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
      swift_beginAccess();
      v36 = type metadata accessor for SleepScheduleComponentsViewModel();
      v37 = v36[9];
      (*v17)(v35 + v37, v11, v5);
      if (*(v35 + v36[7]))
      {
        v61 = v37;
        v38 = sub_269D09440() & 1;
        v39 = sub_269D09680();
        v40 = v38 | 2;
        if ((v39 & 1) == 0)
        {
          v40 = v38;
        }

        *(v35 + v36[15]) = v40;
        if (v40)
        {
          v43 = 0;
          v42 = 1;
          v41 = v62;
          goto LABEL_29;
        }

        v41 = v62;
        if (v40)
        {
          v42 = 0;
          v43 = 1;
LABEL_29:
          *(v35 + v36[13]) = v42;
          *(v35 + v36[14]) = v43;
          v62 = v36[5];
          sub_269D97720();
          v52 = sub_269D0CBC0(v41, v35);
          v54 = v53;
          sub_269C67C78(v41);
          v55 = (v35 + v36[18]);

          *v55 = v52;
          v55[1] = v54;
          sub_269D97720();
          v56 = sub_269D0CBC0(v41, v35);
          v58 = v57;
          sub_269C67C78(v41);
          v59 = (v35 + v36[19]);

          *v59 = v56;
          v59[1] = v58;
          sub_269D0A9B8();
          (*(v64 + 8))(v11, v65);
          goto LABEL_30;
        }
      }

      else
      {
        *(v35 + v36[15]) = 0;
        v41 = v62;
      }

      v42 = 0;
      v43 = 0;
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v27 = sub_269D98250();
  __swift_project_value_buffer(v27, qword_280C0B728);
  v28 = sub_269D98230();
  v29 = sub_269D9AB50();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67[0] = v31;
    *v30 = 136446210;
    v32 = sub_269D9B4D0();
    v34 = sub_269C2EACC(v32, v33, v67);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_269C18000, v28, v29, "[%{public}s] time components invalid", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x26D652460](v31, -1, -1);
    MEMORY[0x26D652460](v30, -1, -1);
  }
}

uint64_t sub_269CF4C70()
{
  v1 = v0;
  swift_getObjectType();
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    if (((*(v4 + 8))(v1, ObjectType, v4) & 1) == 0)
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v6 = sub_269D98250();
      __swift_project_value_buffer(v6, qword_280C0B728);
      v7 = sub_269D98230();
      v8 = sub_269D9AB50();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v14 = v10;
        *v9 = 136446210;
        v11 = sub_269D9B4D0();
        v13 = sub_269C2EACC(v11, v12, &v14);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] time components were invalid, resetting date picker", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D652460](v10, -1, -1);
        MEMORY[0x26D652460](v9, -1, -1);
      }

      sub_269CF6A88();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269CF4E58(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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

void sub_269CF4F24()
{
  v32 = objc_opt_self();
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269DA6740;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 layoutMarginsGuide];

  v6 = [v5 &selRef_setTitleHyphenationFactor_];
  v7 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 &selRef_hk_sleepKeyColor];
  v10 = [v9 &off_279C862A8 + 1];

  v11 = [v10 leadingAnchor];
  v12 = [v8 &selRef:v11 setLargeContentImage:? + 5];

  *(v1 + 40) = v12;
  v13 = [v0 &selRef_hk_sleepKeyColor];
  v14 = [v13 &off_279C862A8 + 1];

  v15 = [v14 trailingAnchor];
  v16 = [v2 trailingAnchor];
  v17 = [v15 &selRef:v16 setLargeContentImage:? + 5];

  *(v1 + 48) = v17;
  v18 = *&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
  v19 = [v18 topAnchor];
  v20 = [v2 bottomAnchor];
  v21 = [v19 &selRef:v20 setLargeContentImage:? + 5];

  *(v1 + 56) = v21;
  v22 = [v18 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 layoutMarginsGuide];

  v25 = [v24 leadingAnchor];
  v26 = [v22 constraintEqualToAnchor_];

  *(v1 + 64) = v26;
  v27 = [v0 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 trailingAnchor];
  v30 = [v18 trailingAnchor];
  v31 = [v29 constraintGreaterThanOrEqualToAnchor_];

  *(v1 + 72) = v31;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v33 = sub_269D9A7D0();

  [v32 activateConstraints_];
}

void sub_269CF538C()
{
  v1 = objc_opt_self();
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA2A30;
  v3 = [v0 contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [v4 bottomAnchor];
  v6 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker] bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v2 + 32) = v7;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v8 = sub_269D9A7D0();

  [v1 activateConstraints_];
}

uint64_t sub_269CF55D0(uint64_t a1)
{
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v71 - v4;
  v5 = sub_269D971F0();
  v6 = *(v5 - 8);
  v81 = v5;
  v82 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v71 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  v13 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v1;
  v16 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  v74 = v15;
  sub_269C6C0F0(v16, v15);
  v77 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v17 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v17 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v18 = v83;
  v19 = [v83 isEnabled];

  *v16 = v19;
  v79 = a1;
  sub_269D987C0();
  v20 = v84;
  swift_beginAccess();
  v21 = v13[7];
  v22 = *&v16[v21];
  *&v16[v21] = v20;

  if (!v20)
  {
    v29 = v13[15];
    v72 = v13 + 15;
    *&v16[v29] = 0;
LABEL_8:
    v27 = 0;
    v28 = 0;
    goto LABEL_10;
  }

  v23 = sub_269D09440() & 1;
  v24 = sub_269D09680();
  v25 = v23 | 2;
  if ((v24 & 1) == 0)
  {
    v25 = v23;
  }

  v26 = v13[15];
  v72 = v13 + 15;
  *&v16[v26] = v25;
  if ((v25 & 1) == 0)
  {
    if (v25)
    {
      v27 = 0;
      v28 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v28 = 0;
  v27 = 1;
LABEL_10:
  v16[v13[13]] = v27;
  v16[v13[14]] = v28;
  swift_endAccess();
  v30 = v79;
  v31 = v77;
  v32 = [*(v79 + v77) wakeUpComponents];
  sub_269D97120();

  swift_beginAccess();
  v33 = v81;
  v34 = v82;
  v35 = *(v82 + 24);
  v35(&v16[v13[11]], v12, v81);
  sub_269D0A9B8();
  v36 = *(v34 + 8);
  v82 = v34 + 8;
  v76 = v36;
  v36(v12, v33);
  swift_endAccess();
  v37 = [*(v30 + v31) bedtimeComponents];
  v38 = v78;
  sub_269D97120();

  swift_beginAccess();
  v35(&v16[v13[9]], v38, v33);
  if (!*&v16[v13[7]])
  {
    v42 = v73;
    *&v16[*v72] = 0;
LABEL_17:
    v43 = 0;
    v44 = 0;
    goto LABEL_19;
  }

  v39 = sub_269D09440() & 1;
  v40 = sub_269D09680();
  v41 = v39 | 2;
  if ((v40 & 1) == 0)
  {
    v41 = v39;
  }

  *&v16[v13[15]] = v41;
  v42 = v73;
  if ((v41 & 1) == 0)
  {
    if (v41)
    {
      v43 = 0;
      v44 = 1;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v44 = 0;
  v43 = 1;
LABEL_19:
  v16[v13[13]] = v43;
  v16[v13[14]] = v44;
  sub_269D97720();
  v45 = sub_269D0CBC0(v42, v16);
  v47 = v46;
  sub_269C67C78(v42);
  v48 = &v16[v13[18]];

  *v48 = v45;
  v48[1] = v47;
  sub_269D97720();
  v49 = sub_269D0CBC0(v42, v16);
  v51 = v50;
  sub_269C67C78(v42);
  v52 = &v16[v13[19]];

  *v52 = v49;
  v52[1] = v51;
  sub_269D0A9B8();
  v53 = v81;
  v76(v78, v81);
  swift_endAccess();
  v54 = [*(v79 + v77) wakeUpComponents];
  v55 = v80;
  sub_269D97120();

  swift_beginAccess();
  v35(&v16[v13[10]], v55, v53);
  if (!*&v16[v13[7]])
  {
    *&v16[*v72] = 0;
LABEL_26:
    v59 = 0;
    v60 = 0;
    goto LABEL_28;
  }

  v56 = sub_269D09440() & 1;
  v57 = sub_269D09680();
  v58 = v56 | 2;
  if ((v57 & 1) == 0)
  {
    v58 = v56;
  }

  *&v16[v13[15]] = v58;
  if (v58)
  {
    v60 = 0;
    v59 = 1;
    goto LABEL_28;
  }

  if (!v58)
  {
    goto LABEL_26;
  }

  v59 = 0;
  v60 = 1;
LABEL_28:
  v16[v13[13]] = v59;
  v16[v13[14]] = v60;
  sub_269D97720();
  v61 = sub_269D0CBC0(v42, v16);
  v63 = v62;
  sub_269C67C78(v42);
  v64 = &v16[v13[18]];

  *v64 = v61;
  v64[1] = v63;
  sub_269D97720();
  v65 = sub_269D0CBC0(v42, v16);
  v67 = v66;
  sub_269C67C78(v42);
  v68 = &v16[v13[19]];

  *v68 = v65;
  v68[1] = v67;
  sub_269D0A9B8();
  v76(v80, v81);
  swift_endAccess();
  v69 = v74;
  (*((*MEMORY[0x277D85000] & *v75) + 0x110))(v74);
  return sub_269C6C03C(v69);
}

uint64_t sub_269CF5D70(uint64_t a1)
{
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v1;
  v15 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  v57 = v14;
  sub_269C6C0F0(v15, v14);
  v16 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v17 = v16[1];
  v62 = *v16;
  v63[0] = v17;
  *(v63 + 11) = *(v16 + 27);
  v54 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  sub_269D1E794(*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration + 144));
  swift_beginAccess();
  v18 = v12[9];
  v60 = v6;
  v61 = v7;
  v55 = *(v7 + 24);
  v56 = v11;
  v55(v15 + v18, v11, v6);
  if (!*(v15 + v12[7]))
  {
    v25 = v12[15];
    v53 = v12 + 15;
    *(v15 + v25) = 0;
LABEL_8:
    v23 = 0;
    v24 = 0;
    goto LABEL_10;
  }

  v19 = sub_269D09440() & 1;
  v20 = sub_269D09680();
  v21 = v19 | 2;
  if ((v20 & 1) == 0)
  {
    v21 = v19;
  }

  v22 = v12[15];
  v53 = v12 + 15;
  *(v15 + v22) = v21;
  if ((v21 & 1) == 0)
  {
    if (v21)
    {
      v23 = 0;
      v24 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v24 = 0;
  v23 = 1;
LABEL_10:
  *(v15 + v12[13]) = v23;
  *(v15 + v12[14]) = v24;
  sub_269D97720();
  v26 = sub_269D0CBC0(v5, v15);
  v28 = v27;
  sub_269C67C78(v5);
  v29 = (v15 + v12[18]);

  *v29 = v26;
  v29[1] = v28;
  sub_269D97720();
  v30 = sub_269D0CBC0(v5, v15);
  v32 = v31;
  sub_269C67C78(v5);
  v33 = (v15 + v12[19]);

  *v33 = v30;
  v33[1] = v32;
  sub_269D0A9B8();
  v34 = v60;
  v35 = *(v61 + 8);
  v61 += 8;
  v35(v56, v60);
  swift_endAccess();
  v36 = v16[1];
  v62 = *v16;
  v63[0] = v36;
  *(v63 + 11) = *(v16 + 27);
  v37 = v59;
  sub_269D1EA14(*(v54 + 144));
  swift_beginAccess();
  v55(v15 + v12[10], v37, v34);
  if (!*(v15 + v12[7]))
  {
    *(v15 + *v53) = 0;
LABEL_17:
    v41 = 0;
    v42 = 0;
    goto LABEL_19;
  }

  v38 = sub_269D09440() & 1;
  v39 = sub_269D09680();
  v40 = v38 | 2;
  if ((v39 & 1) == 0)
  {
    v40 = v38;
  }

  *(v15 + v12[15]) = v40;
  if (v40)
  {
    v42 = 0;
    v41 = 1;
    goto LABEL_19;
  }

  if (!v40)
  {
    goto LABEL_17;
  }

  v41 = 0;
  v42 = 1;
LABEL_19:
  *(v15 + v12[13]) = v41;
  *(v15 + v12[14]) = v42;
  sub_269D97720();
  v43 = sub_269D0CBC0(v5, v15);
  v45 = v44;
  sub_269C67C78(v5);
  v46 = (v15 + v12[18]);

  *v46 = v43;
  v46[1] = v45;
  sub_269D97720();
  v47 = sub_269D0CBC0(v5, v15);
  v49 = v48;
  sub_269C67C78(v5);
  v50 = (v15 + v12[19]);

  *v50 = v47;
  v50[1] = v49;
  sub_269D0A9B8();
  v35(v59, v60);
  swift_endAccess();
  v51 = v57;
  (*((*MEMORY[0x277D85000] & *v58) + 0x110))(v57);
  return sub_269C6C03C(v51);
}

uint64_t sub_269CF6324(unsigned __int8 *a1)
{
  v3 = type metadata accessor for SleepScheduleComponentsViewModel();
  v4 = &a1[v3[18]];
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = &v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model];
  result = swift_beginAccess();
  v9 = &v7[v3[18]];
  v10 = *(v9 + 1);
  if (v6)
  {
    if (!v10 || (v5 == *v9 ? (v11 = v6 == v10) : (v11 = 0), !v11 && (result = sub_269D9B280(), (result & 1) == 0)))
    {
LABEL_21:
      sub_269CF6A88();
      if (*a1 == *v7)
      {
LABEL_23:
        [v1 invalidateIntrinsicContentSize];
        return [v1 setNeedsLayout];
      }

LABEL_22:
      sub_269CF648C();
      goto LABEL_23;
    }
  }

  else if (v10)
  {
    goto LABEL_21;
  }

  v12 = v3[19];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &v7[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    result = *v13;
    if (*v13 != *v15 || v14 != v16)
    {
      result = sub_269D9B280();
      if ((result & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_21;
  }

  if (a1[v3[13]] != v7[v3[13]] || a1[v3[14]] != v7[v3[14]])
  {
    goto LABEL_21;
  }

  if (*a1 != *v7)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_269CF648C()
{
  v1 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CF8298(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component))
  {
    v8 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
    swift_beginAccess();
    sub_269C6C0F0(v0 + v8, v3);
    v9 = *v3;
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v10 = sub_269D972C0();
    v12 = v11;

    v23[0] = v7;
    if (v9)
    {
      v13 = [objc_opt_self() hk_sleepKeyColor];
    }

    else
    {
      if (qword_28034D620 != -1)
      {
        swift_once();
      }

      v21 = qword_28034E060;
    }

    sub_269C1B0B8(0, &unk_28034EBF0);
    v22 = sub_269D9ACA0();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    v23[1] = v10;
    v23[2] = v12;
    sub_269C3EEE8();
    sub_269D9AE90();

    [objc_opt_self() secondaryLabelColor];
    sub_269C1B0B8(0, &qword_28034E5F0);
    static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v20 = sub_269D9AC90();
    sub_269C6C03C(v3);
    v7 = v23[0];
  }

  else
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v14 = sub_269D972C0();
    v16 = v15;
    sub_269C1B0B8(0, &unk_28034EBF0);
    v17 = objc_opt_self();
    v18 = [v17 hk_sleepKeyColor];
    v19 = sub_269D9ACA0();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    v23[3] = v14;
    v23[4] = v16;
    sub_269C3EEE8();
    sub_269D9AE90();

    [v17 secondaryLabelColor];
    sub_269C1B0B8(0, &qword_28034E5F0);
    static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v20 = sub_269D9AC90();
  }

  [v7 setAttributedText_];
}

uint64_t sub_269CF6A88()
{
  v1 = v0;
  sub_269CF8298(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = sub_269D97580();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = &v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model];
  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    swift_beginAccess();
    v21 = 0;
    if (*(v20 + *(v8 + 56)) == 1)
    {
      v21 = sub_269CF4184();
    }

    [v1 setAccessoryView_];

    sub_269C6C0F0(v20, v11);
    sub_269D97720();
    sub_269C6C03C(v11);
    v23 = v33;
    v22 = v34;
    if ((*(v33 + 48))(v5, 1, v34) == 1)
    {
      return sub_269C67C78(v5);
    }

    else
    {
      (*(v23 + 32))(v17, v5, v22);
      v28 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
      v29 = sub_269D974B0();
      [v28 setDate_];

      return (*(v23 + 8))(v17, v22);
    }
  }

  else
  {
    swift_beginAccess();
    v25 = 0;
    if (*(v20 + *(v8 + 52)) == 1)
    {
      v25 = sub_269CF4184();
    }

    [v1 setAccessoryView_];

    sub_269C6C0F0(v20, v13);
    sub_269D97720();
    sub_269C6C03C(v13);
    v27 = v33;
    v26 = v34;
    if ((*(v33 + 48))(v7, 1, v34) == 1)
    {
      return sub_269C67C78(v7);
    }

    else
    {
      (*(v27 + 32))(v19, v7, v26);
      v30 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];
      v31 = sub_269D974B0();
      [v30 setDate_];

      return (*(v27 + 8))(v19, v26);
    }
  }
}

void sub_269CF6E94()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    v2 = 0x7055656B6157;
  }

  else
  {
    v2 = 0x656D6974646542;
  }

  if (v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component])
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = MEMORY[0x277D837D0];
  sub_269CF82FC(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000269DB1570;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269DA0D60;
  *(v6 + 32) = sub_269D9A630();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x7065656C53;
  *(v6 + 56) = 0xE500000000000000;
  strcpy((v6 + 64), "ScheduleEditor");
  *(v6 + 79) = -18;
  v17 = v6;

  sub_269C49A1C(v8);
  sub_269CF82FC(0, &qword_280C0B4F0, v4, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v9 = sub_269D9A520();
  v11 = v10;

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = sub_269D9A5F0();
  [v1 setAccessibilityIdentifier_];

  v13 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel];

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v14 = sub_269D9A5F0();

  [v13 setAccessibilityIdentifier_];

  v15 = *&v1[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker];

  MEMORY[0x26D650930](0x636950657461442ELL, 0xEB0000000072656BLL);

  v16 = sub_269D9A5F0();

  [v15 setAccessibilityIdentifier_];
}

id ScheduleOccurrenceComponentsAccessibilityTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CF7250(uint64_t a1)
{
  v2 = sub_269D97780();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_269CF8680();
    v9 = sub_269D9AFD0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_269CF8250(&qword_2803502E0, MEMORY[0x277CC99D0]);
      v16 = sub_269D9A4D0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_269CF8250(&qword_2803502E8, MEMORY[0x277CC99D0]);
          v23 = sub_269D9A560();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_269CF7564()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_269D9A5F0();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_opt_self() systemOrangeColor];
  v5 = [v3 imageWithTintColor:v4 renderingMode:1];

  return v5;
}

uint64_t sub_269CF7698(uint64_t a1)
{
  v2 = sub_269D9B420();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_269CF81BC();
    v9 = sub_269D9AFD0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_269CF8250(&qword_280C0AD68, MEMORY[0x277CC9FC8]);
      v16 = sub_269D9A4D0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_269CF8250(&qword_280C0AD60, MEMORY[0x277CC9FC8]);
          v23 = sub_269D9A560();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void *sub_269CF79AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D977A0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
  sub_269D97680();
  (*(v7 + 8))(v9, v6);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v12, &v3[v13]);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView] = 0;
  v14 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel;
  v15 = [objc_opt_self() secondaryLabelColor];
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTextColor_];

  sub_269C1B0B8(0, &qword_28034E5F0);
  v17 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  [v16 setFont_];

  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setAdjustsFontSizeToFitWidth_];
  [v16 setNumberOfLines_];
  *&v3[v14] = v16;
  v18 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker;
  v19 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v19 setDatePickerMode_];
  [v19 setPreferredDatePickerStyle_];
  [v19 setMinuteInterval_];
  *&v3[v18] = v19;
  if (a2)
  {
    if (a1 == 0xD00000000000003DLL && 0x8000000269DAC190 == a2)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_269D9B280() & 1;
    }

    v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component] = v20;
    v21 = sub_269D9A5F0();
  }

  else
  {
    v21 = 0;
    v3[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component] = 0;
  }

  v22 = type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
  v30.receiver = v3;
  v30.super_class = v22;
  v23 = objc_msgSendSuper2(&v30, sel_initWithStyle_reuseIdentifier_, 0, v21);

  v24 = MEMORY[0x277D85000];
  v25 = *((*MEMORY[0x277D85000] & *v23) + 0xD0);
  v26 = v23;
  v27 = v25();
  (*((*v24 & *v26) + 0xD8))(v27);
  sub_269CF6E94();
  v28 = (*((*v24 & *v26) + 0xF0))();
  (*((*v24 & *v26) + 0xF8))(v28);

  return v26;
}

uint64_t type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell()
{
  result = qword_2803502C8;
  if (!qword_2803502C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269CF7E70()
{
  result = qword_2803502B8;
  if (!qword_2803502B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803502B8);
  }

  return result;
}

uint64_t sub_269CF7EF4()
{
  result = type metadata accessor for SleepScheduleComponentsViewModel();
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

void sub_269CF81BC()
{
  if (!qword_280C0ADB8)
  {
    sub_269D9B420();
    sub_269CF8250(&qword_280C0AD68, MEMORY[0x277CC9FC8]);
    v0 = sub_269D9AFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0ADB8);
    }
  }
}

uint64_t sub_269CF8250(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269CF8298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CF82FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269CF8364()
{
  v1 = v0;
  v2 = sub_269D97670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D977A0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  (*(v3 + 104))(v5, *MEMORY[0x277CC9830], v2);
  sub_269D97680();
  (*(v3 + 8))(v5, v2);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v8, (v1 + v9));
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell____lazy_storage___alertImageView) = 0;
  v10 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_titleLabel;
  v11 = [objc_opt_self() secondaryLabelColor];
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTextColor_];

  sub_269C1B0B8(0, &qword_28034E5F0);
  v13 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setAdjustsFontSizeToFitWidth_];
  [v12 setNumberOfLines_];
  *(v1 + v10) = v12;
  v14 = OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker;
  v15 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v15 setDatePickerMode_];
  [v15 setPreferredDatePickerStyle_];
  [v15 setMinuteInterval_];
  *(v1 + v14) = v15;
  sub_269D9B100();
  __break(1u);
}

void sub_269CF8680()
{
  if (!qword_2803502D8)
  {
    sub_269D97780();
    sub_269CF8250(&qword_2803502E0, MEMORY[0x277CC99D0]);
    v0 = sub_269D9AFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803502D8);
    }
  }
}

double sub_269CF8714@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v3, v5, &qword_2803502F0, &qword_2803502F8);
  if (!v6)
  {
    sub_269C8492C(v5, &qword_2803502F0, &qword_2803502F8);
    goto LABEL_5;
  }

  sub_269C3232C(0, &qword_2803502F8);
  sub_269C3232C(0, &qword_28034E550);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_269CF8810(uint64_t a1)
{
  v2 = v1;
  sub_269CF8F8C(a1, v9, &qword_28034E548, &qword_28034E550);
  if (v10)
  {
    sub_269C3232C(0, &qword_28034E550);
    sub_269C3232C(0, &qword_2803502F8);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_269C25520(&v11, &v14);
        sub_269C2DB5C(&v14, &v11);
        v4 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
        swift_beginAccess();
        sub_269CF8FFC(&v11, v2 + v4);
        swift_endAccess();
        [v2 setNeedsUpdateConfiguration];
        sub_269C8492C(&v11, &qword_2803502F0, &qword_2803502F8);
        __swift_destroy_boxed_opaque_existential_1Tm(&v14);
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_269C8492C(v9, &qword_28034E548, &qword_28034E550);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_269C8492C(&v11, &qword_2803502F0, &qword_2803502F8);
  v5 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v5, &v11, &qword_2803502F0, &qword_2803502F8);
  if (!*(&v12 + 1))
  {
    sub_269C8492C(&v11, &qword_2803502F0, &qword_2803502F8);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    goto LABEL_13;
  }

  sub_269C3232C(0, &qword_2803502F8);
  sub_269C3232C(0, &qword_28034E550);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_13;
  }

  if (!*(&v15 + 1))
  {
LABEL_13:
    sub_269C8492C(&v14, &qword_28034E548, &qword_28034E550);
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    swift_beginAccess();
    sub_269CF8FFC(&v14, v1 + v5);
    swift_endAccess();
    [v1 setNeedsUpdateConfiguration];
    v6 = &qword_2803502F0;
    v7 = &qword_2803502F8;
    goto LABEL_14;
  }

  v6 = &qword_28034E548;
  v7 = &qword_28034E550;
LABEL_14:
  sub_269C8492C(&v14, v6, v7);
LABEL_15:
  sub_269CF8F8C(a1, v9, &qword_28034E548, &qword_28034E550);
  if (v10)
  {
    sub_269C3232C(0, &qword_28034E550);
    sub_269C3232C(0, &qword_280350308);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_269C25520(&v11, &v14);
        __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
        [v2 setSelectionStyle_];
        sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_269C8492C(v9, &qword_28034E548, &qword_28034E550);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_269C8492C(&v11, &qword_280350300, &qword_280350308);
  [v2 setSelectionStyle_];
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
}

void (*sub_269CF8CB0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CF8F8C(v1 + v5, v4 + 40, &qword_2803502F0, &qword_2803502F8);
  if (*(v4 + 64))
  {
    sub_269C3232C(0, &qword_2803502F8);
    sub_269C3232C(0, &qword_28034E550);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v4 + 32) = 0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
    }
  }

  else
  {
    sub_269C8492C(v4 + 40, &qword_2803502F0, &qword_2803502F8);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  return sub_269CF8DF8;
}

void sub_269CF8DF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_269CF8F8C(*a1, v2 + 40, &qword_28034E548, &qword_28034E550);
    sub_269CF8810(v2 + 40);
    sub_269C8492C(v2, &qword_28034E548, &qword_28034E550);
  }

  else
  {
    sub_269CF8810(*a1);
  }

  free(v2);
}

void (*sub_269CF8EA8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_269CF8CB0(v2);
  return sub_269C3CF88;
}

uint64_t sub_269CF8F8C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_269C84988(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269CF8FFC(uint64_t a1, uint64_t a2)
{
  sub_269C84988(0, &qword_2803502F0, &qword_2803502F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_269CF9364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlusMinusButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269CF93BC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = sub_269D9A5F0();
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

id static UNUserNotificationCenter.healthNotificationCenter.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v1 = sub_269D9A5F0();
  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t static MultiPickerModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a4 + 32);
  v6(a3, a4);
  v6(a3, v4);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  LOBYTE(v4) = sub_269D9A850();

  return v4 & 1;
}

uint64_t sub_269CF95C8(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v2 = sub_269D9A830();

  return v2;
}

uint64_t sub_269CF9654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A870();

  v3 = sub_269D9A830();

  return v3;
}

uint64_t sub_269CF9718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A870();

  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_269D9AA30();

  return v5;
}

uint64_t sub_269CF9850()
{
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A040();
  sub_269D9A020();
  return v1;
}

uint64_t MultiPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_269D9A040();
  MEMORY[0x28223BE20](v1);
  v3 = v17 - v2;
  v4 = type metadata accessor for MultiPickerLink();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  sub_269D9A020();
  v11 = sub_269CF9850();
  sub_269CF9AE0(v3, v11, v12, v13, v8);
  WitnessTable = swift_getWitnessTable();
  sub_269CE81C8(v8, v4, WitnessTable);
  v15 = *(v5 + 8);
  v15(v8, v4);
  sub_269CE81C8(v10, v4, WitnessTable);
  return (v15)(v10, v4);
}

uint64_t sub_269CF9AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_269D9A040();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for MultiPickerLink();
  v12 = (a5 + *(result + 36));
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  return result;
}

uint64_t sub_269CF9BD4(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v5[1] = *v2;
  v6 = *(v2 + 8);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v3 = sub_269D9A040();
  MEMORY[0x26D650250](v5, v3);
  return v5[0];
}

uint64_t sub_269CF9C54()
{
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  sub_269D9A040();
  return sub_269D9A010();
}

uint64_t sub_269CF9D34()
{
  result = type metadata accessor for MultiPickerLink();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CF9E00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_269D9A260();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9A290();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  if (sub_269CFA1EC(a2, a3))
  {
    sub_269C55300();
    v24 = sub_269D9AC40();
    (*(v15 + 16))(&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
    v17 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = *(a3 + 16);
    *(v18 + 32) = a1;
    (*(v15 + 32))(v18 + v17, &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_269CFB630;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269CA6718;
    aBlock[3] = &block_descriptor_23;
    v19 = _Block_copy(aBlock);
    v20 = a1;
    sub_269D9A280();
    v28 = MEMORY[0x277D84F90];
    sub_269CFB6D0(&qword_28034EAA0, MEMORY[0x277D85198]);
    sub_269C80BF8(0);
    sub_269CFB6D0(qword_28034EAB0, sub_269C80BF8);
    sub_269D9AEF0();
    v21 = v24;
    MEMORY[0x26D650EA0](0, v14, v10, v19);
    _Block_release(v19);

    (*(v27 + 8))(v10, v8);
    (*(v25 + 8))(v14, v26);
  }

  else
  {

    return sub_269CFA4F4(a1, a3);
  }
}

BOOL sub_269CFA1EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v4);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  swift_getWitnessTable();
  sub_269D99460();
  sub_269D99450();
  v15 = v19[1];
  sub_269CFA904(v6);

  v16 = sub_269D9A040();
  MEMORY[0x26D650250]();
  (*(v3 + 8))(v6, v2);
  MEMORY[0x26D650250](v16);
  LOBYTE(v2) = sub_269D9A560();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  return (v2 & 1) == 0;
}

uint64_t sub_269CFA410(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 reloadAllComponents];
  v2 = type metadata accessor for MultiPickerLink();
  sub_269CFA4F4(a1, v2);
}

uint64_t sub_269CFA4F4(void *a1, uint64_t a2)
{
  v35 = a1;
  v4 = *(*(a2 + 16) - 8);
  MEMORY[0x28223BE20](a1);
  v37 = *(v6 + 24);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v34 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_269D9AE60();
  v12 = *(v45 - 8);
  v13 = MEMORY[0x28223BE20](v45);
  v44 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v34 - v15);
  v40 = v2;
  v48[1] = sub_269CF9BD4(a2);
  v17 = sub_269D9A840();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x26D6509D0](v48, v17, WitnessTable);

  v47 = v48[0];
  sub_269D9B140();
  sub_269D9B110();
  v19 = sub_269D9B130();
  v42 = (v12 + 32);
  v43 = v19;
  v41 = TupleTypeMetadata2 - 8;
  v36 = (v9 + 32);
  v20 = (v4 + 8);
  v21 = (v9 + 8);
  v22 = v38;
  while (1)
  {
    v23 = v44;
    sub_269D9B120();
    (*v42)(v16, v23, v45);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v24 = *v16;
    v25 = TupleTypeMetadata2;
    v26 = v16 + *(TupleTypeMetadata2 + 48);
    v27 = v46;
    v28 = AssociatedTypeWitness;
    (*v36)(v46, v26, AssociatedTypeWitness);
    v29 = v39;
    v30 = sub_269D9A040();
    MEMORY[0x26D650250](v30);
    v31 = sub_269CF9718(v27, v24, v29, v37);
    LOBYTE(v27) = v32;
    (*v20)(v22, v29);
    if ((v27 & 1) == 0)
    {
      [v35 selectRow:v31 inComponent:v24 animated:0];
    }

    AssociatedTypeWitness = v28;
    (*v21)(v46, v28);
    TupleTypeMetadata2 = v25;
  }
}

uint64_t sub_269CFA904@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v4 = type metadata accessor for MultiPickerLink();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

uint64_t sub_269CFA9C0(void *a1, uint64_t a2, void *a3)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  v7 = sub_269CFB810(v6);

  return v7;
}

uint64_t sub_269CFAA7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a3;
  v8 = a1;
  v9 = sub_269CFB9CC(a4);

  return v9;
}

id sub_269CFAB40(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a1;
  sub_269CFBC74(a4, a5);
  v12 = v11;

  if (v12)
  {
    v13 = sub_269D9A5F0();
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

void sub_269CFAC58(void *a1, uint64_t a2, void *a3, uint64_t a4, int64_t a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a1;
  sub_269CFC010(a4, a5);
}

void sub_269CFAD44()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CFC62C();
}

id sub_269CFAE10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPickerLink.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269CFAE80(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v3 = type metadata accessor for MultiPickerLink();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t sub_269CFAF48()
{
  result = sub_269D9A040();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_269D9A840();
    result = sub_269D9A040();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CFB004(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_269CFB154(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

id sub_269CFB354@<X0>(void *a1@<X8>)
{
  result = sub_269CF9DC8();
  *a1 = result;
  return result;
}

uint64_t sub_269CFB37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_269CFB3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_269CFB474()
{
  swift_getWitnessTable();
  sub_269D99270();
  __break(1u);
}

uint64_t sub_269CFB4B4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_269CFB508(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v4 = type metadata accessor for MultiPickerLink();
  (*(*(v4 - 8) + 16))(&v1[v3], a1, v4);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MultiPickerLink.Coordinator();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_269CFB630()
{
  type metadata accessor for MultiPickerLink();
  v1 = *(v0 + 32);

  return sub_269CFA410(v1);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CFB6D0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_269CFB718()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75840]) initWithFrame_];
  type metadata accessor for MultiPickerLink();
  swift_getWitnessTable();
  sub_269D99460();
  sub_269D99450();
  [v0 setDataSource_];

  sub_269D99450();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_269CFB810(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v16 - v4;
  v8 = *((v7 & v6) + 0x58);
  v9 = type metadata accessor for MultiPickerLink();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  sub_269CFA904(&v16 - v11);
  v13 = sub_269D9A040();
  MEMORY[0x26D650250](v13);
  (*(v10 + 8))(v12, v9);
  v14 = sub_269CF95C8(v2, v8);
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_269CFB9CC(uint64_t a1)
{
  v20 = a1;
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v17 - v4;
  v8 = *((v7 & v6) + 0x58);
  v9 = type metadata accessor for MultiPickerLink();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_269CFA904(&v17 - v11);
  v19 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v18 = *(v10 + 8);
  v18(v12, v9);
  (*(v8 + 32))(v2, v8);
  v17 = *(v3 + 8);
  v17(v5, v2);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v13 = sub_269D9A830();

  result = 0;
  if (v13 > v20)
  {
    v15 = v20;
    sub_269CFA904(v12);
    MEMORY[0x26D650250](v19);
    v18(v12, v9);
    v16 = sub_269CF9654(v15, v2, v8);
    v17(v5, v2);
    return v16;
  }

  return result;
}

uint64_t sub_269CFBC74(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v23 = a1;
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v22 - v5;
  v9 = *((v8 & v7) + 0x58);
  v10 = type metadata accessor for MultiPickerLink();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_269CFA904(&v22 - v12);
  v26 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v14 = *(v11 + 8);
  v28 = v11 + 8;
  v29 = v10;
  v25 = v14;
  v14(v13, v10);
  v22 = *(v9 + 32);
  v22(v3, v9);
  v15 = *(v4 + 8);
  v24 = v4 + 8;
  v27 = v15;
  v15(v6, v3);
  swift_getAssociatedTypeWitness();
  sub_269D9A840();
  v16 = sub_269D9A830();

  if (v16 <= v30)
  {
    return 0;
  }

  v17 = v30;
  sub_269CFA904(v13);
  MEMORY[0x26D650250](v26);
  v25(v13, v29);
  v22(v3, v9);
  v27(v6, v3);
  sub_269D9A870();

  v18 = sub_269D9A830();

  if (v18 <= v23)
  {
    return 0;
  }

  v19 = v23;
  sub_269CFA904(v13);
  MEMORY[0x26D650250](v26);
  v25(v13, v29);
  v20 = (*(v9 + 40))(v19, v17, v3, v9);
  v27(v6, v3);
  return v20;
}

uint64_t sub_269CFC010(uint64_t a1, int64_t a2)
{
  v57 = a2;
  v50 = a1;
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = &v39 - v7;
  v8 = *(v4 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for MultiPickerLink();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v43 = &v39 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  sub_269CFA904(&v39 - v19);
  v52 = sub_269D9A040();
  MEMORY[0x26D650250]();
  v21 = *(v14 + 8);
  v54 = v14 + 8;
  v49 = v21;
  v21(v20, v13);
  v22 = *(v3 + 32);
  v55 = v3;
  v48 = v22;
  v22(v4, v3);
  v23 = *(v8 + 8);
  v56 = v8 + 8;
  v53 = v23;
  v23(v12, v4);
  v51 = AssociatedTypeWitness;
  v24 = sub_269D9A840();
  v25 = sub_269D9A830();

  if (v25 > v57)
  {
    sub_269CFA904(v20);
    MEMORY[0x26D650250](v52);
    v49(v20, v13);
    v48(v4, v55);
    v53(v12, v4);
    sub_269D9A870();

    v27 = sub_269D9A830();

    if (v27 > v50)
    {
      sub_269CFA904(v20);
      v40 = sub_269CF9BD4(v13);
      v28 = v49;
      v49(v20, v13);
      v41 = v24;
      v42 = v2;
      v29 = v28;
      v58 = v40;
      v30 = v43;
      sub_269CFA904(v43);
      v31 = v44;
      MEMORY[0x26D650250](v52);
      v29(v30, v13);
      v48(v4, v55);
      v53(v31, v4);
      v32 = v57;
      sub_269D9A870();

      v33 = v46;
      v34 = v51;
      sub_269D9A870();

      sub_269D9A800();
      v35 = v58;
      sub_269CFB4B4(v32, v58);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v37 = v35 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v37 = v35;
      }

      (*(v47 + 40))(v37 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32, v33, v34);
      sub_269CFA904(v20);
      v38 = v45;
      sub_269CFA904(v45);
      MEMORY[0x26D650250](v52);
      v29(v38, v13);
      (*(v55 + 48))(v58, v4);

      v53(v12, v4);
      sub_269CF9C54();
      return (v29)(v20, v13);
    }
  }

  return result;
}

uint64_t HKSPSleepScheduleOccurrence.DateDescription.DayContext.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

_BYTE *HKSPSleepScheduleOccurrence.DateDescription.init(dayContext:dayPeriod:isSingleDayOverride:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t sub_269CFC7A0()
{
  result = qword_2803504A8[0];
  if (!qword_2803504A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803504A8);
  }

  return result;
}

uint64_t _s15DateDescriptionVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s15DateDescriptionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void Date.formattedText.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = sub_269D974B0();
    v3 = [v1 formatDateAsTimeStyle_];

    if (v3)
    {
      sub_269D9A630();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ForEachWithIndexAsID.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for ForEachWithIndexAsID();
  v9 = (a5 + *(result + 52));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t ForEachWithIndexAsID.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = *(a1 - 8);
  v39 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  *&v42 = *(v4 + 32);
  v7 = *(*(*(v42 + 8) + 8) + 8);
  v8 = sub_269D9B140();
  MEMORY[0x28223BE20](v8);
  swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v10 = sub_269D9A840();
  v35 = v10;
  v11 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  v46 = v10;
  v47 = v9;
  v48 = v11;
  v49 = WitnessTable;
  v50 = MEMORY[0x277D83B98];
  v12 = sub_269D9A0A0();
  v37 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33 = &v33 - v16;
  MEMORY[0x26D6509D0](v6, v7);
  swift_getWitnessTable();
  v17 = sub_269D9A860();
  v18 = *(a1 + 40);
  *&v19 = v42;
  *(&v19 + 1) = v18;
  v46 = v17;
  *&v20 = v6;
  *(&v20 + 1) = v11;
  v41 = v19;
  v42 = v20;
  v43 = v20;
  v44 = v19;
  swift_getKeyPath();
  v21 = v38;
  v22 = v36;
  (*(v38 + 16))(v36, v2, a1);
  v23 = v21;
  v24 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 16) = v42;
  *(v25 + 32) = v26;
  (*(v23 + 32))(v25 + v24, v22, a1);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 16) = v42;
  *(v27 + 32) = v28;
  *(v27 + 48) = sub_269CFD034;
  *(v27 + 56) = v25;
  sub_269D9A080();
  v45 = v18;
  v29 = swift_getWitnessTable();
  v30 = v33;
  sub_269CE81C8(v15, v12, v29);
  v31 = *(v37 + 8);
  v31(v15, v12);
  sub_269CE81C8(v30, v12, v29);
  return (v31)(v30, v12);
}

uint64_t sub_269CFCE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a3;
  v23 = a2;
  v24 = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v18 = type metadata accessor for ForEachWithIndexAsID();
  (*(v22 + *(v18 + 52)))(v23);
  sub_269CE81C8(v15, a5, a7);
  v19 = *(v12 + 8);
  v19(v15, a5);
  sub_269CE81C8(v17, a5, a7);
  v19(v17, a5);
}

uint64_t sub_269CFD034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = *(type metadata accessor for ForEachWithIndexAsID() - 8);
  v12 = v3 + ((*(v11 + 80) + 48) & ~*(v11 + 80));

  return sub_269CFCE64(a1, a2, v12, v7, v8, v9, v10, a3);
}

uint64_t sub_269CFD0F8(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t sub_269CFD1FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_269CFD578();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269CFD284(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_269CFD3C0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_269CFD578()
{
  result = qword_280350530;
  if (!qword_280350530)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280350530);
  }

  return result;
}

id sub_269CFD5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell____lazy_storage___occurrenceView;
  v8 = type metadata accessor for ScheduleOccurrenceView(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  if (a3)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for ScheduleOccurrenceTableViewCell();
  v10 = objc_msgSendSuper2(&v18, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = objc_allocWithZone(MEMORY[0x277D75348]);
  v17[4] = sub_269CC7C58;
  v17[5] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_269CC7F6C;
  v17[3] = &block_descriptor_24;
  v12 = _Block_copy(v17);
  v13 = v10;
  v14 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  [v13 setBackgroundColor_];

  [v13 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v13;
  v15 = v13;
  sub_269D9ABD0();

  return v15;
}

uint64_t sub_269CFD7E4()
{
  sub_269CFDF18();
  v2[3] = v0;
  v2[4] = sub_269CFE078(&unk_280350570, sub_269CFDF18);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  sub_269CFDFB4();
  sub_269D99390();
  return MEMORY[0x26D650E10](v2);
}

uint64_t sub_269CFD8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScheduleOccurrenceView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI31ScheduleOccurrenceTableViewCell_viewModelProviding;
  swift_beginAccess();
  sub_269CFE0C0(a1 + v11, &v16);
  if (v17)
  {
    sub_269CAC4E4(&v16, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    (*(v13 + 8))(v12, v13);
    sub_269CFE278(v7, v10);
    (*(v5 + 56))(v10, 0, 1, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    sub_269CFE2DC(&v16, &qword_2803502F0, sub_269CFE194);
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  sub_269CFE1F8(v10, a2);
}

id sub_269CFDD34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ScheduleOccurrenceTableViewCell()
{
  result = qword_280350548;
  if (!qword_280350548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CFDE38()
{
  sub_269CFE140(319, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269CFDF18()
{
  if (!qword_280350560)
  {
    sub_269CFE140(255, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
    sub_269CFDFB4();
    v0 = sub_269D993A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350560);
    }
  }
}

unint64_t sub_269CFDFB4()
{
  result = qword_280350568;
  if (!qword_280350568)
  {
    sub_269CFE140(255, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
    sub_269CFE078(&qword_280350170, type metadata accessor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350568);
  }

  return result;
}

uint64_t sub_269CFE078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269CFE0C0(uint64_t a1, uint64_t a2)
{
  sub_269CFE140(0, &qword_2803502F0, sub_269CFE194);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CFE140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269CFE194()
{
  result = qword_2803502F8;
  if (!qword_2803502F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803502F8);
  }

  return result;
}

uint64_t sub_269CFE1F8(uint64_t a1, uint64_t a2)
{
  sub_269CFE140(0, &qword_280350558, type metadata accessor for ScheduleOccurrenceView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CFE278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CFE2DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269CFE140(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269CFE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  if (sub_269D9A630() == a1 && v6 == a2)
  {
    v9 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v8 = sub_269D9B280();

  if (v8)
  {
    v9 = 0;
    goto LABEL_9;
  }

  if (sub_269D9A630() == v4 && v11 == a2)
  {
    v9 = 1;
    goto LABEL_8;
  }

  v13 = sub_269D9B280();

  v9 = a2;
  if ((v13 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = 1;
LABEL_9:

  v4 = 0;
LABEL_10:
  *a3 = v4;
  a3[1] = v9;
  return result;
}

uint64_t UICollectionView.ElementKind.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 != 1)
    {
      v4 = *v0;
      goto LABEL_7;
    }

    sub_269D9A8E0();
    v3 = sub_269CFE53C;
  }

  else
  {
    sub_269D9A8E0();
    v3 = sub_269CFE518;
  }

  v4 = sub_269C71CFC(v3, 0);
LABEL_7:
  sub_269CFE61C(v1, v2);
  return v4;
}

uint64_t sub_269CFE560@<X0>(uint64_t *a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_269D9A630();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_269CFE61C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_269CFE630@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  UICollectionView.ElementKind.init(rawValue:)(&v4, *a1, a1[1]);
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_269CFE670@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  if (!v4)
  {
    sub_269D9A8E0();
    v5 = sub_269CFE518;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    sub_269D9A8E0();
    v5 = sub_269CFE53C;
LABEL_5:
    v6 = sub_269C71CFC(v5, 0);
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
LABEL_7:
  *a1 = v6;
  a1[1] = v7;

  return sub_269CFE61C(v3, v4);
}

uint64_t get_enum_tag_for_layout_string_So16UICollectionViewC13SleepHealthUIE11ElementKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269CFE774(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269CFE7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_269CFE824(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_269CFE8A8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_269CFE8EC()
{
  v0 = objc_opt_self();
  result = [v0 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
  if (result)
  {
    v2 = result;
    v3 = [result fontDescriptor];
    sub_269D020E0(0, &unk_2803505B0, sub_269D02074, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269D9EBE0;
    v5 = *MEMORY[0x277D74338];
    *(inited + 32) = *MEMORY[0x277D74338];
    v6 = v5;
    v7 = sub_269D7B4A8();
    sub_269D020E0(0, &qword_2803505C0, sub_269D02144, MEMORY[0x277D83940]);
    *(inited + 64) = v8;
    *(inited + 40) = v7;
    sub_269C44468(inited);
    swift_setDeallocating();
    sub_269D02228(inited + 32, sub_269D02074);
    type metadata accessor for AttributeName(0);
    sub_269D021E0(&qword_28034DBF8, type metadata accessor for AttributeName);
    v9 = sub_269D9A480();

    v10 = [v3 fontDescriptorByAddingAttributes_];

    v11 = [v0 fontWithDescriptor:v10 size:0.0];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CFEB34(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_269D97650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  v9 = &a1[v8[18]];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = &v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model];
  swift_beginAccess();
  v13 = &v12[v8[18]];
  v14 = *(v13 + 1);
  if (!v11)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (!v14 || (v10 == *v13 ? (v15 = v11 == v14) : (v15 = 0), !v15 && (sub_269D9B280() & 1) == 0))
  {
LABEL_10:
    sub_269CFEEF4();
  }

LABEL_11:
  v16 = v8[19];
  v17 = &a1[v16];
  v18 = *&a1[v16 + 8];
  v19 = &v12[v16];
  v20 = *(v19 + 1);
  if (!v18)
  {
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!v20 || (*v17 == *v19 ? (v21 = v18 == v20) : (v21 = 0), !v21 && (sub_269D9B280() & 1) == 0))
  {
LABEL_20:
    sub_269CFF05C();
  }

LABEL_21:
  if (a1[v8[13]] != v12[v8[13]])
  {
    sub_269CFEEF4();
  }

  if (a1[v8[14]] != v12[v8[14]])
  {
    sub_269CFF05C();
  }

  if (*a1 != *v12)
  {
    sub_269CFF1C4();
    v22 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
    if (*v12 == 1)
    {
      if (qword_28034D690 != -1)
      {
        swift_once();
      }

      v23 = &qword_280350590;
    }

    else
    {
      if (qword_28034D698 != -1)
      {
        swift_once();
      }

      v23 = &qword_280350598;
    }

    [v22 setTextColor_];

    [v2 invalidateIntrinsicContentSize];
    [v2 setNeedsLayout];
  }

  v24 = v8[17];
  v25 = &a1[v24];
  v26 = *&a1[v24 + 8];
  v27 = &v12[v24];
  v28 = *(v27 + 1);
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_269D9B280() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (v28)
  {
    goto LABEL_48;
  }

  v29 = v8[16];
  v30 = &a1[v29];
  v31 = *&a1[v29 + 8];
  v32 = &v12[v29];
  v33 = *(v32 + 1);
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_269D9B280() & 1) == 0)
  {
LABEL_48:
    sub_269CFF6F8();
  }

LABEL_49:
  sub_269D97630();
  v34 = sub_269D97640();
  result = (*(v5 + 8))(v7, v4);
  v36 = v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime];
  v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime] = v34 & 1;
  if ((v34 & 1) != v36)
  {
    [v2 invalidateIntrinsicContentSize];
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_269CFEEF4()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v2 = type metadata accessor for SleepScheduleComponentsViewModel();
  v3 = v2;
  if (*(v1 + *(v2 + 52)) == 1 && *(v1 + *(v2 + 72) + 8))
  {

    v4 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
    v5 = sub_269D018CC();

    [v4 setAttributedText_];
  }

  else
  {
    v4 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
    if (*(v1 + *(v3 + 72) + 8))
    {

      v5 = sub_269D9A5F0();
    }

    else
    {
      v5 = 0;
    }

    [v4 setText_];
  }
}

void sub_269CFF05C()
{
  v1 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v2 = type metadata accessor for SleepScheduleComponentsViewModel();
  v3 = v2;
  if (*(v1 + *(v2 + 56)) == 1 && *(v1 + *(v2 + 76) + 8))
  {

    v4 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
    v5 = sub_269D018CC();

    [v4 setAttributedText_];
  }

  else
  {
    v4 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
    if (*(v1 + *(v3 + 76) + 8))
    {

      v5 = sub_269D9A5F0();
    }

    else
    {
      v5 = 0;
    }

    [v4 setText_];
  }
}

void sub_269CFF1C4()
{
  v1 = v0;
  sub_269D020E0(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - v3;
  v30 = sub_269CFF8CC();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v32 = qword_280C0D990;
  v5 = sub_269D972C0();
  v7 = v6;
  v36 = sub_269C1B0B8(0, &unk_28034EBF0);
  v27[0] = objc_opt_self();
  v27[1] = [v27[0] hk_sleepKeyColor];
  v8 = sub_269D9ACA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v34 = v9 + 56;
  v35 = v10;
  v10(v4, 1, 1, v8);
  v39 = v5;
  v40 = v7;
  v33 = sub_269C3EEE8();
  sub_269D9AE90();

  if (qword_28034D680 != -1)
  {
    swift_once();
  }

  v11 = qword_280350580;
  v12 = sub_269C1B0B8(0, &qword_28034E5F0);
  v13 = *MEMORY[0x277D76968];
  v14 = *MEMORY[0x277D74420];
  v15 = v11;
  v28 = v13;
  v29 = v14;
  v31 = v12;
  static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v13, 0, 0, 0, 0, 0, 0, v14, 0);
  v16 = v15;
  v17 = sub_269D9AC90();
  v18 = v30;
  [v30 setAttributedText_];

  v19 = sub_269CFFC28();
  v20 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  LODWORD(v18) = *(v1 + v20);
  v21 = sub_269D972C0();
  v23 = v22;

  if (v18)
  {
    v24 = [v27[0] hk_sleepKeyColor];
  }

  else
  {
    if (qword_28034D620 != -1)
    {
      swift_once();
    }

    v25 = qword_28034E060;
  }

  v35(v4, 1, 1, v8);
  v37 = v21;
  v38 = v23;
  sub_269D9AE90();

  static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v28, 0, 0, 0, 0, 0, 0, v29, 0);
  v26 = sub_269D9AC90();
  [v19 setAttributedText_];
}

id sub_269CFF6F8()
{
  v1 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580);
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  v3 = type metadata accessor for SleepScheduleComponentsViewModel();
  if (*(v2 + *(v3 + 64) + 8))
  {

    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  [v1 setText_];

  v5 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580);
  if (*(v2 + *(v3 + 68) + 8))
  {

    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText_];

  if (*(v2 + *(v3 + 64) + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + *(v3 + 68) + 8) == 0;
  }

  [*(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel) setHidden_];
  return [*(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel) setHidden_];
}

id sub_269CFF8CC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel);
  }

  else
  {
    if (qword_28034D680 != -1)
    {
      swift_once();
    }

    v4 = qword_280350580;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v5 setTextColor_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    [v5 setNumberOfLines_];
    LODWORD(v6) = 1148846080;
    [v5 setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_269CFF9EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_269CFFA4C(v4, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_269CFFA4C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269DA23C0;
  *(v7 + 32) = a2();
  *(v7 + 40) = sub_269CFFC88(a3, &qword_28034D690, &qword_280350590);
  *(v7 + 48) = sub_269CFFC88(a4, &qword_28034D680, &qword_280350580);
  v8 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_269C1B0B8(0, &qword_2803505E0);
  v9 = sub_269D9A7D0();

  v10 = [v8 initWithArrangedSubviews_];

  [v10 setAxis_];
  [v10 setAlignment_];
  [v10 setDistribution_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v11) = 1148846080;
  [v10 setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v12];
  return v10;
}

id sub_269CFFC28()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel);
  }

  else
  {
    v4 = sub_269CFFD80();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_269CFFC88(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    if (*a2 != -1)
    {
      v13 = a3;
      swift_once();
      a3 = v13;
    }

    v7 = *a3;
    v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v8 setTextColor_];
    [v8 setTextAlignment_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v9) = 1148846080;
    [v8 setContentCompressionResistancePriority:1 forAxis:v9];
    v10 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

id sub_269CFFD80()
{
  if (qword_28034D680 != -1)
  {
    swift_once();
  }

  v0 = qword_280350580;
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v1 setTextColor_];
  [v1 setTextAlignment_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  return v1;
}

_BYTE *sub_269CFFE6C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_269D97650();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v10 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel] = 0;
  v11 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime;
  sub_269D97630();
  v12 = sub_269D97640();
  (*(v6 + 8))(v8, v5);
  v2[v11] = v12 & 1;
  v41 = a1;
  sub_269C6C0F0(a1, &v2[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model]);
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269D00450();
  sub_269D00584();
  sub_269C1B0B8(0, &qword_28034E5F0);
  v14 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
  v15 = sub_269CFF8CC();
  v16 = v14;
  [v15 setFont_];

  v17 = sub_269CFFC28();
  [v17 setFont_];

  v18 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580);
  [v18 setFont_];

  v19 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580);
  [v19 setFont_];

  v20 = sub_269CFE8EC();
  v21 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
  v22 = v20;
  [v21 setFont_];

  v23 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
  [v23 setFont_];

  sub_269CFF1C4();
  sub_269CFF6F8();
  sub_269CFEEF4();
  sub_269CFF05C();
  v24 = *&v13[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel];
  v25 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_model;
  swift_beginAccess();
  if (v13[v25] == 1)
  {
    v26 = qword_28034D690;
    v27 = v24;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = &qword_280350590;
  }

  else
  {
    v29 = qword_28034D698;
    v30 = v24;
    if (v29 != -1)
    {
      swift_once();
    }

    v28 = &qword_280350598;
  }

  [v24 setTextColor_];

  sub_269D00CF0();
  sub_269D020E0(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_269DA6D90;
  v32 = sub_269D983D0();
  v33 = MEMORY[0x277D74DB8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = sub_269D98260();
  v35 = MEMORY[0x277D74B90];
  *(v31 + 48) = v34;
  *(v31 + 56) = v35;
  v36 = sub_269D98290();
  v37 = MEMORY[0x277D74BF0];
  *(v31 + 64) = v36;
  *(v31 + 72) = v37;
  v38 = sub_269D98270();
  v39 = MEMORY[0x277D74BA0];
  *(v31 + 80) = v38;
  *(v31 + 88) = v39;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();

  swift_unknownObjectRelease();

  sub_269D02228(v41, type metadata accessor for SleepScheduleComponentsViewModel);
  return v13;
}

void sub_269D00450()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v1];
  [v0 addLayoutGuide_];
  [v0 addLayoutGuide_];
  v2 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView, sub_269CFF8CC, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel);
  [v0 addSubview_];

  v3 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView, sub_269CFFC28, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel);
  [v0 addSubview_];
}

void sub_269D00584()
{
  sub_269CF82FC(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA6DA0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(inited + 32) = v5;
  v6 = [v2 bottomAnchor];
  v7 = [v0 bottomAnchor];
  v8 = [v6 &selRef:v7 setLargeContentImage:? + 5];

  *(inited + 40) = v8;
  v56 = v2;
  v9 = [v2 leadingAnchor];
  v10 = [v0 &off_279C86528 + 1];
  v11 = [v9 constraintEqualToAnchor:v10 constant:12.0];

  *(inited + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 &selRef:v13 setLargeContentImage:? + 5];

  *(inited + 56) = v14;
  v15 = *&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 &selRef:v17 setLargeContentImage:? + 5];

  *(inited + 64) = v18;
  v19 = [v15 bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 &selRef:v20 setLargeContentImage:? + 5];

  *(inited + 72) = v21;
  v22 = [v15 leadingAnchor];
  v23 = [v0 centerXAnchor];
  v24 = [v22 &selRef:v23 setLargeContentImage:? + 5];

  *(inited + 80) = v24;
  v25 = [v15 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-12.0];

  *(inited + 88) = v27;
  v28 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView, sub_269CFFC28, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel);
  v29 = [v28 topAnchor];

  v30 = [v15 topAnchor];
  v31 = [v29 &selRef:v30 setLargeContentImage:? + 5];

  *(inited + 96) = v31;
  v55 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView;
  v32 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView] bottomAnchor];
  v33 = [v15 bottomAnchor];
  v34 = [v32 &selRef:v33 setLargeContentImage:? + 5];

  *(inited + 104) = v34;
  v35 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
  v36 = [v35 centerYAnchor];

  v37 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
  v38 = [v37 centerYAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(inited + 112) = v39;
  v40 = sub_269CFF9EC(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView, sub_269CFF8CC, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel);
  v41 = [v40 centerXAnchor];

  v42 = [v56 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(inited + 120) = v43;
  v44 = [*&v0[v55] &selRef_initForTextStyle_ + 2];
  v45 = [v15 &selRef_initForTextStyle_ + 2];
  v46 = [v44 constraintEqualToAnchor_];

  *(inited + 128) = v46;
  v47 = [*&v0[v55] leadingAnchor];
  v48 = [v15 leadingAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 136) = v49;
  v50 = [*&v0[v55] trailingAnchor];
  v51 = [v15 trailingAnchor];
  v52 = [v50 constraintLessThanOrEqualToAnchor_];

  *(inited + 144) = v52;
  sub_269C49D30(inited);
  v53 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0);
  v54 = sub_269D9A7D0();

  [v53 activateConstraints_];
}

void sub_269D00CF0()
{
  v0 = MEMORY[0x277D837D0];
  sub_269CF82FC(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269DA0D60;
  *(v1 + 32) = sub_269D9A630();
  *(v1 + 40) = v2;
  *(v1 + 48) = 0x7065656C53;
  *(v1 + 56) = 0xE500000000000000;
  strcpy((v1 + 64), "ScheduleEditor");
  *(v1 + 79) = -18;
  sub_269C49A1C(&unk_287A9F6C8);
  sub_269CF82FC(0, &qword_280C0B4F0, v0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v3 = sub_269D9A520();
  v5 = v4;

  sub_269C4BEAC(&unk_287A9F6E8);

  MEMORY[0x26D650930](0x656D69746465422ELL, 0xE800000000000000);
  v7 = v3;
  v6 = v5;

  MEMORY[0x26D650930](0x7055656B61572ELL, 0xE700000000000000);

  v9 = v3;
  v8 = v5;
  v10 = sub_269CFF8CC();
  v22 = v5;

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v11 = sub_269D9A5F0();

  [v10 setAccessibilityIdentifier_];

  v12 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580);

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);
  v13 = sub_269D9A5F0();

  [v12 &off_279C866F8];

  v14 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
  v23 = v6;

  MEMORY[0x26D650930](0x786554656D69542ELL, 0xE900000000000074);

  v15 = sub_269D9A5F0();

  [v14 setAccessibilityIdentifier_];

  v16 = sub_269CFFC28();

  MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
  v17 = sub_269D9A5F0();

  [v16 setAccessibilityIdentifier_];

  v18 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580);

  MEMORY[0x26D650930](0x747865547961442ELL, 0xE800000000000000);
  v19 = sub_269D9A5F0();

  [v18 setAccessibilityIdentifier_];

  v20 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
  v24 = v8;

  MEMORY[0x26D650930](0x786554656D69542ELL, 0xE900000000000074);

  v21 = sub_269D9A5F0();

  [v20 setAccessibilityIdentifier_];
}

void sub_269D011BC(uint64_t a1, void *a2)
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
    v4 = Strong;
    sub_269D01AB0(a2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SleepScheduleComponentsHeader.tintColorDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_tintColorDidChange);
  sub_269CFF1C4();
}

id sub_269D01470(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  v7 = sub_269CFFC88(a4, &qword_28034D690, &qword_280350590);

  return v7;
}

id SleepScheduleComponentsHeader.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleComponentsHeader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScheduleComponentsHeader()
{
  result = qword_280C0C060;
  if (!qword_280C0C060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269D017F4()
{
  result = type metadata accessor for SleepScheduleComponentsViewModel();
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

uint64_t sub_269D018CC()
{
  sub_269D020E0(0, &unk_2803505A0, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  sub_269C1B0B8(0, &unk_28034EBF0);
  if (qword_28034D688 != -1)
  {
    swift_once();
  }

  v3 = qword_280350588;
  v4 = sub_269D9ACA0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = qword_28034D690;
  v6 = v3;

  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_280350590;
  sub_269CFE8EC();
  return sub_269D9AC90();
}

void sub_269D01AB0(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_12;
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = [v2 traitCollection];
  v14 = [v13 legibilityWeight];

  if (v14 != [a1 legibilityWeight])
  {
LABEL_12:
    sub_269C1B0B8(0, &qword_28034E5F0);
    v16 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 0, 0, 0, 0, *MEMORY[0x277D74420], 0);
    v17 = sub_269CFF8CC();
    v18 = v16;
    [v17 setFont_];

    v19 = sub_269CFFC28();
    [v19 setFont_];

    v20 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel, &qword_28034D680, &qword_280350580);
    [v20 setFont_];

    v21 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel, &qword_28034D680, &qword_280350580);
    [v21 setFont_];

    v22 = sub_269CFE8EC();
    v23 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel, &qword_28034D690, &qword_280350590);
    v24 = v22;
    [v23 setFont_];

    v25 = sub_269CFFC88(&OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel, &qword_28034D690, &qword_280350590);
    [v25 setFont_];

    sub_269CFF1C4();
    v15 = 0;
    goto LABEL_13;
  }

  v15 = 1;
LABEL_13:
  v26 = [v2 traitCollection];
  v27 = [v26 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v15 && v27)
  {
    sub_269CFF1C4();
  }

  v28 = [v2 traitCollection];
  v29 = [v28 layoutDirection];

  if (!a1 || v29 != [a1 layoutDirection])
  {
    sub_269CFEEF4();

    sub_269CFF05C();
  }
}

void sub_269D01EA8()
{
  v1 = v0;
  v2 = sub_269D97650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_bedtimeLayoutGuide;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v7 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_wakeUpLayoutGuide;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeStackView) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpStackView) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeTimeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpTimeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___bedtimeDayLabel) = 0;
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader____lazy_storage___wakeUpDayLabel) = 0;
  v8 = OBJC_IVAR____TtC13SleepHealthUI29SleepScheduleComponentsHeader_isIn24HourTime;
  sub_269D97630();
  LOBYTE(v7) = sub_269D97640();
  (*(v3 + 8))(v5, v2);
  *(v1 + v8) = v7 & 1;
  sub_269D9B100();
  __break(1u);
}

void sub_269D02074()
{
  if (!qword_28034DEC0)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034DEC0);
    }
  }
}

void sub_269D020E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D02144()
{
  if (!qword_2803505C8)
  {
    type metadata accessor for FeatureKey(255);
    sub_269D021E0(&unk_2803505D0, type metadata accessor for FeatureKey);
    v0 = sub_269D9A4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803505C8);
    }
  }
}

uint64_t sub_269D021E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D02228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D022B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D022F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269D02374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + 64);
  if (v5 / 2.45 > v5)
  {
    __break(1u);
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 24) - v5 * 0.5;
    v8 = *(a1 + 16) + v5 * 0.5;
    v9 = *(a1 + 8) + v5;
    sub_269D98A20();
    *&v50 = v6;
    *(&v50 + 1) = v9;
    *&v51 = v8;
    *(&v51 + 1) = v7;
    *&v52 = v6;
    *(&v52 + 1) = v9;
    *&v53 = v8;
    *(&v53 + 1) = v7;
    v55[24] = 0;
    v10 = *(a1 + 32);
    sub_269D0307C(a1, v71);
    v24 = sub_269D99D30();
    v48 = v54;
    *v49 = *v55;
    *&v49[9] = *&v55[9];
    v44 = v50;
    v45 = v51;
    v47 = v53;
    v46 = v52;
    sub_269D029C0();
    v12 = v11;
    v25 = v14;
    v26 = v13;
    v16 = v15;
    sub_269D030B4(&v50, v71, sub_269D02C94);
    sub_269D98A20();
    v17 = v88;
    __dst = a2;
    v19 = v89;
    v18 = v90;
    v20 = v91;
    v21 = v92;
    v22 = v93;
    __src[4] = v54;
    __src[5] = *v55;
    *(&__src[5] + 9) = *&v55[9];
    __src[0] = v50;
    __src[1] = v51;
    __src[3] = v53;
    __src[2] = v52;
    sub_269D98A20();
    v56[4] = __src[4];
    v56[5] = __src[5];
    v56[6] = __src[6];
    v56[0] = __src[0];
    v56[1] = __src[1];
    v56[3] = __src[3];
    v56[2] = __src[2];
    *&v57 = v17;
    *(&v57 + 1) = __PAIR64__(v18, v19);
    *v58 = v20;
    *&v58[8] = v21;
    *&v58[16] = v22;
    *&v58[24] = 0;
    v58[26] = 1;
    v38 = __src[6];
    v39 = v57;
    v40[0] = *v58;
    *(v40 + 11) = *&v58[11];
    v34 = __src[2];
    v35 = __src[3];
    v36 = __src[4];
    v37 = __src[5];
    v32 = __src[0];
    v33 = __src[1];
    v59[4] = __src[4];
    v59[5] = __src[5];
    v59[6] = __src[6];
    v59[0] = __src[0];
    v59[1] = __src[1];
    v23 = *(a1 + 56);
    v59[3] = __src[3];
    v59[2] = __src[2];
    v60 = v17;
    v61 = v19;
    v62 = v18;
    v63 = v20;
    v64 = v21;
    v65 = v22;
    v66 = 0;
    v67 = 1;
    sub_269D030B4(v56, v71, sub_269D02E28);
    sub_269D0311C(v59, sub_269D02E28);
    *v69 = *&v49[16];
    v68[4] = v48;
    v68[5] = *v49;
    v68[0] = v44;
    v68[1] = v45;
    v68[3] = v47;
    v68[2] = v46;
    *&v69[16] = v24;
    *&v69[24] = 256;
    v31[4] = v48;
    v31[5] = *v49;
    v31[6] = *&v49[16];
    *(&v31[6] + 10) = *&v69[10];
    v31[0] = v44;
    v31[1] = v45;
    v31[2] = v46;
    v31[3] = v47;
    *&__src[0] = v12;
    *(&__src[0] + 1) = v26;
    *&__src[1] = v25;
    *(&__src[1] + 1) = v16;
    *&__src[2] = v12;
    *(&__src[2] + 1) = v26;
    *&__src[3] = v25;
    *(&__src[3] + 1) = v16;
    *&__src[6] = v43;
    __src[5] = v42;
    __src[4] = v41;
    BYTE8(__src[6]) = 0;
    *&__src[7] = v10;
    WORD4(__src[7]) = 256;
    *&__src[8] = v23;
    *(&__src[17] + 3) = *(v40 + 11);
    *(&__src[16] + 8) = v40[0];
    *(&__src[9] + 8) = v33;
    *(&__src[8] + 8) = v32;
    *(&__src[13] + 8) = v37;
    *(&__src[12] + 8) = v36;
    *(&__src[11] + 8) = v35;
    *(&__src[10] + 8) = v34;
    *(&__src[15] + 8) = v39;
    *(&__src[14] + 8) = v38;
    memcpy(&v31[8], __src, 0x123uLL);
    memcpy(__dst, v31, 0x1A3uLL);
    v71[0] = v12;
    v71[1] = v26;
    v71[2] = v25;
    v71[3] = v16;
    v71[4] = v12;
    v71[5] = v26;
    v71[6] = v25;
    v71[7] = v16;
    v72 = v41;
    v73 = v42;
    v74 = v43;
    v75 = 0;
    v76 = v10;
    v77 = 256;
    v78 = v23;
    v87[0] = v40[0];
    *(v87 + 11) = *(v40 + 11);
    v85 = v38;
    v86 = v39;
    v81 = v34;
    v82 = v35;
    v83 = v36;
    v84 = v37;
    v79 = v32;
    v80 = v33;
    sub_269D030B4(v68, v28, sub_269D02BE4);
    sub_269D030B4(__src, v28, sub_269D02D60);
    sub_269D0311C(v71, sub_269D02D60);
    v28[4] = v48;
    v28[5] = *v49;
    v28[6] = *&v49[16];
    v28[0] = v44;
    v28[1] = v45;
    v28[2] = v46;
    v28[3] = v47;
    v29 = v24;
    v30 = 256;
    sub_269D0311C(v28, sub_269D02BE4);
  }

  return result;
}

void sub_269D029C0()
{
  if (v0[2] > v0[3] || v0[8] / 2.45 > v0[8])
  {
    __break(1u);
  }
}

void *sub_269D02A4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v3;
  v12 = *(v1 + 64);
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v5 = sub_269D9A180();
  v7 = v6;
  sub_269D02374(v11, __src);
  memcpy(__dst, __src, 0x1A3uLL);
  memcpy(v14, __src, 0x1A3uLL);
  sub_269D030B4(__dst, &v9, sub_269D02B1C);
  sub_269D0311C(v14, sub_269D02B1C);
  *a1 = v5;
  a1[1] = v7;
  return memcpy(a1 + 2, __dst, 0x1A3uLL);
}

void sub_269D02B1C()
{
  if (!qword_2803505E8)
  {
    sub_269D02B74();
    v0 = sub_269D9A1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803505E8);
    }
  }
}

void sub_269D02B74()
{
  if (!qword_2803505F0)
  {
    sub_269D02BE4();
    sub_269D02D60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803505F0);
    }
  }
}

void sub_269D02BE4()
{
  if (!qword_2803505F8)
  {
    sub_269D02C94();
    sub_269D0317C(&qword_280350618, sub_269D02C94);
    v0 = sub_269D989D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803505F8);
    }
  }
}

void sub_269D02C94()
{
  if (!qword_280350600)
  {
    sub_269D02FCC(255, &qword_280350608, sub_269C5BAD4);
    sub_269C5BAD4();
    sub_269D0302C(&qword_280350610, &qword_280350608, sub_269C5BAD4);
    v0 = sub_269D98A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280350600);
    }
  }
}

void sub_269D02D60()
{
  if (!qword_280350620)
  {
    sub_269D02DC8();
    sub_269D02E28();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350620);
    }
  }
}

void sub_269D02DC8()
{
  if (!qword_280350628)
  {
    sub_269D02BE4();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350628);
    }
  }
}

void sub_269D02E28()
{
  if (!qword_280350630)
  {
    sub_269D02EBC();
    sub_269D0317C(&qword_280350650, sub_269D02EBC);
    v0 = sub_269D98A40();
    if (!v1)
    {
      atomic_store(v0, &qword_280350630);
    }
  }
}

void sub_269D02EBC()
{
  if (!qword_280350638)
  {
    sub_269D02C94();
    sub_269D02FCC(255, &qword_280350640, sub_269CB19F8);
    sub_269D0317C(&qword_280350618, sub_269D02C94);
    sub_269D0302C(&qword_280350648, &qword_280350640, sub_269CB19F8);
    v0 = sub_269D98A70();
    if (!v1)
    {
      atomic_store(v0, &qword_280350638);
    }
  }
}

void sub_269D02FCC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_269D98BA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D0302C(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_269D02FCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269D030B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D0311C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D0317C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D031C4()
{
  if (!qword_280350660)
  {
    sub_269D02B1C();
    sub_269D0317C(&qword_280350668, sub_269D02B1C);
    v0 = sub_269D99FE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350660);
    }
  }
}

void sub_269D0331C(uint64_t *a1@<X8>)
{
  v2 = sub_269D59EA0();
  v3 = [v2 text];

  if (v3)
  {
    v4 = sub_269D9A630();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_269D033A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_269D59EA0();
  if (v1)
  {
    v3 = sub_269D9A5F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t sub_269D03430()
{
  v0 = sub_269D59EA0();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_269D9A630();

  return v2;
}

void sub_269D034B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_269D59EA0();
  if (a2)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

void (*sub_269D03548(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView);
  v3 = sub_269D59EA0();
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_269D9A630();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_269D035E8;
}

void sub_269D035E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    v3 = sub_269D59EA0();
    v6 = v3;
    if (v2)
    {
      v4 = sub_269D9A5F0();

      v3 = v6;
    }

    else
    {
      v4 = 0;
    }

    [v3 setText_];
  }

  else
  {
    v5 = sub_269D59EA0();
    v6 = v5;
    if (v2)
    {
      v4 = sub_269D9A5F0();

      v5 = v6;
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }
}

id ScheduleOccurrenceSectionTableViewHeaderView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_269D9A5F0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

char *ScheduleOccurrenceSectionTableViewHeaderView.init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView] = [objc_allocWithZone(type metadata accessor for ScheduleOccurrenceHeaderView()) initWithFrame_];
  if (a2)
  {
    v4 = sub_269D9A5F0();
  }

  else
  {
    v4 = 0;
  }

  v31.receiver = v2;
  v31.super_class = type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  v5 = objc_msgSendSuper2(&v31, sel_initWithReuseIdentifier_, v4);

  v6 = v5;
  v7 = [v6 contentView];
  v8 = OBJC_IVAR____TtC13SleepHealthUI44ScheduleOccurrenceSectionTableViewHeaderView_headerView;
  [v7 addSubview_];

  v9 = [*&v6[v8] topAnchor];
  v10 = [v6 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  LODWORD(v13) = 1148829696;
  [v12 setPriority_];
  v14 = objc_opt_self();
  sub_269C4E764();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269DA0E10;
  v16 = [*&v6[v8] leadingAnchor];
  v17 = [v6 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  *(v15 + 40) = v12;
  v20 = v12;
  v21 = [v6 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [*&v6[v8] trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [v6 contentView];

  v26 = [v25 bottomAnchor];
  v27 = [*&v6[v8] bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v15 + 56) = v28;
  sub_269D03CA0();
  v29 = sub_269D9A7D0();

  [v14 activateConstraints_];

  [*&v6[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  return v6;
}

id ScheduleOccurrenceSectionTableViewHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_269D03CA0()
{
  result = qword_28034E1C0;
  if (!qword_28034E1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E1C0);
  }

  return result;
}

uint64_t sub_269D03DA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_269D03DFC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_269D03E7C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_269D04230();
  sub_269D9A8E0();
  v8 = a3;
  v9 = a1;
  v10 = sub_269D9A8D0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = a4;
  v13 = v9;
  v14 = v8;
  v15 = sub_269D9A8D0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v12;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  sub_269D9A030();
  sub_269C3EEE8();
  return sub_269D99F90();
}

uint64_t sub_269D03FCC@<X0>(uint64_t a1@<X2>, unsigned __int8 *a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v4 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) scheduledSleepMode];

    *a2 = v4;
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D04370(&qword_28034F568, type metadata accessor for SleepSettingsModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

void sub_269D040E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v6 = *&a4[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
    v7 = a4;
    [v6 setScheduledSleepMode_];
    sub_269CB4B04();
  }

  else
  {
    type metadata accessor for SleepSettingsModel();
    sub_269D04370(&qword_28034F568, type metadata accessor for SleepSettingsModel);
    sub_269D98E30();
    __break(1u);
  }
}

uint64_t sub_269D04230()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_269D04370(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D043B8()
{
  if (!qword_280350680)
  {
    v0 = sub_269D99FA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350680);
    }
  }
}

BOOL static MarqueeView.LoopBehavior.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t MarqueeView.init(loopBehavior:speed:content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_269D05C64(0, &qword_280350688, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v20 = 0;
  sub_269D99E60();
  *a4 = v21;
  v20 = 0;
  sub_269D99E60();
  *(a4 + 16) = v21;
  v20 = 0;
  sub_269D99E60();
  *(a4 + 32) = v21;
  *(a4 + 64) = v11;
  *(a4 + 72) = v12;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  sub_269D046C4();
  v13 = objc_opt_self();

  v14 = [v13 currentRunLoop];
  v15 = sub_269D9AE50();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = sub_269D9AD80();

  sub_269D04710(v10);
  *&v21 = v16;
  sub_269D9AD70();
  sub_269D05D48(&qword_280350698, MEMORY[0x277CC9DF0]);
  v17 = sub_269D98800();

  *(a4 + 48) = v17;
  *(a4 + 56) = 0;
  return result;
}

unint64_t sub_269D046C4()
{
  result = qword_280350690;
  if (!qword_280350690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280350690);
  }

  return result;
}

uint64_t sub_269D04710(uint64_t a1)
{
  sub_269D05C64(0, &qword_280350688, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarqueeView.body.getter(uint64_t a1)
{
  v3 = v1[4];
  v53 = v1[5];
  v4 = v1[3];
  v50 = v1[2];
  v51 = v4;
  v52 = v3;
  v5 = v1[1];
  v48 = *v1;
  v49 = v5;
  v6 = v53;
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = v1[3];
  *(v7 + 64) = v1[2];
  *(v7 + 80) = v10;
  v11 = v1[5];
  *(v7 + 96) = v1[4];
  *(v7 + 112) = v11;
  v12 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v12;
  sub_269D04FA4();
  v32 = v13;
  v14 = sub_269D05084();
  v33 = nullsub_1(v6);
  *&v34 = v15;
  *(&v34 + 1) = v16;
  v35 = v17;
  v18 = v51;

  v19 = *(*(a1 - 8) + 16);
  v19(v39, &v48, a1);
  *v39 = v18;
  sub_269D05C64(0, &qword_2803507D8, sub_269D058E8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  v38 = v43;
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  *(v20 + 24) = v9;
  v21 = v51;
  *(v20 + 64) = v50;
  *(v20 + 80) = v21;
  v22 = v53;
  *(v20 + 96) = v52;
  *(v20 + 112) = v22;
  v23 = v49;
  *(v20 + 32) = v48;
  *(v20 + 48) = v23;
  v19(v39, &v48, a1);
  *v39 = v8;
  *&v39[8] = v32;
  *&v39[16] = v9;
  v40 = v14;
  Subviews = type metadata accessor for GetSubviews();
  sub_269D058E8();
  v26 = v25;
  WitnessTable = swift_getWitnessTable();
  v28 = sub_269D05D48(qword_2803506C8, sub_269D058E8);
  sub_269D99C90();

  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v37 = v47;
  *v39 = v26;
  *&v39[8] = Subviews;
  *&v39[16] = v28;
  v40 = WitnessTable;
  v29 = sub_269D98DC0();
  v30 = swift_getWitnessTable();
  sub_269CE81C8(&v33, v29, v30);

  v44 = *&v39[8];
  v43 = *v39;
  v45 = v40;
  v46 = v41;
  v47 = v42;
  sub_269CE81C8(&v43, v29, v30);
}

uint64_t sub_269D04B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = sub_269D993C0();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v12 = *a2;
  v13 = a2[1];
  v26 = type metadata accessor for MarqueeView();
  *&v27 = v12;
  *(&v27 + 1) = v13;
  sub_269D05C14();
  sub_269D99E70();
  sub_269D993D0();
  v27 = *a2;
  sub_269D99E70();
  sub_269D05004();
  *(a5 + *(v14 + 52)) = v28;
  v15 = a1;
  v16 = v25;
  (*(v10 + 16))(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v25);
  v17 = (*(v10 + 80) + 128) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = *(a2 + 3);
  *(v18 + 64) = *(a2 + 2);
  *(v18 + 80) = v19;
  v20 = *(a2 + 5);
  *(v18 + 96) = *(a2 + 4);
  *(v18 + 112) = v20;
  v21 = *(a2 + 1);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v21;
  (*(v10 + 32))(v18 + v17, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_269D04FA4();
  v23 = (a5 + *(v22 + 36));
  *v23 = sub_269D05CC8;
  v23[1] = v18;
  v23[2] = 0;
  v23[3] = 0;
  return (*(*(v26 - 8) + 16))(&v27, a2);
}

uint64_t sub_269D04DA4(__int128 *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = *a1;
  v4 = type metadata accessor for MarqueeView();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v13, a1, v4);
  sub_269D993C0();
  sub_269D05D48(&qword_2803507E0, MEMORY[0x277CE05F0]);
  sub_269D9A9C0();
  sub_269D9AA00();
  v6 = sub_269D9A9F0();
  *&v13 = v2;
  *(&v13 + 1) = v3;
  v20 = v6;
  sub_269D05C14();
  sub_269D99E80();
  v13 = v12;
  v14 = v2;
  v15 = v3;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  (*(v5 + 8))(&v13, v4);
}

void sub_269D04FA4()
{
  if (!qword_2803506A0)
  {
    sub_269D05004();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_2803506A0);
    }
  }
}

void sub_269D05004()
{
  if (!qword_2803506A8)
  {
    sub_269D993B0();
    v0 = sub_269D99F10();
    if (!v1)
    {
      atomic_store(v0, &qword_2803506A8);
    }
  }
}

unint64_t sub_269D05084()
{
  result = qword_2803506B0;
  if (!qword_2803506B0)
  {
    sub_269D04FA4();
    sub_269D05D48(&qword_2803506B8, sub_269D05004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803506B0);
  }

  return result;
}

uint64_t sub_269D05134()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_269D9A1B0();
  sub_269D98BD0();
}

uint64_t objectdestroyTm_7()
{

  return swift_deallocObject();
}

uint64_t sub_269D052A4()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = type metadata accessor for MarqueeView();
  if (sub_269D054A4())
  {
    sub_269D05608(v0);
  }

  else
  {
    sub_269D053DC();
  }
}

uint64_t sub_269D053DC()
{
  v1 = *(v0 + 56);
  v3[0] = *(v0 + 48);
  v3[1] = v1;
  sub_269D05C64(0, &qword_2803507D8, sub_269D058E8, MEMORY[0x277CE10B8]);
  sub_269D99E70();
  sub_269D986A0();

  sub_269D9AD60();

  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_269D98720();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_269D054A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_269D05C14();
  sub_269D99E70();
  if (v4 >= 2)
  {
    if (v2 == 2)
    {
      return 1;
    }

    sub_269D99E70();
    if (v4 < v1)
    {
      return 1;
    }

    sub_269D99E70();
    if (v4 == v1)
    {
      sub_269D99E70();
      result = sub_269D99E70();
      if (__OFSUB__(v4, 1))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      if (v4 < v4 - 1)
      {
        return 1;
      }
    }

    sub_269D99E70();
    result = sub_269D99E70();
    if (!__OFSUB__(v4, 1))
    {
      return 0;
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_269D05608(uint64_t a1)
{
  v3 = v1[3];
  v39 = v1[2];
  v40 = v3;
  v4 = v1[5];
  v41 = v1[4];
  v42 = v4;
  v5 = v1[1];
  v37 = *v1;
  v38 = v5;
  sub_269D05C14();
  sub_269D99E70();
  v31 = v38;
  result = sub_269D99E70();
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v25 < v25 - 1)
  {
    v7 = v37;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v25 = v38;
    v26 = v39;
    v8 = *(a1 - 8);
    (*(v8 + 16))(&v31, &v37, a1);
    v31 = v7;
    result = sub_269D99E70();
    if (!__OFADD__(v16, 1))
    {
      v31 = v7;
      sub_269D99E80();
      v31 = v7;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v32 = v25;
      v33 = v26;
      return (*(v8 + 8))(&v31, a1);
    }

    goto LABEL_9;
  }

  v9 = v37;
  v21 = v40;
  v23 = v41;
  v24 = v42;
  v17 = v38;
  v19 = v39;
  v10 = *(a1 - 8);
  v11 = *(v10 + 16);
  v11(&v31, &v37, a1);
  v31 = v9;
  sub_269D99E80();
  v25 = v9;
  v28 = v21;
  v29 = v23;
  v30 = v24;
  v26 = v17;
  v27 = v19;
  v12 = *(v10 + 8);
  v12(&v25, a1);
  v14 = v37;
  v15 = v38;
  v13 = v39;
  v18 = v40;
  v20 = v41;
  v22 = v42;
  v11(&v31, &v37, a1);
  v31 = v13;
  result = sub_269D99E70();
  if (__OFADD__(v43, 1))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v31 = v13;
  ++v43;
  sub_269D99E80();
  v31 = v14;
  v32 = v15;
  v33 = v13;
  v34 = v18;
  v35 = v20;
  v36 = v22;
  return (v12)(&v31, a1);
}

void sub_269D058E8()
{
  if (!qword_2803506C0)
  {
    sub_269D9AD70();
    sub_269D05D48(&qword_280350698, MEMORY[0x277CC9DF0]);
    v0 = sub_269D986B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803506C0);
    }
  }
}

uint64_t sub_269D059C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_269D05A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D05A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_269D05AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D05B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
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
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_269D05B98(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D05BB4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

void sub_269D05C14()
{
  if (!qword_2803507D0)
  {
    v0 = sub_269D99EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803507D0);
    }
  }
}

void sub_269D05C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D05CC8()
{
  sub_269D993C0();

  return sub_269D04DA4((v0 + 32));
}

uint64_t sub_269D05D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D05DA0()
{
  type metadata accessor for GoalTimePickerCollectionViewCell();
  sub_269CC12C0();
  return sub_269D97F90();
}

uint64_t sub_269D05E0C(uint64_t a1)
{
  v2 = sub_269D05EE0();

  return MEMORY[0x282169440](a1, v2);
}

unint64_t sub_269D05E5C()
{
  result = qword_2803507E8;
  if (!qword_2803507E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507E8);
  }

  return result;
}

unint64_t sub_269D05EB0(uint64_t a1)
{
  *(a1 + 8) = sub_269D05EE0();
  result = sub_269D05F34();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_269D05EE0()
{
  result = qword_2803507F0;
  if (!qword_2803507F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507F0);
  }

  return result;
}

unint64_t sub_269D05F34()
{
  result = qword_2803507F8;
  if (!qword_2803507F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803507F8);
  }

  return result;
}

unint64_t sub_269D05F88()
{
  result = qword_280350800;
  if (!qword_280350800)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350800);
  }

  return result;
}

void sub_269D05FD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_269D06030()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

BOOL sub_269D060BC()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  return *(*(v0 + v1) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
}

void sub_269D06118(int a1)
{
  v2 = v1;
  v4 = sub_269D97670();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D977A0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  if ((((*(*(v2 + v14) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) == 0) ^ a1) & 1) == 0)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4);
    sub_269D97680();
    (*(v5 + 8))(v7, v4);
    SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v10, v13);
    v15 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView());
    sub_269C6AE28(22, 0, 7, 0, v13, a1 & 1);
    v16 = *(v2 + v14);
    *(v2 + v14) = v17;
  }
}

void (*sub_269D06330(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_269D97670();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 48) = v8;
  v9 = *(*(sub_269D977A0() - 8) + 64);
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  *(v5 + 56) = v10;
  v11 = *(*(type metadata accessor for SleepScheduleComponentsViewModel() - 8) + 64);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  *(v5 + 64) = v12;
  *(v5 + 72) = v13;
  swift_beginAccess();
  *(v5 + 80) = *(*(v1 + v13) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) != 0;
  return sub_269D064A8;
}

void sub_269D064A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];
    sub_269D06118(*(*a1 + 80));
  }

  else
  {
    v7 = v2[9];
    v8 = v2[3];
    if (v3 == (*(*(v8 + v7) + OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_componentsHeader) == 0))
    {
      v10 = v2[7];
      v9 = v2[8];
      v11 = v2[5];
      v12 = v2[6];
      v13 = v2[4];
      (*(v11 + 104))(v12, *MEMORY[0x277CC9830], v13);
      sub_269D97680();
      (*(v11 + 8))(v12, v13);
      SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v10, v9);
      v14 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView());
      sub_269C6AE28(22, 0, 7, 0, v9, v3);
      v15 = *(v8 + v7);
      *(v8 + v7) = v16;
    }

    v5 = v2[7];
    v4 = v2[8];
    v6 = v2[6];
  }

  free(v4);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_269D06608@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_269D06688()
{
  swift_beginAccess();
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_269D06708()
{
  swift_beginAccess();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_269D06774()
{
  swift_beginAccess();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_269D067F8(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  swift_beginAccess();
  swift_beginAccess();
  *(v4 + 96) = swift_unknownObjectWeakLoadStrong();
  return sub_269D068B4;
}

void sub_269D068B4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  free(v1);
}

id ScheduleOccurrenceComponentsEditTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScheduleOccurrenceComponentsEditTableViewCell.apply(_:)(uint64_t a1)
{
  v26 = sub_269D971F0();
  v3 = *(v26 - 8);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v12 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
  v13 = v10;
  v14 = [v12 bedtimeComponents];
  sub_269D97120();

  v15 = [*(a1 + v11) wakeUpComponents];
  sub_269D97120();

  sub_269D987C0();
  v16 = v28;
  v17 = v29;
  sub_269D987C0();
  v18 = v28;
  v19 = [*(a1 + v11) alarmConfiguration];
  [v19 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  v20 = v27;
  LODWORD(v11) = [v27 isEnabled];

  sub_269C68F84(v8, v6, v16, v17, v18, v11, *(a1 + 57));
  v21 = *(v3 + 8);
  v22 = v6;
  v23 = v26;
  v21(v22, v26);
  return (v21)(v8, v23);
}

char *sub_269D0701C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D977A0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepScheduleComponentsViewModel();
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = 0x8000000269DAC1D0;
    if (a1 == 0xD000000000000030 && 0x8000000269DAC1D0 == a2)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_269D9B280() ^ 1;
    }
  }

  else
  {
    v17 = 1;
  }

  (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6, v14);
  sub_269D97680();
  (*(v7 + 8))(v9, v6);
  SleepScheduleComponentsViewModel.init(gregorianCalendar:)(v12, v16);
  v18 = objc_allocWithZone(type metadata accessor for SleepScheduleComponentsEditView());
  sub_269C6AE28(22, 0, 7, 0, v16, v17 & 1);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView] = v19;
  if (a2)
  {
    v20 = sub_269D9A5F0();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v34.receiver = v3;
  v34.super_class = v21;
  v22 = objc_msgSendSuper2(&v34, sel_initWithStyle_reuseIdentifier_, 0, v20);

  v23 = v22;
  v24 = [v23 contentView];
  v25 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
  swift_beginAccess();
  [v24 addSubview_];

  v26 = objc_allocWithZone(MEMORY[0x277D75348]);
  aBlock[4] = sub_269CC7C58;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CC7F6C;
  aBlock[3] = &block_descriptor_25;
  v27 = _Block_copy(aBlock);
  v28 = [v26 initWithDynamicProvider_];
  _Block_release(v27);

  [v23 setBackgroundColor_];

  v29 = *&v23[v25];
  v30 = [v23 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v30, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

  return v23;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269D07578()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTimeDurationPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269D07630()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280C0D990 = result;
  return result;
}

void sub_269D076AC()
{
  v0 = *MEMORY[0x277D62020];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 bundleWithIdentifier_];

  if (v3)
  {
    qword_280350820 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_269D07744(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_269D077C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_269D07878(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_269D07930(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_269D079EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_269D07ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
  if (v1)
  {
    return *(v1 + 50);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D07B38()
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
    v1 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
    v2 = Strong;

    if (v1)
    {
      sub_269CA5FCC();
    }
  }
}

uint64_t sub_269D07C20(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if (v12)
    {
      return result;
    }

    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v14 = sub_269D98250();
    __swift_project_value_buffer(v14, qword_280C0B728);
    v15 = sub_269D98230();
    v16 = sub_269D9AB80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136446210;
      v19 = sub_269D9B4D0();
      v21 = sub_269C2EACC(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269C18000, v15, v16, "[%{public}s] Observing sleep settings or schedule changes for dismissal", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D652460](v18, -1, -1);
      MEMORY[0x26D652460](v17, -1, -1);
    }

    *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = sub_269C4AB48();
  }
}

id sub_269D07ECC(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_userInfo;
  swift_beginAccess();
  v5 = *(*&v2[v4] + 16);

  v6 = [v5 source];
  v7 = sub_269D9A630();
  v9 = v8;
  if (v7 == sub_269D9A630() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_269D9B280();

    if ((v12 & 1) == 0)
    {
      *&v2[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_sleepChangeObserver] = 0;

      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v13 = sub_269D98250();
      __swift_project_value_buffer(v13, qword_280C0B728);
      v14 = sub_269D98230();
      v15 = sub_269D9AB80();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v23 = v17;
        *v16 = 136446210;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, &v23);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Done observing sleep settings or schedule changes", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }
    }
  }

  v21 = type metadata accessor for SleepOnboardingFlowTableViewController();
  v24.receiver = v2;
  v24.super_class = v21;
  return objc_msgSendSuper2(&v24, sel_viewWillDisappear_, a1 & 1);
}

void sub_269D0814C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1;
  a5(a3);
}

id sub_269D082C4()
{
  v1 = v0;
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [result window];

    if (v4)
    {

      v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor];
      if (v5)
      {
        if ((*(v5 + 49) & 1) == 0)
        {

          sub_269CA5FCC();
        }
      }
    }

    v6.receiver = v1;
    v6.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
    return objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269D08468()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

id SleepOnboardingFlowTableViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingFlowTableViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D08628(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_269D086F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSourceAdaptor);
  if (v1)
  {
    return *(v1 + 50);
  }

  else
  {
    return 0;
  }
}

id sub_269D08734()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

double sub_269D08804(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = v3;
  v29 = a1;
  sub_269D090C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D9AAA0();
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D9AAD0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_269D97870();
  v16 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D64DAA0](0, a2);
  (*(v13 + 104))(v15, *a3, v12);
  sub_269D9AAC0();
  (*(v13 + 8))(v15, v12);
  v30 = *(v5 + OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_dataSource);
  v34 = v30;
  sub_269C95CC0(0, &qword_28034F080);
  sub_269C95CC0(0, &unk_280350870);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_269C25520(v32, v35);
    __swift_project_boxed_opaque_existential_1Tm(v35, v35[3]);
    sub_269D98150();

    sub_269C95CC0(0, &qword_280350880);
    v19 = swift_dynamicCast();
    v20 = v28;
    v21 = *(v28 + 56);
    if (v19)
    {
      v21(v9, 0, 1, v10);
      v22 = v27;
      (*(v20 + 32))(v27, v9, v10);
      sub_269D9AA80();
      v24 = v23;
      (*(v20 + 8))(v22, v10);
      (*(v16 + 8))(v18, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      return v24;
    }

    v21(v9, 1, 1, v10);
    sub_269D0917C(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {

    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_269D091D8(v32, &qword_28034F078, &unk_280350870);
  }

  if ([v29 style])
  {
    v24 = *MEMORY[0x277D76F30];
  }

  else
  {
    v24 = 0.0;
  }

  (*(v16 + 8))(v18, v31);
  return v24;
}

double sub_269D08CB8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(id, uint64_t))
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
  v12 = a6(v10, a4);

  return v12;
}

void SleepOnboardingFlowTableViewController.tableView(_:didSelectRowAt:)(void *a1)
{
  v2 = sub_269D97830();
  v3 = [a1 cellForRowAtIndexPath_];

  if (!v3 || (v9[0] = v3, sub_269C1B0B8(0, &unk_28034DC10), sub_269C95CC0(0, &unk_280350890), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_269D091D8(&v6, &qword_280350888, &unk_280350890);
    goto LABEL_7;
  }

  sub_269C25520(&v6, v9);
  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_269C2DB5C(v9, &v6);
  sub_269C1B0B8(0, &qword_2803505E0);
  swift_dynamicCast();
  sub_269D98010();

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_7:
  v4 = sub_269D97830();
  [a1 deselectRowAtIndexPath:v4 animated:1];
}

void sub_269D090C8()
{
  if (!qword_280350858)
  {
    sub_269D9AAA0();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350858);
    }
  }
}

void sub_269D09120(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_269C95CC0(255, a3);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D0917C(uint64_t a1)
{
  sub_269D090C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D091D8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_269D09120(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HKSPSleepScheduleRange.conflict(bedtimeComponents:wakeUpComponents:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269D09440() & 1;
  result = sub_269D09680();
  v4 = v2 | 2;
  if ((result & 1) == 0)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_269D09440()
{
  v1 = sub_269D971F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D09880();
  v6 = [v0 earliestBedtimeIsOnPreviousDay];
  if (v5)
  {
    if ((v6 & 1) == 0)
    {
      LOBYTE(v7) = 1;
      return v7 & 1;
    }
  }

  else if (v6)
  {
    goto LABEL_18;
  }

  v8 = [v0 earliestBedtimeComponents];
  sub_269D97120();

  v9 = sub_269D97150();
  v11 = v10;
  v12 = sub_269D97150();
  v14 = sub_269D68570(v12, v13 & 1, v9, v11 & 1);
  v16 = v15;
  v17 = sub_269D971A0();
  v19 = v18;
  v20 = sub_269D971A0();
  v22 = sub_269D68570(v20, v21 & 1, v17, v19 & 1);
  v24 = v23;
  sub_269D09970();
  if ((v16 & 1) == 0)
  {
    if (v14 == 1)
    {
      (*(v2 + 8))(v4, v1);
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    if (v14)
    {
      if (v14 != -1)
      {
        goto LABEL_21;
      }

      (*(v2 + 8))(v4, v1);
LABEL_18:
      LOBYTE(v7) = 0;
      return v7 & 1;
    }
  }

  (*(v2 + 8))(v4, v1);
  if (v24 & 1) != 0 && (v16)
  {
    goto LABEL_18;
  }

  if (v24)
  {
    v25 = v14;
  }

  else
  {
    v25 = v22;
  }

  v26 = v25 + 1;
  if (v26 < 3)
  {
    v7 = 6u >> (v26 & 7);
    return v7 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_21:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D09680()
{
  v1 = sub_269D971F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 latestWakeUpComponents];
  sub_269D97120();

  v6 = sub_269D97150();
  v8 = v7;
  v9 = sub_269D97150();
  v11 = sub_269D68570(v9, v10 & 1, v6, v8 & 1);
  v13 = v12;
  v14 = sub_269D971A0();
  v16 = v15;
  v17 = sub_269D971A0();
  v19 = sub_269D68570(v17, v18 & 1, v14, v16 & 1);
  v21 = v20;
  sub_269D09970();
  if ((v13 & 1) == 0)
  {
    if (v11 == 1)
    {
      (*(v2 + 8))(v4, v1);
      LOBYTE(v24) = 1;
      return v24 & 1;
    }

    if (v11)
    {
      if (v11 != -1)
      {
        goto LABEL_17;
      }

      (*(v2 + 8))(v4, v1);
LABEL_14:
      LOBYTE(v24) = 0;
      return v24 & 1;
    }
  }

  (*(v2 + 8))(v4, v1);
  if (v21 & 1) != 0 && (v13)
  {
    goto LABEL_14;
  }

  if (v21)
  {
    v22 = v11;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 + 1;
  if (v23 < 3)
  {
    v24 = 6u >> (v23 & 7);
    return v24 & 1;
  }

  sub_269D9B270();
  __break(1u);
LABEL_17:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

uint64_t sub_269D09880()
{
  v0 = sub_269D97150();
  v2 = v1;
  v3 = sub_269D97150();
  v5 = sub_269D68570(v3, v4 & 1, v0, v2 & 1);
  v7 = v6;
  v8 = sub_269D971A0();
  v10 = v9;
  v11 = sub_269D971A0();
  v13 = sub_269D68570(v11, v12 & 1, v8, v10 & 1);
  v15 = v14;
  sub_269D09970();
  if (v7)
  {
LABEL_6:
    if (v15)
    {
      LOBYTE(v16) = 0;
      return v16 & 1;
    }

    goto LABEL_8;
  }

  if (v5 != -1 && v5 != 1)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v13 = v5;
LABEL_8:
  if ((v13 + 1) < 3)
  {
    v16 = 4u >> ((v13 + 1) & 7);
    return v16 & 1;
  }

LABEL_11:
  result = sub_269D9B270();
  __break(1u);
  return result;
}

void sub_269D09970()
{
  if (!qword_280350900)
  {
    type metadata accessor for ComparisonResult(255);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350900);
    }
  }
}

uint64_t SleepScheduleComponentsViewModel.includeDayLabelsInHeader.setter(char a1)
{
  *(v1 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 32)) = a1;

  return sub_269D0A9B8();
}

uint64_t type metadata accessor for SleepScheduleComponentsViewModel()
{
  result = qword_280C0C048;
  if (!qword_280C0C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SleepScheduleComponentsViewModel.validScheduleRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SleepScheduleComponentsViewModel();
  v5 = v4[7];

  *(v2 + v5) = a1;
  if (!a1)
  {
    *(v2 + v4[15]) = 0;
LABEL_8:
    v9 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v6 = sub_269D09440() & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v2 + v4[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = 0;
  v10 = 1;
LABEL_10:
  *(v2 + v4[13]) = v9;
  *(v2 + v4[14]) = v10;
}

uint64_t SleepScheduleComponentsViewModel.wakeUpComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 44);
  v4 = sub_269D971F0();
  v7 = *(v4 - 8);
  (*(v7 + 24))(v1 + v3, a1, v4);
  sub_269D0A9B8();
  v5 = *(v7 + 8);

  return v5(a1, v4);
}

uint64_t SleepScheduleComponentsViewModel.roundedBedtimeComponents.setter(uint64_t a1)
{
  v2 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SleepScheduleComponentsViewModel();
  v8 = v7[9];
  v9 = sub_269D971F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v28 = v9;
  v29 = a1;
  v11(v2 + v8, a1);
  if (!*(v2 + v7[7]))
  {
    *(v2 + v7[15]) = 0;
LABEL_8:
    v15 = 0;
    v16 = 0;
    goto LABEL_10;
  }

  v12 = sub_269D09440() & 1;
  v13 = sub_269D09680();
  v14 = v12 | 2;
  if ((v13 & 1) == 0)
  {
    v14 = v12;
  }

  *(v2 + v7[15]) = v14;
  if (v14)
  {
    v16 = 0;
    v15 = 1;
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 1;
LABEL_10:
  *(v2 + v7[13]) = v15;
  *(v2 + v7[14]) = v16;
  sub_269D97720();
  v17 = sub_269D0C704(v6, v2);
  v19 = v18;
  v20 = MEMORY[0x277CC9578];
  sub_269D0CB60(v6, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v21 = (v2 + v7[18]);

  *v21 = v17;
  v21[1] = v19;
  sub_269D97720();
  v22 = sub_269D0C704(v6, v2);
  v24 = v23;
  sub_269D0CB60(v6, &qword_280C0BB60, v20);
  v25 = (v2 + v7[19]);

  *v25 = v22;
  v25[1] = v24;
  sub_269D0A9B8();
  return (*(v10 + 8))(v29, v28);
}

uint64_t SleepScheduleComponentsViewModel.roundedWakeUpComponents.setter(uint64_t a1)
{
  v2 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for SleepScheduleComponentsViewModel();
  v8 = v7[10];
  v9 = sub_269D971F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v29 = v9;
  v30 = a1;
  v11(v2 + v8, a1);
  v12 = *(v2 + v7[7]);
  v28 = v8;
  if (!v12)
  {
    *(v2 + v7[15]) = 0;
LABEL_8:
    v16 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v13 = sub_269D09440() & 1;
  v14 = sub_269D09680();
  v15 = v13 | 2;
  if ((v14 & 1) == 0)
  {
    v15 = v13;
  }

  *(v2 + v7[15]) = v15;
  if (v15)
  {
    v17 = 0;
    v16 = 1;
    goto LABEL_10;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = 0;
  v17 = 1;
LABEL_10:
  *(v2 + v7[13]) = v16;
  *(v2 + v7[14]) = v17;
  sub_269D97720();
  v18 = sub_269D0C704(v6, v2);
  v20 = v19;
  v21 = MEMORY[0x277CC9578];
  sub_269D0CB60(v6, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v22 = (v2 + v7[18]);

  *v22 = v18;
  v22[1] = v20;
  sub_269D97720();
  v23 = sub_269D0C704(v6, v2);
  v25 = v24;
  sub_269D0CB60(v6, &qword_280C0BB60, v21);
  v26 = (v2 + v7[19]);

  *v26 = v23;
  v26[1] = v25;
  sub_269D0A9B8();
  return (*(v10 + 8))(v30, v29);
}

uint64_t SleepScheduleComponentsViewModel.init(gregorianCalendar:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a1;
  v51 = MEMORY[0x277CC9578];
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - v4;
  sub_269D0C8FC(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  sub_269D0C8FC(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  *a2 = 1;
  v11 = type metadata accessor for SleepScheduleComponentsViewModel();
  v12 = v11[6];
  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v13 setDateStyle_];
  [v13 setTimeStyle_];
  *&a2[v12] = v13;
  *&a2[v11[7]] = 0;
  a2[v11[8]] = 0;
  v48 = v11[9];
  v14 = sub_269D977A0();
  v54 = *(v14 - 8);
  v46 = *(v54 + 56);
  v15 = v10;
  v16 = v10;
  v17 = v14;
  v46(v15, 1, 1);
  v52 = sub_269D97810();
  v18 = *(v52 - 8);
  v19 = *(v18 + 56);
  v44 = v18 + 56;
  v19(v7, 1, 1, v52);
  v45 = v19;
  v20 = v16;
  v43 = v16;
  v21 = v7;
  sub_269D971D0();
  v47 = v11[10];
  v53 = v17;
  v22 = v46;
  (v46)(v20, 1, 1, v17);
  v19(v21, 1, 1, v52);
  v23 = v43;
  sub_269D971D0();
  v22(v23, 1, 1, v17);
  v45(v21, 1, 1, v52);
  sub_269D971D0();
  v24 = v11[12];
  *&a2[v24] = [objc_allocWithZone(type metadata accessor for RelativeWeekdayFormatter()) init];
  v25 = v11[13];
  a2[v25] = 0;
  v26 = v11[14];
  a2[v26] = 0;
  v27 = v11[15];
  *&a2[v27] = 0;
  v28 = &a2[v11[16]];
  *v28 = 0;
  v28[1] = 0;
  v29 = &a2[v11[17]];
  *v29 = 0;
  v29[1] = 0;
  v30 = &a2[v11[18]];
  *v30 = 0;
  v30[1] = 0;
  v31 = &a2[v11[19]];
  *v31 = 0;
  v31[1] = 0;
  v32 = v50;
  (*(v54 + 16))(&a2[v11[5]], v50, v53);
  *&a2[v27] = 0;
  a2[v25] = 0;
  a2[v26] = 0;
  sub_269D0A9B8();
  v33 = v49;
  sub_269D97720();
  v34 = sub_269D0C704(v33, a2);
  v36 = v35;
  v37 = v51;
  sub_269D0CB60(v33, &qword_280C0BB60, v51);

  *v30 = v34;
  v30[1] = v36;
  sub_269D97720();
  v38 = sub_269D0C704(v33, a2);
  v40 = v39;
  (*(v54 + 8))(v32, v53);
  sub_269D0CB60(v33, &qword_280C0BB60, v37);

  *v31 = v38;
  v31[1] = v40;
  return result;
}

uint64_t SleepScheduleComponentsViewModel.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 20);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0A7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(v5 + 24))(a2 + *(v8 + 20), v7, v4);
  sub_269D0A9B8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t SleepScheduleComponentsViewModel.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 20);
  v4 = sub_269D977A0();
  v7 = *(v4 - 8);
  (*(v7 + 24))(v1 + v3, a1, v4);
  sub_269D0A9B8();
  v5 = *(v7 + 8);

  return v5(a1, v4);
}

uint64_t sub_269D0A9B8()
{
  v1 = v0;
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = sub_269D97580();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v45 - v16;
  v18 = type metadata accessor for SleepScheduleComponentsViewModel();
  v19 = v18;
  if (*(v1 + v18[8]) != 1)
  {
    v23 = (v1 + v18[17]);

    *v23 = 0;
    v23[1] = 0;
    v24 = (v1 + v19[16]);

    *v24 = 0;
    v24[1] = 0;
    return result;
  }

  v47 = v17;
  v45[1] = v18[5];
  (*(v3 + 16))(v5, v1 + v18[11], v2);
  *&v48 = v13;
  sub_269D97150();
  sub_269D97160();
  v20 = v12;
  v21 = v48;
  sub_269D971A0();
  sub_269D971B0();
  sub_269D97720();
  (*(v3 + 8))(v5, v2);
  v22 = *(v21 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    v9 = v11;
LABEL_7:
    sub_269D0CB60(v9, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v27 = (v1 + v19[17]);

    v48 = xmmword_269DA7300;
    *v27 = xmmword_269DA7300;
    v28 = (v1 + v19[16]);

    *v28 = v48;
    return result;
  }

  v26 = *(v21 + 32);
  v26(v47, v11, v12);
  sub_269D0C00C(v9);
  if (v22(v9, 1, v12) == 1)
  {
    (*(v48 + 8))(v47, v12);
    goto LABEL_7;
  }

  v29 = v46;
  v26(v46, v9, v12);
  v30 = *(v1 + v19[12]);
  v31 = sub_269D974B0();
  v32 = v20;
  v33 = [v30 stringFromDate_];

  v34 = sub_269D9A630();
  v36 = v35;

  v37 = (v1 + v19[17]);

  *v37 = v34;
  v37[1] = v36;
  v38 = sub_269D974B0();
  v39 = [v30 stringFromDate_];

  v40 = sub_269D9A630();
  v42 = v41;

  v43 = *(v48 + 8);
  v43(v29, v32);
  v43(v47, v32);
  v44 = (v1 + v19[16]);

  *v44 = v40;
  v44[1] = v42;
  return result;
}

uint64_t (*SleepScheduleComponentsViewModel.gregorianCalendar.modify(void *a1))()
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel();
  return sub_269D0CBBC;
}

id SleepScheduleComponentsViewModel.timeFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 24));

  return v1;
}

uint64_t SleepScheduleComponentsViewModel.timeFormatter.setter(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277CC9578];
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  objc_storeStrong((v1 + v8[6]), a1);
  sub_269D97720();
  v9 = sub_269D0C704(v7, v1);
  v11 = v10;
  sub_269D0CB60(v7, &qword_280C0BB60, v4);
  v12 = (v2 + v8[18]);

  *v12 = v9;
  v12[1] = v11;
  sub_269D97720();
  v13 = sub_269D0C704(v7, v2);
  v15 = v14;

  sub_269D0CB60(v7, &qword_280C0BB60, v4);
  v16 = (v2 + v8[19]);

  *v16 = v13;
  v16[1] = v15;
  return result;
}

void (*SleepScheduleComponentsViewModel.timeFormatter.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  a1[1] = v5;
  a1[2] = type metadata accessor for SleepScheduleComponentsViewModel();
  return sub_269D0B108;
}

void sub_269D0B108(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    v3 = a1[2];
    v4 = *a1;
    sub_269D97720();
    v5 = sub_269D0C704(v2, v4);
    v7 = v6;
    v8 = MEMORY[0x277CC9578];
    sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v9 = (v4 + *(v3 + 72));

    *v9 = v5;
    v9[1] = v7;
    sub_269D97720();
    v10 = sub_269D0C704(v2, v4);
    v12 = v11;
    sub_269D0CB60(v2, &qword_280C0BB60, v8);
    v13 = (v4 + *(v3 + 76));

    *v13 = v10;
    v13[1] = v12;
  }

  free(v2);
}

void *SleepScheduleComponentsViewModel.validScheduleRange.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 28));
  v2 = v1;
  return v1;
}

uint64_t (*SleepScheduleComponentsViewModel.validScheduleRange.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for SleepScheduleComponentsViewModel();
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 28);
  return sub_269D0B2B8;
}

uint64_t sub_269D0B2B8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    v3 = *(result + 8);
    if (*(*result + *(result + 16)))
    {
      v4 = sub_269D09440() & 1;
      result = sub_269D09680();
      v5 = v4 | 2;
      if ((result & 1) == 0)
      {
        v5 = v4;
      }

      *(v2 + v3[15]) = v5;
      if (v5)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_11;
      }

      if (v5)
      {
        v6 = 0;
        v7 = 1;
LABEL_11:
        *(v2 + v3[13]) = v6;
        *(v2 + v3[14]) = v7;
        return result;
      }
    }

    else
    {
      *(v2 + v3[15]) = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  return result;
}

uint64_t (*SleepScheduleComponentsViewModel.includeDayLabelsInHeader.modify(void *a1))()
{
  *a1 = v1;
  type metadata accessor for SleepScheduleComponentsViewModel();
  return sub_269D0CBBC;
}

uint64_t SleepScheduleComponentsViewModel.roundedBedtimeComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 36);
  v4 = sub_269D971F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_269D0B460(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D971F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = type metadata accessor for SleepScheduleComponentsViewModel();
  (*(v5 + 24))(a2 + *(v8 + 36), v7, v4);
  sub_269D0B984();
  return (*(v5 + 8))(v7, v4);
}

void (*SleepScheduleComponentsViewModel.roundedBedtimeComponents.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_269D0C8FC(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  v6 = type metadata accessor for SleepScheduleComponentsViewModel();
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v6 + 36);
  return sub_269D0B624;
}

void sub_269D0B624(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = a1[1];
    goto LABEL_15;
  }

  v3 = a1[2];
  v4 = *a1;
  if (!*(*a1 + v3[7]))
  {
    *(v4 + v3[15]) = 0;
LABEL_13:
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = a1;
  v6 = sub_269D09440() & 1;
  v7 = sub_269D09680();
  v8 = v6 | 2;
  if ((v7 & 1) == 0)
  {
    v8 = v6;
  }

  *(v4 + v3[15]) = v8;
  if (v8)
  {
    v10 = 0;
    v9 = 1;
    goto LABEL_11;
  }

  if (!v8)
  {
    a1 = v5;
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 1;
LABEL_11:
  a1 = v5;
LABEL_14:
  v2 = a1[1];
  *(v4 + v3[13]) = v9;
  *(v4 + v3[14]) = v10;
  sub_269D97720();
  v11 = sub_269D0C704(v2, v4);
  v13 = v12;
  v14 = MEMORY[0x277CC9578];
  sub_269D0CB60(v2, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v15 = (v4 + v3[18]);

  *v15 = v11;
  v15[1] = v13;
  sub_269D97720();
  v16 = sub_269D0C704(v2, v4);
  v18 = v17;
  sub_269D0CB60(v2, &qword_280C0BB60, v14);
  v19 = (v4 + v3[19]);

  *v19 = v16;
  v19[1] = v18;
  sub_269D0A9B8();
LABEL_15:

  free(v2);
}