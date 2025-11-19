uint64_t sub_269CD9628()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalSubscriber;
  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalSubscriber))
  {

    sub_269D98750();
  }

  if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269C2FDFC();
    sub_269CDA5C0();

    v3 = sub_269D98900();
  }

  else
  {
    v3 = 0;
  }

  *(v1 + v2) = v3;

  return sub_269CD9A0C(0);
}

void sub_269CD973C(uint64_t a1)
{
  v2 = sub_269D9A2A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C55300();
  *v5 = sub_269D9AC40();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v8 = sub_269D9A2B0();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v10 = Strong;
  v11 = Strong + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration;
  if (*(Strong + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24))
  {
    v12 = 0;
  }

  else
  {
    v13 = floor(*v11 / 60.0 / 60.0);
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= 9.22337204e18)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v12 = v13;
  }

  v14 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex);
  v15 = __OFADD__(v12, v14);
  v16 = v12 + v14;
  if (v15)
  {
    goto LABEL_21;
  }

  v17 = *(v11 + 16);
  v18 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex);
  v19 = v17 * v18;
  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = 60 * v16;
  if ((v16 * 60) >> 64 != (60 * v16) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = __OFADD__(v20, v19);
  v21 = v20 + v19;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((v7 & 1) != 0 || v6 != v21 * 60.0)
  {
    sub_269CD9A0C(0);
  }
}

uint64_t sub_269CD9A0C(uint64_t result)
{
  v2 = result;
  v3 = v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration;
  if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24))
  {
    v4 = 0;
  }

  else
  {
    v5 = floor(*v3 / 60.0 / 60.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v5 <= -9.22337204e18)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v4 = v5;
  }

  v6 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex);
  v7 = __OFADD__(v4, v6);
  v8 = v4 + v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v3 + 16);
  v10 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = 60 * v8;
  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12 + v11;
  if (__OFADD__(v12, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher))
  {

    sub_269D987C0();

    if ((v15 & 1) == 0 && v14 != v13 * 60.0)
    {
      return sub_269CD94E4(v2 & 1);
    }
  }

  return result;
}

id sub_269CD9B78()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___hourFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___hourFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___hourFormatter);
  }

  else
  {
    v4 = type metadata accessor for ShortHourDateComponentsFormatter();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    [v6 setUnitsStyle_];
    [v6 setAllowedUnits_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_269CD9C48()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___minuteFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___minuteFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___minuteFormatter);
  }

  else
  {
    v4 = type metadata accessor for ShortMinuteDateComponentsFormatter();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options] = 4;
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_269CD9CE4(uint64_t a1, char a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalSubscriber] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___hourFormatter] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___minuteFormatter] = 0;
  v5 = &v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  *v5 = a3;
  v5[1] = a4;
  *(v5 + 2) = a1;
  *(v5 + 24) = a2 & 1;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for TimeIntervalPickerView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setDataSource_];
  [v6 setDelegate_];

  return v6;
}

id sub_269CD9DCC(void *a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalSubscriber] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___hourFormatter] = 0;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView____lazy_storage___minuteFormatter] = 0;
  v3 = sub_269D912B8();
  v4 = &v1[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  *v4 = v5;
  *(v4 + 1) = v6;
  *(v4 + 2) = v3;
  v4[24] = v7 & 1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TimeIntervalPickerView();
  v8 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    [v10 setDataSource_];
    [v10 setDelegate_];
  }

  return v9;
}

id sub_269CD9FF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeIntervalPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269CDA20C(uint64_t a1)
{
  result = sub_269CD9B78();
  v4 = result;
  if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24))
  {
    v5 = 0;
  }

  else
  {
    v6 = floor(*(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration) / 60.0 / 60.0);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (v6 >= 9.22337204e18)
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = v6;
  }

  v7 = __OFADD__(v5, a1);
  v8 = v5 + a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = [result stringFromTimeInterval_];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_269D9A630();

  return v10;
}

unint64_t sub_269CDA5C0()
{
  result = qword_28034FF20;
  if (!qword_28034FF20)
  {
    sub_269C2FDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF20);
  }

  return result;
}

uint64_t sub_269CDA618(uint64_t result, uint64_t a2, char a3)
{
  v6 = &v3[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v7 = v3[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = floor(*v6 / 60.0 / 60.0);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v9 <= -9.22337204e18)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v9 >= 9.22337204e18)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = v9;
  }

  v10 = result - v8;
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [v3 pickerView:v3 numberOfRowsInComponent:v7 << 63 >> 63];
  if (result >= v10 && result >= 1)
  {
    [v3 selectRow:v10 inComponent:(v6[24] << 63) >> 63 animated:0];
    result = sub_269CDA7D8(v10, (v6[24] << 63) >> 63, a3 & 1, v12);
  }

  v13 = *(v6 + 2);
  if (!v13)
  {
    goto LABEL_26;
  }

  if (a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_30;
  }

  v14 = a2 / v13;
  result = [v3 pickerView:v3 numberOfRowsInComponent:~v6[24] & 1];
  if (result >= v14 && result >= 1)
  {
    [v3 selectRow:v14 inComponent:(v6[24] & 1) == 0 animated:0];
    v17 = ~v6[24] & 1;

    return sub_269CDA7D8(v14, v17, a3 & 1, v16);
  }

  return result;
}

uint64_t sub_269CDA7D8(uint64_t result, uint64_t a2, char a3, __n128 a4)
{
  v6 = &v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v7 = v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24];
  if (v7 << 63 >> 63 == a2)
  {
    *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex] = result;
    if ((v7 & 1) == 0)
    {
      v8 = result;
      v9 = a2;
      [v4 reloadComponent_];
      a2 = v9;
      result = v8;
    }
  }

  else if (!(v7 & 1) == a2)
  {
    *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex] = result;
  }

  v10 = *(v6 + 24);
  v11 = v10 & 1;
  if (v10 << 63 >> 63 != a2)
  {
    goto LABEL_39;
  }

  a4.n128_f64[0] = *v6;
  if (v10)
  {
    v12 = v6[1];
    if (result)
    {
      v13 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex];
      if (!v13)
      {
        goto LABEL_25;
      }

LABEL_39:
      if ((a3 & 1) != 0 && *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher])
      {
        if (v11)
        {
          v30 = 0;
        }

        else
        {
          v31 = floor(*v6 / 60.0 / 60.0);
          if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v31 <= -9.22337204e18)
          {
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v31 >= 9.22337204e18)
          {
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v30 = v31;
        }

        v32 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex];
        v19 = __OFADD__(v30, v32);
        v33 = v30 + v32;
        if (!v19)
        {
          v34 = *(v6 + 2);
          v35 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex];
          if ((v34 * v35) >> 64 == (v34 * v35) >> 63)
          {
            if ((v33 * 60) >> 64 == (60 * v33) >> 63)
            {
              if (!__OFADD__(60 * v33, v34 * v35))
              {
LABEL_51:

                sub_269D987B0();
              }

              goto LABEL_69;
            }

LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      return result;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  v14 = floor(a4.n128_f64[0] / 60.0 / 60.0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v15 = v14;
  v16 = result + v14;
  if (__OFADD__(result, v14))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v12 = v6[1];
  v17 = floor(v12 / 60.0 / 60.0);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v13 = v17;
  if (v16 != v17)
  {
    v18 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex];
    v19 = __OFADD__(v15, v18);
    v20 = v15 + v18;
    if (v19)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v20 != v13)
    {
      goto LABEL_39;
    }
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v17 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  v21 = *(v6 + 2);
  v22 = OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex;
  v23 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex];
  v24 = v21 * v23;
  if ((v21 * v23) >> 64 != (v21 * v23) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v25 = 60 * v13;
  if ((v13 * 60) >> 64 != (60 * v13) >> 63)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(v25, v24))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v25 + v24) * 60.0 <= v12)
  {
    goto LABEL_39;
  }

  v26 = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedMinuteIndex] = 0;
  if ((v11 & 1) == 0)
  {
    a4.n128_f64[0] = floor(a4.n128_f64[0] / 60.0 / 60.0);
    if ((a4.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    if (a4.n128_f64[0] <= -9.22337204e18)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (a4.n128_f64[0] >= 9.22337204e18)
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v26 = a4.n128_f64[0];
  }

  v27 = result;
  v28 = *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex];
  result = v26 + v28;
  if (__OFADD__(v26, v28))
  {
    goto LABEL_78;
  }

  result = sub_269CDA618(result, 0, 0, a4);
  if ((a3 & 1) != 0 && *&v4[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher])
  {
    if (v6[3])
    {
      v29 = 0;
    }

    else
    {
      v36 = floor(*v6 / 60.0 / 60.0);
      if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v36 <= -9.22337204e18)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v36 >= 9.22337204e18)
      {
LABEL_91:
        __break(1u);
        return result;
      }

      v29 = v36;
    }

    v19 = __OFADD__(v27, v29);
    v37 = v27 + v29;
    if (v19)
    {
      goto LABEL_86;
    }

    v38 = *(v6 + 2);
    v39 = *&v4[v22];
    if ((v38 * v39) >> 64 != (v38 * v39) >> 63)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if ((v37 * 60) >> 64 != (60 * v37) >> 63)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (!__OFADD__(60 * v37, v38 * v39))
    {
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_63;
  }

  return result;
}

uint64_t sub_269CDACBC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration;
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 24);
  v4 = v3 & 1;
  if (v3 << 63 >> 63 != result)
  {
    if (!(v3 & 1) != result)
    {
      return 0;
    }

    v8 = *v2;
    v7 = *(v2 + 8);
    v9 = *(v2 + 16);
    result = sub_269D910DC(*v2, v7, v9, v4);
    v10 = result + 1;
    if (!__OFADD__(result, 1))
    {
      if (v9)
      {
        result = 0;
        v11 = 0;
        v12 = v8 / 60.0 / 60.0;
        v13 = floor(v12);
        v14 = vcvtmd_s64_f64(v12);
        v15 = v7 / 60.0 / 60.0;
        v16 = vcvtmd_s64_f64(v15);
        v17 = 60 * v16;
        v18 = floor(v15);
LABEL_22:
        v23 = v11;
        while (1)
        {
          v24 = v10 >= v23;
          if (v9 > 0)
          {
            v24 = v23 >= v10;
          }

          if (v24)
          {
            return result;
          }

          v11 = v23 + v9;
          if (__OFADD__(v23, v9))
          {
            v11 = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
            if (v4)
            {
              v11 = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
              v21 = __OFADD__(result++, 1);
              if (!v21)
              {
                goto LABEL_22;
              }

              goto LABEL_52;
            }
          }

          else if (v4)
          {
            goto LABEL_21;
          }

          if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          if (v13 <= -9.22337204e18)
          {
            goto LABEL_44;
          }

          if (v13 >= 9.22337204e18)
          {
            goto LABEL_45;
          }

          v25 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_selectedHourIndex);
          v21 = __OFADD__(v14, v25);
          v26 = v14 + v25;
          if (v21)
          {
            goto LABEL_46;
          }

          if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_47;
          }

          if (v18 <= -9.22337204e18)
          {
            goto LABEL_48;
          }

          if (v18 >= 9.22337204e18)
          {
            goto LABEL_49;
          }

          if (v26 != v16)
          {
            goto LABEL_21;
          }

          if ((v16 * 60) >> 64 != (60 * v16) >> 63)
          {
            goto LABEL_50;
          }

          v21 = __OFADD__(v17, v23);
          v27 = v17 + v23;
          if (v21)
          {
            goto LABEL_51;
          }

          v28 = v27 * 60.0;
          v23 = v11;
          if (v28 <= v7)
          {
            goto LABEL_21;
          }
        }
      }

      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v19 = floor(*(v2 + 8) / 60.0 / 60.0);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v20 = floor(*v2 / 60.0 / 60.0);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v20 <= -9.22337204e18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v20 >= 9.22337204e18)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v5 = v19;
    v6 = v20;
  }

  v21 = __OFSUB__(v5, v6);
  v22 = v5 - v6;
  if (v21)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  result = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t sub_269CDAF90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = 0xD000000000000023;
  v4 = "oarding";
  v5 = a1;
  v6 = 0xD00000000000002DLL;
  if (a1 == 4)
  {
    v7 = ".Sleep.sleepApnea";
  }

  else
  {
    v6 = 0xD000000000000021;
    v7 = ".Sleep.sleepApneaNotification";
  }

  if (a1 == 3)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v9 = ".Sleep.sleepStages";
  }

  else
  {
    v9 = v7;
  }

  v10 = 0xD000000000000026;
  if (v5 == 1)
  {
    v11 = ".Sleep.sleepHygiene";
  }

  else
  {
    v10 = 0xD000000000000022;
    v11 = ".Sleep.sleepImportance";
  }

  if (v5)
  {
    v3 = v10;
  }

  else
  {
    v11 = "oarding";
  }

  if (v5 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (v5 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = ".Sleep.sleepStages";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000002DLL;
      v4 = ".Sleep.sleepApnea";
    }

    else
    {
      v4 = ".Sleep.sleepApneaNotification";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000026;
      v4 = ".Sleep.sleepHygiene";
    }

    else
    {
      v2 = 0xD000000000000022;
      v4 = ".Sleep.sleepImportance";
    }
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_269D9B280();
  }

  return v14 & 1;
}

uint64_t sub_269CDB0F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696472616F626E4FLL;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0xE800000000000000;
    v14 = 0x73676E6974746553;
    v15 = 0xD000000000000012;
    v16 = 0x8000000269DAC400;
    if (a1 != 8)
    {
      v15 = 0xD000000000000021;
      v16 = 0x8000000269DAC420;
    }

    if (a1 != 7)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0x6F63537065656C53;
    v18 = 0xEE006D6F6F526572;
    if (a1 != 5)
    {
      v17 = 0x746567646957;
      v18 = 0xE600000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v18;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x656C756465686353;
    v6 = 0xEE00726F74696445;
    v7 = 0xD000000000000012;
    v8 = 0x8000000269DAC3C0;
    if (a1 != 3)
    {
      v7 = 0x6F6F527065656C53;
      v8 = 0xE90000000000006DLL;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE700000000000000;
    v10 = 0x736E6F6974704FLL;
    if (!a1)
    {
      v10 = 0x696472616F626E4FLL;
      v9 = 0xEA0000000000676ELL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          v2 = 0xE90000000000006DLL;
          if (v11 != 0x6F6F527065656C53)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }

        v19 = "ScheduleOccurrence";
        goto LABEL_35;
      }

      v20 = 0x656C756465686353;
      v21 = 0x726F74696445;
LABEL_43:
      v2 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v20)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x736E6F6974704FLL)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x73676E6974746553)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v19 = "NotificationDetail";
LABEL_35:
      v2 = (v19 - 32) | 0x8000000000000000;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0x8000000269DAC420;
    v3 = 0xD000000000000021;
