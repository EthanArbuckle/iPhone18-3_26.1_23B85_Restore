uint64_t sub_22045FDC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v5 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  v22 = a2;
  v20 = v27;
  v6 = __swift_project_boxed_opaque_existential_1(v25, v26);
  v21 = &v18;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v7 + 16);
  v19(v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298250);
  result = sub_2208884DC();
  v11 = v23;
  if (v23)
  {
    v12 = v24;
    v13 = type metadata accessor for PaidBundleViaOfferFeatureAvailability();
    MEMORY[0x28223BE20](v13, v14);
    v15 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v19)(v15, v9, v5);
    v16 = sub_22046F184(v15, v10, v11, v12, v13, v5, v20);
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v17 = v22;
    v22[3] = v13;
    result = sub_22045E6DC(qword_281281590, type metadata accessor for PaidBundleViaOfferFeatureAvailability);
    v17[4] = result;
    *v17 = v16;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_2204600B8()
{
  result = qword_27CF58040;
  if (!qword_27CF58040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58040);
  }

  return result;
}

id sub_22046010C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = objc_allocWithZone(a2(0));

  return [v2 init];
}

void sub_220460148(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedTestSuite();
  v4 = sub_2208884CC();
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ForYouFeedMemoryTestSuite();
  v6 = sub_2208884CC();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TickerTestSuite();
  v8 = sub_2208884CC();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListTestSuite();
  v10 = sub_2208884CC();
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedTestSuite();
  v12 = sub_2208884CC();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  [v3 addSubTestSuite_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockFeedMemoryTestSuite();
  v14 = sub_2208884CC();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v15 = v14;
  [v3 addSubTestSuite_];
}

id sub_220460670()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_testName];
  *v2 = 0xD000000000000019;
  v2[1] = 0x80000002208D18A0;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_timeoutInSeconds] = 0x405E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_requiredCapabilities] = &unk_283411498;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_iterations] = 2;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_offset] = 15;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_numberOfScreens] = 5;
  *&v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_orientation] = 4;
  v0[OBJC_IVAR____TtC8StocksUI33ForYouFeedScrollLandscapeTestCase_waitForCommitToFinish] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

double static MainMetrics.minimumWindowSize.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetHeight(v10);
  return 860.0;
}

uint64_t sub_22046084C()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WelcomeViewController();
  sub_220888BDC();

  sub_220446A58(0, &qword_281290F80);
  sub_220888BEC();

  sub_220446A58(0, &qword_281290F88);
  sub_220888BEC();
  type metadata accessor for WelcomeRouter();
  sub_2208882BC();

  sub_220446A58(0, qword_28128A880);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128CFF8);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128BFE8);
  sub_220888BEC();

  sub_220446A58(0, qword_281290380);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128A860);
  sub_220888BEC();

  sub_220446A58(0, &qword_281286BB8);
  sub_220888BEC();

  sub_220446A58(0, qword_281280BE0);
  sub_220888BEC();

  type metadata accessor for WelcomeViewAnimator();
  sub_220888BDC();

  sub_220446A58(0, &qword_281289E70);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128A870);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128A868);
  sub_220888BEC();

  type metadata accessor for WelcomeFlowProvider();
  sub_220888BDC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_2208882DC();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_220460DCC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_2812967E0);
  result = sub_2208884DC();
  if (!v12)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_220457328(&v11, v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  if ((sub_22089085C() & 1) != 0 && (sub_22088F0DC() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for AudioQueueCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v5 = result;
    swift_getObjectType();
    *&v11 = v5;
    sub_22088E3DC();
    sub_2206230B4();
    sub_220453640(&unk_28128A5B0, type metadata accessor for AudioQueueCommandHandler);
    sub_22088B7BC();

    *&v11 = v5;
    sub_22088E37C();
    sub_22088B7BC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for AudioPlaybackCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *&v11 = result;
    v6 = result;
    sub_22088E3BC();
    sub_220472CE4(0, &qword_281296810, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
    sub_22088F9AC();
    sub_220453640(&qword_27CF57DC0, type metadata accessor for AudioPlaybackCommandHandler);
    sub_22088B7CC();

    *&v11 = v6;
    sub_22088E3AC();
    sub_22088B7CC();

    *&v11 = v6;
    sub_22088E39C();
    sub_22088B7CC();

    *&v11 = v6;
    sub_22088E36C();
    sub_22088B7CC();

    *&v11 = v6;
    sub_22088E33C();
    sub_22088B7CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for FeedHeadlinePlaybackCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v7 = result;
    *&v11 = result;
    sub_22088E29C();
    sub_22088FE6C();
    sub_220453640(qword_281282A98, type metadata accessor for FeedHeadlinePlaybackCommandHandler);
    sub_22088B7CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for FeedAudioTrackProgressCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    *&v11 = result;
    sub_22088E2AC();
    sub_22089011C();
    sub_22088F91C();
    sub_220453640(qword_281281BB0, type metadata accessor for FeedAudioTrackProgressCommandHandler);
    sub_22088B7CC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for AudioSeekCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = result;
    *&v11 = result;
    sub_22088E3CC();
    sub_220472CE4(0, &qword_281296828, MEMORY[0x277D839F8], MEMORY[0x277D33910]);
    sub_220453640(&unk_28128BFB0, type metadata accessor for AudioSeekCommandHandler);
    sub_22088B7BC();

    *&v11 = v8;
    sub_22088E34C();
    sub_22088B7BC();

    *&v11 = v8;
    sub_22088E38C();
    sub_22088B7BC();

    *&v11 = v8;
    sub_22088E35C();
    sub_22088B7BC();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for AudioNewsProxyCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_31:
      __break(1u);
      return result;
    }

    *&v11 = result;
    v9 = result;
    sub_22088E32C();
    sub_220453640(qword_2812876F8, type metadata accessor for AudioNewsProxyCommandHandler);
    sub_22088B7BC();

    *&v11 = v9;
    sub_22088E31C();
    sub_22088B7BC();
  }

  else
  {
    if ((sub_22088F0DC() & 1) == 0)
    {
      goto LABEL_15;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for AudioNewsProxyCommandHandler();
    result = sub_2208884CC();
    if (!result)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v4 = result;
    swift_getObjectType();
    *&v11 = v4;
    sub_22088E3DC();
    sub_2206230B4();
    sub_220453640(qword_2812876F8, type metadata accessor for AudioNewsProxyCommandHandler);
    sub_22088B7BC();

    *&v11 = v4;
    sub_22088E37C();
    sub_22088B7BC();

    *&v11 = v4;
    sub_22088E32C();
    sub_22088B7BC();

    *&v11 = v4;
    sub_22088E31C();
    sub_22088B7BC();
  }

LABEL_15:
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CreateWatchlistCommandHandler();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  swift_getObjectType();
  *&v11 = v10;
  if (qword_281296F88 != -1)
  {
    swift_once();
  }

  type metadata accessor for CreateWatchlistCommandContext(0);
  sub_220453640(qword_281286938, type metadata accessor for CreateWatchlistCommandHandler);
  sub_22088B7BC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ViewWatchlistCommandHandler();
  result = sub_2208884CC();
  if (!result)
  {
    goto LABEL_24;
  }

  *&v11 = result;
  if (qword_281296FA0 != -1)
  {
    swift_once();
  }

  sub_220886A4C();
  sub_220453640(qword_2812878F0, type metadata accessor for ViewWatchlistCommandHandler);
  sub_22088B7CC();

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_220461920()
{
  type metadata accessor for AudioQueueCommandHandler();
  sub_220888BDC();

  type metadata accessor for AudioPlaybackCommandHandler();
  sub_220888BDC();

  type metadata accessor for FeedHeadlinePlaybackCommandHandler();
  sub_220888BDC();

  type metadata accessor for FeedAudioTrackProgressCommandHandler();
  sub_220888BDC();

  type metadata accessor for AudioSeekCommandHandler();
  sub_220888BDC();

  type metadata accessor for AudioNewsProxyCommandHandler();
  sub_220888BDC();
}

uint64_t sub_220461C80(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AppConfigurationRefreshManager();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    __break(1u);
    goto LABEL_10;
  }

  sub_22046CA9C(qword_281285C78, type metadata accessor for AppConfigurationRefreshManager);
  sub_220888BFC();

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298200);
  result = sub_2208884DC();
  if (!v4)
  {
    goto LABEL_8;
  }

  sub_220888BFC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, qword_281283E20);
  sub_2208884DC();
  sub_220888BFC();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockMetadataRefreshManager();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22046CA9C(qword_281287C50, type metadata accessor for StockMetadataRefreshManager);
  sub_220888BFC();

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SceneStateManagerBridge();
  result = sub_2208884CC();
  if (result)
  {
    sub_22046CA9C(qword_28128B378, type metadata accessor for SceneStateManagerBridge);
    sub_220888BFC();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_220461F98()
{
  if (!qword_28127EAC0)
  {
    sub_220888B4C();
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EAC0);
    }
  }
}

uint64_t sub_220461FF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088A46C();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088A42C();
    swift_allocObject();
    v4 = sub_22088A41C();
    result = sub_22046CA9C(&qword_281298230, MEMORY[0x277D35018]);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204620D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_220462120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220462184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2204621D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220462228(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v16)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = type metadata accessor for ComputeAdsEnabledStartupTask();
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_group;
  if (qword_281298838 != -1)
  {
    swift_once();
  }

  v7 = sub_22088885C();
  v8 = __swift_project_value_buffer(v7, qword_281298840);
  v9 = *(*(v7 - 8) + 16);
  v9(v5 + v6, v8, v7);
  sub_220457328(&v15, v5 + OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_featureAvailability);
  v16 = v4;
  v17 = sub_22046CA9C(&qword_281287638, type metadata accessor for ComputeAdsEnabledStartupTask);
  *&v15 = v5;
  sub_220888B1C();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v16)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044869C(0, &qword_2812975F8);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = result;
  RegistrationStartupTask = type metadata accessor for BackgroundFetchRegistrationStartupTask();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_group;
  if (qword_281298810 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v7, qword_281298818);
  v9(v12 + v13, v14, v7);
  sub_220457328(&v15, v12 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_appConfigurationManager);
  *(v12 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_backgroundFetchScheduler) = v10;
  v16 = RegistrationStartupTask;
  v17 = sub_22046CA9C(&qword_281281120, type metadata accessor for BackgroundFetchRegistrationStartupTask);
  *&v15 = v12;
  sub_220888B1C();
  return __swift_destroy_boxed_opaque_existential_1(&v15);
}

