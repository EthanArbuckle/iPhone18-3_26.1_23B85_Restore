id MusicMomentHandler.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = CFAbsoluteTimeGetCurrent();
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CD6038]) init];
  v2 = closure #1 in closure #1 in variable initialization expression of MusicMomentHandler.controller();
  [v1 setRequest_];

  *(v0 + 168) = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MusicMomentHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t MusicMomentHandler.__deallocating_deinit()
{
  outlined destroy of weak MusicMomentHandlerDelegate?(v0 + 136);
  v1 = *(v0 + 152);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:);

  return closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for MPPropertySet(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined destroy of (String, MPPropertySet)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)(void *a1, void *a2, void *a3, int a4, char *a5)
{
  v254 = a4;
  v253 = a1;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v258 = *(v252 - 8);
  v9 = *(v258 + 64);
  MEMORY[0x28223BE20](v252);
  v251 = &v224 - v10;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v257 = *(v250 - 8);
  v11 = *(v257 + 64);
  MEMORY[0x28223BE20](v250);
  v249 = &v224 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v243 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v246 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v245 = &v224 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v224 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  result = MEMORY[0x28223BE20](v25);
  v30 = &v224 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFADD__(static MetricsPublisher.updateCount, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v242 = a2;
  v237 = v14;
  v238 = v13;
  v239 = a5;
  v241 = a3;
  ++static MetricsPublisher.updateCount;
  v240 = v5;
  v255 = v26;
  v31 = [objc_allocWithZone(v5) init];
  v32 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_isFaked;
  swift_beginAccess();
  v31[v32] = 1;
  v235 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher;
  v33 = *&v31[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher];
  swift_beginAccess();
  *(v33 + 16) = 1;
  v34 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher;
  v35 = *&v31[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
  swift_getKeyPath();
  v248 = v25;
  swift_getKeyPath();
  *&v266 = 300.0;

  static Published.subscript.setter();
  Date.init()();
  v256 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher;
  v36 = *&v31[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  v244 = v34;
  v37 = *&v31[v34];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = v248;

  v247 = v30;
  Date.addingTimeInterval(_:)();
  v39 = *(v255 + 56);
  v39(v24, 0, 1, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v245;
  outlined init with copy of Date?(v24, v245);

  static Published.subscript.setter();
  outlined destroy of Date?(v24);
  v41 = v253;
  if ([v253 supportsDistanceSplits])
  {
    v42 = *&v31[v244];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    Date.addingTimeInterval(_:)();
    v39(v24, 0, 1, v38);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v24, v40);
    v43 = v31;
    static Published.subscript.setter();
    outlined destroy of Date?(v24);
  }

  v44 = *&v31[v256];
  v45 = v246;
  if (v254)
  {
    (*(v255 + 16))(v246, v247, v38);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v39(v45, v46, 1, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v45, v24);

  static Published.subscript.setter();
  outlined destroy of Date?(v45);
  v47 = *&v31[v256];
  swift_getKeyPath();
  swift_getKeyPath();
  v266 = v41;
  swift_retain_n();
  v48 = v41;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v49 = v266;
  [v266 identifier];

  v50 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher;
  v51 = *&v31[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v266 = 140.0;
  LOBYTE(v267) = 0;

  static Published.subscript.setter();
  v52 = *&v31[v50];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v266 = 140.0;
  LOBYTE(v267) = 0;

  static Published.subscript.setter();
  v53 = *&v31[v50];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v266 = 170.0;
  LOBYTE(v267) = 0;

  static Published.subscript.setter();
  v54 = *&v31[v50];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v266) = 0;

  static Published.subscript.setter();
  v55 = *&v31[v50];

  specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(v56);

  v57 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher;
  v58 = *&v31[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v266 = 100.0;

  static Published.subscript.setter();
  v59 = *&v31[v57];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v266 = 100.0;

  static Published.subscript.setter();
  v236 = v48;
  v60 = [v48 effectiveTypeIdentifier];
  v61 = v242;
  specialized static FakeValueGenerator.staticValues(activityType:formattingManager:)(v242, v60, &v266);
  v62 = *&v266;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v62;
  v63 = v31;
  static Published.subscript.setter();
  v64 = v267;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v64;
  v65 = v63;
  static Published.subscript.setter();
  v66 = v268;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v66;
  v67 = v65;
  static Published.subscript.setter();
  v68 = v269;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v68;
  v69 = v67;
  static Published.subscript.setter();
  v70 = v270;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v70;
  v71 = v69;
  static Published.subscript.setter();
  v72 = v272;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v72;
  LOBYTE(v260) = 0;
  v73 = v71;
  static Published.subscript.setter();
  v74 = v271;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v74;
  LOBYTE(v260) = 0;
  v75 = v73;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 3.18;
  v76 = v75;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 10.0;
  v77 = v76;
  static Published.subscript.setter();
  v78 = *&v77[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 20;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 76.2;
  LOBYTE(v260) = 0;
  v79 = v77;
  static Published.subscript.setter();
  result = [v61 unitManager];
  if (!result)
  {
    goto LABEL_21;
  }

  v80 = result;
  v81 = [result userDistanceHKUnitForDistanceType_];

  v242 = v81;
  specialized static ChartDataProvider.fakeElevationData(unit:)(v81);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v82 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v82;
  v83 = v79;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 170.0;
  LOBYTE(v260) = 0;
  v84 = v83;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 170.0;
  LOBYTE(v260) = 0;
  v85 = v84;
  static Published.subscript.setter();
  v86 = v235;
  v87 = *&v31[v235];

  specialized static ChartDataProvider.fakePowerData(values:)(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v88 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v88;
  static Published.subscript.setter();
  v89 = *&v31[v86];

  specialized static MetricsPublisher.fakePowerMetrics(with:)(v90);

  v91 = *&v85[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher];

  specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)();

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 27.0;
  v92 = v85;
  static Published.subscript.setter();
  v93 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher;
  v94 = *&v92[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v95 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v95;
  static Published.subscript.setter();
  v96 = *&v92[v93];
  v97 = *&v31[v86];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v260 == 1)
  {
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v98, 0.0, 500.0);
    v100 = v99;
    *&static MetricsPublisher.totalPower = v99 + *&static MetricsPublisher.totalPower;
  }

  else
  {
    v100 = aBlock;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v100;
  static Published.subscript.setter();
  v101 = *&v92[v93];
  v102 = *&v31[v86];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v234 = v31;
  v233 = v57;
  if (v260 == 1)
  {
    v103 = static MetricsPublisher.updateCount;
    if (static MetricsPublisher.updateCount <= 1)
    {
      v103 = 1;
    }

    v104 = *&static MetricsPublisher.totalPower / v103;
  }

  else
  {
    v104 = aBlock;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v104;
  static Published.subscript.setter();
  v105 = *&v92[v93];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v106 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v106;
  static Published.subscript.setter();
  v107 = *&v92[v93];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.26;

  static Published.subscript.setter();
  v235 = *&v92[v93];
  v108 = objc_opt_self();
  v246 = v108;

  v109 = [v108 minuteUnit];
  v245 = objc_opt_self();
  v110 = [v245 quantityWithUnit:v109 doubleValue:5.0];

  v111 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v110];
  v112 = v243;
  UUID.init()();
  v113 = type metadata accessor for WorkoutStep();
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  v116 = COERCE_DOUBLE(swift_allocObject());
  v117 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v260 = 0;
  aBlock = 0.0;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v118 = v249;
  Published.init(initialValue:)();
  v119 = *(v257 + 32);
  v257 += 32;
  v231 = v119;
  v119(*&v116 + v117, v118, v250);
  *(*&v116 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(*&v116 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v120 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(aBlock) = 0;
  v121 = v251;
  Published.init(initialValue:)();
  v122 = *(v258 + 32);
  v258 += 32;
  v230 = v122;
  v122(*&v116 + v120, v121, v252);
  *(*&v116 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(*&v116 + 16) = 0;
  swift_beginAccess();
  v265 = v111;
  v229 = type metadata accessor for NLSessionActivityGoal();
  v123 = v111;
  Published.init(initialValue:)();
  swift_endAccess();
  v124 = v236;
  *(*&v116 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v236;
  v226 = v92;
  v125 = v237;
  v225 = v93;
  v126 = *(v237 + 16);
  v227 = v237 + 16;
  v228 = v126;
  v127 = v238;
  v126(*&v116 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v112, v238);
  swift_getKeyPath();
  swift_getKeyPath();
  v260 = 0;
  aBlock = 0.0;
  v236 = v124;

  static Published.subscript.setter();

  v237 = *(v125 + 8);
  v128 = v112;
  (v237)(v112, v127);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v116;
  static Published.subscript.setter();
  v129 = *&v92[v225];

  v130 = [v246 minuteUnit];
  v131 = [v245 quantityWithUnit:v130 doubleValue:5.0];

  v132 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v131];
  UUID.init()();
  v133 = *(v113 + 48);
  v134 = *(v113 + 52);
  v135 = COERCE_DOUBLE(swift_allocObject());
  v136 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v260 = 0;
  aBlock = 0.0;
  v137 = v249;
  Published.init(initialValue:)();
  v231(*&v135 + v136, v137, v250);
  *(*&v135 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(*&v135 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v138 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(aBlock) = 0;
  v139 = v251;
  Published.init(initialValue:)();
  v230(*&v135 + v138, v139, v252);
  *(*&v135 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(*&v135 + 16) = 1;
  swift_beginAccess();
  v265 = v132;
  v140 = v132;
  Published.init(initialValue:)();
  swift_endAccess();
  v141 = v236;
  *(*&v135 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v236;
  v142 = v128;
  v228(*&v135 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v128, v127);
  swift_getKeyPath();
  swift_getKeyPath();
  v260 = 0;
  aBlock = 0.0;
  v143 = v141;

  static Published.subscript.setter();

  (v237)(v142, v127);
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v135;
  static Published.subscript.setter();
  v144 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher;
  v145 = v226;
  v146 = *&v226[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v147 = *&v253;
  aBlock = *&v253;
  v148 = v143;

  static Published.subscript.setter();
  v149 = *&v145[v144];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v147;
  v150 = v148;

  static Published.subscript.setter();
  v151 = v246;
  v152 = [v246 mileUnit];
  v153 = [v245 quantityWithUnit:v152 doubleValue:1.0];

  v154 = [v151 meterUnit];
  [v153 doubleValueForUnit_];
  v156 = v155;

  v157 = v156 * 0.125;
  v159 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher;
  v160 = *&v145[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 57.0;
  v158 = v157;
  *&v260 = v158;
  BYTE4(v260) = 0;

  static Published.subscript.setter();
  v161 = *&v145[v159];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  v162 = *&v145[v159];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 57.0;

  static Published.subscript.setter();
  v163 = *&v145[v159];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v157 + 400.0;

  static Published.subscript.setter();
  v164 = *&v145[v159];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 400.0;

  static Published.subscript.setter();
  v165 = *&v145[v159];
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 4600.0;

  static Published.subscript.setter();
  v166 = *&v145[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher];

  v167 = COERCE_DOUBLE(specialized static RaceChartPoint.canonicalRoutePoints.getter());
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v167;
  static Published.subscript.setter();
  v168 = v234;
  v169 = v256;
  v170 = *&v234[v256];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;

  static Published.subscript.setter();
  v171 = *&v168[v169];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  v172 = *&v168[v169];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 0;

  static Published.subscript.setter();
  v173 = *&v168[v169];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = (v254 & 1) == 0;

  static Published.subscript.setter();
  v174 = *&v168[v169];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock) = 1;

  static Published.subscript.setter();
  v175 = *&v168[v169];
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 1;

  static Published.subscript.setter();
  v176 = v244;
  v177 = *&v168[v244];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v178 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v178;
  v179 = v145;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v180 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v180;
  v181 = v179;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v182 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v182;
  v183 = v181;
  static Published.subscript.setter();
  v184 = v233;
  v185 = *&v168[v233];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v186 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v186;
  v187 = v183;
  static Published.subscript.setter();
  v188 = *&v168[v184];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v189 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v189;
  v190 = v187;
  static Published.subscript.setter();
  v258 = OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher;
  v191 = *&v190[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher];

  v192 = COERCE_DOUBLE(specialized static HKActivitySummary.fake(activityMoveMode:)(v239));
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v192;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 90.0;
  v193 = v190;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 90.0;
  v194 = v193;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 89.9;
  v195 = v194;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 1;
  v196 = v195;
  static Published.subscript.setter();
  v197 = *&v168[v176];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v198 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v198;
  v199 = v196;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v200 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v200;
  v201 = v199;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v202 = aBlock;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v202;
  v203 = v201;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 1.05;
  LOBYTE(v260) = 0;
  v204 = v203;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 1.05;
  LOBYTE(v260) = 0;
  v205 = v204;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.105;
  LOBYTE(v260) = 0;
  v206 = v205;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.105;
  LOBYTE(v260) = 0;
  v207 = v206;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.25;
  LOBYTE(v260) = 0;
  v208 = v207;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 0.25;
  LOBYTE(v260) = 0;
  v209 = v208;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = 731.52;
  LOBYTE(v260) = 0;
  v210 = v209;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *&aBlock = 7;
  LOBYTE(v260) = 0;
  v211 = v210;
  static Published.subscript.setter();
  v212 = *&v211[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_platterPublisher];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  v213 = COERCE_DOUBLE(swift_allocObject());
  *(*&v213 + 16) = xmmword_20B423A90;
  *(*&v213 + 32) = 0;
  *(*&v213 + 40) = &outlined read-only object #0 of static MetricPlatter.canonical();
  *(*&v213 + 33) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v213;

  static Published.subscript.setter();
  v214 = objc_opt_self();
  v215 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v216 = swift_allocObject();
  v217 = v240;
  *(v216 + 16) = v215;
  *(v216 + 24) = v217;
  v263 = partial apply for closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:);
  v264 = v216;
  aBlock = MEMORY[0x277D85DD0];
  v260 = 1107296256;
  v261 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v262 = &block_descriptor_28;
  v218 = _Block_copy(&aBlock);

  v219 = [v214 scheduledTimerWithTimeInterval:1 repeats:v218 block:1.0];
  _Block_release(v218);

  if (v241)
  {
    v220 = *&v190[v258];
    v221 = v241;

    v222 = [v221 isWheelchairUser];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = v222;
    static Published.subscript.setter();
    v223 = v211;
    [v221 addObserver_];

    (*(v255 + 8))(v247, v248);
  }

  else
  {
    (*(v255 + 8))(v247, v248);
  }

  return v211;
}

void closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    specialized static MetricsPublisher.fakeUpdate(publisher:)(Strong);
  }
}

char *static MetricsPublisher.fake(formattingManager:wheelchairUseCache:workoutPaused:)(void *a1, void *a2, int a3)
{
  v6 = specialized static GoalWorkoutConfiguration.canonical()();
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v8 = *&v6[v7];
  v9 = static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)(v8, a1, a2, a3, 1);

  return v9;
}

char *static MetricsPublisher.fakeDistanceGoalComplete(formattingManager:)(void *a1)
{
  v1 = static MetricsPublisher.fake(formattingManager:wheelchairUseCache:workoutPaused:)(a1, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return v2;
}

uint64_t MetricsPublisher.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher(char *a1, uint64_t *a2)
{
  return key path setter for WorkoutStatePublisher.workoutStarted : WorkoutStatePublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for WorkoutStatePublisher.workoutStartDate : WorkoutStatePublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for WorkoutStatePublisher.workoutStartDate : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of Date?(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t key path getter for WorkoutStatePublisher.segmentIndex : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.segmentIndex : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for PlatterPublisher.metricPlatters : PlatterPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for PlatterPublisher.metricPlatters : PlatterPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for PlatterPublisher.metricPlatters : PlatterPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for PlatterPublisher.metricPlatters : PlatterPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MetricsPublisher.elevationChartData : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t key path getter for MetricsPublisher.distanceGoalFinishTime : MetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for MetricsPublisher.distanceGoalFinishTime : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return static Published.subscript.setter();
}

void specialized static FakeValueGenerator.staticValues(activityType:formattingManager:)(id a1@<X1>, uint64_t a2@<X0>, double *a3@<X8>)
{
  if (a2 <= 45)
  {
    if (a2 > 30)
    {
      if (a2 == 31)
      {
        v27 = [a1 unitManager];
        if (!v27)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v28 = v27;
        v29 = [v27 userDistancePaddleSportsHKUnit];

        LODWORD(v28) = [v29 _isMetricDistance];
        v10 = 2414.02;
        if (v28)
        {
          v10 = 3000.0;
          v12 = 1.38889;
        }

        else
        {
          v12 = 1.34112;
        }

        v8 = 0.0;
      }

      else
      {
        if (a2 != 35)
        {
          goto LABEL_65;
        }

        v14 = [a1 unitManager];
        if (!v14)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v15 = v14;
        v16 = [v14 userDistanceRowingHKUnit];

        LODWORD(v15) = [v16 _isMetricDistance];
        v10 = 2011.68;
        if (v15)
        {
          v10 = 2000.0;
        }

        v8 = 0.0;
        v12 = 4.167;
      }

      v9 = 0.0;
LABEL_58:
      v13 = 0.0;
      v11 = 0.0;
      v26 = v12;
LABEL_74:
      *a3 = v26;
      a3[1] = v12;
      a3[2] = v11;
      a3[3] = v13;
      a3[4] = v10;
      a3[5] = v9;
      a3[6] = v8;
      return;
    }

    if (a2 == 13)
    {
      v23 = [a1 unitManager];
      if (!v23)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v24 = v23;
      v25 = [v23 userDistanceCyclingHKUnit];

      LODWORD(v24) = [v25 _isMetricDistance];
      v20 = v24 == 0;
      v10 = 24140.2;
      if (v24)
      {
        v10 = 24000.0;
        v11 = 8.89;
      }

      else
      {
        v11 = 8.94;
      }

      v21 = 6.7056;
      v22 = 6.66667;
      goto LABEL_41;
    }

    if (a2 != 24)
    {
      goto LABEL_65;
    }

LABEL_31:
    v17 = [a1 unitManager];
    if (!v17)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v18 = v17;
    v19 = [v17 userDistanceWalkingRunningHKUnit];

    LODWORD(v18) = [v19 _isMetricDistance];
    v20 = v18 == 0;
    v10 = 2414.02;
    if (v18)
    {
      v10 = 3000.0;
      v11 = 1.67;
    }

    else
    {
      v11 = 1.68;
    }

    v21 = 1.34112;
    v22 = 1.28215128;
LABEL_41:
    if (v20)
    {
      v12 = v21;
    }

    else
    {
      v12 = v22;
    }

    v8 = 0.0;
    v9 = 0.0;
    v13 = 0.0;
    v26 = v12;
    goto LABEL_74;
  }

  if (a2 <= 59)
  {
    if (a2 == 46)
    {
      v34 = [a1 unitManager];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 userLapLengthHKUnit];

        LODWORD(v35) = [v36 _isMetricDistance];
        v10 = 457.2;
        if (v35)
        {
          v10 = 500.0;
          v12 = 1.0;
        }

        else
        {
          v12 = 0.9144;
        }

        v8 = 0.0;
        v9 = 0.0;
        v13 = 0.0;
        v11 = 0.0;
LABEL_64:
        v26 = 0.0;
        goto LABEL_74;
      }

      goto LABEL_81;
    }

    if (a2 != 52)
    {
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  if (a2 == 60)
  {
    v30 = [a1 unitManager];
    if (!v30)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v31 = v30;
    v32 = [v30 userDistanceCrossCountrySkiingHKUnit];

    v33 = [v32 _isMetricDistance];
    v9 = 2500.0;
    if (!v33)
    {
      v9 = 914.4;
    }

    v10 = 2414.02;
    if (v33)
    {
      v10 = 3000.0;
      v12 = 3.05556;
    }

    else
    {
      v12 = 3.12928;
    }

    v8 = 0.0;
    goto LABEL_58;
  }

  if (a2 == 61 || a2 == 67)
  {
    v4 = [a1 unitManager];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 userDistanceDownhillSnowSportsHKUnit];

      v7 = [v6 _isMetricDistance];
      if (v7)
      {
        v8 = 3000.0;
      }

      else
      {
        v8 = 3048.0;
      }

      v9 = 2500.0;
      if (!v7)
      {
        v9 = 2438.4;
      }

      v10 = 2414.02;
      if (v7)
      {
        v10 = 3000.0;
      }

      v11 = 11.176;
      if (v7)
      {
        v11 = 11.1111;
      }

      v12 = 4.47041;
      if (v7)
      {
        v12 = 4.44444;
      }

      v13 = 0.0;
      goto LABEL_64;
    }

    goto LABEL_76;
  }

LABEL_65:
  v37 = [a1 unitManager];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 userDistanceWalkingRunningHKUnit];

    v40 = [v39 _isMetricDistance];
    v9 = 50.0;
    if (!v40)
    {
      v9 = 45.72;
    }

    v10 = 2414.02;
    if (v40)
    {
      v10 = 3000.0;
      v13 = 3.0303;
    }

    else
    {
      v13 = 2.98;
    }

    v11 = 3.33;
    if (!v40)
    {
      v11 = 3.83;
    }

    v8 = 0.0;
    v12 = v13;
    v26 = v13;
    goto LABEL_74;
  }

LABEL_82:
  __break(1u);
}

uint64_t specialized static FakeValueGenerator.liveValues(activityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 45)
  {
    if (a1 == 46)
    {
      result = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(46, 0.9, 0.93);
      v14 = v21;
      v12 = 0;
      v10 = 0;
      v5 = 0;
      goto LABEL_11;
    }

    if (a1 != 52)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (a1 == 13)
  {
    v19 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(13, 6.5, 7.0);
    v5 = v20;
    result = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v19, 6.5, 7.0);
    v18 = &qword_20B4361E0;
    goto LABEL_9;
  }

  if (a1 == 24)
  {
LABEL_7:
    v15 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 1.2, 1.4);
    v5 = v16;
    result = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v15, 1.2, 1.4);
    v18 = &qword_20B4361B0;
LABEL_9:
    v14 = vld1q_dup_f64(v18);
    v14.f64[0] = v17;
    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

LABEL_4:
  v3 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 2.9, 3.1);
  v5 = v4;
  v6 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v3, 2.9, 3.1);
  v22 = v7;
  v8 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, 2.9, 3.1);
  v10 = v9;
  result = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v8, 3282.01, 3582.01);
  v13 = &qword_20B436210;
  v14 = vld1q_dup_f64(v13);
  v14.f64[0] = v22;
LABEL_11:
  *a2 = v5;
  *(a2 + 8) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = 0;
  *(a2 + 40) = v12;
  *(a2 + 48) = 0;
  return result;
}

uint64_t specialized static MetricsPublisher.fakePowerMetrics(with:)(uint64_t a1)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 0.0, 500.0);
  *&static MetricsPublisher.totalPower = v1 + *&static MetricsPublisher.totalPower;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = static MetricsPublisher.updateCount;
  if (static MetricsPublisher.updateCount <= 1)
  {
    v2 = 1;
  }

  v3 = *&static MetricsPublisher.totalPower / v2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 == 0.0)
  {
    v4 = specialized static LivePowerZone.canonicals()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    *(v5 + 16) = v4;
    swift_beginAccess();
    *(v5 + 24) = 0;
    *(v5 + 32) = 257;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = *&v5;

    static Published.subscript.setter();
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19)
    {
    }

    else
    {
      swift_beginAccess();
      v7 = *(*&v18 + 16);
      if (v7 >> 62)
      {
        goto LABEL_37;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      swift_beginAccess();
      if (v8)
      {
        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x20F2E7A20](v9, v7);
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              v8 = __CocoaSet.count.getter();
              goto LABEL_11;
            }

            v10 = *(v7 + 8 * v9 + 32);

            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          v12 = *(v10 + 32);
          if (v12)
          {
            v13 = *(v10 + 16);
          }

          else
          {
            v13 = 0.0;
          }

          v14 = *(v10 + 40);
          v15 = __OFSUB__(v14, 1);
          v16 = v14 - 1;
          if (v15)
          {
            goto LABEL_35;
          }

          if (v12 == v16)
          {
            v17 = INFINITY;
          }

          else
          {
            v17 = *(v10 + 24);
          }

          if (v13 > v17)
          {
            goto LABEL_36;
          }

          if (v13 > v18 || v18 >= v17)
          {
          }

          else
          {
            swift_beginAccess();
            *(v10 + 48) = *(v10 + 48) + 3.0;

            *(*&v18 + 24) = v9;
            *(*&v18 + 32) = 0;
          }

          ++v9;
        }

        while (v11 != v8);
      }

      swift_beginAccess();
      *(*&v18 + 33) = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(uint64_t a1)
{
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 130.0, 160.0);
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {
  }

  else
  {
    v3 = specialized static LiveHeartRateZone.canonicals()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    *(v4 + 16) = v3;
    swift_beginAccess();
    *(v4 + 24) = 0;
    *(v4 + 32) = 257;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = *&v4;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v17 != 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v18)
    {
    }

    else
    {
      swift_beginAccess();
      v6 = *(*&v17 + 16);
      if (v6 >> 62)
      {
        goto LABEL_35;
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

      swift_beginAccess();
      if (v7)
      {
        v8 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x20F2E7A20](v8, v6);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_29:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              v7 = __CocoaSet.count.getter();
              goto LABEL_9;
            }

            v9 = *(v6 + 8 * v8 + 32);

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_29;
            }
          }

          v11 = *(v9 + 32);
          if (v11)
          {
            v12 = *(v9 + 16);
          }

          else
          {
            v12 = 0.0;
          }

          v13 = *(v9 + 40);
          v14 = __OFSUB__(v13, 1);
          v15 = v13 - 1;
          if (v14)
          {
            goto LABEL_33;
          }

          if (v11 == v15)
          {
            v16 = INFINITY;
          }

          else
          {
            v16 = *(v9 + 24);
          }

          if (v12 > v16)
          {
            goto LABEL_34;
          }

          if (v12 > v17 || v17 >= v16)
          {
          }

          else
          {
            swift_beginAccess();
            *(v9 + 48) = *(v9 + 48) + 5.0;

            *(*&v17 + 24) = v8;
            *(*&v17 + 32) = 0;
          }

          ++v8;
        }

        while (v10 != v7);
      }

      swift_beginAccess();
      *(*&v17 + 33) = 0;
      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t specialized static MetricsPublisher.fakeUpdate(publisher:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v121 - v4;
  v6 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = type metadata accessor for Date();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  result = outlined destroy of Date?(v5);
  if (v8 != 1)
  {
    return result;
  }

  if (__OFADD__(static MetricsPublisher.updateCount, 1))
  {
    __break(1u);
    goto LABEL_32;
  }

  ++static MetricsPublisher.updateCount;
  v10 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_elapsedTimeMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = static Published.subscript.modify();
  *v12 = *v12 + 1.0;
  v11(v124, 0);

  v13 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = static Published.subscript.modify();
  *v15 = *v15 + 0.02;
  v14(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = static Published.subscript.modify();
  *v17 = *v17 + 1.0;
  v16(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = static Published.subscript.modify();
  *v19 = *v19 + 1.0;
  v18(v124, 0);

  v20 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = static Published.subscript.modify();
  *v22 = *v22 + 3.0;
  v21(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = static Published.subscript.modify();
  *v24 = *v24 + 3.0;
  v23(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = static Published.subscript.modify();
  *v26 = *v26 + -3.0;
  v25(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (fmod(v124[0], 3.0) != 0.0)
  {
    goto LABEL_14;
  }

  v27 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_energyMetricsPublisher];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = static Published.subscript.modify();
  *v29 = *v29 + 1.0;
  v28(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = static Published.subscript.modify();
  *v31 = *v31 + 1.0;
  v30(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v32 = static Published.subscript.modify();
  *v33 = *v33 + 7.5;
  v32(v124, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v124[0];
  if (*&v124[0])
  {
    goto LABEL_7;
  }

  if (one-time initialization token for outdoorRun != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v34 = COERCE_DOUBLE(static FIUIWorkoutActivityType.outdoorRun);
LABEL_7:
    specialized static FakeValueGenerator.liveValues(activityType:)([*&v34 effectiveTypeIdentifier], v124);
    v35 = v124[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v35;
    v36 = a1;
    static Published.subscript.setter();
    v37 = v124[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v37;
    v38 = v36;
    static Published.subscript.setter();
    v39 = v124[2];
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v39;
    v40 = v38;
    static Published.subscript.setter();
    v41 = v124[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v41;
    v42 = v40;
    static Published.subscript.setter();
    v43 = v124[5];
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v43;
    v123 = 0;
    v44 = v42;
    v45 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v45, 3.0, 3.25);
    v47 = v46;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v47;
    v48 = v44;
    v49 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v49, 1.0, 6.0);
    v51 = v50;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v51;
    v52 = v48;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v123)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = v122 + 1.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v53;
    v123 = 0;
    v54 = v52;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v123)
    {
      v55 = 1.0;
    }

    else
    {
      v55 = v122 + 1.0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v55;
    v123 = 0;
    v56 = v54;
    v57 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v57, 150.0, 180.0);
    v59 = v58;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v59;
    v123 = 0;
    v60 = v56;
    v61 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v61, 150.0, 180.0);
    v63 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v63;
    v123 = 0;
    v64 = v60;
    static Published.subscript.setter();
    specialized static MetricsPublisher.fakePowerMetrics(with:)(*&v64[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_powerMetricsPublisher]);
    v65 = *&v64[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_waterTemperatureMetricsPublisher];
    specialized static MetricsPublisher.fakeWaterTemperatureMetrics(with:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v66 = static Published.subscript.modify();
    *v67 = *v67 + 7.5;
    v66(&v122, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v68 = static Published.subscript.modify();
    *v69 = *v69 + 7.5;
    v68(&v122, 0);

    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v70, 3.0, 3.25);
    v72 = v71;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v72;
    v73 = v64;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v74 = static Published.subscript.modify();
    *v75 = *v75 + 1.0;
    v74(&v122, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v76 = static Published.subscript.modify();
    *v77 = *v77 + 1.0;
    v76(&v122, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v78 = static Published.subscript.modify();
    *v79 = *v79 + 7.5;
    v78(&v122, 0);

    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v80, 3.0, 3.25);
    v82 = v81;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v82;
    v83 = v73;
    v84 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v84, 0.5, 5.0);
    v86 = v85;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v86;
    v123 = 0;
    v87 = v83;
    v88 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v88, 0.5, 5.0);
    v90 = v89;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v90;
    v123 = 0;
    v91 = v87;
    v92 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v92, 0.01, 0.2);
    v94 = v93;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v94;
    v123 = 0;
    v95 = v91;
    v96 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v96, 0.01, 0.2);
    v98 = v97;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v98;
    v123 = 0;
    v99 = v95;
    v100 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v100, 0.05, 0.5);
    v102 = v101;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v102;
    v123 = 0;
    v103 = v99;
    v104 = static Published.subscript.setter();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v104, 0.05, 0.5);
    v106 = v105;
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v106;
    v123 = 0;
    v107 = v103;
    static Published.subscript.setter();

LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (fmod(v122, 5.0) == 0.0)
    {
      specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(*&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher]);
      v109 = MetricsPublisher.descent.modify(&v122);
      if ((*(v108 + 8) & 1) == 0)
      {
        *v108 = *v108 + 3.5;
      }

      (v109)(&v122, 0);
    }

    specialized static MetricsPublisher.fakeHeartRateMetrics(with:)(*&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_heartRateMetricsPublisher]);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (fmod(v122, 20.0) == 0.0)
    {
      v110 = *&a1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_lapsMetricsPublisher];
      swift_getKeyPath();
      swift_getKeyPath();
      v111 = static Published.subscript.modify();
      if (*v112 == -1)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      ++*v112;
      v111(&v122, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v113 = static Published.subscript.modify();
      *v114 = *v114 + 1.0;
      v113(&v122, 0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (fmod(v122, 60.0) != 0.0)
    {
      goto LABEL_26;
    }

    v116 = MetricsPublisher.downhillRunCount.modify(&v122);
    if (*(v115 + 8))
    {
      (v116)(&v122, 0);
      goto LABEL_26;
    }

    if (*v115 != -1)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  ++*v115;
  (v116)(&v122, 0);
LABEL_26:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v122 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v117 = static Published.subscript.modify();
    *v118 = *v118 + -1.0;
    v117(&v122, 0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v122 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v119 = static Published.subscript.modify();
    *v120 = *v120 + -1.0;
    v119(&v122, 0);
  }

  return result;
}

void partial apply for closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in static MetricsPublisher.fake(activityType:formattingManager:wheelchairUseCache:workoutPaused:activityMoveMode:)();
}

uint64_t static MetricSlotProvider.standardMetricSlots.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static MetricSlotProvider.standardMetricSlots = a1;
  return result;
}

