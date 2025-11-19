uint64_t SiriCoreMetricsSELFReporter.odmId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v4 = sub_266A46040();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_266A3C098(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_266A3C0E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t SiriCoreMetricsSELFReporter.__allocating_init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v8;
  v9 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v10 = sub_266A46510();
  (*(*(v10 - 8) + 32))(v7 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v12 = sub_266A46040();
  (*(*(v12 - 8) + 32))(v7 + v11, a2, v12);
  return v7;
}

uint64_t SiriCoreMetricsSELFReporter.init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v5;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v9 = sub_266A46040();
  (*(*(v9 - 8) + 32))(v2 + v8, a2, v9);
  return v2;
}

uint64_t SiriCoreMetricsSELFReporter.report(_:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_266A46040();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3C420, 0, 0);
}

uint64_t sub_266A3C420()
{
  v1 = v0[9];
  v2 = _s15SiriCoreMetrics0abC20SELFMessageConverterO28convertToODMSiriClientEvents17countsReportedAll17twoByThreeResults5odmId6loggerSaySo0h6SchemahI5EventCGSDy11DeepThought19AggregationIntervalVSayAA0a6CountsM0VGG_SDyAnA03TwooP7SegmentOG10Foundation4UUIDV2os6LoggerVtFZ_0(*(v0[8] + 8), *(v0[8] + 40), v1 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId, v1 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;

  v6 = *(v1 + v3);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v46 = *(v1 + v3);
    }

    v47 = *(v1 + v3);
    result = sub_266A46730();
    v6 = v47;
    v7 = result;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0x277D55000uLL;
  if (v7)
  {
    if (v7 < 1)
    {
      __break(1u);
      return result;
    }

    v48 = v0;
    v51 = v6 & 0xC000000000000001;
    v9 = v6;

    v10 = objc_opt_self();
    v11 = v9;
    v12 = v10;
    v13 = 0;
    v14 = v9;
    v15 = v7;
    do
    {
      if (v51)
      {
        v16 = MEMORY[0x26D5E6A00](v13, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v12 sharedAnalytics];
      v19 = [v18 defaultMessageStream];

      v20 = v17;
      v21 = sub_266A464F0();
      v22 = sub_266A46680();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&dword_266A29000, v21, v22, "SELF reporter: reported task with message = %@", v23, 0xCu);
        sub_266A38274(v24, &qword_2800AECD8, &qword_266A47D50);
        MEMORY[0x26D5E7060](v24, -1, -1);
        MEMORY[0x26D5E7060](v23, -1, -1);
      }

      ++v13;

      [v19 emitMessage_];
      v11 = v14;
    }

    while (v15 != v13);

    v0 = v48;
    v8 = 0x277D55000uLL;
  }

  v26 = *v0[8];
  v27 = *(v26 + 16);
  if (v27)
  {
    v49 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores;
    v28 = (v26 + 32);
    v52 = (v0[11] + 8);
    v50 = v0[9];
    do
    {
      v30 = v0[12];
      v31 = *v28;

      _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
      v32 = _s15SiriCoreMetrics0abC20SELFMessageConverterO27convertToODMSiriClientEvent21processedConversation5odmId6loggerSo0h6SchemahiJ0CSgAA09ProcessedaL0V_10Foundation4UUIDV2os6LoggerVtFZ_0(v31, v30);

      if (v32)
      {
        v33 = *(v8 + 704);
        v34 = [objc_opt_self() sharedAnalytics];
        v35 = [v34 defaultMessageStream];

        v36 = v32;
        v37 = sub_266A464F0();
        v38 = sub_266A46680();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          *(v39 + 4) = v36;
          *v40 = v32;
          v41 = v36;
          _os_log_impl(&dword_266A29000, v37, v38, "SELF reporter: reported task with message = %@", v39, 0xCu);
          sub_266A38274(v40, &qword_2800AECD8, &qword_266A47D50);
          MEMORY[0x26D5E7060](v40, -1, -1);
          v42 = v39;
          v8 = 0x277D55000;
          MEMORY[0x26D5E7060](v42, -1, -1);
        }

        [v35 emitMessage_];
        swift_beginAccess();
        v29 = v36;
        MEMORY[0x26D5E68F0]();
        if (*((*(v50 + v49) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v50 + v49) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((*(v50 + v49) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_266A46610();
          v8 = 0x277D55000;
        }

        sub_266A46630();
        swift_endAccess();
      }

      (*v52)(v0[12], v0[10]);
      ++v28;
      --v27;
    }

    while (v27);
  }

  v44 = v0[12];

  v45 = v0[1];

  return v45();
}

uint64_t sub_266A3C944()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll);

  v6 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores);
}

uint64_t SiriCoreMetricsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll);

  v6 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores);

  return v0;
}

uint64_t SiriCoreMetricsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId;
  v2 = sub_266A46040();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger;
  v5 = sub_266A46510();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll);

  v7 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