uint64_t type metadata accessor for ComputeAdsEnabledStartupTask()
{
  result = qword_281287620;
  if (!qword_281287620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204625A0()
{
  result = sub_22088885C();
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

uint64_t sub_220462638()
{
  v0 = sub_22088885C();
  __swift_allocate_value_buffer(v0, qword_281298840);
  __swift_project_value_buffer(v0, qword_281298840);
  return sub_22088884C();
}

uint64_t sub_22046269C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_group;
  v5 = sub_22088885C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_220462718(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_22046275C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204627A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204627EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_220462834(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046287C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2204628C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_group;
  v5 = sub_22088885C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_220462940(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812954F8);
  result = sub_2208884DC();
  if (v4)
  {
    type metadata accessor for StocksV2UserActivitySerializer();
    v2 = swift_allocObject();
    sub_220457328(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204629E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281294288);
  result = sub_2208884DC();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v20;
  v5 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v17[3] = v3;
  v17[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, qword_281290F90);
  result = sub_2208884DC();
  v7 = v15;
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v16;
  v9 = __swift_project_boxed_opaque_existential_1(v14, v15);
  v13[3] = v7;
  v13[4] = *(v8 + 8);
  v10 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D96C();
  result = sub_2208884CC();
  if (result)
  {
    v11 = objc_allocWithZone(sub_22088AC8C());
    v12 = sub_22088AC7C();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220462BE0()
{
  if (!qword_281299428)
  {
    sub_2208852DC();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281299428);
    }
  }
}

uint64_t sub_220462C38@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 1;
  *(a3 + 56) = 1;
  v4 = objc_opt_self();
  *(a3 + 64) = [v4 labelColor];
  *(a3 + 72) = [v4 systemBackgroundColor];
  *(a3 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 88) = [v4 separatorColor];
  *(a3 + 96) = [v4 separatorColor];
  *(a3 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [v4 secondaryLabelColor];
  *(a3 + 168) = [v4 tertiaryLabelColor];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.14];
  *(a3 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  *(a3 + 248) = v6;
  v7 = [v4 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  *(a3 + 256) = v8;
  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent_];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent_];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [v4 whiteColor];
  *(a3 + 296) = [v4 blackColor];
  *(a3 + 304) = [v4 secondaryLabelColor];
  *(a3 + 312) = [v4 secondarySystemBackgroundColor];
  *(a3 + 320) = [v4 secondaryLabelColor];
  *(a3 + 328) = [v4 labelColor];
  *(a3 + 336) = [v4 secondarySystemFillColor];
  *(a3 + 344) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.305882353 green:0.305882353 blue:0.31372549 alpha:0.2];
  *(a3 + 352) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
  *(a3 + 368) = [v4 secondaryLabelColor];
  *(a3 + 376) = [v4 labelColor];
  result = sub_220458198(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_2204632E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WelcomeModule();
    v7 = objc_allocWithZone(v6);
    sub_22046DA2C(v10, &v7[OBJC_IVAR____TtC8StocksUI13WelcomeModule_resolver]);
    *&v7[OBJC_IVAR____TtC8StocksUI13WelcomeModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    result = sub_2204633F0(&qword_2812943F8, type metadata accessor for WelcomeModule);
    a2[4] = result;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204633F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220463438@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088A07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285100);
  result = sub_2208884DC();
  if (!v31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296800);
  result = sub_2208884DC();
  if (v29)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v25[1] = v25;
    MEMORY[0x28223BE20](v10, v10);
    v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for AnalyticsChannelDataFactory();
    v27[3] = v15;
    v27[4] = &off_28341D2B0;
    v27[0] = v14;
    v16 = type metadata accessor for PurchaseTransactionTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v27, v15);
    MEMORY[0x28223BE20](v18, v18);
    v20 = (v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[6] = v15;
    v17[7] = &off_28341D2B0;
    v17[3] = v22;
    (*(v5 + 104))(v8, *MEMORY[0x277D68FA0], v4);
    v23 = sub_22088721C();

    (*(v5 + 8))(v8, v4);
    v17[2] = v23;
    sub_220457328(&v28, (v17 + 8));
    __swift_destroy_boxed_opaque_existential_1(v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v24 = v26;
    v26[3] = v16;
    result = sub_22045E6DC(&unk_281288E80, type metadata accessor for PurchaseTransactionTracker);
    v24[4] = result;
    *v24 = v17;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220463840@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SubscriptionStatusCheckBlocker();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  a1[3] = v2;
  result = sub_22045E6DC(qword_281285348, type metadata accessor for SubscriptionStatusCheckBlocker);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_2204638CC@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v4 = v12;
  if (v12)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v11, v12);
    MEMORY[0x28223BE20](v5, v5);
    v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v7);
    v9 = sub_22046F02C(v7, v4);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220463A48()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20]();
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220886BEC();
  MEMORY[0x28223BE20]();
  (*(v5 + 104))(&v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v7[15] = 0;
  sub_22046F438();
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58038 = result;
  return result;
}

id sub_220463BFC()
{
  v0 = objc_opt_self();

  return [v0 launchSettings];
}

uint64_t sub_220463C34(uint64_t a1)
{
  v2 = sub_22046F4F0();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

id sub_220463C88(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22046F80C();
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for ExtendedLaunchToStockListTestCase();
    v4 = objc_allocWithZone(v3);
    v5 = &v4[OBJC_IVAR____TtC8StocksUI33ExtendedLaunchToStockListTestCase_testName];
    strcpy(&v4[OBJC_IVAR____TtC8StocksUI33ExtendedLaunchToStockListTestCase_testName], "ExtendedLaunch");
    v5[15] = -18;
    *&v4[OBJC_IVAR____TtC8StocksUI33ExtendedLaunchToStockListTestCase_timeoutInSeconds] = 0x403E000000000000;
    *&v4[OBJC_IVAR____TtC8StocksUI33ExtendedLaunchToStockListTestCase_aggregate] = 1;
    *&v4[OBJC_IVAR____TtC8StocksUI33ExtendedLaunchToStockListTestCase_stockListPrewarmState] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220463D74()
{
  sub_2204552A8(0, &qword_281297A80, MEMORY[0x277D6DC58]);
  swift_allocObject();
  return sub_22088BF3C();
}

uint64_t sub_220463DE0(void *a1)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for StockFeedTestSuite();
    v5 = objc_allocWithZone(v4);
    sub_22046DA2C(v8, &v5[OBJC_IVAR____TtC8StocksUI18StockFeedTestSuite_resolver]);
    *&v5[OBJC_IVAR____TtC8StocksUI18StockFeedTestSuite_tracker] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220463EC8(void **a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = [objc_allocWithZone(a3(0)) init];
  [v7 addTestCase_];

  v9 = [objc_allocWithZone(a4(0)) init];
  [v7 addTestCase_];

  v10 = [objc_allocWithZone(a5(0)) init];
  [v7 addTestCase_];
}

BOOL sub_2204642B8()
{
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298E60 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v0 = v2;
  if (v2 < 0)
  {
    sub_220886BAC();
    if (qword_281298E78 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v0 = v2;
  }

  return v0 < 3;
}

void sub_2204643A4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220886C4C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_220464404@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2204709B4();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220453220(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = sub_22088B27C();
    sub_2208884DC();
    result = (*(*(v9 - 8) + 48))(v7, 1, v9);
    if (result != 1)
    {
      sub_22088B04C();
      result = sub_22088B03C();
      v10 = MEMORY[0x277D6D600];
      *a2 = result;
      a2[1] = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220464578@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ShareLinkProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  a1[3] = v2;
  result = sub_22045D2D0(&qword_281291720, type metadata accessor for ShareLinkProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_220464624@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  type metadata accessor for ShareLinkProvider();
  *(swift_allocObject() + 16) = 1;
  sub_2204535F8(&qword_281291720, type metadata accessor for ShareLinkProvider);
  v5 = type metadata accessor for MailShareLinkTextProvider();
  swift_allocObject();
  sub_2204535F8(&qword_281289990, type metadata accessor for MailShareLinkTextProvider);
  sub_2208909FC();
  swift_allocObject();
  sub_2208909EC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296C90);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296C88);
  result = sub_2208884DC();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296C80);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E650);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E638);
  result = sub_2208884CC();
  if (result)
  {
    v6 = sub_220890AEC();
    swift_allocObject();
    result = sub_220890ADC();
    v7 = MEMORY[0x277D343E0];
    a2[3] = v6;
    a2[4] = v7;
    *a2 = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2204649CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_220888BDC();
}

void sub_220464E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksActivity(255);
    v7 = sub_220453640(qword_2812951E0, type metadata accessor for StocksActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220464EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksActivity(255);
    v7 = sub_2206C9BE0(qword_2812951E0, type metadata accessor for StocksActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220464F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksActivity(255);
    v7 = sub_220448DD8(qword_2812951E0, 255, type metadata accessor for StocksActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_220465208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_220457328(&v13, v11 + 24);
  *(v11 + 64) = a3;
  return v11;
}

uint64_t sub_2204652B8(void *a1, void (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    a2(0);
    result = swift_allocObject();
    *(result + 16) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465330(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, a2);
  result = sub_2208884DC();
  if (v11)
  {
    a4(0);
    v9 = swift_allocObject();
    a5(v10, v9 + 16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465434(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v11 = swift_allocObject();
  sub_220457328(a1, v11 + 16);
  sub_220457328(&v13, v11 + 56);
  *(v11 + 96) = a3;
  return v11;
}

unint64_t sub_2204654EC()
{
  result = qword_28128D010;
  if (!qword_28128D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D010);
  }

  return result;
}

uint64_t sub_220465540(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WatchlistMembershipCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    type metadata accessor for WatchlistMembershipCommandContext(0);
    sub_220453640(qword_281282C00, type metadata accessor for WatchlistMembershipCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465678(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299280);
    result = sub_2208884DC();
    if (v6)
    {
      type metadata accessor for WatchlistMembershipCommandHandler();
      v4 = swift_allocObject();
      *(v4 + 64) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 64) = v3;
      swift_unknownObjectWeakAssign();
      sub_22046DA2C(v5, v4 + 16);
      __swift_project_boxed_opaque_existential_1(v5, v6);
      sub_220453640(&qword_281282BF8, type metadata accessor for WatchlistMembershipCommandHandler);

      sub_220885FAC();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v5);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220465814()
{
  sub_220447764(0, &qword_281297110, type metadata accessor for WatchlistMembershipCommandContext, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471928(0, &qword_281298010, type metadata accessor for WatchlistMembershipCommandContext, sub_22046599C);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C30 = result;
  return result;
}

unint64_t sub_22046599C()
{
  result = qword_281293928[0];
  if (!qword_281293928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281293928);
  }

  return result;
}

uint64_t sub_2204659F0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CreateWatchlistCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296F88 != -1)
    {
      swift_once();
    }

    type metadata accessor for CreateWatchlistCommandContext(0);
    sub_220453640(qword_281286938, type metadata accessor for CreateWatchlistCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465B20(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ViewWatchlistCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FA0 != -1)
    {
      swift_once();
    }

    sub_220886A4C();
    sub_220453640(qword_2812878F0, type metadata accessor for ViewWatchlistCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465C58(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ViewNextPreviousWatchlistCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296F78 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_281280938, type metadata accessor for ViewNextPreviousWatchlistCommandHandler);
    sub_22088B7BC();
    if (qword_281296FD0 != -1)
    {
      swift_once();
    }

    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220465E20()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471B04(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471B04(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6BE8 = result;
  return result;
}

uint64_t sub_220465F68()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471B04(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471B04(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C28 = result;
  return result;
}

uint64_t sub_2204660B0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SortWatchlistCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FB0 != -1)
    {
      swift_once();
    }

    type metadata accessor for SortWatchlistCommandContext(0);
    sub_220453640(qword_2812881C0, type metadata accessor for SortWatchlistCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204661E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220);
    result = sub_2208884DC();
    v3 = v12;
    if (v12)
    {
      v4 = type metadata accessor for SortWatchlistCommandHandler();
      v5 = v13;
      v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
      MEMORY[0x28223BE20](v6, v6);
      v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v8);
      v10 = sub_220466390(&v14, v8, v4, v3, v5);
      __swift_destroy_boxed_opaque_existential_1(v11);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220466390(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v9 = swift_allocObject();
  sub_220457328(a1, v9 + 16);
  sub_220457328(&v11, v9 + 56);
  return v9;
}

uint64_t sub_220466438()
{
  sub_220447764(0, &qword_281297120, type metadata accessor for SortWatchlistCommandContext, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_2204711C8(0, &qword_281298018, type metadata accessor for SortWatchlistCommandContext);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C10 = result;
  return result;
}

uint64_t sub_2204665E4()
{
  sub_220447764(0, &qword_2812970F0, type metadata accessor for ChangeWatchlistDisplayContext, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_2204711C8(0, &qword_281298008, type metadata accessor for ChangeWatchlistDisplayContext);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C20 = result;
  return result;
}

uint64_t sub_220466730()
{
  result = sub_220886A4C();
  if (v1 <= 0x3F)
  {
    result = sub_220885D4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2204667B4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CurrencyDisplayCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297070 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_281286758, type metadata accessor for CurrencyDisplayCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204668E0()
{
  sub_2204669E4();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220466A38();
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6CA0 = result;
  return result;
}

void sub_2204669E4()
{
  if (!qword_2812970D0)
  {
    v0 = sub_22088E1EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812970D0);
    }
  }
}

void sub_220466A38()
{
  if (!qword_281297FE8)
  {
    v0 = sub_22088AD0C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297FE8);
    }
  }
}

uint64_t sub_220466A9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991F0);
  result = sub_2208884DC();
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220886E1C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    type metadata accessor for IdentificationResetManager();
    v5 = swift_allocObject();
    sub_220457328(&v6, v5 + 16);
    *(v5 + 56) = v3;
    *(v5 + 64) = v4;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220466BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_220458198(&v11, v9 + 24);
  return v9;
}

uint64_t sub_220466C5C()
{
  sub_220471A5C(0, &qword_2812970D0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471A5C(0, &qword_281297090, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C48 = result;
  return result;
}

uint64_t sub_220466DD4()
{
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220466EFC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C60 = result;
  return result;
}

void sub_220466EFC()
{
  if (!qword_281297FF0)
  {
    sub_220466F64();
    v0 = sub_22088AD0C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297FF0);
    }
  }
}

unint64_t sub_220466F64()
{
  result = qword_28128FEA8[0];
  if (!qword_28128FEA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128FEA8);
  }

  return result;
}

uint64_t sub_220466FB8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ClearRecommendationsDataCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297008 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_281280FB0, type metadata accessor for ClearRecommendationsDataCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204670E4@<X0>(uint64_t *a1@<X8>)
{
  refreshed = type metadata accessor for DataRefreshManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  a1[3] = refreshed;
  a1[4] = &off_283415EB0;
  *a1 = result;
  return result;
}

uint64_t sub_220467138(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BilingualFeedCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297060 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_2812886F0, type metadata accessor for BilingualFeedCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046725C()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471AB4(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C78 = result;
  return result;
}

uint64_t sub_2204673A4()
{
  v0 = sub_22088AFDC();
  __swift_allocate_value_buffer(v0, qword_281297ED8);
  __swift_project_value_buffer(v0, qword_281297ED8);
  return sub_22088AFCC();
}

uint64_t sub_220467420()
{
  swift_getObjectType();
  sub_22088CD3C();
  swift_allocObject();
  sub_22088CD2C();
  sub_220472CE4(0, &qword_281297090, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBE8]);
  sub_22088E22C();
  sub_22088B7BC();
}

void sub_220467508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220467558()
{
  sub_220467508(0, &qword_2812970F8, &type metadata for CommandStocksShareContentComplete, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220467508(0, &qword_2812970B0, &type metadata for CommandStocksShareContentComplete, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6CB0 = result;
  return result;
}

uint64_t sub_2204676A0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksSharingCompleteCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297088 != -1)
    {
      swift_once();
    }

    sub_220453640(&unk_2812955A0, type metadata accessor for StocksSharingCompleteCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204677C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for EarningsShownCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FE8 != -1)
    {
      swift_once();
    }

    sub_220453640(&qword_281288560, type metadata accessor for EarningsShownCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2204678E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for AnalyticsChannelDataFactory();
  v22[3] = v10;
  v22[4] = &off_28341D2B0;
  v22[0] = a4;
  type metadata accessor for CommandObserver();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
  MEMORY[0x28223BE20](v12, v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v15 + 16))(v14);
  v16 = *v14;
  v21[3] = v10;
  v21[4] = &off_28341D2B0;
  v21[0] = v16;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_22046DA2C(v21, (v11 + 5));
  v11[10] = a5;
  swift_getObjectType();
  swift_unknownObjectRetain();

  v17 = a5;
  sub_22088E32C();
  sub_2206230B4();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22088E31C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22088E3EC();
  sub_220631E00(0, &qword_281296840, MEMORY[0x277D33378], MEMORY[0x277D338E0]);
  sub_220467D64();

  sub_22088B76C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22088E3EC();

  sub_22088B76C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22088E3FC();
  sub_220890A2C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_22088E3FC();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  if (qword_281297088 != -1)
  {
    swift_once();
  }

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

unint64_t sub_220467D64()
{
  result = qword_281296830;
  if (!qword_281296830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281296830);
  }

  return result;
}

uint64_t sub_220467DB8()
{
  sub_22088B27C();
  sub_220888BEC();
}

uint64_t sub_220467E28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CopyLinkCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088E4CC();
    sub_22088E49C();
    sub_220453640(qword_28128CEB0, type metadata accessor for CopyLinkCommandHandler);
    sub_22088ADBC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220467F10()
{
  type metadata accessor for CopyLinkCommandHandler();

  return swift_allocObject();
}

uint64_t sub_220467F44(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CopyLink2CommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088E4CC();
    sub_22088E4BC();
    sub_220453640(qword_28128BCC8, type metadata accessor for CopyLink2CommandHandler);
    sub_22088ADBC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046802C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22044869C(0, &unk_28127E650);
    result = sub_2208884CC();
    if (result)
    {
      v4 = result;
      type metadata accessor for CopyArticleCommandHandler();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_220468114()
{
  v0 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v0 initWithRed:0.305882353 green:0.674509804 blue:0.97254902 alpha:1.0];
}

void __swiftcall MainModule.createViewController()(UIViewController *__return_ptr retstr)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_220446A58(0, &qword_28128F878);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_2208884BC();

  swift_unownedRelease();
  if (!v86)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_220457328(&v85, v87);
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v3 = sub_220469038();
  v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_220446A58(0, &qword_281291D40);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_2208884BC();

  swift_unownedRelease();
  if (!v84)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_220457328(&v83, &v85);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v75 = sub_220446A58(0, &qword_281297C50);
  sub_2208884DC();
  v5 = v83;
  if (!v83)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v76 = *(&v83 + 1);
  __swift_project_boxed_opaque_existential_1(&v85, v86);
  v69 = v4;
  v6 = sub_220482B78(v4);
  v8 = v7;
  ObjectType = swift_getObjectType();
  sub_22046E174(&qword_28128ACA8, 255, type metadata accessor for StockListViewController);
  v10 = *(v8 + 8);
  v11 = v3;
  v70 = v10;
  sub_22088D07C();
  v12 = *(v8 + 24);
  v13 = v11;
  v71 = ObjectType;
  v73 = v8;
  v12(v3, &off_2834200B8, ObjectType, v8);
  v72 = sub_22088C9CC();
  objc_allocWithZone(v72);
  v14 = v6;
  swift_unknownObjectRetain();
  v15 = sub_22088C9BC();
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_220446A58(0, &qword_281294280);
  v16 = v14;
  sub_2208884DC();
  if (!v84)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_220446A58(0, qword_281285840);
  sub_2208884DC();
  if (!v82)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2208884DC();
  if (!v80)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v68 = v16;
  v74 = v15;
  v66 = v13;
  v75 = v5;
  v17 = v2[7];
  v78 = sub_22088731C();
  v79 = sub_22046E174(&qword_281298BF0, 255, MEMORY[0x277CEAEA8]);
  v77[0] = v17;
  sub_22088B49C();
  swift_allocObject();

  v67 = sub_22088B47C();
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_220446A58(0, qword_281290008);
  sub_2208884DC();
  if (!v78)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = type metadata accessor for MainSplitViewController();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v83, v84);
  v20 = MEMORY[0x28223BE20](v19, v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v25);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v30 = MEMORY[0x28223BE20](v29, v29);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v30);
  refreshed = type metadata accessor for InvertColorsRefreshManager();
  v35 = type metadata accessor for EmptyListModule();
  v36 = type metadata accessor for MainStyler();
  v64 = v35;
  v37 = v68;
  v38 = sub_220485EFC(v68, v22, v27, v67, v32, v18, v71, refreshed, v64, v36, v70, &off_28341D108, &off_28341A5B0, &off_283412AD8);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v39 = v38;
  v40 = [v39 traitCollection];
  v41 = [v40 horizontalSizeClass];

  if (v41 == 1 && (__swift_project_boxed_opaque_existential_1(v2 + 13, v2[16]), (sub_22088618C() & 1) != 0))
  {
    [objc_allocWithZone(type metadata accessor for HiddenCardViewController()) init];
    objc_allocWithZone(v72);
    swift_unknownObjectRetain();
    v42 = sub_22088C9BC();
    sub_22048BC00();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22089B120;
    v44 = v74;
    *(v43 + 32) = v74;
    *(v43 + 40) = v42;
    sub_22044D56C(0, &qword_28127E800);
    v45 = v37;
    v46 = v39;
    v47 = v44;
    v48 = v42;
    v49 = sub_2208916DC();

    [v46 setViewControllers_];
    v50 = v73;
  }

  else
  {
    v50 = v73;
    sub_22048640C(0, v37, v73, &v83);
    v51 = v83;
    v52 = objc_allocWithZone(v72);
    swift_unknownObjectRetain();
    v53 = v51;
    v54 = sub_22088C9BC();
    sub_22048BC00();
    v55 = swift_allocObject();
    v45 = v37;
    *(v55 + 16) = xmmword_22089B120;
    v56 = v74;
    *(v55 + 32) = v74;
    *(v55 + 40) = v54;
    sub_22044D56C(0, &qword_28127E800);
    v57 = v39;
    v58 = v56;
    v48 = v54;
    v49 = sub_2208916DC();

    [v57 setViewControllers_];
  }

  [v39 setPreferredDisplayMode_];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  type metadata accessor for Router();
  v59 = swift_allocObject();
  v59[2] = v39;
  v59[3] = v45;
  v59[4] = v50;
  v60 = v45;
  v61 = v39;
  v62 = sub_2208884AC();

  if (!v62)
  {
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2204549FC();
  if (!sub_2208884CC())
  {
LABEL_26:
    __break(1u);
    return;
  }

  sub_22046E174(&qword_28127F070, 255, type metadata accessor for Router);
  sub_22088B00C();
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v63 = sub_22088F0DC();

  if (v63)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2205A738C(v61);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(&v85);
  __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_220468E14()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_220468E4C()
{

  return swift_deallocObject();
}

uint64_t sub_220468E94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_22088731C();
  sub_22088836C();
}

uint64_t sub_220468F24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281296D20);
    result = sub_2208884DC();
    if (v9)
    {
      v6 = type metadata accessor for StockListModule();
      v7 = swift_allocObject();
      sub_220457328(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_220457328(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_28341E188;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220469038()
{
  v21 = sub_220889FFC();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220889FEC();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088A07C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v14, *MEMORY[0x277D68F88], v9, v12);
  v15 = sub_22088721C();
  (*(v10 + 8))(v14, v9);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for StockListViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v15;

  v17 = sub_2208884AC();

  result = swift_unownedRelease();
  if (v17)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277D68EF8], v21);
    sub_220889FCC();
    sub_220482A4C();
    v19 = v23;
    sub_2208872CC();

    (*(v22 + 8))(v8, v19);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220469384()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

unint64_t sub_2204693CC()
{
  result = qword_281296D20;
  if (!qword_281296D20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281296D20);
  }

  return result;
}

uint64_t sub_220469478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128ADA8);
  result = sub_2208884DC();
  v5 = v27;
  if (v27)
  {
    v6 = v28;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28128F870);
    result = sub_2208884DC();
    if (v26)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (&v23[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for StockListRouter();
      v24[3] = v12;
      v24[4] = &off_283420EA8;
      v24[0] = v11;
      type metadata accessor for StockListEventHandler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (&v23[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v23[3] = v12;
      v23[4] = &off_283420EA8;
      v23[0] = v18;
      v13[3] = 0;
      swift_unknownObjectWeakInit();
      v13[4] = v5;
      v13[5] = v6;
      sub_22046DA2C(v23, (v13 + 6));
      ObjectType = swift_getObjectType();
      v20 = *(v6 + 16);
      swift_unknownObjectRetain();

      v20(v21, &off_283421238, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v23);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      *a2 = v13;
      a2[1] = &off_2834212B0;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220469770@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289F68);
  result = sub_2208884DC();
  if (!v39)
  {
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204558EC(0, &qword_281297CE8, sub_220455B14, sub_2204563D4, MEMORY[0x277D6D8A8]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockListBlueprintModifierFactory();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  v20 = v6;
  v21 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B848(0, &qword_281298910, type metadata accessor for StockListSelectionModel, MEMORY[0x277D6CB60]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204566B8(0, &qword_281296870, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33538]);
  result = sub_2208884CC();
  v25 = result;
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v37;
  v18 = v39;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281287170);
  result = sub_2208884DC();
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10();
  result = sub_2208884CC();
  v22 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (!v34)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088610C();
  sub_22088849C();

  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204552A8(0, &qword_281297A80, MEMORY[0x277D6DC58]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WaitForStockListPrewarmStartupTask();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = result;
  v17 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281288850);
  result = sub_2208884DC();
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  sub_22045B9EC(0, &qword_28128F880, type metadata accessor for StockListBlueprintModifierFactory, sub_22045BA6C, type metadata accessor for StockListInteractor);
  v11 = swift_allocObject();
  *(v11 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 38) = MEMORY[0x277D84FA0];
  sub_2204566B8(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
  swift_allocObject();
  *(v11 + 39) = sub_22088ACCC();
  v12 = *(*v11 + 240);
  v13 = sub_22088582C();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  v14 = *(*v11 + 248);
  v15 = sub_220885D4C();
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  *(v11 + 4) = v5;
  *(v11 + 5) = v20;
  *(v11 + 8) = v7;
  *(v11 + 9) = v24;
  *(v11 + 10) = v19;
  *(v11 + 11) = v8;
  *(v11 + 12) = v25;
  *(v11 + 13) = v23;
  *(v11 + 14) = v17;
  *(v11 + 15) = v22;
  sub_22046DA2C(v33, (v11 + 128));
  sub_22046DA2C(v31, (v11 + 168));
  *(v11 + 26) = v9;
  *(v11 + 27) = v10;
  sub_22046DA2C(v29, (v11 + 224));
  sub_22046DA2C(v27, (v11 + 264));
  *(v11 + 6) = v18;
  *(v11 + 7) = v21;
  *(v18 + 24) = &off_283422218;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  v16 = v25;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  sub_22088869C();

  __swift_destroy_boxed_opaque_existential_1(v26);
  swift_allocObject();
  swift_weakInit();
  sub_22088868C();

  __swift_destroy_boxed_opaque_existential_1(v26);
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_22047D1E4();
  sub_220886B4C();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v31);
  result = __swift_destroy_boxed_opaque_existential_1(v33);
  *a2 = v11;
  a2[1] = &off_283422238;
  return result;
}

uint64_t sub_22046A114()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22046A150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22045B848(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v43 = &v35 - v6;
  sub_22045B9EC(0, &qword_281296E00, sub_22046A904, sub_220475280, MEMORY[0x277CBCBD8]);
  v42 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v40 = &v35 - v9;
  sub_2204752B8(0);
  v11 = v10;
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_220886A4C();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088F12C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v54)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v52)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v36 = v11;
  v37 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283E20);
  result = sub_2208884DC();
  v23 = v49;
  if (!v49)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299228);
  result = sub_2208884DC();
  if (v48)
  {
    type metadata accessor for StockListDataManager();
    v25 = swift_allocObject();
    v25[3] = 0;
    swift_unknownObjectWeakInit();
    sub_22044D56C(0, &qword_28127E7C0);
    (*(v18 + 104))(v21, *MEMORY[0x277D851B8], v17);
    v26 = sub_220891D3C();
    (*(v18 + 8))(v21, v17);
    v25[21] = v26;
    *(v25 + OBJC_IVAR____TtC8StocksUI20StockListDataManager_cancellables) = MEMORY[0x277D84FA0];
    sub_22046DA2C(v53, (v25 + 4));
    sub_22046DA2C(v51, (v25 + 9));
    v25[14] = v23;
    v25[15] = v24;
    sub_22046DA2C(v47, (v25 + 16));
    __swift_project_boxed_opaque_existential_1(v53, v54);
    swift_unknownObjectRetain();
    sub_2208863EC();
    (*(v38 + 32))(v25 + OBJC_IVAR____TtC8StocksUI20StockListDataManager_lastActiveWatchlist, v16, v39);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v27 = v40;
    sub_22088600C();
    v28 = sub_220891D0C();
    v46 = v28;
    v29 = sub_220891CEC();
    v30 = v43;
    (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
    sub_22046AA94();
    sub_220475590();
    v31 = v44;
    v32 = v42;
    sub_22088EBAC();
    sub_22046AB30(v30, &qword_28127E7D0, MEMORY[0x277D85248]);
    (*(v41 + 8))(v27, v32);

    swift_allocObject();
    swift_weakInit();
    sub_220455260(&qword_281296DC0, 255, sub_2204752B8);
    v33 = v36;
    sub_22088EBDC();

    (*(v45 + 8))(v31, v33);
    swift_beginAccess();
    sub_22088EB6C();
    swift_endAccess();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v51);
    result = __swift_destroy_boxed_opaque_existential_1(v53);
    v34 = v37;
    *v37 = v25;
    v34[1] = &off_283413E78;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_22046A904()
{
  if (!qword_281296DE8)
  {
    sub_22046A99C();
    sub_22046AA04(&qword_281296DB0, 255, sub_22046A99C);
    v0 = sub_22088EB4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296DE8);
    }
  }
}

void sub_22046A99C()
{
  if (!qword_281296DA0)
  {
    sub_220886A4C();
    v0 = sub_22088EB8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296DA0);
    }
  }
}

uint64_t sub_22046AA04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22046AA4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22046AA94()
{
  result = qword_281296E10;
  if (!qword_281296E10)
  {
    sub_22045B9EC(255, &qword_281296E00, sub_22046A904, sub_220475280, MEMORY[0x277CBCBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281296E10);
  }

  return result;
}

uint64_t sub_22046AB30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22045B848(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22046ABA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220498908(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22046AC10(void *a1)
{
  sub_22047572C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39[2] = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B2A0();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v39[0] = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204552A8(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v39[1] = v39 - v10;
  v11 = sub_220886A4C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v39 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v42)
  {
    sub_220457328(&v40, v45);
    __swift_project_boxed_opaque_existential_1(v45, v46);
    sub_2208863EC();
    v21 = sub_2208869DC();
    v23 = v22;
    v24 = *(v12 + 8);
    v24(v19, v11);
    __swift_project_boxed_opaque_existential_1(v45, v46);
    sub_2208863EC();
    v25 = sub_2208869BC();
    v27 = v26;
    v24(v16, v11);
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v28 = sub_220885FCC();
    if ((sub_22088F0DC() & 1) != 0 && *(v28 + 16) <= 1uLL)
    {

      v21 = 0;
      v23 = 0;
      v25 = 0;
      v27 = 0;
      v28 = 0;
    }

    sub_22045BB28(0);
    sub_22045B848(0, &qword_28127E0B8, sub_22046B19C, MEMORY[0x277D84560]);
    sub_22046B19C();
    v30 = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_220899360;
    *&v40 = v21;
    *(&v40 + 1) = v23;
    v41 = v25;
    v42 = v27;
    v43 = v28;
    v44 = 0;
    sub_22046B36C();
    v33 = v32;
    v34 = sub_220455260(&qword_281297F88, 255, sub_22046B36C);
    v35 = sub_220455260(&unk_281297F90, 255, sub_22046B36C);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v33, v34, v35);
    type metadata accessor for StockListModel(0);
    sub_22045B950();
    sub_220455464();
    sub_22088B29C();
    v36 = sub_220455260(&qword_281297DC8, 255, sub_22046B19C);
    v37 = sub_220455260(&qword_281297DD0, 255, sub_22046B19C);
    MEMORY[0x223D80A10](v31, v30, v36, v37);
    sub_22088E7CC();
    v38 = sub_22088B72C();
    __swift_destroy_boxed_opaque_existential_1(v45);
    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22046B19C()
{
  if (!qword_281297DB0)
  {
    type metadata accessor for StockListModel(255);
    sub_22045B950();
    sub_220444254(&qword_281293CD8, 255, type metadata accessor for StockListModel);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297DB0);
    }
  }
}

uint64_t sub_22046B258(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22046B2A0()
{
  if (!qword_2812987C8)
  {
    sub_22046B36C();
    sub_22046B258(&qword_281297F88, sub_22046B36C);
    sub_22046B258(&unk_281297F90, sub_22046B36C);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987C8);
    }
  }
}

void sub_22046B36C()
{
  if (!qword_281297F80)
  {
    type metadata accessor for StockListModel(255);
    sub_220444254(&qword_281293CD8, 255, type metadata accessor for StockListModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297F80);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StocksUI26StockListSectionDescriptorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_8StocksUI31StockListSectionHeaderViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22046B438()
{
  v1 = 0x7961646F74;
  if (*(v0 + 40) == 1)
  {
    v1 = 0x7974706D65;
  }

  if (*(v0 + 40))
  {
    return v1;
  }

  else
  {
    return 0x736B636F7473;
  }
}

uint64_t sub_22046B488(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204558EC(0, &qword_2812971D0, type metadata accessor for StockListViewController, sub_22045659C, MEMORY[0x277D6EB00]);
    result = sub_22088848C();
    if (result)
    {
      sub_22045C85C();
      v4 = objc_allocWithZone(v3);
      return sub_22088DEDC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22046B5B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128D0D0);
  result = sub_2208884DC();
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128D018);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281280CC0);
  result = sub_2208884DC();
  v4 = v26;
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289B68);
  result = sub_2208884DC();
  v5 = v24;
  if (!v24)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v28;
  v15 = v31;
  v13 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (!v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v30;
  v7 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  v8 = v20;
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v19)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  type metadata accessor for StockListBlueprintViewCellProvider();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = sub_22088F0DC();
  v12 = 10.0;
  if (v11)
  {
    v12 = 12.0;
  }

  *(v10 + 200) = v12;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v15;
  *(v10 + 56) = v14;
  *(v10 + 64) = v17;
  *(v10 + 72) = v4;
  *(v10 + 80) = v16;
  *(v10 + 88) = v5;
  *(v10 + 96) = v13;
  sub_220457328(&v22, v10 + 104);
  *(v10 + 144) = v8;
  *(v10 + 152) = v9;
  sub_220457328(&v18, v10 + 160);
  return v10;
}

uint64_t sub_22046B910@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F710);
  result = sub_2208884DC();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281285410);
  result = sub_2208884DC();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991B0);
  result = sub_2208884DC();
  if (v16)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v5, v5);
    v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    MEMORY[0x28223BE20](v9, v9);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_2204767B4(*v7, *v11, &v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = sub_220778508(&qword_281291280, type metadata accessor for StockViewRenderer);
    *a2 = v13;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22046BC08@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v10 = v20;
  if (v20)
  {
    v11 = a2(0);
    v12 = v21;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v13, v13);
    v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = a3(v15, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for StockSparklineViewStyler()
{
  result = qword_281289F40;
  if (!qword_281289F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22046BDC8()
{
  result = sub_2208852DC();
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

uint64_t sub_22046BE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_sparklineStyleCache;
  sub_220476744();
  swift_allocObject();
  *(v9 + v10) = sub_220888D0C();
  *(v9 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baselineIndicatorWidth) = 0x3FF0000000000000;
  *(v9 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_currentTraitCollection) = 0;
  sub_220457328(&v14, v9 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v11 = OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_locale;
  v12 = sub_2208852DC();
  (*(*(v12 - 8) + 32))(v9 + v11, a2, v12);
  return v9;
}

unint64_t sub_22046BFB4()
{
  result = qword_281287A38[0];
  if (!qword_281287A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281287A38);
  }

  return result;
}

unint64_t sub_22046C008()
{
  result = qword_281287A30;
  if (!qword_281287A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281287A30);
  }

  return result;
}

uint64_t sub_22046C0A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22046C120(uint64_t a1)
{
  result = sub_22046C148();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22046C148()
{
  result = qword_281291040[0];
  if (!qword_281291040[0])
  {
    type metadata accessor for TodayViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281291040);
  }

  return result;
}

uint64_t sub_22046C19C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_2812877A8);
    result = sub_2208884DC();
    if (v19)
    {
      v5 = type metadata accessor for StockListSectionHeaderViewStyler();
      v7 = v21;
      v6 = v22;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v8, v8);
      v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v10);
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v12, v12);
      v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v15 + 16))(v14);
      v16 = type metadata accessor for WatchlistSwitcherStyler();
      v17 = sub_220476ED0(v10, v14, v5, v7, v16, v6, &off_283412140);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v5;
      a2[4] = &off_283414110;
      *a2 = v17;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22046C468()
{
  result = qword_2812823A8;
  if (!qword_2812823A8)
  {
    type metadata accessor for StockListSectionHeaderViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812823A8);
  }

  return result;
}