uint64_t static MetricSlotProvider.standardMetricsAllowed.setter(uint64_t a1)
{
  result = swift_beginAccess();
  static MetricSlotProvider.standardMetricsAllowed = a1;
  return result;
}

uint64_t getEnumTagSinglePayload for MetricSlotProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricSlotProvider(_WORD *result, int a2, int a3)
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

uint64_t LiveHeartRateZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  result = swift_beginAccess();
  *(v10 + 48) = a5;
  v12 = floor(a3);
  v13 = floor(a4);
  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v12;
    *(v10 + 24) = v13;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    return v10;
  }

  return result;
}

uint64_t LiveHeartRateZone.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of Any?(a1, v7);
  if (v8 == 0.0)
  {
    outlined destroy of Any?(v7);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  swift_beginAccess();
  v3 = v1[6];
  swift_beginAccess();
  if (v3 != *(v6 + 48))
  {

    goto LABEL_7;
  }

  v8 = v2;
  v7[0] = v6;

  v4 = Zone.isEqual(to:)(v7);

  __swift_destroy_boxed_opaque_existential_1Tm_5(v7);
  return v4 & 1;
}

uint64_t LiveHeartRateZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 48) = 0;
  result = swift_beginAccess();
  *(v5 + 48) = a5;
  v12 = floor(a3);
  v13 = floor(a4);
  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    return v5;
  }

  return result;
}