LABEL_50:
    if (v11 != v3)
    {
LABEL_54:
      v22 = sub_269D9B280();
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if (a2 == 5)
  {
    v20 = 0x6F63537065656C53;
    v21 = 0x6D6F6F526572;
    goto LABEL_43;
  }

  v2 = 0xE600000000000000;
  if (v11 != 0x746567646957)
  {
    goto LABEL_54;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v22 = 1;
LABEL_55:

  return v22 & 1;
}

uint64_t sub_269CDB41C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7065656C536D6572;
    }

    else
    {
      v4 = 0x656B617761;
    }

    if (v2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 1701998435;
      goto LABEL_12;
    }

    if (a1 == 3)
    {
      v3 = 1885693284;
LABEL_12:
      v4 = v3 | 0x65656C5300000000;
      v5 = 0xE900000000000070;
      goto LABEL_14;
    }

    v4 = 0x6669636570736E75;
    v5 = 0xEB00000000646569;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0x7065656C536D6572;
    }

    else
    {
      v10 = 0x656B617761;
    }

    if (a2)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    if (v4 != v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x65656C5370656564;
    v7 = 0xE900000000000070;
    if (a2 != 3)
    {
      v6 = 0x6669636570736E75;
      v7 = 0xEB00000000646569;
    }

    if (a2 == 2)
    {
      v8 = 0x65656C5365726F63;
    }

    else
    {
      v8 = v6;
    }

    if (a2 == 2)
    {
      v9 = 0xE900000000000070;
    }

    else
    {
      v9 = v7;
    }

    if (v4 != v8)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v9)
  {
LABEL_34:
    v11 = sub_269D9B280();
    goto LABEL_35;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

BOOL SleepStagesModel.hasSleepStageData.getter()
{
  v1 = *v0;
  v2 = sub_269CDBD9C(2u, *v0);
  v3 = v2 + sub_269CDBD9C(3u, v1);
  return v3 + sub_269CDBD9C(1u, v1) > 0.0;
}

uint64_t sub_269CDB614(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      if (qword_280C0AE70 == -1)
      {
LABEL_12:
        v2 = qword_280C0D990;
        v1 = sub_269D972C0();

        return v1;
      }
    }

    else if (qword_280C0AE70 == -1)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

  if (a1 == 2 || a1 == 3)
  {
    if (qword_280C0AE70 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_269CDB810(unsigned __int8 a1)
{
  if (a1 >= 4u)
  {

    return 0;
  }

  else
  {
    v2 = sub_269D9B280();

    v3 = 0x65656C5365726F63;
    if (a1 != 2)
    {
      v3 = 0x65656C5370656564;
    }

    v4 = 0x7065656C536D6572;
    if (!a1)
    {
      v4 = 0x656B617761;
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    if (v2)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_269CDB97C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_269D9A9D0();
  if (!v19)
  {
    return sub_269D9A810();
  }

  v41 = v19;
  v45 = sub_269D9B0C0();
  v32 = sub_269D9B0D0();
  sub_269D9B070();
  result = sub_269D9A9C0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_269D9AA40();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_269D9B0B0();
      result = sub_269D9AA10();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_269CDBD9C(unsigned __int8 a1, uint64_t a2)
{
  v58 = type metadata accessor for SleepStageSegment(0);
  v4 = MEMORY[0x28223BE20](v58);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v53 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = *(a2 + 16);
  v55 = v8;
  if (v11)
  {
    v12 = 0xEB00000000646569;
    v13 = 0x6669636570736E75;
    v14 = *(v8 + 72);
    v56 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v57 = v14;
    v15 = a2 + v56;
    v16 = MEMORY[0x277D84F90];
    v17 = a1;
    while (1)
    {
      sub_269CE35D4(v15, v10, type metadata accessor for SleepStageSegment);
      v19 = *v10;
      if (v19 <= 1)
      {
        break;
      }

      v20 = 0x7065656C536D6572;
      if (v19 == 2)
      {
        v23 = 0x65656C5365726F63;
        v24 = 0xE900000000000070;
LABEL_20:
        v22 = 0x65656C5370656564;
        goto LABEL_21;
      }

      v21 = v19 == 3;
      v22 = 0x65656C5370656564;
      if (v21)
      {
        v23 = 0x65656C5370656564;
      }

      else
      {
        v23 = v13;
      }

      if (v21)
      {
        v24 = 0xE900000000000070;
      }

      else
      {
        v24 = v12;
      }

LABEL_21:
      v25 = v13;
      if (v17 != 3)
      {
        v22 = v13;
      }

      v26 = v12;
      if (v17 == 3)
      {
        v27 = 0xE900000000000070;
      }

      else
      {
        v27 = v12;
      }

      if (v17 == 2)
      {
        v22 = 0x65656C5365726F63;
        v27 = 0xE900000000000070;
      }

      if (v17)
      {
        v28 = 0xE800000000000000;
      }

      else
      {
        v20 = 0x656B617761;
        v28 = 0xE500000000000000;
      }

      if (v17 <= 1)
      {
        v29 = v20;
      }

      else
      {
        v29 = v22;
      }

      if (v17 <= 1)
      {
        v30 = v28;
      }

      else
      {
        v30 = v27;
      }

      if (v23 == v29 && v24 == v30)
      {

LABEL_41:
        sub_269CE2950(v10, v59, type metadata accessor for SleepStageSegment);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269C75400(0, *(v16 + 16) + 1, 1);
          v16 = v60;
        }

        v18 = v57;
        v34 = *(v16 + 16);
        v33 = *(v16 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_269C75400(v33 > 1, v34 + 1, 1);
          v18 = v57;
          v16 = v60;
        }

        *(v16 + 16) = v34 + 1;
        sub_269CE2950(v59, v16 + v56 + v34 * v18, type metadata accessor for SleepStageSegment);
        v12 = v26;
        goto LABEL_4;
      }

      v31 = sub_269D9B280();

      if (v31)
      {
        goto LABEL_41;
      }

      sub_269CE2BE4(v10, type metadata accessor for SleepStageSegment);
      v12 = v26;
      v18 = v57;
LABEL_4:
      v15 += v18;
      --v11;
      v13 = v25;
      if (!v11)
      {
        goto LABEL_47;
      }
    }

    v20 = 0x7065656C536D6572;
    if (*v10)
    {
      v23 = 0x7065656C536D6572;
    }

    else
    {
      v23 = 0x656B617761;
    }

    if (*v10)
    {
      v24 = 0xE800000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    goto LABEL_20;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_47:
  v35 = *(v16 + 16);
  if (!v35)
  {

    v36 = MEMORY[0x277D84F90];
    v44 = *(MEMORY[0x277D84F90] + 16);
    if (v44)
    {
      goto LABEL_53;
    }

LABEL_56:
    v46 = 0.0;
    goto LABEL_62;
  }

  v60 = MEMORY[0x277D84F90];
  sub_269C753E0(0, v35, 0);
  v36 = v60;
  v37 = v54;
  v38 = v16 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v39 = *(v55 + 72);
  do
  {
    sub_269CE35D4(v38, v37, type metadata accessor for SleepStageSegment);
    sub_269D96FF0();
    v41 = v40;
    sub_269CE2BE4(v37, type metadata accessor for SleepStageSegment);
    v60 = v36;
    v43 = *(v36 + 16);
    v42 = *(v36 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_269C753E0((v42 > 1), v43 + 1, 1);
      v36 = v60;
    }

    *(v36 + 16) = v43 + 1;
    *(v36 + 8 * v43 + 32) = v41;
    v38 += v39;
    --v35;
  }

  while (v35);

  v44 = *(v36 + 16);
  if (!v44)
  {
    goto LABEL_56;
  }

LABEL_53:
  if (v44 <= 3)
  {
    v45 = 0;
    v46 = 0.0;
LABEL_60:
    v49 = v44 - v45;
    v50 = (v36 + 8 * v45 + 32);
    do
    {
      v51 = *v50++;
      v46 = v46 + v51;
      --v49;
    }

    while (v49);
    goto LABEL_62;
  }

  v45 = v44 & 0x7FFFFFFFFFFFFFFCLL;
  v47 = (v36 + 48);
  v46 = 0.0;
  v48 = v44 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v46 = v46 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
    v47 += 4;
    v48 -= 4;
  }

  while (v48);
  if (v44 != v45)
  {
    goto LABEL_60;
  }

LABEL_62:

  return v46;
}

uint64_t SleepStage.id.getter(unsigned __int8 a1)
{
  v1 = 0x656B617761;
  v2 = 0x65656C5365726F63;
  v3 = 0x65656C5370656564;
  if (a1 != 3)
  {
    v3 = 0x6669636570736E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7065656C536D6572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_269CDC3CC@<X0>(_BYTE *a1@<X8>)
{
  result = _s13SleepHealthUI0A5StageO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_269CDC4BC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656B617761;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = *a2;
  v6 = 0x65656C5365726F63;
  v7 = 0xE900000000000070;
  v8 = 0x65656C5370656564;
  v9 = 0xE900000000000070;
  if (v3 != 3)
  {
    v8 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0x7065656C536D6572;
  if (*a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x656B617761;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  v13 = 0xE500000000000000;
  v14 = 0x65656C5365726F63;
  v15 = 0xE900000000000070;
  v16 = 0x65656C5370656564;
  v17 = 0xE900000000000070;
  if (v5 != 3)
  {
    v16 = 0x6669636570736E75;
    v17 = 0xEB00000000646569;
  }

  if (v5 != 2)
  {
    v14 = v16;
    v15 = v17;
  }

  if (*a2)
  {
    v2 = 0x7065656C536D6572;
    v13 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v15;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_269D9B280();
  }

  return v20 & 1;
}

uint64_t sub_269CDC65C()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269CDC74C()
{
  sub_269D9A6A0();
}

uint64_t sub_269CDC828()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

id sub_269CDC914(char a1)
{
  v1 = [objc_opt_self() *off_279C85EE0[a1]];

  return v1;
}

uint64_t SleepStageSegment.id.getter()
{
  v0 = sub_269D97580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepStageSegment(0);
  sub_269D96FD0();
  sub_269CE27B4(&qword_280C0B3E8, MEMORY[0x277CC9578]);
  v4 = sub_269D9B230();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t SleepStageSegment.init(sleepStage:interval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SleepStageSegment(0) + 20);
  v6 = sub_269D97010();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t static SleepStageSegment.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656B617761;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v7 = 0x7065656C536D6572;
    }

    else
    {
      v7 = 0x656B617761;
    }

    if (v3)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x65656C5370656564;
    v6 = 0xE900000000000070;
    if (v3 != 3)
    {
      v5 = 0x6669636570736E75;
      v6 = 0xEB00000000646569;
    }

    if (v3 == 2)
    {
      v7 = 0x65656C5365726F63;
    }

    else
    {
      v7 = v5;
    }

    if (v3 == 2)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = v6;
    }
  }

  v9 = 0xE500000000000000;
  v10 = 0x65656C5365726F63;
  v11 = 0xE900000000000070;
  v12 = 0x65656C5370656564;
  v13 = 0xE900000000000070;
  if (v4 != 3)
  {
    v12 = 0x6669636570736E75;
    v13 = 0xEB00000000646569;
  }

  if (v4 != 2)
  {
    v10 = v12;
    v11 = v13;
  }

  if (*a2)
  {
    v2 = 0x7065656C536D6572;
    v9 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v10;
  }

  if (*a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v11;
  }

  if (v7 == v14 && v8 == v15)
  {
  }

  else
  {
    v16 = sub_269D9B280();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for SleepStageSegment(0);

  return sub_269D96F80();
}

uint64_t sub_269CDCD4C()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x6174537065656C73;
  }
}

uint64_t sub_269CDCD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174537065656C73 && a2 == 0xEA00000000006567;
  if (v6 || (sub_269D9B280() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_269D9B280();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_269CDCE88(uint64_t a1)
{
  v2 = sub_269CE270C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269CDCEC4(uint64_t a1)
{
  v2 = sub_269CE270C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepStageSegment.encode(to:)(void *a1)
{
  v3 = v1;
  sub_269CE3428(0, &qword_280C0ADA8, sub_269CE270C, &type metadata for SleepStageSegment.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE270C();
  sub_269D9B3B0();
  v14 = *v3;
  v13 = 0;
  sub_269CE2760();
  sub_269D9B220();
  if (!v2)
  {
    type metadata accessor for SleepStageSegment(0);
    v12 = 1;
    sub_269D97010();
    sub_269CE27B4(&unk_280C0B408, MEMORY[0x277CC88A8]);
    sub_269D9B220();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SleepStageSegment.hash(into:)()
{
  sub_269D9A6A0();

  type metadata accessor for SleepStageSegment(0);
  sub_269D97010();
  sub_269CE27B4(&qword_280C0BB98, MEMORY[0x277CC88A8]);
  return sub_269D9A4E0();
}

uint64_t SleepStageSegment.hashValue.getter()
{
  sub_269D9B350();
  sub_269D9A6A0();

  type metadata accessor for SleepStageSegment(0);
  sub_269D97010();
  sub_269CE27B4(&qword_280C0BB98, MEMORY[0x277CC88A8]);
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t SleepStageSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_269D97010();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CE3428(0, &qword_280C0B468, sub_269CE270C, &type metadata for SleepStageSegment.CodingKeys, MEMORY[0x277D844C8]);
  v22 = v5;
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SleepStageSegment(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE270C();
  v11 = v23;
  sub_269D9B3A0();
  if (!v11)
  {
    v23 = v8;
    v13 = v20;
    v12 = v21;
    v25 = 0;
    sub_269CE27FC();
    sub_269D9B1F0();
    v17 = v10;
    *v10 = v26;
    v24 = 1;
    sub_269CE27B4(&qword_280C0BB88, MEMORY[0x277CC88A8]);
    sub_269D9B1F0();
    (*(v13 + 8))(v7, v22);
    v15 = v17;
    (*(v18 + 32))(&v17[*(v23 + 20)], v4, v12);
    sub_269CE2950(v15, v19, type metadata accessor for SleepStageSegment);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_269CDD704(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_269CDB41C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_269D96F80();
}

uint64_t sub_269CDD778()
{
  sub_269D9A6A0();

  sub_269D97010();
  sub_269CE27B4(&qword_280C0BB98, MEMORY[0x277CC88A8]);
  return sub_269D9A4E0();
}

uint64_t sub_269CDD8B0()
{
  sub_269D9B350();
  sub_269D9A6A0();

  sub_269D97010();
  sub_269CE27B4(&qword_280C0BB98, MEMORY[0x277CC88A8]);
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t sub_269CDDA00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_269D97580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D96FD0();
  sub_269CE27B4(&qword_280C0B3E8, MEMORY[0x277CC9578]);
  v6 = sub_269D9B230();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_269CDDB28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_269C41440();
  v4 = v3;
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CE3428(0, &qword_280C0B460, sub_269CE33D4, &type metadata for SleepMetricsWrapper.CodingKeys, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SleepMetricsWrapper(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE33D4();
  v13 = v21;
  sub_269D9B3A0();
  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    sub_269CE27B4(&qword_280C0AF58, sub_269C41440);
    sub_269D9B1F0();
    (*(v14 + 8))(v9, v7);
    (*(v15 + 32))(v12, v20, v4);
    sub_269CE2950(v12, v17, type metadata accessor for SleepMetricsWrapper);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_269CDDE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000269DB10B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_269D9B280();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_269CDDEC0(uint64_t a1)
{
  v2 = sub_269CE33D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269CDDEFC(uint64_t a1)
{
  v2 = sub_269CE33D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269CDDF50(void *a1)
{
  sub_269CE3428(0, &qword_280C0ADA0, sub_269CE33D4, &type metadata for SleepMetricsWrapper.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE33D4();
  sub_269D9B3B0();
  sub_269C41440();
  sub_269CE27B4(&qword_280C0AF60, sub_269C41440);
  sub_269D9B220();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_269CDE0FC()
{
  sub_269C1B0B8(0, &qword_280C0BBB0);
  sub_269CE2A4C(&qword_28034FF68);

  return sub_269D9A2E0();
}

uint64_t sub_269CDE184()
{
  sub_269D9B350();
  sub_269C41440();
  sub_269CE29B8();
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t sub_269CDE1DC()
{
  sub_269C41440();
  sub_269CE29B8();

  return sub_269D9A4E0();
}

uint64_t sub_269CDE230()
{
  sub_269D9B350();
  sub_269C41440();
  sub_269CE29B8();
  sub_269D9A4E0();
  return sub_269D9B390();
}

uint64_t SleepStagesModel.sleepMetrics.getter()
{
  sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for SleepStagesModel(0);
  sub_269CE3554(v0 + *(v4 + 20), v3, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  v5 = type metadata accessor for SleepMetricsWrapper(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_269CE34E4(v3, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
    return 0;
  }

  else
  {
    sub_269C41440();
    v7 = sub_269D9A2D0();
    sub_269CE2BE4(v3, type metadata accessor for SleepMetricsWrapper);
    return v7;
  }
}

uint64_t SleepStagesModel.init(sleepStageSegments:sleepMetrics:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v3 = a2;
  *a3 = a1;
  if (a2)
  {
    v6 = type metadata accessor for SleepStagesModel(0);
    v7 = v6[5];
    sub_269C1B0B8(0, &qword_280C0BBB0);

    v3 = v3;
    sub_269D9A300();
    v8 = type metadata accessor for SleepMetricsWrapper(0);
    (*(*(v8 - 8) + 56))(&a3[v7], 0, 1, v8);
  }

  else
  {
    v6 = type metadata accessor for SleepStagesModel(0);
    v9 = v6[5];
    v10 = type metadata accessor for SleepMetricsWrapper(0);
    (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  }

  type metadata accessor for SleepStagesModel(0);
  sub_269CDEBE8(a1, &a3[v6[6]]);
  v11 = sub_269CDF6F8(a1, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment);

  *&a3[v6[7]] = v11;
  return result;
}

uint64_t sub_269CDE604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = sub_269D97580();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v70 = type metadata accessor for SleepDayModel.SegmentModel(0);
  v10 = *(v70 - 8);
  v11 = MEMORY[0x28223BE20](v70);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = (&v57 - v14);
  v15 = sub_269D97010();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](&v57 - v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v26 = &v57 - v25;
  v27 = *(a1 + 16);
  if (v27)
  {
    v59 = v13;
    v60 = a2;
    v64 = v20;
    v65 = v23;
    v61 = v24;
    v66 = v7;
    v67 = v22;
    v63 = v9;
    v74 = MEMORY[0x277D84F90];
    v71 = v21;
    sub_269C75450(0, v27, 0);
    v28 = v74;
    v29 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v68 = *(v10 + 72);
    v30 = (v71 + 16);
    v73 = v71 + 32;
    v58 = v29;
    v31 = v15;
    do
    {
      v32 = v69;
      sub_269CE35D4(v29, v69, type metadata accessor for SleepDayModel.SegmentModel);
      v33 = v32 + *(v70 + 20);
      v34 = v30;
      v72 = *v30;
      v72(v26, v33, v31);
      sub_269CE2BE4(v32, type metadata accessor for SleepDayModel.SegmentModel);
      v74 = v28;
      v35 = v31;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_269C75450(v36 > 1, v37 + 1, 1);
        v28 = v74;
      }

      *(v28 + 16) = v37 + 1;
      v38 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v39 = *(v71 + 72);
      v40 = *(v71 + 32);
      v40(v28 + v38 + v39 * v37, v26, v35);
      v29 += v68;
      --v27;
      v31 = v35;
      v30 = v34;
    }

    while (v27);
    v41 = v59;
    sub_269CE35D4(v58, v59, type metadata accessor for SleepDayModel.SegmentModel);
    v42 = v61;
    v43 = v72;
    v72(v61, v41 + *(v70 + 20), v31);
    sub_269CE2BE4(v41, type metadata accessor for SleepDayModel.SegmentModel);
    v44 = v67;
    v68 = v31;
    v43(v67, v42, v31);
    v45 = *(v28 + 16);
    v70 = v71 + 8;
    if (v45)
    {
      v46 = v28 + v38;
      v58 = v28;
      v59 = (v70 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v69 = v30;
      v47 = v68;
      v62 = v40;
      v48 = v65;
      do
      {
        v49 = v64;
        v72(v64, v46, v47);
        v50 = v67;
        sub_269D96FD0();
        sub_269D96FA0();
        sub_269D96FB0();
        v51 = *v70;
        v52 = v49;
        v40 = v62;
        (*v70)(v52, v47);
        v51(v50, v47);
        v40(v50, v48, v47);
        v46 += v39;
        --v45;
      }

      while (v45);
      v44 = v67;
      v42 = v61;
    }

    else
    {
      v51 = *v70;
    }

    v55 = v68;
    v51(v42, v68);

    v56 = v60;
    v40(v60, v44, v55);
    return (*(v71 + 56))(v56, 0, 1, v55);
  }

  else
  {
    v53 = *(v21 + 56);

    return v53(a2, 1, 1, v15);
  }
}

uint64_t sub_269CDEBE8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_269D97580();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v58 - v8;
  v70 = type metadata accessor for SleepStageSegment(0);
  v10 = *(v70 - 8);
  v11 = MEMORY[0x28223BE20](v70);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = (v58 - v14);
  v15 = sub_269D97010();
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v58 - v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v26 = v58 - v25;
  v27 = *(a1 + 16);
  if (v27)
  {
    v63 = v13;
    v64 = v9;
    v59 = v20;
    v60 = a2;
    v61 = v24;
    v65 = v23;
    v66 = v7;
    v67 = v22;
    v71 = v21;
    v72 = MEMORY[0x277D84F90];
    sub_269C75450(0, v27, 0);
    v28 = v72;
    v29 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v68 = *(v10 + 72);
    v30 = (v71 + 32);
    v62 = v29;
    v31 = v29;
    v32 = v15;
    do
    {
      v33 = v69;
      sub_269CE35D4(v31, v69, type metadata accessor for SleepStageSegment);
      v34 = *v30;
      (*v30)(v26, v33 + *(v70 + 20), v32);
      v72 = v28;
      v35 = v32;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_269C75450(v36 > 1, v37 + 1, 1);
        v28 = v72;
      }

      *(v28 + 16) = v37 + 1;
      v38 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v39 = *(v71 + 72);
      v34((v28 + v38 + v39 * v37), v26, v35);
      v31 += v68;
      --v27;
      v32 = v35;
    }

    while (v27);
    v68 = v34;
    v69 = v30;
    v40 = v63;
    sub_269CE35D4(v62, v63, type metadata accessor for SleepStageSegment);
    v42 = v71 + 16;
    v41 = *(v71 + 16);
    v43 = v61;
    v41(v61, &v40[*(v70 + 20)], v32);
    v44 = v40;
    v45 = v41;
    sub_269CE2BE4(v44, type metadata accessor for SleepStageSegment);
    v46 = v67;
    v45(v67, v43, v32);
    v47 = *(v28 + 16);
    v70 = v42 - 8;
    if (v47)
    {
      v48 = v32;
      v49 = v28 + v38;
      v58[0] = v28;
      v58[1] = v70 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v62 = v42;
      v63 = v45;
      v50 = v59;
      v51 = v67;
      v52 = v65;
      do
      {
        (v63)(v50, v49, v48);
        sub_269D96FD0();
        sub_269D96FA0();
        sub_269D96FB0();
        v53 = *v70;
        (*v70)(v50, v48);
        v53(v51, v48);
        v68(v51, v52, v48);
        v49 += v39;
        --v47;
      }

      while (v47);
      v32 = v48;
      v46 = v67;
      v43 = v61;
    }

    else
    {
      v53 = *v70;
    }

    v53(v43, v32);

    v56 = v32;
    v57 = v60;
    v68(v60, v46, v56);
    return (*(v71 + 56))(v57, 0, 1, v56);
  }

  else
  {
    v54 = *(v21 + 56);

    return v54(a2, 1, 1, v15);
  }
}

uint64_t Collection<>.mergedIntervals()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v55 = a4;
  v6 = sub_269D97580();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = v49 - v9;
  v10 = sub_269D97010();
  v57 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v49 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v49 - v18;
  MEMORY[0x28223BE20](v17);
  v56 = v49 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_269D9AE60();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v49 - v23;
  v25 = sub_269D9A9D0();
  if (v25 < 1)
  {
    v46 = *(v57 + 56);
    v47 = v55;

    return v46(v47, 1, 1, v10);
  }

  else
  {
    v50 = v13;
    v51 = v16;
    v52 = v19;
    MEMORY[0x28223BE20](v25);
    v49[-4] = a1;
    v49[-3] = a2;
    v49[-2] = v61;
    v26 = a2;
    v27 = v10;
    v29 = sub_269CDB97C(sub_269CE2850, &v49[-6], a1, v10, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v28);
    sub_269D9AA20();
    v30 = *(AssociatedTypeWitness - 8);
    result = (*(v30 + 48))(v24, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v32 = v56;
      (*(v61 + 8))(AssociatedTypeWitness);
      (*(v30 + 8))(v24, AssociatedTypeWitness);
      v33 = v57 + 16;
      v34 = *(v57 + 16);
      v35 = v52;
      v54 = v27;
      v34(v52, v32, v27);
      v36 = *(v29 + 16);
      if (v36)
      {
        v37 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v61 = v33;
        v38 = v29 + v37;
        v39 = *(v57 + 72);
        v40 = (v57 + 8);
        v59 = (v57 + 32);
        v60 = v39;
        v49[0] = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v49[1] = v29;
        v42 = v50;
        v41 = v51;
        v43 = v54;
        v58 = v34;
        do
        {
          v58(v41, v38, v43);
          sub_269D96FD0();
          sub_269D96FA0();
          sub_269D96FB0();
          v44 = *v40;
          (*v40)(v41, v43);
          v44(v35, v43);
          (*v59)(v35, v42, v43);
          v38 += v60;
          --v36;
        }

        while (v36);

        v45 = v55;
      }

      else
      {

        v44 = *(v57 + 8);
        v45 = v55;
      }

      v48 = v54;
      v44(v56, v54);
      (*(v57 + 32))(v45, v35, v48);
      return (*(v57 + 56))(v45, 0, 1, v48);
    }
  }

  return result;
}

double sub_269CDF6F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v26 = a4;
  v6 = a2(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v27 = MEMORY[0x277D84F90];
    sub_269C753E0(0, v10, 0);
    v11 = v27;
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_269CE35D4(v12, v9, a3);
      sub_269D96FF0();
      v15 = v14;
      sub_269CE2BE4(v9, v26);
      v27 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_269C753E0((v16 > 1), v17 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v18;
      *(v11 + 8 * v17 + 32) = v15;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      v20 = 0.0;
      goto LABEL_15;
    }
  }

  if (v18 <= 3)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_13:
    v23 = v18 - v19;
    v24 = 8 * v19 + 32;
    do
    {
      v20 = v20 + *(v11 + v24);
      v24 += 8;
      --v23;
    }

    while (v23);
    goto LABEL_15;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v11 + 48);
  v20 = 0.0;
  v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
    v21 += 4;
    v22 -= 4;
  }

  while (v22);
  if (v18 != v19)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v20;
}

double Collection<>.totalDuration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v8 = sub_269CDB97C(sub_269CE28D8, v18, a1, MEMORY[0x277D839F8], MEMORY[0x277D84A98], a2, MEMORY[0x277D84AC0], a8);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v11 = 0.0;
    goto LABEL_10;
  }

  if (v9 <= 3)
  {
    v10 = 0;
    v11 = 0.0;
LABEL_8:
    v14 = v9 - v10;
    v15 = (v8 + 8 * v10 + 32);
    do
    {
      v16 = *v15++;
      v11 = v11 + v16;
      --v14;
    }

    while (v14);
    goto LABEL_10;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = (v8 + 48);
  v11 = 0.0;
  v13 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11 = v11 + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
    v12 += 4;
    v13 -= 4;
  }

  while (v13);
  if (v9 != v10)
  {
    goto LABEL_8;
  }

LABEL_10:

  return v11;
}

unint64_t sub_269CDFA20()
{
  v1 = 0x746E497065656C73;
  if (*v0 != 2)
  {
    v1 = 0x7275446C61746F74;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_269CDFAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_269CE3250(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_269CDFAEC(uint64_t a1)
{
  v2 = sub_269CE28FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269CDFB28(uint64_t a1)
{
  v2 = sub_269CE28FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepStagesModel.encode(to:)(void *a1)
{
  v3 = v1;
  sub_269CE3428(0, &qword_280C0ADB0, sub_269CE28FC, &type metadata for SleepStagesModel.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE28FC();
  sub_269D9B3B0();
  v12 = *v3;
  v11[15] = 0;
  sub_269C1AF2C(0, &qword_280C0BBB8, type metadata accessor for SleepStageSegment, MEMORY[0x277D83940]);
  sub_269CE2AA0(&qword_280C0AF40, &qword_280C0B3C0);
  sub_269D9B220();
  if (!v2)
  {
    type metadata accessor for SleepStagesModel(0);
    v11[14] = 1;
    type metadata accessor for SleepMetricsWrapper(0);
    sub_269CE27B4(&qword_280C0B3B0, type metadata accessor for SleepMetricsWrapper);
    sub_269D9B200();
    v11[13] = 2;
    sub_269D97010();
    sub_269CE27B4(&unk_280C0B408, MEMORY[0x277CC88A8]);
    sub_269D9B200();
    v11[12] = 3;
    sub_269D9B210();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SleepStagesModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269D97010();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SleepMetricsWrapper(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, v6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  sub_269C9BF50(a1, *v2);
  v17 = type metadata accessor for SleepStagesModel(0);
  sub_269CE3554(v2 + v17[5], v16, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    sub_269CE2950(v16, v13, type metadata accessor for SleepMetricsWrapper);
    sub_269D9B370();
    sub_269C41440();
    sub_269CE29B8();
    sub_269D9A4E0();
    sub_269CE2BE4(v13, type metadata accessor for SleepMetricsWrapper);
  }

  sub_269CE3554(v2 + v17[6], v9, &qword_280C0BD88, MEMORY[0x277CC88A8]);
  v19 = v25;
  v18 = v26;
  if ((*(v25 + 48))(v9, 1, v26) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    v20 = v24;
    (*(v19 + 32))(v24, v9, v18);
    sub_269D9B370();
    sub_269CE27B4(&qword_280C0BB98, MEMORY[0x277CC88A8]);
    sub_269D9A4E0();
    (*(v19 + 8))(v20, v18);
  }

  v21 = *(v2 + v17[7]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  return MEMORY[0x26D6515D0](*&v21);
}

uint64_t SleepStagesModel.hashValue.getter()
{
  sub_269D9B350();
  SleepStagesModel.hash(into:)(v1);
  return sub_269D9B390();
}

uint64_t SleepStagesModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = v24 - v5;
  sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  sub_269CE3428(0, &qword_280C0B470, sub_269CE28FC, &type metadata for SleepStagesModel.CodingKeys, MEMORY[0x277D844C8]);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for SleepStagesModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_269CE28FC();
  v29 = v11;
  v15 = v30;
  sub_269D9B3A0();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = v8;
  v16 = v27;
  v17 = v14;
  sub_269C1AF2C(0, &qword_280C0BBB8, type metadata accessor for SleepStageSegment, MEMORY[0x277D83940]);
  v34 = 0;
  sub_269CE2AA0(&qword_280C0B510, &qword_280C0B9C0);
  v18 = v28;
  sub_269D9B1F0();
  v24[1] = v35;
  *v17 = v35;
  type metadata accessor for SleepMetricsWrapper(0);
  v33 = 1;
  sub_269CE27B4(&qword_280C0B8E8, type metadata accessor for SleepMetricsWrapper);
  v19 = v30;
  sub_269D9B1D0();
  sub_269CE2B64(v19, v17 + v12[5], &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  sub_269D97010();
  v32 = 2;
  sub_269CE27B4(&qword_280C0BB88, MEMORY[0x277CC88A8]);
  v20 = v26;
  v30 = 0;
  sub_269D9B1D0();
  sub_269CE2B64(v20, v17 + v12[6], &qword_280C0BD88, MEMORY[0x277CC88A8]);
  v31 = 3;
  sub_269D9B1E0();
  v22 = v21;
  (*(v16 + 8))(v29, v18);
  *(v17 + v12[7]) = v22;
  sub_269CE35D4(v17, v25, type metadata accessor for SleepStagesModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_269CE2BE4(v17, type metadata accessor for SleepStagesModel);
}

uint64_t sub_269CE08E8()
{
  sub_269D9B350();
  SleepStagesModel.hash(into:)(v1);
  return sub_269D9B390();
}

uint64_t sub_269CE092C()
{
  sub_269D9B350();
  SleepStagesModel.hash(into:)(v1);
  return sub_269D9B390();
}

void sub_269CE0968(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = [v1 averageREMSleepDuration];
      if (!v2)
      {
        return;
      }

      goto LABEL_12;
    }

    v2 = [v1 averageAwakeDuration];
    if (v2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v2 = [v1 averageDeepSleepDuration];
        if (!v2)
        {
          return;
        }
      }

      else
      {
        v2 = [v1 averageUnspecifiedSleepDuration];
        if (!v2)
        {
          return;
        }
      }

LABEL_12:
      v3 = v2;
      [v2 _value];

      return;
    }

    v2 = [v1 averageCoreSleepDuration];
    if (v2)
    {
      goto LABEL_12;
    }
  }
}

uint64_t HKSleepDaySummary.sleepStagesModel.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_269CE0CA8();
  v4 = objc_opt_self();
  sub_269CE2CC4(0, &qword_280C0AD70, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_269DA2A30;
  *(v5 + 32) = v1;
  sub_269C1B0B8(0, &qword_280C0AED8);
  v6 = v1;
  v7 = sub_269D9A7D0();

  v8 = [v4 sleepMetricsForDaySummaries_];

  *a1 = v3;
  v9 = type metadata accessor for SleepStagesModel(0);
  v10 = v9[5];
  if (v8)
  {
    sub_269C1B0B8(0, &qword_280C0BBB0);

    v11 = v8;
    sub_269D9A300();
    v12 = type metadata accessor for SleepMetricsWrapper(0);
    (*(*(v12 - 8) + 56))(&a1[v10], 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for SleepMetricsWrapper(0);
    (*(*(v13 - 8) + 56))(&a1[v10], 1, 1, v13);
  }

  sub_269CDEBE8(v3, &a1[v9[6]]);
  v14 = sub_269CDF6F8(v3, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment, type metadata accessor for SleepStageSegment);

  *&a1[v9[7]] = v14;
  return result;
}

void *sub_269CE0CA8()
{
  v1 = v0;
  v76 = sub_269D97580();
  v2 = *(v76 - 8);
  v3 = MEMORY[0x28223BE20](v76);
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v65 - v5;
  v6 = type metadata accessor for SleepStageSegment(0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v65 - v14;
  v79 = sub_269D97010();
  v15 = *(v79 - 8);
  v16 = MEMORY[0x28223BE20](v79);
  v73 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v95 = &v65 - v18;
  sub_269C1AF2C(0, &qword_280C0B9B0, type metadata accessor for SleepStageSegment, MEMORY[0x277D83D88]);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = *(v7 + 56);
  v93 = &v65 - v24;
  v87 = v23;
  v88 = v7 + 56;
  v23();
  v25 = [v1 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8);
  v26 = sub_269D9A7E0();

  v67 = v26;
  if (v26 >> 62)
  {
    goto LABEL_94;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v79;
  if (v27)
  {
LABEL_3:
    v29 = 0;
    v69 = v67 & 0xC000000000000001;
    v66 = v67 & 0xFFFFFFFFFFFFFF8;
    v65 = v67 + 32;
    v86 = (v7 + 48);
    v75 = (v2 + 8);
    v91 = (v15 + 8);
    v72 = (v15 + 32);
    v94 = MEMORY[0x277D84F90];
    v84 = (v15 + 16);
    v85 = v22;
    v77 = v13;
    v78 = v10;
    v68 = v27;
    v74 = v6;
    while (1)
    {
      if (v69)
      {
        v30 = MEMORY[0x26D651260](v29, v67);
      }

      else
      {
        if (v29 >= *(v66 + 16))
        {
          goto LABEL_93;
        }

        v30 = *(v65 + 8 * v29);
      }

      v15 = v30;
      v31 = __OFADD__(v29, 1);
      v32 = v29 + 1;
      if (v31)
      {
        goto LABEL_91;
      }

      v33 = [v30 segments];
      sub_269C1B0B8(0, &qword_280C0B4C0);
      v34 = sub_269D9A7E0();

      v2 = v34;
      v71 = v32;
      v35 = v34 >> 62 ? sub_269D9AF50() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v70 = v15;
      if (v35)
      {
        break;
      }

LABEL_4:

      v29 = v71;
      if (v71 == v68)
      {
        goto LABEL_96;
      }
    }

    if (v35 < 1)
    {
      goto LABEL_92;
    }

    v36 = 0;
    v92 = v2 & 0xC000000000000001;
    v89 = v35;
    v90 = v2;
    while (1)
    {
      if (v92)
      {
        v37 = MEMORY[0x26D651260](v36, v2);
      }

      else
      {
        v37 = *(v2 + 8 * v36 + 32);
      }

      v15 = v37;
      v38 = [v37 category];
      if (v38 > 2)
      {
        switch(v38)
        {
          case 3:
            v39 = 2;
            goto LABEL_32;
          case 4:
            v39 = 3;
LABEL_32:
            v40 = [v15 dateInterval];
            sub_269D96F90();

            sub_269CE3554(v93, v22, &qword_280C0B9B0, type metadata accessor for SleepStageSegment);
            if ((*v86)(v22, 1, v6) == 1)
            {
              sub_269CE34E4(v22, &qword_280C0B9B0, type metadata accessor for SleepStageSegment);
LABEL_82:
              (*v84)(&v13[*(v6 + 5)], v95, v28);
              *v13 = v39;
              sub_269CE35D4(v13, v10, type metadata accessor for SleepStageSegment);
              v59 = v94;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_269D6218C(0, v59[2] + 1, 1, v59);
              }

              v61 = v59[2];
              v60 = v59[3];
              if (v61 >= v60 >> 1)
              {
                v94 = sub_269D6218C(v60 > 1, v61 + 1, 1, v59);
              }

              else
              {
                v94 = v59;
              }

              (*v91)(v95, v28);
              v62 = v93;
              sub_269CE34E4(v93, &qword_280C0B9B0, type metadata accessor for SleepStageSegment);
              v63 = v94;
              v94[2] = v61 + 1;
              sub_269CE2950(v10, v63 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v61, type metadata accessor for SleepStageSegment);
              sub_269CE2950(v13, v62, type metadata accessor for SleepStageSegment);
              (v87)(v62, 0, 1, v6);
              v22 = v85;
              v35 = v89;
              v2 = v90;
              goto LABEL_16;
            }

            v41 = v83;
            sub_269CE2950(v22, v83, type metadata accessor for SleepStageSegment);
            v42 = *v41;
            if (v42 <= 1)
            {
              if (*v41)
              {
                v44 = 0x7065656C536D6572;
              }

              else
              {
                v44 = 0x656B617761;
              }

              if (*v41)
              {
                v45 = 0xE800000000000000;
              }

              else
              {
                v45 = 0xE500000000000000;
              }

              v43 = 0xEB00000000646569;
            }

            else
            {
              v43 = 0xEB00000000646569;
              if (v42 == 2)
              {
                v44 = 0x65656C5365726F63;
                v45 = 0xE900000000000070;
              }

              else
              {
                if (v42 == 3)
                {
                  v44 = 0x65656C5370656564;
                }

                else
                {
                  v44 = 0x6669636570736E75;
                }

                if (v42 == 3)
                {
                  v45 = 0xE900000000000070;
                }

                else
                {
                  v45 = 0xEB00000000646569;
                }
              }
            }

            if (v39 == 3)
            {
              v46 = 0x65656C5370656564;
            }

            else
            {
              v46 = 0x6669636570736E75;
            }

            if (v39 == 3)
            {
              v43 = 0xE900000000000070;
            }

            if (v39 == 2)
            {
              v46 = 0x65656C5365726F63;
              v43 = 0xE900000000000070;
            }

            if (v39)
            {
              v47 = 0x7065656C536D6572;
            }

            else
            {
              v47 = 0x656B617761;
            }

            if (v39)
            {
              v48 = 0xE800000000000000;
            }

            else
            {
              v48 = 0xE500000000000000;
            }

            if (v39 <= 1)
            {
              v49 = v47;
            }

            else
            {
              v49 = v46;
            }

            if (v39 <= 1)
            {
              v50 = v48;
            }

            else
            {
              v50 = v43;
            }

            if (v44 == v49 && v45 == v50)
            {

              goto LABEL_73;
            }

            v51 = sub_269D9B280();

            if (v51)
            {
LABEL_73:
              v80 = *(v6 + 5);
              v6 = v81;
              sub_269D96FA0();
              v52 = v82;
              sub_269D96FD0();
              v2 = sub_269D97530();
              v13 = v75;
              v22 = *v75;
              v53 = v52;
              v10 = v76;
              (*v75)(v53, v76);
              (v22)(v6, v10);
              if (v2)
              {
                if (!v94[2])
                {
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
                  v27 = sub_269D9AF50();
                  v28 = v79;
                  if (!v27)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_3;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v94 = sub_269D198E0(v94);
                }

                v54 = v83;
                v6 = v94;
                v55 = v94[2];
                if (!v55)
                {
                  goto LABEL_90;
                }

                v56 = v55 - 1;
                sub_269CE2BE4(v94 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v55 - 1), type metadata accessor for SleepStageSegment);
                v6[2] = v56;
                sub_269D96FD0();
                v57 = v95;
                sub_269D96FA0();
                v58 = v73;
                sub_269D96FB0();
                sub_269CE2BE4(v54, type metadata accessor for SleepStageSegment);
                v28 = v79;
                (*v91)(v57, v79);
                (*v72)(v57, v58, v28);
                v6 = v74;
                v13 = v77;
                v10 = v78;
                goto LABEL_82;
              }

              sub_269CE2BE4(v41, type metadata accessor for SleepStageSegment);
              v6 = v74;
            }

            else
            {
              sub_269CE2BE4(v41, type metadata accessor for SleepStageSegment);
            }

            v13 = v77;
            v10 = v78;
            v28 = v79;
            goto LABEL_82;
          case 5:
            v39 = 1;
            goto LABEL_32;
        }
      }

      else if (v38)
      {
        if (v38 == 1)
        {
          v39 = 4;
          goto LABEL_32;
        }

        if (v38 == 2)
        {
          v39 = 0;
          goto LABEL_32;
        }
      }

LABEL_16:
      if (v35 == ++v36)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_95:
  v94 = MEMORY[0x277D84F90];
LABEL_96:

  sub_269CE34E4(v93, &qword_280C0B9B0, type metadata accessor for SleepStageSegment);
  return v94;
}

uint64_t sub_269CE1844@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepStageSegment(0) + 20);
  v4 = sub_269D97010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t HKSleepDaySummary.sleepPeriodRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269D97010();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97580();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v43 = v40 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v41 = v40 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v42 = v40 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v40 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v40 - v21;
  v23 = [v2 periods];
  sub_269C1B0B8(0, &qword_280C0B4C8);
  v24 = sub_269D9A7E0();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:

    return sub_269D97000();
  }

  result = sub_269D9AF50();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  v40[1] = a1;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x26D651260](0, v24);
  }

  else
  {
    if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v26 = *(v24 + 32);
  }

  v27 = v26;

  v28 = [v27 dateInterval];

  sub_269D96F90();
  sub_269D96FD0();
  v29 = *(v46 + 8);
  v46 += 8;
  v40[0] = v29;
  v29(v7, v45);
  v24 = *(v9 + 32);
  (v24)(v22, v20, v8);
  v30 = [v2 periods];
  v20 = sub_269D9A7E0();

  if (!(v20 >> 62))
  {
    v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v31 = sub_269D9AF50();
  if (!v31)
  {
LABEL_18:

    (*(v9 + 8))(v22, v8);
    return sub_269D97000();
  }

LABEL_8:
  v32 = __OFSUB__(v31, 1);
  result = v31 - 1;
  if (v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v33 = MEMORY[0x26D651260](result, v20);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v33 = *(v20 + 8 * result + 32);
LABEL_13:
    v34 = v33;

    v35 = [v34 dateInterval];

    sub_269D96F90();
    v36 = v41;
    sub_269D96FA0();
    (v40[0])(v7, v45);
    v37 = v42;
    (v24)(v42, v36, v8);
    v38 = *(v9 + 16);
    v38(v43, v22, v8);
    v38(v44, v37, v8);
    sub_269D96FB0();
    v39 = *(v9 + 8);
    v39(v37, v8);
    return (v39)(v22, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_269CE1DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_269D97010();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_269CE1E18@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v12 = a2;
  v3 = sub_269D97010();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7(AssociatedTypeWitness, a1);
  sub_269D96FF0();
  v10 = v9;
  result = (*(v4 + 8))(v6, v3);
  *v12 = v10;
  return result;
}

BOOL _s13SleepHealthUI0A11StagesModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v56 = sub_269D97010();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC88A8];
  v7 = MEMORY[0x277D83D88];
  sub_269C1AF2C(0, &qword_280C0BD88, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v47 - v9;
  sub_269CE363C(0, &qword_280C0B400, &qword_280C0BD88, v6);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v47 - v12;
  v13 = type metadata accessor for SleepMetricsWrapper(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C1AF2C(0, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper, v7);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  sub_269CE363C(0, &qword_280C0B3A8, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  v21 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  if ((sub_269C98258(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v48 = v11;
  v52 = v4;
  v24 = type metadata accessor for SleepStagesModel(0);
  v25 = *(v24 + 20);
  v26 = *(v21 + 48);
  v49 = v24;
  v50 = a1;
  sub_269CE3554(a1 + v25, v23, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  v51 = a2;
  sub_269CE3554(a2 + v25, &v23[v26], &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
  v27 = *(v14 + 48);
  if (v27(v23, 1, v13) != 1)
  {
    sub_269CE3554(v23, v19, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
    if (v27(&v23[v26], 1, v13) != 1)
    {
      sub_269CE2950(&v23[v26], v16, type metadata accessor for SleepMetricsWrapper);
      sub_269C1B0B8(0, &qword_280C0BBB0);
      sub_269CE2A4C(&qword_28034FF68);
      v32 = sub_269D9A2E0();
      sub_269CE2BE4(v16, type metadata accessor for SleepMetricsWrapper);
      sub_269CE2BE4(v19, type metadata accessor for SleepMetricsWrapper);
      sub_269CE34E4(v23, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_269CE2BE4(v19, type metadata accessor for SleepMetricsWrapper);
LABEL_7:
    v28 = &qword_280C0B3A8;
    v29 = &qword_280C0BC20;
    v30 = type metadata accessor for SleepMetricsWrapper;
    v31 = v23;
LABEL_15:
    sub_269CE36B4(v31, v28, v29, v30);
    return 0;
  }

  if (v27(&v23[v26], 1, v13) != 1)
  {
    goto LABEL_7;
  }

  sub_269CE34E4(v23, &qword_280C0BC20, type metadata accessor for SleepMetricsWrapper);
LABEL_9:
  v33 = v49;
  v34 = *(v49 + 24);
  v35 = *(v48 + 48);
  v36 = MEMORY[0x277CC88A8];
  v37 = v50;
  v38 = v55;
  sub_269CE3554(v50 + v34, v55, &qword_280C0BD88, MEMORY[0x277CC88A8]);
  sub_269CE3554(v51 + v34, v38 + v35, &qword_280C0BD88, v36);
  v39 = *(v52 + 48);
  v40 = v56;
  if (v39(v38, 1, v56) == 1)
  {
    if (v39(v38 + v35, 1, v40) == 1)
    {
      sub_269CE34E4(v38, &qword_280C0BD88, MEMORY[0x277CC88A8]);
      return *(v37 + *(v33 + 28)) == *(v51 + *(v33 + 28));
    }

    goto LABEL_14;
  }

  v41 = v54;
  sub_269CE3554(v38, v54, &qword_280C0BD88, MEMORY[0x277CC88A8]);
  if (v39(v38 + v35, 1, v40) == 1)
  {
    (*(v52 + 8))(v41, v40);
LABEL_14:
    v28 = &qword_280C0B400;
    v29 = &qword_280C0BD88;
    v30 = MEMORY[0x277CC88A8];
    v31 = v38;
    goto LABEL_15;
  }

  v43 = v52;
  v44 = v53;
  (*(v52 + 32))(v53, v38 + v35, v40);
  sub_269CE27B4(&qword_280C0BB90, MEMORY[0x277CC88A8]);
  v45 = sub_269D9A560();
  v46 = *(v43 + 8);
  v46(v44, v40);
  v46(v41, v40);
  sub_269CE34E4(v38, &qword_280C0BD88, MEMORY[0x277CC88A8]);
  if (v45)
  {
    return *(v37 + *(v33 + 28)) == *(v51 + *(v33 + 28));
  }

  return 0;
}

uint64_t _s13SleepHealthUI0A5StageO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_269D9B1C0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_269CE270C()
{
  result = qword_280C0B9E8;
  if (!qword_280C0B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9E8);
  }

  return result;
}

unint64_t sub_269CE2760()
{
  result = qword_280C0B2B0;
  if (!qword_280C0B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B2B0);
  }

  return result;
}

uint64_t sub_269CE27B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269CE27FC()
{
  result = qword_280C0B8D8;
  if (!qword_280C0B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B8D8);
  }

  return result;
}

uint64_t sub_269CE2850()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v2(AssociatedTypeWitness, v1);
}

unint64_t sub_269CE28FC()
{
  result = qword_280C0BA00[0];
  if (!qword_280C0BA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C0BA00);
  }

  return result;
}

uint64_t sub_269CE2950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269CE29B8()
{
  result = qword_28034FF28;
  if (!qword_28034FF28)
  {
    sub_269C41440();
    sub_269CE2A4C(&qword_28034FF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF28);
  }

  return result;
}

uint64_t sub_269CE2A4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_269C1B0B8(255, &qword_280C0BBB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269CE2AA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_269C1AF2C(255, &qword_280C0BBB8, type metadata accessor for SleepStageSegment, MEMORY[0x277D83940]);
    sub_269CE27B4(a2, type metadata accessor for SleepStageSegment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269CE2B64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269C1AF2C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_269CE2BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269CE2C48()
{
  result = qword_28034FF38;
  if (!qword_28034FF38)
  {
    sub_269CE2CC4(255, &qword_28034FF40, &type metadata for SleepStage, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF38);
  }

  return result;
}

void sub_269CE2CC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269CE2D18()
{
  result = qword_28034FF48;
  if (!qword_28034FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockScreenContentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockScreenContentState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_269CE2FFC()
{
  result = qword_28034FF50;
  if (!qword_28034FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF50);
  }

  return result;
}

unint64_t sub_269CE309C()
{
  result = qword_28034FF60;
  if (!qword_28034FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF60);
  }

  return result;
}

unint64_t sub_269CE30F4()
{
  result = qword_280C0B9F0;
  if (!qword_280C0B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9F0);
  }

  return result;
}

unint64_t sub_269CE314C()
{
  result = qword_280C0B9F8;
  if (!qword_280C0B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9F8);
  }

  return result;
}

unint64_t sub_269CE31A4()
{
  result = qword_280C0B9D8;
  if (!qword_280C0B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9D8);
  }

  return result;
}

unint64_t sub_269CE31FC()
{
  result = qword_280C0B9E0;
  if (!qword_280C0B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B9E0);
  }

  return result;
}

uint64_t sub_269CE3250(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000269DB0FD0 == a2 || (sub_269D9B280() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000269DB0FF0 == a2 || (sub_269D9B280() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E497065656C73 && a2 == 0xED00006C61767265 || (sub_269D9B280() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7275446C61746F74 && a2 == 0xED00006E6F697461)
  {

    return 3;
  }

  else
  {
    v5 = sub_269D9B280();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_269CE33D4()
{
  result = qword_280C0B900[0];
  if (!qword_280C0B900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C0B900);
  }

  return result;
}

void sub_269CE3428(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_269CE3490()
{
  result = qword_280C0B8E0;
  if (!qword_280C0B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B8E0);
  }

  return result;
}

uint64_t sub_269CE34E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269C1AF2C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269CE3554(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269C1AF2C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269CE35D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269CE363C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269C1AF2C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269CE36B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269CE363C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_269CE3724()
{
  result = qword_28034FF70;
  if (!qword_28034FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034FF70);
  }

  return result;
}

unint64_t sub_269CE377C()
{
  result = qword_280C0B8F0;
  if (!qword_280C0B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B8F0);
  }

  return result;
}

unint64_t sub_269CE37D4()
{
  result = qword_280C0B8F8;
  if (!qword_280C0B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0B8F8);
  }

  return result;
}

uint64_t sub_269CE3874(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_269D9A1D0();
}

uint64_t sub_269CE3A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_269D992C0();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_269D992D0();
}

uint64_t sub_269CE3B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_269D992C0();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_269D992D0();
}

uint64_t View.animateTransitionIfSupported<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LODWORD(OpaqueTypeConformance2) = a1;
  v65 = a7;
  v11 = *(a3 - 8);
  v58 = a2;
  v59 = v11;
  v12 = MEMORY[0x28223BE20](a1);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = sub_269D98E20();
  v56 = *(v16 - 8);
  v57 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C40224(255);
  v19 = sub_269D98D00();
  v55 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = sub_269CE8178(&qword_280C0B5C8, sub_269C40224);
  v74 = a5;
  v75 = v22;
  WitnessTable = swift_getWitnessTable();
  v66 = v19;
  v67 = WitnessTable;
  v70 = v19;
  v71 = a4;
  v72 = WitnessTable;
  v73 = a6;
  v24 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v26 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v52 = &v51 - v29;
  v30 = a3;
  v31 = sub_269D992E0();
  v63 = *(v31 - 8);
  v64 = v31;
  MEMORY[0x28223BE20](v31);
  v62 = &v51 - v32;
  if (OpaqueTypeConformance2)
  {
    sub_269D98E10();
    v51 = a3;
    sub_269CE6BE8();
    (*(v56 + 8))(v18, v57);
    MEMORY[0x26D6503F0](0.5, 0.7, 0.0);
    v33 = v66;
    v61 = a5;
    v34 = v67;
    sub_269D99980();

    (*(v55 + 8))(v21, v33);
    v70 = v33;
    v71 = a4;
    v72 = v34;
    v73 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v53;
    v36 = *(v53 + 16);
    v37 = v52;
    v36(v52, v28, OpaqueTypeMetadata2);
    v38 = *(v35 + 8);
    v38(v28, OpaqueTypeMetadata2);
    v36(v28, v37, OpaqueTypeMetadata2);
    v39 = v24;
    v40 = a4;
    v41 = v61;
    v42 = v62;
    sub_269CE3A44(v28, OpaqueTypeMetadata2);
    v38(v28, OpaqueTypeMetadata2);
    v38(v37, OpaqueTypeMetadata2);
  }

  else
  {
    v43 = v59;
    v44 = a5;
    v45 = *(v59 + 16);
    v45(v15, v61, v30);
    v46 = v54;
    v45(v54, v15, v30);
    v41 = v44;
    v39 = v24;
    v40 = a4;
    v70 = v66;
    v71 = a4;
    v72 = v67;
    v73 = v39;
    swift_getOpaqueTypeConformance2();
    v42 = v62;
    sub_269CE3B3C(v46, OpaqueTypeMetadata2, v30);
    v47 = *(v43 + 8);
    v47(v46, v30);
    v47(v15, v30);
  }

  v70 = v66;
  v71 = v40;
  v72 = v67;
  v73 = v39;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v41;
  v48 = v64;
  swift_getWitnessTable();
  v49 = v63;
  (*(v63 + 16))(v65, v42, v48);
  return (*(v49 + 8))(v42, v48);
}

uint64_t View.applyBaselinePaddingOffset(for:in:canOverflow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = a5;
  LODWORD(v32) = a3;
  v31[1] = a2;
  v31[2] = a1;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = sub_269D98D00();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  v20 = sub_269D992E0();
  v34 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v31 - v21;
  if (v32)
  {
    sub_269D995F0();
    sub_269D99640();
    v32 = v20;
    v23 = v36;
    sub_269D99C50();
    v37 = v23;
    v38 = MEMORY[0x277CDF918];
    WitnessTable = swift_getWitnessTable();
    v24 = *(v14 + 16);
    v24(v19, v17, v13);
    v25 = *(v14 + 8);
    v25(v17, v13);
    v24(v17, v19, v13);
    v20 = v32;
    sub_269CE3A44(v17, v13);
    v25(v17, v13);
    v25(v19, v13);
  }

  else
  {
    v26 = *(v7 + 16);
    v26(v12, WitnessTable, a4);
    v26(v10, v12, a4);
    v43 = v36;
    v44 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    sub_269CE3B3C(v10, v13, a4);
    v27 = *(v7 + 8);
    v27(v10, a4);
    v27(v12, a4);
  }

  v28 = v36;
  v41 = v36;
  v42 = MEMORY[0x277CDF918];
  v39 = swift_getWitnessTable();
  v40 = v28;
  swift_getWitnessTable();
  v29 = v34;
  (*(v34 + 16))(v35, v22, v20);
  return (*(v29 + 8))(v22, v20);
}

uint64_t View.hidden(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  LODWORD(v33) = a1;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_269D98D00();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = sub_269D992E0();
  v35 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  if (v33)
  {
    v33 = v18;
    v21 = v37;
    sub_269D99C10();
    v22 = sub_269C419C0();
    v38 = v21;
    v39 = v22;
    WitnessTable = swift_getWitnessTable();
    v23 = *(v12 + 16);
    v23(v17, v15, v11);
    v24 = *(v12 + 8);
    v24(v15, v11);
    v23(v15, v17, v11);
    v18 = v33;
    sub_269CE3A44(v15, v11);
    v24(v15, v11);
    v24(v17, v11);
  }

  else
  {
    v25 = *(v5 + 16);
    v25(v10, WitnessTable, a2);
    v25(v8, v10, a2);
    v26 = sub_269C419C0();
    v44 = v37;
    v45 = v26;
    swift_getWitnessTable();
    sub_269CE3B3C(v8, v11, a2);
    v27 = *(v5 + 8);
    v27(v8, a2);
    v27(v10, a2);
  }

  v28 = sub_269C419C0();
  v29 = v37;
  v42 = v37;
  v43 = v28;
  v40 = swift_getWitnessTable();
  v41 = v29;
  swift_getWitnessTable();
  v30 = v35;
  (*(v35 + 16))(v36, v20, v18);
  return (*(v30 + 8))(v20, v18);
}

uint64_t sub_269CE4BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, void, void, uint64_t, void *, uint64_t, uint64_t))
{
  v11[2] = a1;
  v11[3] = a2;
  v7 = a3();
  swift_getTupleTypeMetadata3();
  v8 = sub_269D9A1C0();
  WitnessTable = swift_getWitnessTable();
  return a5(v7, 0, 0, a4, v11, v8, WitnessTable);
}

uint64_t View.eraseToAnyView()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_269D99FF0();
}

uint64_t View.gradientForeground(colors:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269CE6CA4();
  v4 = sub_269D98D00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;

  MEMORY[0x26D6503A0](v8);
  sub_269D9A230();
  sub_269D9A240();
  sub_269D98C20();
  v12 = v15[0];
  v13 = v15[1];
  v14 = v16;
  sub_269D995D0();
  sub_269D99C30();
  sub_269CE6CFC(v15);
  v9 = sub_269CE8178(&qword_28034FF80, sub_269CE6CA4);
  v11[0] = a3;
  v11[1] = v9;
  swift_getWitnessTable();
  sub_269D99BE0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t View.removed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = sub_269D992E0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v22 - v17;
  if (v6)
  {
    sub_269CE3A44(v16, MEMORY[0x277CE1428]);
  }

  else
  {
    v22[0] = a4;
    v19 = *(v8 + 16);
    v19(v13, v22[1], a2);
    v19(v11, v13, a2);
    sub_269CE3B3C(v11, MEMORY[0x277CE1428], a2);
    v20 = *(v8 + 8);
    v20(v11, a2);
    v20(v13, a2);
    a4 = v22[0];
  }

  v22[2] = MEMORY[0x277CE1410];
  v22[3] = a3;
  swift_getWitnessTable();
  (*(v15 + 16))(a4, v18, v14);
  return (*(v15 + 8))(v18, v14);
}

uint64_t View.addBorder<A>(_:width:cornerRadius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D1>)
{
  v33 = a1;
  v28 = a2;
  v29 = a5;
  v31 = a3;
  v32 = a4;
  v35 = a6;
  v10 = sub_269D98DB0();
  v11 = MEMORY[0x277CDFC08];
  v30 = sub_269CE8178(qword_28034FF88, MEMORY[0x277CDFC08]);
  v38 = v10;
  v39 = a3;
  v40 = MEMORY[0x277CE1428];
  v41 = v30;
  v42 = a5;
  v43 = MEMORY[0x277CE1410];
  v12 = sub_269D99320();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  sub_269C5A270();
  v15 = sub_269D98D00();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v10 + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_269D99120();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = a7;
  v21[1] = a7;
  sub_269CE8178(&qword_28034E2F8, v11);
  v25 = v32;
  sub_269D99C80();
  sub_269CE5574(v33, 1, v10, v31, v30, v29, v14);
  sub_269D9A180();
  v26 = sub_269CE8178(&qword_28034E328, sub_269C5A270);
  v36 = v25;
  v37 = v26;
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_269D99C40();
  (*(v34 + 8))(v14, v12);
  (*(v16 + 8))(v19, v15);
  return sub_269CE6D50(v21);
}

uint64_t sub_269CE5574@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_269D98A20();
  sub_269CE7770(a1, a2, a3, a4, a5, a6, a7);
  return sub_269CE7F1C(v15);
}

uint64_t View.pushToTrailingEdge()()
{
  sub_269D99090();
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  return sub_269D99EF0();
}

uint64_t sub_269CE5718(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(v6 + 16);
  v12(v11, a1, a2);
  v17 = 0;
  v18 = 0;
  v19[0] = &v17;
  v12(v9, v11, a2);
  v19[1] = v9;
  v16[0] = MEMORY[0x277CE1180];
  v16[1] = a2;
  v15[0] = MEMORY[0x277CE1170];
  v15[1] = a3;
  sub_269CE3874(v19, 2uLL, v16);
  v13 = *(v6 + 8);
  v13(v11, a2);
  v13(v9, a2);
}

uint64_t sub_269CE5940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, void, void, uint64_t, void *, uint64_t, uint64_t))
{
  v11[2] = a1;
  v11[3] = a2;
  v7 = a3();
  swift_getTupleTypeMetadata2();
  v8 = sub_269D9A1C0();
  WitnessTable = swift_getWitnessTable();
  return a5(v7, 0, 0, a4, v11, v8, WitnessTable);
}

uint64_t sub_269CE5A08@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v7 + 16);
  v13(v12, a1, a2);
  v13(v10, v12, a2);
  v18 = 0;
  v19 = 0;
  v20[0] = v10;
  v20[1] = &v18;
  v17[0] = a2;
  v17[1] = MEMORY[0x277CE1180];
  v16[2] = a3;
  v16[3] = MEMORY[0x277CE1170];
  sub_269CE3874(v20, 2uLL, v17);
  v14 = *(v7 + 8);
  v14(v12, a2);
  v14(v10, a2);
}

uint64_t sub_269CE5BF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(v7 + 16);
  v13(v12, a1, a2);
  v20 = 0;
  v21 = 0;
  v22[0] = &v20;
  v13(v10, v12, a2);
  v18 = 0;
  v19 = 0;
  v22[1] = v10;
  v22[2] = &v18;
  v17[0] = MEMORY[0x277CE1180];
  v17[1] = a2;
  v17[2] = MEMORY[0x277CE1180];
  v16[1] = MEMORY[0x277CE1170];
  v16[2] = a3;
  v16[3] = MEMORY[0x277CE1170];
  sub_269CE3874(v22, 3uLL, v17);
  v14 = *(v7 + 8);
  v14(v12, a2);
  v14(v10, a2);
}

uint64_t View.scrollable(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v6 = sub_269D99300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D989A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v15 - v12;
  v15[4] = a1;
  v15[5] = a2;
  v16 = v3;
  sub_269D989B0();
  sub_269D992F0();
  LOBYTE(a2) = sub_269D995C0();
  sub_269D995B0();
  sub_269D995B0();
  if (sub_269D995B0() != a2)
  {
    sub_269D995B0();
  }

  swift_getWitnessTable();
  sub_269D99B90();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_269CE6018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(v6 + 16);
  v9(v8, a1, a2);
  v9(a3, v8, a2);
  (*(v6 + 8))(v8, a2);
}

uint64_t LeadingContentGroup.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  v5 = sub_269D99F00();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  View.pushToLeadingEdge()(v4, *(a1 + 24));
  swift_getWitnessTable();
  v12 = *(v6 + 16);
  v12(v11, v9, v5);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v12(a2, v11, v5);
  return (v13)(v11, v5);
}

uint64_t VerticallyCenteredContentGroup.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_269D9A1C0();
  swift_getWitnessTable();
  v5 = sub_269D99FC0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  View.verticallyCenter()(v4, *(a1 + 24));
  swift_getWitnessTable();
  v12 = *(v6 + 16);
  v12(v11, v9, v5);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v12(a2, v11, v5);
  return (v13)(v11, v5);
}

uint64_t sub_269CE6524@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C3EEE8();

  v2 = sub_269D99960();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_269CE660C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(v9 + 8);
  sub_269C255A8(a3);
  v11(a2, sub_269CE74F4, v10, v8, v9);
}

uint64_t sub_269CE6744(void (*a1)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(isCurrentExecutor);
  }
}

uint64_t sub_269CE67F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269CE75B8();
  v5 = (a2 + *(v4 + 36));
  sub_269CE76A4(0);
  v7 = *(v6 + 28);
  v8 = sub_269D99910();
  (*(*(v8 - 8) + 56))(v5 + v7, 1, 1, v8);
  *v5 = swift_getKeyPath();
  sub_269CE7644(0, &qword_2803500B0, sub_269C9DB44);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_269CE68FC(void (*a1)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CCB2CC();

  v2 = sub_269D99E70();
  if ((v4 & 1) == 0)
  {
    a1(v2);
    sub_269D99E80();
  }
}

uint64_t sub_269CE6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_269CE7644(0, &qword_280350098, sub_269CE73C0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  sub_269CE7534();
  v12 = (a2 + *(v11 + 36));
  *v12 = sub_269CE7524;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t View.onFirstAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  sub_269D99E60();
  v8 = v11;
  v9 = v12;
  v11 = a1;
  v12 = a2;
  v13 = v8;
  v14 = v9;
  MEMORY[0x26D64FEB0](&v11, a3, &type metadata for OnFirstAppear, a4);
}

uint64_t sub_269CE6BE8()
{
  swift_getKeyPath();
  sub_269D99A90();
}

void sub_269CE6CA4()
{
  if (!qword_28034FF78)
  {
    v0 = sub_269D99340();
    if (!v1)
    {
      atomic_store(v0, &qword_28034FF78);
    }
  }
}

uint64_t sub_269CE6D50(uint64_t a1)
{
  v2 = sub_269D98DB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269CE6EAC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269CE6F1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_269CE705C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA6HStackVyAA05TupleC0Vyx_AA6SpacerVtGGAaBHPyHCTm(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  swift_getTupleTypeMetadata2();
  v3 = sub_269D9A1C0();
  WitnessTable = swift_getWitnessTable();
  a2(255, v3, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA6HStackVyAA05TupleC0VyAA6SpacerV_xAHtGGAaBHPyHCTm(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  swift_getTupleTypeMetadata3();
  v3 = sub_269D9A1C0();
  WitnessTable = swift_getWitnessTable();
  a2(255, v3, WitnessTable);

  return swift_getWitnessTable();
}

unint64_t sub_269CE73C0()
{
  result = qword_280350090;
  if (!qword_280350090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350090);
  }

  return result;
}

uint64_t sub_269CE7424(uint64_t *a1, int a2)
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

uint64_t sub_269CE746C(uint64_t result, int a2, int a3)
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

uint64_t sub_269CE74F4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_269CE7534()
{
  if (!qword_2803500A0)
  {
    sub_269CE7644(255, &qword_280350098, sub_269CE73C0);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_2803500A0);
    }
  }
}

void sub_269CE75B8()
{
  if (!qword_2803500A8)
  {
    sub_269CE7644(255, &qword_2803500B0, sub_269C9DB44);
    sub_269CE76A4(255);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_2803500A8);
    }
  }
}

void sub_269CE7644(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_269D99360();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CE770C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269CE7770@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a2;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v24[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v21, v20);
  (*(v13 + 16))(v16, a1, a4);

  return sub_269CE7930(v18, v16, v25, v22, a3, a4, MEMORY[0x277CE1428], a7, a5, a6, MEMORY[0x277CE1410]);
}

uint64_t sub_269CE7930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = a4;
  LODWORD(v50) = a3;
  v48 = a2;
  v42 = a8;
  v55 = a10;
  v56 = a1;
  v46 = a7;
  v49 = *(a7 - 8);
  v53 = a11;
  MEMORY[0x28223BE20](a1);
  v47 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_269D992B0();
  v15 = MEMORY[0x28223BE20](v54);
  v51 = &v36 - v16;
  v36 = a6;
  v45 = *(a6 - 8);
  MEMORY[0x28223BE20](v15);
  v43 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v41 = a9;
  v39 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = sub_269D98BA0();
  MEMORY[0x28223BE20](v19);
  WitnessTable = swift_getWitnessTable();
  v57 = v19;
  v58 = a6;
  v59 = WitnessTable;
  v60 = v55;
  v44 = sub_269D989D0();
  MEMORY[0x28223BE20](v44);
  v38 = &v36 - v20;
  v21 = a5;
  v22 = *(a5 - 8);
  v23 = *(v22 + 16);
  v37 = v21;
  v23(a8, v56, v21);
  sub_269D98CB0();
  sub_269D98B90();
  v24 = v45;
  v25 = v48;
  v26 = v36;
  (*(v45 + 16))(v43, v48, v36);
  v27 = v26;
  v28 = v55;
  sub_269D989C0();
  v29 = v49;
  v30 = v46;
  v31 = v52;
  (*(v49 + 16))(v47, v52, v46);
  sub_269D9A180();
  v50 = v32;
  (*(v29 + 8))(v31, v30);
  (*(v24 + 8))(v25, v26);
  v33 = v37;
  (*(v22 + 8))(v56, v37);
  v34 = v53;
  sub_269D992A0();
  v57 = v33;
  v58 = v27;
  v59 = v30;
  v60 = v41;
  v61 = v28;
  v62 = v34;
  sub_269D99320();
  return sub_269D98CC0();
}

uint64_t sub_269CE7E30(uint64_t a1)
{
  sub_269CE76D8(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269CE7EB8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_269D98FF0();
}

uint64_t sub_269CE7EB8(uint64_t a1, uint64_t a2)
{
  sub_269CE76D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269CE7FA0()
{
  result = qword_2803500C8;
  if (!qword_2803500C8)
  {
    sub_269CE7534();
    sub_269CE804C(&qword_2803500D0, &qword_280350098, sub_269CE73C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803500C8);
  }

  return result;
}

uint64_t sub_269CE804C(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_269CE7644(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CE809C()
{
  result = qword_2803500D8;
  if (!qword_2803500D8)
  {
    sub_269CE75B8();
    sub_269CE804C(&qword_2803500E0, &qword_2803500B0, sub_269C9DB44);
    sub_269CE8178(&qword_2803500E8, sub_269CE76A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803500D8);
  }

  return result;
}

uint64_t sub_269CE8178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TwoWeekResults.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TwoWeekResults() + 24);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TwoWeekResults()
{
  result = qword_2803500F0;
  if (!qword_2803500F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id TwoWeekResults.averageDurationFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for TwoWeekResults() + 28));

  return v1;
}

id TwoWeekResults.axisFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for TwoWeekResults() + 32));

  return v1;
}

uint64_t TwoWeekResults.week1.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TwoWeekResults() + 36);

  return sub_269C42834(v3, a1);
}

uint64_t TwoWeekResults.week2.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TwoWeekResults() + 40);

  return sub_269C42834(v3, a1);
}

uint64_t TwoWeekResults.hasData.getter()
{
  v1 = type metadata accessor for TwoWeekResults();
  v2 = *(v0 + *(v1 + 36));
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_7:
    v10 = v3 - v4;
    v11 = (v2 + 32 * v4 + 40);
    do
    {
      v12 = *v11;
      v11 += 4;
      v5 = v5 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_9;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFFELL;
  v6 = (v2 + 72);
  v5 = 0.0;
  v7 = v3 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v8 = *(v6 - 4);
    v9 = *v6;
    v6 += 8;
    v5 = v5 + v8 + v9;
    v7 -= 2;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 > 0.0)
  {
    return 1;
  }

LABEL_11:
  v14 = *(v0 + *(v1 + 40));
  v15 = *(v14 + 16);
  if (!v15)
  {
    return 0;
  }

  if (v15 == 1)
  {
    v16 = 0;
    v17 = 0.0;
  }

  else
  {
    v16 = v15 & 0x7FFFFFFFFFFFFFFELL;
    v18 = (v14 + 72);
    v17 = 0.0;
    v19 = v15 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v20 = *(v18 - 4);
      v21 = *v18;
      v18 += 8;
      v17 = v17 + v20 + v21;
      v19 -= 2;
    }

    while (v19);
    if (v15 == v16)
    {
      return v17 > 0.0;
    }
  }

  v22 = v15 - v16;
  v23 = (v14 + 32 * v16 + 40);
  do
  {
    v24 = *v23;
    v23 += 4;
    v17 = v17 + v24;
    --v22;
  }

  while (v22);
  return v17 > 0.0;
}

uint64_t TwoWeekResults.hasComparisonData.getter()
{
  v1 = type metadata accessor for TwoWeekResults();
  if (*(v0 + *(v1 + 36) + 16))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + *(v1 + 40) + 16) ^ 1;
  }

  return v2 & 1;
}

uint64_t TwoWeekResults.init(morningIndexRange:summaries:gregorianCalendar:averageDurationFormatter:axisFormatter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v97 = a5;
  v98 = a6;
  v103 = a1;
  isUniquelyReferenced_nonNull_native = type metadata accessor for WeekResultsBuilder();
  v13 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v87 - v16;
  *a7 = a1;
  a7[1] = a2;
  v96 = a3;
  a7[2] = a3;
  v18 = type metadata accessor for TwoWeekResults();
  v19 = v18[6];
  v20 = sub_269D977A0();
  v90 = *(v20 - 8);
  v21 = *(v90 + 16);
  v22 = a7 + v19;
  v23 = a4;
  v21(v22, a4, v20);
  v24 = v97;
  *(a7 + v18[7]) = v97;
  v91 = v18;
  v92 = a7;
  v25 = v18[8];
  v26 = v98;
  *(a7 + v25) = v98;
  v27 = v23;
  v21(&v17[*(isUniquelyReferenced_nonNull_native + 20)], v23, v20);
  v28 = *(isUniquelyReferenced_nonNull_native + 36);
  v29 = sub_269C44654(MEMORY[0x277D84F90]);
  v101 = v28;
  v102 = v17;
  *&v17[v28] = v29;
  v30 = v103;
  *v17 = v103;
  *(v17 + 1) = 7;
  v89 = *(isUniquelyReferenced_nonNull_native + 24);
  *&v17[v89] = 0x40CC200000000000;
  *&v17[*(isUniquelyReferenced_nonNull_native + 28)] = v24;
  *&v17[*(isUniquelyReferenced_nonNull_native + 32)] = v26;
  v31 = v30 + 7;
  if (__OFADD__(v30, 7))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v36 = sub_269D9AF50();
    v37 = v95;
    if (v36)
    {
      goto LABEL_4;
    }

    goto LABEL_45;
  }

  v32 = v24;
  v33 = v15 + *(isUniquelyReferenced_nonNull_native + 20);
  v87 = v27;
  v95 = v20;
  v21(v33, v27, v20);
  v34 = *(isUniquelyReferenced_nonNull_native + 36);
  v35 = sub_269C44654(MEMORY[0x277D84F90]);
  v100 = v34;
  *(v15 + v34) = v35;
  *v15 = v31;
  *(v15 + 8) = 7;
  v88 = *(isUniquelyReferenced_nonNull_native + 24);
  *(v15 + v88) = 0x40CC200000000000;
  *(v15 + *(isUniquelyReferenced_nonNull_native + 28)) = v24;
  *(v15 + *(isUniquelyReferenced_nonNull_native + 32)) = v26;
  v24 = v96;
  isUniquelyReferenced_nonNull_native = v32;
  if (v96 >> 62)
  {
    goto LABEL_44;
  }

  v36 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v37 = v95;
  if (v36)
  {
LABEL_4:
    v99 = v24 & 0xC000000000000001;
    v93 = v24 & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_native;
    v39 = v26;
    v40 = v38;
    v41 = v39;

    v26 = 0;
    isUniquelyReferenced_nonNull_native = 0x279C86000;
    v97 = v36;
    v98 = v31;
    v94 = v15;
    while (1)
    {
      if (v99)
      {
        v42 = MEMORY[0x26D651260](v26, v24);
      }

      else
      {
        if (v26 >= *(v93 + 16))
        {
          goto LABEL_40;
        }

        v42 = *(v24 + 8 * v26 + 32);
      }

      v43 = v42;
      v44 = (v26 + 1);
      if (__OFADD__(v26, 1))
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
        goto LABEL_43;
      }

      [v42 *(isUniquelyReferenced_nonNull_native + 2488)];
      if (sub_269D9ABB0())
      {
        v31 = [v43 *(isUniquelyReferenced_nonNull_native + 2488)];
        v45 = v43;
        v47 = v101;
        v46 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v46 + v47);
        v104 = v48;
        v24 = sub_269C43418(v31);
        v50 = *(v48 + 16);
        v51 = (v49 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          goto LABEL_38;
        }

        v15 = v49;
        if (*(v48 + 24) >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_269C44238();
          }
        }

        else
        {
          sub_269C43D5C(v52, isUniquelyReferenced_nonNull_native);
          v53 = sub_269C43418(v31);
          if ((v15 & 1) != (v54 & 1))
          {
            goto LABEL_47;
          }

          v24 = v53;
        }

        isUniquelyReferenced_nonNull_native = v104;
        if (v15)
        {
          v55 = *(v104 + 56);
          v56 = *(v55 + 8 * v24);
          *(v55 + 8 * v24) = v45;
        }

        else
        {
          *(v104 + 8 * (v24 >> 6) + 64) |= 1 << v24;
          *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v24) = v31;
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v24) = v45;
          v57 = *(isUniquelyReferenced_nonNull_native + 16);
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_41;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v59;
        }

        *(v102 + v101) = isUniquelyReferenced_nonNull_native;
        v15 = v94;
        v37 = v95;
        v24 = v96;
        v36 = v97;
        v31 = v98;
        isUniquelyReferenced_nonNull_native = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
      }

      [v43 *(isUniquelyReferenced_nonNull_native + 2488)];
      if (sub_269D9ABB0())
      {
        break;
      }

