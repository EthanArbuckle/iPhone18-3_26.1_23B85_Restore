uint64_t sub_21AF81D68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AF81DD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21AF81F00@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Ondeviceanalytics_RetentionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s23SearchOnDeviceAnalytics44Apple_Parsec_Ondeviceanalytics_RetentionTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_0_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Parsec_Ondeviceanalytics_SpotlightMetric(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_21AF81F70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_0_6(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF81F84(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_21AF821EC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF82240()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF8228C()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF822D8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82324()
{
  OUTLINED_FUNCTION_16_4();
  IsOlderThanStore = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.getter();
  return OUTLINED_FUNCTION_30_0(IsOlderThanStore);
}

uint64_t sub_21AF82370()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF823BC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF82408()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82454()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF824A0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF825F4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82620()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8266C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF826B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF82704()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF827A8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.invocationTypeSummarized.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF827F4()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreen.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF82840()
{
  OUTLINED_FUNCTION_16_4();
  locked = Apple_Parsec_Ondeviceanalytics_SpotlightCarryReport.isLockedScreenSummarized.getter();
  return OUTLINED_FUNCTION_30_0(locked);
}

uint64_t sub_21AF8288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_36_0();
  v6 = sub_21B111EC4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_21AF82934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B111EC4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21AF829DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 125)
  {
    v4 = *(a1 + 24);
    v5 = (v4 & 0x7E) == 0;
    v6 = (v4 & 0x7E | (v4 >> 7)) ^ 0x7F;
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_21B111EC4();
    v11 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_21AF82A60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 125)
  {
    *(result + 16) = 0;
    *(result + 24) = ~a2 & 0x7E | (~a2 << 7);
  }

  else
  {
    v7 = sub_21B111EC4();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF82F24()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF82F88()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_21B111EC4();
    v5 = OUTLINED_FUNCTION_64(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF82FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  v7 = OUTLINED_FUNCTION_80(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = sub_21B111EC4();
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_21AF83098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F90, &unk_21B115FC0);
  v9 = OUTLINED_FUNCTION_80(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v11 = sub_21B111EC4();
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_21AF83144()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*v1);
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_78(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_21AF831F4()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_21B111EC4();
    OUTLINED_FUNCTION_80(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB8, &qword_21B114A28);
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_64(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_21AF832B0()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[6];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43300, &qword_21B115FD8);
    OUTLINED_FUNCTION_80(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
      v7 = v2[8];
    }
  }

  v10 = OUTLINED_FUNCTION_78(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_21AF833AC()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_21B111EC4();
    OUTLINED_FUNCTION_80(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43300, &qword_21B115FD8);
      OUTLINED_FUNCTION_80(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43308, &qword_21B115FE0);
        v9 = v5[8];
      }
    }

    v12 = OUTLINED_FUNCTION_64(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_21AF834BC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];
  swift_unknownObjectRelease();
  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  v7 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

uint64_t sub_21AF83594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21B111E34();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_21AF8361C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_21B111E34();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21AF8382C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF83880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF83900(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v4 = sub_21B111DA4();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_21AF83944(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_45();
  v4 = sub_21B111DA4();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_21AF8398C()
{
  v1 = sub_21B111CB4();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21AF83ACC@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_SearchSuggestionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AF83F7C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21AF83F94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21AF83F94(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21AF83FA4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21AF83FBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21AF83FBC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21AF84474()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B09A19C();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF846AC()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B099D58();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF84A5C()
{
  OUTLINED_FUNCTION_53_0();
  sub_21B09A730();
  OUTLINED_FUNCTION_192();
  return sub_21B111FB4();
}

uint64_t sub_21AF84CF8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84D44()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84D90()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84DDC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84E28()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84E74()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.minRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84EC0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84F0C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84F58()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84FA4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF84FF0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8503C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85088()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF850D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.varRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85120()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8516C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF851B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85204()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85250()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8527C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF852C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF852F4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85320()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8536C()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF85488()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF854B4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF854E0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8552C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85578()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF855C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85610()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8565C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF856A8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF856F4()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8578C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF857D8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85824()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85870()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF858BC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85908()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85954()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF859A0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF859EC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85A38()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85A84()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85AD0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF85B1C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85C80()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85D04()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85F28()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF85FA0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF85FEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF86038()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86064()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86090()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF860BC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86108()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86154()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86180()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF861AC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF861F8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86244()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF86290()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF86348()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86438()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF86528()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF865AC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF865D8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86624()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86670()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF866BC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86708()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86754()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF867A0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF867EC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86970()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF869BC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86C20()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86C6C()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86CB8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF86D04()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF86DC8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86F98()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF86FE4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87030()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8707C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF870C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast14Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87114()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast21Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87160()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF871AC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.daysSinceReceipt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87290()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF872DC()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87328()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87374()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF87458()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF874A4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF874F0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8753C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87588()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF875D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87620()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8766C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF876B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87704()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87750()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8779C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF877E8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87834()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87880()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF878CC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87918()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87964()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF879B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF879FC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87A48()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87A94()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87AE0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87B2C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87B78()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87BC4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87C10()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87C5C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87CA8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87CF4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87D40()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87D8C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87DD8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87E24()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87E70()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87EBC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87F08()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87F54()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87FA0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF87FEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88038()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88084()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF880D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8811C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88168()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF881B4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88200()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8824C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88298()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF882E4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88330()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8837C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF883C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88414()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88658()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88684()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF886D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88764()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF887B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8888C()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF888D8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF88AD4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF88CA0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destinationWasParpunchout.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF88CEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88D18()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88D44()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF88E30()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF89054()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF89080()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF891D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF89220()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8924C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF892D0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF893CC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF89540()
{
  OUTLINED_FUNCTION_16_4();
  started = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.isPhotosScopedSearch.getter();
  return OUTLINED_FUNCTION_30_0(started);
}

uint64_t sub_21AF895E4()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89630()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF8967C()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF896C8()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89714()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89760()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF897AC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF897F8()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89844()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89890()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF898DC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89928()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89974()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF899C0()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89A0C()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89AB0()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF89AFC()
{
  OUTLINED_FUNCTION_16_4();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.getter();
  return OUTLINED_FUNCTION_30_0(Understanding);
}

uint64_t sub_21AF8B4B0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.agent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B4DC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.userGuidString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B508()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B5D8()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.removeTimestamps.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B624()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B650()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.duEnabled.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B69C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.countryCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B6C8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B7D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.devicePersistentD20.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B878()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.isInternalCarry.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B8C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.experimentInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8B8F0()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.searchOptOut.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8B93C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.jsonFeedback.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8B968()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_ClientSession.feedback.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BA38()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_Value.stringValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BA64()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_Value.BOOLValue.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8BB90()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_Value.bytesValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BBBC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BD40()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uuidBytes.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BD6C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.sections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BD98()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_21AF8BE1C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionStartTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BE68()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BF0C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8BFC0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.configuredLookbackTimeInDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C00C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.activeDaysInCollectionPeriod.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C058()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C0A4()
{
  OUTLINED_FUNCTION_16_4();
  v0 = Apple_Parsec_Feedback_V2_UsageSinceLookback.isDiagnosticsAndUsageEnabled.getter();
  return OUTLINED_FUNCTION_30_0(v0);
}

uint64_t sub_21AF8C0F0()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.invokedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C13C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.zkwEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C188()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.searchedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C1D4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.suggestionOrAppleResultEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C220()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.webEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C26C()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.voiceSearchDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C2B8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.numSearchEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C810()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8C8C4()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8CBD8()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8CFEC()
{
  OUTLINED_FUNCTION_16_4();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_21AF8D358()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*v1);
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_78(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_21AF8D404()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_756();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44828, &qword_21B118108);
      v7 = *(v2 + 48);
    }

    v8 = OUTLINED_FUNCTION_64(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_21AF8D4B0()
{
  OUTLINED_FUNCTION_81();
  v1 = sub_21B111EC4();
  OUTLINED_FUNCTION_80(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_754();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    v3 = OUTLINED_FUNCTION_698();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_21AF8D548()
{
  OUTLINED_FUNCTION_365();
  v1 = sub_21B111EC4();
  OUTLINED_FUNCTION_80(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_698();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21AF8D5DC()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_753();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8D63C()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_756();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8D6B0(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_676();
    v7 = OUTLINED_FUNCTION_78(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21AF8D724()
{
  OUTLINED_FUNCTION_81();
  if (v2 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_679();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8D790(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v7 = OUTLINED_FUNCTION_78(*(v2 + 80));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_21AF8D808()
{
  OUTLINED_FUNCTION_81();
  if (v3 == 254)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v4 = OUTLINED_FUNCTION_64(*(v2 + 80));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8D87C()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 32));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8D8E0()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 48));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_21AF8D94C()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8D9A8()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_624();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
    OUTLINED_FUNCTION_708();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8DA50()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_627();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD434E8, &unk_21B116AC0);
      OUTLINED_FUNCTION_681();
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF8DB24()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 72));
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_78(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_21AF8DBD0()
{
  OUTLINED_FUNCTION_34_2();
  if (v4)
  {
    *(v1 + 72) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_756();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
      v7 = *(v2 + 48);
    }

    v8 = OUTLINED_FUNCTION_64(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_21AF8DC84(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_86();
    v6 = OUTLINED_FUNCTION_351();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_21AF8DCF8()
{
  OUTLINED_FUNCTION_81();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DD84()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 64));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8DDE8()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 64));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8DE48()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 24));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8DEA8()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DF08()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 24));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8DF68()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8DFD0()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_594();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
    OUTLINED_FUNCTION_624();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8E078()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_626();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44A60, &qword_21B118168);
      OUTLINED_FUNCTION_627();
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF8E11C()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 64));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_676();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
    OUTLINED_FUNCTION_753();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8E1C4()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_679();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44830, &qword_21B118110);
      OUTLINED_FUNCTION_756();
    }

    v7 = OUTLINED_FUNCTION_64(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_21AF8E274()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_677();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8E2D4()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E330()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 16));
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 72));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8E394()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v2 = OUTLINED_FUNCTION_64(*(v0 + 72));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E3F4()
{
  OUTLINED_FUNCTION_71();
  if (v3)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 32));
  }

  v5 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AE8, &qword_21B118170);
    v7 = *(v2 + 68);
  }

  v8 = OUTLINED_FUNCTION_78(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_21AF8E4A4()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 64);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44AE8, &qword_21B118170);
      v5 = *(v0 + 68);
    }

    v6 = OUTLINED_FUNCTION_64(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_21AF8E554()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_710();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8E5B8()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_624();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
    OUTLINED_FUNCTION_80(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_708();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
      OUTLINED_FUNCTION_676();
    }
  }

  v9 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_21AF8E6A8()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_627();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B20, &qword_21B118188);
      OUTLINED_FUNCTION_80(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_681();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B28, &qword_21B118190);
        OUTLINED_FUNCTION_679();
      }
    }

    v7 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_21AF8E794()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_677();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
    OUTLINED_FUNCTION_594();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8E83C()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_710();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD44B30, &qword_21B118198);
      OUTLINED_FUNCTION_626();
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF8E8E0(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_661(*(a1 + 16));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_21AF8E944(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_21AF8EA84()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 32));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_351();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8EAE4()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_626();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8EB68()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 32));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_594();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
    OUTLINED_FUNCTION_624();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8EC10()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_849();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_626();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434D8, &qword_21B116AB0);
      OUTLINED_FUNCTION_627();
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_21AF8ECB4()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_80(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_708();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
    OUTLINED_FUNCTION_676();
  }

  v7 = OUTLINED_FUNCTION_78(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_21AF8ED5C()
{
  OUTLINED_FUNCTION_34_2();
  if (v1)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_80(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_681();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44B40, &unk_21B1181A8);
      OUTLINED_FUNCTION_679();
    }

    v5 = OUTLINED_FUNCTION_64(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_21AF8EE00()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_581();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8EE5C()
{
  OUTLINED_FUNCTION_81();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_80(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_754();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_677();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_21AF8EEF4()
{
  OUTLINED_FUNCTION_365();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434B8, &unk_21B116A90);
  OUTLINED_FUNCTION_80(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_710();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21AF8EF88()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 8));
  }

  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_708();
  v4 = OUTLINED_FUNCTION_78(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8EFE8()
{
  OUTLINED_FUNCTION_34_2();
  if (v0)
  {
    OUTLINED_FUNCTION_663();
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_681();
    v2 = OUTLINED_FUNCTION_64(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_21AF8F044()
{
  OUTLINED_FUNCTION_81();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  OUTLINED_FUNCTION_80(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_754();
  }

  else
  {
    sub_21B111EC4();
    v3 = OUTLINED_FUNCTION_698();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_21AF8F0DC()
{
  OUTLINED_FUNCTION_365();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD434C8, &qword_21B116AA0);
  OUTLINED_FUNCTION_80(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    sub_21B111EC4();
    OUTLINED_FUNCTION_698();
  }

  OUTLINED_FUNCTION_447();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_21AF8F170()
{
  OUTLINED_FUNCTION_71();
  if (v2)
  {
    return OUTLINED_FUNCTION_35_1(*v0);
  }

  OUTLINED_FUNCTION_86();
  v4 = OUTLINED_FUNCTION_78(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_21AF8F1D4()
{
  OUTLINED_FUNCTION_34_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    v4 = OUTLINED_FUNCTION_64(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8F238()
{
  OUTLINED_FUNCTION_71();
  if (v1)
  {
    return OUTLINED_FUNCTION_35_1(*(v0 + 40));
  }

  OUTLINED_FUNCTION_86();
  v3 = OUTLINED_FUNCTION_362();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_21AF8F298()
{
  OUTLINED_FUNCTION_34_2();
  if (v2)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_673();
    OUTLINED_FUNCTION_627();
    v4 = OUTLINED_FUNCTION_64(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_21AF8F2F8()
{
  OUTLINED_FUNCTION_81();
  v1 = *(v0 + 40);
  sub_21B111EC4();
  v2 = OUTLINED_FUNCTION_523();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_21AF8F340()
{
  OUTLINED_FUNCTION_81();
  v1 = *(v0 + 40);
  sub_21B111EC4();
  v2 = OUTLINED_FUNCTION_367();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_21AF8F388()
{
  OUTLINED_FUNCTION_81();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  OUTLINED_FUNCTION_80(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_754();
  }

  else
  {
    if (v0 == 12)
    {
      OUTLINED_FUNCTION_675();
      return OUTLINED_FUNCTION_661(*(v6 + 8));
    }

    v8 = sub_21B111EC4();
    OUTLINED_FUNCTION_80(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_676();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
      OUTLINED_FUNCTION_753();
    }

    v4 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_21AF8F48C()
{
  OUTLINED_FUNCTION_365();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44CE8, &qword_21B118258);
  OUTLINED_FUNCTION_80(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_485();
  }

  else
  {
    if (v1 == 12)
    {
      OUTLINED_FUNCTION_675();
      *v4 = 0;
      v4[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
      return;
    }

    v5 = sub_21B111EC4();
    OUTLINED_FUNCTION_80(v5);
    if (*(v6 + 84) == v1)
    {
      OUTLINED_FUNCTION_679();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD44C38, &qword_21B118240);
      OUTLINED_FUNCTION_756();
    }
  }

  OUTLINED_FUNCTION_447();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_21AF8F898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3_4();
  result = (*(v4 + 136))();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

void sub_21AF8F8EC(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3_4();
  *a2 = (*(v4 + 160))();
}

uint64_t sub_21AF8F934(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_3_4();
  return (*(v4 + 168))();
}

uint64_t sub_21AF8FA04()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_21AF8FA5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21AF8FAA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21AF90000(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111954();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90048(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111954();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF900BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111834();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90104(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111834();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF901F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111924();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF90238(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111924();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF902AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B110D94();
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

uint64_t sub_21AF9035C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21B110D94();
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

uint64_t sub_21AF90444()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_6_21();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AF90668(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111874();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_21AF906B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111874();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_21AF90780()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_21AF907CC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_61();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AF909C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return AvroArraySchema.hash(into:)();
}

uint64_t sub_21AF90C1C()
{
  v1 = *(v0 + 16);

  sub_21B0F6A44(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_21AF90D78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_0_30();
  result = sub_21B0F96AC(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_21AF90DB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_30();
  return sub_21B0FC550(v4, v5);
}

uint64_t sub_21AF914C0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_61();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AF914F4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21AF91778()
{
  v1 = *(v0 + 16);

  sub_21B0F6A44(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  OUTLINED_FUNCTION_35_8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_21AF91888()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21AF91984()
{
  v0 = sub_21B112A34();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF919D8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  OUTLINED_FUNCTION_0();
  result = sub_21AF91984();
  if (result == 2)
  {
    v8 = *(v2 + 16);
    v7 = *(v2 + 24);
    swift_getObjectType();
    v15[0] = v8;
    v9 = *(*(v7 + 8) + 8);
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_0();
    sub_21B1113E4();
    return swift_unknownObjectRelease();
  }

  else if (result)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_21AF92198(a1, v15);
    result = sub_21B0B9734(v15);
    if (!v3)
    {
      v12 = result;
      v13 = v10;
      v14 = v11;
      *(a2 + 24) = &unk_282C95BB0;
      result = sub_21AF921FC();
      *(a2 + 32) = result;
      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = v14 & 1;
    }
  }

  return result;
}

uint64_t sub_21AF91B0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;

  v5 = sub_21AF91984();
  if (v5 == 2)
  {
    v7 = v1[2];
    v6 = v1[3];
    swift_getObjectType();
    v8 = *(v6 + 8);
    swift_unknownObjectRetain();
    sub_21B1113C4();
    return swift_unknownObjectRelease();
  }

  v10 = v5;
  v11 = v1[2];
  v12 = v3[3];
  v13 = v3[2];
  swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  v15 = OUTLINED_FUNCTION_0();
  v14(v15);
  result = swift_unknownObjectRelease();
  if (v10)
  {
    if (v2)
    {
      return result;
    }

    v16 = v3[4];
    v17 = v3[5];
    v18 = type metadata accessor for SentinelBlock();
    swift_allocObject();
    sub_21AF92188(v16);
    v19 = OUTLINED_FUNCTION_0();
    v21 = sub_21B0B19B0(v19, v20, v16, v17);
    a1[3] = v18;
    v22 = &unk_27CD42AA0;
    v23 = type metadata accessor for SentinelBlock;
  }

  else
  {
    if (v2)
    {
      return result;
    }

    sub_21B111484();
    v24 = type metadata accessor for AggregationWindowBlock();
    swift_allocObject();
    v25 = OUTLINED_FUNCTION_0();
    v21 = sub_21B0BA780(v25, v26, v27);
    a1[3] = v24;
    v22 = &unk_27CD42A98;
    v23 = type metadata accessor for AggregationWindowBlock;
  }

  result = sub_21AF92140(v22, 255, v23);
  a1[4] = result;
  *a1 = v21;
  return result;
}

void *sub_21AF91D54()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  sub_21AF92250(v0[4]);
  return v0;
}

uint64_t sub_21AF91D7C()
{
  sub_21AF91D54();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21AF91DE4(uint64_t a1, int a2)
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

uint64_t sub_21AF91E04(uint64_t result, int a2, int a3)
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

uint64_t sub_21AF91ED4(uint64_t a1, id *a2)
{
  result = sub_21B1123E4();
  *a2 = 0;
  return result;
}

uint64_t sub_21AF91F4C(uint64_t a1, id *a2)
{
  v3 = sub_21B1123F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21AF91FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF924C8();
  *a1 = result;
  return result;
}

uint64_t sub_21AF92004@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21B1123D4();

  *a2 = v5;
  return result;
}

uint64_t sub_21AF9204C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF92078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21AF9207C(uint64_t a1)
{
  v2 = sub_21AF92140(&qword_27CD42AD0, 255, type metadata accessor for URLResourceKey);
  v3 = sub_21AF92140(&qword_27CD42AD8, 255, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21AF92140(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21AF92188(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21AF92198(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21AF921FC()
{
  result = qword_27CD42AA8;
  if (!qword_27CD42AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42AA8);
  }

  return result;
}

uint64_t sub_21AF92250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_21AF92274(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21AF92358()
{
  v0 = sub_21B112404();
  v1 = MEMORY[0x21CEE97E0](v0);

  return v1;
}

uint64_t sub_21AF92390()
{
  sub_21B112404();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21AF923E4()
{
  sub_21B112404();
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v0 = sub_21B112F14();

  return v0;
}

uint64_t sub_21AF92470(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_21AFAC000();
}

uint64_t sub_21AF924C8()
{
  sub_21B112404();
  v0 = sub_21B1123D4();

  return v0;
}

uint64_t sub_21AF9250C()
{

  OUTLINED_FUNCTION_7();
  v0 = sub_21AF9CF60();
  if (v0 == 3)
  {
    OUTLINED_FUNCTION_7();
    v1 = sub_21AF91984();
    if (v1)
    {
      v2 = 4;
    }

    else
    {
      v2 = 1;
    }

    if (v1 == 2)
    {
      return 5;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v4 = v0;

    return 0x20300u >> (8 * v4);
  }
}

unint64_t sub_21AF9259C(uint64_t a1)
{
  v2 = sub_21B111594();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, a1, v2);
  v11 = (*(v5 + 88))(v10, v2);
  if (v11 == *MEMORY[0x277D3E180])
  {
    v12 = OUTLINED_FUNCTION_0_0();
    v13(v12);

    return 2;
  }

  if (v11 == *MEMORY[0x277D3E168])
  {
    v15 = OUTLINED_FUNCTION_0_0();
    v16(v15);

    return 3;
  }

  if (v11 == *MEMORY[0x277D3E160])
  {
    v17 = OUTLINED_FUNCTION_0_0();
    v18(v17);

    return 4;
  }

  if (v11 == *MEMORY[0x277D3E190])
  {
    v19 = OUTLINED_FUNCTION_0_0();
    v20(v19);

    return 7;
  }

  if (v11 == *MEMORY[0x277D3E178])
  {
    v21 = OUTLINED_FUNCTION_0_0();
    v22(v21);

    return 10;
  }

  if (v11 == *MEMORY[0x277D3E188])
  {
    v23 = OUTLINED_FUNCTION_0_0();
    v24(v23);

    return 5;
  }

  else
  {
    if (v11 != *MEMORY[0x277D3E170])
    {
      v28 = *(v5 + 8);
      v28(a1, v2);

      v28(v10, v2);
      return 10;
    }

    v25 = sub_21AF9250C();
    v26 = OUTLINED_FUNCTION_0_0();
    v27(v26);
    return 0xA0908060100uLL >> (8 * (v25 & 0x1Fu));
  }
}

uint64_t sub_21AF92830()
{
  v0 = sub_21B112A34();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21AF9287C(char a1)
{
  result = 0x746E6174736E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x7461676572676761;
      break;
    case 4:
      result = 0x6974636172747865;
      break;
    case 5:
      result = 1852403562;
      break;
    case 6:
      result = 0x6572615761746164;
      break;
    case 7:
      result = 0x6574616C706D6574;
      break;
    case 8:
      result = 0x64616F6C7075;
      break;
    case 9:
      result = 0x6C656E69746E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21AF929D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21AF92830();
  *a2 = result;
  return result;
}

unint64_t sub_21AF92A00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21AF9287C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

const char *sub_21AF92A48()
{
  v1 = sub_21B1113D4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  (*(v4 + 16))(v8 - v7, v0, v1);
  v9 = *(v4 + 88);
  v10 = OUTLINED_FUNCTION_7();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x277D3E098])
  {
    return "initialization";
  }

  if (v12 == *MEMORY[0x277D3E090])
  {
    return "validation";
  }

  if (v12 == *MEMORY[0x277D3E088])
  {
    return "processing";
  }

  v14 = *(v4 + 8);
  v15 = OUTLINED_FUNCTION_7();
  v16(v15);
  return "unknown";
}

uint64_t sub_21AF92BDC(uint64_t a1)
{
  *(a1 + 8) = sub_21AF92C44(&qword_27CD42C00);
  result = sub_21AF92C44(&unk_27CD477F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21AF92C44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B1113D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AF92C88(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a4;
  v11 = a3;
  v48 = a3;
  v49 = a2;
  v55 = a1;
  v13 = type metadata accessor for RecipeIdentifier();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v50 = v17 - v16;
  v19 = sub_21B1113D4();
  v20 = OUTLINED_FUNCTION_1(v19);
  v54 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v47[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v52 = &v47[-v27];
  v53 = v7;
  v28 = (v7 + qword_27CD6E6B0);
  *v28 = 0;
  v28[1] = 0;
  *(v7 + qword_27CD42C08) = 0;
  *(v7 + qword_27CD6E6A0) = v11;
  *(v7 + qword_27CD6E6A8) = a7;
  *v28 = a5;
  v28[1] = a6;
  v30 = *(v29 + 16);
  v30(&v47[-v27], a2, v19);
  v31 = v51;
  sub_21AF93E20(v51, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D80;
  v33 = v31;
  v34 = sub_21AFC9D08();
  v36 = v35;
  *(inited + 56) = MEMORY[0x277D837D0];
  v37 = sub_21AF93F18();
  *(inited + 64) = v37;
  *(inited + 32) = v34;
  *(inited + 40) = v36;
  v38 = *(v33 + *(v14 + 28));
  v39 = MEMORY[0x277D83ED0];
  *(inited + 96) = MEMORY[0x277D83E88];
  *(inited + 104) = v39;
  *(inited + 72) = v38;
  v40 = sub_21AF9287C(v48);
  *(inited + 136) = MEMORY[0x277D837D0];
  *(inited + 144) = v37;
  *(inited + 112) = v40;
  *(inited + 120) = v41;
  v42 = v49;
  v30(v26, v49, v19);
  v43 = sub_21B112454();
  *(inited + 176) = MEMORY[0x277D837D0];
  *(inited + 184) = v37;
  *(inited + 152) = v43;
  *(inited + 160) = v44;
  v45 = sub_21B0B219C(v55, v52, v50, "recipeName=%{signpost.description:attribute,public}s,\nrecipeVersion=%{signpost.description:attribute,public}lu,\nblock=%{signpost.description:attribute,public}s,\nactivity=%{signpost.description:attribute,public}s", 211, 2, inited);
  sub_21AF93E84(v33);
  (*(v54 + 8))(v42, v19);
  return v45;
}

void *sub_21AF92FA4()
{
  if ((*(v0 + *(*v0 + 120)) & 1) == 0)
  {
    sub_21AF93490();
  }

  v1 = sub_21B0EA46C();
  sub_21AF93E84(v1 + *(*v1 + 464));
  v2 = *(v1 + qword_27CD6E6B0 + 8);

  return v1;
}

uint64_t sub_21AF9301C()
{
  v0 = sub_21AF92FA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BlockActivitySpan()
{
  result = qword_27CD42C10;
  if (!qword_27CD42C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AF93120()
{
  v1 = v0;
  v31 = (type metadata accessor for RecipeIdentifier() - 8);
  v2 = *(*v31 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = *(v0 + *(*v0 + 128));
  sub_21B112704();
  sub_21B112264();
  sub_21B0E7180();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B113D90;
  v32 = *(v1 + *(*v1 + 472));
  v8 = sub_21B112454();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21AF93F18();
  *(v7 + 64) = v11;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_21B112264();

  sub_21B112704();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_6(v12);
  v13 = v1 + *(*v1 + 464);
  sub_21AF93E20(v13, v5);
  v14 = sub_21AFC9D08();
  v16 = v15;
  sub_21AF93E84(v5);
  v17 = MEMORY[0x277D837D0];
  v12[3].n128_u64[1] = MEMORY[0x277D837D0];
  v12[4].n128_u64[0] = v11;
  v12[2].n128_u64[0] = v14;
  v12[2].n128_u64[1] = v16;
  sub_21B112264();

  sub_21B112704();
  v18 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(v18);
  v19 = *(v13 + v31[7]);
  v20 = MEMORY[0x277D83ED0];
  v21[7] = MEMORY[0x277D83E88];
  v21[8] = v20;
  v21[4] = v19;
  OUTLINED_FUNCTION_4();

  sub_21B112704();
  v22 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6(v22);
  v23 = sub_21AF9287C(*(v1 + qword_27CD6E6A0));
  v22[3].n128_u64[1] = v17;
  v22[4].n128_u64[0] = v11;
  v22[2].n128_u64[0] = v23;
  v22[2].n128_u64[1] = v24;
  OUTLINED_FUNCTION_4();

  v25 = *(v1 + qword_27CD6E6B0 + 8);
  if (v25)
  {
    v26 = *(v1 + qword_27CD6E6B0);
    v27 = *(v1 + qword_27CD6E6B0 + 8);

    sub_21B112704();
    v28 = OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6(v28);
    v29[7] = v17;
    v29[8] = v11;
    v29[4] = v26;
    v29[5] = v25;
    sub_21B112264();
  }

  sub_21B112704();
  return sub_21B112264();
}

uint64_t sub_21AF93490()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v48 - v4;
  v6 = sub_21B1113D4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = type metadata accessor for RecipeIdentifier();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  result = MEMORY[0x28223BE20](v20);
  v25 = &v48 - v24;
  v26 = *v1;
  v27 = *(*v1 + 120);
  if ((*(v1 + v27) & 1) == 0)
  {
    v49 = result;
    v51 = v27;
    v50 = v1 + *(v26 + 464);
    sub_21AF93E20(v50, &v48 - v24);
    v28 = *(v1 + qword_27CD6E6B0);
    v29 = *(v1 + qword_27CD6E6B0 + 8);

    v30 = sub_21AFC9E18(v28, v29);

    sub_21AF93E84(v25);
    if ((*(v1 + qword_27CD42C08) & 1) == 0)
    {
      sub_21AF93E20(v50, v25);
      if (qword_27CD42518 != -1)
      {
        swift_once();
      }

      v31 = __swift_project_value_buffer(v49, qword_27CD6E770);
      sub_21AF93E20(v31, v22);
      v32 = static RecipeIdentifier.== infix(_:_:)(v25, v22);
      sub_21AF93E84(v22);
      sub_21AF93E84(v25);
      if (!v32)
      {
        OUTLINED_FUNCTION_8();
        (*(v9 + 16))(v14, v1 + *(v33 + 112), v6);
        v34 = (*(v9 + 88))(v14, v6);
        v35 = *MEMORY[0x277D3E088];
        (*(v9 + 8))(v14, v6);
        if (v34 == v35)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_21B113DA0;
          *(inited + 32) = 0x696669746E656469;
          *(inited + 40) = 0xEA00000000007265;
          sub_21AF93E20(v50, v19);
          sub_21AF93F6C(v19, v5);
          v37 = sub_21B111DA4();
          if (__swift_getEnumTagSinglePayload(v5, 1, v37) == 1)
          {
            sub_21AF93E84(v19);
            sub_21AF94004(v5);
            v38 = 0;
          }

          else
          {
            v38 = sub_21B111D44();
            sub_21AF93E84(v19);
            (*(*(v37 - 8) + 8))(v5, v37);
          }

          *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          *(inited + 56) = 0x6B636F6C62;
          *(inited + 64) = 0xE500000000000000;
          *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          *(inited + 80) = 0x65727574616566;
          *(inited + 88) = 0xE700000000000000;
          *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          strcpy((inited + 104), "recipe_version");
          *(inited + 119) = -18;
          sub_21AF9406C(0, &qword_27CD42C38, 0x277CCACA8);
          v52 = *(v50 + *(v49 + 20));
          sub_21B112B84();
          *(inited + 120) = sub_21AF93B98();
          *(inited + 128) = 0x656D6F6374756FLL;
          *(inited + 136) = 0xE700000000000000;
          OUTLINED_FUNCTION_8();
          *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          *(inited + 152) = 0x44496B636F6C62;
          *(inited + 160) = 0xE700000000000000;
          *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
          sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
          sub_21B112334();
          sub_21B0ED1F8();
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21B113DB0;
    v41 = MEMORY[0x277D83ED0];
    *(v40 + 56) = MEMORY[0x277D83E88];
    *(v40 + 64) = v41;
    *(v40 + 32) = v30;
    OUTLINED_FUNCTION_8();
    LOBYTE(v52) = *(v1 + *(v42 + 472));
    v43 = sub_21B112454();
    v45 = v44;
    *(v40 + 96) = MEMORY[0x277D837D0];
    *(v40 + 104) = sub_21AF93F18();
    *(v40 + 72) = v43;
    *(v40 + 80) = v45;
    sub_21B0ED1F4("feature=%{signpost.description:attribute,public}lu,\noutcome=%{signpost.description:attribute,public}s", 101, 2, v40);

    OUTLINED_FUNCTION_8();
    v47 = *(*(v1 + *(v46 + 152)) + 16);

    os_unfair_lock_lock(v47);
    if ((*(v1 + v51) & 1) == 0)
    {
      sub_21B0E866C();
    }

    os_unfair_lock_unlock(v47);
  }

  return result;
}

id sub_21AF93B98()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21B1123D4();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t getEnumTagSinglePayload for CABlockType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CABlockType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21AF93D84()
{
  result = qword_27CD42C20;
  if (!qword_27CD42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42C20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21AF93E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF93E84(uint64_t a1)
{
  v2 = type metadata accessor for RecipeIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_21AF93F18()
{
  result = qword_27CD475D0;
  if (!qword_27CD475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD475D0);
  }

  return result;
}

uint64_t sub_21AF93F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AF94004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF9406C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_4()
{

  return sub_21B112264();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_6(__n128 *a1)
{
  result = *(v1 - 112);
  a1[1] = result;
  return result;
}

uint64_t sub_21AF94164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = OUTLINED_FUNCTION_1(a1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C40, &qword_21B114178);
  if (swift_dynamicCast())
  {
    sub_21B0DA8B0(a2);
    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = sub_21B110D94();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v9);
  }
}

uint64_t sub_21AF94278(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1(a1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C40, &qword_21B114178);
  if (swift_dynamicCast())
  {
    v6 = sub_21B0DAA90();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_21AF94394@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D1>, double a4@<D2>)
{
  v9 = sub_21B110F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v14 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  v15 = a2 + *(v14 + 36);
  sub_21B111EB4();
  v16 = sub_21B0B0870(4);
  if (v4)
  {
    v18 = sub_21B1112A4();
    OUTLINED_FUNCTION_0_1(v18);
    (*(v19 + 8))(a1);
    return sub_21AF946A0(a2);
  }

  *a2 = v16;
  a2[1] = v17;
  v33[1] = sub_21B0B0970(7);
  a2[2] = sub_21B112B84();
  a2[3] = v20;
  sub_21B110F74();
  sub_21B110F44();
  v22 = v21;
  v23 = v21;
  v24 = *(v10 + 8);
  result = v24(v13, v9);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v22 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a2[5] = v22;
  v26 = a3 / 86400.0;
  if (COERCE__INT64(fabs(a3 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v26 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 1.84467441e19)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  a2[4] = v26;
  sub_21B110F64();
  sub_21B110F44();
  v28 = v27;
  v29 = sub_21B1112A4();
  OUTLINED_FUNCTION_0_1(v29);
  (*(v30 + 8))(a1);
  result = v24(v13, v9);
  v31 = 0;
  if (v28 - a4 < 0.0)
  {
LABEL_15:
    a2[6] = v31;
    return result;
  }

  v32 = (v28 - a4) * 1000.0;
  if (COERCE_UNSIGNED_INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v32 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < 1.84467441e19)
  {
    v31 = v32;
    goto LABEL_15;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21AF946A0(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF94710()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_21B111294();
  sub_21B0DF074(0x65735F6C61746F74, 0xEE00736E6F697373, v4, v3);

  v5 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_21AF94B38(v3);
    sub_21AF94BA0();
    OUTLINED_FUNCTION_4_0();
    *v6 = xmmword_21B1141A0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sub_21B111314();
    (*(*(v5 - 8) + 8))(v3, v5);
    sub_21AF94BF4(v13, v14);
    sub_21AF94C04(v14, v13);
    if (OUTLINED_FUNCTION_1_0())
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
      return v12;
    }

    else
    {
      OUTLINED_FUNCTION_2_0();

      v12 = OUTLINED_FUNCTION_0_2(0x800000021B130580);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C58, &qword_21B1141C8);
      v8 = sub_21B112454();
      MEMORY[0x21CEE9770](v8);

      sub_21AF94BA0();
      v9 = OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_3_0(v9, v10);
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }
  }
}

uint64_t sub_21AF94924()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_21B111294();
  sub_21B0DF074(0x735F657669746361, 0xEF736E6F69737365, v4, v3);

  v5 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_21AF94B38(v3);
    sub_21AF94BA0();
    OUTLINED_FUNCTION_4_0();
    *v6 = xmmword_21B1141B0;
    *(v6 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    sub_21B111314();
    (*(*(v5 - 8) + 8))(v3, v5);
    sub_21AF94BF4(v13, v14);
    sub_21AF94C04(v14, v13);
    if (OUTLINED_FUNCTION_1_0())
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
      return v12;
    }

    else
    {
      OUTLINED_FUNCTION_2_0();

      v12 = OUTLINED_FUNCTION_0_2(0x800000021B130550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C58, &qword_21B1141C8);
      v8 = sub_21B112454();
      MEMORY[0x21CEE9770](v8);

      sub_21AF94BA0();
      v9 = OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_3_0(v9, v10);
      return __swift_destroy_boxed_opaque_existential_0(v14);
    }
  }
}

uint64_t sub_21AF94B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21AF94BA0()
{
  result = qword_27CD42C50;
  if (!qword_27CD42C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42C50);
  }

  return result;
}

_OWORD *sub_21AF94BF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21AF94C04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_0_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v2 - 88) = a1;
  __swift_project_boxed_opaque_existential_0((v2 - 64), *(v2 - 40));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_21B112904();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_allocError();
}

uint64_t sub_21AF94DF0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = sub_21B111CB4();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = (*(v10 + 104))(v14 - v13, *MEMORY[0x277D39DD8], v7);
  v17 = a2(v16);
  v19 = v18;
  result = (*(v10 + 8))(v15, v7);
  *a3 = v17;
  *a4 = v19;
  return result;
}

uint64_t sub_21AF94EF0(char a1)
{
  if (!a1)
  {
    return 0x6D617473656D6974;
  }

  if (a1 == 1)
  {
    return 0x5F747865746E6F63;
  }

  return 0x64616F6C796170;
}

void sub_21AF94F50()
{
  sub_21B112904();
  MEMORY[0x21CEE9770](0x5420455441455243, 0xED000020454C4241);
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v0 = qword_2811FAB10;

  v1 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v1, v0);

  MEMORY[0x21CEE9770](0xD000000000000034, 0x800000021B130620);
  MEMORY[0x21CEE9770](0x6D617473656D6974, 0xE900000000000070);
  OUTLINED_FUNCTION_31();
  v2 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v2, 0xEA00000000006469);
  OUTLINED_FUNCTION_31();
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  OUTLINED_FUNCTION_32();
  v3 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v3, 0xEA00000000006469);
  MEMORY[0x21CEE9770](0xD000000000000011, 0x800000021B1306B0);
  if (qword_27CD429E8 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v4 = unk_27CD6E7C0;

  v5 = OUTLINED_FUNCTION_27();
  MEMORY[0x21CEE9770](v5, v4);

  MEMORY[0x21CEE9770](40, 0xE100000000000000);
  MEMORY[0x21CEE9770](0x6469776F72, 0xE500000000000000);
  OUTLINED_FUNCTION_32();
  qword_27CD6E6B8 = 0;
  unk_27CD6E6C0 = 0xE000000000000000;
}

uint64_t sub_21AF95164()
{
  sub_21B112904();

  strcpy(v3, "DELETE FROM ");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  if (qword_27CD42440 != -1)
  {
    swift_once();
  }

  v0 = qword_2811FAB08;
  v1 = qword_2811FAB10;

  MEMORY[0x21CEE9770](v0, v1);

  MEMORY[0x21CEE9770](0x200A45524548570ALL, 0xEB00000000202020);
  MEMORY[0x21CEE9770](0x6D617473656D6974, 0xE900000000000070);
  result = MEMORY[0x21CEE9770](0x3B3F203C20, 0xE500000000000000);
  qword_27CD6E6C8 = v3[0];
  unk_27CD6E6D0 = v3[1];
  return result;
}

uint64_t sub_21AF95294(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return MEMORY[0x277D84D38];
  }

  v1 = MEMORY[0x277CC9318];
  sub_21AF997C4();
  return v1;
}

uint64_t sub_21AF952E4()
{
  v0 = sub_21B112A34();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21AF95330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21AF99988();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

uint64_t sub_21AF9539C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21AF952E4();
  *a2 = result;
  return result;
}

uint64_t sub_21AF953CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21AF94EF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21AF95410(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AF999DC();
  v5 = sub_21AF99A30();

  return MEMORY[0x28219E788](a1, a2, v4, v5);
}

uint64_t sub_21AF954BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D08, &qword_21B114278);
  v0 = *(sub_21B111664() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21B113DB0;
  if (qword_27CD429E8 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D10, &qword_21B114280);
  OUTLINED_FUNCTION_2_1();
  v11 = sub_21AF99EEC(v4, v5, &qword_21B114280);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_21AF99AE4();
  sub_21AF99B38();
  sub_21AF99B8C();

  OUTLINED_FUNCTION_22();
  sub_21B111644();
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CD0, &qword_21B114260);
  OUTLINED_FUNCTION_2_1();
  v11 = sub_21AF99EEC(v6, v7, &qword_21B114260);
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_21AF99988();
  sub_21AF999DC();
  sub_21AF99A30();

  OUTLINED_FUNCTION_22();
  result = sub_21B111644();
  qword_27CD6E6D8 = v3;
  return result;
}

uint64_t sub_21AF956FC()
{
  v0 = sub_21B111924();
  __swift_allocate_value_buffer(v0, qword_27CD6E6E0);
  __swift_project_value_buffer(v0, qword_27CD6E6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D58, &qword_21B114298);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D60, &qword_21B1142A0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DB0;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  if (qword_27CD429F0 != -1)
  {
    swift_once();
  }

  v7 = unk_27CD6E7D0;
  *v5 = qword_27CD6E7C8;
  v5[1] = v7;

  sub_21B111934();
  v8 = *(v1 + 48);
  if (qword_27CD42448 != -1)
  {
    swift_once();
  }

  v9 = (v5 + v2);
  v10 = qword_2811FAB20;
  *v9 = qword_2811FAB18;
  v9[1] = v10;

  sub_21B111934();
  sub_21B111954();
  sub_21B112334();
  sub_21B111834();
  sub_21B112334();
  return sub_21B1118D4();
}

void sub_21AF9591C()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v41 = v3;
  v5 = v4;
  v6 = sub_21B110D94();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement;
  v16 = sub_21B1117B4();
  v35 = v15;
  __swift_storeEnumTagSinglePayload(v2 + v15, 1, 1, v16);
  v34 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement;
  __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement, 1, 1, v16);
  v2[2] = v5;
  v17 = type metadata accessor for ContextStore();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_21B0B86FC(v5);
  v36 = v9;
  v37 = v6;
  if (v1)
  {
    v21 = sub_21B111BA4();
    OUTLINED_FUNCTION_4_1(v21);
    v23 = *(v22 + 8);

    v23(v41, v21);
    v27 = v2[2];

    sub_21AF99BE0(v2 + v35, &qword_27CD42CC8, &unk_21B128DB0);
    sub_21AF99BE0(v2 + v34, &qword_27CD42CC8, &unk_21B128DB0);
    type metadata accessor for MetricStore();
    v28 = *(*v2 + 48);
    v29 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_contextStore) = v20;
    swift_retain_n();
    sub_21B111B94();
    (*(v9 + 32))(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_schemaUrl, v14, v6);
    sub_21B111B94();
    sub_21B112334();
    v24 = sub_21B1114A4();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v30 = sub_21B111494();
    v39 = v24;
    v40 = MEMORY[0x277D3E148];

    *&v38 = v30;
    v31 = sub_21B111BA4();
    OUTLINED_FUNCTION_4_1(v31);
    (*(v32 + 8))(v41);
    sub_21AF81D68(&v38, v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF95CB0()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v3 = sub_21B1117B4();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v28 = v13 - v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  v18 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement;
  swift_beginAccess();
  sub_21AF99A84(v2 + v18, v17, &qword_27CD42CC8, &unk_21B128DB0);
  OUTLINED_FUNCTION_14(v17);
  if (!v19)
  {
    goto LABEL_7;
  }

  sub_21AF99BE0(v17, &qword_27CD42CC8, &unk_21B128DB0);
  v27[2] = *(v2 + 16);
  if (qword_27CD42440 != -1)
  {
    OUTLINED_FUNCTION_3_1();
    swift_once();
  }

  v27[0] = qword_2811FAB10;
  v27[1] = qword_2811FAB08;
  v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CD0, &qword_21B114260);
  OUTLINED_FUNCTION_2_1();
  v29[4] = sub_21AF99EEC(v20, v21, &qword_21B114260);
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_21AF99988();
  sub_21AF999DC();
  sub_21AF99A30();
  MEMORY[0x21CEE88A0]();
  sub_21AF98A00(MEMORY[0x277D84F90]);
  sub_21B1116E4();

  __swift_destroy_boxed_opaque_existential_0(v29);
  if (!v1)
  {
    v22 = *(v6 + 16);
    v23 = v28;
    OUTLINED_FUNCTION_28();
    v24();
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v3);
    swift_beginAccess();
    sub_21AF99870(v23, v2 + v18);
    swift_endAccess();
LABEL_7:
    v25 = *(v6 + 32);
    OUTLINED_FUNCTION_28();
    v26();
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF95F9C()
{
  OUTLINED_FUNCTION_11();
  v3 = v0;
  v25[1] = v4;
  v5 = sub_21B1117B4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  v17 = v25 - v16;
  v18 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement;
  swift_beginAccess();
  sub_21AF99A84(v3 + v18, v17, &qword_27CD42CC8, &unk_21B128DB0);
  OUTLINED_FUNCTION_14(v17);
  if (!v19)
  {
    goto LABEL_7;
  }

  sub_21AF99BE0(v17, &qword_27CD42CC8, &unk_21B128DB0);
  v20 = *(v3 + 16);
  if (qword_27CD42458 != -1)
  {
    swift_once();
  }

  sub_21B1116F4();
  if (!v1)
  {
    v21 = *(v8 + 16);
    OUTLINED_FUNCTION_28();
    v22();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    swift_beginAccess();
    sub_21AF99870(v2, v3 + v18);
    swift_endAccess();
LABEL_7:
    v23 = *(v8 + 32);
    OUTLINED_FUNCTION_28();
    v24();
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF961D0()
{
  OUTLINED_FUNCTION_11();
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_21B1117B4();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  sub_21AF95CB0();
  if (!v0)
  {
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CB0, &qword_21B114248);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B1141D0;
    v21 = MEMORY[0x277D84D38];
    v22 = MEMORY[0x277D3E398];
    *(inited + 32) = 0x6D617473656D6974;
    *(inited + 40) = 0xE900000000000070;
    *(inited + 72) = v21;
    *(inited + 80) = v22;
    *(inited + 48) = v25;
    *(inited + 88) = 0x5F747865746E6F63;
    *(inited + 96) = 0xEA00000000006469;
    *(inited + 128) = v21;
    *(inited + 136) = v22;
    *(inited + 104) = v26;
    *(inited + 144) = 0x64616F6C796170;
    *(inited + 152) = 0xE700000000000000;
    *(inited + 184) = MEMORY[0x277CC9318];
    *(inited + 192) = sub_21AF997C4();
    *(inited + 160) = v7;
    *(inited + 168) = v5;
    sub_21AF99818(v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
    sub_21B112334();
    sub_21B111764();

    sub_21B111754();
    v23 = *(v24 + 8);
    v23(v1, v8);
    v23(v17, v8);
    v23(v19, v8);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21AF964E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_contextStore);
  sub_21B0B8B10(a2, a3);
  if (!v3)
  {
    sub_21AF961D0();
  }
}

void sub_21AF96554()
{
  OUTLINED_FUNCTION_11();
  v2 = v0;
  v35 = v3;
  v5 = v4;
  v6 = sub_21B1112A4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v38 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (sub_21B111264() != 0xD000000000000012 || 0x800000021B130700 != v14)
  {
    v16 = sub_21B112D04();

    if (v16)
    {
      goto LABEL_8;
    }

    v28 = 0;
    v27 = 149;
    sub_21B1129C4();
    __break(1u);
  }

LABEL_8:
  MEMORY[0x28223BE20](v17);
  v27 = v5;
  sub_21AFCF3A4(sub_21AF9970C, (&v29 - 4), &unk_282C8D838);
  if (!v1)
  {
    v18 = sub_21AF96930();
    v33 = v2;
    v34 = v18;
    v32 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory;
    sub_21AF92198(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory, v36);
    __swift_project_boxed_opaque_existential_0(v36, v37);
    if (qword_27CD42448 != -1)
    {
      OUTLINED_FUNCTION_9();
    }

    sub_21B111274();
    v19 = sub_21B1113B4();
    v31 = v20;
    v30 = *(v38 + 8);
    v30(v13, v6);
    __swift_destroy_boxed_opaque_existential_0(v36);
    sub_21AF92198(v33 + v32, v36);
    __swift_project_boxed_opaque_existential_0(v36, v37);
    if (qword_27CD429F0 != -1)
    {
      OUTLINED_FUNCTION_8_0();
    }

    sub_21B111274();

    v21 = sub_21B1113B4();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_29();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v26 = v31;
    sub_21AF96490();
    sub_21AF99728(v21, v23);
    sub_21AF99728(v19, v26);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_21AF96930()
{
  v0 = sub_21B111334();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
  v9 = OUTLINED_FUNCTION_4_1(v48);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v47 = v12 - v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v58 = (v44 - v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24();
  v57 = v17;
  v18 = sub_21B111294();
  v19 = MEMORY[0x277D837D0];
  v20 = MEMORY[0x277D837E0];
  v53 = MEMORY[0x21CEE95A0](8, MEMORY[0x277D837D0], v0, MEMORY[0x277D837E0]);
  v59 = v0;
  v21 = MEMORY[0x21CEE95A0](128, v19, v0, v20);
  v51 = v18;
  v52 = v21;
  v22 = v18 + 64;
  v23 = 1 << *(v18 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v18 + 64);
  v26 = (v23 + 63) >> 6;
  v44[1] = v3 + 32;
  v44[2] = v3 + 16;
  v50 = v3;
  v44[0] = v3 + 8;

  v28 = 0;
  v29 = 0;
  v45 = v26;
  v46 = v18 + 64;
  v49 = v8;
  v30 = v57;
  if (v25)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v31 >= v26)
    {

      return v53;
    }

    v25 = *(v22 + 8 * v31);
    ++v28;
    if (v25)
    {
      v28 = v31;
      do
      {
LABEL_8:
        v32 = __clz(__rbit64(v25)) | (v28 << 6);
        v33 = v50;
        v34 = (*(v51 + 48) + 16 * v32);
        v36 = *v34;
        v35 = v34[1];
        v37 = v48;
        v38 = (*(v50 + 16))(&v30[*(v48 + 48)], *(v51 + 56) + *(v50 + 72) * v32, v59);
        *v30 = v36;
        *(v30 + 1) = v35;
        v60[0] = v36;
        v60[1] = v35;
        MEMORY[0x28223BE20](v38);
        v44[-2] = v60;

        LOBYTE(v35) = sub_21B0C64B0(sub_21AF99780, &v44[-4], &unk_282C8D838);
        v56 = v29;
        v39 = v58;
        sub_21AF99A84(v30, v58, &qword_27CD42CA8, &qword_21B114240);
        v40 = v39[1];
        v41 = *(v37 + 48);
        v54 = *v39;
        v55 = v41;
        v42 = v47;
        sub_21AF99A84(v30, v47, &qword_27CD42CA8, &qword_21B114240);
        v43 = *(v42 + 8);

        (*(v33 + 32))(v49, v42 + *(v37 + 48), v59);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_19();

        if (v35)
        {
          v53 = v60[0];
        }

        else
        {
          v52 = v60[0];
        }

        v26 = v45;
        v22 = v46;
        v25 &= v25 - 1;
        (*v44[0])(v58 + v55, v59);
        result = sub_21AF99BE0(v57, &qword_27CD42CA8, &qword_21B114240);
        v29 = v56;
      }

      while (v25);
    }
  }

  __break(1u);
  return result;
}

void sub_21AF96D18()
{
  OUTLINED_FUNCTION_11();
  v75 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v76 = v7 - v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = v73 - v10;
  v12 = sub_21B1112A4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  v20 = v73 - v19;
  v21 = sub_21B1114B4();
  v23 = v22;
  v24 = *(v21 + 16);
  v80 = v22;
  v81 = v24;
  v78 = v15 + 16;
  v79 = v15;
  v73[1] = v88 + 1;
  v25 = (v15 + 8);
  v26 = v2;
  v27 = v21;
  v77 = v25;
  v82 = v20;
  for (i = v11; ; v11 = i)
  {
    if (v23 == v81)
    {

      goto LABEL_99;
    }

    if ((v80 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:

LABEL_98:

      v71 = OUTLINED_FUNCTION_30();
      v72(v71);
LABEL_99:
      OUTLINED_FUNCTION_13();
      return;
    }

    if (v23 >= *(v27 + 16))
    {
      goto LABEL_96;
    }

    v89 = v23;
    (*(v79 + 16))(v20, v27 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v23, v12);
    v28 = sub_21B111294();
    if (*(v28 + 16))
    {
      v29 = sub_21AF98B58(0x6D617473656D6974, 0xE900000000000070);
      if (v30)
      {
        v31 = v29;
        v32 = *(v28 + 56);
        v33 = sub_21B111334();
        OUTLINED_FUNCTION_4_1(v33);
        v35 = v32 + *(v34 + 72) * v31;
        v11 = i;
        (*(v34 + 16))(i, v35, v33);
        v36 = v11;
        v37 = 0;
        goto LABEL_11;
      }

      v33 = sub_21B111334();
      v11 = i;
    }

    else
    {
      v33 = sub_21B111334();
    }

    v36 = v11;
    v37 = 1;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v36, v37, 1, v33);

    sub_21B111334();
    if (__swift_getEnumTagSinglePayload(v11, 1, v33) == 1)
    {

      v67 = OUTLINED_FUNCTION_30();
      v68(v67);
      sub_21AF99BE0(v11, &qword_27CD42C48, &qword_21B1141C0);
      goto LABEL_99;
    }

    sub_21B111314();
    v38 = *(v33 - 8);
    (*(v38 + 8))(v11, v33);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_98;
    }

    v83 = v38;
    v39 = HIBYTE(v87) & 0xF;
    v40 = v86 & 0xFFFFFFFFFFFFLL;
    if ((v87 & 0x2000000000000000) != 0)
    {
      v41 = HIBYTE(v87) & 0xF;
    }

    else
    {
      v41 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (!v41)
    {
      goto LABEL_97;
    }

    if ((v87 & 0x1000000000000000) == 0)
    {
      break;
    }

    v85 = sub_21AF98CF4(v86, v87, 10);
    v54 = v66;
LABEL_81:

    if (v54)
    {
      goto LABEL_98;
    }

    v55 = sub_21B111294();
    v56 = sub_21AF98B58(0x6D617473656D6974, 0xE900000000000070);
    if (v57)
    {
      v58 = v56;
      swift_isUniquelyReferenced_nonNull_native();
      v74 = v33;
      v88[0] = v55;
      v59 = *(v55 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
      v33 = v74;
      sub_21B112994();
      v60 = v88[0];
      v61 = *(*(v88[0] + 48) + 16 * v58 + 8);

      v62 = v76;
      (*(v83 + 32))(v76, *(v60 + 56) + *(v83 + 72) * v58, v33);
      sub_21B1129B4();
      v63 = 0;
    }

    else
    {
      v63 = 1;
      v62 = v76;
    }

    __swift_storeEnumTagSinglePayload(v62, v63, 1, v33);
    sub_21AF99BE0(v62, &qword_27CD42C48, &qword_21B1141C0);
    v64 = v82;
    sub_21B111264();
    sub_21B111274();
    sub_21AF96554();
    if (v1)
    {

      v69 = v26;
      v70 = *v77;
      (*v77)(v69, v12);
      v70(v64, v12);
      goto LABEL_99;
    }

    v23 = v89 + 1;
    v65 = *v77;
    (*v77)(v26, v12);
    v65(v64, v12);
    v20 = v64;
  }

  if ((v87 & 0x2000000000000000) == 0)
  {
    if ((v86 & 0x1000000000000000) != 0)
    {
      v42 = ((v87 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v42 = sub_21B112944();
    }

    v43 = *v42;
    if (v43 == 43)
    {
      if (v40 < 1)
      {
        goto LABEL_103;
      }

      if (v40 != 1)
      {
        v44 = 0;
        if (!v42)
        {
          goto LABEL_87;
        }

        while (1)
        {
          OUTLINED_FUNCTION_7_0();
          if (!v46 && v45)
          {
            break;
          }

          OUTLINED_FUNCTION_6_0();
          if (!v46)
          {
            break;
          }

          OUTLINED_FUNCTION_18();
          if (v45)
          {
            break;
          }

          OUTLINED_FUNCTION_20();
          if (v46)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_78;
    }

    if (v43 == 45)
    {
      if (v40 < 1)
      {
        goto LABEL_101;
      }

      if (v40 != 1)
      {
        v44 = 0;
        if (v42)
        {
          while (1)
          {
            OUTLINED_FUNCTION_7_0();
            if (!v46 && v45)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_6_0();
            if (!v46 || 10 * v48 < v47)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_20();
            if (v46)
            {
              goto LABEL_79;
            }
          }
        }

LABEL_87:
        v49 = 0;
LABEL_79:
        v85 = v44;
LABEL_80:
        LOBYTE(v86) = v49;
        v54 = v49;
        goto LABEL_81;
      }

LABEL_78:
      v44 = 0;
      v49 = 1;
      goto LABEL_79;
    }

    if (v40)
    {
      v52 = 0;
      if (v42)
      {
        do
        {
          v53 = *v42 - 48;
          if (v53 > 9)
          {
            goto LABEL_88;
          }

          if (!is_mul_ok(v52, 0xAuLL))
          {
            goto LABEL_88;
          }

          v45 = __CFADD__(10 * v52, v53);
          v52 = 10 * v52 + v53;
          if (v45)
          {
            goto LABEL_88;
          }

          ++v42;
        }

        while (--v40);
      }

      v49 = 0;
    }

    else
    {
LABEL_88:
      v52 = 0;
      v49 = 1;
    }

    v85 = v52;
    goto LABEL_80;
  }

  v88[0] = v86;
  v88[1] = v87 & 0xFFFFFFFFFFFFFFLL;
  if (v86 == 43)
  {
    if (!v39)
    {
      goto LABEL_102;
    }

    if (v39 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v46 && v45)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v46)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        if (v45)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v46)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v86 != 45)
  {
    if (v39)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v46 && v45)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v46)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        if (v45)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v46)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  if (v39)
  {
    if (v39 != 1)
    {
      while (1)
      {
        OUTLINED_FUNCTION_7_0();
        if (!v46 && v45)
        {
          break;
        }

        OUTLINED_FUNCTION_6_0();
        if (!v46 || 10 * v51 < v50)
        {
          break;
        }

        OUTLINED_FUNCTION_20();
        if (v46)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

void sub_21AF974E4()
{
  OUTLINED_FUNCTION_11();
  v1 = sub_21B1112A4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_21B111514();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = sub_21B0BE1EC();
  if (v0)
  {
LABEL_11:
    OUTLINED_FUNCTION_13();
    return;
  }

  v27 = v13;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (v19 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v19 < 1.84467441e19)
  {
    v20 = v1;
    v25 = v10;
    sub_21B111534();
    v21 = sub_21B1114B4();
    v23 = v22;
    v26 = *(v21 + 16);
    for (i = v22; ; ++i)
    {
      if (v26 == i)
      {

        (*(v27 + 8))(v18, v25);
        goto LABEL_11;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (i >= *(v21 + 16))
      {
        goto LABEL_13;
      }

      (*(v4 + 16))(v9, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v20);
      sub_21AF96554();
      (*(v4 + 8))(v9, v20);
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void sub_21AF97794(double a1)
{
  v7 = sub_21B1117B4();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  sub_21AF95F9C();
  if (!v2)
  {
    v30 = v1;
    v31 = v4;
    v29 = v3;
    v32 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA0, &unk_21B114220);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D839F8];
    *(v21 + 16) = xmmword_21B113D90;
    v23 = MEMORY[0x277D3E358];
    *(v21 + 56) = v22;
    *(v21 + 64) = v23;
    *(v21 + 32) = a1;
    sub_21B111774();
    v24 = *(v32 + 8);
    v24(v17, v7);

    sub_21B111754();
    v24(v5, v7);
    v24(v20, v7);
    v25 = *(v30 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_contextStore);
    v26 = v24;
    v27 = v31;
    sub_21B0B9164();
    v28 = v29;
    sub_21B111754();
    v26(v27, v7);
    v26(v28, v7);
  }
}

void sub_21AF97A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_11();
  v142 = v11;
  v143 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_21B111CB4();
  v17 = OUTLINED_FUNCTION_1(v16);
  v131 = v18;
  v132 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v130 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D38, &qword_21B114288);
  v24 = OUTLINED_FUNCTION_25(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_1();
  v135 = v27 - v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24();
  v137 = v30;
  v31 = sub_21B111954();
  v32 = OUTLINED_FUNCTION_1(v31);
  v138 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  v136 = v36 - v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24();
  v140 = v39;
  v40 = sub_21B110D94();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  v48 = &v125 - v47;
  v49 = sub_21B111924();
  v50 = OUTLINED_FUNCTION_1(v49);
  v141 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_1();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24();
  v139 = v58;
  if (v13)
  {
    v59 = v143;
    sub_21B112494();
    if (v59)
    {
      goto LABEL_23;
    }

    v128 = v13;
    v129 = v56;
    v127 = v15;
    v133 = v49;
    v134 = v31;
    v143 = 0;
  }

  else
  {
    v128 = 0;
    v129 = v56;
    v127 = v15;
    v133 = v49;
    v134 = v31;
  }

  v60 = [objc_opt_self() defaultManager];
  sub_21B111B94();
  sub_21B110D44();
  v61 = *(v43 + 8);
  v61(v48, v40);
  v62 = sub_21B1123D4();

  v63 = [v60 fileExistsAtPath_];

  if (v63)
  {
    sub_21B111B94();
    v64 = v143;
    sub_21B110DC4();
    v65 = v64;
    if (v64)
    {
      v66 = OUTLINED_FUNCTION_26();
      (v61)(v66);
      goto LABEL_23;
    }

    v83 = OUTLINED_FUNCTION_26();
    (v61)(v83);
    v70 = v129;
    sub_21B1118B4();
    v67 = v133;
    v71 = v134;
    v69 = v141;
  }

  else
  {
    if (qword_27CD42468 != -1)
    {
      swift_once();
    }

    v67 = v133;
    v68 = __swift_project_value_buffer(v133, qword_27CD6E6E0);
    v69 = v141;
    v70 = v129;
    (*(v141 + 16))(v129, v68, v67);
    v65 = v143;
    v71 = v134;
  }

  v72 = v139;
  v73 = v137;
  (*(v69 + 32))(v139, v70, v67);
  v74 = sub_21B1118E4();
  if (qword_27CD429F0 != -1)
  {
    OUTLINED_FUNCTION_8_0();
  }

  v75 = qword_27CD6E7C8;
  v76 = qword_27CD6E7D0;
  sub_21B0DF08C(qword_27CD6E7C8, qword_27CD6E7D0, v74, v73);

  OUTLINED_FUNCTION_14(v73);
  if (v77)
  {
    sub_21AF99BE0(v73, &qword_27CD42D38, &qword_21B114288);
    sub_21AF99C38();
    swift_allocError();
    OUTLINED_FUNCTION_34(v78, 0xD000000000000012);
LABEL_21:
    (*(v69 + 8))(v72, v67);
    goto LABEL_23;
  }

  v137 = v76;
  v142 = v75;
  v79 = *(v138 + 32);
  v79(v140, v73, v71);
  v80 = sub_21B1118E4();
  if (qword_27CD42448 != -1)
  {
    OUTLINED_FUNCTION_9();
  }

  v81 = v135;
  v129 = qword_2811FAB18;
  v126 = qword_2811FAB20;
  sub_21B0DF08C(qword_2811FAB18, qword_2811FAB20, v80, v135);

  OUTLINED_FUNCTION_14(v81);
  if (v77)
  {
    sub_21AF99BE0(v81, &qword_27CD42D38, &qword_21B114288);
    sub_21AF99C38();
    swift_allocError();
    OUTLINED_FUNCTION_34(v82, 0xD000000000000011);
    (*(v138 + 8))(v140, v71);
    goto LABEL_21;
  }

  v133 = v67;
  v134 = v71;
  v143 = v65;
  v79(v136, v81, v71);
  sub_21B111944();
  v84 = sub_21B0C00A0();

  v85 = *(v84 + 16);
  if (v85)
  {
    OUTLINED_FUNCTION_23();
    v86 = a10;
    v135 = v84;
    v87 = (v84 + 40);
    do
    {
      v88 = *(v87 - 1);
      v89 = *v87;
      v144 = 0;
      v145 = 0xE000000000000000;

      sub_21B112904();

      v144 = 0x6F63287465675F70;
      v145 = 0xEF272C747865746ELL;
      MEMORY[0x21CEE9770](v88, v89);
      OUTLINED_FUNCTION_33();
      MEMORY[0x21CEE9770](v88, v89);

      v90 = v144;
      v91 = v145;
      a10 = v86;
      v92 = *(v86 + 16);
      if (v92 >= *(v86 + 24) >> 1)
      {
        sub_21AFCC4E4();
      }

      *(v86 + 16) = v92 + 1;
      v93 = v86 + 16 * v92;
      *(v93 + 32) = v90;
      *(v93 + 40) = v91;
      v87 += 2;
      --v85;
    }

    while (v85);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  sub_21B111944();
  v94 = sub_21B0C00A0();

  v95 = *(v94 + 16);
  if (v95)
  {
    OUTLINED_FUNCTION_23();
    v96 = a10;
    v135 = v94;
    v97 = (v94 + 40);
    do
    {
      v98 = *(v97 - 1);
      v99 = *v97;
      v144 = 0;
      v145 = 0xE000000000000000;

      sub_21B112904();

      v144 = 0x656D287465675F70;
      v145 = 0xEF272C7363697274;
      MEMORY[0x21CEE9770](v98, v99);
      OUTLINED_FUNCTION_33();
      MEMORY[0x21CEE9770](v98, v99);

      v100 = v144;
      v101 = v145;
      v102 = *(a10 + 16);
      if (v102 >= *(a10 + 24) >> 1)
      {
        sub_21AFCC4E4();
      }

      *(a10 + 16) = v102 + 1;
      v103 = a10 + 16 * v102;
      *(v103 + 32) = v100;
      *(v103 + 40) = v101;
      v97 += 2;
      --v95;
    }

    while (v95);
  }

  else
  {

    v96 = MEMORY[0x277D84F90];
  }

  v144 = v86;
  sub_21B0D0BE4(v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
  sub_21AF99EEC(&qword_27CD42D50, &qword_27CD42D48, &qword_21B114290);
  v104 = sub_21B112384();
  v106 = v105;

  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v104 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {
    v144 = 0x2020202020200A2CLL;
    v145 = 0xEA00000000002020;
    v108 = OUTLINED_FUNCTION_26();
    MEMORY[0x21CEE9770](v108);
  }

  if (v128)
  {
    v144 = v127;
    v145 = v128;

    MEMORY[0x21CEE9770](46, 0xE100000000000000);
    v109 = v145;
    v128 = v144;
  }

  else
  {
    v128 = 0;
    v109 = 0xE000000000000000;
  }

  v135 = v109;
  v144 = 0;
  v145 = 0xE000000000000000;
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD000000000000011, 0x800000021B130790);
  LODWORD(v127) = *MEMORY[0x277D39DD8];
  v110 = v130;
  v111 = v131;
  v125 = *(v131 + 104);
  v112 = v132;
  v125(v130);
  v113 = sub_21B111C44();
  v115 = v114;
  v131 = *(v111 + 8);
  (v131)(v110, v112);
  MEMORY[0x21CEE9770](v113, v115);

  MEMORY[0x21CEE9770](0xD000000000000017, 0x800000021B1307B0);
  OUTLINED_FUNCTION_21();
  v116 = OUTLINED_FUNCTION_26();
  MEMORY[0x21CEE9770](v116);

  MEMORY[0x21CEE9770](0xD000000000000029, 0x800000021B1307D0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x21CEE9770](542327072, 0xE400000000000000);
  OUTLINED_FUNCTION_21();
  MEMORY[0x21CEE9770](0xD000000000000016, 0x800000021B130800);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  MEMORY[0x21CEE9770](2564140, 0xE300000000000000);
  MEMORY[0x21CEE9770](v129, v126);
  MEMORY[0x21CEE9770](0xD000000000000023, 0x800000021B130820);
  MEMORY[0x21CEE9770](0x64616F6C796170, 0xE700000000000000);
  MEMORY[0x21CEE9770](2564140, 0xE300000000000000);
  MEMORY[0x21CEE9770](v142, v137);
  MEMORY[0x21CEE9770](0xD000000000000027, 0x800000021B130850);
  v117 = v128;
  v118 = v135;
  MEMORY[0x21CEE9770](v128, v135);
  (v125)(v110, v127, v112);
  v119 = sub_21B111C54();
  v121 = v120;
  (v131)(v110, v112);
  MEMORY[0x21CEE9770](v119, v121);

  MEMORY[0x21CEE9770](0xD00000000000001FLL, 0x800000021B130880);
  MEMORY[0x21CEE9770](v117, v118);

  v122 = sub_21B111B84();
  MEMORY[0x21CEE9770](v122);

  MEMORY[0x21CEE9770](0xD00000000000001FLL, 0x800000021B1308A0);
  MEMORY[0x21CEE9770](0x6469776F72, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x2E6D203D20, 0xE500000000000000);
  MEMORY[0x21CEE9770](0x5F747865746E6F63, 0xEA00000000006469);
  MEMORY[0x21CEE9770](0x29202020200ALL, 0xE600000000000000);
  v123 = *(v138 + 8);
  v124 = v134;
  v123(v136, v134);
  v123(v140, v124);
  (*(v141 + 8))(v139, v133);
LABEL_23:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21AF9874C()
{
  v1 = *(v0 + 16);

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_insertStatement, &qword_27CD42CC8, &unk_21B128DB0);
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_deleteStatement, &qword_27CD42CC8, &unk_21B128DB0);
  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_contextStore);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_protobufFactory));
  v3 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics11MetricStore_schemaUrl;
  v4 = sub_21B110D94();
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_21AF98814()
{
  sub_21AF9874C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MetricStore()
{
  result = qword_27CD42C88;
  if (!qword_27CD42C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF988C0()
{
  sub_21AF989A8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21B110D94();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21AF989A8()
{
  if (!qword_27CD42C98)
  {
    sub_21B1117B4();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD42C98);
    }
  }
}

unint64_t sub_21AF98A00(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x277D84F98];
LABEL_9:

    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CF8, &qword_21B114268);
  v2 = sub_21B112A14();
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1 + 32;

  while (1)
  {
    sub_21AF99A84(v4, &v13, &qword_27CD42D00, &qword_21B114270);
    v5 = v13;
    v6 = v14;
    result = sub_21AF98B58(v13, v14);
    if (v8)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = (v2[6] + 16 * result);
    *v9 = v5;
    v9[1] = v6;
    result = sub_21AF81D68(&v15, v2[7] + 40 * result);
    v10 = v2[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v2[2] = v12;
    v4 += 56;
    if (!--v3)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_21AF98B58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21B112EC4();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v6 = sub_21B112F14();

  return sub_21AF98BD0(a1, a2, v6);
}

unint64_t sub_21AF98BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21B112D04() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void *sub_21AF98C84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43780, &qword_21B114238);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_21AF98CF4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21B112584();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF9927C();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21B112944();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_21AF9927C()
{
  v0 = sub_21AF992E8();
  v4 = sub_21AF9931C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21AF9931C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21B1124C4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_21B1127A4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_21AF98C84(v9, 0);
  v12 = sub_21AF9947C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_21B1124C4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_21B112944();
LABEL_4:

  return sub_21B1124C4();
}

unint64_t sub_21AF9947C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_21AF9968C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21B112544();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21B112944();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_21AF9968C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21B112524();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21AF9968C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21B112554();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEE97B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21AF99728(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_21AF997A0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  sub_21AF964E4(v0[2], v0[3], v0[4]);
}

unint64_t sub_21AF997C4()
{
  result = qword_27CD42CB8;
  if (!qword_27CD42CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CB8);
  }

  return result;
}

uint64_t sub_21AF99818(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AF99870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC8, &unk_21B128DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_21AF99988()
{
  result = qword_27CD42CE0;
  if (!qword_27CD42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CE0);
  }

  return result;
}

unint64_t sub_21AF999DC()
{
  result = qword_27CD42CE8;
  if (!qword_27CD42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CE8);
  }

  return result;
}

unint64_t sub_21AF99A30()
{
  result = qword_27CD42CF0;
  if (!qword_27CD42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42CF0);
  }

  return result;
}

uint64_t sub_21AF99A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_21AF99AE4()
{
  result = qword_27CD42D20;
  if (!qword_27CD42D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D20);
  }

  return result;
}

unint64_t sub_21AF99B38()
{
  result = qword_27CD42D28;
  if (!qword_27CD42D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D28);
  }

  return result;
}

unint64_t sub_21AF99B8C()
{
  result = qword_27CD42D30;
  if (!qword_27CD42D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D30);
  }

  return result;
}

uint64_t sub_21AF99BE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_21AF99C38()
{
  result = qword_27CD42D40;
  if (!qword_27CD42D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D40);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for MetricStore.Columns(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MetricStore.Columns(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AF99E54()
{
  result = qword_27CD42D68;
  if (!qword_27CD42D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D68);
  }

  return result;
}

uint64_t sub_21AF99EEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21AF99F38()
{
  result = qword_27CD42D80[0];
  if (!qword_27CD42D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD42D80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19()
{
  *(v3 - 104) = v0;
  v5 = *(v3 - 160);

  return sub_21B0EC95C(v2, v5, v1);
}

void OUTLINED_FUNCTION_21()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_22()
{

  JUMPOUT(0x21CEE88A0);
}

void OUTLINED_FUNCTION_23()
{
  *(v1 - 72) = v0;

  sub_21AFCC4E4();
}

uint64_t OUTLINED_FUNCTION_29()
{
  result = v0;
  v3 = *(v1 - 72);
  v4 = *(v1 - 168);
  return result;
}

void OUTLINED_FUNCTION_31()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_32()
{

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_33()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 5;

  return swift_willThrow();
}

uint64_t sub_21AF9A29C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics22CustomFeedbackReporter_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21AF9A304(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_21AF9A344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UploadError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UploadError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AF9A528()
{
  result = qword_27CD42E08;
  if (!qword_27CD42E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42E08);
  }

  return result;
}

uint64_t sub_21AF9A5C8(unsigned __int8 a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21AF9A62C()
{
  v1 = *v0;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v1);
  return sub_21B112F14();
}

uint64_t sub_21AF9A6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v107 = a8;
  v110 = a6;
  v99 = a5;
  v98 = a4;
  v109 = a3;
  v108 = a2;
  v112 = a1;
  v95 = a9;
  v96 = a12;
  v94 = *(a12 - 8);
  v13 = *(v94 + 64);
  v100 = a11;
  v101 = a10;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v102 = v15 - v14;
  v104 = sub_21B110F84();
  v16 = OUTLINED_FUNCTION_1(v104);
  v103 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v92 - v25;
  v27 = sub_21B111DA4();
  v28 = OUTLINED_FUNCTION_1(v27);
  v93 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v34 = (v33 - v32);
  v97 = type metadata accessor for RecipeIdentifier();
  v35 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_2();
  v38 = v37 - v36;
  v39 = sub_21B1113D4();
  v40 = OUTLINED_FUNCTION_1(v39);
  v111 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_1();
  v106 = v44 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v92 - v47;
  v49 = sub_21B111594();
  v50 = OUTLINED_FUNCTION_1(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2();
  v55 = v54 - v53;
  (*(v56 + 16))(v54 - v53, v99);

  v99 = a7;
  v57 = sub_21AF9259C(v55);
  v58 = 0;
  if (v57 != 10)
  {
    v59 = v57;
    v60 = *(v111 + 16);
    v92 = v39;
    v60(v48, v112, v39);

    sub_21B111D84();
    v61 = v27;
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      sub_21AF94004(v26);
      v62 = 0;
      v63 = 1;
    }

    else
    {
      v64 = *(v93 + 32);
      v64(v34, v26, v27);
      v64(v38, v34, v27);
      v63 = 0;
      v62 = v98;
    }

    __swift_storeEnumTagSinglePayload(v38, v63, 1, v61);
    *(v38 + *(v97 + 20)) = v62;
    v65 = type metadata accessor for BlockActivitySpan();
    v66 = *(v65 + 48);
    v67 = *(v65 + 52);
    swift_allocObject();
    v68 = v99;

    v58 = sub_21AF92C88(v69, v48, v59, v38, v110, v68, v107);
    v39 = v92;
  }

  sub_21B110F74();
  sub_21B110F44();
  v71 = v103 + 8;
  v70 = *(v103 + 8);
  v72 = v104;
  v73 = v70(v22, v104);
  v74 = v102;
  v75 = v105;
  v101(v73);
  if (v75)
  {
    sub_21B110F74();
    sub_21B110F44();
    v70(v22, v72);
    if (v58)
    {

      sub_21B0B234C(v75);
    }

    v76 = *MEMORY[0x277D3E088];
    v77 = OUTLINED_FUNCTION_9_0();
    v78(v77);
    OUTLINED_FUNCTION_2_2();
    sub_21AF9C430(v79, v80);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_16_0();
    (*(v72 + 8))(v71, v39);
    OUTLINED_FUNCTION_5_1();
    if (v81)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      inited = swift_initStackObject();
      inited[3].n128_u64[0] = OUTLINED_FUNCTION_8_1(inited, xmmword_21B113D90);
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v83 = sub_21B112334();
      OUTLINED_FUNCTION_7_1(v83);
    }

    swift_willThrow();
  }

  else
  {
    (*(v94 + 32))(v95, v74, v96);
    sub_21B110F74();
    sub_21B110F44();
    v70(v22, v72);
    if (v58)
    {
      *(v58 + *(*v58 + 472)) = 1;
    }

    v84 = *MEMORY[0x277D3E088];
    v85 = OUTLINED_FUNCTION_9_0();
    v86(v85);
    OUTLINED_FUNCTION_2_2();
    sub_21AF9C430(v87, v88);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_16_0();
    (*(v72 + 8))(v71, v39);
    OUTLINED_FUNCTION_5_1();
    if (v81)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      v89 = swift_initStackObject();
      v89[3].n128_u64[0] = OUTLINED_FUNCTION_8_1(v89, xmmword_21B113D90);
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v90 = sub_21B112334();
      OUTLINED_FUNCTION_7_1(v90);
    }
  }
}

void sub_21AF9AEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v43[2] = a4;
  v43[1] = a3;
  v45 = a2;
  v47 = 0xD00000000000001CLL;
  v6 = sub_21B111DA4();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_1();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - v16;
  v18 = *(v9 + 104);
  v18(v43 - v16, *MEMORY[0x277D39DF8], v6);
  v19 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v21 = v20;
  v22 = *(v9 + 8);
  v22(v17, v6);
  v46 = "Spotlight.SurveyWeekly.blocks";
  if (v19 == a1 && v21 == v45)
  {
    goto LABEL_13;
  }

  v43[0] = a1;
  v24 = v45;
  v25 = sub_21B112D04();

  if (v25)
  {
    goto LABEL_14;
  }

  v18(v14, *MEMORY[0x277D39E00], v6);
  v26 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v28 = v27;
  v22(v14, v6);
  if (v26 == v43[0] && v28 == v24)
  {
    v46 = "SearchAnalyticsWorker";
    v47 = 0xD00000000000001DLL;
LABEL_13:

    goto LABEL_14;
  }

  v30 = sub_21B112D04();

  if ((v30 & 1) == 0)
  {
    return;
  }

  v46 = "SearchAnalyticsWorker";
  v47 = 0xD00000000000001DLL;
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_10_0(inited, xmmword_21B1141D0);
  OUTLINED_FUNCTION_15_0();
  inited[3].n128_u64[0] = v32;
  inited[3].n128_u64[1] = v33;
  inited[4].n128_u64[0] = 0xE700000000000000;
  sub_21B1127D4();
  OUTLINED_FUNCTION_14_0();
  inited[4].n128_u64[1] = v34;
  inited[5].n128_u64[0] = v35;
  OUTLINED_FUNCTION_13_0();
  inited[5].n128_u64[1] = v36;
  inited[6].n128_u64[0] = sub_21B1127D4();
  sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
  v37 = sub_21B112334();
  if (v44)
  {
    sub_21B0DF3EC(v44);
    v39 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v37;
    sub_21AF9C0DC(v39, sub_21AF9C478, 0, isUniquelyReferenced_nonNull_native, &v48);
  }

  OUTLINED_FUNCTION_4_2();
  MEMORY[0x21CEE9770](v47, v46 | 0x8000000000000000);

  v41 = sub_21B1123D4();

  v42 = sub_21B1122E4();
  AnalyticsSendEvent();
}

uint64_t sub_21AF9B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v91 = a5;
  v96 = a1;
  v89 = a6;
  v87 = a4;
  v81 = a8;
  v82 = a7;
  v80 = *(a7 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2();
  v88 = v12 - v11;
  v13 = sub_21B110F84();
  v14 = OUTLINED_FUNCTION_1(v13);
  v93 = v15;
  v94 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v80 - v23;
  v25 = sub_21B111DA4();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  v33 = (v32 - v31);
  v85 = type metadata accessor for RecipeIdentifier();
  v34 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v38 = sub_21B111424();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_1();
  v90 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v80 - v45;
  v95 = v47;
  v48 = *(v47 + 16);
  v86 = v49;
  v48(&v80 - v45, v96);

  v83 = a2;
  v84 = a3;
  sub_21B111D84();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_21AF94004(v24);
    v50 = 0;
    v51 = 1;
  }

  else
  {
    v52 = *(v28 + 32);
    v52(v33, v24, v25);
    v52(v37, v33, v25);
    v51 = 0;
    v50 = v87;
  }

  __swift_storeEnumTagSinglePayload(v37, v51, 1, v25);
  *(v37 + *(v85 + 20)) = v50;
  v53 = type metadata accessor for EngineActivitySpan();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  v57 = sub_21B0B26A0(v56, v46, v37);
  sub_21B110F74();
  sub_21B110F44();
  v58 = v94;
  v59 = v93 + 8;
  v60 = *(v93 + 8);
  v61 = v60(v20, v94);
  v62 = v88;
  v63 = v92;
  v91(v61);
  if (v63)
  {
    sub_21B110F74();
    sub_21B110F44();
    v60(v20, v58);
    sub_21B0B30FC(v63);
    v64 = *MEMORY[0x277D3E0D0];
    v65 = OUTLINED_FUNCTION_11_0();
    v66 = v86;
    v67(v65);
    OUTLINED_FUNCTION_3_2();
    sub_21AF9C430(v68, v69);
    sub_21B1125B4();
    sub_21B1125B4();
    (*(v59 + 8))(v20, v66);
    OUTLINED_FUNCTION_5_1();
    v71 = v83;
    v70 = v84;
    if (v72)
    {
      sub_21AF9B8E8(v83, v84, qword_21B114618[*(v57 + *(*v57 + 472))], v87);
    }

    sub_21AF9BC4C(v71, v70);
    swift_willThrow();
  }

  else
  {
    (*(v80 + 32))(v81, v62, v82);
    sub_21B110F74();
    sub_21B110F44();
    v60(v20, v58);
    *(v57 + *(*v57 + 472)) = 1;
    v73 = *MEMORY[0x277D3E0D0];
    v74 = OUTLINED_FUNCTION_11_0();
    v75 = v86;
    v76(v74);
    OUTLINED_FUNCTION_3_2();
    sub_21AF9C430(v77, v78);
    sub_21B1125B4();
    sub_21B1125B4();
    (*(v59 + 8))(v20, v75);
    OUTLINED_FUNCTION_5_1();
    if (v72)
    {
      sub_21AF9B8E8(v83, v84, 1, v87);
    }
  }
}

void sub_21AF9B8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v44 = a2;
  v45 = 0xD000000000000019;
  v5 = sub_21B111DA4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_1();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = *(v8 + 104);
  v17(&v40 - v15, *MEMORY[0x277D39DF8], v5);
  v18 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v20 = v19;
  v21 = *(v8 + 8);
  v21(v16, v5);
  v22 = "Spotlight.SurveyWeekly.e2e";
  if (v18 == a1 && v20 == v44)
  {
    goto LABEL_13;
  }

  v41 = a1;
  v24 = v44;
  v25 = sub_21B112D04();

  if (v25)
  {
    goto LABEL_14;
  }

  v17(v13, *MEMORY[0x277D39E00], v5);
  v26 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  v28 = v27;
  v21(v13, v5);
  v22 = " AS c\n        ON\n            c.";
  if (v26 == v41 && v28 == v24)
  {
    v45 = 0xD00000000000001ALL;
LABEL_13:

    goto LABEL_14;
  }

  v30 = sub_21B112D04();

  if ((v30 & 1) == 0)
  {
    return;
  }

  v45 = 0xD00000000000001ALL;
LABEL_14:
  v31 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C30, &unk_21B113F40);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_10_0(inited, xmmword_21B1141D0);
  OUTLINED_FUNCTION_15_0();
  inited[3].n128_u64[0] = v33;
  inited[3].n128_u64[1] = v34;
  inited[4].n128_u64[0] = 0xE700000000000000;
  sub_21B1127D4();
  OUTLINED_FUNCTION_14_0();
  inited[4].n128_u64[1] = v35;
  inited[5].n128_u64[0] = v36;
  OUTLINED_FUNCTION_13_0();
  inited[5].n128_u64[1] = v37;
  inited[6].n128_u64[0] = sub_21B1127D4();
  sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
  sub_21B112334();
  OUTLINED_FUNCTION_4_2();
  MEMORY[0x21CEE9770](v31, v22 | 0x8000000000000000);

  v38 = sub_21B1123D4();

  v39 = sub_21B1122E4();
  AnalyticsSendEvent();
}

void sub_21AF9BC4C(uint64_t a1, uint64_t a2)
{
  if (qword_27CD42A18 != -1)
  {
    swift_once();
  }

  if (byte_27CD6E890 == 1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
    sub_21AF9BECC(a1, a2);
  }
}

uint64_t sub_21AF9BD9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B1123D4();
  v6 = sub_21B1123D4();
  v7 = sub_21B1123D4();
  v8 = sub_21B1123D4();
  v9 = sub_21AF9C398(v5, v6, v7, a1, a2, v8, 0, v2);

  if (v9)
  {
    sub_21B1122F4();
  }

  return 0;
}

void sub_21AF9BECC(uint64_t a1, uint64_t a2)
{
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  if (sub_21AF9BD9C(a1, a2))
  {
    v6 = sub_21B1122E4();
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v10[4] = sub_21AF9C0BC;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21AF9C02C;
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);
  v9 = v5;

  [v2 snapshotWithSignature:v6 delay:0 events:0 payload:0 actions:v8 reply:0.0];
  _Block_release(v8);

  sub_21B112724();
}

uint64_t sub_21AF9C02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_21B112304();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21AF9C0DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  sub_21B0DEF50(v48);
  v6 = v48[1];
  v7 = v48[3];
  v8 = v48[4];
  v41 = v48[5];
  v42 = v48[0];
  v9 = (v48[2] + 64) >> 6;

  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v42 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v42 + 56) + 8 * v12);
      v47[0] = *v13;
      v47[1] = v14;
      v47[2] = v15;

      v16 = v15;
      v41(&v44, v47);

      v17 = v44;
      v18 = v45;
      v19 = v46;
      v20 = *v49;
      v22 = sub_21AF98B58(v44, v45);
      v23 = *(v20 + 16);
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      if (*(v20 + 24) >= v25)
      {
        if ((v43 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD42E18, &qword_21B114610);
          sub_21B1129A4();
        }
      }

      else
      {
        v27 = v49;
        sub_21B0C11B4(v25, v43 & 1);
        v28 = *v27;
        v29 = sub_21AF98B58(v17, v18);
        if ((v26 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v22 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v49;
      if (v26)
      {
        v32 = *(v31[7] + 8 * v22);

        v33 = v31[7];
        v34 = *(v33 + 8 * v22);
        *(v33 + 8 * v22) = v32;
      }

      else
      {
        v31[(v22 >> 6) + 8] |= 1 << v22;
        v35 = (v31[6] + 16 * v22);
        *v35 = v17;
        v35[1] = v18;
        *(v31[7] + 8 * v22) = v19;
        v36 = v31[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v31[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_21AF9C4BC();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21B112E54();
  __break(1u);
  return result;
}

id sub_21AF9C398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_21B1123D4();
  v15 = [a8 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:v14 detectedProcess:a6 triggerThresholdValues:a7];

  return v15;
}

uint64_t sub_21AF9C430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21AF9C478@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21B0DEE18(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

void OUTLINED_FUNCTION_4_2()
{
  strcpy((v0 - 224), "com.apple.odla");
  *(v0 - 209) = -18;

  JUMPOUT(0x21CEE9770);
}

void OUTLINED_FUNCTION_7_1(uint64_t a1)
{
  v4 = *(v1 - 264);
  v5 = *(v1 - 256);
  v6 = *(v1 - 344);

  sub_21AF9AEDC(v4, v5, 1, v6, a1);
}

uint64_t OUTLINED_FUNCTION_8_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x64695F6B636F6C62;
  a1[2].n128_u64[1] = 0xE800000000000000;
  v4 = *(v2 - 272);

  return sub_21B1127D4();
}

uint64_t OUTLINED_FUNCTION_10_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x6E6F697461727564;
  a1[2].n128_u64[1] = 0xE800000000000000;

  return sub_21B112674();
}

uint64_t OUTLINED_FUNCTION_12_0()
{
  v2 = *(v0 - 232);

  return sub_21B1125B4();
}