uint64_t LiveHeartRateZone.__allocating_init(from:)(uint64_t *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

uint64_t LiveHeartRateZone.init(from:)(uint64_t *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_5(a1);
  return v2;
}

uint64_t vtable thunk for Zone.isEqual(to:) dispatching to LiveHeartRateZone.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v3);
  v1 = LiveHeartRateZone.isEqual(to:)(v3);
  outlined destroy of Any?(v3);
  return v1 & 1;
}

uint64_t specialized static LiveHeartRateZone.canonicals()()
{
  v0 = [objc_opt_self() _countPerMinuteUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:178.6];

  if (one-time initialization token for defaultRestingHeartRate != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v2 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(v1, static HeartRateConfiguration.defaultRestingHeartRate);

    if (v2 >> 62)
    {
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
LABEL_15:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_15;
      }
    }

    v14 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v3 < 0)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v1 = MEMORY[0x20F2E7A20](v5, v2);
      }

      else
      {
        v1 = *(v2 + 8 * v5 + 32);
      }

      v6 = v1[2];
      v7 = v1[3];
      v8 = *(v1 + 4);
      v9 = *(v1 + 5);
      type metadata accessor for LiveHeartRateZone();
      v10 = swift_allocObject();
      *(v10 + 48) = 0;
      swift_beginAccess();
      *(v10 + 48) = 0;

      v11 = floor(v6);
      v12 = floor(v7);
      if (v11 > v12)
      {
        break;
      }

      ++v5;
      *(v10 + 16) = v11;
      *(v10 + 24) = v12;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v13 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v3 == v5)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for NLSessionActivityGoalError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for NLSessionActivityGoalError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t String.utf8Data.getter(uint64_t a1, unint64_t a2)
{

  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a1, a2);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data._Representation?(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data._Representation?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t closure #2 in Data.init<A>(_:)@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_20B42FB30;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_20B42FB30;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x20F2E42A0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined consume of Data._Representation?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void static HeartRateConfiguration.fetchConfigurationType(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v5 = static HeartRateConfiguration.valueStore;
  v6 = qword_27C75FF10;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  v8 = v5;
  v9 = v6;

  v10 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45CA90);
  v12[4] = partial apply for closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:);
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_3_3;
  v11 = _Block_copy(v12);

  [v8 numberForKey:v10 completion:v11];
  _Block_release(v11);
}

void closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:)(void *a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.zones);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      if (a1)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v21 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = a2;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v18;
    *v12 = v18;
    _os_log_impl(&dword_20AEA4000, v9, v10, "%s Failed to retrieve configuration type from key-value store with error: %@", v11, 0x16u);
    outlined destroy of NSObject?(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    v19 = v11;
    a3 = v21;
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  if (a1)
  {
LABEL_7:
    v20 = a1;
    v23 = [v20 integerValue] == 1;
    a3(&v23);

    return;
  }

LABEL_9:
  v24 = 0;
  a3(&v24);
}

void static HeartRateConfiguration.set(configurationType:)(unsigned __int8 *a1)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v3 = static HeartRateConfiguration.valueStore;
  v2 = qword_27C75FF10;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45CA90);
  v13[0] = 0;
  v6 = [v3 setNumber:v4 forKey:v5 error:v13];

  v7 = v13[0];
  if (v6)
  {
    v13[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    v13[5] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v13[3] = &block_descriptor_29;
    v8 = _Block_copy(v13);
    v9 = v7;
    [v2 forceNanoSyncWithOptions:0 completion:v8];

    _Block_release(v8);
  }

  else
  {
    v10 = v13[0];
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void partial apply for closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:)(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  closure #1 in static HeartRateConfiguration.fetchConfigurationType(completion:)(a1, a2, *(v2 + 16));
}

uint64_t static MusicLibraryPlaylistsModel.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t key path getter for MusicLibraryPlaylistsModel.loadingLibraryPlaylists : MusicLibraryPlaylistsModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MusicLibraryPlaylistsModel.loadingLibraryPlaylists : MusicLibraryPlaylistsModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MusicLibraryPlaylistsModel.loadingLibraryPlaylists.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MusicLibraryPlaylistsModel.loadingLibraryPlaylists.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify;
}

uint64_t key path setter for MusicLibraryPlaylistsModel.$loadingLibraryPlaylists : MusicLibraryPlaylistsModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify;
}

uint64_t key path getter for MusicLibraryPlaylistsModel.libraryPlaylistSuggestions : MusicLibraryPlaylistsModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MusicLibraryPlaylistsModel.libraryPlaylistSuggestions : MusicLibraryPlaylistsModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return MusicLibraryPlaylistsModel.libraryPlaylistSuggestions.modify;
}

void MusicLibraryPlaylistsModel.loadingLibraryPlaylists.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MusicLibraryPlaylistsModel.$loadingLibraryPlaylists : MusicLibraryPlaylistsModel(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions : MusicLibraryPlaylistsModel(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D15MediaSuggestionVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MusicLibraryPlaylistsModel.$libraryPlaylistSuggestions.modify;
}

void MusicLibraryPlaylistsModel.$loadingLibraryPlaylists.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

Swift::Void __swiftcall MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v67 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v10, v6);
  v11 = specialized Collection.prefix(_:)(8);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount;
  v19 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v69 = v11;
    *(v1 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount) = v21;
    if (one-time initialization token for mediaPlayback == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static WOLog.mediaPlayback);
  swift_retain_n();

  v68 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v70 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v67 = v5;
    v28 = v27;
    v29 = swift_slowAlloc();
    v72 = v29;
    *v28 = 136315650;

    v30 = MEMORY[0x20F2E6D00](v69, v13, v15, v17);
    v31 = v15;
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, &v72);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2048;
    v35 = *(v1 + v18);

    *(v28 + 14) = v35;

    *(v28 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v31;

    v36 = *(v71 + 16);

    *(v28 + 24) = v36;

    _os_log_impl(&dword_20AEA4000, v24, v25, "[%s] LIBRARY_STATE: loadLibrarySuggestions called (attempt #%ld) - current suggestions count: %ld", v28, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v37 = v28;
    v5 = v67;
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = v72[2];

  if (v38)
  {
    swift_retain_n();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v70;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v72 = v44;
      *v43 = 136315394;
      v45 = MEMORY[0x20F2E6D00](v69, v42, v15, v17);
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v72);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v49 = *(v71 + 16);

      *(v43 + 14) = v49;

      _os_log_impl(&dword_20AEA4000, v39, v40, "[%s] LIBRARY_STATE: loadLibrarySuggestions called but suggestions already exist (%ld) - skipping", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v72 = v53;
      *v52 = 136315138;

      v54 = v69;
      v55 = MEMORY[0x20F2E6D00](v69, v70, v15, v17);
      v68 = v15;
      v56 = v55;
      v58 = v57;

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v72);

      *(v52 + 4) = v59;
      v15 = v68;
      v60 = v51;
      v61 = v54;
      _os_log_impl(&dword_20AEA4000, v50, v60, "[%s] LIBRARY_STATE: loadLibrarySuggestions starting - setting loadingLibraryPlaylists = true", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      v62 = v70;
      MEMORY[0x20F2E9420](v53, -1, -1);
      MEMORY[0x20F2E9420](v52, -1, -1);
    }

    else
    {

      v61 = v69;
      v62 = v70;
    }

    v63 = type metadata accessor for TaskPriority();
    (*(*(v63 - 8) + 56))(v5, 1, 1, v63);
    type metadata accessor for MainActor();

    v64 = static MainActor.shared.getter();
    v65 = swift_allocObject();
    v66 = MEMORY[0x277D85700];
    v65[2] = v64;
    v65[3] = v66;
    v65[4] = v61;
    v65[5] = v62;
    v65[6] = v15;
    v65[7] = v17;
    v65[8] = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v65);
  }
}

uint64_t closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMd, &_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMR);
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v14 = *(v13 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMd, &_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMR);
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v17 = *(v16 + 64) + 15;
  v8[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[21] = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[22] = v19;
  v8[23] = v18;

  return MEMORY[0x2822009F8](closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v19, v18);
}

uint64_t closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 232) = 1;

  static Published.subscript.setter();
  type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 56);
  v4 = type metadata accessor for Logger();
  *(v0 + 192) = __swift_project_value_buffer(v4, static WOLog.mediaPlayback);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x20F2E6D00](v10, v9, v8, v7);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] LIBRARY_REQUEST: Starting MusicKit library request - requesting playlists", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v16 = *(MEMORY[0x277CD7CF0] + 4);
  v17 = swift_task_alloc();
  *(v0 + 200) = v17;
  *v17 = v0;
  v17[1] = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  v18 = *(v0 + 160);
  v19 = *(v0 + 144);
  v20 = *(v0 + 88);

  return MEMORY[0x282124698](v20, v19);
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  }

  else
  {
    v5 = *(v2 + 176);
    v6 = *(v2 + 184);
    v7 = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{
  v31 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[7];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];
  if (v6)
  {
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[4];
    v12 = v0[5];
    v29 = v0[18];
    v14 = swift_slowAlloc();
    v28 = v7;
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x20F2E6D00](v13, v12, v11, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] LIBRARY_REQUEST: MusicKit library request - result: error or nil response", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    (*(v8 + 8))(v28, v29);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
  }

  v19 = v0[20];
  v21 = v0[16];
  v20 = v0[17];
  v23 = v0[14];
  v22 = v0[15];
  v24 = v0[11];
  v25 = v0[8];
  $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(v0[4], v0[5], v0[6], v0[7]);

  v26 = v0[1];

  return v26();
}

{
  v59 = v0;
  v55 = v0[24];
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[7];
  MusicLibraryResponse.items.getter();
  (*(v7 + 8))(v6, v8);
  (*(v4 + 32))(v1, v2, v5);
  v10 = *(v4 + 16);
  v10(v3, v1, v5);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v53 = v12;
    v13 = v0[15];
    v14 = v0[12];
    v51 = v0[13];
    v56 = v10;
    v16 = v0[6];
    v15 = v0[7];
    v18 = v0[4];
    v17 = v0[5];
    v19 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58 = v50;
    *v19 = 136315394;
    v20 = MEMORY[0x20F2E6D00](v18, v17, v16, v15);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v58);

    *(v19 + 4) = v22;
    v10 = v56;
    *(v19 + 12) = 2048;
    lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v23 = dispatch thunk of Collection.distance(from:to:)();
    v24 = *(v51 + 8);
    v24(v13, v14);
    *(v19 + 14) = v23;
    _os_log_impl(&dword_20AEA4000, v11, v53, "[%s] LIBRARY_REQUEST: MusicKit library request - result: success - found %ld playlists", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {
    v24 = *(v0[13] + 8);
    v24(v0[15], v0[12]);
  }

  v0[26] = v24;
  v25 = v0[24];
  v26 = v0[7];
  v10(v0[14], v0[17], v0[12]);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[13];
  v30 = v0[14];
  v32 = v0[12];
  if (v29)
  {
    v52 = v24;
    v34 = v0[6];
    v33 = v0[7];
    v57 = v28;
    v35 = v0[4];
    v36 = v0[5];
    v37 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58 = v54;
    *v37 = 136315394;
    v38 = MEMORY[0x20F2E6D00](v35, v36, v34, v33);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v58);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v44 = v31 + 8;
    v52(v30, v32);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v58);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_20AEA4000, v27, v57, "[%s] Library Playlists Response: %s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {

    v44 = v31 + 8;
    v24(v30, v32);
  }

  v0[27] = v44;
  v46 = swift_task_alloc();
  v0[28] = v46;
  *v46 = v0;
  v46[1] = closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();
  v47 = v0[17];
  v48 = v0[8];

  return MusicLibraryPlaylistsModel.createMSSuggestions(from:)(v47);
}

{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x2822009F8](closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions(), v4, v3);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[12];

  v2(v7, v8);
  (*(v6 + 8))(v4, v5);
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v15 = v0[8];
  $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(v0[4], v0[5], v0[6], v0[7]);

  v16 = v0[1];

  return v16();
}

uint64_t $defer #1 () in closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.mediaPlayback);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x20F2E6D00](a1, a2, a3, a4);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[%s] LIBRARY_STATE: loadLibrarySuggestions completing - setting loadingLibraryPlaylists = false", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = 0;

  return static Published.subscript.setter();
}

uint64_t MusicLibraryPlaylistsModel.createMSSuggestions(from:)(uint64_t a1)
{
  v2[44] = a1;
  v2[45] = v1;
  v3 = type metadata accessor for Playlist();
  v2[46] = v3;
  v4 = *(v3 - 8);
  v2[47] = v4;
  v5 = *(v4 + 64) + 15;
  v2[48] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
  v2[49] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[50] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[51] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[52] = v9;
  v2[53] = v8;

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v9, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v10 = *v1;
  *(*v1 + 464) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 424);
  v8 = *(v2 + 416);

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v8, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v7 = *v1;
  *(*v1 + 552) = a1;

  v4 = *(v2 + 424);
  v5 = *(v2 + 416);

  return MEMORY[0x2822009F8](MusicLibraryPlaylistsModel.createMSSuggestions(from:), v5, v4);
}

uint64_t MusicLibraryPlaylistsModel.createMSSuggestions(from:)()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 352);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  *(v0 + 432) = v4;
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = *(v2 + 36);
  *(v0 + 560) = v5;
  *(v0 + 440) = lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(&lazy protocol witness table cache variable for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v5) == *(v0 + 336))
  {
    v7 = *(v0 + 400);
    v6 = *(v0 + 408);
    v8 = *(v0 + 384);
    v9 = *(v0 + 360);

    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v7, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 344) = MEMORY[0x277D84F90];

    static Published.subscript.setter();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 448) = MEMORY[0x277D84F90];
    v12 = *(v0 + 560);
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 400);
    v17 = *(v0 + 376);
    v16 = *(v0 + 384);
    v18 = *(v0 + 368);
    v19 = dispatch thunk of Collection.subscript.read();
    (*(v17 + 16))(v16);
    v19(v0 + 304, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v20 = swift_task_alloc();
    *(v0 + 456) = v20;
    *v20 = v0;
    v20[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);
    v21 = *(v0 + 384);

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v21);
  }
}

