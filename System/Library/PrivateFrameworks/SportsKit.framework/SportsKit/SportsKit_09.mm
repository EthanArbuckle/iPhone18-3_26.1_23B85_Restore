uint64_t sub_26B6D8DF4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider;
  swift_beginAccess();
  sub_26B642140(v1 + v7, v19);
  v8 = v20;
  v9 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v10 = (*(v9 + 8))(&v14, v8, v9);
  if (!v11)
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v10 = sub_26B656098();
  }

  v12 = v10;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v12;
}

double sub_26B6D8ED4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 34);
    if ((v6 - 2) < 2)
    {
      v15 = *(a1 + 24);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 5;
      v15 = sub_26B6D8DF4(&v15);
      v16 = v9;
      v17 = 0;
      v18 = 0;
      v19 = 1;
    }

    else
    {
      if (v6 != 1 && v6 != 4)
      {
        goto LABEL_2;
      }

      v15 = *(a1 + 24);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 5;
      v15 = sub_26B6D8DF4(&v15);
      v16 = v8;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    v10 = sub_26B6D8DF4(&v15);
    v12 = v11;
    sub_26B6DC788(v15, v16, v17, v18, v19);
    v13 = *(type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0) + 32);
    v14 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    __swift_storeEnumTagSinglePayload(a2 + v13, 1, 1, v14);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = v10;
    *(a2 + 40) = v12;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    return result;
  }

LABEL_2:
  if (qword_280408D70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  __swift_project_value_buffer(v3, qword_280421AC8);
  sub_26B6DB5B0();
  return result;
}

uint64_t sub_26B6D9038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39[-v7];
  if (*(a1 + 33) == 10)
  {
    goto LABEL_2;
  }

  v13 = *(a1 + 33);
  if ((sub_26B6475E8() & 1) == 0)
  {
    if (sub_26B6475E8())
    {
      if (*(a1 + 17) == 1 && (*(a1 + 32) & 1) == 0 && *(a1 + 24) == 1)
      {
        v40 = 7;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 7;
        v23 = sub_26B6D8DF4(&v40);
        v25 = v24;
        v26 = 1;
LABEL_21:
        v40 = v26;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 7;
        v29 = sub_26B6D8DF4(&v40);
        v31 = v30;
        v32 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
        v33 = *(v32 + 32);
        v34 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
        __swift_storeEnumTagSinglePayload(a2 + v33, 1, 1, v34);
        *a2 = v23;
        a2[1] = v25;
        a2[2] = 0;
        a2[3] = 0;
        a2[4] = v29;
        a2[5] = v31;
        a2[6] = 0;
        a2[7] = 0;
        v10 = a2;
        v11 = 0;
        v9 = v32;
        goto LABEL_3;
      }

      if (*(a1 + 18) == 1 && (*(a1 + 32) & 1) == 0 && *(a1 + 24) >= 2)
      {
        v40 = 7;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 7;
        v23 = sub_26B6D8DF4(&v40);
        v25 = v28;
        v26 = 2;
        goto LABEL_21;
      }
    }

LABEL_2:
    v9 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
    v10 = a2;
    v11 = 1;
LABEL_3:

    return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
  }

  v14 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v15 = sub_26B6BE9DC(*(a1 + *(v14 + 60)));
  v17 = v16;
  v40 = 8;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 7;
  sub_26B6D8DF4(&v40);

  v18 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v20 = 0xE000000000000000;
  v21 = 0;
  switch(v19)
  {
    case 1:
      goto LABEL_24;
    case 2:
      v27 = 9;
      goto LABEL_23;
    case 3:
      goto LABEL_9;
    case 4:
      goto LABEL_16;
    default:
      if (*(a1 + 16) != 1)
      {
        goto LABEL_16;
      }

LABEL_9:
      if (v17)
      {
        v40 = v15;
        v41 = v17;
        v42 = 0;
        v43 = 0;
        v44 = 3;
        swift_bridgeObjectRetain_n();
        v21 = sub_26B6D8DF4(&v40);
        v20 = v22;

        sub_26B6DC788(v40, v41, v42, v43, v44);
      }

      else
      {
LABEL_16:
        v27 = 8;
LABEL_23:
        v40 = v27;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 7;
        v21 = sub_26B6D8DF4(&v40);
        v20 = v35;
      }

LABEL_24:
      v36 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v36);
      if (*(a1 + 16) == 1)
      {

        v40 = 3;
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 7;
        v15 = sub_26B6D8DF4(&v40);
        v17 = v37;
      }

      *a2 = 0u;
      *(a2 + 1) = 0u;
      a2[4] = v21;
      a2[5] = v20;
      v38 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
      sub_26B650F44(v8, a2 + *(v38 + 32), &qword_28040B410, &qword_26B6F94B0);
      a2[6] = v15;
      a2[7] = v17;
      result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v38);
      break;
  }

  return result;
}

uint64_t sub_26B6D93E0(_BYTE *a1, uint64_t a2, char a3, unsigned __int8 *a4)
{
  v6 = *a4;
  if (*a1 == 10 || (sub_26B6475E8() & 1) == 0)
  {
    switch(v6)
    {
      case 5:

        return 0;
      default:
        v7 = sub_26B6EA5D4();

        if (v7)
        {
          return 0;
        }

        LOBYTE(v17) = v6;
        v9 = sub_26B6D9AAC(a2, a3 & 1, &v17);
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case 5:

        goto LABEL_11;
      default:
        v10 = sub_26B6EA5D4();

        if (v10)
        {
LABEL_11:
          v17 = 7;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 7;
        }

        else
        {
          if ((a3 & 1) == 0 && a2 >= 2)
          {
            v17 = a2;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 4;
            v11 = sub_26B6D8DF4(&v17);
            v13 = v12;
            v17 = 6;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v21 = 7;
            v14 = sub_26B6D8DF4(&v17);
            v17 = v11;
            v18 = v13;
            v19 = v14;
            v20 = v15;
            v21 = 6;
            v8 = sub_26B6D8DF4(&v17);
            sub_26B6DC788(v17, v18, v19, v20, v21);
            return v8;
          }

          v17 = 6;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = 7;
        }

        v9 = sub_26B6D8DF4(&v17);
        break;
    }
  }

  return v9;
}