LABEL_6:
      ++v26;
      if (v44 == v36)
      {
        v75 = v37;

        goto LABEL_46;
      }
    }

    v60 = [v43 *(isUniquelyReferenced_nonNull_native + 2488)];
    v61 = v43;
    v62 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v15 + v62);
    v104 = v63;
    v64 = sub_269C43418(v60);
    v66 = *(v63 + 16);
    v67 = (v65 & 1) == 0;
    v58 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v58)
    {
      goto LABEL_39;
    }

    v31 = v65;
    if (*(v63 + 24) >= v68)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = v64;
        sub_269C44238();
        v64 = v72;
        isUniquelyReferenced_nonNull_native = v104;
        if (v31)
        {
          goto LABEL_31;
        }

        goto LABEL_33;
      }
    }

    else
    {
      sub_269C43D5C(v68, isUniquelyReferenced_nonNull_native);
      v64 = sub_269C43418(v60);
      if ((v31 & 1) != (v69 & 1))
      {
LABEL_47:
        result = sub_269D9B2C0();
        __break(1u);
        return result;
      }
    }

    isUniquelyReferenced_nonNull_native = v104;
    if (v31)
    {
LABEL_31:
      v70 = *(isUniquelyReferenced_nonNull_native + 56);
      v71 = *(v70 + 8 * v64);
      *(v70 + 8 * v64) = v61;

LABEL_35:
      *(v15 + v100) = isUniquelyReferenced_nonNull_native;
      v36 = v97;
      v31 = v98;
      isUniquelyReferenced_nonNull_native = 0x279C86000;
      goto LABEL_6;
    }