{
  v1 = v0[58];
  v2 = objc_allocWithZone(MEMORY[0x277D27FB8]);
  v3 = v1;
  v4 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  v5 = [v2 initWithIntent:v3 bundleID:v4 suggestionSource:0];
  v0[59] = v5;

  v6 = [v5 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v0[60] = v8;
  v0[61] = v10;
  v11 = [v5 bundleID];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v0[62] = v12;
  v0[63] = v14;
  v15 = [v5 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v0[65] = v19;
  v0[64] = v17;
  v20 = [v5 artist];
  if (v20 && (v21 = v20, v22 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v24 = v23, v21, v24))
  {
    if (v12 == 0xD000000000000012 && 0x800000020B45A5C0 == v14)
    {
      v25 = v5;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v31 = v5;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (v12 == 0x6C7070612E6D6F63 && v14 == 0xEF636973754D2E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v26 = v5;
    if ([v26 suggestionSource] == 1)
    {
      v27 = [v26 editorialTags];
      v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = *(v28 + 16);

      if (v29)
      {
        v22 = 0x754D20656C707041;
      }

      else
      {
        v22 = 0;
      }

      if (v29)
      {
        v24 = 0xEB00000000636973;
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v32 = v5;
  }

  v22 = 0;
  v24 = 0;
LABEL_26:
  v0[67] = v24;
  v0[66] = v22;
  v33 = swift_task_alloc();
  v0[68] = v33;
  *v33 = v0;
  v33[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);

  return MSSuggestion.unifiedArtworkImage()();
}

{
  *(v0 + 16) = *(v0 + 480);
  v2 = *(v0 + 512);
  v1 = *(v0 + 520);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 472);
  v6 = *(v0 + 448);
  *(v0 + 32) = *(v0 + 552);
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = *(v0 + 528);
  *(v0 + 88) = v5;
  *(v0 + 96) = closure #1 in MusicLibraryPlaylistsModel.createMSSuggestions(from:);
  *(v0 + 104) = 0;
  outlined init with copy of WorkoutMediaSuggestion(v0 + 16, v0 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 448);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, *(v0 + 448));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v40 = *(v0 + 552);
  v41 = *(v0 + 512);
  v39 = *(v0 + 504);
  v12 = *(v0 + 496);
  v13 = *(v0 + 464);
  v14 = *(v0 + 472);
  v44 = *(v0 + 440);
  v45 = *(v0 + 560);
  v42 = *(v0 + 520);
  v43 = *(v0 + 432);
  v15 = *(v0 + 400);
  v16 = &v8[96 * v10];
  v37 = *(v0 + 528);
  v38 = *(v0 + 480);

  *(v8 + 2) = v11;
  v17 = *(v0 + 32);
  *(v16 + 2) = *(v0 + 16);
  *(v16 + 3) = v17;
  v18 = *(v0 + 48);
  v19 = *(v0 + 64);
  v20 = *(v0 + 96);
  *(v16 + 6) = *(v0 + 80);
  *(v16 + 7) = v20;
  *(v16 + 4) = v18;
  *(v16 + 5) = v19;
  *(v0 + 208) = v38;
  *(v0 + 224) = v40;
  *(v0 + 232) = v12;
  *(v0 + 240) = v39;
  *(v0 + 248) = v41;
  *(v0 + 256) = v42;
  *(v0 + 264) = v37;
  *(v0 + 280) = v14;
  *(v0 + 288) = closure #1 in MusicLibraryPlaylistsModel.createMSSuggestions(from:);
  *(v0 + 296) = 0;
  outlined destroy of WorkoutMediaSuggestion(v0 + 208);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v15 + v45) == *(v0 + 336))
  {
    v22 = *(v0 + 400);
    v21 = *(v0 + 408);
    v23 = *(v0 + 384);
    v24 = *(v0 + 360);

    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v22, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMd, &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVyAC8PlaylistVGGMR);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 344) = v8;

    static Published.subscript.setter();

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    *(v0 + 448) = v8;
    v27 = *(v0 + 560);
    v29 = *(v0 + 432);
    v28 = *(v0 + 440);
    v30 = *(v0 + 400);
    v32 = *(v0 + 376);
    v31 = *(v0 + 384);
    v33 = *(v0 + 368);
    v34 = dispatch thunk of Collection.subscript.read();
    (*(v32 + 16))(v31);
    v34(v0 + 304, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v35 = swift_task_alloc();
    *(v0 + 456) = v35;
    *v35 = v0;
    v35[1] = MusicLibraryPlaylistsModel.createMSSuggestions(from:);
    v36 = *(v0 + 384);

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v36);
  }
}

uint64_t MusicLibraryPlaylistsModel.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MusicLibraryPlaylistsModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__loadingLibraryPlaylists;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel__libraryPlaylistSuggestions;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C15MediaSuggestionVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MusicLibraryPlaylistsModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MusicLibraryPlaylistsModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions();

  return closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t partial apply for closure #1 in MusicLibraryPlaylistsModel.loadLibrarySuggestions()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for MusicLibraryPlaylistsModel()
{
  result = type metadata singleton initialization cache for MusicLibraryPlaylistsModel;
  if (!type metadata singleton initialization cache for MusicLibraryPlaylistsModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MusicLibraryPlaylistsModel()
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<[WorkoutMediaSuggestion]>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutMediaSuggestion]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutMediaSuggestion]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutMediaSuggestion]>);
    }
  }
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:), 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)()
{
  v33 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  outlined init with copy of Artwork?(v0[6], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v0[11], &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
    v4 = v0[14];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[9];

    v8 = v0[1];

    return v8(0, 0xF000000000000000);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v10 = v0[8];
    v11 = type metadata accessor for Logger();
    v0[15] = __swift_project_value_buffer(v11, static WOLog.mediaPlayback);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[7];
      v14 = v0[8];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v32);
      _os_log_impl(&dword_20AEA4000, v12, v13, "[%s] NETWORK_START: MusicKit artwork loading", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x20F2E9420](v17, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v18 = v0[9];
    v19 = v0[10];
    static Artwork.CropStyle.squareCenterCrop.getter();
    v20 = type metadata accessor for Artwork.CropStyle();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = *MEMORY[0x277D2B200];
    v22 = type metadata accessor for Artwork.ImageFormat();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v18, v21, v22);
    (*(v23 + 56))(v18, 0, 1, v22);
    v24 = *(MEMORY[0x277D7EF68] + 4);
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
    v26 = v0[14];
    v27 = v0[9];
    v28 = v0[10];
    v29.n128_u64[0] = 0x4046800000000000;
    v30.n128_u64[0] = 0.5;
    v31.n128_u64[0] = 0x4046800000000000;

    return MEMORY[0x2821E8090](v28, v27, 0, 0, v29, v31, v30);
  }
}

{
  v50 = v0;
  v1 = UIImagePNGRepresentation(*(v0 + 136));
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);
  if (v1)
  {
    v4 = v1;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v49 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v49);
      _os_log_impl(&dword_20AEA4000, v8, v9, "[%s] NETWORK_END: MusicKit artwork loading - result: success", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v14 = *(v0 + 120);
    v15 = *(v0 + 136);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 136);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Loaded artwork for suggestion: %@", v20, 0xCu);
      outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
      v23 = *(v0 + 136);
    }

    else
    {
      v23 = v16;
      v16 = *(v0 + 136);
    }

    v41 = *(v0 + 104);
    v40 = *(v0 + 112);
    v42 = *(v0 + 96);

    (*(v41 + 8))(v40, v42);
  }

  else
  {
    v24 = *(v0 + 64);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = *(v0 + 56);
      v27 = *(v0 + 64);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v49 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v49);
      _os_log_impl(&dword_20AEA4000, v25, v26, "[%s] NETWORK_END: MusicKit artwork loading - result: png_data_failure", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F2E9420](v30, -1, -1);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    v31 = *(v0 + 120);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 136);
    v37 = *(v0 + 104);
    v36 = *(v0 + 112);
    v38 = *(v0 + 96);
    if (v34)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_20AEA4000, v32, v33, "Failed to get png image data.", v39, 2u);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {
    }

    (*(v37 + 8))(v36, v38);
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v43 = *(v0 + 112);
  v45 = *(v0 + 80);
  v44 = *(v0 + 88);
  v46 = *(v0 + 72);

  v47 = *(v0 + 8);

  return v47(v5, v7);
}

{
  v31 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 64);

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v29 = *(v0 + 112);
    v9 = *(v0 + 96);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v30);
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v30);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] NETWORK_END: MusicKit artwork loading - result: error - %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    (*(v8 + 8))(v29, v9);
  }

  else
  {
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 96);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 112);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);
  v26 = *(v0 + 72);

  v27 = *(v0 + 8);

  return v27(0, 0xF000000000000000);
}

uint64_t specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v9 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v6, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMd, &_s8MusicKit7ArtworkV0aB8InternalE11ImageFormatOSgMR);
  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v5, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR);
  if (v1)
  {
    v7 = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
  }

  else
  {
    v7 = specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = type metadata accessor for MusicSiriRepresentation();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.playbackIntent(from:), 0, 0);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  Playlist.siriRepresentation.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v4);
  v7 = specialized Collection.prefix(_:)(8);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  MusicSiriRepresentation.artwork.getter();
  v14 = MEMORY[0x20F2E6D00](v7, v9, v11, v13);
  v16 = v15;

  v0[13] = v16;
  v17 = swift_task_alloc();
  v0[14] = v17;
  *v17 = v0;
  v17[1] = specialized static LibraryPlaylistHelper.playbackIntent(from:);
  v18 = v0[6];

  return specialized static LibraryPlaylistHelper.artworkImageData(for:requestId:)(v18, v14, v16);
}

{
  v1 = v0[15];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0[3];
    v4 = v0[15];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v2 = [objc_opt_self() imageWithImageData_];

    outlined consume of Data?(v3, v1);
  }

  v6 = v0[12];
  v7 = MusicSiriRepresentation.id.getter();
  v9 = v8;
  v10 = MusicSiriRepresentation.title.getter();
  v12 = v11;
  v13 = v2;
  v14 = MusicSiriRepresentation.authorName.getter();
  v16 = v15;
  v17 = MEMORY[0x20F2E6C00](v7, v9);

  v18 = MEMORY[0x20F2E6C00](v10, v12);

  if (v16)
  {
    v19 = MEMORY[0x20F2E6C00](v14, v16);
  }

  else
  {
    v19 = 0;
  }

  v20 = v0[11];
  v21 = v0[12];
  v22 = v0[9];
  v23 = v0[10];
  *(&v31 + 1) = v0[6];
  v24 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v17 title:v18 type:5 artwork:v13 artist:v19];

  type metadata accessor for INPlayMediaIntent();
  v25 = v24;
  v34.value.super.isa = FIUIMusicIsPlaybackModeShuffle();
  v35.is_nil = 0;
  v33.value._rawValue = 0;
  v33.is_nil = v24;
  v34.is_nil = 0;
  v27 = INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:playbackQueueLocation:playbackSpeed:mediaSearch:)(v26, v33, v34, 2, INPlaybackRepeatModeUnknown, 0, INPlaybackQueueLocationNow, v35, v31);
  v28 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  [(INPlayMediaIntent *)v27 _setLaunchId:v28];

  (*(v20 + 8))(v21, v23);

  v29 = v0[1];

  return v29(v27);
}

uint64_t specialized static LibraryPlaylistHelper.playbackIntent(from:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[14];
  v6 = v3[13];
  v7 = v3[6];
  v9 = *v2;
  v4[15] = a2;

  outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(v7, &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);

  return MEMORY[0x2822009F8](specialized static LibraryPlaylistHelper.playbackIntent(from:), 0, 0);
}

unint64_t type metadata accessor for INPlayMediaIntent()
{
  result = lazy cache variable for type metadata for INPlayMediaIntent;
  if (!lazy cache variable for type metadata for INPlayMediaIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPlayMediaIntent);
  }

  return result;
}

uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutStatePublisher.mirroringToCompanion.setter()
{
  return WorkoutStatePublisher.mirroringToCompanion.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStatePublisher.mirroringToCompanion.getter()
{
  return WorkoutStatePublisher.mirroringToCompanion.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL WorkoutStatePublisher.workoutPaused.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  _s10Foundation4DateVSgWOhTm_6(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v5;
}

uint64_t WorkoutStatePublisher.activityType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t WorkoutStatePublisher.workoutStartDate.setter(uint64_t a1)
{
  return WorkoutStatePublisher.workoutStartDate.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_6(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void WorkoutStatePublisher.activityType.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  v2 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  [v3 identifier];
}

uint64_t WorkoutStatePublisher.segmentIndex.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.workoutStarted.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutStarted : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$workoutStarted.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$workoutStarted.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutStarted.modify;
}

uint64_t WorkoutStatePublisher.workoutStartDate.getter()
{
  return WorkoutStatePublisher.workoutStartDate.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*WorkoutStatePublisher.workoutStartDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.workoutStartDate.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutStartDate : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$workoutStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$workoutStartDate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutStartDate.modify;
}

uint64_t (*WorkoutStatePublisher.workoutActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.workoutActive.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutActive : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$workoutActive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$workoutActive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutActive.modify;
}

BOOL WorkoutStatePublisher.workoutEnded.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7[15] != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7[14])
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  _s10Foundation4DateVSgWOhTm_6(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v6;
}

uint64_t WorkoutStatePublisher.pauseTimes.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutStatePublisher.pauseTimes : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.pauseTimes : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStatePublisher.pauseTimes.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.pauseTimes.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$pauseTimes : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$pauseTimes.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$pauseTimes.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$pauseTimes.modify;
}

uint64_t key path getter for WorkoutStatePublisher.lastUnbalancedPauseStart : WorkoutStatePublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for WorkoutStatePublisher.lastUnbalancedPauseStart : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  _s10Foundation4DateVSgWOcTm_3(a1, &v13 - v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v10, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_6(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t (*WorkoutStatePublisher.lastUnbalancedPauseStart.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.lastUnbalancedPauseStart.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$lastUnbalancedPauseStart : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$lastUnbalancedPauseStart.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$lastUnbalancedPauseStart.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$lastUnbalancedPauseStart.modify;
}

uint64_t (*WorkoutStatePublisher.gpsLock.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.gpsLock.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$gpsLock : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$gpsLock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$gpsLock.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$gpsLock.modify;
}

uint64_t (*WorkoutStatePublisher.checkingGPSLock.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.checkingGPSLock.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$checkingGPSLock : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$checkingGPSLock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$checkingGPSLock.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$checkingGPSLock.modify;
}

uint64_t (*WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.gpsUnavailable.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$gpsUnavailable : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$gpsUnavailable.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$gpsUnavailable.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$gpsUnavailable.modify;
}

uint64_t key path getter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(char *a1, uint64_t *a2)
{
  return key path setter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.showGymKitConnectionStatus.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$showGymKitConnectionStatus : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$showGymKitConnectionStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$showGymKitConnectionStatus.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$showGymKitConnectionStatus.modify;
}

uint64_t (*WorkoutStatePublisher.isGymKit.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.isGymKit.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$isGymKit : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$isGymKit.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$isGymKit.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$isGymKit.modify;
}

uint64_t (*WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$lowPowerModeAnimationSuspended : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$lowPowerModeAnimationSuspended.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$lowPowerModeAnimationSuspended.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$lowPowerModeAnimationSuspended.modify;
}

uint64_t key path getter for WorkoutStatePublisher.activityType : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

void key path setter for WorkoutStatePublisher.activityType : WorkoutStatePublisher(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  WorkoutStatePublisher.activityType.setter(v2);
}

void (*WorkoutStatePublisher.activityType.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return WorkoutStatePublisher.activityType.modify;
}

void WorkoutStatePublisher.activityType.modify(uint64_t a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 8) = v4;
  v5 = (a1 + 8);
  v6 = *(a1 + 16);
  v7 = v4;

  if (a2)
  {
    v8 = v7;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = *(a1 + 8);
    [v9 identifier];

    v10 = *a1;
  }

  else
  {
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = *v5;
    [*v5 identifier];

    v10 = v11;
  }
}

uint64_t key path setter for WorkoutStatePublisher.$activityType : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$activityType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$activityType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$activityType.modify;
}

uint64_t (*WorkoutStatePublisher.mirrorModeEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.mirrorModeEnabled.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$mirrorModeEnabled : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$mirrorModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$mirrorModeEnabled.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$mirrorModeEnabled.modify;
}

uint64_t (*WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.mirroringToCompanion.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$mirroringToCompanion : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$mirroringToCompanion.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$mirroringToCompanion.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$mirroringToCompanion.modify;
}

uint64_t (*WorkoutStatePublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.multisportWorkoutInAutoMode.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$multisportWorkoutInAutoMode : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$multisportWorkoutInAutoMode.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$multisportWorkoutInAutoMode.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$multisportWorkoutInAutoMode.modify;
}

uint64_t WorkoutStatePublisher.segmentIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.segmentIndex.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$segmentIndex : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$segmentIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$segmentIndex.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$segmentIndex.modify;
}

uint64_t (*WorkoutStatePublisher.hasSpeedSensorEverBeenConnected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.hasSpeedSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.modify;
}

uint64_t (*WorkoutStatePublisher.hasCadenceSensorEverBeenConnected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.hasCadenceSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.modify;
}

uint64_t (*WorkoutStatePublisher.hasPowerSensorEverBeenConnected.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.hasPowerSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasPowerSensorEverBeenConnected : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.modify;
}

uint64_t WorkoutStatePublisher.pausedReasons.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutStatePublisher.pausedReasons : WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutStatePublisher.pausedReasons : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStatePublisher.pausedReasons.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WorkoutStatePublisher.pausedReasons.modify;
}

void WorkoutStatePublisher.workoutStarted.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutStatePublisher.$workoutStarted.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutStatePublisher.$workoutStarted : WorkoutStatePublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutStatePublisher.$pausedReasons : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutStatePublisher.$pausedReasons.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$pausedReasons.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$pausedReasons.modify;
}

void WorkoutStatePublisher.$workoutStarted.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t WorkoutStatePublisher.CodingKeys.rawValue.getter(char a1)
{
  result = 0x5374756F6B726F77;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0x4174756F6B726F77;
    case 3:
      return 0x6D69546573756170;
    case 4:
      return 0xD000000000000018;
    case 5:
      return 0x6B636F4C737067;
    case 6:
      return 0x676E696B63656863;
    case 7:
      return 0x6176616E55737067;
    case 8:
      v4 = 10;
      return v4 | 0xD000000000000010;
    case 9:
      return 0x74694B6D79477369;
    case 10:
      return 0xD00000000000001ELL;
    case 11:
      return 0x7974697669746361;
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0xD000000000000014;
    case 14:
      v4 = 11;
      return v4 | 0xD000000000000010;
    case 15:
      return 0x49746E656D676573;
    case 16:
      v3 = 0x536465657073;
      goto LABEL_18;
    case 17:
      return 0x5365636E65646163;
    case 18:
      v3 = 0x537265776F70;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 19:
      result = 0x6552646573756170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStatePublisher.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WorkoutStatePublisher.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutStatePublisher.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStatePublisher.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStatePublisher.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStatePublisher.CodingKeys()
{
  WorkoutStatePublisher.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStatePublisher.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStatePublisher.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutStatePublisher.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutStatePublisher.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStatePublisher.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutStatePublisher.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutStatePublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  WorkoutStatePublisher.init()();
  return v3;
}

uint64_t WorkoutStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  v77 = *(v1 - 8);
  v78 = v1;
  v2 = *(v77 + 64);
  MEMORY[0x28223BE20](v1);
  v76 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v67 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v14 = *(v13 - 8);
  v80 = v13;
  v81 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v79 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v79);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v29 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30 = *(v25 + 32);
  v62 = v24;
  v30(v0 + v29, v28, v24);
  v59 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v65 = type metadata accessor for Date();
  v31 = *(v65 - 8);
  v64 = *(v31 + 56);
  v66 = v31 + 56;
  v64(v23, 1, 1, v65);
  v61 = v21;
  _s10Foundation4DateVSgWOcTm_3(v23, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v60 = v17;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = *(v81 + 32);
  v81 += 32;
  v63 = v32;
  v32(v0 + v59, v17, v80);
  v33 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v33, v28, v24);
  v34 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v82 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  v35 = v67;
  Published.init(initialValue:)();
  (*(v68 + 32))(v0 + v34, v35, v69);
  v36 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v64(v23, 1, 1, v65);
  _s10Foundation4DateVSgWOcTm_3(v23, v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = v60;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v63(v0 + v36, v37, v80);
  v38 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v39 = v62;
  v30(v0 + v38, v28, v62);
  v40 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v40, v28, v39);
  v41 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v41, v28, v39);
  v42 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v42, v28, v39);
  v43 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v43, v28, v39);
  v44 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v44, v28, v39);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher_observingBluetooth) = 0;
  v45 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v82 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v46 = v70;
  Published.init(initialValue:)();
  (*(v71 + 32))(v0 + v45, v46, v72);
  v47 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v47, v28, v39);
  v48 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v48, v28, v39);
  v49 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v49, v28, v39);
  v50 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v82 = 1;
  v51 = v73;
  Published.init(initialValue:)();
  (*(v74 + 32))(v0 + v50, v51, v75);
  v52 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v52, v28, v39);
  v53 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v53, v28, v39);
  v54 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v30(v0 + v54, v28, v39);
  v55 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v82 = 0;
  type metadata accessor for NLWorkoutPausedReason(0);
  v56 = v76;
  Published.init(initialValue:)();
  (*(v77 + 32))(v0 + v55, v56, v78);
  return v0;
}

uint64_t WorkoutStatePublisher.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WorkoutStatePublisher.init(from:)(a1);
  return v5;
}