uint64_t sub_26B6D9704(uint64_t a1, char a2, _BYTE *a3)
{
  switch(*a3)
  {
    case 5:

      result = 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }

      break;
    default:
      v6 = sub_26B6EA5D4();

      result = 0;
      if ((v6 & 1) != 0 && (a2 & 1) == 0)
      {
LABEL_6:
        if (a1 >= 1)
        {
          v7 = sub_26B6EA564();
          MEMORY[0x26D67D4D0](v7);

          MEMORY[0x26D67D4D0](41, 0xE100000000000000);
          result = 11048;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_26B6D98A4(uint64_t a1)
{
  v2 = v1;
  v3 = 808466992;
  v4 = [v2 stringFromTimeInterval_];
  if (v4)
  {
    v5 = v4;
    v6 = sub_26B6E9A24();
    v8 = v7;
  }

  else
  {
    v6 = 808466992;
    v8 = 0xE400000000000000;
  }

  if (v6 == 808466992 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = sub_26B6EA5D4();

    if ((v10 & 1) != 0 || (sub_26B6E9B84() & 1) == 0)
    {
      return v6;
    }

    else
    {

      v11 = sub_26B6D99D8(1uLL, v6, v8);
      v3 = MEMORY[0x26D67D470](v11);
    }
  }

  return v3;
}

unint64_t sub_26B6D99D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_26B6E9B04();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_26B6E9BC4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6D9AAC(uint64_t a1, char a2, _BYTE *a3)
{
  if (a2)
  {
    return 0;
  }

  switch(*a3)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      v5 = sub_26B6EA5D4();

      if (v5)
      {
        goto LABEL_6;
      }

      v7 = a1;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 4;
      break;
    default:

LABEL_6:
      v7 = a1;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 5;
      break;
  }

  v11 = v6;
  return sub_26B6D8DF4(&v7);
}

id RunningClockComponentsFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RunningClockComponentsFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SportingEventSubscription.createRunningClockDataSource(preferStaticClock:)()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport);
  v13 = *(v0 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sport + 8);
  v14 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  OUTLINED_FUNCTION_29_2();
  v15 = *(v0 + v14);

  v16 = v15;
  v47 = sub_26B6DA318();

  v17 = *(v1 + v14);
  v48 = v12;
  v46 = sub_26B6DA5D8(v12, v13);

  v18 = *(v1 + v14);
  v45 = sub_26B6DA45C();

  v19 = *(v1 + v14);
  v20 = *(*(*(v19 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v44 = *(v20 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v43 = *(v20 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  v42 = *(v20 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v41 = *(v20 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v40 = *(v19 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  if (v3)
  {
    v21 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v21);
  }

  else
  {
    sub_26B6DA70C();
  }

  v22 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  sub_26B6BCA60();
  v39 = v23;
  v24 = *(*(v1 + v14) + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v25 = *(*&v24[OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current] + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v26 = v24;
  v27 = v25;
  SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)();
  v28 = v49;
  LODWORD(v25) = v50;

  v29 = *(v1 + v14);
  if (v25 == 1)
  {
    v30 = *(*(v29 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    if (v30 && (v31 = *(v30 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional)) != 0)
    {
      v32 = (v31 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
      v28 = *v32;
      v33 = *(v32 + 8);
    }

    else
    {
      v28 = 0;
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v29 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  *v5 = v48;
  *(v5 + 8) = v13;
  *(v5 + 16) = v47 & 1;
  *(v5 + 17) = v46 & 1;
  *(v5 + 18) = v45 & 1;
  *(v5 + 24) = v44;
  *(v5 + 32) = v41;
  v35 = v42;
  *(v5 + 33) = v43;
  *(v5 + 34) = v35;
  *(v5 + 35) = v40;
  v36 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  sub_26B650F44(v11, v5 + v36[12], &qword_28040B410, &qword_26B6F94B0);
  *(v5 + v36[13]) = v39;
  v37 = v5 + v36[14];
  *v37 = v28;
  *(v37 + 8) = v33;
  *(v5 + v36[15]) = v34;

  OUTLINED_FUNCTION_8_0();
}

uint64_t RunningClockComponentsFormatter.formattedComponents(sportingEvent:sport:)()
{
  v1 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  v2 = OUTLINED_FUNCTION_46(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_26_6();
  SportingEvent.dataSource(for:)();
  RunningClockComponentsFormatter.formattedComponents(dataSource:)();
  OUTLINED_FUNCTION_6_13();
  return sub_26B6DB340(v0, v5);
}

void SportingEvent.dataSource(for:)()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  OUTLINED_FUNCTION_46(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_0();
  v38 = sub_26B6DA318();
  v39 = v4;
  v37 = sub_26B6DA5D8(v6, v4);
  v36 = sub_26B6DA45C();
  v13 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v14 = *(v13 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current);
  v15 = OBJC_IVAR____TtC9SportsKit18SportingEventClock_period;
  v16 = *(v14 + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v35 = *(v16 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v33 = *(v16 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__subdivision);
  v34 = *(v16 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);
  v32 = *(v16 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v31 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v17 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
  v18 = SportingEventClock.totalSeconds.getter();
  v20 = v19;
  v21 = *(v14 + v15);
  SportingEventCurrentClock.announcedAdditionalMinutesAndSeconds(for:)();
  v22 = v40;

  if (v41 == 1)
  {
    v23 = *(v13 + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock__total);
    if (v23 && (v24 = *(v23 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__additional)) != 0)
    {
      v25 = (v24 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
      v22 = *v25;
      v26 = *(v25 + 8);
    }

    else
    {
      v22 = 0;
      v26 = 1;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  if (v20)
  {
    v28 = 0;
  }

  else
  {
    v28 = v18;
  }

  *v8 = v6;
  *(v8 + 8) = v39;
  *(v8 + 16) = v38 & 1;
  *(v8 + 17) = v37 & 1;
  *(v8 + 18) = v36 & 1;
  *(v8 + 24) = v35;
  *(v8 + 32) = v32;
  *(v8 + 33) = v34;
  *(v8 + 34) = v33;
  *(v8 + 35) = v31;
  v29 = type metadata accessor for RunningClockComponentsFormatter.DataSource(0);
  sub_26B650F44(v1, v8 + v29[12], &qword_28040B410, &qword_26B6F94B0);
  *(v8 + v29[13]) = v28;
  v30 = v8 + v29[14];
  *v30 = v22;
  *(v30 + 8) = v26;
  *(v8 + v29[15]) = v27;

  OUTLINED_FUNCTION_8_0();
}

uint64_t sub_26B6DA318()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v2 = 1;
  switch(v1)
  {
    case 3:
      break;
    default:
      v2 = sub_26B6EA5D4();
      break;
  }

  return v2 & 1;
}

uint64_t sub_26B6DA45C()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__activityStatus);
  if (v1 && *(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_isBreak) == 1)
  {
    v2 = 1;
    switch(*(v1 + OBJC_IVAR____TtC9SportsKit32SportingEventClockActivityStatus_breakType))
    {
      case 5:
        break;
      default:
        v2 = sub_26B6EA5D4();
        break;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_26B6DA5D8(uint64_t a1, void *a2)
{
  if ((sub_26B6DA45C() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(*(*(v2 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock_period);
  v6 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index);
  v7 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__index + 8);
  v8 = *(v5 + OBJC_IVAR____TtC9SportsKit24SportingEventClockPeriod__type);

  v9._countAndFlagsBits = a1;
  v9._object = a2;
  Sport.init(rawValue:)(v9);
  if (v15 - 3 < 2)
  {
    if (v8 != 10 && (sub_26B6475E8() & 1) != 0)
    {
      v10 = v6 == 2;
      goto LABEL_9;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  if (v15 == 1)
  {
    if (v6 == 2)
    {
      v13 = v7;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      if (v8 == 10)
      {
        v12 = 1;
      }

      else
      {
        v12 = sub_26B6475E8() ^ 1;
      }

      return v12 & 1;
    }

    goto LABEL_17;
  }

  if (v15 != 5)
  {
    goto LABEL_17;
  }

  v10 = v6 == 1;
LABEL_9:
  v11 = v10;
  v12 = v11 & ~v7;
  return v12 & 1;
}

void sub_26B6DA70C()
{
  OUTLINED_FUNCTION_10_0();
  v1 = v0;
  v103 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  OUTLINED_FUNCTION_46(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v106 = v92 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B548, &qword_26B6F9DA0);
  v8 = OUTLINED_FUNCTION_16(v109);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_30_0();
  v108 = v11 - v12;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v13);
  v107 = v92 - v14;
  v104 = sub_26B6E9564();
  v15 = OUTLINED_FUNCTION_4(v104);
  v111 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v102 = v19 - v20;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v21);
  v113 = v92 - v22;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v23);
  v25 = v92 - v24;
  v26 = sub_26B6E9164();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_30_0();
  v34 = (v32 - v33);
  MEMORY[0x28223BE20](v35);
  v37 = v92 - v36;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  v38 = OUTLINED_FUNCTION_16(v105);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30_0();
  v101 = v41 - v42;
  OUTLINED_FUNCTION_29_5();
  MEMORY[0x28223BE20](v43);
  v110 = v92 - v44;
  v45 = *(v1 + OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_runningClock);
  v46 = OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_runningClockInterval;
  OUTLINED_FUNCTION_29_2();
  v47 = *(v29 + 16);
  v47(v37, v45 + v46, v26);
  sub_26B6E9134();
  v48 = *(v29 + 8);
  v97 = v37;
  v48(v37, v26);
  v98 = v45;
  v96 = v46;
  v95 = v29 + 16;
  v94 = v47;
  v47(v34, v45 + v46, v26);
  sub_26B6E9114();
  v99 = (v29 + 8);
  v100 = v26;
  v93 = v48;
  v48(v34, v26);
  v49 = v104;
  OUTLINED_FUNCTION_0_18();
  v52 = sub_26B6DB3EC(v50, v51);
  v112 = v25;
  OUTLINED_FUNCTION_42_2();
  if (sub_26B6E99B4())
  {
    v54 = v110;
    v53 = v111;
    v55 = v49;
    v56 = v107;
    v57 = v108;
    v59 = v111 + 32;
    v58 = *(v111 + 32);
    v58(v107, v112, v49);
    v60 = OUTLINED_FUNCTION_61_2();
    (v58)(v60);
    sub_26B650B70(v56, v57, &qword_28040B548, &qword_26B6F9DA0);
    v61 = *(v25 + 12);
    v58(v54, v57, v55);
    v92[2] = v52;
    v63 = v53 + 8;
    v62 = *(v53 + 8);
    v62(v57 + v61, v55);
    sub_26B650F44(v56, v57, &qword_28040B548, &qword_26B6F9DA0);
    v64 = v105;
    v65 = v54 + *(v105 + 36);
    v66 = v57 + *(v25 + 12);
    v92[1] = v59;
    v92[0] = v58;
    v58(v65, v66, v55);
    v62(v57, v55);
    v67 = v97;
    v68 = v98;
    v69 = v100;
    v94(v97, v98 + v96, v100);
    v70 = v112;
    sub_26B6E9134();
    v93(v67, v69);
    v71 = *(v68 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_currentStopValue);
    v72 = v102;
    sub_26B6E94F4();
    v99 = v62;
    v100 = v63;
    v62(v70, v55);
    v73 = v101;
    sub_26B650B70(v54, v101, &qword_28040B420, &unk_26B6F94C0);
    v74 = v106;
    (*(v111 + 16))(v106, v72, v55);
    v75 = v55;
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v55);
    v76 = *(v68 + OBJC_IVAR____TtC9SportsKit25SportingEventRunningClock_isCountingDown);
    v77 = *(v64 + 36);
    if ((sub_26B6E99A4() & 1) == 0)
    {
      v90 = v74;
      v79 = v103;
      sub_26B650F44(v73, v103, &qword_28040B420, &unk_26B6F94C0);
      v88 = v99;
      goto LABEL_6;
    }

    sub_26B6E9554();
    sub_26B6E9554();
    OUTLINED_FUNCTION_42_2();
    v78 = sub_26B6E99B4();
    sub_26B650BBC(v73, &qword_28040B420, &unk_26B6F94C0);
    v79 = v103;
    if (v78)
    {
      v80 = v107;
      v81 = v112;
      LODWORD(v112) = v76;
      v82 = v92[0];
      (v92[0])(v107, v81, v55);
      v83 = OUTLINED_FUNCTION_61_2();
      v82(v83);
      v84 = v108;
      sub_26B650B70(v80, v108, &qword_28040B548, &qword_26B6F9DA0);
      v85 = v72;
      v86 = *(v68 + 48);
      (v82)(v79, v84, v55);
      v87 = v84 + v86;
      v72 = v85;
      v88 = v99;
      v99(v87, v55);
      sub_26B650F44(v80, v84, &qword_28040B548, &qword_26B6F9DA0);
      v89 = *(v68 + 48);
      v90 = v106;
      (v82)(v79 + *(v105 + 36), v84 + v89, v55);
      LOBYTE(v76) = v112;
      v75 = v55;
      v88(v84, v55);
LABEL_6:
      v91 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
      sub_26B650F44(v90, v79 + *(v91 + 20), &qword_280409370, &qword_26B6ED070);
      *(v79 + *(v91 + 24)) = v76;
      v88(v72, v75);
      sub_26B650BBC(v110, &qword_28040B420, &unk_26B6F94C0);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v91);
      OUTLINED_FUNCTION_8_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26B6DAEBC()
{
  v1 = sub_26B6E9564();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21 - v15;
  sub_26B650B70(v0, &v21 - v15, &qword_28040B410, &qword_26B6F94B0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v9) == 1)
  {
    return sub_26B6EA734();
  }

  sub_26B6DB7A8();
  sub_26B6EA734();
  sub_26B6DB3EC(&qword_280409608, MEMORY[0x277CC9578]);
  sub_26B6E9984();
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0) + 36)];
  sub_26B6E9984();
  sub_26B650B70(&v12[*(v9 + 20)], v8, &qword_280409370, &qword_26B6ED070);
  if (__swift_getEnumTagSinglePayload(v8, 1, v1) == 1)
  {
    sub_26B6EA734();
  }

  else
  {
    v19 = v22;
    (*(v22 + 32))(v4, v8, v1);
    sub_26B6EA734();
    sub_26B6E9984();
    (*(v19 + 8))(v4, v1);
  }

  v20 = v12[*(v9 + 24)];
  sub_26B6EA734();
  return sub_26B6DB340(v12, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
}

id sub_26B6DB218(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v10 = OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_styleOptions;
  if (qword_280408D78 != -1)
  {
    swift_once();
  }

  v11 = &a2[v10];
  v12 = HIBYTE(word_28040B400);
  *v11 = word_28040B400;
  v11[1] = v12;
  sub_26B642140(v16, &a2[OBJC_IVAR____TtC9SportsKit31RunningClockComponentsFormatter_localizationProvider]);
  v15.receiver = a2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_26B6D8460();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_26B6DB340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_26B6DB398()
{
  result = qword_28040B430;
  if (!qword_28040B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B430);
  }

  return result;
}

uint64_t sub_26B6DB3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B6DB434(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B420, &unk_26B6F94C0);
    OUTLINED_FUNCTION_0_18();
    sub_26B6DB3EC(a2, v5);
    result = OUTLINED_FUNCTION_64_4();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26B6DB4D0()
{
  result = qword_28040B458;
  if (!qword_28040B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B458);
  }

  return result;
}

uint64_t sub_26B6DB524(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A6A8, &qword_26B6F94F0);
    sub_26B6DB3EC(a2, type metadata accessor for SportingEventCompetitorContainer);
    result = OUTLINED_FUNCTION_64_4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B6DB5B0()
{
  v1 = OUTLINED_FUNCTION_41_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_22_0();
  v7(v6);
  return v0;
}

unint64_t sub_26B6DB604()
{
  result = qword_28040B480;
  if (!qword_28040B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B480);
  }

  return result;
}

unint64_t sub_26B6DB658()
{
  result = qword_28040B488;
  if (!qword_28040B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B488);
  }

  return result;
}

unint64_t sub_26B6DB6AC()
{
  result = qword_28040B490;
  if (!qword_28040B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B490);
  }

  return result;
}

unint64_t sub_26B6DB700()
{
  result = qword_28040B4A0;
  if (!qword_28040B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4A0);
  }

  return result;
}

unint64_t sub_26B6DB754()
{
  result = qword_28040B4A8;
  if (!qword_28040B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4A8);
  }

  return result;
}

uint64_t sub_26B6DB7A8()
{
  v1 = OUTLINED_FUNCTION_41_2();
  v3 = v2(v1);
  OUTLINED_FUNCTION_16(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_22_0();
  v7(v6);
  return v0;
}

unint64_t sub_26B6DB890()
{
  result = qword_28040B4D0;
  if (!qword_28040B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4D0);
  }

  return result;
}

unint64_t sub_26B6DB8E8()
{
  result = qword_28040B4D8;
  if (!qword_28040B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4D8);
  }

  return result;
}

unint64_t sub_26B6DB940()
{
  result = qword_28040B4E0;
  if (!qword_28040B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4E0);
  }

  return result;
}

void sub_26B6DBA0C()
{
  sub_26B6DBAC8();
  if (v0 <= 0x3F)
  {
    sub_26B6DBC50(319, &qword_2810CEB18, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B6DBAC8()
{
  if (!qword_2810CEA38[0])
  {
    sub_26B6E9564();
    sub_26B6DB3EC(&unk_2810CEB20, MEMORY[0x277CC9578]);
    v0 = sub_26B6E99C4();
    if (!v1)
    {
      atomic_store(v0, qword_2810CEA38);
    }
  }
}

void sub_26B6DBB84()
{
  sub_26B6DBE88(319, &qword_2810CDCF8);
  if (v0 <= 0x3F)
  {
    sub_26B6DBC50(319, &qword_2810CEB00, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26B6DBC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B6DBCDC()
{
  sub_26B6DBE88(319, &qword_2810CC280);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26B6DBE88(319, &qword_2810CC5F0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_26B6DBE88(319, qword_2810CC310);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_26B6DBC50(319, &qword_2810CEB00, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents, MEMORY[0x277D83D88]);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_26B6DBC50(319, &qword_2810CC2B8, type metadata accessor for SportingEventCompetitorContainer, MEMORY[0x277D83940]);
      v1 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_26B6DBE88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26B6E9FF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.StyleOptions.ShootoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_26B6DC134(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.DataSource.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RunningClockComponentsFormatter.LiveClockComponents.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6DC3CC()
{
  result = qword_28040B4F0;
  if (!qword_28040B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4F0);
  }

  return result;
}

unint64_t sub_26B6DC424()
{
  result = qword_28040B4F8;
  if (!qword_28040B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B4F8);
  }

  return result;
}

unint64_t sub_26B6DC47C()
{
  result = qword_28040B500;
  if (!qword_28040B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B500);
  }

  return result;
}

unint64_t sub_26B6DC4D4()
{
  result = qword_28040B508;
  if (!qword_28040B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B508);
  }

  return result;
}

unint64_t sub_26B6DC52C()
{
  result = qword_28040B510;
  if (!qword_28040B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B510);
  }

  return result;
}

unint64_t sub_26B6DC584()
{
  result = qword_28040B518;
  if (!qword_28040B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B518);
  }

  return result;
}

unint64_t sub_26B6DC5DC()
{
  result = qword_28040B520;
  if (!qword_28040B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B520);
  }

  return result;
}

unint64_t sub_26B6DC634()
{
  result = qword_28040B528;
  if (!qword_28040B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B528);
  }

  return result;
}

unint64_t sub_26B6DC68C()
{
  result = qword_28040B530;
  if (!qword_28040B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B530);
  }

  return result;
}

unint64_t sub_26B6DC6E0()
{
  result = qword_28040B538;
  if (!qword_28040B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B538);
  }

  return result;
}

unint64_t sub_26B6DC734()
{
  result = qword_28040B540;
  if (!qword_28040B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B540);
  }

  return result;
}

uint64_t sub_26B6DC788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 4u)
  {
    if (a5 != 6)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_4()
{
  v1 = *(type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0) + 32);
  v2 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_45_3()
{

  return sub_26B6EA5D4();
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
  *(v1 - 112) = 0;
  *(v1 - 104) = 0;
  *(v1 - 96) = 0;
  *(v1 - 88) = 7;

  return sub_26B6D8DF4((v1 - 120));
}

uint64_t OUTLINED_FUNCTION_60_3@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  result = v0 + *(*(v1 - 152) + 48);
  v3 = *(v1 - 120);
  return result;
}

id OUTLINED_FUNCTION_62_3()
{

  return sub_26B6DB218(v3, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_64_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_68_3(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{

  return sub_26B6D7BBC(a1, a2, a3, a4, v6, a6, a6 + 1);
}

uint64_t OUTLINED_FUNCTION_69_3@<X0>(_BYTE *a1@<X4>, _BYTE *a2@<X8>)
{

  return sub_26B6D7B64(v2, a1, a1 + 1, a2);
}

uint64_t SportsLogoSize.rawValue.getter()
{
  if (*v0)
  {
    return 200;
  }

  else
  {
    return 56;
  }
}

SportsKit::SportsLogoSize_optional __swiftcall SportsLogoSize.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 200)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 56)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26B6DCBE4()
{
  result = qword_28040B550;
  if (!qword_28040B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B550);
  }

  return result;
}

uint64_t sub_26B6DCC58@<X0>(uint64_t *a1@<X8>)
{
  result = SportsLogoSize.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsLogoSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6DCE0C()
{
  result = qword_28040B558;
  if (!qword_28040B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B558);
  }

  return result;
}

void NSFileManager.currentContainerURL.getter(char *a1@<X8>)
{
  v2 = sub_26B6E93B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  v12 = sub_26B6E99F4();
  v13 = [v11 containerURLForSecurityApplicationGroupIdentifier_];

  if (v13)
  {
    sub_26B6E9374();

    v14 = *(v3 + 32);
    v14(v9, v6, v2);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v2);
    v14(a1, v9, v2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v2);
    v15 = [v10 defaultManager];
    v16 = [v15 URLsForDirectory:9 inDomains:1];

    v17 = sub_26B6E9C34();
    if (*(v17 + 16))
    {
      (*(v3 + 16))(v6, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      sub_26B6E9344();
      (*(v3 + 8))(v6, v2);
      if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
      {
        sub_26B665C44(v9);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double PersistentStorable.getTierConfig(leagueId:client:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26B6F1420;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t PersistentStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_26B6EA714();
  MEMORY[0x26D67E0E0](v1);
  return sub_26B6EA744();
}

unint64_t sub_26B6DD2D8()
{
  result = qword_28040B560;
  if (!qword_28040B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersistentStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B6DD860(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26B6E95C4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26B6E95B4();
}

double sub_26B6DD8E0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  *&result = PersistentStore.getTierConfig(leagueId:client:)(a1, a2, a3, a4).n128_u64[0];
  return result;
}

__n128 PersistentStore.getTierConfig(leagueId:client:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *a3;
  v7 = a3[1];
  v23.n128_u64[0] = a2;

  MEMORY[0x26D67D4D0](45, 0xE100000000000000);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0x5050415F5654;
    v9 = 0xE600000000000000;
  }

  MEMORY[0x26D67D4D0](v8, v9);

  sub_26B6DDBE0(a1, v23.n128_i64[0]);
  v11 = v10;

  if (v11 && (v13 = *(v5 + 16), v14 = sub_26B6E99F4(), , v15 = [v13 contentsAtPath_], v14, v15))
  {
    v16 = sub_26B6E9474();
    v18 = v17;

    v19 = sub_26B6E9054();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_26B6E9044();
    sub_26B6DDCB4();
    sub_26B6E9024();

    sub_26B645A94(v16, v18);
    result = v23;
    *a4 = a1;
    *(a4 + 8) = v23;
    *(a4 + 24) = v24;
  }

  else
  {
    result.n128_u64[0] = 0;
    *a4 = xmmword_26B6F1420;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
  }

  return result;
}

uint64_t sub_26B6DDBE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_26B6DDD08(a1, a2, 1852797802, 0xE400000000000000, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_26B6E9A24();
  }

  else
  {

    return 0;
  }

  return v11;
}

unint64_t sub_26B6DDCB4()
{
  result = qword_28040B568;
  if (!qword_28040B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B568);
  }

  return result;
}

id sub_26B6DDD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26B6E99F4();
  v7 = sub_26B6E99F4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  return v8;
}

uint64_t sub_26B6DDD8C()
{
  result = sub_26B6E9594();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26B6DDE2C()
{
  v1 = qword_2810CD280;
  v2 = sub_26B6E9594();
  OUTLINED_FUNCTION_16(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + qword_2810D4240 + 8);

  v5 = *(v0 + qword_2810D4248 + 8);

  return v0;
}

uint64_t sub_26B6DDEAC()
{
  sub_26B6DDE2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B6DDF60()
{
  sub_26B6EA714();
  sub_26B6DDFA0();
  return sub_26B6EA744();
}

uint64_t sub_26B6DDFA0()
{
  sub_26B6E9594();
  sub_26B6DFA54(&qword_2810CD7A8, MEMORY[0x277CC95F0]);
  return sub_26B6E9984();
}

BOOL sub_26B6DE024(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26B6DDF1C();
}

uint64_t sub_26B6DE090()
{
  sub_26B6EA714();
  v1 = *v0;
  sub_26B6DDFA0();
  return sub_26B6EA744();
}

uint64_t sub_26B6DE0D0(void (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7 = sub_26B6DF0AC();
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    aBlock[4] = sub_26B6DFA2C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B6DE2B0;
    aBlock[3] = &block_descriptor_36;
    v10 = _Block_copy(aBlock);

    v11 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v10);

    sub_26B6EA084();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
    if (swift_dynamicCast())
    {
      aBlock[0] = v15;
      a4(aBlock);

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_26B66BB5C();
      v13 = swift_allocError();
      *v14 = -96;
      a1();
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_26B6DE2B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26B6DE318()
{
  OUTLINED_FUNCTION_4_9();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  v0[9] = v4;
  OUTLINED_FUNCTION_32_2(v4);
  v0[10] = v5;
  v7 = *(v6 + 64);
  v0[11] = OUTLINED_FUNCTION_35_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B580, &qword_26B6FA160);
  v0[12] = v8;
  OUTLINED_FUNCTION_32_2(v8);
  v0[13] = v9;
  v11 = *(v10 + 64);
  v0[14] = OUTLINED_FUNCTION_35_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B588, &qword_26B6FA168);
  v0[15] = v12;
  OUTLINED_FUNCTION_32_2(v12);
  v0[16] = v13;
  v15 = *(v14 + 64);
  v0[17] = OUTLINED_FUNCTION_35_3();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B590, &qword_26B6FA170);
  v0[18] = v16;
  OUTLINED_FUNCTION_32_2(v16);
  v0[19] = v17;
  v19 = *(v18 + 64);
  v0[20] = OUTLINED_FUNCTION_35_3();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B598, &qword_26B6FA178) - 8) + 64);
  v0[21] = OUTLINED_FUNCTION_35_3();

  return MEMORY[0x2822009F8](sub_26B6DE50C, 0, 0);
}

uint64_t sub_26B6DE50C()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[6];
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0[9]);
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
  (*(v5 + 104))(v3, *MEMORY[0x277D858A0], v4);
  sub_26B6E9E04();

  sub_26B6E9DE4();
  v9 = *(MEMORY[0x277D858B8] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_0_21(v10);

  return MEMORY[0x2822005A8](v11);
}

uint64_t sub_26B6DE658()
{
  OUTLINED_FUNCTION_4_9();
  v2 = *(*v1 + 176);
  v3 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;

  if (v0)
  {
    v5 = sub_26B6DEA40;
  }

  else
  {
    v5 = sub_26B6DE75C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26B6DE75C()
{
  v1 = v0[2];
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[7];
    v0[4] = v1;
    v15 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_26B6DE938;
    v5 = v0[8];

    return v15(v0 + 4);
  }

  else
  {
    v7 = v0[20];
    v8 = v0[21];
    v9 = v0[18];
    v10 = v0[19];
    v11 = v0[17];
    v12 = v0[11];
    v13 = v0[8];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v10 + 8))(v7, v9);
    sub_26B6DF948(v8);

    OUTLINED_FUNCTION_16_5();

    return v14();
  }
}

uint64_t sub_26B6DE938()
{
  OUTLINED_FUNCTION_4_9();
  v2 = *(*v1 + 192);
  v3 = *v1;
  OUTLINED_FUNCTION_1_11();
  *v4 = v3;
  *(v5 + 200) = v0;

  if (v0)
  {
    v6 = sub_26B6DEC28;
  }

  else
  {
    v6 = sub_26B6DEB1C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26B6DEA40()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_16_5();

  return v5();
}

uint64_t sub_26B6DEB1C()
{
  v1 = v0[21];
  v2 = v0[9];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    v3 = v0[23];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v0[23];
    v6 = v0[10];
    v5 = v0[11];
    (*(v6 + 16))(v5, v1, v2);
    v0[5] = 0;
    sub_26B6E9DD4();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v5, v2);
  }

  v7 = *(MEMORY[0x277D858B8] + 4);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_0_21();

  return MEMORY[0x2822005A8](v9);
}

uint64_t sub_26B6DEC28()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[25];
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_16_5();

  return v9();
}

uint64_t sub_26B6DED14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A8, &qword_26B6FA188);
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  sub_26B6DF948(a2);
  v13 = *(v9 + 16);
  v13(a2, a1, v8);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
  result = sub_26B6DF0AC();
  if (result)
  {
    v15 = result;
    v13(v12, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v12, v8);
    aBlock[4] = sub_26B6DF9B0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26B6DE2B0;
    aBlock[3] = &block_descriptor_30;
    v18 = _Block_copy(aBlock);

    v19 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_26B6EA084();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5A0, &qword_26B6FA180);
    if (swift_dynamicCast())
    {
      aBlock[0] = v25;
      sub_26B6E9DC4();
      return (*(v23 + 8))(v7, v24);
    }

    else
    {
      sub_26B66BB5C();
      v20 = swift_allocError();
      *v21 = -96;
      aBlock[0] = v20;
      return sub_26B6E9DD4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B6DF05C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158);
  return sub_26B6E9DD4();
}

uint64_t sub_26B6DF0AC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B570, &qword_26B6FA148);
  sub_26B6E9EC4();
  return v3;
}