void sub_266A3CBF0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *sub_266A3CC64(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D594D8]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D594B0]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D594F8]) init];
      if (v6)
      {
        v7 = v6;
        v8 = type metadata accessor for SiriCountsAll(0);
        v9 = (a1 + *(v8 + 20));
        v10 = MEMORY[0x26D5E64F0](*v9, v9[1]);
        [v5 setSiriInputLocale_];

        v11 = v9[2];
        v12 = v9[3];
        v13 = sub_266A46570();
        if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_UNKNOWN"])
        {
          v14 = 0;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_COMPACT"])
        {
          v14 = 1;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_TV"])
        {
          v14 = 2;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_BLUETOOTH_CAR"])
        {
          v14 = 3;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_EYES_FREE"])
        {
          v14 = 4;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_CARPLAY"])
        {
          v14 = 5;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_VOX"])
        {
          v14 = 6;
        }

        else if ([v13 isEqualToString:@"ODMSIRIUIVIEWMODE_NOT_APPLICABLE"])
        {
          v14 = 7;
        }

        else
        {
          v14 = 0;
        }

        [v5 setViewMode_];
        v17 = v9[4];
        v18 = v9[5];
        v19 = sub_266A46570();
        if ([v19 isEqualToString:@"AUDIOINPUTROUTE_UNKNOWN"])
        {
          v20 = 0;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_DEVICE"])
        {
          v20 = 1;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH"])
        {
          v20 = 3;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH"])
        {
          v20 = 4;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_WIRED"])
        {
          v20 = 5;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_WIRED"])
        {
          v20 = 6;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_CARPLAY"])
        {
          v20 = 7;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_DO_AP_DEVICE"])
        {
          v20 = 8;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_DO_AP_DEVICE"])
        {
          v20 = 9;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v20 = 10;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v20 = 11;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_USB_AUDIO"])
        {
          v20 = 12;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_SIRI_ACCESSORY"])
        {
          v20 = 13;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_AUDIO_INJECTION"])
        {
          v20 = 14;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_DARWIN"])
        {
          v20 = 15;
        }

        else
        {
          v20 = 0;
        }

        [v5 setAudioInterface_];
        v21 = v9[6];
        v22 = v9[7];
        v23 = sub_266A46570();
        if ([v23 isEqualToString:@"PRODUCT_UNKNOWN"])
        {
          v24 = 0;
        }

        else if ([v23 isEqualToString:@"PRODUCT_ASSISTANT"])
        {
          v24 = 1;
        }

        else if ([v23 isEqualToString:@"PRODUCT_DICTATION"])
        {
          v24 = 2;
        }

        else
        {
          v24 = 0;
        }

        [v5 setProduct_];
        v25 = v9[8];
        v26 = v9[9];
        v27 = sub_266A46570();
        if ([v27 isEqualToString:@"UNKNOWN"])
        {
          v28 = 0;
        }

        else if ([v27 isEqualToString:@"OPTED_IN"])
        {
          v28 = 1;
        }

        else if ([v27 isEqualToString:@"OPTED_OUT"])
        {
          v28 = 2;
        }

        else if ([v27 isEqualToString:@"DISMISSED"])
        {
          v28 = 3;
        }

        else
        {
          v28 = 0;
        }

        [v5 setSiriDataSharingOptInStatus_];
        v29 = (a1 + *(v8 + 24));
        [v7 setAllRequestCount:*v29];
        [v7 setUserRequestCount:v29[1]];
        [v3 setDimensions_];
        [v3 setRequestCounts_];

        goto LABEL_75;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  v7 = sub_266A464F0();
  v15 = sub_266A46690();
  if (os_log_type_enabled(v7, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266A29000, v7, v15, "Unable to create ODMSiriSchemaODMSiriCountsAll SELF message", v16, 2u);
    MEMORY[0x26D5E7060](v16, -1, -1);
  }

  v3 = 0;
LABEL_75:

  return v3;
}

uint64_t _s15SiriCoreMetrics0abC20SELFMessageConverterO28convertToODMSiriClientEvents17countsReportedAll17twoByThreeResults5odmId6loggerSaySo0h6SchemahI5EventCGSDy11DeepThought19AggregationIntervalVSayAA0a6CountsM0VGG_SDyAnA03TwooP7SegmentOG10Foundation4UUIDV2os6LoggerVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v103 - v10;
  v12 = sub_266A46040();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SiriCountsAll(0);
  v117 = *(v17 - 8);
  v18 = *(v117 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v119 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_266A461E0();
  v20 = *(v134 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v134);
  v133 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v126 = &v103 - v24;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF0, "l\v") - 8) + 64);
  v26 = MEMORY[0x28223BE20](a1);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v103 - v30;
  if (*(v29 + 16))
  {
    v116 = v16;
    v112 = v12;
    v113 = v11;
    v114 = a2;
    v115 = a3;
    v33 = v29 + 64;
    v32 = *(v29 + 64);
    v34 = 1 << *(v29 + 32);
    v35 = -1;
    v118 = MEMORY[0x277D84F90];
    v136 = MEMORY[0x277D84F90];
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v32;
    v37 = (v34 + 63) >> 6;
    v122 = v20 + 16;
    v132 = (v20 + 32);
    v111 = "urnRestatementScores";
    v110 = "Id - DEPRECATED, NIL";
    v109 = (v13 + 48);
    v108 = (v13 + 32);
    v107 = (v13 + 8);
    v106 = "d - DEPRECATED, NIL";
    v124 = v20;
    v129 = (v20 + 8);
    v127 = v29;

    v39 = 0;
    v125 = v28;
    v130 = a4;
    v131 = v31;
    v123 = v33;
    v128 = v37;
    while (v36)
    {
      v40 = v39;
LABEL_14:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v44 = v43 | (v40 << 6);
      v45 = v127;
      v46 = v124;
      (*(v124 + 16))(v126, *(v127 + 48) + *(v124 + 72) * v44, v134);
      v47 = *(*(v45 + 56) + 8 * v44);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
      v49 = *(v48 + 48);
      v28 = v125;
      (*(v46 + 32))();
      *&v28[v49] = v47;
      (*(*(v48 - 8) + 56))(v28, 0, 1, v48);

      v31 = v131;
      v33 = v123;
LABEL_15:
      sub_266A3EBC4(v28, v31);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
      if ((*(*(v50 - 8) + 48))(v31, 1, v50) == 1)
      {

        return v118;
      }

      v51 = *&v31[*(v50 + 48)];
      (*v132)(v133, v31, v134);
      v52 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
      v37 = v128;
      if (v52)
      {
        v53 = v52;
        v54 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
        if (v54)
        {
          v55 = v54;
          v56 = [objc_allocWithZone(MEMORY[0x277D594E8]) init];
          if (v56)
          {
            v121 = v56;
            v120 = [objc_allocWithZone(MEMORY[0x277D594C0]) init];
            if (v120)
            {
              v57 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
              if (v57)
              {
                v105 = v57;
                v104 = v55;
                v64 = sub_266A461C0();
                v65 = v120;
                [v120 setAggregationIntervalInDays_];
                sub_266A461A0();
                [v65 setAggregationIntervalStartTimestampInSecondsSince2001_];
                v66 = *(v51 + 16);
                if (v66)
                {
                  v67 = v51 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
                  v118 = *(v117 + 72);
                  do
                  {
                    v68 = v119;
                    sub_266A3B0A8(v67, v119);
                    v69 = sub_266A3CC64(v68);
                    sub_266A3B10C(v68);
                    if (v69)
                    {
                      [v121 addSiriCountsAll_];
                    }

                    v67 += v118;
                    --v66;
                  }

                  while (v66);

                  v28 = v125;
                }

                else
                {
                }

                v70 = v114;
                if (*(v114 + 16) && (v71 = sub_266A33B48(v133), (v72 & 1) != 0))
                {
                  v73 = *(*(v70 + 56) + v71);
                }

                else
                {
                  v73 = 2;
                }

                v74 = v121;
                [v121 addSegments_];
                [v74 setAggregationInterval_];
                v75 = sub_266A46570();
                v76 = v105;
                [v105 setExperimentId_];

                v77 = v113;
                sub_266A46000();
                v78 = v112;
                if ((*v109)(v77, 1, v112) == 1)
                {
                  sub_266A38274(v77, &qword_2800AE9C0, &qword_266A46E38);
                  v79 = 0x277D5A000;
                  v80 = &off_279BD9000;
                  v81 = v76;
                }

                else
                {
                  (*v108)(v116, v77, v78);
                  v82 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v83 = sub_266A46020();
                  v80 = &off_279BD9000;
                  v84 = [v82 initWithNSUUID_];

                  v81 = v105;
                  [v105 setTreatmentId_];

                  v85 = v78;
                  v79 = 0x277D5A000uLL;
                  (*v107)(v116, v85);
                }

                [v81 setDeploymentId_];
                v86 = objc_allocWithZone(*(v79 + 3192));
                v87 = v81;
                v88 = sub_266A46020();
                v89 = [v86 v80[129]];

                v90 = v104;
                [v104 setOdmId_];

                [v90 setTrialExperimentIdentifiers_];
                v91 = [objc_opt_self() mainBundle];
                v92 = [v91 infoDictionary];

                v31 = v131;
                if (v92)
                {
                  v93 = sub_266A46520();

                  if (*(v93 + 16) && (v94 = sub_266A33AD0(0xD00000000000001DLL, v106 | 0x8000000000000000), (v95 & 1) != 0))
                  {
                    sub_266A38340(*(v93 + 56) + 32 * v94, v135);

                    if (swift_dynamicCast())
                    {
                      v96 = sub_266A46570();
                      v31 = v131;

LABEL_53:
                      v97 = v104;
                      [v104 setPluginVersion_];

                      [v53 setEventMetadata_];
                      [v53 setCountsReportedAll_];
                      v98 = v53;
                      MEMORY[0x26D5E68F0]();
                      if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        v99 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        sub_266A46610();
                      }

                      sub_266A46630();

                      result = (*v129)(v133, v134);
                      v118 = v136;
                      continue;
                    }
                  }

                  else
                  {
                  }
                }

                v96 = 0;
                goto LABEL_53;
              }

              v53 = v55;
              v55 = v121;
              v58 = v120;
            }

            else
            {
              v58 = v121;
            }

            v53 = v55;
            v55 = v58;
          }

          v53 = v55;
        }
      }

      v60 = sub_266A464F0();
      v61 = sub_266A46690();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_266A29000, v60, v61, "Unable to create ODMSiriSchemaODMSiriClientEvent SELF message", v62, 2u);
        v63 = v62;
        v31 = v131;
        MEMORY[0x26D5E7060](v63, -1, -1);
      }

      result = (*v129)(v133, v134);
    }

    if (v37 <= v39 + 1)
    {
      v41 = v39 + 1;
    }

    else
    {
      v41 = v37;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF8, &qword_266A47CD8);
        (*(*(v59 - 8) + 56))(v28, 1, 1, v59);
        v36 = 0;
        v39 = v42;
        goto LABEL_15;
      }

      v36 = *(v33 + 8 * v40);
      ++v39;
      if (v36)
      {
        v39 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v100 = sub_266A464F0();
    v101 = sub_266A46670();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_266A29000, v100, v101, "no aggregations to report", v102, 2u);
      MEMORY[0x26D5E7060](v102, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_266A3DED4(uint64_t a1)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = sub_266A46040();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D59510]) init];
  if (v16)
  {
    v17 = v16;
    v18 = type metadata accessor for ProcessedSiriTurn();
    sub_266A3EB54(v36 + v18[5], v7);
    v35 = *(v9 + 48);
    if (v35(v7, 1, v8) == 1)
    {
      sub_266A38274(v7, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v9 + 32))(v15, v7, v8);
      v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v23 = sub_266A46020();
      v34 = v18;
      v24 = v23;
      v25 = [v22 initWithNSUUID_];

      v18 = v34;
      [v17 setCurrentTurnId_];

      (*(v9 + 8))(v15, v8);
    }

    sub_266A3EB54(v36 + v18[6], v5);
    if (v35(v5, 1, v8) == 1)
    {
      sub_266A38274(v5, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v9 + 32))(v13, v5, v8);
      v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v27 = sub_266A46020();
      v28 = [v26 initWithNSUUID_];

      [v17 setNextTurnId_];
      (*(v9 + 8))(v13, v8);
    }

    v29 = *(v36 + v18[7]);
    if (v29 != 2)
    {
      [v17 setIsUserRequest_];
    }

    v30 = v36 + v18[8];
    if ((*(v30 + 8) & 1) == 0)
    {
      [v17 setUtteranceRestatementScore_];
    }

    v31 = v36 + v18[9];
    if ((*(v31 + 8) & 1) == 0)
    {
      [v17 setPhoneticRestatementScore_];
    }
  }

  else
  {
    v19 = sub_266A464F0();
    v20 = sub_266A46690();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_266A29000, v19, v20, "Unable to create ODMSiriSchemaODMSiriTurnRestatementScore SELF message", v21, 2u);
      MEMORY[0x26D5E7060](v21, -1, -1);
    }

    return 0;
  }

  return v17;
}

uint64_t sub_266A3E310(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(type metadata accessor for ProcessedSiriTurn() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = sub_266A3DED4(v5);
      if (v7)
      {
        v8 = v7;
        MEMORY[0x26D5E68F0]();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_266A46610();
        }

        sub_266A46630();

        v1 = v11;
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  return v1;
}

unint64_t _s15SiriCoreMetrics0abC20SELFMessageConverterO27convertToODMSiriClientEvent21processedConversation5odmId6loggerSo0h6SchemahiJ0CSgAA09ProcessedaL0V_10Foundation4UUIDV2os6LoggerVtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v44 - v6;
  v8 = sub_266A46040();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!result)
  {
    return result;
  }

  v48 = result;
  v14 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D59518]) init];
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v18)
  {

    return 0;
  }

  v46 = v9;
  v47 = v18;
  result = sub_266A3E310(a1);
  v19 = result;
  if (result >> 62)
  {
    result = sub_266A46730();
    v20 = result;
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_27:

    v41 = sub_266A464F0();
    v42 = sub_266A46670();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_266A29000, v41, v42, "No restatement scores to report", v43, 2u);
      MEMORY[0x26D5E7060](v43, -1, -1);
    }

LABEL_30:
    return 0;
  }