uint64_t WorkoutStatePublisher.init(from:)(uint64_t *a1)
{
  v122 = a1;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMR);
  v109 = *(v110 - 8);
  v2 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v133 = &v107 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  v130 = *(v4 - 8);
  v131 = v4;
  v5 = *(v130 + 64);
  MEMORY[0x28223BE20](v4);
  v129 = &v107 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v127 = *(v7 - 8);
  v128 = v7;
  v8 = *(v127 + 64);
  MEMORY[0x28223BE20](v7);
  v126 = &v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = *(v124 + 64);
  MEMORY[0x28223BE20](v10);
  v123 = &v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  v120 = *(v13 - 8);
  v121 = v13;
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v13);
  v119 = &v107 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  KeyPath = *(v135 - 8);
  v16 = *(KeyPath + 64);
  MEMORY[0x28223BE20](v135);
  v18 = &v107 - v17;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = *(*(v136 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v136);
  v107 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v108 = &v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v107 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v107 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v134 = v29;
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v107 - v32;
  v34 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v35 = *(v30 + 32);
  v35(v1 + v34, v33, v29);
  v114 = v35;
  v111 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v117 = type metadata accessor for Date();
  v36 = *(v117 - 8);
  v116 = *(v36 + 56);
  v118 = v36 + 56;
  v116(v28, 1, 1, v117);
  v113 = v26;
  _s10Foundation4DateVSgWOcTm_3(v28, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v112 = v18;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v37 = *(KeyPath + 32);
  KeyPath += 32;
  v115 = v37;
  v37(v1 + v111, v18, v135);
  v38 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v35(v1 + v38, v33, v134);
  v39 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v138 = MEMORY[0x277D84F90];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  v41 = v119;
  v111 = v40;
  Published.init(initialValue:)();
  (*(v120 + 32))(v1 + v39, v41, v121);
  v42 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v116(v28, 1, 1, v117);
  _s10Foundation4DateVSgWOcTm_3(v28, v113, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v43 = v112;
  Published.init(initialValue:)();
  v121 = v28;
  v44 = v28;
  v45 = v1;
  _s10Foundation4DateVSgWOhTm_6(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46 = v1 + v42;
  v47 = v122;
  v115(v46, v43, v135);
  v48 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v49 = v134;
  v50 = v114;
  v114(v1 + v48, v33, v134);
  v51 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v51, v33, v49);
  v52 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v52, v33, v49);
  v53 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v53, v33, v49);
  v54 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v54, v33, v49);
  v55 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v55, v33, v49);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher_observingBluetooth) = 0;
  v56 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v57 = v123;
  Published.init(initialValue:)();
  (*(v124 + 32))(v1 + v56, v57, v125);
  v58 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v58, v33, v49);
  v59 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v59, v33, v49);
  v60 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v60, v33, v49);
  v61 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v138 = 1;
  v62 = v126;
  Published.init(initialValue:)();
  (*(v127 + 32))(v1 + v61, v62, v128);
  v63 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v63, v33, v49);
  v64 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v64, v33, v49);
  v65 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  LOBYTE(v138) = 0;
  Published.init(initialValue:)();
  v50(v1 + v65, v33, v49);
  v66 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v138 = 0;
  type metadata accessor for NLWorkoutPausedReason(0);
  v67 = v129;
  Published.init(initialValue:)();
  (*(v130 + 32))(v45 + v66, v67, v131);
  v68 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();
  v69 = v132;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v69)
  {
    v70 = v108;
    LOBYTE(v138) = 0;
    v71 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v71 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 1;
    v72 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyPath = v72;
    swift_getKeyPath();
    swift_getKeyPath();
    _s10Foundation4DateVSgWOcTm_3(v70, v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    static Published.subscript.setter();
    _s10Foundation4DateVSgWOhTm_6(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v138) = 2;
    v73 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v73 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 3;
    lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](&lazy protocol witness table cache variable for type [DateInterval] and conformance <A> [A], &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v74 = v138;
    swift_getKeyPath();
    swift_getKeyPath();
    v140 = v74;

    static Published.subscript.setter();
    LOBYTE(v138) = 4;
    v75 = v107;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    _s10Foundation4DateVSgWOcTm_3(v75, v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    static Published.subscript.setter();
    _s10Foundation4DateVSgWOhTm_6(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v138) = 5;
    v77 = KeyedDecodingContainer.decode(_:forKey:)();
    v78 = v77;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v78 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 6;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 6;
      v79 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v79 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 7;
    v80 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v80 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 8;
    v81 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v81 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 9;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 9;
      v82 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v82 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 10;
    v83 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v83 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 11;
    if (KeyedDecodingContainer.contains(_:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      LOBYTE(v140) = 11;
      lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v84 = v139;
      if (v139 >> 60 != 15)
      {
        v85 = v138;
        type metadata accessor for FIUIWorkoutActivityType();
        outlined copy of Data._Representation(v85, v84);
        v86 = FIUIWorkoutActivityType.init(data:)(v85, v84);
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v138 = v86;

        v87 = v86;
        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v88 = v138;
        [v138 identifier];

        outlined consume of Data?(v85, v84);
      }
    }

    LOBYTE(v138) = 12;
    v89 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v89 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 13;
    v90 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v90 & 1;

    static Published.subscript.setter();
    LOBYTE(v138) = 14;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 14;
      v91 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v91 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 15;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 15;
      v92 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v138 = v92;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 16;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 16;
      v93 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v93 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 17;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 17;
      v94 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v94 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 18;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v138) = 18;
      v95 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v138) = v95 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v138) = 19;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
    LOBYTE(v140) = 19;
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v96 = *(v138 + 16);
    if (v96)
    {
      if (v96 > 3)
      {
        v97 = v96 & 0x7FFFFFFFFFFFFFFCLL;
        v99 = (v138 + 48);
        v100 = 0uLL;
        v101 = v96 & 0x7FFFFFFFFFFFFFFCLL;
        v102 = 0uLL;
        do
        {
          v100 = vorrq_s8(v99[-1], v100);
          v102 = vorrq_s8(*v99, v102);
          v99 += 2;
          v101 -= 4;
        }

        while (v101);
        v103 = vorrq_s8(v102, v100);
        v98 = vorr_s8(*v103.i8, *&vextq_s8(v103, v103, 8uLL));
        if (v96 == v97)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v104 = v96 - v97;
      v105 = (v138 + 8 * v97 + 32);
      do
      {
        v106 = *v105++;
        *&v98 |= v106;
        --v104;
      }

      while (v104);
    }

    else
    {
      v98 = 0;
    }

LABEL_32:

    swift_getKeyPath();
    swift_getKeyPath();
    v138 = v98;

    static Published.subscript.setter();
LABEL_33:
    (*(v109 + 8))(v133, v110);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v45;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v45;
}

uint64_t WorkoutStatePublisher.encode(to:)(void *a1)
{
  v2 = v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v30 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 0;
  v16 = v31;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v28 = v7;
  v29 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v14;
  static Published.subscript.getter();

  LOBYTE(v32) = 1;
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &lazy protocol witness table cache variable for type Date and conformance Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18 = v10;
  _s10Foundation4DateVSgWOhTm_6(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](&lazy protocol witness table cache variable for type [DateInterval] and conformance <A> [A], &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v28;
  static Published.subscript.getter();

  LOBYTE(v32) = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  _s10Foundation4DateVSgWOhTm_6(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v2;
  static Published.subscript.getter();

  LOBYTE(v32) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32)
  {
    v20 = v32;
    specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v20, &v34);

    v21 = type metadata accessor for JSONEncoder();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v32 = v34;
    v33[0] = v35[0];
    *(v33 + 9) = *(v35 + 9);
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v25;

    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v34);
  }

  else
  {
    v24 = 0;
    v26 = 0xF000000000000000;
  }

  *&v32 = v24;
  *(&v32 + 1) = v26;
  v36 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data?(v32, *(&v32 + 1));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 17;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v32) = 18;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *&v32 = NLWorkoutPausedReason.individualRawValues.getter(v32);
  v36 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  lazy protocol witness table accessor for type [UInt] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt] and conformance <A> [A]);
  v27 = v31;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v29 + 8))(v27, v18);
}

uint64_t NLWorkoutPausedReason.individualRawValues.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 >= 0x40)
      {
        v4 = 0;
      }

      else
      {
        v4 = 1 << v2;
      }

      if ((v4 & v1) != 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + 8 * v6 + 32) = v4;
        v1 &= ~v4;
      }

      if (v2 == -1)
      {
        break;
      }

      ++v2;
      if (!v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t WorkoutStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive, v2);
  v7 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended, v2);
  v9 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode, v2);
  v11 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected, v2);
  v13 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t WorkoutStatePublisher.__deallocating_deinit()
{
  WorkoutStatePublisher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkoutStatePublisher@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = WorkoutStatePublisher.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t WorkoutStatePublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v238 = v233 - v6;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v236 = *(v7 - 8);
  v237 = v7;
  v8 = *(v236 + 64);
  MEMORY[0x28223BE20](v7);
  v235 = v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v250 = *(v10 - 8);
  v251 = v10;
  v11 = *(v250 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v257 = v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v256 = (v233 - v14);
  v249 = type metadata accessor for DateInterval();
  v252 = *(v249 - 8);
  v15 = *(v252 + 64);
  MEMORY[0x28223BE20](v249);
  v248 = v233 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v241 = v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v233 - v21;
  v253 = type metadata accessor for Date();
  v242 = *(v253 - 8);
  v23 = *(v242 + 64);
  v24 = MEMORY[0x28223BE20](v253);
  v234 = v233 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v247 = v233 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v233 - v28;
  UnknownStorage.init()();
  v30 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v30) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  swift_getKeyPath();
  swift_getKeyPath();
  v258 = v30;

  static Published.subscript.getter();

  v31 = v258;

  v32 = v276;
  v33 = *(a1 + v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a1 + v31);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v35 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v35);
    *(a1 + v31) = v35;
  }

  v39 = v253;
  v40 = v242;
  swift_beginAccess();
  *(v35 + 16) = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v41 = *(v40 + 48);
  v42 = v41(v22, 1, v39);
  v239 = v41;
  v240 = v40 + 48;
  if (v42 == 1)
  {
    _s10Foundation4DateVSgWOhTm_6(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v40 + 32))(v29, v22, v39);
    Date.timeIntervalSinceReferenceDate.getter();
    v44 = v43;
    v45 = v258;
    v46 = *(a1 + v258);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v40 + 8))(v29, v39);
      v47 = *(a1 + v45);
    }

    else
    {
      v48 = *(a1 + v258);
      v49 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      v47 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v52);
      (*(v40 + 8))(v29, v39);

      *(a1 + v258) = v47;
    }

    swift_beginAccess();
    *(v47 + 24) = v44;
    *(v47 + 32) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53 = v275;
  v54 = v258;
  v55 = *(a1 + v258);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(a1 + v54);
  if ((v56 & 1) == 0)
  {
    v58 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v59 = *(v58 + 48);
    v60 = *(v58 + 52);
    swift_allocObject();
    v57 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v57);
    *(a1 + v54) = v57;
  }

  swift_beginAccess();
  *(v57 + 33) = v53;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = *(v274 + 16);
  v259 = a1;
  if (v61)
  {
    v233[0] = v274;
    v233[1] = v2;
    v62 = *(v252 + 16);
    v63 = v274 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
    v245 = *(v252 + 72);
    v246 = v62;
    v252 += 16;
    v243 = (v252 - 8);
    v244 = (v40 + 8);
    v64 = v248;
    v65 = v256;
    do
    {
      v254 = v63;
      v255 = v61;
      v67 = v249;
      v246(v64);
      v68 = v65 + *(v251 + 24);
      UnknownStorage.init()();
      v69 = v247;
      DateInterval.start.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v71 = v70;
      v72 = *v244;
      v73 = v253;
      (*v244)(v69, v253);
      *v65 = v71;
      DateInterval.end.getter();
      (*v243)(v64, v67);
      Date.timeIntervalSinceReferenceDate.getter();
      v75 = v74;
      v72(v69, v73);
      v65[1] = v75;
      outlined init with copy of Apple_Workout_Core_DateInterval(v65, v257);
      swift_beginAccess();
      v76 = *(v57 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
      }

      v78 = v76[2];
      v77 = v76[3];
      a1 = v259;
      if (v78 >= v77 >> 1)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v76);
      }

      v76[2] = v78 + 1;
      outlined init with take of Apple_Workout_Core_DateInterval(v257, v76 + ((*(v250 + 80) + 32) & ~*(v250 + 80)) + *(v250 + 72) * v78, type metadata accessor for Apple_Workout_Core_DateInterval);
      v79 = v258;
      v80 = *(a1 + v258);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v256, type metadata accessor for Apple_Workout_Core_DateInterval);
        v57 = *(a1 + v79);
      }

      else
      {
        v81 = *(v259 + v79);
        v82 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
        v83 = *(v82 + 48);
        v84 = *(v82 + 52);
        swift_allocObject();

        v86 = v79;
        v57 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v85);
        _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v256, type metadata accessor for Apple_Workout_Core_DateInterval);
        a1 = v259;

        *(a1 + v86) = v57;
      }

      swift_beginAccess();
      v66 = *(v57 + 40);
      *(v57 + 40) = v76;

      v63 = v254 + v245;
      v61 = v255 - 1;
    }

    while (v255 != 1);

    v40 = v242;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v87 = v241;
  static Published.subscript.getter();

  v88 = v253;
  v89 = v239(v87, 1, v253);
  v90 = v258;
  if (v89 == 1)
  {
    _s10Foundation4DateVSgWOhTm_6(v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v91 = v234;
    (*(v40 + 32))(v234, v87, v88);
    Date.timeIntervalSinceReferenceDate.getter();
    v93 = v92;
    v94 = *(a1 + v90);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v40 + 8))(v91, v88);
      v95 = *(a1 + v90);
    }

    else
    {
      v96 = v91;
      v97 = *(a1 + v90);
      v98 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      swift_allocObject();

      v95 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v101);
      (*(v40 + 8))(v96, v88);

      *(a1 + v90) = v95;
    }

    swift_beginAccess();
    *(v95 + 48) = v93;
    *(v95 + 56) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v102 = v273;
  v103 = *(a1 + v90);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a1 + v90);
  if ((v104 & 1) == 0)
  {
    v106 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v107 = *(v106 + 48);
    v108 = *(v106 + 52);
    swift_allocObject();
    v105 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v105);
    *(a1 + v90) = v105;
  }

  swift_beginAccess();
  *(v105 + 57) = v102;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v109 = v272;
  v110 = *(a1 + v90);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *(a1 + v90);
  if ((v111 & 1) == 0)
  {
    v113 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_allocObject();
    v112 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v112);
    *(a1 + v90) = v112;
  }

  v116 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  *(v112 + v116) = v109;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v117 = v271;
  v118 = *(a1 + v90);
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(a1 + v90);
  if ((v119 & 1) == 0)
  {
    v121 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v122 = *(v121 + 48);
    v123 = *(v121 + 52);
    swift_allocObject();
    v120 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v120);
    *(a1 + v90) = v120;
  }

  swift_beginAccess();
  *(v120 + 58) = v117;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v124 = v270;
  v125 = *(a1 + v90);
  v126 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *(a1 + v90);
  if ((v126 & 1) == 0)
  {
    v128 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v129 = *(v128 + 48);
    v130 = *(v128 + 52);
    swift_allocObject();
    v127 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v127);
    *(a1 + v90) = v127;
  }

  swift_beginAccess();
  *(v127 + 59) = v124;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v131 = v269;
  v132 = *(a1 + v90);
  v133 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *(a1 + v90);
  if ((v133 & 1) == 0)
  {
    v135 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v136 = *(v135 + 48);
    v137 = *(v135 + 52);
    swift_allocObject();
    v134 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v134);
    *(a1 + v90) = v134;
  }

  v138 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  *(v134 + v138) = v131;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v139 = v268;
  v140 = *(a1 + v90);
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *(a1 + v90);
  if ((v141 & 1) == 0)
  {
    v143 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v144 = *(v143 + 48);
    v145 = *(v143 + 52);
    swift_allocObject();
    v142 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v142);
    *(a1 + v90) = v142;
  }

  swift_beginAccess();
  *(v142 + 60) = v139;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v146 = v267;
  if (v267)
  {
    v147 = v235;
    FIUIWorkoutActivityType.protobuf.getter(v235);
    v148 = *(a1 + v90);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v149 = *(a1 + v90);
    }

    else
    {
      v150 = *(a1 + v258);
      v151 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      v152 = *(v151 + 48);
      v153 = *(v151 + 52);
      swift_allocObject();

      v149 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v154);
      v90 = v258;

      *(a1 + v90) = v149;
    }

    v155 = v238;
    outlined init with take of Apple_Workout_Core_DateInterval(v147, v238, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v236 + 56))(v155, 0, 1, v237);
    v156 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v155, v149 + v156);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v157 = v267;
  v158 = *(a1 + v90);
  v159 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *(a1 + v90);
  if ((v159 & 1) == 0)
  {
    v161 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v162 = *(v161 + 48);
    v163 = *(v161 + 52);
    swift_allocObject();
    v160 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v160);
    *(a1 + v90) = v160;
  }

  v164 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  *(v160 + v164) = v157;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v165 = v266;
  v166 = *(a1 + v90);
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *(a1 + v90);
  if ((v167 & 1) == 0)
  {
    v169 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v170 = *(v169 + 48);
    v171 = *(v169 + 52);
    swift_allocObject();
    v168 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v168);
    *(a1 + v90) = v168;
  }

  v172 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  *(v168 + v172) = v165;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v173 = v265;
  v174 = *(a1 + v90);
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *(a1 + v90);
  if ((v175 & 1) == 0)
  {
    v177 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v178 = *(v177 + 48);
    v179 = *(v177 + 52);
    swift_allocObject();
    v176 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v176);
    *(a1 + v90) = v176;
  }

  v180 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  *(v176 + v180) = v173;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v182 = v264;
  if ((v264 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (HIDWORD(v264))
  {
LABEL_75:
    __break(1u);
    return result;
  }

  v183 = *(a1 + v90);
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *(a1 + v90);
  if ((v184 & 1) == 0)
  {
    v186 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v187 = *(v186 + 48);
    v188 = *(v186 + 52);
    swift_allocObject();
    v185 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v185);
    *(a1 + v90) = v185;
  }

  v189 = v185 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v189 = v182;
  *(v189 + 4) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v190 = v263;
  v191 = *(a1 + v90);
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *(a1 + v90);
  if ((v192 & 1) == 0)
  {
    v194 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v195 = *(v194 + 48);
    v196 = *(v194 + 52);
    swift_allocObject();
    v193 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v193);
    *(a1 + v90) = v193;
  }

  v197 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  *(v193 + v197) = v190;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v198 = v262;
  v199 = *(a1 + v90);
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *(a1 + v90);
  if ((v200 & 1) == 0)
  {
    v202 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v203 = *(v202 + 48);
    v204 = *(v202 + 52);
    swift_allocObject();
    v201 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v201);
    *(a1 + v90) = v201;
  }

  v205 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  *(v201 + v205) = v198;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v206 = v261;
  v207 = *(a1 + v90);
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *(a1 + v90);
  if ((v208 & 1) == 0)
  {
    v210 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    v211 = *(v210 + 48);
    v212 = *(v210 + 52);
    swift_allocObject();
    v209 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v209);
    *(a1 + v90) = v209;
  }

  v213 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  *(v209 + v213) = v206;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v214 = NLWorkoutPausedReason.protobufValues.getter(v260);
  v215 = *(v214 + 2);
  if (v215)
  {
    v216 = v214 + 40;
    do
    {
      v219 = *(v216 - 1);
      v220 = *v216;
      v221 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      swift_beginAccess();
      v222 = *(v209 + v221);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v222 + 2) + 1, 1, v222);
      }

      v224 = *(v222 + 2);
      v223 = *(v222 + 3);
      if (v224 >= v223 >> 1)
      {
        v222 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v222);
      }

      *(v222 + 2) = v224 + 1;
      v225 = &v222[16 * v224];
      *(v225 + 4) = v219;
      v225[40] = v220;
      v227 = v258;
      v226 = v259;
      v228 = *(v259 + v258);
      v229 = swift_isUniquelyReferenced_nonNull_native();
      v209 = *(v226 + v227);
      if ((v229 & 1) == 0)
      {
        v230 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
        v231 = *(v230 + 48);
        v232 = *(v230 + 52);
        swift_allocObject();
        v209 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v209);
        *(v226 + v227) = v209;
      }

      v217 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      swift_beginAccess();
      v218 = *(v209 + v217);
      *(v209 + v217) = v222;

      v216 += 16;
      --v215;
    }

    while (v215);
  }
}