unint64_t sub_22046C4BC(uint64_t a1)
{
  result = sub_22046C468();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22046C4E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128BB80);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for EmptyListViewStyler();
    v20[3] = v9;
    v20[4] = &off_283415E40;
    v20[0] = v8;
    type metadata accessor for EmptyListViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283415E40;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220455260(&qword_28128E0A0, 255, type metadata accessor for EmptyListViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046C744@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v4 = v14;
  if (v14)
  {
    v5 = type metadata accessor for EmptyListViewStyler();
    v6 = v15;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x28223BE20](v7, v7);
    v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_220477604(v9, 0, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    a2[3] = v5;
    a2[4] = &off_283415E40;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046C8A8(void *a1)
{
  v2 = sub_220888B4C();
  MEMORY[0x28223BE20](v2, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v7)
  {
    type metadata accessor for AppConfigurationRefreshManager();
    v5 = swift_allocObject();
    sub_22046CA9C(&qword_281298748, MEMORY[0x277D6CD10]);
    sub_220461F98();
    sub_22046CA9C(&qword_28127EAB8, sub_220461F98);
    sub_2208923FC();
    sub_22046CAE4(0, &qword_281298948, MEMORY[0x277D69388], MEMORY[0x277D6CB58]);
    swift_allocObject();
    *(v5 + 56) = sub_2208885BC();
    sub_220457328(&v6, v5 + 16);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046CA9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22046CAE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x277D837D0], v7, MEMORY[0x277D837E0]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22046CB58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v7)
  {
    type metadata accessor for StockPriceDataRefreshManager();
    swift_allocObject();
    v5 = sub_22046CCE4(&v10, &v8, &v6);
    result = sub_22046CA9C(&qword_281286ED0, type metadata accessor for StockPriceDataRefreshManager);
    *a2 = v5;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22046CCE4(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v7 = sub_220888B4C();
  MEMORY[0x28223BE20](v7, v8);
  sub_2204620D8(&qword_281298748, 255, MEMORY[0x277D6CD10]);
  v9 = MEMORY[0x277D6CD10];
  sub_220462120(0, &qword_28127EAC0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_22046CEB0(&qword_28127EAB8, &qword_28127EAC0, v9);
  sub_2208923FC();
  sub_22045EE84();
  swift_allocObject();
  *(v3 + 136) = sub_2208885BC();
  *(v3 + 144) = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  sub_220457328(a1, v3 + 16);
  sub_220457328(a2, v3 + 56);
  sub_220457328(a3, v3 + 96);
  return v3;
}

uint64_t sub_22046CEB0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_220462120(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22046CF14(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_2204620D8(&qword_281286ED8, a2, type metadata accessor for StockPriceDataRefreshManager);
  result = sub_2204620D8(&qword_281286EE0, v3, type metadata accessor for StockPriceDataRefreshManager);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22046CFA8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = objc_allocWithZone(sub_22088D98C());
  return sub_22088D97C();
}

uint64_t type metadata accessor for BackgroundFetchRegistrationStartupTask()
{
  result = qword_281281108;
  if (!qword_281281108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22046D04C()
{
  result = sub_22088885C();
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

uint64_t sub_22046D0F0()
{
  v0 = sub_22088885C();
  __swift_allocate_value_buffer(v0, qword_281298818);
  __swift_project_value_buffer(v0, qword_281298818);
  return sub_22088884C();
}

uint64_t sub_22046D154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_group;
  v5 = sub_22088885C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_22046D1D0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for WaitForStockListPrewarmStartupTask();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_220455260(&qword_281282128, 255, type metadata accessor for WaitForStockListPrewarmStartupTask);
    v5[0] = v4;
    sub_220888B1C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046D29C()
{
  v1 = sub_220891CFC();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220891CCC();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22088F14C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_group;
  if (qword_2812987F0 != -1)
  {
    swift_once();
  }

  v10 = sub_22088885C();
  v11 = __swift_project_value_buffer(v10, qword_2812987F8);
  (*(*(v10 - 8) + 16))(v0 + v9, v11, v10);
  v16 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_queue;
  v15[1] = sub_22046D5B4();
  sub_22088F13C();
  v19 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D85230];
  sub_220462834(&qword_28127E7D8, MEMORY[0x277D85230]);
  sub_22046D6C8(0, &unk_28127E990, v12);
  sub_22046D780(&qword_28127E988, &unk_28127E990, v12);
  sub_2208923FC();
  (*(v17 + 104))(v4, *MEMORY[0x277D85260], v18);
  *(v0 + v16) = sub_220891D2C();
  v13 = OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_deferred;
  sub_22046D7D0();
  swift_allocObject();
  *(v0 + v13) = sub_22088873C();
  *(v0 + OBJC_IVAR____TtC8StocksUI34WaitForStockListPrewarmStartupTask_sealed) = 0;
  return v0;
}

unint64_t sub_22046D5B4()
{
  result = qword_28127E7C0;
  if (!qword_28127E7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E7C0);
  }

  return result;
}

void sub_22046D600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22046D664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22046D6C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208917AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22046D71C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_220498908(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22046D780(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22046D6C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22046D7D0()
{
  if (!qword_2812988C8)
  {
    v0 = sub_22088874C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812988C8);
    }
  }
}

id sub_22046D824()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isNewsAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046D8A8()
{
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_featureAvailability), *(*v0 + OBJC_IVAR____TtC8StocksUI28ComputeAdsEnabledStartupTask_featureAvailability + 24));
  v1 = sub_22088613C();
  [objc_opt_self() setStocksAdEnabled_];
  sub_22046D934();
  swift_allocObject();
  return sub_220888ECC();
}

void sub_22046D934()
{
  if (!qword_2812985D0)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812985D0);
    }
  }
}

uint64_t sub_22046D988(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksV2UserActivitySerializer();
  result = sub_2208884CC();
  if (result)
  {
    sub_220447D10();
    swift_allocObject();
    return sub_22088BDCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046DA2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22046DA90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_220462BE0();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_2208852DC();
  sub_2208884DC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    v21 = &type metadata for SystemTheme;
    v22 = &off_283414150;
    v10 = type metadata accessor for BaseStyler();
    v11 = swift_allocObject();
    (*(v9 + 16))(v11 + OBJC_IVAR____TtC8StocksUI10BaseStyler_locale, v7, v8);
    v12 = OBJC_IVAR____TtC8StocksUI10BaseStyler_theme;
    v13 = [objc_opt_self() currentDevice];
    v14 = [v13 userInterfaceIdiom];

    if (v14 + 1 <= 6)
    {
      v15 = (v11 + v12);
      if (((1 << (v14 + 1)) & 0x5D) != 0)
      {
        sub_22046DA2C(&v20, v19);
        v15[3] = &type metadata for LightTheme;
        v15[4] = &off_283419810;
        v16 = swift_allocObject();
        *v15 = v16;
        sub_22066B8B0(v19, 0, v16 + 16);
LABEL_5:
        (*(v9 + 8))(v7, v8);
        result = sub_220457328(&v20, v11 + OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme);
        a2[3] = v10;
        a2[4] = &off_283417E78;
        *a2 = v11;
        return result;
      }

      if (!v14)
      {
        sub_22046DA2C(&v20, v19);
        v15[3] = &type metadata for DarkTheme;
        v15[4] = &off_283426768;
        v18 = swift_allocObject();
        *v15 = v18;
        sub_220462C38(v19, 0, v18 + 16);
        goto LABEL_5;
      }
    }
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22046DD98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_22046DF10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

uint64_t type metadata accessor for BaseStyler()
{
  result = qword_281295100;
  if (!qword_281295100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22046E0D8()
{
  result = sub_2208852DC();
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

uint64_t sub_22046E174(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22046E1E0(uint64_t a1)
{
  result = sub_22045ED0C();
  *(a1 + 8) = result;
  return result;
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

uint64_t sub_22046E258@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for PostPurchaseOnboardingPresenter();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_22045E6DC(qword_281284E30, type metadata accessor for PostPurchaseOnboardingPresenter);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046E314@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PostPurchaseOnboardingViewControllerFactory();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_22045E6DC(qword_28127FD28, type metadata accessor for PostPurchaseOnboardingViewControllerFactory);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_22046E3E0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281297400);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220888C6C();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22046E4A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088AC8C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812971F0);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297278);
  result = sub_2208884DC();
  if (v6)
  {
    sub_22088D20C();
    swift_allocObject();
    v5 = sub_22088D1FC();
    result = sub_22046CA9C(&unk_2812975E8, MEMORY[0x277D6E5C0]);
    *a2 = v5;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22046E664@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = swift_allocObject();
  a4[3] = v7;
  result = sub_22046CA9C(a2, a3);
  a4[4] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_22046E76C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5F0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281298250);
  result = sub_2208884DC();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812981D0);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298208);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298200);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E6B0);
  result = sub_2208884CC();
  if (result)
  {
    v5 = sub_22088A44C();
    v6 = sub_22088A43C();
    a2[3] = v5;
    result = sub_22046CA9C(&qword_281298228, MEMORY[0x277D35028]);
    a2[4] = result;
    *a2 = v6;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_22046EAD4()
{
  sub_22046EAA0(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22046EB94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22088D77C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C8AC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298208);
  result = sub_2208884DC();
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281282858);
    result = sub_2208884DC();
    if (v25)
    {
      v12 = *__swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v5 + 104))(v8, *MEMORY[0x277D6E808], v4);
      v13 = sub_22088DDAC();
      swift_allocObject();
      v14 = sub_22088DD9C();
      LOBYTE(v12) = *(v12 + 16);
      v22 = v13;
      v23 = MEMORY[0x277D6EA48];
      *&v21 = v14;
      v15 = type metadata accessor for OnboardingPersonalizedAdsStep();
      v16 = swift_allocObject();
      *(v16 + 57) = 2;
      *(v16 + 64) = xmmword_2208AAFC0;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 1;
      sub_220457328(&v21, v16 + 16);
      *(v16 + 56) = v12;
      sub_22046F118();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_220899360;
      *(v17 + 56) = v15;
      *(v17 + 64) = sub_22046CA9C(qword_2812864D8, type metadata accessor for OnboardingPersonalizedAdsStep);
      *(v17 + 32) = v16;
      sub_22088C89C();
      v18 = sub_22088A54C();
      swift_allocObject();
      v19 = sub_22088A53C();
      __swift_destroy_boxed_opaque_existential_1(v24);
      a2[3] = v18;
      result = sub_22046CA9C(&unk_2812981F0, MEMORY[0x277D35110]);
      a2[4] = result;
      *a2 = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22046EEE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (v5 == 2)
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for OnboardingConfigurationFactory();
    result = swift_allocObject();
    *(result + 16) = v5 & 1;
    a2[3] = v4;
    a2[4] = &off_28341FEE8;
    *a2 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NewsSource(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_22046F02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v5);
  v6 = sub_22088613C();
  (*(v3 + 8))(v5, a2);
  return (v6 & 1) == 0;
}