id sub_26B6DF120@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = v3;
  if (!v3)
  {
    sub_26B67826C(0, &qword_2810CC270, 0x277CCAE80);
    v4 = sub_26B6DF34C(0xD000000000000015, 0x800000026B6FDD60, 4096);
    v6 = [objc_opt_self() interfaceWithProtocol_];
    [v4 setRemoteObjectInterface_];

    v7 = swift_allocObject();
    swift_weakInit();
    v17 = sub_26B6DF920;
    v18 = v7;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26B66CB58;
    v16 = &block_descriptor_5;
    v8 = _Block_copy(&v13);

    [v4 setInvalidationHandler_];
    _Block_release(v8);
    v17 = sub_26B6DF4E4;
    v18 = 0;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_26B66CB58;
    v16 = &block_descriptor_21;
    v9 = _Block_copy(&v13);
    [v4 setInterruptionHandler_];
    _Block_release(v9);
    [v4 resume];
    v10 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v4;
  }

  *a2 = v4;
  return v3;
}

id sub_26B6DF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B6E99F4();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_26B6DF3C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_2810CD798 != -1)
    {
      swift_once();
    }

    v2 = sub_26B6E95C4();
    __swift_project_value_buffer(v2, qword_2810D4250);
    v3 = sub_26B6E95A4();
    v4 = sub_26B6E9E74();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26B630000, v3, v4, "Connection to daemon invalidated", v5, 2u);
      MEMORY[0x26D67E950](v5, -1, -1);
    }

    v6 = *(v1 + 24);
    *(v1 + 24) = 0;
  }
}