LABEL_33:
    *(isUniquelyReferenced_nonNull_native + 8 * (v64 >> 6) + 64) |= 1 << v64;
    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v64) = v60;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v64) = v61;

    v73 = *(isUniquelyReferenced_nonNull_native + 16);
    v58 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v58)
    {
      goto LABEL_42;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v74;
    goto LABEL_35;
  }

LABEL_45:
  v75 = v37;
  v76 = isUniquelyReferenced_nonNull_native;
  v77 = v26;
  v78 = v76;
  v79 = v77;
LABEL_46:
  v80 = v89;
  v81 = v102;
  sub_269D66914();
  *(v15 + v88) = v82;
  sub_269D66914();
  *(v81 + v80) = v83;
  v85 = v91;
  v84 = v92;
  sub_269D65F84(v92 + v91[9]);
  sub_269D65F84(v84 + v85[10]);
  (*(v90 + 8))(v87, v75);
  sub_269C44CAC(v15);
  return sub_269C44CAC(v81);
}

uint64_t static TwoWeekResults.emptyResults.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_269D97670();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D977A0();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277CCBBF8];
  v10 = *(MEMORY[0x277CCBBF8] + 8);
  (*(v3 + 104))(v5, *MEMORY[0x277CC9830], v2);
  sub_269D97680();
  (*(v3 + 8))(v5, v2);
  v11 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v11 setAllowedUnits_];
  [v11 setUnitsStyle_];
  v12 = _sSo23NSDateIntervalFormatterC13SleepHealthUIE15weeklyChartAxisABvgZ_0();
  return TwoWeekResults.init(morningIndexRange:summaries:gregorianCalendar:averageDurationFormatter:axisFormatter:)(v9, v10, MEMORY[0x277D84F90], v8, v11, v12, a1);
}