char *NLWorkoutPausedReason.protobufValues.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  v5[40] = 1;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 1;
    v8[40] = 1;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 2;
    v11[40] = 1;
  }

  return v2;
}

uint64_t WorkoutStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutStatePublisher.protobuf.getter(v3);
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v4 = Message.serializedData(partial:)();
  _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v3, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  return v4;
}

uint64_t Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v97 = *(v3 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v92 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v91 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v89 - v10;
  v12 = type metadata accessor for Date();
  v100 = *(v12 - 8);
  v13 = *(v100 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v107 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v89 - v16;
  v105 = type metadata accessor for DateInterval();
  v109 = *(v105 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v105);
  v108 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v102 = *(v19 - 8);
  v20 = *(v102 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v104 = (&v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v99 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v89 - v26;
  v28 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  v29 = *(v28 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125[0]) = v29;

  static Published.subscript.setter();
  swift_beginAccess();
  v30 = *(v28 + 32);
  v98 = v3;
  v96 = v11;
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = *(v28 + 24);
    Date.init(timeIntervalSinceReferenceDate:)();
    v31 = 0;
  }

  v33 = *(v100 + 56);
  v95 = v12;
  v100 += 56;
  v93 = v33;
  v33(v27, v31, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v27, v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  v94 = v27;
  _s10Foundation4DateVSgWOhTm_6(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  v34 = *(v28 + 33);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v125[0]) = v34;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v125[0] = MEMORY[0x277D84F90];

  static Published.subscript.setter();
  swift_beginAccess();
  v35 = *(v28 + 40);
  v36 = *(v35 + 16);
  if (v36)
  {
    v89 = *(v28 + 40);
    v90 = v28;
    v37 = v35 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v38 = *(v102 + 72);
    v101 = v109 + 32;
    v102 = v38;

    v103 = a1;
    do
    {
      v39 = v104;
      outlined init with copy of Apple_Workout_Core_DateInterval(v37, v104);
      v40 = *v39;
      Date.init(timeIntervalSinceReferenceDate:)();
      v41 = v39[1];
      _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v39, type metadata accessor for Apple_Workout_Core_DateInterval);
      Date.init(timeIntervalSinceReferenceDate:)();
      DateInterval.init(start:end:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v42 = static Published.subscript.modify();
      v44 = v43;
      v45 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
        *v44 = v45;
      }

      v48 = v45[2];
      v47 = v45[3];
      if (v48 >= v47 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v45);
        *v44 = v45;
      }

      v45[2] = v48 + 1;
      (*(v109 + 32))(v45 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v48, v108, v105);
      v42(v125, 0);

      v37 += v102;
      --v36;
    }

    while (v36);

    v28 = v90;
  }

  swift_beginAccess();
  if (*(v28 + 56))
  {
    v49 = 1;
    v51 = v94;
    v50 = v95;
  }

  else
  {
    v52 = *(v28 + 48);
    v51 = v94;
    Date.init(timeIntervalSinceReferenceDate:)();
    v49 = 0;
    v50 = v95;
  }

  v93(v51, v49, 1, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v51, v99, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_6(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  v53 = *(v28 + 57);
  swift_getKeyPath();
  swift_getKeyPath();
  v124 = v53;

  static Published.subscript.setter();
  v54 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  v55 = *(v28 + v54);
  if (v55 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v123 = v55 & 1;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v56 = *(v28 + 58);
  swift_getKeyPath();
  swift_getKeyPath();
  v122 = v56;

  static Published.subscript.setter();
  swift_beginAccess();
  v57 = *(v28 + 59);
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v57;

  static Published.subscript.setter();
  v58 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  v59 = *(v28 + v58);
  if (v59 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v120 = v59 & 1;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v60 = *(v28 + 60);
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v60;

  static Published.subscript.setter();
  v61 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  v62 = v96;
  _s10Foundation4DateVSgWOcTm_3(v28 + v61, v96, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v63 = v98;
  v109 = *(v97 + 48);
  v64 = (v109)(v62, 1, v98);
  _s10Foundation4DateVSgWOhTm_6(v62, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v64 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v118 = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v65 = v118;
    [v118 identifier];
  }

  else
  {
    v66 = v91;
    _s10Foundation4DateVSgWOcTm_3(v28 + v61, v91, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    v67 = v109;
    if ((v109)(v66, 1, v63) == 1)
    {
      v68 = v92;
      *(v92 + 8) = 0;
      *v68 = 0;
      v68[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v69 = v68 + *(v63 + 36);
      UnknownStorage.init()();
      if (v67(v66, 1, v63) != 1)
      {
        _s10Foundation4DateVSgWOhTm_6(v66, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v68 = v92;
      outlined init with take of Apple_Workout_Core_DateInterval(v66, v92, type metadata accessor for Apple_Workout_Core_Activity);
    }

    v70 = Apple_Workout_Core_Activity.decoded.getter();
    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v68, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v118 = v70;

    v65 = v70;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v71 = v118;
    [v118 identifier];
  }

  v72 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  v73 = *(v28 + v72);
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = v73;

  static Published.subscript.setter();
  v74 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  v75 = *(v28 + v74);
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v75;

  static Published.subscript.setter();
  v76 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  v77 = *(v28 + v76);
  if (v77 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v115 = v77 & 1;

    static Published.subscript.setter();
  }

  v78 = (v28 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
  swift_beginAccess();
  if ((v78[1] & 1) == 0)
  {
    v79 = *v78;
    swift_getKeyPath();
    swift_getKeyPath();
    v114 = v79;

    static Published.subscript.setter();
  }

  v80 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  v81 = *(v28 + v80);
  if (v81 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v113 = v81 & 1;

    static Published.subscript.setter();
  }

  v82 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  v83 = *(v28 + v82);
  if (v83 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v112 = v83 & 1;

    static Published.subscript.setter();
  }

  v84 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  v85 = *(v28 + v84);
  if (v85 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v111 = v85 & 1;

    static Published.subscript.setter();
  }

  v86 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v87 = specialized static NLWorkoutPausedReason.from(protobufValues:)(*(v28 + v86));
  swift_getKeyPath();
  swift_getKeyPath();
  v110 = v87;

  return static Published.subscript.setter();
}