void sub_26B6DF4E4()
{
  if (qword_2810CD798 != -1)
  {
    swift_once();
  }

  v0 = sub_26B6E95C4();
  __swift_project_value_buffer(v0, qword_2810D4250);
  oslog = sub_26B6E95A4();
  v1 = sub_26B6E9E74();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_26B630000, oslog, v1, "Connection to daemon interrupted", v2, 2u);
    MEMORY[0x26D67E950](v2, -1, -1);
  }
}

uint64_t sub_26B6DF5CC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    [v1 invalidate];
  }

  return v0;
}

uint64_t sub_26B6DF608()
{
  sub_26B6DF5CC();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26B6DF660()
{
  v13 = sub_26B6E9EA4();
  v1 = *(v13 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_0();
  v5 = v4 - v3;
  v6 = sub_26B6E9E84();
  v7 = OUTLINED_FUNCTION_16(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v10 = sub_26B6E98D4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5_0();
  sub_26B67826C(0, &qword_2810CDBA8, 0x277D85C78);
  sub_26B6E98B4();
  sub_26B6DFA54(&qword_2810CDBB0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040A470, &qword_26B6FA190);
  sub_26B6DFA9C();
  sub_26B6EA0B4();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v13);
  *(v0 + 16) = sub_26B6E9EE4();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_26B6DF88C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26B6DF948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B598, &qword_26B6FA178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B6DF9B0(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B578, &qword_26B6FA158) - 8) + 80);

  return sub_26B6DF05C(a1);
}

uint64_t sub_26B6DFA2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26B6DFA54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26B6DFA9C()
{
  result = qword_2810CDBD8;
  if (!qword_2810CDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040A470, &qword_26B6FA190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CDBD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{
  *(a1 + 8) = sub_26B6DE658;
  v2 = *(v1 + 112);
  v3 = *(v1 + 96);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_5_14()
{
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[21];

  return sub_26B6DF948(v7);
}

uint64_t sub_26B6DFB7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26B6E9644();

  return v1;
}

uint64_t sub_26B6DFBF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26B6E9654();
}

id sub_26B6DFC5C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F00, &qword_26B6F17D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC9SportsKit8AppState__state;
  v23 = 2;
  sub_26B6E9624();
  (*(v3 + 32))(&v0[v7], v6, v2);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v22, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  OUTLINED_FUNCTION_0_22(v11, v12, v13, sel_applicationWillTerminate, *MEMORY[0x277D76770]);

  v14 = [v9 defaultCenter];
  OUTLINED_FUNCTION_0_22(v14, v15, v16, sel_applicationDidEnterBackgroundNotification, *MEMORY[0x277D76660]);

  v17 = [v9 defaultCenter];
  OUTLINED_FUNCTION_0_22(v17, v18, v19, sel_applicationWillEnterForegroundNotification, *MEMORY[0x277D76758]);

  return v10;
}

id sub_26B6DFE5C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AppState()
{
  result = qword_2810CC2F8;
  if (!qword_2810CC2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B6E0084(const char *a1)
{
  if (qword_2810CE9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_26B6E95C4();
  __swift_project_value_buffer(v2, qword_2810D4308);
  v3 = sub_26B6E95A4();
  v4 = sub_26B6E9E64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26B630000, v3, v4, a1, v5, 2u);
    MEMORY[0x26D67E950](v5, -1, -1);
  }

  return sub_26B6DFBF0();
}

void sub_26B6E01D8()
{
  sub_26B6E0268();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26B6E0268()
{
  if (!qword_2810CD758)
  {
    v0 = sub_26B6E9664();
    if (!v1)
    {
      atomic_store(v0, &qword_2810CD758);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AppState.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6E0398()
{
  result = qword_28040B5B0;
  if (!qword_28040B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5B0);
  }

  return result;
}

id OUTLINED_FUNCTION_0_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 (v6 + 2040)];
}

void *sub_26B6E0408()
{
  type metadata accessor for CloudChannelSubscriptionManager();
  swift_allocObject();
  result = sub_26B6C27A0();
  qword_2810CC528 = result;
  return result;
}

uint64_t static CloudChannelSubscriptionManager.shared.getter()
{
  if (qword_2810CC520 != -1)
  {
    swift_once();
  }
}

uint64_t CloudChannelSubscriptionManager.__allocating_init(store:)(void (*a1)(__int128 *__return_ptr, uint64_t))
{
  v2 = swift_allocObject();
  CloudChannelSubscriptionManager.init(store:)(a1);
  return v2;
}

uint64_t CloudChannelSubscriptionManager.init(store:)(void (*a1)(__int128 *__return_ptr, uint64_t))
{
  v3 = swift_defaultActor_initialize();
  a1(v5, v3);
  sub_26B6367F0(v5, v1 + 112);
  return v1;
}

uint64_t sub_26B6E0568(uint64_t a1)
{
  v5 = sub_26B6E9564();
  v6 = OUTLINED_FUNCTION_2_16(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1[17];
  v14 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v13);
  v15 = (*(v14 + 136))(v13, v14);
  if (!v2)
  {
    v16 = v15;
    sub_26B6E9534();
    CloudChannelSubscription.audit(clearExpiredEntries:deadline:limit:)(a1 & 1, v12, 10);
    a1 = v17;
    (*(v8 + 8))(v12, v3);

    v18 = v1[17];
    v19 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v18);
    (*(v19 + 144))(v16, v18, v19);
  }

  return a1;
}

uint64_t sub_26B6E0700(uint64_t a1)
{
  v25 = a1;
  v4 = sub_26B6E9564();
  v5 = OUTLINED_FUNCTION_2_16(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - v14;
  v16 = v1[17];
  v17 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v16);
  v18 = (*(v17 + 136))(v16, v17);
  if (!v2)
  {
    v19 = v18;
    v20 = v7;
    sub_26B6E0D44(v25);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v3);
    CloudChannelSubscription.updateDemand(for:deadline:)();

    sub_26B6E121C(v15);
    sub_26B6E9534();
    v7 = CloudChannelSubscription.audit(clearExpiredEntries:deadline:limit:)(1, v11, 10);
    (*(v20 + 8))(v11, v3);
    v21 = v1[17];
    v22 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v21);
    (*(v22 + 144))(v19, v21, v22);
  }

  return v7;
}

unint64_t sub_26B6E0944()
{
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_0_23(v3);
  v5 = v4(v2, v3);
  if (v1)
  {
    sub_26B6EA134();

    swift_getErrorValue();
    v6 = sub_26B6EA6B4();
    MEMORY[0x26D67D4D0](v6);

    v7 = 0xD000000000000026;
    sub_26B6E1284();
    swift_allocError();
    *v8 = 0xD000000000000026;
    *(v8 + 8) = 0x800000026B6FDDE0;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v9 = v5;
    swift_beginAccess();
    v7 = *(v9 + 24);
  }

  return v7;
}

void sub_26B6E0A88()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = v0[17];
  v7 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v6);
  OUTLINED_FUNCTION_0_23(v7);
  v9 = v8(v6, v7);
  if (v1)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_26B6EA134();

    v19 = 0xD00000000000001DLL;
    v20 = 0x800000026B6FDE10;
    swift_getErrorValue();
    v14 = sub_26B6EA6B4();
    MEMORY[0x26D67D4D0](v14);

    v15 = v19;
    v16 = v20;
    sub_26B6E1284();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v10 = v9;
    v11 = sub_26B6E9564();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
    CloudChannelSubscription.updateChannelMap(_:deadline:)();
    sub_26B6E121C(v5);
    v12 = v0[17];
    v13 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v12);
    (*(v13 + 144))(v10, v12, v13);
  }
}

uint64_t sub_26B6E0C88()
{
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  OUTLINED_FUNCTION_0_23(v3);
  result = v4(v2, v3);
  if (!v1)
  {
    v6 = result;
    CloudChannelSubscription.clearChannelMap()();
    v7 = v0[17];
    v8 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 14, v7);
    (*(v8 + 144))(v6, v7, v8);
  }

  return result;
}