LABEL_7:
  v44[1] = a2;
  v45 = v15;
  if (v20 >= 1)
  {
    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D5E6A00](i, v19);
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      [v17 addSiriTurnRestatementScores_];
    }

    v24 = sub_266A46570();
    v25 = v47;
    [v47 setExperimentId_];

    sub_266A46000();
    v26 = v46;
    if ((*(v46 + 48))(v7, 1, v8) == 1)
    {
      sub_266A38274(v7, &qword_2800AE9C0, &qword_266A46E38);
    }

    else
    {
      (*(v26 + 32))(v12, v7, v8);
      v27 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v28 = sub_266A46020();
      v29 = [v27 initWithNSUUID_];

      [v25 setTreatmentId_];
      (*(v26 + 8))(v12, v8);
    }

    v30 = v45;
    [v25 setDeploymentId_];
    v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v32 = sub_266A46020();
    v33 = [v31 initWithNSUUID_];

    [v30 setOdmId_];
    [v30 setTrialExperimentIdentifiers_];
    v34 = [objc_opt_self() mainBundle];
    v35 = [v34 infoDictionary];

    if (v35)
    {
      v36 = sub_266A46520();

      if (*(v36 + 16) && (v37 = sub_266A33AD0(0xD00000000000001DLL, 0x8000000266A48EB0), (v38 & 1) != 0))
      {
        sub_266A38340(*(v36 + 56) + 32 * v37, v49);

        if (swift_dynamicCast())
        {
          v39 = sub_266A46570();

LABEL_25:
          [v30 setPluginVersion_];

          v40 = v48;
          [v48 setEventMetadata_];
          [v40 setTurnRestatementScoresReported_];

          return v40;
        }
      }

      else
      {
      }
    }

    v39 = 0;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsSELFReporter()
{
  result = qword_2800AECE0;
  if (!qword_2800AECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A3EA68()
{
  result = sub_266A46040();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266A46510();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266A3EB54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3EBC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECF0, "l\v");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3EC38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.jsonResult.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t SiriCoreMetricsJsonLoggingReporter.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_266A38020(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.init(_:)(uint64_t a1)
{
  *(v1 + 16) = sub_266A38020(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v4 = sub_266A46510();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.report(_:)(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = *(*(sub_266A465B0() - 8) + 64) + 15;
  v2[56] = swift_task_alloc();
  v4 = *(*(sub_266A45F00() - 8) + 64) + 15;
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3EEDC, 0, 0);
}

uint64_t sub_266A3EEDC()
{
  v46 = v0;
  v1 = v0[57];
  v2 = v0[54];
  v3 = v0[55];
  v4 = sub_266A45F40();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_266A45F30();
  sub_266A45EF0();
  sub_266A45F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED08, &qword_266A47D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266A47CE0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x8000000266A491D0;
  v8 = *v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED10, &qword_266A47D08);
  *(inited + 48) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000266A491F0;
  v10 = v2[1];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED18, &qword_266A47D10);
  *(inited + 96) = v10;
  *(inited + 120) = v11;
  *(inited + 128) = 0x756F436C61746F74;
  *(inited + 136) = 0xEB0000000073746ELL;
  v12 = v2[4];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED20, &qword_266A47D18);
  *(inited + 144) = v12;
  *(inited + 168) = v13;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x8000000266A49210;
  v14 = v2[5];
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED28, &unk_266A47D20);
  *(inited + 192) = v14;

  v15 = sub_266A38020(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB50, &qword_266A47420);
  swift_arrayDestroy();
  swift_beginAccess();
  v16 = *(v3 + 16);
  *(v3 + 16) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED30, &qword_266A47D30);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_266A47CE0;
  *(v17 + 32) = 0xD000000000000016;
  *(v17 + 40) = 0x8000000266A491D0;
  *(v17 + 48) = MEMORY[0x26D5E6900](v8, &type metadata for ProcessedSiriConversation);
  *(v17 + 56) = v18;
  *(v17 + 64) = 0xD000000000000011;
  *(v17 + 72) = 0x8000000266A491F0;
  sub_266A461E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED38, &qword_266A47D38);
  sub_266A3F758();
  *(v17 + 80) = sub_266A46530();
  *(v17 + 88) = v19;
  *(v17 + 96) = 0x756F436C61746F74;
  *(v17 + 104) = 0xEB0000000073746ELL;
  *(v17 + 112) = sub_266A46530();
  *(v17 + 120) = v20;
  *(v17 + 128) = 0xD000000000000011;
  *(v17 + 136) = 0x8000000266A49210;
  *(v17 + 144) = sub_266A46530();
  *(v17 + 152) = v21;
  v22 = sub_266A38150(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED40, &qword_266A47D40);
  swift_arrayDestroy();
  v0[53] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AED48, &qword_266A47D48);
  sub_266A3F7B0();
  v23 = sub_266A45F20();
  v25 = v24;
  v26 = v0[56];

  sub_266A465A0();
  v27 = sub_266A46590();
  v29 = v0[55];
  if (v28)
  {
    v30 = v28;
    v31 = v27;
    v32 = sub_266A464F0();
    v33 = sub_266A46680();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      v36 = sub_266A333F0(v31, v30, &v45);

      *(v34 + 4) = v36;
      _os_log_impl(&dword_266A29000, v32, v33, "json_string=%s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D5E7060](v35, -1, -1);
      MEMORY[0x26D5E7060](v34, -1, -1);
    }

    else
    {
    }

    v37 = sub_266A464F0();
    v38 = sub_266A46690();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_10;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Unable to convert JSON string to data.";
  }

  else
  {
    v37 = sub_266A464F0();
    v38 = sub_266A46690();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_10;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Extracting results to JSON failed";
  }

  _os_log_impl(&dword_266A29000, v37, v38, v40, v39, 2u);
  MEMORY[0x26D5E7060](v39, -1, -1);