void sub_269CE8D38()
{
  type metadata accessor for HKDayIndexRange(319);
  if (v0 <= 0x3F)
  {
    sub_269C44E34();
    if (v1 <= 0x3F)
    {
      sub_269D977A0();
      if (v2 <= 0x3F)
      {
        sub_269C1B0B8(319, &qword_28034DE58);
        if (v3 <= 0x3F)
        {
          sub_269C1B0B8(319, &qword_28034DE60);
          if (v4 <= 0x3F)
          {
            type metadata accessor for WeekResults(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_269CE8E8C(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v4 = a1[9];
  *(v3 + 8) = a1[8];
  *(v3 + 9) = v4;
  v5 = a1[11];
  *(v3 + 10) = a1[10];
  *(v3 + 11) = v5;
  v6 = a1[5];
  *(v3 + 4) = a1[4];
  *(v3 + 5) = v6;
  v7 = a1[7];
  *(v3 + 6) = a1[6];
  *(v3 + 7) = v7;
  v8 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v8;
  v9 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v9;
  sub_269C6AB64(a1, v21);
  v20.receiver = v1;
  v20.super_class = type metadata accessor for SleepScheduleClockDial();
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  [v12 setContentMode_];
  sub_269CEB75C(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269D9EBF0;
  v15 = sub_269D983D0();
  v16 = MEMORY[0x277D74DB8];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = sub_269D98290();
  v18 = MEMORY[0x277D74BF0];
  *(v14 + 48) = v17;
  *(v14 + 56) = v18;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_269C30054();
  sub_269D9AD50();
  swift_unknownObjectRelease();

  sub_269C6ABC0(a1);

  return v12;
}

void sub_269CE908C()
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
    [Strong setNeedsDisplay];
  }

  else
  {
  }
}

void sub_269CE9214()
{
  swift_getObjectType();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SleepScheduleClockDial();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280C0B728);
  v2 = v0;
  v3 = sub_269D98230();
  v4 = sub_269D9AB50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    [v2 bounds];
    type metadata accessor for CGRect(0);
    v10 = sub_269D9A660();
    v12 = sub_269C2EACC(v10, v11, &v13);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Layout subviews in %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }
}

void sub_269CE94D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for SleepScheduleClockDial();
  objc_msgSendSuper2(&v33, sel_drawRect_, a1, a2, a3, a4);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v10 = sub_269D98250();
  __swift_project_value_buffer(v10, qword_280C0B728);
  v11 = sub_269D98230();
  v12 = sub_269D9AB50();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136446210;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, &v32);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] Redrawing", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D652460](v14, -1, -1);
    MEMORY[0x26D652460](v13, -1, -1);
  }

  v18 = UIGraphicsGetCurrentContext();
  if (v18)
  {
    v19 = v18;
    UIGraphicsPushContext(v18);
    UIGraphicsPushContext(v19);
    v20 = *&v5[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
    v21 = [v5 traitCollection];
    v22 = [v20 resolvedColorWithTraitCollection_];
    v23 = [v22 CGColor];

    CGContextSetFillColorWithColor(v19, v23);
    [v5 bounds];
    v28 = [objc_opt_self() bezierPathWithOvalInRect_];
    [v28 fill];

    UIGraphicsPopContext();
    [v5 bounds];
    sub_269D9AD20();
    v30 = v29;
    [v5 bounds];
    sub_269D9AD20();
    CGContextTranslateCTM(v19, v30, v31);
    sub_269CE97CC(v19);
    sub_269CE9A6C(v19);
    UIGraphicsPopContext();
  }
}

void sub_269CE97CC(CGContext *a1)
{
  UIGraphicsPushContext(a1);
  v3 = &v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v4 = *&v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 16];
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 48];
  v18 = *&v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 56];
  CGContextSetLineWidth(a1, *&v1[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 32]);
  CGContextSetLineCap(a1, *(v3 + 6));
  v16 = v3;
  v6 = *(v3 + 1);
  v7 = [v1 traitCollection];
  v8 = [v6 resolvedColorWithTraitCollection_];
  v9 = [v8 CGColor];

  CGContextSetStrokeColorWithColor(a1, v9);
  v17 = 0;
  while (1)
  {
    v10 = *(v16 + 5);
    if (!v10)
    {
      break;
    }

    if (v10 >= 1)
    {
      v11 = 0;
      do
      {
        v12 = v11 + v10;
        if (__OFADD__(v11, v10))
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v13 = v5;
        if (v11)
        {
          v13 = v18;
        }

        if (qword_28034D638 != -1)
        {
          swift_once();
        }

          ;
        }

        while (i >= 6.28318531)
        {
          i = i + -6.28318531;
        }

        v15 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
        [v15 moveToPoint_];
        [v15 addLineToPoint_];
        CGAffineTransformMakeRotation(&v19, i);
        [v15 applyTransform_];
        [v15 stroke];

        v11 = v12;
      }

      while (v12 < 60);
    }

    if (++v17 == 24)
    {
      UIGraphicsPopContext();
      return;
    }
  }

  __break(1u);
}