uint64_t sub_26B6E0D44(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CloudChannelSubscription.CacheValue();
  v67 = *(v5 - 8);
  v6 = *(v67 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v72 = (v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v66 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5C8, &qword_26B6FA418);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v64 - v15;
  v17 = MEMORY[0x277D84FA0];
  v75 = MEMORY[0x277D84FA0];
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (a1 + 40);
    do
    {
      v20 = *(v19 - 1);
      if (*v19 && *v19 != 1)
      {
        sub_26B652648(&v73, 5000257, 0xE300000000000000);
      }

      else
      {
        v2 = v75;

        v75 = sub_26B64D7FC(v21, v2);
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v70 = v16;
  v71 = v14;
  v74 = v17;
  v22 = v3[17];
  v23 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v22);
  OUTLINED_FUNCTION_0_23(v23);
  v25 = v24(v22, v23);
  if (v2)
  {
  }

  v27 = v25;
  v64[1] = 0;
  swift_beginAccess();
  v28 = *(v27 + 24);

  v29 = 0;
  v31 = v28 + 64;
  v30 = *(v28 + 64);
  v65 = v28;
  v32 = 1 << *(v28 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  v36 = v75;
  v68 = v35;
  v69 = v28 + 64;
  if ((v33 & v30) != 0)
  {
    while (1)
    {
      v37 = v29;
LABEL_20:
      v40 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v66;
      v43 = (*(v65 + 48) + 16 * v41);
      v45 = *v43;
      v44 = v43[1];
      sub_26B67A9B4(*(v65 + 56) + *(v67 + 72) * v41, v66);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
      v47 = *(v46 + 48);
      v48 = v71;
      *v71 = v45;
      v48[1] = v44;
      v38 = v48;
      sub_26B67E34C(v42, v48 + v47);
      __swift_storeEnumTagSinglePayload(v38, 0, 1, v46);

      v39 = v70;
LABEL_21:
      sub_26B6E1750(v38, v39);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
      if (__swift_getEnumTagSinglePayload(v39, 1, v49) == 1)
      {
        break;
      }

      v50 = *v39;
      v51 = v39[1];
      sub_26B67E34C(v39 + *(v49 + 48), v72);
      if (*(v36 + 16))
      {
        v52 = *(v36 + 40);
        sub_26B6EA714();
        sub_26B6E9AE4();
        v53 = sub_26B6EA744();
        v54 = ~(-1 << *(v36 + 32));
        while (1)
        {
          v55 = v53 & v54;
          if (((*(v36 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
          {
            break;
          }

          v56 = (*(v36 + 48) + 16 * v55);
          if (*v56 != v50 || v56[1] != v51)
          {
            v58 = sub_26B6EA5D4();
            v53 = v55 + 1;
            if ((v58 & 1) == 0)
            {
              continue;
            }
          }

          v59 = v72;
          v61 = *v72;
          v60 = v72[1];

          sub_26B652648(&v73, v61, v60);

          v62 = v59;
          goto LABEL_32;
        }
      }

      v62 = v72;
LABEL_32:
      result = sub_26B67AA18(v62);
      v35 = v68;
      v31 = v69;
      if (!v34)
      {
        goto LABEL_15;
      }
    }

    return v74;
  }

  else
  {
LABEL_15:
    v39 = v70;
    v38 = v71;
    while (1)
    {
      v37 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v37 >= v35)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D0, &unk_26B6FA420);
        __swift_storeEnumTagSinglePayload(v38, 1, 1, v63);
        v34 = 0;
        goto LABEL_21;
      }

      v34 = *(v31 + 8 * v37);
      ++v29;
      if (v34)
      {
        v29 = v37;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B6E121C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26B6E1284()
{
  result = qword_28040B5B8;
  if (!qword_28040B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5B8);
  }

  return result;
}

uint64_t CloudChannelSubscriptionManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CloudChannelSubscriptionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t CloudChannelError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409CB0, &qword_26B6F0BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B6EBA50;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_26B6E9A24();
  *(inited + 40) = v6;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_26B6E1444(v1, v2, v3);
  return sub_26B6E9944();
}

uint64_t sub_26B6E1444(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_26B6E1488(uint64_t a1)
{
  v2 = sub_26B6E16FC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B6E14C4(uint64_t a1)
{
  v2 = sub_26B6E16FC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26B6E1660(uint64_t a1, unsigned int a2)
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

uint64_t sub_26B6E16A0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6E16FC()
{
  result = qword_28040B5C0;
  if (!qword_28040B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5C0);
  }

  return result;
}

uint64_t sub_26B6E1750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5C8, &qword_26B6FA418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6E17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B3A0, &qword_26B6FA4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v12 - v8;

  sub_26B6EA2B4();
  v10 = sub_26B6EA2D4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a3, v9, v10);
  }

  sub_26B6413B4(v9, &qword_28040B3A0, &qword_26B6FA4A0);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_26B6EA134();
  MEMORY[0x26D67D4D0](0xD000000000000012, 0x800000026B6FD9C0);
  v12[0] = a1;
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5D8, &qword_26B6FA4A8);
  sub_26B6EA244();
  MEMORY[0x26D67D4D0](0xD00000000000001ALL, 0x800000026B6FD9E0);
  result = sub_26B6EA314();
  __break(1u);
  return result;
}

uint64_t sub_26B6E19CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_26B6EA2D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B6429C0(a1, &v30);
  if (!v31)
  {
    sub_26B6413B4(&v30, &qword_280409280, &qword_26B6ECC28);
    sub_26B6E17E8(a2, a3, v10);

    sub_26B676120(v10, v12, v13, v14, v15, v16, v17, v18, v27[0], v27[1]);
    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    (*(v7 + 8))(v10, v6);
    v19 = v32;
    return sub_26B6413B4(v19, &qword_2804092A0, &qword_26B6F2850);
  }

  sub_26B6367F0(&v30, v32);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804092A8, &unk_26B6ECF90);
  v28[0] = swift_allocObject();
  sub_26B642140(v32, v28[0] + 16);
  sub_26B6E17E8(a2, a3, v10);
  sub_26B6D2904();
  (*(v7 + 8))(v10, v6);
  if (!v31)
  {

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v19 = &v30;
    return sub_26B6413B4(v19, &qword_2804092A0, &qword_26B6F2850);
  }

  sub_26B643E0C(&v30, v28);
  sub_26B643E1C(v28, v27);
  if (swift_dynamicCast())
  {

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v11 = &v30;
  }

  else
  {
    if (qword_280408DB0 != -1)
    {
      swift_once();
    }

    v21 = sub_26B6E95C4();
    __swift_project_value_buffer(v21, qword_280421AF8);

    v22 = sub_26B6E95A4();
    v23 = sub_26B6E9E74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v30 = v25;
      *v24 = 136315138;
      v26 = sub_26B6D22D8(a2, a3, &v30);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_26B630000, v22, v23, "New value stored for property %s does not match old type. This may indicate a bug.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26D67E950](v25, -1, -1);
      MEMORY[0x26D67E950](v24, -1, -1);
    }

    else
    {
    }

    sub_26B6413B4(a1, &qword_280409280, &qword_26B6ECC28);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v11 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t *sub_26B6E1DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = sub_26B6E93B4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[6] = 0;
  swift_unknownObjectWeakInit();
  v5[7] = 0;
  v5[3] = a1;
  v5[4] = a2;

  sub_26B6E1FA8(a1, a2);

  v18 = type metadata accessor for FileSystemMonitor();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_26B679110(v17);
  if (v4)
  {
    (*(v13 + 8))(a3, v10);
    v22 = v5[4];

    sub_26B67836C((v5 + 5));

    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v21;
    (*(v13 + 8))(a3, v10);
    v5[2] = v23;
    *(v23 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C30210;
    swift_unknownObjectWeakAssign();
  }

  return v5;
}

uint64_t sub_26B6E1FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26B6E93B4();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = a1;
  v17[3] = a2;
  v17[0] = 11822;
  v17[1] = 0xE200000000000000;
  sub_26B641414();
  if (sub_26B6EA074())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v12 = sub_26B6E95C4();
    __swift_project_value_buffer(v12, qword_2810D4308);
    v13 = sub_26B6E95A4();
    v14 = sub_26B6E9E74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26B630000, v13, v14, "canonicalId cannot contain parental traversal string patterns", v15, 2u);
      OUTLINED_FUNCTION_3_4();
    }

    return sub_26B6E9304();
  }

  else
  {
    sub_26B6E9344();
    sub_26B6E9354();

    return (*(v7 + 8))(v11, v4);
  }
}

void sub_26B6E21B0(double a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (v4)
  {
    [v4 invalidate];
  }

  sub_26B6E2BA0();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = sub_26B6E2370(0, sub_26B6E2BE4, v5, a1);
  v7 = *(v1 + 56);
  *(v2 + 56) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 mainRunLoop];
    [v11 addTimer:v10 forMode:*MEMORY[0x277CBE738]];
  }
}

uint64_t sub_26B6E22F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_26B67402C();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_26B6E2370(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26B6E2440;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);
  v7 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:a1 & 1 repeats:v6 block:a4];
  _Block_release(v6);

  return v7;
}

void sub_26B6E2440(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26B6E24A8()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  sub_26B67836C(v0 + 40);

  return v0;
}

uint64_t sub_26B6E24F4()
{
  sub_26B6E24A8();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_26B6E254C()
{
  v1 = v0;
  v2 = sub_26B6E9054();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_26B6E9044();
  v30[3] = type metadata accessor for DefaultSportsJSONInitFailureObserver();
  v30[4] = &protocol witness table for DefaultSportsJSONInitFailureObserver;
  v30[0] = swift_allocObject();
  v5 = sub_26B6E9034();
  v7 = v6;
  v28 = *v6;
  swift_bridgeObjectRetain_n();
  sub_26B6E19CC(v30, 0xD000000000000027, 0x800000026B6FB4B0);
  v8 = *v7;
  *v7 = v28;

  v5(v29, 0);

  type metadata accessor for SportingEventSubscription(0);
  sub_26B6E2B48();
  sub_26B6E9024();
  v9 = v30[0];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_26B674720();
    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  switch(*(*&v9[v10] + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus))
  {
    case 3:

      goto LABEL_6;
    default:
      v11 = sub_26B6EA5D4();

      if (v11)
      {
LABEL_6:
        v12 = *(v1 + 56);
        if (v12)
        {
          v13 = v12;
          [v13 invalidate];
        }

        v14 = *(v1 + 56);
        *(v1 + 56) = 0;
      }

      else
      {
        v15 = &v9[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_heartbeatTTLSeconds];
        swift_beginAccess();
        if (v15[1])
        {
          if (qword_2810CE9F0 != -1)
          {
            OUTLINED_FUNCTION_3_6();
          }

          v16 = sub_26B6E95C4();
          __swift_project_value_buffer(v16, qword_2810D4308);
          v17 = v9;
          v18 = sub_26B6E95A4();
          v19 = sub_26B6E9E64();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v28 = v21;
            *v20 = 136315138;
            v22 = *&v17[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
            v23 = *&v17[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8];

            v24 = sub_26B6D22D8(v22, v23, &v28);

            *(v20 + 4) = v24;
            _os_log_impl(&dword_26B630000, v18, v19, "Failed to reset heartbeat TTL timer for canonicalID: %s, error: heartbeatTTLSeconds is nil.", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            OUTLINED_FUNCTION_3_4();
            OUTLINED_FUNCTION_3_4();
          }
        }

        else
        {
          v25 = *v15;
          v26 = *&v9[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId];
          v27 = *&v9[OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_canonicalId + 8];

          sub_26B6E21B0(v25);
        }
      }

      return;
  }
}

unint64_t sub_26B6E2B48()
{
  result = qword_2810CC610;
  if (!qword_2810CC610)
  {
    type metadata accessor for SportingEventSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CC610);
  }

  return result;
}

unint64_t sub_26B6E2BA0()
{
  result = qword_2810CC238;
  if (!qword_2810CC238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810CC238);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_26B6E2C04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26B6E3B18(*(a1 + 16), 0);
  v4 = sub_26B6E3DA4(&v6, v3 + 4, v2, a1);
  sub_26B63686C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_26B6E2C94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26B6E3B18(*(a1 + 16), 0);
  v4 = sub_26B6E3F00(&v6, v3 + 4, v2, a1);
  sub_26B63686C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26B6E2D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974697669746361 && a2 == 0xEA00000000007365;
  if (v4 || (sub_26B6EA5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026B6FDF40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26B6EA5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26B6E2DFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6974697669746361;
  }
}

uint64_t sub_26B6E2E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B6E2D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B6E2E6C(uint64_t a1)
{
  v2 = sub_26B6E309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B6E2EA8(uint64_t a1)
{
  v2 = sub_26B6E309C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersistentActivities.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5E0, &qword_26B6FA4B0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v15 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_26B6E309C();

  sub_26B6EA7C4();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  sub_26B641C48(&qword_2810CC288);
  OUTLINED_FUNCTION_2_17();

  if (!v13)
  {
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
    sub_26B67E468();
    OUTLINED_FUNCTION_2_17();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_26B6E309C()
{
  result = qword_2810CE3A8;
  if (!qword_2810CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3A8);
  }

  return result;
}

uint64_t PersistentActivities.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B5E8, &qword_26B6FA4B8);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B6E309C();
  sub_26B6EA784();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409248, &qword_26B6ECA18);
  sub_26B641C48(&qword_2810CDBC0);
  OUTLINED_FUNCTION_1_18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F70, &qword_26B6F1910);
  sub_26B67E5E0();
  OUTLINED_FUNCTION_1_18();
  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_2_2();
  v14(v13);
  *a2 = v16;
  a2[1] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26B6E3320(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26B6E3360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_26B6E33AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  v44 = a4;
  v43 = a2;
  v50 = a1;
  v45 = *v6;
  v46 = v5;
  v8 = sub_26B6E92C4();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26B6E93B4();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v42 - v25;
  v6[4] = 0;
  swift_unknownObjectWeakInit();
  v48 = 0xD000000000000011;
  v49 = 0x800000026B6FD950;
  (*(v11 + 104))(v15, *MEMORY[0x277CC91D8], v8);
  sub_26B641414();
  v47 = a3;
  sub_26B6E93A4();
  (*(v11 + 8))(v15, v8);
  (*(v19 + 16))(v24, v26, v16);
  v27 = type metadata accessor for FileSystemMonitor();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v46;
  v31 = sub_26B679110(v24);
  if (v30)
  {
    swift_unknownObjectRelease();
    v32 = *(v19 + 8);
    v32(v47, v16);
    v33 = OUTLINED_FUNCTION_2_2();
    (v32)(v33);
    sub_26B67836C((v6 + 3));
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v47;
    v6[2] = v31;
    *(v31 + OBJC_IVAR____TtC9SportsKit17FileSystemMonitor_delegate + 8) = &off_287C303A8;
    swift_unknownObjectWeakAssign();
    v6[4] = v43;
    swift_unknownObjectWeakAssign();
    if (v44)
    {
      v35 = sub_26B6E93F4();
      v37 = v36;
      sub_26B6E9314();
      v46 = v38;
      sub_26B6E3738();

      sub_26B645A94(v35, v37);
    }

    swift_unknownObjectRelease();
    v39 = *(v19 + 8);
    v39(v34, v16);
    v40 = OUTLINED_FUNCTION_2_2();
    (v39)(v40);
  }

  return v6;
}

uint64_t sub_26B6E3738()
{
  v0 = sub_26B6E9054();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26B6E9044();
  sub_26B6CEC38();
  sub_26B6E9024();

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v3 = sub_26B6E2C04(v5);
  sub_26B674B78(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_26B6E38CC()
{
  v1 = *(v0 + 16);

  sub_26B67836C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for PersistentActivities.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26B6E3A10()
{
  result = qword_28040B5F0;
  if (!qword_28040B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B5F0);
  }

  return result;
}

unint64_t sub_26B6E3A6C()
{
  result = qword_2810CE398;
  if (!qword_2810CE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE398);
  }

  return result;
}

unint64_t sub_26B6E3AC4()
{
  result = qword_2810CE3A0;
  if (!qword_2810CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810CE3A0);
  }

  return result;
}

void *sub_26B6E3B18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409058, &qword_26B6F8D20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_26B6E3B94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409F98, &qword_26B6FA6D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_26B6E3CA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E3DA4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E3F00(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E405C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  v8 = OUTLINED_FUNCTION_4(v46);
  v43 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v44 = &v40 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
    v21 = 0;
    a3 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v21;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = -1 << *(a4 + 32);
    v41 = a1;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v17) >> 6;
    v42 = a3;
    while (1)
    {
      if (v20 >= a3)
      {
        goto LABEL_25;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v19 = 0;
            a3 = v20;
            a1 = v41;
            goto LABEL_20;
          }

          v19 = *(v16 + 8 * v24);
          ++v21;
          if (v19)
          {
            v47 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v47 = a2;
      v24 = v21;
LABEL_16:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v24 << 6);
      v27 = a4;
      v28 = *(a4 + 48);
      v29 = *(a4 + 56);
      v30 = (v28 + 16 * v26);
      v31 = *v30;
      v32 = v30[1];
      v33 = sub_26B6E9564();
      v34 = *(v33 - 8);
      v35 = v29 + *(v34 + 72) * v26;
      v36 = v45;
      (*(v34 + 16))(&v45[*(v46 + 48)], v35, v33);
      *v36 = v31;
      v36[1] = v32;
      v37 = v36;
      v38 = v44;
      sub_26B6E4300(v37, v44);
      v39 = v47;
      sub_26B6E4300(v38, v47);
      a3 = v42;
      if (v23 == v42)
      {
        break;
      }

      a2 = v39 + *(v43 + 72);

      v20 = v23;
      v21 = v24;
      a4 = v27;
    }

    v21 = v24;
    a1 = v41;
    a4 = v27;
LABEL_20:
    v17 = v40;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26B6E4300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409090, &unk_26B6EC1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_26B6EA464();
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_26B6EA534();
}