void sub_22046F118()
{
  if (!qword_28127E0D8)
  {
    sub_220446A58(255, &qword_281297EF0);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E0D8);
    }
  }
}

void *sub_22046F184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = swift_allocObject();
  sub_220458198(&v15, (v13 + 2));
  v13[7] = a2;
  v13[8] = a3;
  v13[9] = a4;
  return v13;
}

id sub_22046F238@<X0>(void *a1@<X8>)
{
  v2 = sub_22088BE4C();
  result = [objc_allocWithZone(v2) init];
  v4 = MEMORY[0x277D6DC00];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

void sub_22046F28C(void *a1, void *a2)
{
  if (qword_27CF55900 != -1)
  {
    swift_once();
  }

  sub_22046F77C(&qword_27CF5A230, a2, type metadata accessor for PPTAssembly);
  sub_220886B3C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if ((v8 & 1) == 0)
  {
LABEL_6:
    type metadata accessor for ExtendedLaunchToStockListTestCase();
    v4 = sub_2208884CC();
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  type metadata accessor for ExtendedLaunchToForYouTestCase();
  v4 = sub_2208884CC();
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  v5 = v4;
  [a1 setExtendedLaunchTest_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MainTestSuite();
  v6 = sub_2208884CC();
  if (v6)
  {
    v7 = v6;
    [a1 addTestSuite_];

    return;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void sub_22046F438()
{
  if (!qword_27CF58050)
  {
    sub_22046F494();
    v0 = sub_220886C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58050);
    }
  }
}

unint64_t sub_22046F494()
{
  result = qword_27CF58058;
  if (!qword_27CF58058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58058);
  }

  return result;
}

unint64_t sub_22046F4F0()
{
  result = qword_27CF58048;
  if (!qword_27CF58048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58048);
  }

  return result;
}

void sub_22046F544(uint64_t *a1@<X8>)
{
  v2 = 0x73694C6B636F7473;
  if (*v1)
  {
    v2 = 0x756F59726F66;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22046F584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F6A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F6EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F734(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22046F77C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22046F7C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22046F80C()
{
  if (!qword_281297A80)
  {
    type metadata accessor for StockListModel(255);
    sub_22045B950();
    sub_2204589B4(&qword_281293CD8, type metadata accessor for StockListModel);
    v0 = sub_22088BF4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297A80);
    }
  }
}

void sub_22046F9FC(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = [objc_allocWithZone(a3(0)) init];
  [v3 addTestCase_];
}

id sub_22046FCB4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_testName];
  *v2 = 0xD000000000000018;
  v2[1] = 0x80000002208C27D0;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_timeoutInSeconds] = 0x405E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_requiredCapabilities] = &unk_283410D80;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_iterations] = 2;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_offset] = 15;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_numberOfScreens] = 5;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_orientation] = 4;
  v0[OBJC_IVAR____TtC8StocksUI32StockFeedScrollLandscapeTestCase_waitForCommitToFinish] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_22046FF48()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_testName];
  *v2 = 0x73694C6B636F7453;
  *(v2 + 1) = 0xEF6C6C6F72635374;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_timeoutInSeconds] = 0x405E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_iterations] = 2;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_offset] = 15;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_numberOfScreens] = 3;
  *&v0[OBJC_IVAR____TtC8StocksUI23StockListScrollTestCase_scrollDirection] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_220470008()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_testName];
  *v2 = 0xD000000000000018;
  v2[1] = 0x80000002208D8FD0;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_timeoutInSeconds] = 0x405E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_requiredCapabilities] = &unk_283411848;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_iterations] = 2;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_offset] = 15;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_numberOfScreens] = 3;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_scrollDirection] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_orientation] = 4;
  v0[OBJC_IVAR____TtC8StocksUI32StockListScrollLandscapeTestCase_waitForCommitToFinish] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2204701B0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_testName];
  strcpy(&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_testName], "TickerScroll");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_timeoutInSeconds] = 0x405E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_requiredCapabilities] = &unk_283411878;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_iterations] = 2;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_offset] = 15;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_numberOfScreens] = 5;
  *&v0[OBJC_IVAR____TtC8StocksUI20TickerScrollTestCase_scrollDirection] = 1;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_220470308()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedRotateTestCase_testName];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x80000002208CC2A0;
  *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedRotateTestCase_timeoutInSeconds] = 0x404E000000000000;
  *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedRotateTestCase_aggregate] = 0;
  *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedRotateTestCase_requiredCapabilities] = &unk_283411220;
  *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedRotateTestCase_rotateOrientation] = 4;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_220470618()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220470650()
{

  return swift_deallocObject();
}