LABEL_10:
  sub_266A2D8B8(v23, v25);

  v42 = v0[56];
  v41 = v0[57];

  v43 = v0[1];

  return v43();
}

uint64_t sub_266A3F5C8()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v3 = sub_266A46510();
  v4 = *(*(v3 - 8) + 8);

  return v4(v0 + v2, v3);
}

uint64_t SiriCoreMetricsJsonLoggingReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v3 = sub_266A46510();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SiriCoreMetricsJsonLoggingReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
  v3 = sub_266A46510();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_266A3F758()
{
  result = qword_2800AEB60;
  if (!qword_2800AEB60)
  {
    sub_266A461E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB60);
  }

  return result;
}

unint64_t sub_266A3F7B0()
{
  result = qword_2800AED50;
  if (!qword_2800AED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AED48, &qword_266A47D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AED50);
  }

  return result;
}

uint64_t sub_266A3F82C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECD8, &qword_266A47D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A3F894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for SiriCoreMetricsJsonLoggingReporter()
{
  result = qword_2800AED58;
  if (!qword_2800AED58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A3F938()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_266A3FA8C(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  *v6 = v2;
  v6[1] = sub_266A3FBB8;

  return v8(v2 + 16);
}

uint64_t sub_266A3FBB8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t SiriCoreMetricsSELFReporterV2.__allocating_init(stream:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v9 = sub_266A46510();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = a1;
  return v7;
}

uint64_t SiriCoreMetricsSELFReporterV2.init(stream:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = a1;
  return v2;
}

uint64_t SiriCoreMetricsSELFReporterV2.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_266A46040();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A3FEAC, 0, 0);
}

uint64_t sub_266A3FEAC()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
  sub_266A40668(v2, v1, v3 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger);
  if (v4)
  {
    v5 = v4;
    v6 = v0[4];
    v8 = v0[2];
    v7 = v0[3];
    [*(v0[5] + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) emitMessage_];

    v9 = sub_266A464F0();
    v10 = sub_266A46680();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[3];
    v12 = v0[4];
    v14 = v0[2];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = *(v12 + 16);

      _os_log_impl(&dword_266A29000, v9, v10, "marker: reported %ld Siri turns from this run", v15, 0xCu);
      MEMORY[0x26D5E7060](v15, -1, -1);

      v9 = v5;
    }

    else
    {
    }
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v16 = v0[1];

  return v16();
}

uint64_t SiriCoreMetricsSELFReporterV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SiriCoreMetricsSELFReporterV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_266A40190(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *v1;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_266A4023C;

  return SiriCoreMetricsSELFReporterV2.report(_:)(v3, v4, v5);
}