_BYTE *storeEnumTagSinglePayload for DateProvider(_BYTE *result, int a2, int a3)
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

uint64_t sub_26B6E4478@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_26B6E99F4();
  v11 = [v9 containerURLForSecurityApplicationGroupIdentifier_];

  if (v11)
  {
    sub_26B6E9374();

    v12 = sub_26B6E93B4();
    v13 = 0;
  }

  else
  {
    v12 = sub_26B6E93B4();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v13, 1, v12);
  sub_26B6672A4(v6, v8);
  sub_26B6E93B4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_26B665C44(v8);
    v14 = 1;
  }

  else
  {
    sub_26B6E9334();
    (*(*(v12 - 8) + 8))(v8, v12);
    v14 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v14, 1, v12);
}

uint64_t SportsImageStorage.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SportsImageStorage.init()();
  return v3;
}

uint64_t SportsImageStorage.init()()
{
  v1 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28[-v4];
  v6 = sub_26B6E93B4();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
  sub_26B6E4478(v1 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir);
  sub_26B6E4950(v1 + v14, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    (*(v9 + 32))(v13, v5, v6);
    v15 = objc_opt_self();
    v16 = [v15 defaultManager];
    sub_26B6E9384();
    v17 = sub_26B6E99F4();

    v18 = [v16 fileExistsAtPath_];

    if ((v18 & 1) == 0)
    {
      v19 = [v15 defaultManager];
      v20 = sub_26B6E9324();
      v29[0] = 0;
      v21 = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v29];

      if (v21)
      {
        v22 = *(v9 + 8);
        v23 = v29[0];
        v22(v13, v6);
        goto LABEL_8;
      }

      v24 = v29[0];
      v25 = sub_26B6E92B4();

      swift_willThrow();
    }

    (*(v9 + 8))(v13, v6);
    goto LABEL_8;
  }

  sub_26B665C44(v5);
LABEL_8:
  v26 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_26B6E4950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409220, &qword_26B6EC920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void SportsImageStorage.setImage(imageData:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_26B6E93B4();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v41 - v22;
  v42 = a3;
  v43[0] = a3;
  v43[1] = a4;
  OUTLINED_FUNCTION_6_14();
  if (OUTLINED_FUNCTION_44_3())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v24 = sub_26B6E95C4();
    __swift_project_value_buffer(v24, qword_2810D4308);
    v25 = sub_26B6E95A4();
    v26 = sub_26B6E9E74();
    if (!OUTLINED_FUNCTION_5_12(v26))
    {
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    v29 = "key cannot contain parental traversal string patterns";
LABEL_11:
    OUTLINED_FUNCTION_33_5(&dword_26B630000, v27, v28, v29);
    OUTLINED_FUNCTION_3_4();
LABEL_12:

    return;
  }

  v30 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
  if (__swift_getEnumTagSinglePayload(v5 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir, 1, v10))
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v31 = sub_26B6E95C4();
    __swift_project_value_buffer(v31, qword_2810D4308);
    v25 = sub_26B6E95A4();
    v32 = sub_26B6E9E74();
    if (!OUTLINED_FUNCTION_5_12(v32))
    {
      goto LABEL_12;
    }

    *swift_slowAlloc() = 0;
    v29 = "error resolving logos cache directory";
    goto LABEL_11;
  }

  (*(v13 + 16))(v18, v5 + v30, v10);
  sub_26B6E9344();
  v41[0] = *(v13 + 8);
  v41[1] = v13 + 8;
  (v41[0])(v18, v10);
  (*(v13 + 32))(v23, v21, v10);
  sub_26B6E5318();
  sub_26B645A3C(a1, a2);
  v33 = sub_26B6E4F44(a1, a2);
  if (v33)
  {
    v34 = v33;
    [v33 size];
    if (v35 > 250.0)
    {
      if (qword_2810CE9F0 != -1)
      {
        OUTLINED_FUNCTION_3_6();
      }

      v36 = sub_26B6E95C4();
      __swift_project_value_buffer(v36, qword_2810D4308);

      v37 = sub_26B6E95A4();
      v38 = sub_26B6E9E64();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43[0] = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_26B6D22D8(v42, a4, v43);
        _os_log_impl(&dword_26B630000, v37, v38, "image for key %s is too large, ignoring..", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_3_4();
      }

      goto LABEL_22;
    }
  }

  sub_26B6E9484();
LABEL_22:
  (v41[0])(v23, v10);
}

id sub_26B6E4F44(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_26B6E9464();
  v6 = [v4 initWithData_];

  sub_26B645A94(a1, a2);
  return v6;
}

uint64_t SportsImageStorage.getImage(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26B6E93B4();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v38 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v38 - v18;
  v38[4] = a1;
  v38[5] = a2;
  OUTLINED_FUNCTION_6_14();
  if (OUTLINED_FUNCTION_44_3())
  {
    if (qword_2810CE9F0 != -1)
    {
      OUTLINED_FUNCTION_3_6();
    }

    v20 = sub_26B6E95C4();
    __swift_project_value_buffer(v20, qword_2810D4308);
    v21 = sub_26B6E95A4();
    v22 = sub_26B6E9E74();
    if (OUTLINED_FUNCTION_5_12(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33_5(&dword_26B630000, v23, v24, "key cannot contain parental traversal string patterns");
      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v25 = OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir;
    if (!__swift_getEnumTagSinglePayload(v3 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir, 1, v6))
    {
      (*(v9 + 16))(v14, v3 + v25, v6);
      sub_26B6E9344();
      v26 = *(v9 + 8);
      v26(v14, v6);
      (*(v9 + 32))(v19, v17, v6);
      sub_26B6E93F4();
      v29 = v26;
      sub_26B6E5318();
      v30 = OUTLINED_FUNCTION_12_3();
      sub_26B645A3C(v30, v31);
      v32 = OUTLINED_FUNCTION_12_3();
      if (sub_26B6E4F44(v32, v33))
      {
        v27 = sub_26B6E9864();
        v34 = OUTLINED_FUNCTION_12_3();
        sub_26B645A94(v34, v35);
        v29(v19, v6);
        return v27;
      }

      v26(v19, v6);
      v36 = OUTLINED_FUNCTION_12_3();
      sub_26B645A94(v36, v37);
    }
  }

  return 0;
}

uint64_t SportsImageStorage.__deallocating_deinit()
{
  sub_26B665C44(v0 + OBJC_IVAR____TtC9SportsKit18SportsImageStorage_logosCacheDir);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_26B6E5318()
{
  result = qword_28040B610;
  if (!qword_28040B610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040B610);
  }

  return result;
}

uint64_t type metadata accessor for SportsImageStorage()
{
  result = qword_28040B618;
  if (!qword_28040B618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B6E53B0()
{
  sub_26B6CF678();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t OUTLINED_FUNCTION_6_14()
{
  *(v0 - 112) = 3092014;
  *(v0 - 104) = 0xE300000000000000;

  return sub_26B641414();
}

uint64_t RunningClockView.init(viewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = qword_280408D30;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_280408D38;

  type metadata accessor for RunningClockLayout();
  result = swift_allocObject();
  *(result + 16) = v4;
  a2[1] = result;
  return result;
}

uint64_t RunningClockLayout.__allocating_init(shootoutsLayout:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RunningClockView.init(viewModel:layout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t RunningClockView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v1;
  v8 = v1[1];
  sub_26B6BA094();
  *a1 = sub_26B6E9784();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B628, &qword_26B6FA740);
  sub_26B6E564C(v7, v8, v6, a1 + *(v9 + 44));
  OUTLINED_FUNCTION_1_19();
  return sub_26B6E6DC4(v6, v10);
}

uint64_t sub_26B6E564C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B680, &qword_26B6FA840);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v35[0] = a1;
  v35[1] = a2;
  RunningClockView.headerTitle.getter(&v30 - v13);
  v33 = sub_26B6E9764();
  v36 = 0;
  sub_26B6E5E14(a3, a1, v35);
  memcpy(v38, v35, sizeof(v38));
  memcpy(__dst, v35, 0x88uLL);
  sub_26B67E194(v38, v34, &qword_28040B698, &qword_26B6FA888);
  sub_26B650BBC(__dst, &qword_28040B698, &qword_26B6FA888);
  memcpy(&v37[7], v38, 0x88uLL);
  v32 = v36;
  swift_beginAccess();
  v15 = *(a1 + 88);
  if (v15)
  {
    v35[0] = *(a1 + 80);
    v35[1] = v15;
    sub_26B641414();

    v16 = sub_26B6E9804();
    v18 = v17;
    v20 = v19;
    v22 = v21 & 1;
    sub_26B6E6C40(v16, v17, v21 & 1);
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v22 = 0;
    v20 = 0;
  }

  sub_26B67E194(v14, v12, &qword_28040B680, &qword_26B6FA840);
  sub_26B67E194(v12, a4, &qword_28040B680, &qword_26B6FA840);
  v23 = a4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B6A0, &qword_26B6FA890);
  v30 = v14;
  v31 = v12;
  v25 = *(v24 + 48);
  v26 = v33;
  v34[0] = v33;
  v34[1] = 0x4008000000000000;
  v27 = v32;
  LOBYTE(v34[2]) = v32;
  memcpy(&v34[2] + 1, v37, 0x8FuLL);
  memcpy((v23 + v25), v34, 0xA0uLL);
  v28 = (v23 + *(v24 + 64));
  sub_26B67E194(v34, v35, &qword_28040B6A8, &qword_26B6FA898);
  sub_26B6E6C60(v16, v18, v22, v20);
  sub_26B6E6CA4(v16, v18, v22, v20);
  *v28 = v16;
  v28[1] = v18;
  v28[2] = v22;
  v28[3] = v20;
  sub_26B650BBC(v30, &qword_28040B680, &qword_26B6FA840);
  sub_26B6E6CA4(v16, v18, v22, v20);
  v35[0] = v26;
  v35[1] = 0x4008000000000000;
  LOBYTE(v35[2]) = v27;
  memcpy(&v35[2] + 1, v37, 0x8FuLL);
  sub_26B650BBC(v35, &qword_28040B6A8, &qword_26B6FA898);
  return sub_26B650BBC(v31, &qword_28040B680, &qword_26B6FA840);
}

uint64_t RunningClockView.headerTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B630, &qword_26B6FA748);
  v3 = OUTLINED_FUNCTION_16(v59);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B638, &qword_26B6FA750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v54 - v10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B640, &qword_26B6FA758);
  v12 = OUTLINED_FUNCTION_16(v58);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v56 = &v54 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B648, &qword_26B6FA760);
  v19 = OUTLINED_FUNCTION_16(v60);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v57 = &v54 - v22;
  v23 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = v1[1];
  sub_26B6BA094();
  v30 = *(v26 + 6);
  v29 = *(v26 + 7);

  OUTLINED_FUNCTION_1_19();
  sub_26B6E6DC4(v26, v31);
  if (v29)
  {
    sub_26B6BAA3C(v61);
    v32 = v61[0];
    if (v61[0])
    {
      v55 = a1;
      v33 = sub_26B6E9764();
      swift_beginAccess();
      v34 = *(v28 + 16);

      v35 = sub_26B63A3B8();

      *v11 = v33;
      v11[1] = v35;
      *(v11 + 16) = 0;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B650, &qword_26B6FA768);
      sub_26B6E6544(v32, v28, v30, v29, v11 + *(v36 + 44));

      LOBYTE(v34) = sub_26B6E97C4();
      v37 = sub_26B6E97D4();
      sub_26B6E97D4();
      if (sub_26B6E97D4() != v34)
      {
        v37 = sub_26B6E97D4();
      }

      sub_26B6E96F4();
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      sub_26B67EDE8(v11, v17, &qword_28040B638, &qword_26B6FA750);
      v46 = &v17[*(v58 + 36)];
      *v46 = v37;
      *(v46 + 1) = v39;
      *(v46 + 2) = v41;
      *(v46 + 3) = v43;
      *(v46 + 4) = v45;
      v46[40] = 0;
      v47 = v56;
      sub_26B67EDE8(v17, v56, &qword_28040B640, &qword_26B6FA758);
      sub_26B67E194(v47, v7, &qword_28040B640, &qword_26B6FA758);
      swift_storeEnumTagMultiPayload();
      sub_26B6E695C();
      v48 = v57;
      sub_26B6E9794();
      sub_26B650BBC(v47, &qword_28040B640, &qword_26B6FA758);
      a1 = v55;
    }

    else
    {

      v61[0] = v30;
      v61[1] = v29;
      sub_26B641414();
      *v7 = sub_26B6E9804();
      *(v7 + 1) = v50;
      v7[16] = v51 & 1;
      *(v7 + 3) = v52;
      swift_storeEnumTagMultiPayload();
      sub_26B6E695C();
      v48 = v57;
      sub_26B6E9794();
    }

    sub_26B67EDE8(v48, a1, &qword_28040B648, &qword_26B6FA760);
    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, v49, 1, v60);
}