void sub_269CE9A6C(CGContext *a1)
{
  v165 = sub_269D96F60();
  v203 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v162 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_269CEB75C(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v185 = &v162 - v5;
  sub_269CEB75C(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v184 = &v162 - v7;
  v183 = sub_269D971F0();
  v202 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v182 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_269D977A0();
  v198 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CEB75C(0, &qword_280C0BB60, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v179 = &v162 - v11;
  v197 = sub_269D97580();
  v172 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v196 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D97650();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = a1;
  UIGraphicsPushContext(a1);
  sub_269D97630();
  v199 = sub_269D97640();
  v17 = *(v14 + 8);
  v17(v16, v13);
  v18 = objc_opt_self();
  v19 = sub_269D9A5F0();
  sub_269D97630();
  v20 = sub_269D97610();
  v17(v16, v13);
  v21 = [v18 dateFormatFromTemplate:v19 options:0 locale:v20];

  if (v21)
  {
    v22 = sub_269D9A630();
    v24 = v23;
  }

  else
  {
    v24 = 0xE200000000000000;
    v22 = 22616;
  }

  *&v221[0] = 0;
  *(&v221[0] + 1) = 0xE000000000000000;
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  *&v229 = v22;
  *(&v229 + 1) = v24;
  *&v230 = 0;
  *(&v230 + 1) = v25;
  v26 = sub_269D9A720();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
    sub_269D9A8E0();
    do
    {
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v31 = sub_269D9A4F0();

      if ((v31 & 1) == 0)
      {
        MEMORY[0x26D650920](v28, v29);
      }

      v28 = sub_269D9A720();
      v29 = v30;
    }

    while (v30);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v33 = sub_269D9A5F0();

  v169 = v32;
  [v32 setDateFormat_];

  v34 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v35 = 12;
  if (v199)
  {
    v35 = 24;
  }

  v201 = v35;
  if (qword_280C0AE70 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v168 = sub_269D972C0();
    v170 = v36;
    sub_269CEB75C(0, &qword_280350108, sub_269CEB7C0, MEMORY[0x277D84560]);
    v195 = v37;
    inited = swift_initStackObject();
    v194 = xmmword_269D9EBF0;
    *(inited + 16) = xmmword_269D9EBF0;
    v39 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v40 = v174;
    v41 = &v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
    v42 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 160];
    v228 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 176];
    v227 = v42;
    v43 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 128];
    v226 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 144];
    v44 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 96];
    v224 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 112];
    v225 = v43;
    v45 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 64];
    v222 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 80];
    v223 = v44;
    v46 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 32];
    v221[3] = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 48];
    v221[4] = v45;
    v47 = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
    v221[1] = *&v174[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 16];
    v221[2] = v46;
    v221[0] = v47;
    v193 = v39;
    sub_269C6AB64(v221, &v229);
    v48 = [v40 traitCollection];
    v49 = objc_opt_self();
    v50 = *MEMORY[0x277D76820];
    v191 = *MEMORY[0x277D743D0];
    v192 = v49;
    v190 = v50;
    v51 = [v49 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
    v52 = v173;
    if (!v51)
    {
      break;
    }

    v53 = v51;

    sub_269C6ABC0(v221);
    v54 = sub_269C1B0B8(0, &qword_28034E5F0);
    *(inited + 40) = v53;
    v55 = *MEMORY[0x277D740C0];
    v189 = v54;
    *(inited + 64) = v54;
    *(inited + 72) = v55;
    v56 = *(v41 + 15);
    v188 = sub_269C1B0B8(0, &qword_280350120);
    *(inited + 104) = v188;
    *(inited + 80) = v56;
    v187 = v55;
    v57 = v56;
    v200 = sub_269C44B18(inited);
    swift_setDeallocating();
    sub_269CEB7C0();
    v186 = v58;
    swift_arrayDestroy();
    i = *(v41 + 8);
    if (!i)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      break;
    }

    if (i < 1)
    {
LABEL_77:

      UIGraphicsPopContext();
      return;
    }

    v60 = 0;
    v61 = *(v41 + 16);
    v177 = (v202 + 8);
    v178 = (v198 + 56);
    v175 = (*&v172 + 48);
    v176 = (v198 + 8);
    v163 = (v203 + 8);
    v166 = (*&v172 + 8);
    v167 = (*&v172 + 32);
    v198 = v34;
    v202 = i;
    while (1)
    {
      v62 = __OFADD__(v60, i) ? ((v60 + i) >> 63) ^ 0x8000000000000000 : v60 + i;
      v63 = *(v41 + 9);
      if (!v63)
      {
        break;
      }

      if (v60 == 0x8000000000000000 && v63 == -1)
      {
        goto LABEL_79;
      }

      if (v60 % v63)
      {
        v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v65 = [v34 stringFromNumber_];

        if (!v65)
        {
          goto LABEL_23;
        }

        v203 = v62;
        v66 = objc_allocWithZone(MEMORY[0x277CCA898]);
        type metadata accessor for Key(0);
        sub_269CEB82C();
        v67 = sub_269D9A480();
        v68 = [v66 initWithString:v65 attributes:v67];

        goto LABEL_59;
      }

      if (v199)
      {
        v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v70 = [v34 stringFromNumber_];

        if (!v70)
        {
          goto LABEL_23;
        }

        v203 = v62;
        v71 = *(v41 + 9);
        v211 = *(v41 + 8);
        v212 = v71;
        v72 = *(v41 + 11);
        v213 = *(v41 + 10);
        v214 = v72;
        v73 = *(v41 + 5);
        v207 = *(v41 + 4);
        v208 = v73;
        v74 = *(v41 + 7);
        v209 = *(v41 + 6);
        v210 = v74;
        v75 = *(v41 + 1);
        *&v205.a = *v41;
        *&v205.c = v75;
        v76 = *(v41 + 3);
        *&v205.tx = *(v41 + 2);
        v206 = v76;
        sub_269C6AB64(&v205, v204);
        v77 = [v40 traitCollection];
        v78 = swift_allocObject();
        *(v78 + 16) = v194;
        v79 = v193;
        *(v78 + 32) = v193;
        v80 = *(&v208 + 1);
        v81 = v79;
        v82 = [v192 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
        if (!v82)
        {
          goto LABEL_82;
        }

        *(v78 + 40) = v82;
        v83 = v188;
        v84 = v187;
        *(v78 + 64) = v189;
        *(v78 + 72) = v84;
        v85 = v210;
        *(v78 + 104) = v83;
        *(v78 + 80) = v85;
        v86 = v84;
        v87 = v85;
        sub_269C44B18(v78);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_269C6ABC0(&v205);

        v88 = objc_allocWithZone(MEMORY[0x277CCA898]);
        type metadata accessor for Key(0);
        sub_269CEB82C();
        v89 = sub_269D9A480();

        v68 = [v88 initWithString:v70 attributes:v89];

        goto LABEL_58;
      }

      v203 = v62;
      v90 = v180;
      sub_269D97770();
      v91 = v181;
      (*v178)(v184, 1, 1, v181);
      v92 = sub_269D97810();
      (*(*(v92 - 8) + 56))(v185, 1, 1, v92);
      v93 = v182;
      sub_269D971D0();
      v94 = v179;
      sub_269D97720();
      v95 = v94;
      (*v177)(v93, v183);
      (*v176)(v90, v91);
      v96 = v94;
      v97 = v197;
      if ((*v175)(v96, 1, v197) != 1)
      {
        (*v167)(v196, v95, v97);
        if (v60 != 12)
        {
          goto LABEL_44;
        }

        *&v205.a = v168;
        v205.b = v170;
        v98 = v164;
        sub_269D96F30();
        sub_269C3EEE8();
        v99 = sub_269D9AEA0();
        v101 = v100;
        (*v163)(v98, v165);

        v102 = HIBYTE(v101) & 0xF;
        if ((v101 & 0x2000000000000000) == 0)
        {
          v102 = v99 & 0xFFFFFFFFFFFFLL;
        }

        if (v102)
        {
          v103 = v170;

          v104 = v168;
        }

        else
        {
LABEL_44:
          v105 = sub_269D974B0();
          v106 = [v169 stringFromDate_];

          v104 = sub_269D9A630();
          v103 = v107;
        }

        v219 = 0;
        v220 = 0xE000000000000000;
        v108 = HIBYTE(*&v103) & 0xFLL;
        if ((*&v103 & 0x2000000000000000) == 0)
        {
          v108 = v104 & 0xFFFFFFFFFFFFLL;
        }

        v171 = v104;
        v172 = v103;
        v215 = v104;
        v216 = v103;
        v217 = 0;
        v218 = v108;
        v109 = sub_269D9A720();
        if (v110)
        {
          v111 = v109;
          v112 = v110;
          sub_269D9A8E0();
          do
          {
            sub_269D9A8D0();
            sub_269D9A880();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v114 = sub_269D9A500();

            if ((v114 & 1) == 0)
            {
              MEMORY[0x26D650920](v111, v112);
            }

            v111 = sub_269D9A720();
            v112 = v113;
          }

          while (v113);
        }

        v115 = sub_269D9A6B0();

        v116 = *(v41 + 13);
        v117 = *(v41 + 9);
        v118 = *(v41 + 10);
        v119 = *(v41 + 7);
        v211 = *(v41 + 8);
        v212 = v117;
        v120 = *(v41 + 11);
        v213 = v118;
        v214 = v120;
        v121 = *(v41 + 5);
        v207 = *(v41 + 4);
        v208 = v121;
        v209 = *(v41 + 6);
        v210 = v119;
        v122 = *(v41 + 1);
        *&v205.a = *v41;
        *&v205.c = v122;
        v123 = *(v41 + 3);
        *&v205.tx = *(v41 + 2);
        v206 = v123;
        sub_269C6AB64(&v205, v204);
        v124 = v174;
        v125 = [v174 traitCollection];
        v126 = swift_allocObject();
        *(v126 + 16) = v194;
        v127 = v193;
        *(v126 + 32) = v193;
        v128 = &v208 + 1;
        if (v116 < v115)
        {
          v128 = &v209;
        }

        v129 = *v128;
        v130 = v127;
        v131 = [v192 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
        if (!v131)
        {
          goto LABEL_83;
        }

        v132 = v116 < v115;
        *(v126 + 40) = v131;
        v133 = v188;
        v134 = v187;
        *(v126 + 64) = v189;
        *(v126 + 72) = v134;
        v135 = v210;
        *(v126 + 104) = v133;
        *(v126 + 80) = v135;
        v136 = v134;
        v137 = v135;
        v138 = sub_269C44B18(v126);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_269C6ABC0(&v205);

        v139 = *(v41 + 9);
        v237 = *(v41 + 8);
        v238 = v139;
        v140 = *(v41 + 11);
        v239 = *(v41 + 10);
        v240 = v140;
        v141 = *(v41 + 5);
        v233 = *(v41 + 4);
        v234 = v141;
        v142 = *(v41 + 7);
        v235 = *(v41 + 6);
        v236 = v142;
        v143 = *(v41 + 1);
        v229 = *v41;
        v230 = v143;
        v144 = *(v41 + 3);
        v231 = *(v41 + 2);
        v232 = v144;
        sub_269C6AB64(&v229, v204);
        v145 = [v124 traitCollection];
        v146 = sub_269CEB100(v132, v145);

        sub_269C6ABC0(&v229);
        sub_269C1B0B8(0, &unk_28034EBF0);
        v68 = MEMORY[0x26D650ED0](v171, *&v172, v138, v146);

        (*v166)(v196, v197);
        v40 = v124;
        v52 = v173;
LABEL_58:
        v34 = v198;
LABEL_59:
        v147 = v68;
        [v147 size];
        v149 = v148;
        v151 = v150;
        if (qword_28034D638 != -1)
        {
          swift_once();
        }

        v152 = v60 / 24.0 * 6.28318531 + *&qword_28035E4B0;
          ;
        }

        while (v152 >= 6.28318531)
        {
          v152 = v152 + -6.28318531;
        }

        CGAffineTransformMakeRotation(&v205, v152);
        v241.y = 0.0;
        v241.x = v61;
        v153 = CGPointApplyAffineTransform(v241, &v205);
        CGAffineTransformMakeTranslation(&v205, v149 * -0.5, v151 * -0.5);
        v156 = CGPointApplyAffineTransform(v153, &v205);
        y = v156.y;
        x = v156.x;
        v157 = *(v41 + 16) + (*(v41 + 2) - *(v41 + 16)) * 0.5;
        if (v156.x < -v157)
        {
          x = -v157;
        }

        v158 = v149 + x;
        if (v158 >= v157)
        {
          v158 = *(v41 + 16) + (*(v41 + 2) - *(v41 + 16)) * 0.5;
        }

        v159 = v158 - v149;
        if (v156.y < -v157)
        {
          y = -v157;
        }

        v160 = v151 + y;
        if (v160 >= v157)
        {
          v160 = *(v41 + 16) + (*(v41 + 2) - *(v41 + 16)) * 0.5;
        }

        v161 = v160 - v151;
        [v147 drawAtPoint_];

        if (v60 == 12)
        {
          sub_269CEB4AC(v52, v161);
        }

        else if (!v60)
        {
          sub_269CEB31C(v52, v151 + v161);
        }

        goto LABEL_22;
      }

      sub_269C67C78(v95);
      v34 = v198;
      i = v202;
LABEL_22:
      v62 = v203;
LABEL_23:
      v60 = v62;
      if (v62 >= 24)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
  }

  __break(1u);
}