uint64_t sub_2204706C4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_2208884CC();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047076C()
{
  type metadata accessor for WelcomeFlowProvider();

  return swift_allocObject();
}

uint64_t sub_2204707B8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &qword_281298CC0);
  v6[2] = -1;
  v6[3] = -1;
  v6[1] = 0x7FFFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_281298E68 = result;
  return result;
}

uint64_t sub_22047090C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for WelcomeFlowProvider();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_2204633F0(qword_28128F5A8, type metadata accessor for WelcomeFlowProvider);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204709B4()
{
  if (!qword_281297E90)
  {
    sub_22088B27C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297E90);
    }
  }
}

uint64_t sub_220470A30@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MailShareLinkTextProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_22045D2D0(&qword_281289990, type metadata accessor for MailShareLinkTextProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_220470B78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967E0);
  result = sub_2208884DC();
  v3 = v19;
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = v20;
  v4 = __swift_project_boxed_opaque_existential_1(v18, v19);
  v16 = &v13;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v13 - v7;
  v14 = *(v5 + 16);
  v14(&v13 - v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E758);
  result = sub_2208884CC();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for AudioNewsProxyCommandHandler();
    MEMORY[0x28223BE20](v10, v11);
    (v14)(&v13 - v7, &v13 - v7, v3);
    v12 = sub_220465208(v17, &v13 - v7, v9, v10, v3, v15);
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220470DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220470E60()
{
  sub_220447764(0, &qword_281297118, type metadata accessor for CreateWatchlistCommandContext, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220447764(0, &qword_2812970C8, type metadata accessor for CreateWatchlistCommandContext, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6BF8 = result;
  return result;
}

uint64_t sub_220470FD4()
{
  result = type metadata accessor for WatchlistCreationRouteModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22047107C()
{
  sub_220447764(0, &qword_2812970E0, MEMORY[0x277D698E0], MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_2204711C8(0, &qword_281297FF8, MEMORY[0x277D698E0]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C08 = result;
  return result;
}

void sub_2204711C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22088AD0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22047122C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ReadStoryCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    sub_22088E48C();
    sub_22044869C(0, &qword_28127E730);
    sub_220453640(&qword_28128B438, type metadata accessor for ReadStoryCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220471344(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();
    result = sub_2208884CC();
    if (result)
    {
      v4 = result;
      type metadata accessor for ReadStoryCommandHandler();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2204713F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WatchlistCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_220453640(qword_28128A9E0, type metadata accessor for WatchlistCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220471530(void *a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(_BYTE *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v30)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = a4;
  v25 = a2;
  v23 = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v9 = v27;
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = v28;
  v10 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v22 = &v20;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v20 - v13;
  v20 = *(v11 + 16);
  v20(&v20 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25(0);
  result = sub_2208884CC();
  if (result)
  {
    v15 = result;
    v16 = v23(0);
    MEMORY[0x28223BE20](v16, v17);
    v18 = &v20 - v13;
    (v20)(v18, v14, v9);
    v19 = v24(v29, v18, v15, v16, v9, v21);
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v19;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204717C0()
{
  sub_220447764(0, &qword_2812970E8, MEMORY[0x277D69810], MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471928(0, &qword_281298000, MEMORY[0x277D69810], sub_2204654EC);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C00 = result;
  return result;
}

void sub_220471928(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_22088AD0C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204719A8()
{
  sub_220886A4C();
  if (v0 <= 0x3F)
  {
    sub_220447764(319, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220471A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220471AB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220471B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220471B54()
{
  result = sub_220886A4C();
  if (v1 <= 0x3F)
  {
    result = sub_220885DFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220471BE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ChangeWatchlistDisplayCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FC8 != -1)
    {
      swift_once();
    }

    type metadata accessor for ChangeWatchlistDisplayContext(0);
    sub_220453640(qword_281281D10, type metadata accessor for ChangeWatchlistDisplayCommandHandler);
    sub_22088B7CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220471D38()
{
  type metadata accessor for CurrencyDisplayCommandHandler();

  return swift_allocObject();
}

uint64_t sub_220471D6C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ResetIdentifierCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FE0 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_2812862B8, type metadata accessor for ResetIdentifierCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220471E90(void *a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_2208884CC();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220);
    result = sub_2208884DC();
    v10 = v20;
    if (v20)
    {
      v11 = a3(0);
      v12 = v21;
      v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v13, v13);
      v15 = &v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      v17 = a4(v9, v15, v11, v10, v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220472084()
{
  sub_220471A5C(0, &qword_2812970D0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471A5C(0, &qword_281297090, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C38 = result;
  return result;
}

uint64_t sub_2204721BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PrivacyCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FF8 != -1)
    {
      swift_once();
    }

    sub_220453640(&qword_28128DAF0, type metadata accessor for PrivacyCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204722E0()
{
  type metadata accessor for PrivacyCommandHandler();

  return swift_allocObject();
}

uint64_t sub_220472314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_220457328(&v11, v9 + 24);
  return v9;
}

uint64_t sub_2204723D8()
{
  v0 = MEMORY[0x277D84F78];
  sub_220471AB4(0, &qword_2812970D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBD0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - v5;
  sub_220471AB4(0, &qword_281297090, v0 + 8, MEMORY[0x277D6EBE8]);
  (*(v3 + 104))(v6, *MEMORY[0x277D6EBC8], v2);
  result = sub_22088E20C();
  qword_2812B6C90 = result;
  return result;
}

uint64_t sub_220472520(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DataRefreshCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297058 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_281289C20, type metadata accessor for DataRefreshCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220472644()
{
  sub_220471A5C(0, &qword_2812970D0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471A5C(0, &qword_281297090, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C98 = result;
  return result;
}

uint64_t sub_22047277C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DebugMenuCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297040 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_28128BC20, type metadata accessor for DebugMenuCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204728A0(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220465030(0);
    if (sub_2208884CC())
    {
      swift_getObjectType();
      if (qword_281297028 != -1)
      {
        swift_once();
      }

      type metadata accessor for StocksActivity(0);
      sub_220453640(&qword_2812975A8, sub_220465030);
      sub_22088B7BC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220472A10(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_22046507C(0);
    if (sub_2208884CC())
    {
      swift_getObjectType();
      if (qword_281297050 != -1)
      {
        swift_once();
      }

      type metadata accessor for StocksActivity(0);
      sub_220453640(&qword_281297628, sub_22046507C);
      sub_22088B7BC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220472B80(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for OpenMainWindowCommandHandler();
    if (sub_2208884CC())
    {
      swift_getObjectType();
      if (qword_281297038 != -1)
      {
        swift_once();
      }

      sub_220453640(qword_2812872B8, type metadata accessor for OpenMainWindowCommandHandler);
      sub_22088B7BC();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220472CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220472D34()
{
  sub_220467508(0, &qword_281297108, &type metadata for CommandShareContent, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220467508(0, &qword_2812970C0, &type metadata for CommandShareContent, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6CA8 = result;
  return result;
}

uint64_t sub_220472E7C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StocksSharingCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    swift_getObjectType();
    if (qword_281297080 != -1)
    {
      swift_once();
    }

    sub_220453640(qword_281295A08, type metadata accessor for StocksSharingCommandHandler);
    sub_22088B7BC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220472F9C()
{
  sub_220471A5C(0, &qword_2812970D0, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v7 - v4;
  sub_220471A5C(0, &qword_281297090, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v5, *MEMORY[0x277D6EBC8], v1);
  result = sub_22088E20C();
  qword_2812B6C40 = result;
  return result;
}

uint64_t sub_2204730D4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CommandObserver();
  sub_2208884CC();
}

void sub_220473134(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 supportsMultipleScenes];

  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for HeadlineOpenInNewWindowCommandHandler();
    if (sub_2208884CC())
    {
      swift_getObjectType();
      sub_22088E4CC();
      sub_22088E30C();
      sub_22089057C();
      sub_220453640(&qword_281281708, type metadata accessor for HeadlineOpenInNewWindowCommandHandler);
      sub_22088B7BC();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_220473288()
{
  type metadata accessor for CopyLink2CommandHandler();

  return swift_allocObject();
}

uint64_t sub_2204732BC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for CopyArticleCommandHandler();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088E4CC();
    sub_22088E2DC();
    sub_220453640(&qword_281289CE0, type metadata accessor for CopyArticleCommandHandler);
    sub_22088ADBC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204733B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2204733E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2204733E4(void *a1)
{
  v2 = v1;
  v4 = sub_2208852DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v9, v10).n128_u64[0];
  v13 = v28 - v12;
  v14 = [a1 userInterfaceStyle];
  if (!v14)
  {

    return v2;
  }

  if (v14 == 1)
  {
    v15 = *(v5 + 16);
    v15(v8, v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_locale, v4);
    sub_22046DA2C(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme, v29);
    v2 = swift_allocObject();
    v15((v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_locale), v8, v4);
    v16 = OBJC_IVAR____TtC8StocksUI10BaseStyler_theme;
    v17 = [objc_opt_self() currentDevice];
    v18 = [v17 userInterfaceIdiom];

    v19 = v18 + 1;
    if ((v18 + 1) <= 6)
    {
      v20 = (v2 + v16);
      if (((1 << v19) & 0x5D) != 0)
      {
        sub_22046DA2C(v29, v28);
        v20[3] = &type metadata for LightTheme;
        v20[4] = &off_283419810;
        v21 = swift_allocObject();
        *v20 = v21;
        v22 = a1;
        sub_22066B8B0(v28, a1, v21 + 16);
LABEL_6:
        (*(v5 + 8))(v8, v4);
        v23 = OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme;
LABEL_10:
        sub_220458198(v29, v2 + v23);
        return v2;
      }

      if (v19 == 1)
      {
        sub_22046DA2C(v29, v28);
        v20[3] = &type metadata for DarkTheme;
        v20[4] = &off_283426768;
        v26 = swift_allocObject();
        *v20 = v26;
        v27 = a1;
        sub_220462C38(v28, a1, v26 + 16);
        goto LABEL_6;
      }
    }
  }

  else if (v14 == 2)
  {
    v24 = *(v5 + 16);
    v24(v13, v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_locale, v4);
    sub_22046DA2C(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme, v29);
    v2 = swift_allocObject();
    v24((v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_locale), v13, v4);
    LOBYTE(v28[0]) = 2;
    sub_220473B04(v29, a1, (v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme));
    (*(v5 + 8))(v13, v4);
    v23 = OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme;
    goto LABEL_10;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220473814()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_22047398C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_220473B04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*v3 > 1u)
  {
    goto LABEL_6;
  }

  v6 = a1;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 + 1 > 6)
  {
    goto LABEL_7;
  }

  a1 = v6;
  if (((1 << (v8 + 1)) & 0x5D) != 0)
  {
    sub_22046DA2C(v6, v14);
    a3[3] = &type metadata for LightTheme;
    a3[4] = &off_283419810;
    v9 = swift_allocObject();
    *a3 = v9;
    v10 = a2;
    return sub_22066B8B0(v14, a2, v9 + 16);
  }

  if (v8)
  {
LABEL_7:
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
LABEL_6:
    sub_22046DA2C(a1, v14);
    a3[3] = &type metadata for DarkTheme;
    a3[4] = &off_283426768;
    v12 = swift_allocObject();
    *a3 = v12;
    v13 = a2;
    return sub_220462C38(v14, a2, v12 + 16);
  }

  return result;
}

uint64_t sub_220473CA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

uint64_t sub_220473E18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  return swift_deallocObject();
}

void sub_220473F90(void *a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 128))(v4, v5);
  [a1 setTintColor_];

  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = (*(v8 + 48))(v7, v8);
  [a1 setBackgroundColor_];
}

uint64_t sub_220474088()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_220474164(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_22046DA2C(a2 + 64, v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22088ED6C();
  sub_2204693CC();
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(&v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

char *sub_220474280(void *a1)
{
  v2 = sub_2208883BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128D220);
  result = sub_2208884DC();
  if (!v83)
  {
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128F868);
  result = sub_2208884DC();
  if (!v81)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812893B0);
  result = sub_2208884DC();
  v5 = v78;
  if (!v78)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v79;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045C7B0();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204565D4();
  v63 = v8;
  result = sub_2208884CC();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A308);
  result = sub_2208884DC();
  v10 = v76;
  if (!v76)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v62 = v77;
  sub_2208883AC();
  sub_22046DA2C(a1, &v73);
  v11 = swift_allocObject();
  sub_220457328(&v73, v11 + 16);
  sub_22047F0BC();
  swift_allocObject();
  v61 = sub_220888CDC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088AC8C();
  result = sub_2208884CC();
  v60 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = v10;
  v58 = v9;
  v59 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v72[0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = result;
  v74 = v12;
  v75 = sub_220455260(&qword_281298BF0, 255, MEMORY[0x277CEAEA8]);
  *&v73 = v13;
  sub_22088B49C();
  swift_allocObject();
  v14 = sub_22088B47C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770);
  result = sub_2208884DC();
  if (!v74)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v72[3])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_28128BFC0);
  sub_22088611C();
  sub_22088849C();

  if (!v71[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v15 = v69;
  if (!v69)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v53 = v70;
  v16 = __swift_project_boxed_opaque_existential_1(v68, v69);
  v55 = v45;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v16);
  v54 = v17;
  v19 = *(v17 + 16);
  v64 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v15;
  v52 = v19;
  v19();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285D30);
  result = sub_2208884DC();
  if (!v67)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v51 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BAD8();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = result;
  v50 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A8);
  result = sub_2208884DC();
  if (v65[3])
  {
    v46 = type metadata accessor for StockListViewController();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
    v48 = v45;
    MEMORY[0x28223BE20](v21, v21);
    v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
    v47 = v45;
    MEMORY[0x28223BE20](v25, v25);
    v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v45[1] = v45;
    MEMORY[0x28223BE20](v29, v29);
    v31 = (v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = (*(v32 + 16))(v31);
    v45[0] = v45;
    MEMORY[0x28223BE20](v33, v34);
    v35 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v52)(v35, v64, v15);
    v36 = type metadata accessor for StockListRenderer();
    v37 = type metadata accessor for WatchlistEditMenuProvider();
    v38 = type metadata accessor for StockListStyler();
    v44 = sub_220455260(&qword_281297478, 255, sub_2204565D4);
    v43 = v35;
    v39 = v60;
    v40 = v23;
    v41 = v59;
    v42 = sub_22076BB94(v40, v27, v50, v56, v59, v58, v57, v62, v61, v60, v51, &v73, v72, v71, v43, v31, v49, v65, v46, v36, v63, v37, v38, v20, &off_283414078, v44, &off_28341EBC8, &off_2834281F8, v53);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v54 + 8))(v64, v20);
    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v82);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return v42;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_220474D74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220474DAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128F868);
  result = sub_2208884DC();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockListStyler();
    v17[3] = v9;
    v17[4] = &off_2834281F8;
    v17[0] = v8;
    v10 = type metadata accessor for StockListRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12, v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_2834281F8;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_283414078;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220474FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281290378);
  result = sub_2208884DC();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281294338);
    result = sub_2208884DC();
    v5 = v14;
    if (v14)
    {
      v6 = type metadata accessor for StockListStyler();
      v7 = v15;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      MEMORY[0x28223BE20](v8, v8);
      v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v11 + 16))(v10);
      v12 = sub_220466390(&v16, v10, v6, v5, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v13);
      a2[3] = v6;
      a2[4] = &off_2834281F8;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220475190@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  if (v6)
  {
    a2[3] = &type metadata for AddButtonStyler;
    a2[4] = &off_283417320;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_220457328(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220475248()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

void sub_2204752F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22046D5B4();
    sub_22046AA04(a4, 255, a5);
    sub_22046AA04(&qword_28127E7C8, 255, sub_22046D5B4);
    v8 = sub_22088EB5C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2204753E0()
{
  if (!qword_281296E00)
  {
    sub_22046A904();
    sub_22046AA04(&unk_281296DF0, 255, sub_22046A904);
    v0 = sub_22088EB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296E00);
    }
  }
}

uint64_t type metadata accessor for StockListDataManager()
{
  result = qword_28128E5B0;
  if (!qword_28128E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204754C4()
{
  result = sub_220886A4C();
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

unint64_t sub_220475590()
{
  result = qword_28127E7C8;
  if (!qword_28127E7C8)
  {
    sub_22044D56C(255, &qword_28127E7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E7C8);
  }

  return result;
}

uint64_t sub_2204755F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220455B14();
    result = sub_2208884CC();
    if (result)
    {
      sub_2204558EC(0, &qword_281297CE8, sub_220455B14, sub_2204563D4, MEMORY[0x277D6D8A8]);
      swift_allocObject();
      return sub_22088B69C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22047572C()
{
  if (!qword_281298788)
  {
    sub_22046B19C();
    sub_22046B258(&qword_281297DC8, sub_22046B19C);
    sub_22046B258(&qword_281297DD0, sub_22046B19C);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298788);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22047580C(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_22045C278();
    result = sub_2208884CC();
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220455998();
      result = sub_2208884CC();
      if (result)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_220446A58(0, &qword_281297128);
        result = sub_2208884DC();
        if (v6)
        {
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_22045B9EC(0, &qword_2812977A8, sub_220455998, sub_22045C514, MEMORY[0x277D6E068]);
          result = sub_2208884CC();
          if (result)
          {
            sub_220478934();
            sub_220455B14();
            swift_allocObject();
            return sub_22088B94C();
          }

          goto LABEL_19;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_220455998();
  result = sub_2208884CC();
  if (!result)
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v5)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B9EC(0, &qword_2812977A8, sub_220455998, sub_22045C514, MEMORY[0x277D6E068]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_220478934();
  sub_220455B14();
  swift_allocObject();
  return sub_22088B92C();
}

uint64_t sub_220475B94(void *a1)
{
  v2 = sub_22088BEAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455BBC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204560B0();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220456248();
  result = sub_2208884CC();
  if (result)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D6DC38], v2);
    sub_220455998();
    swift_allocObject();
    return sub_22088BFAC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220475DB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045C85C();
  result = sub_22088848C();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220475E84(void *a1)
{
  sub_22045B848(0, &qword_281296E58, MEMORY[0x277D74DB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_22088EACC();
  sub_22088849C();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B9EC(0, &qword_2812971B8, sub_22045BB28, sub_22045639C, MEMORY[0x277D6EB10]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204558EC(0, &qword_281297148, type metadata accessor for StockListViewController, sub_22045659C, MEMORY[0x277D6EB70]);
  result = sub_2208884CC();
  if (result)
  {
    sub_2204558EC(0, &qword_2812971D0, type metadata accessor for StockListViewController, sub_22045659C, MEMORY[0x277D6EB00]);
    return sub_22088DF6C();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220476110()
{
  v0 = sub_22088EA7C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088EA6C();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D74D58]);
  sub_22088EA8C();
  v9 = [objc_opt_self() clearColor];
  sub_22088EAAC();
  (*(v1 + 104))(v4, *MEMORY[0x277D74D90], v0);
  sub_22088EA9C();
  return sub_22088EABC();
}

uint64_t sub_2204762BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StockListBlueprintViewCellProvider();
    result = sub_2208884CC();
    if (result)
    {
      sub_220455260(&qword_2812824B8, 255, type metadata accessor for StockListBlueprintViewCellProvider);
      sub_22045B9EC(0, &qword_2812971B8, sub_22045BB28, sub_22045639C, MEMORY[0x277D6EB10]);
      swift_allocObject();
      return sub_22088DF9C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220476434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1, a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  v13 = swift_allocObject();
  (*(v6 + 16))(v9, v12, a3);
  v14 = sub_220476580(v9, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_220476580(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_22088A9EC();
  swift_allocObject();
  a2[2] = sub_22088A9FC();
  swift_allocObject();
  a2[3] = sub_22088A9FC();
  swift_allocObject();
  a2[4] = sub_22088A9FC();
  swift_allocObject();
  a2[5] = sub_22088A9FC();
  swift_allocObject();
  a2[6] = sub_22088A9FC();
  swift_allocObject();
  a2[7] = sub_22088A9FC();
  sub_220457328(&v9, (a2 + 8));
  return a2;
}

void sub_220476744()
{
  if (!qword_281298710)
  {
    sub_220890DAC();
    sub_22046BFB4();
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298710);
    }
  }
}

void *sub_2204767B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for StockViewStyler();
  v23[3] = v6;
  v23[4] = &off_2834151A0;
  v23[0] = a1;
  v7 = type metadata accessor for StockSparklineViewRenderer();
  v21 = v7;
  v22 = &off_283425530;
  v20[0] = a2;
  type metadata accessor for StockViewRenderer();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, v6);
  MEMORY[0x28223BE20](v9, v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v8[5] = v6;
  v8[6] = &off_2834151A0;
  v8[2] = v17;
  v8[10] = v7;
  v8[11] = &off_283425530;
  v8[7] = v18;
  v8[17] = MEMORY[0x277D84F98];
  sub_220457328(a3, (v8 + 12));
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v8;
}

uint64_t sub_2204769C4(uint64_t a1, uint64_t a2)
{
  result = sub_22046C0A4(qword_281291290, a2, type metadata accessor for StockViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220476A1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F650);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for TodayViewStyler();
    v20[3] = v9;
    v20[4] = &off_283422C10;
    v20[0] = v8;
    type metadata accessor for TodayViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283422C10;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220455260(&qword_281291038, 255, type metadata accessor for TodayViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220476C7C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338);
  result = sub_2208884DC();
  v10 = v20;
  if (v20)
  {
    v11 = a2(0);
    v12 = v21;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v13, v13);
    v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v16 + 16))(v15);
    v17 = a3(v15, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220476DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  sub_220457328(&v9, v7 + 16);
  return v7;
}

void *sub_220476ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a4;
  v26 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v22 = a5;
  v23 = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v15, v15);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v14[10] = type metadata accessor for WatchlistSwitcherStyler();
  v14[11] = &off_283412140;
  v14[7] = v19;
  sub_220457328(&v24, (v14 + 2));
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v14;
}

uint64_t sub_2204770D4(void *a1)
{
  v2 = sub_220888B4C();
  MEMORY[0x28223BE20](v2, v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299270);
  result = sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299200);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (v7)
  {
    type metadata accessor for StockMetadataRefreshManager();
    v5 = swift_allocObject();
    sub_22046CA9C(&qword_281298748, MEMORY[0x277D6CD10]);
    sub_220461F98();
    sub_22046CA9C(&qword_28127EAB8, sub_220461F98);
    sub_2208923FC();
    sub_22046CAE4(0, &qword_281298940, sub_220477098, MEMORY[0x277D6CB58]);
    swift_allocObject();
    *(v5 + 136) = sub_2208885BC();
    sub_220457328(&v10, v5 + 16);
    sub_220457328(&v8, v5 + 56);
    sub_220457328(&v6, v5 + 96);
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2204773A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812818A0);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for StockListSectionHeaderViewStyler();
    v20[3] = v9;
    v20[4] = &off_283414110;
    v20[0] = v8;
    type metadata accessor for StockListSectionHeaderViewRenderer();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283414110;
    *&v17 = v15;
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_220455260(&qword_2812823A0, 255, type metadata accessor for StockListSectionHeaderViewRenderer);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220477604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  sub_220457328(&v11, v9 + 16);
  *(v9 + 56) = a2;
  return v9;
}

unint64_t sub_2204776CC(uint64_t a1)
{
  result = sub_2204776F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2204776F4()
{
  result = qword_28128E0A8[0];
  if (!qword_28128E0A8[0])
  {
    type metadata accessor for EmptyListViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128E0A8);
  }

  return result;
}

uint64_t sub_220477748(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_2204558EC(0, &qword_281297148, type metadata accessor for StockListViewController, sub_22045659C, MEMORY[0x277D6EB70]);
    swift_allocObject();
    return sub_22088E06C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047780C(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_22045C278();
    result = sub_2208884CC();
    if (result)
    {
      sub_220455BBC();
      swift_allocObject();
      return sub_22088DE1C();
    }

    __break(1u);
  }

  else
  {
    sub_22045C024();
    result = sub_2208884CC();
    if (result)
    {
      sub_220455BBC();
      swift_allocObject();
      return sub_22088DE0C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2204778D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockListBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockListBlueprintViewSupplementaryViewProvider();
  result = sub_2208884CC();
  if (result)
  {
    *&v8[0] = v3;
    sub_22045C024();
    v7 = objc_allocWithZone(v6);
    return sub_22088D7BC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220477ABC()
{
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
  swift_allocObject();
  return sub_22088C62C();
}

uint64_t sub_220477B38(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820);
  result = sub_22088848C();
  if (result)
  {
    v4 = result;
    sub_22044D56C(0, &unk_28127E890);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220477C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281280CC0);
  result = sub_2208884DC();
  v3 = v29;
  if (!v29)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v27)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282B40);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v28;
  v21 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BAD8();
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v7, v7);
    v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for WatchlistSwitcherMenuProvider();
    v22[3] = v12;
    v22[4] = &off_28341AA58;
    v22[0] = v11;
    type metadata accessor for StockListBlueprintViewSupplementaryViewProvider();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
    MEMORY[0x28223BE20](v14, v14);
    v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[15] = v12;
    v13[16] = &off_28341AA58;
    v13[12] = v18;
    v13[2] = v3;
    v13[3] = v4;
    v19 = v20;
    v13[4] = v21;
    v13[5] = v19;
    v13[6] = v5;
    sub_220457328(&v25, (v13 + 7));
    v13[17] = v6;
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v13;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220477FF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WatchlistSwitcherMenuProvider();
    v7 = swift_allocObject();
    result = sub_220457328(&v10, (v7 + 2));
    v7[7] = v8;
    v7[8] = v9;
    v7[9] = v5;
    a2[3] = v6;
    a2[4] = &off_28341AA58;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220478174()
{
  sub_22045BAD8();
  swift_allocObject();
  return sub_22088863C();
}

uint64_t sub_2204781BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B9EC(0, &qword_281297680, sub_22045BB28, sub_22045639C, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_220455260(&qword_281298BF0, 255, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770);
  result = sub_2208884DC();
  if (v5)
  {
    sub_2204560B0();
    v4 = objc_allocWithZone(v3);
    return sub_22088D54C();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220478498(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_22045B9EC(0, &qword_2812976A8, sub_22045BB28, sub_22045639C, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_22045B9EC(0, &qword_281297680, sub_22045BB28, sub_22045639C, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220478774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
    result = sub_2208884CC();
    if (result)
    {
      sub_220456248();
      v4 = objc_allocWithZone(v3);
      return sub_22088DC1C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220478878(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455998();
  result = sub_2208884CC();
  if (result)
  {
    sub_22045B9EC(0, &qword_2812977A8, sub_220455998, sub_22045C514, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_22088C94C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220478934()
{
  result = qword_2812977B0;
  if (!qword_2812977B0)
  {
    sub_22045B9EC(255, &qword_2812977A8, sub_220455998, sub_22045C514, MEMORY[0x277D6E068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812977B0);
  }

  return result;
}

uint64_t sub_2204789D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v30)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288DB0);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299178);
  result = sub_2208884DC();
  if (!v24)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  v3 = v19;
  if (v19)
  {
    v4 = type metadata accessor for StockListBlueprintModifierFactory();
    v5 = v20;
    v6 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    MEMORY[0x28223BE20](v7, v7);
    v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = (*(v10 + 16))(v9);
    MEMORY[0x28223BE20](v11, v12);
    v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v6, v3);
    v16 = type metadata accessor for SparklineModelProvider();
    v17 = sub_220478EEC(&v29, &v27, v9, &v23, &v21, v14, v4, v3, v16, v5, &off_28341BBA0);
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_220478DA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289CE8);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for SparklineModelProvider();
    v5 = swift_allocObject();
    result = sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_28341BBA0;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220478E5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ChartCategoryProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_283415C98;
  *a1 = result;
  return result;
}

void *sub_220478EEC(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a9;
  v32 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a3, a9);
  v28 = a8;
  v29 = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a8 - 8) + 32))(v19, a6, a8);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (&v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v20[15] = type metadata accessor for SparklineModelProvider();
  v20[16] = &off_28341BBA0;
  v20[12] = v25;
  sub_220457328(a1, (v20 + 2));
  sub_220457328(a2, (v20 + 7));
  sub_220457328(a4, (v20 + 17));
  sub_220457328(a5, (v20 + 22));
  sub_220457328(&v27, (v20 + 27));
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v20;
}

uint64_t sub_2204790E0(void *a1)
{
  v2 = type metadata accessor for StockListSelectionModel();
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v16)
  {
    sub_220457328(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v11 = sub_22088618C();
    v12 = sub_22088685C();
    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    (*(*(v12 - 8) + 56))(v9, v13, 2, v12);
    sub_2205FBE28(v9, v6);
    sub_22045B848(0, &qword_281298910, type metadata accessor for StockListSelectionModel, MEMORY[0x277D6CB60]);
    swift_allocObject();
    v14 = sub_22088866C();
    sub_220479464(v9, type metadata accessor for StockListSelectionModel);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2204792CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220479334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22047939C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220479404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220479464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204794C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850);
  result = sub_2208884DC();
  if (v4)
  {
    sub_2204566B8(0, &qword_281296870, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33538]);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047958C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2208906BC();
  swift_allocObject();
  result = sub_2208906AC();
  v4 = MEMORY[0x277D33A60];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2204795E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksV2UserActivityDeserializer();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    type metadata accessor for ScrollRestorationManager();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v4;
    *a2 = result;
    a2[1] = &off_2834214D8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220479668(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299200);
  result = sub_2208884DC();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_2812954E8);
    result = sub_2208884DC();
    if (v5)
    {
      type metadata accessor for StocksV2UserActivityDeserializer();
      v3 = swift_allocObject();
      sub_220457328(&v6, v3 + 16);
      sub_220457328(&v4, v3 + 56);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22047978C@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991C8);
  a2();
  sub_22088849C();

  if (v9[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299110);
    result = sub_2208884DC();
    if (v8[3])
    {
      v7 = type metadata accessor for AttributionProvider();
      swift_allocObject();
      result = sub_220479A84(v9, v8);
      a3[3] = v7;
      a3[4] = &off_28341A3A8;
      *a3 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AttributionProvider()
{
  result = qword_281290330;
  if (!qword_281290330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220479938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047999C()
{
  sub_220479938(319, &qword_2812992A0, MEMORY[0x277D69520], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_220479A84(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AttributionSource();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220888B4C();
  MEMORY[0x28223BE20](v11, v12);
  v13 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource;
  v14 = sub_220885EBC();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentDownloadTask) = 0;
  v15 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_imageFetchDeduper;
  v21[0] = MEMORY[0x277D84F90];
  sub_22047A5DC(&qword_281298748, MEMORY[0x277D6CD10]);
  sub_220479938(0, &qword_28127EAC0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
  sub_22047A624();
  sub_2208923FC();
  sub_22047A6AC();
  swift_allocObject();
  *(v2 + v15) = sub_2208885BC();
  sub_22046DA2C(a1, v2 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_attributionProvider);
  sub_22046DA2C(a2, v2 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_attributionAssetManager);
  v16 = *(v7 + 28);
  v17 = sub_220884E9C();
  (*(*(v17 - 8) + 56))(&v10[v16], 1, 1, v17);
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  *&v10[*(v7 + 32)] = 0;
  sub_220479938(0, &qword_2812988D8, type metadata accessor for AttributionSource, MEMORY[0x277D6CB78]);
  swift_allocObject();
  *(v3 + 16) = sub_2208886CC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208863BC();
  swift_allocObject();
  swift_weakInit();
  v18 = sub_220888D9C();
  sub_2208886EC();

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_220479DFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for AttributionSource()
{
  result = qword_281291C70;
  if (!qword_281291C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220479E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220479EE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220479F38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220479F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220479FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A0B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22047A10C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A1D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22047A28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A2F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22047A344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A3A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A40C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22047A460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047A4C4()
{
  sub_220479F38(319, &qword_2812994E0, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_220479F38(319, &qword_28127E520, sub_22047A590);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22047A590()
{
  result = qword_28127E528;
  if (!qword_28127E528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E528);
  }

  return result;
}

uint64_t sub_22047A5DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22047A624()
{
  result = qword_28127EAB8;
  if (!qword_28127EAB8)
  {
    sub_220479938(255, &qword_28127EAC0, MEMORY[0x277D6CD10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EAB8);
  }

  return result;
}

void sub_22047A6AC()
{
  if (!qword_281298960)
  {
    sub_220884E9C();
    sub_22047A590();
    sub_22047A5DC(&qword_2812994F0, MEMORY[0x277CC9260]);
    v0 = sub_2208885DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298960);
    }
  }
}

uint64_t sub_22047A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_220885EBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_220888FEC();
}

uint64_t sub_22047A8A0()
{
  v1 = sub_220885EBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22047A96C()
{
  v1 = *(sub_220885EBC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22047A9D0(v2, v3);
}

uint64_t sub_22047A9D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22047AA30(a2);
  }

  return result;
}

uint64_t sub_22047AA30(uint64_t a1)
{
  v126 = sub_22088625C();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v2);
  v124 = &v120[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x277D83D88];
  sub_220479938(0, &unk_28127E970, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v129 = &v120[-v7];
  v130 = sub_2208861EC();
  v132 = *(v130 - 8);
  v9 = MEMORY[0x28223BE20](v130, v8);
  v128 = &v120[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v131 = &v120[-v12];
  v142 = type metadata accessor for AttributionSource();
  v14 = MEMORY[0x28223BE20](v142, v13);
  v122 = &v120[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v16);
  v143 = &v120[-v17];
  sub_220479938(0, &qword_281299208, MEMORY[0x277D69680], v4);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v141 = &v120[-v20];
  v147 = sub_22088626C();
  v149 = *(v147 - 8);
  v22 = MEMORY[0x28223BE20](v147, v21);
  v134 = &v120[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v22, v24);
  v133 = &v120[-v26];
  v28 = MEMORY[0x28223BE20](v25, v27);
  v136 = &v120[-v29];
  MEMORY[0x28223BE20](v28, v30);
  v144 = &v120[-v31];
  v32 = sub_220885EBC();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v123 = v35;
  v135 = &v120[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22047BC64();
  v37 = v36 - 8;
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v120[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = MEMORY[0x277D69520];
  sub_220479938(0, &qword_2812992A0, MEMORY[0x277D69520], v4);
  v44 = MEMORY[0x28223BE20](v42 - 8, v43);
  v140 = &v120[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x28223BE20](v44, v46);
  v137 = &v120[-v48];
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v120[-v50];
  v52 = v33[2];
  v148 = a1;
  v145 = v52;
  v146 = v33 + 2;
  v52(&v120[-v50], a1, v32);
  v139 = v33[7];
  v139(v51, 0, 1, v32);
  v53 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource;
  v54 = v150;
  swift_beginAccess();
  v55 = *(v37 + 56);
  sub_22047BCF8(v51, v40, &qword_2812992A0, v41);
  sub_22047BCF8(v54 + v53, &v40[v55], &qword_2812992A0, v41);
  v138 = v33;
  v56 = v33[6];
  if (v56(v40, 1, v32) == 1)
  {
    sub_22047BD78(v51, &qword_2812992A0, MEMORY[0x277D69520]);
    if (v56(&v40[v55], 1, v32) == 1)
    {
      return sub_22047BD78(v40, &qword_2812992A0, MEMORY[0x277D69520]);
    }
  }

  else
  {
    v58 = v137;
    sub_22047BCF8(v40, v137, &qword_2812992A0, MEMORY[0x277D69520]);
    if (v56(&v40[v55], 1, v32) != 1)
    {
      v63 = v138;
      v64 = v135;
      (v138[4])(v135, &v40[v55], v32);
      sub_22047A5DC(&qword_2812992A8, MEMORY[0x277D69520]);
      v121 = sub_2208912FC();
      v65 = v63[1];
      v65(v64, v32);
      v66 = MEMORY[0x277D69520];
      sub_22047BD78(v51, &qword_2812992A0, MEMORY[0x277D69520]);
      v65(v58, v32);
      result = sub_22047BD78(v40, &qword_2812992A0, v66);
      v59 = v149;
      if (v121)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_22047BD78(v51, &qword_2812992A0, MEMORY[0x277D69520]);
    (v138[1])(v58, v32);
  }

  sub_22047BDE8(v40, sub_22047BC64);
  v59 = v149;
LABEL_7:
  v60 = v140;
  v145(v140, v148, v32);
  v139(v60, 0, 1, v32);
  v61 = v150;
  swift_beginAccess();
  sub_22047BEA8(v60, v61 + v53);
  swift_endAccess();
  v62 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentDownloadTask;
  if (*(v61 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentDownloadTask))
  {

    sub_22089181C();
  }

  v67 = v147;
  v68 = v142;
  *(v61 + v62) = 0;

  v69 = v141;
  sub_220885E8C();
  if ((v59[6])(v69, 1, v67) == 1)
  {
    sub_22047BD78(v69, &qword_281299208, MEMORY[0x277D69680]);
    v70 = sub_220885E9C();
    v72 = v71;
    v73 = v143;
    sub_220885EAC();
    *v73 = v70;
    v73[1] = v72;
    *(v73 + *(v68 + 24)) = 0;
    sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource);
    sub_2208886FC();
    return sub_22047BDE8(v73, type metadata accessor for AttributionSource);
  }

  else
  {
    v140 = v32;
    v74 = v59[4];
    v75 = v144;
    v74(v144, v69, v67);
    v76 = v149[2];
    v77 = v136;
    v78 = v75;
    v79 = v149;
    v76(v136, v78, v67);
    v80 = v133;
    v76(v133, v77, v67);
    v81 = v134;
    sub_2208861FC();
    sub_22047A5DC(&qword_281299210, MEMORY[0x277D69680]);
    v82 = sub_2208912FC();
    v83 = v81;
    v84 = v79[1];
    v84(v83, v67);
    v142 = (v79 + 1);
    v84(v80, v67);
    if (v82)
    {
      v85 = sub_220885E9C();
      v87 = v86;
      v88 = v143;
      sub_220885EAC();
      if (qword_28127F0A0 != -1)
      {
        swift_once();
      }

      v89 = qword_2812B6930;
      *v88 = v85;
      v88[1] = v87;
      *(v88 + *(v68 + 24)) = v89;
      sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource);
      v90 = v89;
      sub_2208886FC();
      sub_22047BDE8(v88, type metadata accessor for AttributionSource);
      v84(v144, v67);
      return (v84)(v136, v67);
    }

    else
    {
      v91 = (v79[11])(v77, v67);
      if (v91 == *MEMORY[0x277D69660])
      {
        (v79[12])(v77, v67);
        v92 = *(v132 + 32);
        v141 = (v132 + 32);
        v149 = v92;
        (v92)(v131, v77, v130);
        v93 = sub_220885E9C();
        v95 = v94;
        v96 = v143;
        sub_220885EAC();
        v97 = v122;
        sub_2208886DC();
        v98 = *(v97 + *(v68 + 24));
        v99 = v98;
        sub_22047BDE8(v97, type metadata accessor for AttributionSource);
        *v96 = v93;
        v96[1] = v95;
        *(v96 + *(v68 + 24)) = v98;
        sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource);
        sub_2208886FC();
        sub_22047BDE8(v96, type metadata accessor for AttributionSource);
        v100 = sub_22089180C();
        (*(*(v100 - 8) + 56))(v129, 1, 1, v100);
        v101 = swift_allocObject();
        swift_weakInit();
        v102 = v132;
        v103 = v128;
        v104 = v130;
        (*(v132 + 16))(v128, v131, v130);
        v145(v135, v148, v140);
        sub_2208917EC();

        v105 = sub_2208917DC();
        v106 = (*(v102 + 80) + 40) & ~*(v102 + 80);
        v107 = v138;
        v108 = (v127 + *(v138 + 80) + v106) & ~*(v138 + 80);
        v109 = swift_allocObject();
        v110 = MEMORY[0x277D85700];
        *(v109 + 2) = v105;
        *(v109 + 3) = v110;
        *(v109 + 4) = v101;
        (v149)(&v109[v106], v103, v104);
        (v107[4])(&v109[v108], v135, v140);

        v111 = sub_2206830F8(0, 0, v129, &unk_2208A8470, v109);
        (*(v132 + 8))(v131, v104);
        v84(v144, v147);
        *(v150 + v62) = v111;
      }

      else if (v91 == *MEMORY[0x277D69678])
      {
        (v79[12])(v77, v67);
        v112 = v125;
        v113 = v124;
        v114 = v126;
        (*(v125 + 32))(v124, v77, v126);
        v150 = *(v61 + 16);
        v115 = sub_220885E9C();
        v117 = v116;
        v118 = v143;
        sub_220885EAC();
        v119 = sub_220684E5C();
        *v118 = v115;
        v118[1] = v117;
        *(v118 + *(v68 + 24)) = v119;
        sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource);
        sub_2208886FC();
        sub_22047BDE8(v118, type metadata accessor for AttributionSource);
        (*(v112 + 8))(v113, v114);
        return (v84)(v144, v67);
      }

      else
      {
        result = sub_22089267C();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_22047BB0C()
{
  v1 = sub_2208861EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220885EBC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_22047BC64()
{
  if (!qword_281299290)
  {
    sub_220479938(255, &qword_2812992A0, MEMORY[0x277D69520], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299290);
    }
  }
}

uint64_t sub_22047BCF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220479938(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22047BD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220479938(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22047BDE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22047BE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22047BEA8(uint64_t a1, uint64_t a2)
{
  sub_220479938(0, &qword_2812992A0, MEMORY[0x277D69520], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s8StocksUI17AttributionSourceV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479F38(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_22047C23C();
  v14 = v13;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  v25 = type metadata accessor for AttributionSource();
  v18 = *(v25 + 20);
  v19 = *(v14 + 48);
  sub_22047C2BC(a1 + v18, v17);
  sub_22047C2BC(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_22047C2BC(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_2206579D8();
      v22 = sub_2208912FC();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_22047C4E4(v17);
      if (v22)
      {
        return (*(a1 + *(v25 + 24)) != 0) ^ (*(a2 + *(v25 + 24)) == 0);
      }

      return 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_22065797C(v17);
    return 0;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_22047C4E4(v17);
  return (*(a1 + *(v25 + 24)) != 0) ^ (*(a2 + *(v25 + 24)) == 0);
}

void sub_22047C23C()
{
  if (!qword_2812994D8)
  {
    sub_220479F38(255, &qword_2812994E0, MEMORY[0x277CC9260]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812994D8);
    }
  }
}

uint64_t sub_22047C2BC(uint64_t a1, uint64_t a2)
{
  sub_22047C320(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22047C354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047C3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047C41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047C480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22047C4E4(uint64_t a1)
{
  sub_22047C320(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22047C558@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088516C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v43 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299350);
  result = sub_2208884DC();
  if (!v59)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v57)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0);
  result = sub_2208884DC();
  if (!v55[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v46 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22047CD10();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289E68);
  result = sub_2208884DC();
  if (!v54)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v44 = v4;
  v45 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v15 = result;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    v43[2] = v43;
    v17 = MEMORY[0x28223BE20](v16, v16);
    v19 = (v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v22 = type metadata accessor for AppReviewRequestStore();
    v51 = v22;
    v52 = &off_2834157F8;
    v50[0] = v21;
    v43[0] = type metadata accessor for AppReviewRequestManager();
    v23 = objc_allocWithZone(v43[0]);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v43[1] = v43;
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = (v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v27;
    v49[3] = v22;
    v49[4] = &off_2834157F8;
    v49[0] = v29;
    v30 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager__started;
    v48 = 0;
    v31 = MEMORY[0x277D839B0];
    sub_22047CEAC(0, &unk_2812986D0, MEMORY[0x277D839B0], MEMORY[0x277D6CF18]);
    swift_allocObject();
    *&v23[v30] = sub_220888DAC();
    v32 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager__didEngageWithArticle;
    v48 = 0;
    swift_allocObject();
    *&v23[v32] = sub_220888DAC();
    v33 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager___userIsAuthenticatedToAppStore;
    v48 = 2;
    sub_22047CE40(0, &qword_2812986C8, &qword_28127E980, v31);
    swift_allocObject();
    *&v23[v33] = sub_220888DAC();
    v34 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager__appReviewRequestLastSeenDate;
    sub_22088506C();
    v35 = v44;
    (*(v5 + 16))(v46, v12, v44);
    sub_22047D0D4(0, &qword_2812986E8, MEMORY[0x277CC9578], MEMORY[0x277D6CF18]);
    swift_allocObject();
    v36 = sub_220888DAC();
    (*(v5 + 8))(v12, v35);
    *&v23[v34] = v36;
    v37 = OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager____lazy_storage___appReviewPromptConfig;
    sub_22047D0D4(0, &qword_281299170, MEMORY[0x277D69720], MEMORY[0x277D83D88]);
    (*(*(v38 - 8) + 56))(&v23[v37], 1, 1, v38);
    sub_22046DA2C(v58, &v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_userInfo]);
    sub_22046DA2C(v56, &v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_featureAvailability]);
    sub_22046DA2C(v55, &v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_appConfigurationManager]);
    *&v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_appleAccount] = v14;
    sub_22046DA2C(v49, &v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_store]);
    *&v23[OBJC_IVAR____TtC8StocksUI23AppReviewRequestManager_tracker] = v15;
    v39 = v43[0];
    v47.receiver = v23;
    v47.super_class = v43[0];
    swift_unknownObjectRetain();

    v40 = objc_msgSendSuper2(&v47, sel_init);
    [v14 addObserver_];
    sub_22088859C();
    *(swift_allocObject() + 16) = v40;
    v41 = v40;
    sub_22088855C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v50);
    result = __swift_destroy_boxed_opaque_existential_1(v53);
    v42 = v45;
    v45[3] = v39;
    v42[4] = &off_283427CE0;
    *v42 = v41;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22047CCD8()
{

  return swift_deallocObject();
}

unint64_t sub_22047CD10()
{
  result = qword_28127E878;
  if (!qword_28127E878)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127E878);
  }

  return result;
}

uint64_t sub_22047CD74@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppReviewRequestStore();
  v3 = swift_allocObject();
  sub_22047CE40(0, &qword_2812986E0, &qword_28128E348, &type metadata for AppReviewRequestState);
  swift_allocObject();
  result = sub_220888DAC();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_2834157F8;
  *a1 = v3;
  return result;
}

void sub_22047CE40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_22047CEAC(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_220888DDC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22047CEAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for AppReviewRequestManager()
{
  result = qword_28128BFD0;
  if (!qword_28128BFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22047CF7C()
{
  sub_22047CF48(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22047D03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22047D0D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22047D138()
{
  result = qword_28128ADA0;
  if (!qword_28128ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128ADA0);
  }

  return result;
}

unint64_t sub_22047D190()
{
  result = qword_28128AD98;
  if (!qword_28128AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128AD98);
  }

  return result;
}

unint64_t sub_22047D1E4()
{
  result = qword_28128F890[0];
  if (!qword_28128F890[0])
  {
    sub_22045B9EC(255, &qword_28128F880, type metadata accessor for StockListBlueprintModifierFactory, sub_22045BA6C, type metadata accessor for StockListInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128F890);
  }

  return result;
}

uint64_t sub_22047D2E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B9EC(0, &qword_281297EB0, type metadata accessor for StocksActivity, sub_2205C4928, MEMORY[0x277D6D5F0]);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (v10)
  {
    v7 = type metadata accessor for StockListRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(v11, (v8 + 5));
    v8[10] = v5;
    v8[11] = v6;
    result = sub_220457328(&v9, (v8 + 12));
    a2[3] = v7;
    a2[4] = &off_283420EA8;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_22047D49C(void *a1)
{

  sub_220888DCC();

  sub_22046EAA0(0);
  sub_220888FBC();
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  v3 = sub_220888D9C();
  sub_220888E4C();
}

uint64_t sub_22047D590()
{

  return swift_deallocObject();
}

uint64_t sub_22047D620(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_22047D664(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455998();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378);
  result = sub_22088849C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045B9EC(0, &qword_281297680, sub_22045BB28, sub_22045639C, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220455260(&qword_281298BF0, 255, MEMORY[0x277CEAEA8]);
    sub_22045C7B0();
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22047D9C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455998();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_22088BFCC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_220457328(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22047DC18();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812971C0);
  result = sub_22088849C();
  if (v12)
  {
    sub_22088D41C();
    sub_220457328(&v11, &v13);
    sub_22046DA2C(v15, v10);
    v6 = swift_allocObject();
    sub_220457328(v10, v6 + 16);
    *(v6 + 56) = v5;
    v7 = v5;
    v8 = sub_22088D40C();
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = MEMORY[0x277D6E690];
    *a2 = v8;
    a2[1] = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22047DBD8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_22047DC18()
{
  result = qword_2812974F0;
  if (!qword_2812974F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812974F0);
  }

  return result;
}

uint64_t sub_22047DC7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for StockListCompositionalLayoutOptionsProvider();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_220455260(&qword_28127FC80, 255, type metadata accessor for StockListCompositionalLayoutOptionsProvider);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22047DD60()
{
  if (!qword_28127E040)
  {
    sub_220446A58(255, &qword_281297928);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E040);
    }
  }
}

uint64_t sub_22047DDCC(void *a1)
{
  sub_22047DD60();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204565D4();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_220455260(&qword_281297480, 255, sub_2204565D4);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22047DF0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455998();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22045BB28(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_2204565D4();
      swift_allocObject();
      return sub_22088D74C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22047DFEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220455998();
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047E074@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A300);
  result = sub_2208884DC();
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281280B28);
    result = sub_2208884DC();
    if (v21)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v7, v7);
      v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for MastheadViewLayoutAttributesFactory();
      v19[3] = v12;
      v19[4] = &off_2834140A0;
      v19[0] = v11;
      type metadata accessor for MastheadViewProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
      MEMORY[0x28223BE20](v14, v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[8] = v12;
      v13[9] = &off_2834140A0;
      v13[2] = 0;
      v13[3] = v5;
      v13[4] = v6;
      v13[5] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_220455260(&qword_28128F150, 255, type metadata accessor for MastheadViewProvider);
      *a2 = v13;
      a2[1] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}