uint64_t sub_26B6E5E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280409370, &qword_26B6ED070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B420, &unk_26B6F94C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B410, &qword_26B6F94B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[1];
  if (v21)
  {
    *&v65 = *a1;
    *(&v65 + 1) = v21;
    sub_26B641414();

    v61 = sub_26B6E9804();
    v60 = v22;
    v58 = v23;
    v59 = v24;
    swift_beginAccess();
    sub_26B642140(a2 + 104, &v65);
    v25 = *(&v66 + 1);
    v26 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
    v27 = (*(v26 + 16))(v25, v26);
    __swift_destroy_boxed_opaque_existential_1(&v65);
    if (v27)
    {
      sub_26B6E9774();
      v28 = sub_26B6E97F4();
      v30 = v29;
      v32 = v31 & 1;
      v57 = v28;
      v56 = v33;
      sub_26B6E6C40(v28, v33, v31 & 1);
    }

    else
    {
      v57 = 0;
      v56 = 0;
      v32 = 0;
      v30 = 0;
    }
  }

  else
  {
    v57 = 0;
    v56 = 0;
    v32 = 0;
    v30 = 0;
    v61 = 0;
    v60 = 0;
    v58 = 0;
    v59 = 0;
  }

  v34 = type metadata accessor for RunningClockComponentsFormatter.FormattedComponents(0);
  sub_26B67E194(a1 + *(v34 + 32), v16, &qword_28040B410, &qword_26B6F94B0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_26B650BBC(v16, &qword_28040B410, &qword_26B6F94B0);
    v35 = a1[5];
    *&v65 = a1[4];
    *(&v65 + 1) = v35;
    sub_26B641414();

    v80 = sub_26B6E9804();
    v81 = v36;
    v82 = (v37 & 1);
    v83 = v38;
    v84 = 1;
    sub_26B6E9794();
  }

  else
  {
    sub_26B6E6D60(v16, v20);
    sub_26B67E194(v20, v12, &qword_28040B420, &unk_26B6F94C0);
    sub_26B67E194(&v20[*(v17 + 20)], v8, &qword_280409370, &qword_26B6ED070);
    v39 = v20[*(v17 + 24)];
    v80 = sub_26B6E97E4();
    v81 = v40;
    v82 = (v41 & 1);
    v83 = v42;
    v84 = 0;
    sub_26B6E9794();
    sub_26B6E6DC4(v20, type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents);
  }

  v43 = v65;
  v44 = v67;
  v45 = a1[3];
  v46 = *(&v65 + 1);
  v64 = v65;
  v63 = v66;
  if (v45)
  {
    *&v65 = a1[2];
    *(&v65 + 1) = v45;
    sub_26B6E6CE8(v43, v46, v66);
    sub_26B641414();

    v47 = sub_26B6E9804();
    v51 = v50 & 1;
  }

  else
  {
    sub_26B6E6CE8(v65, *(&v65 + 1), v66);
    v47 = 0;
    v48 = 0;
    v51 = 0;
    v49 = 0;
  }

  v76 = v61;
  v77 = v60;
  v78 = v58 & 1;
  v79 = v59;
  v80 = &v76;
  v52 = v57;
  v53 = v56;
  v72 = v57;
  v73 = v56;
  v74 = v32;
  v75 = v30;
  v81 = &v72;
  v65 = v64;
  v66 = v63;
  LOBYTE(v67) = v44;
  v68 = v47;
  v69 = v48;
  v70 = v51;
  v71 = v49;
  v82 = &v65;
  v83 = &v68;
  sub_26B6E6450(&v80, v62);
  sub_26B6E6D24(v64, v46, v63);
  sub_26B6E6CA4(v52, v53, v32, v30);
  sub_26B6E6CA4(v68, v69, v70, v71);
  sub_26B6E6D24(v65, *(&v65 + 1), v66);
  sub_26B6E6CA4(v72, v73, v74, v75);
  return sub_26B6E6CA4(v76, v77, v78, v79);
}

uint64_t sub_26B6E6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v15 = *(v11 + 16);
  v16 = *(v11 + 24);
  v22 = *(v11 + 32);
  v17 = *v12;
  v20 = v12[2];
  v21 = v12[1];
  v19 = v12[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v22;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  *(a2 + 128) = v19;
  sub_26B6E6C60(v4, v3, v5, v6);
  sub_26B6E6C60(v8, v7, v9, v10);
  sub_26B6E6CE8(v13, v14, v15);

  return sub_26B6E6C60(v17, v21, v20, v19);
}

uint64_t sub_26B6E6544@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for CompetitorShootoutsView();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v38 - v15);
  result = MEMORY[0x28223BE20](v14);
  v21 = (&v38 - v20);
  v22 = a1[2];
  if (v22)
  {
    v40 = a5;
    v41 = v19;
    v42 = v18;
    v23 = a1[4];
    swift_beginAccess();
    v39 = a2;
    v24 = *(a2 + 16);
    *v21 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280408E50, &qword_26B6EBAC8);
    swift_storeEnumTagMultiPayload();
    *(v21 + *(v10 + 20)) = v23;
    *(v21 + *(v10 + 24)) = v24;
    v43 = a3;
    v44 = a4;
    sub_26B641414();

    result = sub_26B6E9804();
    if (v22 != 1)
    {
      v28 = a1[5];
      v38 = *(v39 + 16);
      v29 = v38;
      v39 = v27;
      v30 = result;
      v31 = v25;
      v32 = v26;
      *v16 = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      *(v16 + *(v10 + 20)) = v28;
      *(v16 + *(v10 + 24)) = v29;
      v33 = v42;
      sub_26B63CA78(v21, v42);
      v34 = v41;
      sub_26B63CA78(v16, v41);
      v35 = v40;
      sub_26B63CA78(v33, v40);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28040B690, &qword_26B6FA880);
      v37 = v35 + *(v36 + 48);
      *v37 = v30;
      *(v37 + 8) = v31;
      *(v37 + 16) = v32 & 1;
      *(v37 + 24) = v39;
      sub_26B63CA78(v34, v35 + *(v36 + 64));

      sub_26B6E6C40(v30, v31, v32 & 1);

      sub_26B6E6DC4(v16, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6DC4(v21, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6DC4(v34, type metadata accessor for CompetitorShootoutsView);
      sub_26B6E6C50(v30, v31, v32 & 1);

      return sub_26B6E6DC4(v33, type metadata accessor for CompetitorShootoutsView);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B6E6854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6E68B8(v4);
}

uint64_t sub_26B6E6880()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_26B6E68B8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

unint64_t sub_26B6E695C()
{
  result = qword_28040B658;
  if (!qword_28040B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B640, &qword_26B6FA758);
    sub_26B689EC8(&qword_28040B660, &qword_28040B638, &qword_26B6FA750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B658);
  }

  return result;
}

uint64_t RunningClockLayout.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RunningClockLayout.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_26B6E6B30()
{
  result = qword_28040B678;
  if (!qword_28040B678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B680, &qword_26B6FA840);
    sub_26B6E6BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B678);
  }

  return result;
}

unint64_t sub_26B6E6BB4()
{
  result = qword_28040B688;
  if (!qword_28040B688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28040B648, &qword_26B6FA760);
    sub_26B6E695C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B688);
  }

  return result;
}

uint64_t sub_26B6E6C40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B6E6C50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26B6E6C60(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26B6E6C40(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26B6E6CA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26B6E6C50(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26B6E6CE8(uint64_t a1, uint64_t a2, char a3)
{
  sub_26B6E6C40(a1, a2, a3 & 1);
}

uint64_t sub_26B6E6D24(uint64_t a1, uint64_t a2, char a3)
{
  sub_26B6E6C50(a1, a2, a3 & 1);
}

uint64_t sub_26B6E6D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningClockComponentsFormatter.LiveClockComponents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B6E6DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26B6E6E34(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_26B6542CC(a2);
  v5 = sub_26B6E792C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_26B6E7978(v7, a2);
  result = sub_26B6E7978(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    type metadata accessor for SportingEventPlay();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_26B6EA154();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_26B6EA334();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_26B6E6F84(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SportsKit17SportingEventPlay__levels);
  v3 = *(a1 + 16);
  v16 = a1 + 32;

  v4 = 0;
LABEL_2:
  v5 = v3;
  if (v4 != v3)
  {
    v6 = (v2 + 32);
    v7 = *(v16 + v4);
    v8 = *(v2 + 16);
    while (v8)
    {
      v9 = 0xE600000000000000;
      v10 = 0x737472656C41;
      switch(*v6)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7105601;
          break;
        case 2:
          v10 = 0x6867696C68676948;
          v9 = 0xE900000000000074;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x79616C5079654BLL;
          break;
        case 4:
          v9 = 0xE700000000000000;
          v10 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      v11 = 0xE600000000000000;
      v12 = 0x737472656C41;
      switch(v7)
      {
        case 1:
          v11 = 0xE300000000000000;
          v12 = 7105601;
          break;
        case 2:
          v12 = 0x6867696C68676948;
          v11 = 0xE900000000000074;
          break;
        case 3:
          v11 = 0xE700000000000000;
          v12 = 0x79616C5079654BLL;
          break;
        case 4:
          v11 = 0xE700000000000000;
          v12 = 0x6E6F6973736553;
          break;
        default:
          break;
      }

      if (v10 == v12 && v9 == v11)
      {

LABEL_22:
        ++v4;
        v3 = v5;
        goto LABEL_2;
      }

      v14 = sub_26B6EA5D4();

      ++v6;
      --v8;
      if (v14)
      {
        goto LABEL_22;
      }
    }
  }

  return v4 == v5;
}

uint64_t SportingEventClock.totalSeconds.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes);
  if (*(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__minutes + 8) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds + 8))
  {
    return 0;
  }

  v3 = *v1;
  v4 = 60 * *v1;
  if ((v3 * 60) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit18SportingEventClock__seconds);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t SportingEvent.isEventClockRunning.getter()
{
  if (SportingEvent.isRunningClockSupported.getter())
  {
    v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
    if (v1)
    {
      LOBYTE(v1) = *(v1 + 17);
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t SportingEvent.isRunningClockSupported.getter()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock) + OBJC_IVAR____TtC9SportsKit25SportingEventCurrentClock_current) + OBJC_IVAR____TtC9SportsKit18SportingEventClock__runningState);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 16);
  }

  return v1 & 1;
}