uint64_t sub_266A4023C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_266A40334(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_266A46040();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v31 = (v4 + 8);
  v32 = v4 + 16;

  v13 = 0;
  for (i = a1; v11; a1 = i)
  {
LABEL_10:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v3;
      (*(v4 + 16))(v7, *(a1 + 48) + *(v4 + 72) * (v15 | (v13 << 6)), v3);
      v17 = [objc_allocWithZone(MEMORY[0x277D59510]) init];
      if (v17)
      {
        break;
      }

      v18 = sub_266A464F0();
      v19 = sub_266A46690();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_266A29000, v18, v19, "Unable to create ODMSiriSchemaODMSiriTurnRestatementScore SELF message", v20, 2u);
        v21 = v20;
        a1 = i;
        MEMORY[0x26D5E7060](v21, -1, -1);
      }

      v3 = v16;
      (*v31)(v7, v16);
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v22 = v17;
    v23 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v24 = sub_266A46020();
    v25 = [v23 initWithNSUUID_];

    [v22 setCurrentTurnId_];
    v3 = v16;
    (*v31)(v7, v16);
    v26 = v22;
    MEMORY[0x26D5E68F0]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_266A46610();
      v3 = v16;
    }

    sub_266A46630();

    v28 = v33;
  }

LABEL_6:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_266A40668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v47 - v8;
  v10 = sub_266A46040();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!v15)
  {
    return;
  }

  v51 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v16)
  {
LABEL_30:

    return;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D59518]) init];
  if (!v18)
  {

    return;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v20)
  {

    return;
  }

  v49 = v11;
  v50 = v20;
  sub_266A40334(a1, a3);
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = sub_266A46730();
    if (v23)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_27:

    v44 = sub_266A464F0();
    v45 = sub_266A46670();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266A29000, v44, v45, "No restatement scores to report", v46, 2u);
      MEMORY[0x26D5E7060](v46, -1, -1);
    }

    goto LABEL_30;
  }

LABEL_7:
  v47[1] = a2;
  v48 = v17;
  if (v23 >= 1)
  {
    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x26D5E6A00](i, v22);
      }

      else
      {
        v25 = *(v22 + 8 * i + 32);
      }

      v26 = v25;
      [v19 addSiriTurnRestatementScores_];
    }

    v27 = sub_266A46570();
    v28 = v50;
    [v50 setExperimentId_];

    sub_266A46000();
    v29 = v49;
    if ((*(v49 + 48))(v9, 1, v10) == 1)
    {
      sub_266A2B5A8(v9);
    }

    else
    {
      (*(v29 + 32))(v14, v9, v10);
      v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v31 = sub_266A46020();
      v32 = [v30 initWithNSUUID_];

      [v28 setTreatmentId_];
      (*(v29 + 8))(v14, v10);
    }

    v33 = v48;
    [v28 setDeploymentId_];
    v34 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v35 = sub_266A46020();
    v36 = [v34 initWithNSUUID_];

    [v33 setOdmId_];
    [v33 setTrialExperimentIdentifiers_];
    v37 = [objc_opt_self() mainBundle];
    v38 = [v37 infoDictionary];

    if (v38)
    {
      v39 = sub_266A46520();

      if (*(v39 + 16) && (v40 = sub_266A33AD0(0xD00000000000001DLL, 0x8000000266A48EB0), (v41 & 1) != 0))
      {
        sub_266A38340(*(v39 + 56) + 32 * v40, v52);

        if (swift_dynamicCast())
        {
          v42 = sub_266A46570();

LABEL_25:
          [v33 setPluginVersion_];

          v43 = v51;
          [v51 setEventMetadata_];
          [v43 setTurnRestatementScoresReported_];

          return;
        }
      }

      else
      {
      }
    }

    v42 = 0;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t type metadata accessor for SiriCoreMetricsSELFReporterV2()
{
  result = qword_2800AED78;
  if (!qword_2800AED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A40C7C()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SiriCoreMetricsBiomeReporter.__allocating_init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v11 = sub_266A46510();
  (*(*(v11 - 8) + 32))(v9 + v10, a2, v11);
  v12 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v13 = sub_266A46040();
  (*(*(v13 - 8) + 32))(v9 + v12, a3, v13);
  return v9;
}

uint64_t SiriCoreMetricsBiomeReporter.init(biomeDonator:logger:odmId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v9 = sub_266A46040();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

uint64_t SiriCoreMetricsBiomeReporter.report(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A461E0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A40FBC, 0, 0);
}

uint64_t sub_266A40FBC()
{
  v1 = v0[5];
  v42 = v0[3];
  v2 = *(v0[2] + 32);
  v37 = v2 + 64;
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v36 = (63 - v4) >> 6;
  v39 = v0[5];
  v6 = (v1 + 32);
  v41 = (v1 + 8);
  v40 = *(v0[2] + 32);

  v8 = 0;
  v9 = &qword_2800AEB18;
  v38 = v6;
  if (v5)
  {
    while (1)
    {
      v10 = v8;
LABEL_12:
      v13 = v0[7];
      v14 = v0[4];
      v43 = v14;
      v44 = v0[6];
      v15 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v16 = v15 | (v10 << 6);
      v17 = *(v40 + 48) + *(v39 + 72) * v16;
      (*(v39 + 16))();
      v18 = *(v40 + 56);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
      v20 = v9;
      v21 = *(v19 + 48);
      v22 = *(v18 + 8 * v16);
      v6 = v38;
      (*(v39 + 32))(v13, v44, v43);
      *(v13 + v21) = v22;
      v9 = v20;
      (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
      v12 = v10;
LABEL_13:
      v23 = v0[8];
      sub_266A41324(v0[7], v23);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
      if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
      {
        break;
      }

      v25 = v0[6];
      v26 = v0[4];
      v27 = *(v0[8] + *(v24 + 48));
      (*v6)(v25);
      v28 = *(v42 + 16);
      v29 = _s15SiriCoreMetrics0abC13BiomeReporterC06createdA18RequestCountsEvent5odmId19aggregationInterval07requestH0So06BMSirigH0C10Foundation4UUIDV_11DeepThought011AggregationM0VAA0agH0VtFZ_0();
      sub_266A46150();

      result = (*v41)(v25, v26);
      v8 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v33 = v0[6];
    v32 = v0[7];
    v34 = v0[8];

    v35 = v0[1];

    return v35();
  }

  else
  {
LABEL_5:
    if (v36 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = v36;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v36)
      {
        v30 = v0[7];
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, &unk_266A47370);
        (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
        v5 = 0;
        goto LABEL_13;
      }

      v5 = *(v37 + 8 * v10);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A41324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static BMSiriRequestCountsMetadataSchedule.fromIntervalInDays(intervalInDays:)(int a1)
{
  if (a1 == 7)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 30)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266A413BC()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v3 = sub_266A46510();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v5 = sub_266A46040();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t SiriCoreMetricsBiomeReporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v3 = sub_266A46510();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v5 = sub_266A46040();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t SiriCoreMetricsBiomeReporter.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger;
  v3 = sub_266A46510();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId;
  v5 = sub_266A46040();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

id _s15SiriCoreMetrics0abC13BiomeReporterC06createdA18RequestCountsEvent5odmId19aggregationInterval07requestH0So06BMSirigH0C10Foundation4UUIDV_11DeepThought011AggregationM0VAA0agH0VtFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB68, &qword_266A47430);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_266A45FF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266A461A0();
  sub_266A45F90();
  v9 = sub_266A461C0();
  if (v9 == 7)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  if (v9 == 30)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  (*(v5 + 16))(v3, v8, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_266A46010();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_266A45FD0();
    (*(v5 + 8))(v3, v4);
  }

  v13 = objc_allocWithZone(MEMORY[0x277CF1598]);
  v14 = sub_266A46570();

  v15 = [v13 initWithSchedule:v11 aggregationWindowStartTimestamp:v12 odmId:v14];

  v16 = sub_266A468E0();
  v17 = sub_266A468E0();
  v18 = [objc_allocWithZone(MEMORY[0x277CF15A0]) initWithAllRequestCount:v16 userRequestCount:v17];

  v19 = [objc_allocWithZone(MEMORY[0x277CF1590]) initWithMetadata:v15 statistics:v18];
  (*(v5 + 8))(v8, v4);
  return v19;
}

uint64_t type metadata accessor for SiriCoreMetricsBiomeReporter()
{
  result = qword_2800AED98;
  if (!qword_2800AED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A4192C()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266A46040();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t SiriCoreMetricsError.hashValue.getter()
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t SiriCoreMetricsV2.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SiriCoreMetricsV2.init()();
  return v3;
}

uint64_t SiriCoreMetricsV2.init()()
{
  v1 = sub_266A460E0();
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  MEMORY[0x28223BE20](v1);
  v82 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_266A45FF0();
  v81 = *(v83 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266A46510();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v79 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v76 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v76 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  v18 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v19 = v0;
  sub_266A46500();
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_266A46570();
  v22 = [v20 initWithSuiteName_];

  if (!v22)
  {
    v34 = v6;
    (*(v7 + 16))(v17, v0 + v18, v6);
    v35 = sub_266A464F0();
    v36 = sub_266A46690();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_266A29000, v35, v36, "Can't get user defaults initialized", v37, 2u);
      MEMORY[0x26D5E7060](v37, -1, -1);
    }

    v38 = *(v7 + 8);
    v38(v17, v34);
    sub_266A4231C();
    swift_allocError();
    swift_willThrow();
    v38((v0 + v18), v34);
    goto LABEL_8;
  }

  v23 = sub_266A46440();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v22;
  v27 = sub_266A46430();
  v88 = v23;
  v89 = MEMORY[0x277D04550];
  v87 = v27;
  v28 = v6;
  v77 = *(v7 + 16);
  v78 = v7 + 16;
  v77(v15, v0 + v18, v6);
  v29 = sub_266A46260();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = v90;
  v33 = sub_266A46220();
  if (v32)
  {

    (*(v7 + 8))(v0 + v18, v6);
LABEL_8:
    type metadata accessor for SiriCoreMetricsV2();
    v49 = *(*v0 + 48);
    v50 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
    return v19;
  }

  v39 = v33;
  v76 = v26;
  v90 = v7;
  v40 = v80;
  sub_266A46300();
  v41 = v82;
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A46250();
  (*(v84 + 8))(v41, v85);
  (*(v81 + 8))(v40, v83);
  v42 = v0;
  v77(v86, v0 + v18, v28);
  v43 = v39;
  v44 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v45 = [v44 PrivateLearning];
  swift_unknownObjectRelease();
  v46 = [v45 SELFEvent];
  swift_unknownObjectRelease();
  [v46 source];

  v47 = v43;
  sub_266A46200();
  v48 = v28;
  v19 = v42;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDB8, &qword_266A47F30);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  *(v42 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider) = sub_266A46180();
  v55 = v79;
  v77(v79, v42 + v18, v48);
  v56 = type metadata accessor for SiriCoreMetricsCalculatorV2();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  v59 = swift_allocObject();

  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v86 = v18;
  v60 = *(v90 + 32);
  v60(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger, v55, v48);
  *(v59 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = v47;
  *(v42 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD0, &qword_266A47F38);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_266A47F20;
  v62 = [objc_opt_self() sharedAnalytics];
  v90 = v47;
  v63 = v62;
  v64 = [v62 defaultMessageStream];

  v77(v55, &v86[v42], v48);
  v65 = type metadata accessor for SiriCoreMetricsSELFReporterV2();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  v60(v68 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_logger, v55, v48);
  *(v68 + OBJC_IVAR____TtC15SiriCoreMetrics29SiriCoreMetricsSELFReporterV2_stream) = v64;
  *(v61 + 32) = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD8, &qword_266A47F40);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v87 = sub_266A46160();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDE0, &qword_266A47F48);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_266A46190();

  *(v42 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter) = v75;
  return v19;
}

unint64_t sub_266A4231C()
{
  result = qword_2800AEDB0;
  if (!qword_2800AEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEDB0);
  }

  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsV2()
{
  result = qword_2800AEE10;
  if (!qword_2800AEE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriCoreMetricsV2.loadData()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A423DC, 0, 0);
}

uint64_t sub_266A423DC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider);
  v2 = *(MEMORY[0x277D04438] + 4);
  v6 = (*MEMORY[0x277D04438] + MEMORY[0x277D04438]);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_266A431E8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t SiriCoreMetricsV2.doWork(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A424B4, 0, 0);
}