id SleepScheduleClockDial.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleClockDial.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleClockDial();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269CEB100(char a1, uint64_t a2)
{
  v3 = v2;
  sub_269CEB75C(0, &qword_280350108, sub_269CEB7C0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = 88;
  if (a1)
  {
    v8 = 96;
  }

  v9 = *(v3 + v8);
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D743D0];
  v12 = *MEMORY[0x277D76820];
  v13 = v7;
  result = [v10 _preferredFontForTextStyle_design_variant_maximumContentSizeCategory_compatibleWithTraitCollection_];
  if (result)
  {
    v15 = result;
    v16 = [result fontDescriptor];
    isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;
    v18 = UIFontDescriptor.addingUppercaseSmallCapsAttributes()().super.isa;

    v19 = [v10 fontWithDescriptor:v18 size:0.0];
    v20 = sub_269C1B0B8(0, &qword_28034E5F0);
    *(inited + 40) = v19;
    v21 = *MEMORY[0x277D740C0];
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    v22 = *(v3 + 112);
    *(inited + 104) = sub_269C1B0B8(0, &qword_280350120);
    *(inited + 80) = v22;
    v23 = v21;
    v24 = v22;
    v25 = sub_269C44B18(inited);
    swift_setDeallocating();
    sub_269CEB7C0();
    swift_arrayDestroy();
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269CEB31C(CGContext *a1, double a2)
{
  UIGraphicsPushContext(a1);
  v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v5 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 144];
  v18[8] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 128];
  v18[9] = v5;
  v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 176];
  *v19 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 160];
  v20 = v6;
  v7 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 80];
  v18[4] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 64];
  v18[5] = v7;
  v8 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 112];
  v18[6] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 96];
  v18[7] = v8;
  v9 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 16];
  v18[0] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v18[1] = v9;
  v10 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 48];
  v18[2] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 32];
  v18[3] = v10;
  sub_269C6AB64(v18, &v17);
  v11 = [v2 traitCollection];
  v12 = [v19[0] resolvedColorWithTraitCollection_];
  v13 = sub_269D9A5F0();
  v14 = [objc_opt_self() systemImageNamed:v13 compatibleWithTraitCollection:v11];

  if (v14)
  {
    v15 = [v14 imageWithTintColor:v12 renderingMode:2];
    sub_269C6ABC0(v18);

    if (v15)
    {
      [v15 size];
      [v15 drawAtPoint_];
    }
  }

  else
  {

    sub_269C6ABC0(v18);
  }

  UIGraphicsPopContext();
}

void sub_269CEB4AC(CGContext *a1, double a2)
{
  UIGraphicsPushContext(a1);
  v4 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v5 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 144];
  v19[8] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 128];
  v19[9] = v5;
  v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 176];
  v19[10] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 160];
  *v20 = v6;
  v7 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 80];
  v19[4] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 64];
  v19[5] = v7;
  v8 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 112];
  v19[6] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 96];
  v19[7] = v8;
  v9 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 16];
  v19[0] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration];
  v19[1] = v9;
  v10 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 48];
  v19[2] = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockDial_configuration + 32];
  v19[3] = v10;
  sub_269C6AB64(v19, &v18);
  v11 = [v2 traitCollection];
  v12 = [v20[1] resolvedColorWithTraitCollection_];
  v13 = sub_269D9A5F0();
  v14 = [objc_opt_self() systemImageNamed:v13 compatibleWithTraitCollection:v11];

  if (v14)
  {
    v15 = [v14 imageWithTintColor:v12 renderingMode:2];
    sub_269C6ABC0(v19);

    if (v15)
    {
      [v15 size];
      [v15 drawAtPoint_];
    }
  }

  else
  {

    sub_269C6ABC0(v19);
  }

  UIGraphicsPopContext();
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_269CEB68C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_269CEB6D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269CEB75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CEB7C0()
{
  if (!qword_280350110)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280350110);
    }
  }
}

unint64_t sub_269CEB82C()
{
  result = qword_28034DBA0;
  if (!qword_28034DBA0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DBA0);
  }

  return result;
}

id sub_269CEB884@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  v4 = [v2 secondarySystemBackgroundColor];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  v26 = sub_269C57E64;
  v27 = v5;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_269CC7F6C;
  v25 = &block_descriptor_19;
  v7 = _Block_copy(&v22);
  v8 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  v9 = [v2 systemGray4Color];
  v10 = [v2 systemGray2Color];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v26 = sub_269C937E4;
  v27 = v11;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_269CC7F6C;
  v25 = &block_descriptor_14;
  v13 = _Block_copy(&v22);
  v14 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v15 = *MEMORY[0x277D76968];
  v16 = *MEMORY[0x277D769D0];
  v17 = v15;
  v18 = [v2 labelColor];
  v19 = [v2 systemGrayColor];
  v20 = [v2 hk_sleepKeyColor];
  result = [v2 systemYellowColor];
  *a1 = v8;
  *(a1 + 8) = v14;
  *(a1 + 16) = 0x4059C00000000000;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0x4000000000000000;
  *(a1 + 40) = 15;
  *(a1 + 48) = xmmword_269DA60E0;
  *(a1 + 64) = xmmword_269DA60F0;
  *(a1 + 80) = v16;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = 2;
  *(a1 + 112) = v18;
  *(a1 + 120) = v19;
  *(a1 + 128) = xmmword_269DA6100;
  *(a1 + 144) = 0x6C69662E6E6F6F6DLL;
  *(a1 + 152) = 0xE90000000000006CLL;
  *(a1 + 160) = v20;
  strcpy((a1 + 168), "sun.max.fill");
  *(a1 + 181) = 0;
  *(a1 + 182) = -5120;
  *(a1 + 184) = result;
  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *TimeInBedComputable.timeInBed.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4(v22);
  v5 = v22[0];
  v6 = *(a2 + 8);
  result = v6(&v20, a1, a2);
  v8 = v20;
  v9 = v5 - v20;
  if (__OFSUB__(v5, v20))
  {
    __break(1u);
    goto LABEL_25;
  }

  (v4)(v22, a1, a2);
  v10 = v22[1];
  result = v6(&v20, a1, a2);
  v11 = v10 - v21;
  if (__OFSUB__(v10, v21))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v13 = -60;
  if (v11 > 0xFFFFFFFFFFFFFFC4)
  {
    v13 = v10 - v21;
  }

  v14 = v21 + v13;
  if (v14 == v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = v14 == v10;
  v17 = (v14 - v15) / 0x3CuLL;
  if (!v16)
  {
    ++v17;
  }

  if ((v5 ^ 0x8000000000000000) - v8 > v17)
  {
    v9 = v5 + ~v8 - v17;
    if ((v9 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (v9 >= 0x18)
      {
        v12 = v9 - 47;
        if (v9 < 0x2F)
        {
          v12 = 0;
        }

        return (v9 + (v12 + 23) % 0x18 - (v12 + 23) - 24);
      }

      return v9;
    }

LABEL_18:
    v18 = -24 - v9;
    if (v9 > 0xFFFFFFFFFFFFFFE8)
    {
      v18 = 0;
    }

    v19 = ((__PAIR128__(v18, v9) - 0xFFFFFFFFFFFFFFE8) >> 64) / 0x18;
    if (v9 < 0xFFFFFFFFFFFFFFE8)
    {
      ++v19;
    }

    v9 += 24 * v19 + 24;
    return v9;
  }

LABEL_26:
  __break(1u);
  return result;
}

void TimeInBedComputable.actualTimeIntervalInBed.getter(uint64_t a1, uint64_t a2)
{
  sub_269CEC308(0, &unk_28034D9A0, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = v28 - v6;
  sub_269CEC308(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  v34 = sub_269D971F0();
  v10 = *(v34 - 8);
  v11 = MEMORY[0x28223BE20](v34);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D62490]) init];
  [v16 setWeekdays_];
  (*(a2 + 16))(&v37, a1, a2);
  v36 = v10;
  v30 = v13;
  v31 = a1;
  v32 = v2;
  v33 = a2;
  if (v38 == 60 && __OFADD__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = sub_269D977A0();
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v28[1] = v18 + 56;
    v29 = v19;
    v19(v9, 1, 1, v17);
    v20 = v9;
    v21 = sub_269D97810();
    v28[0] = *(*(v21 - 8) + 56);
    (v28[0])(v35, 1, 1, v21);
    v22 = v20;
    sub_269D971D0();
    v23 = sub_269D97110();
    v24 = v36 + 8;
    v25 = *(v36 + 8);
    v25(v15, v34);
    [v16 setWakeUpComponents_];

    (*(v33 + 8))(&v37, v31);
    v36 = v24;
    if (v38 != 60 || !__OFADD__(v37, 1))
    {
      v29(v22, 1, 1, v17);
      (v28[0])(v35, 1, 1, v21);
      v26 = v30;
      sub_269D971D0();
      v27 = sub_269D97110();
      v25(v26, v34);
      [v16 setBedtimeComponents_];

      [v16 actualSleepInterval];
      return;
    }
  }

  __break(1u);
}

void sub_269CEC308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

Swift::String __swiftcall LocalizedString(_:table:comment:)(Swift::String _, SleepHealthUI::LocalizedStringTable table, Swift::String comment)
{
  v3 = sub_269D972C0();
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id static LocalizedStringTable.featureTable(feature:bundle:)@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  strcpy(v6, "Localizable-");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  MEMORY[0x26D650930]();
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  a2[2] = a1;

  return a1;
}

id static LocalizedStringTable.defaultTable(bundle:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x617A696C61636F4CLL;
  a2[1] = 0xEB00000000656C62;
  a2[2] = a1;
  return a1;
}

uint64_t sub_269CEC510(void *a1)
{
  v2 = v1;
  v4 = sub_269D9ACD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v8 = [objc_opt_self() defaultCenter];
  sub_269D9ACE0();

  swift_allocObject();
  swift_weakInit();
  sub_269CECA0C(&qword_280C0B4B0, 255, MEMORY[0x277CC9DB0]);
  v9 = sub_269D98900();

  (*(v5 + 8))(v7, v4);
  *(v2 + 16) = v9;

  return v2;
}

uint64_t sub_269CEC6C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for ObservableNotification();
    sub_269CECA0C(&qword_280350128, v1, type metadata accessor for ObservableNotification);
    sub_269D98770();

    sub_269D98810();
  }

  return result;
}

uint64_t ObservableNotification.deinit()
{
  if (*(v0 + 16))
  {

    sub_269D98750();
  }

  return v0;
}

uint64_t ObservableNotification.__deallocating_deinit()
{
  if (*(v0 + 16))
  {

    sub_269D98750();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_269CEC828@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableNotification();
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t static ObservableNotification.contentSizeObserver.getter()
{
  v0 = *MEMORY[0x277D76810];
  type metadata accessor for ObservableNotification();
  v1 = swift_allocObject();
  sub_269CEC510(v0);
  return v1;
}

const void *ObservableDarwinNotification.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  return v0;
}

uint64_t ObservableDarwinNotification.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  return swift_deallocClassInstance();
}

uint64_t sub_269CEC960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269D98770();
  *a1 = result;
  return result;
}

uint64_t sub_269CECA0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id static UIAlertController.overlappingOverrideOccurrenceAlert(sender:dismissHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v6 = sub_269D9A5F0();

  v7 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v6 message:0 preferredStyle:{0, 0xE000000000000000}];

  v8 = [v7 popoverPresentationController];
  [v8 setSourceItem_];

  sub_269D972C0();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  sub_269C255A8(a2);
  v10 = sub_269D9A5F0();

  v23 = sub_269CED524;
  v24 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269CECE18;
  v22 = &block_descriptor_20;
  v11 = _Block_copy(&aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  [v7 addAction_];
  sub_269D972C0();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  sub_269C255A8(a2);
  v15 = sub_269D9A5F0();

  v23 = sub_269CED560;
  v24 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_269CECE18;
  v22 = &block_descriptor_6_1;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 actionWithTitle:v15 style:1 handler:{v16, 0xE000000000000000}];
  _Block_release(v16);

  [v7 addAction_];
  return v7;
}