id SportingEvent.partialSportingEvent.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8);
  v3 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v27 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v28 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_progressStatus);
  v4 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  v5 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v6 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);

  v26 = v5;

  v7 = sub_26B6E6E34(2, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
    goto LABEL_2;
  }

  v25 = v2;
  sub_26B6EA654();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 != (v13 >> 1) - v11)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v2 = v25;
LABEL_2:
    sub_26B67C52C(v7, v9, v11, v13);
    v15 = v14;
    v16 = v27;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v2 = v25;
  v16 = v27;
  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  v19 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v20 = *(v0 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  v21 = objc_allocWithZone(type metadata accessor for SportingEvent());
  v22 = v20;
  v23 = v19;
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v2, v1, v16, v3, &v28, v4, v26, v15, v19, v20, 0, 0, 0, 0);
}

void SportingEventSubscription.ingestionErrors.getter()
{
  v1 = OBJC_IVAR____TtC9SportsKit25SportingEventSubscription_sportingEventDetails;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC9SportsKit21SportingEventCoverage__ingestion);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates);
      if (v4)
      {
        v5 = sub_26B6542CC(*(v3 + OBJC_IVAR____TtC9SportsKit30SportingEventCoverageIngestion__coverageUpdates));

        v6 = 0;
        v7 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v5 == v6)
          {

            return;
          }

          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x26D67DB30](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v8 = *(v4 + 8 * v6 + 32);
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v10 = v8[OBJC_IVAR____TtC9SportsKit36SportingEventCoverageIngestionUpdate__statusCode];

          ++v6;
          if (v10 != 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_26B63A9CC(0, *(v7 + 16) + 1, 1, v7);
              v7 = v14;
            }

            v11 = *(v7 + 16);
            v12 = *(v7 + 24);
            v13 = v11 + 1;
            if (v11 >= v12 >> 1)
            {
              v15 = v7;
              v16 = *(v7 + 16);
              sub_26B63A9CC(v12 > 1, v11 + 1, 1, v15);
              v11 = v16;
              v7 = v17;
            }

            *(v7 + 16) = v13;
            *(v7 + v11 + 32) = v10 & 1;
            v6 = v9;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }
    }
  }
}

id static SportingEventFactory.unknown(canonicalId:)(uint64_t a1, uint64_t a2)
{
  v13 = 9;
  v4 = objc_allocWithZone(type metadata accessor for SportingEventClockPeriod());

  v5 = SportingEventClockPeriod.init(index:type:subdivision:subPeriod:)();
  type metadata accessor for SportingEventClockRunningState();
  swift_allocObject();
  v6 = SportingEventClockRunningState.init(isReliable:isActive:)(0, 0);
  v7 = objc_allocWithZone(type metadata accessor for SportingEventClock());
  v8 = SportingEventClock.init(minutes:seconds:milliseconds:period:runningState:isCountingDown:activityStatus:additional:)(0, 1, 0, 1, 0, 1, v5, v6, 2, 0, 0);
  v9 = objc_allocWithZone(type metadata accessor for SportingEventCurrentClock());
  v10 = SportingEventCurrentClock.init(current:total:periods:)(v8, 0, 0);
  v11 = objc_allocWithZone(type metadata accessor for SportingEvent());
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(a1, a2, 12589, 0xE200000000000000, &v13, MEMORY[0x277D84F90], v10, MEMORY[0x277D84F90], 0, 0, 0, 0, 0, 0);
}

id static SportingEventFactory.eventWithProgressStatus(event:progressStatus:)(uint64_t a1, char *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId);
  v3 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_canonicalId + 8);
  v4 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version);
  v5 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_version + 8);
  v6 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__competitors);
  v15 = *a2;
  v7 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent_clock);
  v8 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__plays);
  v9 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__tournament);
  v10 = *(a1 + OBJC_IVAR____TtC9SportsKit13SportingEvent__coverage);
  objc_allocWithZone(type metadata accessor for SportingEvent());
  v11 = v10;

  v12 = v7;

  v13 = v9;
  return SportingEvent.init(canonicalId:version:progressStatus:competitors:clock:plays:tournament:coverage:schedule:league:localizedShortName:alertUpdates:)(v2, v3, v4, v5, &v15, v6, v12, v8, v9, v10, 0, 0, 0, 0);
}

uint64_t sub_26B6E792C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26B6E7978(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_26B6EA324();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B6E79D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v36 = MEMORY[0x277D84F90];
  sub_26B63B9AC(0, v1, 0);
  v2 = v36;
  result = sub_26B6E8B80(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v28 = v5;
  v29 = v1;
  v27 = v3 + 72;
  v30 = v3 + 64;
  v31 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_27;
    }

    v32 = v6;
    v33 = v8 + 1;
    v34 = v5;
    v11 = *(*(v3 + 48) + v7);
    v12 = (*(v3 + 56) + 16 * v7);
    v13 = v12[1];
    v35 = *v12;

    v14 = 0xE700000000000000;
    v15 = 0x644974726F7073;
    switch(v11)
    {
      case 1:
        v15 = 0xD000000000000012;
        v14 = 0x800000026B6FB010;
        break;
      case 2:
        v14 = 0xE800000000000000;
        v15 = 0x644965756761656CLL;
        break;
      case 3:
        v14 = 0xE600000000000000;
        v15 = 0x656372756F73;
        break;
      default:
        break;
    }

    v17 = *(v36 + 16);
    v16 = *(v36 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_26B63B9AC(v16 > 1, v17 + 1, 1);
    }

    *(v36 + 16) = v17 + 1;
    v18 = (v36 + 32 * v17);
    v18[4] = v15;
    v18[5] = v14;
    v18[6] = v35;
    v18[7] = v13;
    v3 = v31;
    v19 = 1 << *(v31 + 32);
    if (v7 >= v19)
    {
      goto LABEL_28;
    }

    v9 = v30;
    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_29;
    }

    if (*(v31 + 36) != v34)
    {
      goto LABEL_30;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v19 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v19 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_26B6784F0(v7, v34, v32 & 1);
          v19 = __clz(__rbit64(v25)) + v22;
          goto LABEL_23;
        }
      }

      result = sub_26B6784F0(v7, v34, v32 & 1);
    }

LABEL_23:
    v6 = 0;
    v7 = v19;
    v5 = v28;
    v8 = v33;
    if (v33 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t SportingEventSubscriptionRequest.SubscriptionType.rawValue.getter()
{
  v1 = 0x6C50794279616C70;
  if (*v0 != 1)
  {
    v1 = 0x536B636F6C437674;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746174536576696CLL;
  }
}

SportsKit::SportingEventSubscriptionRequest::SubscriptionType_optional __swiftcall SportingEventSubscriptionRequest.SubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B6E7DB4@<X0>(uint64_t *a1@<X8>)
{
  result = SportingEventSubscriptionRequest.SubscriptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SportsKit::SportingEventSubscriptionRequest::ContextKey_optional __swiftcall SportingEventSubscriptionRequest.ContextKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B6EA394();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SportingEventSubscriptionRequest.ContextKey.rawValue.getter()
{
  result = 0x644974726F7073;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x644965756761656CLL;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B6E7EB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_26B646784();
}

unint64_t sub_26B6E7EE8@<X0>(unint64_t *a1@<X8>)
{
  result = SportingEventSubscriptionRequest.ContextKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SportingEventSubscriptionRequest.canonicalId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId);
  v2 = *(v0 + OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId + 8);

  return v1;
}

uint64_t sub_26B6E7F5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26B6E7FD0(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_26B6E7F98(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_26B6E8024(&v4);
}

uint64_t sub_26B6E7FD0@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_26B6E8024(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType;
  result = OUTLINED_FUNCTION_2_18();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_26B6E80B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26B6E811C(v4);
}

uint64_t sub_26B6E80E4()
{
  v1 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  OUTLINED_FUNCTION_1_20();
  v2 = *(v0 + v1);
}

uint64_t sub_26B6E811C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  OUTLINED_FUNCTION_2_18();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_26B6E81B8()
{
  v1 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
  OUTLINED_FUNCTION_1_20();
  return *(v0 + v1);
}

uint64_t sub_26B6E81EC(double a1)
{
  v3 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout;
  result = OUTLINED_FUNCTION_2_18();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_26B6E8280()
{
  v1 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  OUTLINED_FUNCTION_1_20();
  v2 = *(v0 + v1);

  v4 = sub_26B6E79D0(v3);

  return sub_26B671F5C(v4);
}

id SportingEventSubscriptionRequest.init(canonicalId:playByPlay:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  sub_26B6E83F8();
  *&v3[v7] = sub_26B6E9944();
  *&v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout] = 0x403E000000000000;
  v8 = &v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_playByPlay] = a3;
  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType] = v9;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_26B6E83F8()
{
  result = qword_28040B6D8;
  if (!qword_28040B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6D8);
  }

  return result;
}

id SportingEventSubscriptionRequest.init(canonicalId:subscriptionType:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_context;
  sub_26B6E83F8();
  *&v3[v7] = sub_26B6E9944();
  *&v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_requestTimeout] = 0x403E000000000000;
  v8 = &v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_canonicalId];
  *v8 = a1;
  v8[1] = a2;
  if (v6 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26B6EA5D4();
  }

  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_playByPlay] = v9 & 1;
  v3[OBJC_IVAR____TtC9SportsKit32SportingEventSubscriptionRequest_subscriptionType] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v11, sel_init);
}

id SportingEventSubscriptionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SportingEventSubscriptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SportingEventSubscriptionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26B6E86B8()
{
  result = qword_28040B6E0;
  if (!qword_28040B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6E0);
  }

  return result;
}

unint64_t sub_26B6E8710()
{
  result = qword_28040B6E8;
  if (!qword_28040B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28040B6E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportingEventSubscriptionRequest.SubscriptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SportingEventSubscriptionRequest.ContextKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B6E8B80(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26B6EA0C4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_1_20()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_18()
{

  return swift_beginAccess();
}

uint64_t Color.init(hex:)(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = sub_26B6E9844();
  v5 = OUTLINED_FUNCTION_4(v4);
  v27[0] = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26B6E9104();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;
  sub_26B6E90E4();
  sub_26B641414();
  v19 = sub_26B6EA034();
  v21 = v20;
  (*(v14 + 8))(v18, v11);

  v28 = v19;
  v29 = v21;
  v27[3] = 35;
  v27[4] = 0xE100000000000000;
  v27[1] = 0;
  v27[2] = 0xE000000000000000;
  sub_26B6EA044();

  v28 = 0;
  v22 = sub_26B6E9AF4();
  sub_26B6E8F3C();
  v23 = sub_26B6E8F80();
  v24 = [v23 scanHexLongLong_];

  if (v24 && (v22 == 8 || v22 == 6))
  {
    (*(v27[0] + 104))(v10, *MEMORY[0x277CE0EE0], v4);
    result = sub_26B6E9854();
  }

  else
  {
    result = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26B6E8F3C()
{
  result = qword_28040B6F0;
  if (!qword_28040B6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28040B6F0);
  }

  return result;
}

id sub_26B6E8F80()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26B6E99F4();

  v2 = [v0 initWithString_];

  return v2;
}