uint64_t sub_266A424B4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_266A4255C;
  v3 = v0[2];

  return SiriCoreMetricsCalculatorV2.doWork(_:)(v3);
}

uint64_t sub_266A4255C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 32);
  v14 = *v4;

  v12 = *(v14 + 8);
  if (!v3)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
  }

  return v12(v9, v10, v11);
}

uint64_t SiriCoreMetricsV2.report(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_266A42698, 0, 0);
}

uint64_t sub_266A42698()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 64) + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04440] + 4);
  v6 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_266A42760;

  return v6(v0 + 16);
}

uint64_t sub_266A42760()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A431EC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SiriCoreMetricsV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter);

  return v0;
}

uint64_t SiriCoreMetricsV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_266A429F0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_266A42A14, 0, 0);
}

uint64_t sub_266A42A14()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsDataProvider);
  v2 = *(MEMORY[0x277D04438] + 4);
  v6 = (*MEMORY[0x277D04438] + MEMORY[0x277D04438]);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_266A42ACC;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_266A42ACC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266A42BC0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_266A42BE8, 0, 0);
}

uint64_t sub_266A42BE8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsCalculator);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_266A42C90;
  v3 = v0[3];

  return SiriCoreMetricsCalculatorV2.doWork(_:)(v3);
}

uint64_t sub_266A42C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_266A42DB4(uint64_t a1)
{
  *(v2 + 40) = *a1;
  v3 = *v1;
  *(v2 + 56) = *(a1 + 16);
  *(v2 + 64) = v3;
  return MEMORY[0x2822009F8](sub_266A42DE4, 0, 0);
}

uint64_t sub_266A42DE4()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 64) + OBJC_IVAR____TtC15SiriCoreMetrics17SiriCoreMetricsV2_siriCoreMetricsReporter);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04440] + 4);
  v6 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_266A42EAC;

  return v6(v0 + 16);
}

uint64_t sub_266A42EAC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A42FE0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