void sub_269CECE18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id static UIAlertController.internalOnlyAlert(for:dismissHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_getErrorValue();
    aBlock = sub_269D9B2F0();
    v22 = v6;
    sub_269D9A660();
  }

  v7 = sub_269D9A5F0();
  v8 = sub_269D9A5F0();

  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v11 = a1;
  sub_269C255A8(a2);
  v12 = sub_269D9A5F0();
  v25 = sub_269CED584;
  v26 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_269CECE18;
  v24 = &block_descriptor_12_2;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v9 addAction_];
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  sub_269C255A8(a2);
  v17 = sub_269D9A5F0();
  v25 = sub_269CED5D0;
  v26 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_269CECE18;
  v24 = &block_descriptor_18;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 actionWithTitle:v17 style:1 handler:v18];
  _Block_release(v18);

  [v9 addAction_];
  return v9;
}

uint64_t sub_269CED198(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v5 = sub_269D973D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_269D9A5F0();
  if (a2)
  {
    v19[1] = a2;
    v10 = a2;
    sub_269C80B44();
    sub_269D9A660();
  }

  v11 = objc_opt_self();
  v12 = sub_269D9A5F0();

  v13 = [v11 hk:v9 tapToHealthRadarURLWithTitle:v12 description:2 classification:0 reproducibility:0 keywords:2 autoDiagnostics:0 attachments:?];

  sub_269D973B0();
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    v16 = sub_269D973A0();
    sub_269C449C0(MEMORY[0x277D84F90]);
    v17 = sub_269D9A480();

    [v15 openSensitiveURL:v16 withOptions:v17];
  }

  if (a3)
  {
    a3(1);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_269CED45C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    a2(a5 & 1);
  }
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_269CED60C@<X0>(char *a1@<X8>)
{
  sub_269CED970();
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_269D97580();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_269D96FD0();
  sub_269D96FA0();
  sub_269CED9D8();
  result = sub_269D9A550();
  if (result)
  {
    v17 = *(v10 + 32);
    v17(v8, v15, v9);
    v17(&v8[*(v3 + 48)], v13, v9);
    sub_269CEDA30(v8, v6);
    v18 = *(v3 + 48);
    v17(a1, v6, v9);
    v19 = *(v10 + 8);
    v19(&v6[v18], v9);
    sub_269CEDA94(v8, v6);
    v20 = *(v3 + 48);
    sub_269C42128();
    v17(&a1[*(v21 + 36)], &v6[v20], v9);
    return (v19)(v6, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DateInterval.merging(_:)()
{
  v0 = sub_269D97580();
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  sub_269D96FD0();
  sub_269D96FA0();
  return sub_269D96FB0();
}

uint64_t DateInterval.hkspDescription.getter()
{
  v0 = sub_269D96F70();
  v1 = [v0 hkspDescription];

  v2 = sub_269D9A630();
  return v2;
}

void sub_269CED970()
{
  if (!qword_280C0BB70)
  {
    sub_269D97580();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C0BB70);
    }
  }
}

unint64_t sub_269CED9D8()
{
  result = qword_280C0BB68;
  if (!qword_280C0BB68)
  {
    sub_269D97580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0BB68);
  }

  return result;
}

uint64_t sub_269CEDA30(uint64_t a1, uint64_t a2)
{
  sub_269CED970();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CEDA94(uint64_t a1, uint64_t a2)
{
  sub_269CED970();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Binding<A>.init<A>(mappedTo:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_269CEDDA0(a1, a2);
  sub_269D9AE60();
  v4 = sub_269D9A040();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t sub_269CEDB90@<X0>(uint64_t a1@<X3>, BOOL *a2@<X8>)
{
  v4 = sub_269D9AE60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = sub_269D9A040();
  MEMORY[0x26D650250](v8);
  v9 = (*(*(a1 - 8) + 48))(v7, 1, a1) != 1;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_269CEDCB0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_269D9AE60();
  result = MEMORY[0x28223BE20](v7);
  if ((*a1 & 1) == 0)
  {
    (*(*(a5 - 8) + 56))(&v10 - v9, 1, 1, a5);
    sub_269D9A040();
    return sub_269D9A010();
  }

  return result;
}

uint64_t sub_269CEDDA0(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v16 = a1;
  sub_269D9AE60();
  v4 = sub_269D9A040();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(v5 + 16);
  v8(&v14 - v6, a1, v4);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = a2;
  v11 = *(v5 + 32);
  v11(&v10[v9], v7, v4);
  v8(v7, v16, v4);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v15;
  v11(&v12[v9], v7, v4);
  sub_269D9A030();
  return v17;
}

uint64_t sub_269CEDF78@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_269D9AE60();
  sub_269D9A040();

  return sub_269CEDB90(v3, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 32);
  sub_269D9AE60();
  v2 = (sub_269D9A040() - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[10];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v0 + v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v0 + v3 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_269CEE14C(_BYTE *a1)
{
  v3 = v1[4];
  sub_269D9AE60();
  v4 = *(sub_269D9A040() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_269CEDCB0(a1, v5, v6, v7, v3);
}

id PresentationStyle.preferredLinkColor.getter(id result)
{
  if (!result || result == 2)
  {
    result = HKHealthTintColor();
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (result != 1)
  {
LABEL_9:
    result = sub_269D9B290();
    __break(1u);
    return result;
  }

  result = BPSBridgeTintColor();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t PresentationStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_269CEE270@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id PresentationStyle.preferredButtonTintColor.getter(uint64_t a1)
{
  result = 0;
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      return BPSPillSelectedColor();
    }

    else
    {
      result = sub_269D9B290();
      __break(1u);
    }
  }

  return result;
}

uint64_t PresentationStyle.preferredColorScheme.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    result = sub_269D9B290();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_279C85F08 + a1);
    v4 = sub_269D989F0();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

unint64_t sub_269CEE3A4()
{
  result = qword_280350130;
  if (!qword_280350130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350130);
  }

  return result;
}

void sub_269CEE408()
{
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  __swift_project_value_buffer(v1, qword_280351208);

  oslog = sub_269D98230();
  v2 = sub_269D9AB80();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136446466;
    v11 = sub_269D9B4D0();
    v12 = v5;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*(v0 + 16), *(v0 + 24));
    v6 = sub_269C2EACC(v11, v12, &v13);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269D98880();

    if (v11)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v11)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_269C2EACC(v7, v8, &v13);

    *(v3 + 14) = v9;
    _os_log_impl(&dword_269C18000, oslog, v2, "[%{public}s] updated visible: %{public}s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_269CEE680()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  return v1;
}

char *sub_269CEE6F4(uint64_t a1, uint64_t a2)
{
  sub_269CEF330();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 4) = 0;
  v10 = OBJC_IVAR____TtC13SleepHealthUI25ContentAppearenceProvider__visible;
  LOBYTE(aBlock[0]) = 0;
  sub_269D98840();
  (*(v7 + 32))(&v2[v10], v9, v6);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  v11 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  [v11 setNeedsUserInteractivePriority_];
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_269CEF654;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269CEEBA8;
  aBlock[3] = &block_descriptor_21;
  v13 = _Block_copy(aBlock);

  [v11 setTransitionHandler_];
  _Block_release(v13);
  v14 = [objc_opt_self() monitorWithConfiguration_];
  v15 = *(v2 + 4);
  *(v2 + 4) = v14;

  v16 = *(v2 + 4);
  if (v16)
  {
    v17 = [v16 currentLayout];
  }

  else
  {
    v17 = 0;
  }

  sub_269CEEE14(v17);

  return v2;
}

uint64_t sub_269CEE940(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9A900();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_269D9A8E0();
  v10 = a2;

  v11 = sub_269D9A8D0();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a4;
  v12[5] = a2;
  sub_269C7A29C(0, 0, v8, &unk_269DA64B0, v12);
}

uint64_t sub_269CEEA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_269D9A8E0();
  v5[8] = sub_269D9A8D0();
  v7 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CEEB00, v7, v6);
}

uint64_t sub_269CEEB00()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_269CEEE14(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_269CEEBA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_269CEEC48()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 32) = 0;

  v3 = OBJC_IVAR____TtC13SleepHealthUI25ContentAppearenceProvider__visible;
  sub_269CEF330();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContentAppearenceProvider()
{
  result = qword_280350140;
  if (!qword_280350140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CEED70()
{
  sub_269CEF330();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_269CEEE14(void *a1)
{
  v2 = v1;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280351208);
  v5 = a1;

  v6 = sub_269D98230();
  v7 = sub_269D9AB50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136446466;
    v35 = sub_269D9B4D0();
    v36 = v10;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*(v1 + 16), *(v1 + 24));
    v11 = sub_269C2EACC(v35, v36, &v38);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (a1)
    {
      LOBYTE(v35) = v5;
      sub_269C1B0B8(0, &qword_280350150);
      v12 = v5;
      v13 = sub_269D9A660();
      v15 = v14;
    }

    else
    {
      v13 = 7104878;
      v15 = 0xE300000000000000;
    }

    v18 = sub_269C2EACC(v13, v15, &v38);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] updated layout: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);

    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_7:
    v16 = sub_269CEF380();
    v17 = v16 & ([v5 displayBacklightLevel] == 100);
    goto LABEL_11;
  }

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v17 = 0;
LABEL_11:

  v19 = v5;
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();

  if (os_log_type_enabled(v20, v21))
  {
    v34 = v17;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136446722;
    v35 = sub_269D9B4D0();
    v37 = v24;
    MEMORY[0x26D650930](58, 0xE100000000000000);
    MEMORY[0x26D650930](*(v2 + 16), *(v2 + 24));
    v25 = sub_269C2EACC(v35, v37, &v38);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    if (a1)
    {
      sub_269CEF380();
      v26 = sub_269D9A660();
      v28 = sub_269C2EACC(v26, v27, &v38);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2082;
      LOBYTE(v35) = [v19 displayBacklightLevel] == 100;
      v29 = sub_269D9A660();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v32 = sub_269C2EACC(7104878, 0xE300000000000000, &v38);

      v29 = 7104878;
      *(v22 + 14) = v32;
      *(v22 + 22) = 2082;
    }

    v33 = sub_269C2EACC(v29, v31, &v38);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] updated layout, contains SleepLockScreen: %{public}s, display on: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v23, -1, -1);
    MEMORY[0x26D652460](v22, -1, -1);

    v17 = v34;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  if (v17 != v35)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_269D98890();
    sub_269CEE408();
  }
}

void sub_269CEF330()
{
  if (!qword_28034E9D0)
  {
    v0 = sub_269D988A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E9D0);
    }
  }
}

uint64_t sub_269CEF380()
{
  v1 = [v0 elements];
  sub_269C1B0B8(0, &qword_280350158);
  v2 = sub_269D9A7E0();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D651260](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 bundleIdentifier];
      if (v8)
      {
        v9 = v8;
        v10 = sub_269D9A630();
        v12 = v11;

        if (v10 == 0xD000000000000019 && 0x8000000269DB1380 == v12)
        {

          i = 1;
          goto LABEL_19;
        }

        v14 = sub_269D9B280();

        if (v14)
        {

          i = 1;
          goto LABEL_19;
        }
      }

      ++v4;
      if (v7 == i)
      {
        i = 0;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_19:

  return i;
}

uint64_t sub_269CEF55C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880();

  *a1 = v3;
  return result;
}

void sub_269CEF5DC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_269D98890();
  sub_269CEE408();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269CEF674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269C71C08;

  return sub_269CEEA64(a1, v4, v5, v7, v6);
}

uint64_t sub_269CEF760(uint64_t a1)
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
    v2 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepSchedule);
    v3 = v2;
    static ScheduleOccurrenceViewModel.ViewStyle.sleepFocusFullScheduleStyle.getter(v6);
    v4 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV013makeRepeatingeF6Models05sleepD09viewStyleSayACGSo09HKSPSleepD0CSg_AC0fM0VtFZ_0(v2, v6);

    v8[10] = v6[10];
    v8[11] = v6[11];
    v9 = v7;
    v8[6] = v6[6];
    v8[7] = v6[7];
    v8[8] = v6[8];
    v8[9] = v6[9];
    v8[2] = v6[2];
    v8[3] = v6[3];
    v8[4] = v6[4];
    v8[5] = v6[5];
    v8[0] = v6[0];
    v8[1] = v6[1];
    sub_269CEFF2C(v8);
    *&v6[0] = v4;
    swift_getKeyPath();
    sub_269CF0114(0, &qword_280350178, type metadata accessor for ScheduleOccurrenceViewModel, MEMORY[0x277D83940]);
    type metadata accessor for ScheduleOccurrenceView(0);
    sub_269CEFF80();
    sub_269CEFEC8(&qword_280350188, type metadata accessor for ScheduleOccurrenceViewModel);
    sub_269CEFEC8(&qword_280350170, type metadata accessor for ScheduleOccurrenceView);
    sub_269D9A080();
  }

  else
  {
    type metadata accessor for SleepScheduleModel();
    sub_269CEFEC8(&qword_28034E860, type metadata accessor for SleepScheduleModel);
    result = sub_269D98E30();
    __break(1u);
  }

  return result;
}

uint64_t sub_269CEFA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CF0008(a1, a2);
}

void sub_269CEFAB4(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = *&a1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 24];
    v9 = *&a1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider + 32];
    __swift_project_boxed_opaque_existential_1Tm(&a1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_sleepScheduleProvider], v8);
    v10 = *&a1[OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleModel_currentDateProvider];
    v11 = a1;
    v10();
    v12 = SleepScheduleProviding.upcomingResolvedOccurrence(forCurrentDate:)(v7, v8, v9);

    (*(v5 + 8))(v7, v4);
    v13 = [objc_allocWithZone(type metadata accessor for RelativeWeekdayFormatter()) init];
    static ScheduleOccurrenceViewModel.ViewStyle.sleepFocusNextOccurrenceStyle.getter(v14);
    ScheduleOccurrenceViewModel.init(resolvedOccurrence:relativeWeekdayFormatter:viewStyle:)(v12, v13, v14, a2);
  }

  else
  {
    type metadata accessor for SleepScheduleModel();
    sub_269CEFEC8(&qword_28034E860, type metadata accessor for SleepScheduleModel);
    sub_269D98E30();
    __break(1u);
  }
}

uint64_t sub_269CEFC84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CEFAB4(v3, a1);
}

uint64_t sub_269CEFD34(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_269CEFD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_269CEFDF0()
{
  result = qword_280350160;
  if (!qword_280350160)
  {
    sub_269CF0114(255, &qword_280350168, type metadata accessor for ScheduleOccurrenceView, MEMORY[0x277CE0FA8]);
    sub_269CEFEC8(&qword_280350170, type metadata accessor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350160);
  }

  return result;
}

uint64_t sub_269CEFEC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269CEFF80()
{
  result = qword_280350180;
  if (!qword_280350180)
  {
    sub_269CF0114(255, &qword_280350178, type metadata accessor for ScheduleOccurrenceViewModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350180);
  }

  return result;
}

uint64_t sub_269CF0008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269CF006C()
{
  result = qword_280350190;
  if (!qword_280350190)
  {
    sub_269CF0114(255, &qword_280350198, sub_269CF0178, MEMORY[0x277CE0FA8]);
    sub_269CF027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350190);
  }

  return result;
}

void sub_269CF0114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CF0178()
{
  if (!qword_2803501A0)
  {
    sub_269CF0114(255, &qword_280350178, type metadata accessor for ScheduleOccurrenceViewModel, MEMORY[0x277D83940]);
    type metadata accessor for ScheduleOccurrenceViewModel();
    type metadata accessor for ScheduleOccurrenceView(255);
    sub_269CEFF80();
    sub_269CEFEC8(&qword_280350188, type metadata accessor for ScheduleOccurrenceViewModel);
    v0 = sub_269D9A0A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803501A0);
    }
  }
}

unint64_t sub_269CF027C()
{
  result = qword_2803501A8;
  if (!qword_2803501A8)
  {
    sub_269CF0178();
    sub_269CEFEC8(&qword_280350170, type metadata accessor for ScheduleOccurrenceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803501A8);
  }

  return result;
}

uint64_t sub_269CF0354(uint64_t *a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v6 = v3;
  v7 = *a1;
  swift_beginAccess();
  sub_269C63264(&v6[v7], v28);
  if (!v29)
  {
    sub_269C8492C(v28, &qword_28034E548, &qword_28034E550);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0);
  }

  sub_269C3232C(0, &qword_28034E550);
  sub_269C3232C(0, &qword_2803501E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0);
  }

  if (!*(&v26 + 1))
  {
    return sub_269C8492C(&v25, &qword_2803501D8, &qword_2803501E0);
  }

  v8 = sub_269C25520(&v25, v28);
  v9 = a2(v8);
  v10 = *&v9[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher];

  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  v13 = (*(v12 + 24))(v11, v12);

  if (!v10 || (, v13 != v10))
  {
    v14 = *&v6[*a3];
    v15 = v29;
    v16 = v30;
    __swift_project_boxed_opaque_existential_1Tm(v28, v29);
    v17 = *(v16 + 24);
    v18 = v14;
    *&v18[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_timeIntervalPublisher] = v17(v15, v16);

    sub_269CD9628();
  }

  __swift_project_boxed_opaque_existential_1Tm(v28, v29);
  v19 = sub_269D98160();
  if (v20)
  {
    v21 = *&v6[*a3];
    *&v25 = v19;
    *(&v25 + 1) = v20;
    v22 = v21;

    MEMORY[0x26D650930](0x72656B6369502ELL, 0xE700000000000000);

    v23 = sub_269D9A5F0();

    [v22 setAccessibilityIdentifier_];
  }

  [v6 layoutIfNeeded];
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

id sub_269CF0630()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker);
  }

  else
  {
    v4 = v0;
    v5 = sub_269D912B8();
    v7 = v6;
    v9 = v8;
    v10 = v5;
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for TimeIntervalPickerView());
    v14 = sub_269CD9CE4(v10, v12 & 1, v7, v9);
    v15 = *(v4 + v1);
    *(v4 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_269CF06D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker] = 0;
  if (a3)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for TimePickerTableViewCell();
  v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  sub_269CF0F78(sub_269CF0630);
  v9 = sub_269CF0630();
  v10 = [v8 contentView];
  UIView.alignConstraints(to:insets:reduceBottomConstraintPriority:)(v10, 0, *MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24));

  v11 = [v8 backgroundColor];
  if (!v11)
  {
    v11 = [objc_opt_self() systemGroupedBackgroundColor];
  }

  v12 = v11;
  [v8 setBackgroundColor_];
  v13 = [v8 selectedBackgroundView];
  [v13 setBackgroundColor_];

  return v8;
}