unint64_t sub_266A42FFC()
{
  result = qword_2800AEDF0;
  if (!qword_2800AEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEDF0);
  }

  return result;
}

uint64_t sub_266A430EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriCoreMetricsV2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A43148()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SiriCoreMetricsDataRecord.featurizedConversationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266A462A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriCoreMetricsDataRecord.previousRequestCounts.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriCoreMetricsDataRecord(0) + 20));
}

uint64_t SiriCoreMetricsDataProvider.__allocating_init(conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = a1;
  v10 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v11 = sub_266A46510();
  (*(*(v11 - 8) + 32))(v9 + v10, a3, v11);
  *(v9 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = a2;
  return v9;
}

uint64_t SiriCoreMetricsDataProvider.init(conversationProvider:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = a1;
  v6 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v7 = sub_266A46510();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  *(v3 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = a2;
  return v3;
}

uint64_t SiriCoreMetricsDataProvider.loadData()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A462C0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_266A45FF0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_266A460E0();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A43558, 0, 0);
}

uint64_t sub_266A43558()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[3];
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A46300();
  v8 = *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService);
  sub_266A46240();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider);
  v10 = *(MEMORY[0x277D04478] + 4);
  v14 = (*MEMORY[0x277D04478] + MEMORY[0x277D04478]);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_266A43698;
  v12 = v0[6];

  return v14(v12);
}

uint64_t sub_266A43698()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_266A438E0;
  }

  else
  {
    v3 = sub_266A437AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266A437AC()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = SiriCoreMetricsDataProvider.loadRequestCountsData()();
  if (v1)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[6];
  }

  else
  {
    v8 = v3;
    v9 = v0[12];
    v10 = v0[9];
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    v14 = v0[2];
    sub_266A462B0();
    sub_266A46280();
    (*(v12 + 8))(v11, v13);
    *(v14 + *(type metadata accessor for SiriCoreMetricsDataRecord(0) + 20)) = v8;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_266A438E0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

unint64_t SiriCoreMetricsDataProvider.loadRequestCountsData()()
{
  v1 = sub_266A45FF0();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v43 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = sub_266A460E0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v22 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService);
  v23 = v52;
  v24 = sub_266A46200();
  v52 = v23;
  if (v23)
  {
    (*(v15 + 8))(v21, v14);
    return v19;
  }

  v25 = v24;
  v45 = v8;
  v46 = v21;
  v26 = v51;
  v47 = v13;
  v48 = v14;
  v49 = v5;
  sub_266A463D0();
  v28 = v27;

  if (v28)
  {
    v29 = v45;
    sub_266A46300();
    sub_266A45FC0();
    v30 = *(v50 + 8);
    v30(v29, v26);
    sub_266A45FB0();
    v30(v11, v26);
  }

  else
  {
    sub_266A45F90();
  }

  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  sub_266A45FC0();
  v32 = *(v15 + 8);
  v31 = (v15 + 8);
  v44 = v32;
  v32(v19, v48);
  sub_266A463F0();
  sub_266A45FA0();
  v43 = sub_266A463E0();
  result = sub_266A462F0();
  v34 = result;
  v53 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v31;
    if (v35)
    {
      goto LABEL_8;
    }

LABEL_20:
    v19 = MEMORY[0x277D84F90];
LABEL_21:

    v41 = *(v50 + 8);
    v42 = v51;
    v41(v49, v51);
    v41(v47, v42);
    v44(v46, v48);
    return v19;
  }

  result = sub_266A46730();
  v35 = result;
  v45 = v31;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v35 >= 1)
  {
    v36 = 0;
    v19 = MEMORY[0x277D84F90];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x26D5E6A00](v36, v34);
      }

      else
      {
        v37 = *(v34 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = sub_266A464E0();
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v40 = v39;
        MEMORY[0x26D5E68F0]();
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_266A46610();
        }

        sub_266A46630();

        v19 = v53;
      }

      else
      {
      }

      ++v36;
    }

    while (v35 != v36);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t SiriCoreMetricsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider);

  return v0;
}

uint64_t SiriCoreMetricsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

unint64_t sub_266A43F44()
{
  result = qword_2800AEB20;
  if (!qword_2800AEB20)
  {
    type metadata accessor for SiriCoreMetricsDataRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB20);
  }

  return result;
}

uint64_t sub_266A43F9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266A44038;

  return SiriCoreMetricsDataProvider.loadData()(a1);
}

uint64_t sub_266A44038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266A44140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266A462A0();
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

uint64_t sub_266A44210(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266A462A0();
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

void sub_266A442C8()
{
  sub_266A462A0();
  if (v0 <= 0x3F)
  {
    sub_266A4434C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_266A4434C()
{
  if (!qword_2800AEE48)
  {
    sub_266A443A4();
    v0 = sub_266A46640();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AEE48);
    }
  }
}

unint64_t sub_266A443A4()
{
  result = qword_2800AEE50;
  if (!qword_2800AEE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800AEE50);
  }

  return result;
}

uint64_t sub_266A44418()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SiriCoreMetrics.__allocating_init(bookmarkLocation:conversationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  SiriCoreMetrics.init(bookmarkLocation:conversationType:)(a1, a2, a3);
  return v9;
}

uint64_t SiriCoreMetrics.init(bookmarkLocation:conversationType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v116 = a3;
  v118 = sub_266A46040();
  v115 = *(v118 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v118);
  v111 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266A45F60();
  v123 = *(v9 - 8);
  v124 = v9;
  v10 = *(v123 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v119 = v106 - v13;
  v14 = sub_266A46510();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v112 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v106 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v106 - v22;
  v24 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  sub_266A46500();
  v117 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  _s15SiriCoreMetricsAAC5odmId10Foundation4UUIDVvpfi_0();
  if (!a2)
  {
    a1 = 0xD000000000000043;
    a2 = 0x8000000266A494D0;
  }

  v25 = v15[2];
  v120 = v15 + 2;
  v121 = v24;
  v125 = v25;
  v126 = v14;
  v25(v23, v4 + v24, v14);

  v26 = sub_266A464F0();
  v27 = sub_266A46680();

  v28 = os_log_type_enabled(v26, v27);
  v122 = v15;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v127 = v4;
    v30 = v29;
    v31 = swift_slowAlloc();
    v128 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_266A333F0(a1, a2, &v128);
    _os_log_impl(&dword_266A29000, v26, v27, "marker: streams bookmark path=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x26D5E7060](v31, -1, -1);
    v32 = v30;
    v4 = v127;
    MEMORY[0x26D5E7060](v32, -1, -1);
  }

  v33 = v15[1];
  v33(v23, v126);
  v34 = v119;
  sub_266A45F50();

  sub_266A46260();
  (*(v123 + 16))(v113, v34, v124);
  v35 = v121;
  v125(v21, v4 + v121, v126);
  v36 = v114;
  v37 = sub_266A46210();
  if (v36)
  {
    (*(v123 + 8))(v34, v124);
    v33((v4 + v35), v126);
    (*(v115 + 8))(v4 + v117, v118);
    type metadata accessor for SiriCoreMetrics();
    v38 = *(*v4 + 48);
    v39 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_conversationType) = v116;
    v114 = v37;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEDD0, &qword_266A47F38);
    v40 = swift_allocObject();
    v110 = 0;
    v41 = v40;
    *(v40 + 16) = xmmword_266A48240;
    *(v40 + 32) = [objc_allocWithZone(sub_266A46400()) init];
    v41[5] = [objc_allocWithZone(sub_266A464B0()) init];
    v41[6] = [objc_allocWithZone(sub_266A46410()) init];
    v41[7] = [objc_allocWithZone(sub_266A46460()) init];
    v42 = v112;
    v43 = v125;
    v44 = v126;
    v125(v112, v4 + v35, v126);
    v45 = sub_266A462D0();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();

    v48 = sub_266A462E0();
    v43(v42, v4 + v35, v44);
    v49 = type metadata accessor for SiriCoreMetricsDataProvider(0);
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v52 = swift_allocObject();
    *(v52 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_featurizedConversationProvider) = v48;
    v108 = v48;
    v127 = v4;
    v54 = v122 + 4;
    v53 = v122[4];
    v53(v52 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_logger, v42, v44);
    v113 = v53;
    *(v52 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsDataProvider_bookmarkService) = v114;
    *(v127 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider) = v52;
    v55 = v125;
    v125(v42, v127 + v35, v44);
    v56 = type metadata accessor for SiriCoreMetricsCalculator();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();

    _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
    v53(v59 + OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger, v42, v44);
    v60 = v54;
    *(v59 + 16) = v116;
    *(v127 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator) = v59;
    v61 = v121;
    v62 = v55;
    v55(v42, v127 + v121, v44);
    v63 = type metadata accessor for SiriCoreMetricsJsonLoggingReporter();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    v66 = swift_allocObject();
    v67 = MEMORY[0x277D84F90];
    v68 = sub_266A38020(MEMORY[0x277D84F90]);
    v116 = v66;
    *(v66 + 16) = v68;
    v69 = v66 + OBJC_IVAR____TtC15SiriCoreMetrics34SiriCoreMetricsJsonLoggingReporter_logger;
    v70 = v42;
    v71 = v113;
    (v113)(v69, v42, v44);
    v122 = v60;
    v62(v42, v127 + v61, v44);
    v72 = v115;
    v73 = *(v115 + 16);
    v106[1] = v115 + 16;
    v107 = v73;
    v74 = v118;
    v75 = v111;
    v73(v111, v127 + v117, v118);
    v76 = type metadata accessor for SiriCoreMetricsSELFReporter();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    v79 = swift_allocObject();
    *(v79 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsCountsReportedAll) = v67;
    *(v79 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmClientEventsTurnRestatementScores) = v67;
    v106[0] = v79;
    v80 = v70;
    v81 = v44;
    (v71)(v79 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_logger, v80, v44);
    v115 = *(v72 + 32);
    v82 = v75;
    (v115)(v79 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsSELFReporter_odmId, v75, v74);
    v83 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v84 = [v83 SiriRequestCounts];
    swift_unknownObjectRelease();
    v85 = [v84 source];

    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE68, &qword_266A48260);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    swift_allocObject();
    v89 = sub_266A46140();
    v90 = v112;
    v125(v112, v127 + v121, v81);
    v91 = v118;
    v92 = v82;
    v107(v82, v127 + v117, v118);
    v93 = type metadata accessor for SiriCoreMetricsBiomeReporter();
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    v96 = swift_allocObject();
    *(v96 + 16) = v89;
    (v113)(v96 + OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_logger, v90, v81);
    v4 = v127;
    (v115)(v96 + OBJC_IVAR____TtC15SiriCoreMetrics28SiriCoreMetricsBiomeReporter_odmId, v92, v91);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_266A48250;
    *(v97 + 32) = v106[0];
    *(v97 + 40) = v96;
    *(v97 + 48) = v116;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE70, &qword_266A48268);
    v99 = *(v98 + 48);
    v100 = *(v98 + 52);
    swift_allocObject();

    v128 = sub_266A46160();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEE78, &qword_266A48270);
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    v104 = sub_266A46190();

    (*(v123 + 8))(v119, v124);
    *(v4 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter) = v104;
  }

  return v4;
}

uint64_t type metadata accessor for SiriCoreMetrics()
{
  result = qword_2800AEE98;
  if (!qword_2800AEE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriCoreMetrics.loadData()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_266A450E4, 0, 0);
}

uint64_t sub_266A450E4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_266A431E8;
  v3 = v0[2];

  return SiriCoreMetricsDataProvider.loadData()(v3);
}

uint64_t SiriCoreMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_266A451B0, 0, 0);
}

uint64_t sub_266A451B0()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_266A4525C;
  v3 = v0[9];

  return SiriCoreMetricsCalculator.doWork(_:)((v0 + 2), v3);
}

uint64_t sub_266A4525C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = v1[1];
  v5 = v1[3];
  v3[1] = v1[2];
  v3[2] = v5;
  *v3 = v4;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t SiriCoreMetrics.report(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_266A45394, 0, 0);
}

uint64_t sub_266A45394()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 72) + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter);
  v4 = v1[1];
  v3 = v1[2];
  v5 = *(MEMORY[0x277D04440] + 4);
  v8 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_266A4545C;

  return v8(v0 + 16);
}

uint64_t sub_266A4545C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A45590, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SiriCoreMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter);

  v6 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  v7 = sub_266A46040();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t SiriCoreMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider);

  v4 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator);

  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter);

  v6 = OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_odmId;
  v7 = sub_266A46040();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_266A45784(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_266A457A8, 0, 0);
}

uint64_t sub_266A457A8()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_266A42ACC;
  v3 = v0[2];

  return SiriCoreMetricsDataProvider.loadData()(v3);
}

uint64_t sub_266A45850(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = *v2;
  return MEMORY[0x2822009F8](sub_266A45878, 0, 0);
}

uint64_t sub_266A45878()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsCalculator);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_266A45924;
  v3 = v0[9];

  return SiriCoreMetricsCalculator.doWork(_:)((v0 + 2), v3);
}

uint64_t sub_266A45924()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = v1[1];
  v5 = v1[3];
  v3[1] = v1[2];
  v3[2] = v5;
  *v3 = v4;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_266A45A40(_OWORD *a1)
{
  v3 = a1[1];
  *(v2 + 64) = *a1;
  *(v2 + 80) = v3;
  *(v2 + 96) = a1[2];
  *(v2 + 112) = *v1;
  return MEMORY[0x2822009F8](sub_266A45A74, 0, 0);
}

uint64_t sub_266A45A74()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC15SiriCoreMetrics15SiriCoreMetrics_siriCoreMetricsReporter);
  v2 = *(MEMORY[0x277D04440] + 4);
  v7 = (*MEMORY[0x277D04440] + MEMORY[0x277D04440]);
  v3 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  v4 = *(v0 + 96);
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_266A45B40;

  return v7(v0 + 16);
}

uint64_t sub_266A45B40()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266A45C74, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_266A45DAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266A45DFC()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266A46040();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}