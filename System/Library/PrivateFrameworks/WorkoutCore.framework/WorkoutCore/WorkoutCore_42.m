uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setHeartRateDataProvider(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.generateIntroMomentWhenReady() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v7);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.hasDeliveredIntroMomentAndReadyForMoreMoments() in conformance WorkoutVoiceMomentCoordinator()
{
  v0 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v7 - 8) + 56))(v4, 4, 6, v7);
  v8 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v6, v4);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v4, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  return v8 & 1;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator, v0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator;

  return BreakthroughMomentChecker.startChecking()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.generateOutroMoment() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.generateOutroMoment() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.generateOutroMoment()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.progressWorkoutToInSession() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.progressWorkoutToInSession() in conformance WorkoutVoiceMomentCoordinator;

  return specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(a1, a2, a3);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:) in conformance WorkoutVoiceMomentCoordinator;

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:) in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:) in conformance WorkoutVoiceMomentCoordinator(char a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, a2);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator, v0, 0);
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator;
  v2 = *(v0 + 16);

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:) in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(a1, a2);
}

uint64_t WorkoutVoiceMomentCoordinator.updateWorkoutState(withSong:isPlaying:elapsedTime:duration:)(void *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v107[1] = a5;
  v107[0] = __PAIR64__(a6, a4);
  v109 = a3;
  v108 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v114 = v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v112 = v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = v107 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v111 = v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v126 = v107 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v125 = v107 - v26;
  MEMORY[0x28223BE20](v25);
  v124 = v107 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v136 = v107 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v123 = v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v122 = v107 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v110 = v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v135 = v107 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v134 = v107 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v133 = v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v132 = v107 - v49;
  MEMORY[0x28223BE20](v48);
  v131 = v107 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v130 = v107 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v129 = v107 - v56;
  v120 = type metadata accessor for WorkoutState();
  v117 = *(v120 - 8);
  v57 = *(v117 + 64);
  v58 = MEMORY[0x28223BE20](v120);
  v60 = v107 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v121 = v107 - v61;
  v119 = type metadata accessor for WorkoutMediaDetails();
  v118 = *(v119 - 8);
  v62 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v64 = v107 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v65 = [a1 title];
    if (v65)
    {
      v66 = v65;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v67 = [a1 artist];
    if (v67)
    {
      v68 = v67;
      v69 = [v67 name];

      if (v69)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v70 = [a1 genre];
    if (v70)
    {
      v71 = v70;
      v72 = [v70 name];

      if (v72)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    [a1 isFavorite];
  }

  v116 = v64;
  WorkoutMediaDetails.init(title:artistName:genreName:isFavorited:isPlaying:elapsedTime:duration:)();
  v73 = v128;
  v74 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v109 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v75 = *(v117 + 16);
  v115 = v60;
  v75(v60, v73 + v74, v120);
  v76 = type metadata accessor for UUID();
  (*(*(v76 - 8) + 56))(v129, 1, 1, v76);
  v77 = type metadata accessor for WorkoutGoal();
  (*(*(v77 - 8) + 56))(v130, 1, 1, v77);
  v78 = type metadata accessor for Date();
  v79 = *(*(v78 - 8) + 56);
  v79(v131, 1, 1, v78);
  v79(v132, 1, 1, v78);
  v79(v133, 1, 1, v78);
  v80 = type metadata accessor for WeatherCondition();
  (*(*(v80 - 8) + 56))(v134, 1, 1, v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v82 = *(*(v81 - 8) + 56);
  v82(v135, 1, 1, v81);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v84 = *(*(v83 - 8) + 56);
  v84(v122, 1, 1, v83);
  v84(v123, 1, 1, v83);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v87 = *(*(v86 - 8) + 56);
  (v87)(v124, 1, 1, v86);
  v87();
  (v87)(v126, 1, 1, v86);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v88 - 8) + 56))(v127, 1, 1, v88);
  v89 = v110;
  v82(v110, 1, 1, v81);
  v90 = v118;
  v91 = v112;
  v92 = v119;
  (*(v118 + 16))(v112, v116, v119);
  (*(v90 + 56))(v91, 0, 1, v92);
  v93 = type metadata accessor for HKActivitySummaryRepresentable();
  v94 = v113;
  (*(*(v93 - 8) + 56))(v113, 1, 1, v93);
  v95 = v111;
  (v87)(v111, 1, 1, v86);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v97 = v114;
  (*(*(v96 - 8) + 56))(v114, 1, 1, v96);
  v98 = v126;
  v99 = v124;
  v100 = v123;
  v101 = v122;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v97, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v95, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v94, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v91, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v89, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v127, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v98, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v125, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v99, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v136, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v100, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v101, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v135, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v134, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v132, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v131, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v130, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v129, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v102 = v117;
  v103 = v120;
  (*(v117 + 8))(v115, v120);
  (*(v118 + 8))(v116, v119);
  v104 = v128;
  v105 = v109;
  swift_beginAccess();
  (*(v102 + 40))(v104 + v105, v121, v103);
  return swift_endAccess();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(Swift::Double queryDuration)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v25 - v6;
  v7 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.workoutVoice);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = queryDuration;
    _os_log_impl(&dword_20AEA4000, v15, v16, "Time it took for music fetching %f seconds", v17, 0xCu);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 2, 6, v18);
  v20 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v13, v11);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v11, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v13, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v19(v13, 3, 6, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v13, v11);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v13, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if (v20)
  {
    v21 = type metadata accessor for TaskPriority();
    v22 = v26;
    (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
    v23 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v2;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v22, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:), v24);
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:);
  v7 = v0[8];
  v8 = v0[5];

  return WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(v7);
}

uint64_t one-time initialization function for workoutBuddyStateChanged()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B469490);
  static NSNotificationName.workoutBuddyStateChanged = result;
  return result;
}

id static NSNotificationName.workoutBuddyStateChanged.getter()
{
  if (one-time initialization token for workoutBuddyStateChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.workoutBuddyStateChanged;

  return v1;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:);

  return WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(a5);
}

uint64_t WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.handleAnnouncement(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)()
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Announcing utterance in live voice", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[12];

  v6 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v5 + v6, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v7);
  LOBYTE(v6) = (*(v8 + 24))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  if (v6)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Workout Buddy not available. Falling back to default announcement services", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v0[12];

    v13 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v0[10];
      v14 = v0[11];
      v16 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 24))(v15, v14, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = WorkoutVoiceMomentCoordinator.handleAnnouncement(_:);
    v19 = v0[12];

    return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
  }

  else
  {
    v21 = swift_task_alloc();
    v0[14] = v21;
    *v21 = v0;
    v21[1] = WorkoutVoiceMomentCoordinator.handleAnnouncement(_:);
    v22 = v0[11];
    v23 = v0[12];
    v24 = v0[10];

    return WorkoutVoiceMomentCoordinator.announceUtterance(_:)(v24, v22);
  }
}

{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutVoiceMomentCoordinator.stopInFlightAnnouncement()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.stopInFlightAnnouncement();

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t protocol witness for WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)(a1, a2);
}

uint64_t protocol witness for WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v8);
}

uint64_t closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v6, v5);
}

uint64_t closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), Strong, 0);
  }

  else
  {
    v3 = *(v0 + 56);

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  v1 = v0[10];
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);

  v2 = v0[8];
  v3 = v0[9];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v2, v3);
}

{
  v1 = *(v0 + 56);

  **(v0 + 40) = *(v0 + 80) == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t outlined init with copy of WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized MusicMomentHandler.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  MusicMomentHandler.stopActiveTasks()();
  *(a2 + 144) = v7;
  swift_unknownObjectWeakAssign();
  *(a2 + 112) = CFAbsoluteTimeGetCurrent();
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type MusicMomentHandler and conformance MusicMomentHandler, type metadata accessor for MusicMomentHandler);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  swift_retain_n();
  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in MusicMomentHandler.setDelegate(_:), v10);
  v12 = *(a2 + 152);
  *(a2 + 152) = v11;
}

uint64_t specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMomentType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMd, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, &v25 - v16);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 6, v19);
  if (v21 <= 2)
  {
    if (!v21)
    {
      outlined init with copy of WorkoutVoiceMomentCoordinator.State(v17, v12);
      if (!v20(&v17[v18], 6, v19))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v22 = static WorkoutVoiceMomentType.== infix(_:_:)();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
        return v22 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_20;
    }

    if (v21 == 1)
    {
      if (v20(&v17[v18], 6, v19) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v20(&v17[v18], 6, v19) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    outlined destroy of Measurement<NSUnitDuration>?(v17, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMd, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMR);
    v22 = 0;
    return v22 & 1;
  }

  if (v21 > 4)
  {
    if (v21 == 5)
    {
      if (v20(&v17[v18], 6, v19) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v20(&v17[v18], 6, v19) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v21 == 3)
  {
    if (v20(&v17[v18], 6, v19) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v20(&v17[v18], 6, v19) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v22 = 1;
  return v22 & 1;
}

uint64_t partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset;

  return closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset();
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 192) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  *(v2 + 144) = v4;
  v5 = *(v4 - 8);
  *(v2 + 152) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Workout Buddy is Muted, skipping connection status update", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = *(v0 + 160);
    v8 = *(v0 + 136);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.workoutVoice);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 192);
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Setting Workout Buddy connected to %{BOOL}d", v15, 8u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v16 = *(v0 + 128);

    v17 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v16 + v17, v0 + 16);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v18);
    v20 = *(v19 + 8);
    v23 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *v22 = v0;
    v22[1] = specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

    return v23(v18, v19);
  }
}

{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[23] = v2;

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v2, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 193) = *(*(v0 + 184) + 112);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

{
  if (*(v0 + 193))
  {
    v1 = 1;
  }

  else
  {
    v1 = FIShowAudioTranscriptions();
  }

  v2 = *(v0 + 176);
  if (v2 != 1)
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v2);
    v1 = 0;
  }

  v3 = *(v0 + 128);
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected;
  v5 = *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected);
  if (v5 == 2)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v7 + 16))(v6, v3 + v9, v8);
    WorkoutState.duration.getter();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    if (((v11 <= 45.0) & v1) == 1)
    {
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      *(v3 + v4) = 0;
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      v15 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
      v16 = swift_allocObject();
      v16[2] = v12;
      v16[3] = v15;
      v16[4] = v12;
      swift_retain_n();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v16);
    }

    else if (*(v3 + v4) == 2)
    {
LABEL_7:
      *(v3 + v4) = (*(v0 + 192) & 1) == 0;
    }
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 192);
  WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v21;
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v22);

  v23 = *(v0 + 160);
  v24 = *(v0 + 136);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v3, 0);
}

uint64_t outlined destroy of WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError()
{
  result = lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError;
  if (!lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError;
  if (!lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError);
  }

  return result;
}

uint64_t outlined assign with take of WorkoutVoiceMoment?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded();

  return closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);

  return closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(a1, v4, v5, v6);
}

uint64_t keypath_get_54Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v8 + v9, a5, a3, a4);
}

uint64_t getEnumTagSinglePayload for TimeBasedProgressMomentSupportError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimeBasedProgressMomentSupportError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 152);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setDelegate(_:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 192);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference();

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 208);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported();

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.checkForBreakthroughs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 216);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.checkForBreakthroughs();

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.generateOutroMoment()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 224);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.generateOutroMoment();

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 232);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();

  return v9(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = *(a4 + 240);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:);
  v14.n128_f64[0] = a5;

  return v16(a1, a2, a3, a4, v14);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 248);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 256) + **(a3 + 256));
  v7 = *(*(a3 + 256) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 272) + **(a4 + 272));
  v9 = *(*(a4 + 272) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 288) + **(a2 + 288));
  v5 = *(*(a2 + 288) + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements();

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(a3 + 296) + **(a3 + 296));
  v7 = *(*(a3 + 296) + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 304) + **(a4 + 304));
  v9 = *(*(a4 + 304) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:);

  return v12(a1, a2, a3, a4);
}

void type metadata completion function for WorkoutVoiceMomentCoordinator()
{
  v0 = type metadata accessor for WorkoutState();
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for Published<WorkoutVoiceMomentCoordinator.State>, type metadata accessor for WorkoutVoiceMomentCoordinator.State, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for InferenceResult?, MEMORY[0x277D0A020], MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v17 = *(v4 - 8) + 64;
        type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for WorkoutVoiceMoment?, MEMORY[0x277D0A268], MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          v9 = type metadata accessor for InferenceClient();
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for AnnounceUtteranceRequest?, MEMORY[0x277D0A510], MEMORY[0x277D83D88]);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(uint64_t a1)
{
  v4 = *(*v1 + 872);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:);

  return v8(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 880);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setDelegate(_:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(uint64_t a1)
{
  v4 = *(*v1 + 896);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:);

  return v8(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()()
{
  v2 = *(*v0 + 920);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 944);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(*v3 + 984);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()()
{
  v2 = *(*v0 + 1000);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.checkForBreakthroughs()()
{
  v2 = *(*v0 + 1008);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.checkForBreakthroughs();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v2 = *(*v0 + 1016);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.generateOutroMoment();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 1048);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 1064);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements()()
{
  v2 = *(*v0 + 1152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements();

  return v6();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(uint64_t a1)
{
  v4 = *(*v1 + 1168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);

  return v8(a1);
}

void type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for WorkoutVoiceMomentCoordinator.State()
{
  type metadata accessor for (momentType: WorkoutVoiceMomentType)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (momentType: WorkoutVoiceMomentType)()
{
  if (!lazy cache variable for type metadata for (momentType: WorkoutVoiceMomentType))
  {
    v0 = type metadata accessor for WorkoutVoiceMomentType();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (momentType: WorkoutVoiceMomentType));
    }
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();

  return closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(a1, v4, v5, v7, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:);

  return closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(a1, v5, v4);
}

uint64_t outlined assign with copy of AnnounceUtteranceRequest?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset;

  return closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(a1, v4, v5, v6);
}

uint64_t outlined init with copy of Measurement<NSUnitDuration>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript();

  return closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:);

  return closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MusicMomentHandler.setDelegate(_:);

  return closure #1 in MusicMomentHandler.setDelegate(_:)(a1, v4, v5, v6);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(void *a1, void *a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, char *a10, char *a11)
{
  v12 = v11;
  v276 = a8;
  v277 = a7;
  v278 = a6;
  v268 = a5;
  v241 = a4;
  v279 = a3;
  v265 = a2;
  v233 = a1;
  v275 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v249 = &v227 - v15;
  v247 = type metadata accessor for WorkoutVoiceSession.Mode();
  v246 = *(v247 - 8);
  v16 = *(v246 + 64);
  MEMORY[0x28223BE20](v247);
  v248 = &v227 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = type metadata accessor for FitnessIntelligenceConnection();
  v273 = *(v274 - 8);
  v18 = *(v273 + 64);
  MEMORY[0x28223BE20](v274);
  v245 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v240 = &v227 - v22;
  v251 = type metadata accessor for FitnessContextDemoConfig();
  v250 = *(v251 - 8);
  v23 = *(v250 + 64);
  MEMORY[0x28223BE20](v251);
  v243 = &v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v239 = &v227 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v238 = &v227 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v237 = &v227 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v236 = &v227 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v235 = &v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v264 = &v227 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v263 = &v227 - v44;
  MEMORY[0x28223BE20](v43);
  v262 = &v227 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v261 = &v227 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v260 = &v227 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v259 = &v227 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v54 - 8);
  v232 = &v227 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v258 = &v227 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v257 = &v227 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v256 = &v227 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v255 = &v227 - v66;
  v231 = type metadata accessor for Date();
  v230 = *(v231 - 8);
  v67 = *(v230 + 64);
  MEMORY[0x28223BE20](v231);
  v254 = &v227 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for WorkoutGoal();
  v271 = *(v272 - 8);
  v69 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v253 = &v227 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for WorkoutState();
  v269 = *(v270 - 8);
  v71 = *(v269 + 64);
  v72 = MEMORY[0x28223BE20](v270);
  v244 = &v227 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = v73;
  MEMORY[0x28223BE20](v72);
  v284 = &v227 - v74;
  v267 = type metadata accessor for UUID();
  v266 = *(v267 - 8);
  v75 = *(v266 + 64);
  v76 = MEMORY[0x28223BE20](v267);
  v252 = &v227 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v280 = &v227 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v83 = &v227 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v229 = &v227 - v84;
  v85 = type metadata accessor for WorkoutVoiceTranscript();
  v86 = *(v85 - 8);
  v281 = v85;
  v282 = v86;
  v87 = *(v86 + 64);
  v88 = MEMORY[0x28223BE20](v85);
  v234 = &v227 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v88);
  v228 = &v227 - v91;
  MEMORY[0x28223BE20](v90);
  v283 = &v227 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  v94 = *(v93 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v227 - v96;
  v98 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v99 = *(*(v98 - 8) + 64);
  v100 = MEMORY[0x28223BE20](v98);
  v102 = &v227 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v104 = &v227 - v103;
  swift_defaultActor_initialize();
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) = 0;
  v105 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v106 - 8) + 56))(v104, 1, 6, v106);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v104, v102);
  Published.init(initialValue:)();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v104, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v107 = v12 + v105;
  v108 = v275;
  (*(v94 + 32))(v107, v97, v93);
  v109 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult;
  v110 = type metadata accessor for InferenceResult();
  (*(*(v110 - 8) + 56))(v12 + v109, 1, 1, v110);
  v111 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  *v111 = 0;
  *(v111 + 8) = 1;
  v112 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  v113 = type metadata accessor for WorkoutVoiceMoment();
  v114 = *(*(v113 - 8) + 56);
  v114(v12 + v112, 1, 1, v113);
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected) = 2;
  v115 = (v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey);
  *v115 = 0xD00000000000001DLL;
  v115[1] = 0x800000020B4694B0;
  v116 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey;
  strcpy((v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), "workoutIsMuted");
  *(v116 + 15) = -18;
  v117 = (v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey);
  *v117 = 0xD000000000000011;
  v117[1] = 0x800000020B4694D0;
  v114(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight, 1, 1, v113);
  v118 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  v119 = type metadata accessor for AnnounceUtteranceRequest();
  (*(*(v119 - 8) + 56))(v12 + v118, 1, 1, v119);
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext) = 0;
  v120 = [v108 configuration];
  v285 = v12;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration) = v120;
  v121 = [v108 configuration];
  v122 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v123 = *&v121[v122];

  if (v123 != 10)
  {
    goto LABEL_12;
  }

  v124 = [objc_opt_self() standardUserDefaults];
  v125 = *v115;
  v126 = v115[1];

  v127 = MEMORY[0x20F2E6C00](v125, v126);

  v128 = [v124 stringForKey_];

  if (v128)
  {
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    v133 = __swift_project_value_buffer(v132, static WOLog.workoutVoice);

    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *&v286 = v137;
      *v136 = 136315138;
      *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, &v286);
      _os_log_impl(&dword_20AEA4000, v134, v135, "Found a persisted session identifier for recovery: %s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v137);
      MEMORY[0x20F2E9420](v137, -1, -1);
      MEMORY[0x20F2E9420](v136, -1, -1);
    }

    v138 = v266;
    v139 = v280;
    v140 = v282;
    v141 = v229;
    UUID.init(uuidString:)();

    v142 = v285;
    outlined init with take of InferenceResult?(v141, v285 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v143 = [v108 builder];
    v144 = v267;
    if (v143)
    {
      v229 = v133;
      v145 = v143;
      v146 = [v143 metadata];

      v147 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v147 + 16) && (v148 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x800000020B4687C0), (v149 & 1) != 0))
      {
        outlined init with copy of Any(*(v147 + 56) + 32 * v148, &v286);

        if (swift_dynamicCast())
        {
          lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceTranscript and conformance WorkoutVoiceTranscript, MEMORY[0x277D0A498]);
          v150 = v228;
          v151 = v281;
          SnapshotSerializable.init(protobufData:)();
          (*(v140 + 32))(v283, v150, v151);
          v142 = v285;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v142 = v285;
    }

    WorkoutVoiceTranscript.init(entries:)();
  }

  else
  {
LABEL_12:
    v138 = v266;
    v142 = v285;
    v144 = v267;
    (*(v266 + 56))(v285 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, 1, 1, v267);
    WorkoutVoiceTranscript.init(entries:)();
    v139 = v280;
  }

LABEL_16:
  *(v142 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) = v108;
  outlined init with copy of Measurement<NSUnitDuration>?(v142 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v152 = *(v138 + 48);
  v153 = v152(v83, 1, v144);
  v154 = v268;
  if (v153 == 1)
  {
    v155 = v108;
    UUID.init()();
    if (v152(v83, 1, v144) != 1)
    {
      outlined destroy of Measurement<NSUnitDuration>?(v83, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v138 + 32))(v139, v83, v144);
    v156 = v108;
  }

  v229 = a11;
  v228 = a10;
  v157 = v233;
  v227 = static WorkoutVoiceAlert.makeConfiguredAlerts(activityType:unitManager:)(v233, v154);
  (*(v138 + 16))(v252, v139, v144);
  (*(v271 + 16))(v253, v279, v272);
  v233 = v157;
  Date.init()();
  v158 = *(v230 + 56);
  v159 = v231;
  v158(v255, 1, 1, v231);
  v158(v256, 1, 1, v159);
  v160 = type metadata accessor for WeatherCondition();
  (*(*(v160 - 8) + 56))(v257, 1, 1, v160);
  v161 = objc_opt_self();
  v162 = v265;
  v163 = [v161 miles];
  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v164 = v258;
  Measurement.init(value:unit:)();
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v166 = *(*(v165 - 8) + 56);
  v166(v164, 0, 1, v165);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v168 = *(*(v167 - 8) + 56);
  v168(v259, 1, 1, v167);
  v168(v260, 1, 1, v167);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v169 - 8) + 56))(v261, 1, 1, v169);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v171 = *(*(v170 - 8) + 56);
  v171(v262, 1, 1, v170);
  v171(v263, 1, 1, v170);
  v171(v264, 1, 1, v170);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v172 - 8) + 56))(v236, 1, 1, v172);
  v166(v232, 1, 1, v165);
  v173 = MEMORY[0x277D84F90];
  v231 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12HKSampleTypeC_SaySo0C0CGTt0g5Tf4g_n(v173);
  v174 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v174 - 8) + 56))(v237, 1, 1, v174);
  v175 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v175 - 8) + 56))(v238, 1, 1, v175);
  v171(v235, 1, 1, v170);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  (*(*(v176 - 8) + 56))(v239, 1, 1, v176);
  v177 = v284;
  v178 = v233;
  WorkoutState.init(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  v179 = (v269 + 16);
  v180 = *(v269 + 16);
  v180(v285 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState, v177, v270);
  type metadata accessor for NLWorkoutDemoUtilities();
  v181 = v240;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfig()(v240);
  v182 = v250;
  v183 = v251;
  if ((*(v250 + 48))(v181, 1, v251) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v181, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
    type metadata accessor for WorkoutVoiceSession();
    (*(v273 + 16))(v245, v278, v274);
    (*(v246 + 104))(v248, *MEMORY[0x277D0A360], v247);
    (*(v282 + 16))(v234, v283, v281);
    v184 = v268;
    v185 = WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)();
    v186 = 0;
  }

  else
  {
    (*(v182 + 32))(v243, v181, v183);
    v187 = v278;
    v188 = v274;
    v189 = v273;
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v264 = v179;
    v265 = v180;
    v190 = type metadata accessor for Logger();
    __swift_project_value_buffer(v190, static WOLog.workoutVoice);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      *v193 = 0;
      _os_log_impl(&dword_20AEA4000, v191, v192, "[DemoMode] Using demo config", v193, 2u);
      MEMORY[0x20F2E9420](v193, -1, -1);
    }

    type metadata accessor for WorkoutVoiceSession();
    (*(v189 + 16))(v245, v187, v188);
    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_So21FIWorkoutActivityTypeC08activityF019FitnessIntelligence0H17ContextDemoConfigV6configtMd, &_s10Foundation4DateV4date_So21FIWorkoutActivityTypeC08activityF019FitnessIntelligence0H17ContextDemoConfigV6configtMR);
    v195 = *(v194 + 48);
    v196 = *(v194 + 64);
    v197 = v268;
    v198 = v248;
    static Date.now.getter();
    v199 = v178;
    *&v198[v195] = v178;
    v200 = v250;
    v201 = v243;
    v202 = v251;
    (*(v250 + 16))(&v198[v196], v243, v251);
    (*(v246 + 104))(v198, *MEMORY[0x277D0A358], v247);
    (*(v282 + 16))(v234, v283, v281);
    v203 = v199;
    v185 = WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)();
    (*(v200 + 8))(v201, v202);
    v186 = 1;
    v180 = v265;
  }

  v204 = v285;
  *(v285 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession) = v185;
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) = v186;
  v205 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_inferenceClient;
  v265 = type metadata accessor for InferenceClient();
  v268 = *(v265 - 1);
  (*(v268 + 2))(v204 + v205, v277, v265);
  v206 = v276;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v276, v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider);
  v207 = (v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
  v208 = v229;
  *v207 = v228;
  v207[1] = v208;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v206, &v286);
  type metadata accessor for WorkoutBuddyDisplayStateHandler();
  v209 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v209 + 112) = 131330;
  *(v209 + 116) = 6;
  *(v209 + 128) = 0;
  swift_unknownObjectWeakInit();
  outlined init with take of WorkoutBuddyAvailabilityProviding(&v286, v209 + 136);
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler) = v209;
  v210 = *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  type metadata accessor for BreakthroughMomentChecker();
  v211 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v211 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v211 + 120) = v210;
  *(v211 + 112) = 0;
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker) = v211;
  type metadata accessor for MusicMomentHandler();
  swift_allocObject();
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler) = MusicMomentHandler.init()();
  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for FIWorkoutDefaultMetricsProvider, 0x277D095E8);
  v212 = v270;
  *(&v287 + 1) = v270;
  v288 = MEMORY[0x277D09FA0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v286);
  v214 = v284;
  v180(boxed_opaque_existential_1, v284, v212);
  v215 = static FIWorkoutDefaultMetricsProvider.getSupportedMetrics(for:)();
  __swift_destroy_boxed_opaque_existential_1Tm_19(&v286);
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics) = v215;
  type metadata accessor for BluetoothHeadphonesMonitor();
  v286 = 0u;
  v287 = 0u;
  v288 = 0;
  swift_allocObject();
  *(v204 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor) = BluetoothHeadphonesMonitor.init(routeDetectorFactory:)(&v286);
  v216 = type metadata accessor for TaskPriority();
  v217 = *(*(v216 - 8) + 56);
  v218 = v249;
  v217(v249, 1, 1, v216);
  v219 = v244;
  v180(v244, v214, v212);
  v220 = v269;
  v221 = (*(v269 + 80) + 40) & ~*(v269 + 80);
  v222 = swift_allocObject();
  *(v222 + 2) = 0;
  *(v222 + 3) = 0;
  *(v222 + 4) = v204;
  (*(v220 + 32))(&v222[v221], v219, v212);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v218, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v222);

  v217(v218, 1, 1, v216);
  v223 = swift_allocObject();
  v223[2] = 0;
  v223[3] = 0;
  v224 = v275;
  v223[4] = v275;
  v223[5] = v204;
  v225 = v224;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v218, &async function pointer to partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v223);

  __swift_destroy_boxed_opaque_existential_1Tm_19(v276);
  (*(v268 + 1))(v277, v265);
  (*(v273 + 8))(v278, v274);
  (*(v271 + 8))(v279, v272);
  (*(v220 + 8))(v284, v212);
  (*(v266 + 8))(v280, v267);
  (*(v282 + 8))(v283, v281);
  return v204;
}

uint64_t outlined destroy of Measurement<NSUnitDuration>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of WorkoutBuddyAvailabilityProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _sSo8NSObjectCMaTm_4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

  return closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

  return closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with take of InferenceResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ElevationSampleBridge.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOElevationSample_bridgedValue;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ElevationSampleBridge.value.getter()
{
  v1 = v0 + OBJC_IVAR___WOElevationSample_bridgedValue;
  v2 = *(v1 + *(type metadata accessor for ElevationSample() + 20));

  return v2;
}

id ElevationSampleBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of ElevationSample(a1, v3 + OBJC_IVAR___WOElevationSample_bridgedValue);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of ElevationSample(a1);
  return v4;
}

id ElevationSampleBridge.init(_:)(uint64_t a1)
{
  outlined init with copy of ElevationSample(a1, v1 + OBJC_IVAR___WOElevationSample_bridgedValue);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ElevationSampleBridge();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of ElevationSample(a1);
  return v3;
}

uint64_t type metadata accessor for ElevationSampleBridge()
{
  result = type metadata singleton initialization cache for ElevationSampleBridge;
  if (!type metadata singleton initialization cache for ElevationSampleBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ElevationSampleBridge.__allocating_init(date:value:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___WOElevationSample_bridgedValue];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  *&v6[*(type metadata accessor for ElevationSample() + 20)] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ElevationSampleBridge.init(date:value:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___WOElevationSample_bridgedValue];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  *&v5[*(type metadata accessor for ElevationSample() + 20)] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ElevationSampleBridge();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

id ElevationSampleBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElevationSampleBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElevationSampleBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ElevationSampleBridge()
{
  result = type metadata accessor for ElevationSample();
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id RaceCoordinator.__allocating_init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(a1, a2, a3);

  return v8;
}

Class @objc RaceCoordinator.clusterUUID.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t RaceCoordinator.clusterUUID.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RaceCoordinator.routeTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RaceCoordinator.routeTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t RaceCoordinator.routeDelegate.getter()
{
  v1 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t RaceCoordinator.routeDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id RaceCoordinator.init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v6 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(a1, a2, a3);

  return v6;
}

Swift::Void __swiftcall RaceCoordinator.activate()()
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.race);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315650;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (v2[OBJC_IVAR___WORaceCoordinator_raceFilter])
    {
      v11 = 1953718604;
    }

    else
    {
      v11 = 0x6C616E6F73726550;
    }

    if (v2[OBJC_IVAR___WORaceCoordinator_raceFilter])
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xED00007473654220;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v6 + 14) = v13;
    v5 = &OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
    *(v6 + 22) = 2080;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v6 + 24) = v16;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Race Coordinator: Activating with cluster: %s, raceFilter: %s, workoutUUID: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v17 = *&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24];
  v18 = *&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore], v17);
  v19 = v5[59];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v18 + 16);

  v21(&v2[v19], 0, partial apply for closure #1 in RaceCoordinator.activate(), v20, v17, v18, -1.0);
}

void closure #1 in RaceCoordinator.activate()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  if (v13)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.race);
    v17 = v12;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
      v24 = v23;
      outlined consume of Result<RaceRoute, Error>(v12, 1);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, aBlock);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Race Coordinator: Not activating due to query route failure %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_20(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {

      outlined consume of Result<RaceRoute, Error>(v12, 1);
    }

    return;
  }

  v62 = v8;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static WOLog.race);

  v61[1] = v27;
  v28 = Logger.logObject.getter();
  LOBYTE(v29) = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v63 = v12 >> 62;
  v64 = v3;
  if (!v30)
  {
    outlined consume of Result<RaceRoute, Error>(v12, 0);
    goto LABEL_15;
  }

  v31 = swift_slowAlloc();
  *v31 = 134217984;
  if (v12 >> 62)
  {
    goto LABEL_53;
  }

  v32 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v31 + 4) = v32;
    v33 = v31;
    outlined consume of Result<RaceRoute, Error>(v12, 0);
    _os_log_impl(&dword_20AEA4000, v28, v29, "Race Coordinator: queried route of total length %ld", v33, 0xCu);
    MEMORY[0x20F2E9420](v33, -1, -1);
LABEL_15:

    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v29 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = v15;
    *(v34 + 24) = v12;
    aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.activate();
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_26;
    v35 = _Block_copy(aBlock);
    outlined copy of Result<RaceRoute, Error>(v12, 0);
    v15 = v15;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v35);
    _Block_release(v35);

    (*(v64 + 8))(v6, v2);
    (*(v62 + 8))(v11, v7);
    v7 = v63;
    if (!v63)
    {
      break;
    }

    if (v12 < 0)
    {
      v28 = v12;
    }

    else
    {
      v28 = (v12 & 0xFFFFFFFFFFFFFF8);
    }

    v2 = __CocoaSet.count.getter();
    v31 = __CocoaSet.count.getter();
    if ((v31 & 0x8000000000000000) == 0)
    {
      if (v2 >= 0xE10)
      {
        v60 = 3600;
      }

      else
      {
        v60 = v2;
      }

      if (v2 >= 0)
      {
        v37 = v60;
      }

      else
      {
        v37 = 3600;
      }

      if (__CocoaSet.count.getter() < v37)
      {
        goto LABEL_64;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_53:
    v59 = v31;
    v32 = __CocoaSet.count.getter();
    v31 = v59;
  }

  v36 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36 >= 0xE10)
  {
    v37 = 3600;
  }

  else
  {
    v37 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36 < v37)
  {
LABEL_64:
    __break(1u);
    return;
  }

LABEL_20:
  if ((v12 & 0xC000000000000001) == 0)
  {

    goto LABEL_28;
  }

  if (!v37)
  {

    if (v7)
    {
      goto LABEL_29;
    }

LABEL_28:
    v40 = 0;
    v41 = (v12 & 0xFFFFFFFFFFFFFF8);
    v42 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v43 = (2 * v37) | 1;
    goto LABEL_31;
  }

  type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);

  v38 = 0;
  do
  {
    v39 = v38 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v38);
    v38 = v39;
  }

  while (v37 != v39);
  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_29:
  outlined consume of Result<RaceRoute, Error>(v12, 0);
  v41 = _CocoaArrayWrapper.subscript.getter();
  v40 = v44;
  v43 = v45;
  if ((v45 & 1) == 0)
  {
LABEL_30:
    specialized _copyCollectionToContiguousArray<A>(_:)(v41, v42, v40, v43);
    v43 = v46;
    goto LABEL_37;
  }

LABEL_31:
  v47 = v42;
  v48 = type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);

  if (__OFSUB__(v43 >> 1, v40))
  {
    __break(1u);
LABEL_55:
    v51 = __CocoaSet.count.getter();
    goto LABEL_42;
  }

  if (v50 != (v43 >> 1) - v40)
  {
    swift_unknownObjectRelease();
    v42 = v47;
    goto LABEL_30;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v43)
  {
    goto LABEL_38;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_37:
  swift_unknownObjectRelease();
LABEL_38:

  v41 = Logger.logObject.getter();
  LOBYTE(v47) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v41, v47))
  {

    goto LABEL_44;
  }

  v48 = swift_slowAlloc();
  *v48 = 134217984;
  if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v51 = *(v43 + 16);
LABEL_42:
  *(v48 + 4) = v51;

  _os_log_impl(&dword_20AEA4000, v41, v47, "Race Coordinator: activating route with rolling window of length %ld", v48, 0xCu);
  MEMORY[0x20F2E9420](v48, -1, -1);

LABEL_44:
  v52 = OBJC_IVAR___WORaceCoordinator_racePositionProvider;
  v53 = *&v15[OBJC_IVAR___WORaceCoordinator_racePositionProvider];
  v54 = specialized _arrayForceCast<A, B>(_:)(v43);

  v55 = specialized _arrayConditionalCast<A, B>(_:)(v54);

  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v56 = v55;
  }

  aBlock[0] = v56;
  RacePositionProvider.activate(raceRoute:activity:)(aBlock, *&v15[OBJC_IVAR___WORaceCoordinator_activity]);

  v57 = *&v15[v52] + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  *(v57 + 8) = &protocol witness table for RaceCoordinator;
  swift_unknownObjectWeakAssign();
  v58 = *&v15[OBJC_IVAR___WORaceCoordinator_raceLocationProvider];
  RaceLocationProvider.activate()();
}

Swift::Void __swiftcall RaceCoordinator.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___WORaceCoordinator_raceLocationProvider);
  RaceLocationProvider.updateWithElapsedTime(_:)(a1);
  v5 = *(*(v2 + OBJC_IVAR___WORaceCoordinator_racePositionProvider) + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  MetadataSavingDelegate.updateWithElapsedTime(_:)(a1);
}

uint64_t RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.race);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Race Coordinator: requesting %ld from timestamp %f", v13, 0x16u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v14 = *(v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24);
  v15 = *(v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore), v14);
  v16 = OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v15 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(a2);
  v18(v5 + v16, a1, partial apply for closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:), v17, v14, v15, a4);
}

void closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  LOBYTE(v14) = *(a1 + 8);
  v17 = one-time initialization token for race;
  if (v14)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.race);
    v19 = v16;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined consume of Result<RaceRoute, Error>(v16, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Race Coordinator: Failed to query more points %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_20(v23);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    if (a2)
    {
      a2(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v36 = v7;

    if (v17 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.race);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v35 = a3;
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      if (v16 >> 62)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v30 + 4) = v31;
      outlined consume of Result<RaceRoute, Error>(v16, 0);
      _os_log_impl(&dword_20AEA4000, v28, v29, "Race Coordinator: queried route of length %ld", v30, 0xCu);
      MEMORY[0x20F2E9420](v30, -1, -1);
      a3 = v35;
    }

    else
    {
      outlined consume of Result<RaceRoute, Error>(v16, 0);
    }

    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = a3;
    v33[4] = v16;
    aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_20_1;
    v34 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(a2);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v15, v10, v34);
    _Block_release(v34);

    (*(v36 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }
}

Swift::Void __swiftcall RaceCoordinator.recoverRoutePoints()()
{
  v1 = *(v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24);
  v2 = *(v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore), v1);
  v3 = OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 16);

  v5(v0 + v3, 0, partial apply for closure #1 in RaceCoordinator.recoverRoutePoints(), v4, v1, v2, -1.0);
}

void closure #1 in RaceCoordinator.recoverRoutePoints()(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = one-time initialization token for race;
    if (v13)
    {
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.race);
      v18 = v12;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136315138;
        swift_getErrorValue();
        v23 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
        v25 = v24;
        outlined consume of Result<RaceRoute, Error>(v12, 1);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_20AEA4000, v19, v20, "Race Coordinator: Failed to query whole route %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_20(v22);
        MEMORY[0x20F2E9420](v22, -1, -1);
        MEMORY[0x20F2E9420](v21, -1, -1);
      }

      else
      {

        outlined consume of Result<RaceRoute, Error>(v12, 1);
      }
    }

    else
    {

      if (v16 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static WOLog.race);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v37 = v3;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        if (v12 >> 62)
        {
          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v31 + 4) = v32;
        outlined consume of Result<RaceRoute, Error>(v12, 0);
        _os_log_impl(&dword_20AEA4000, v28, v29, "Race Coordinator: recovering full route of length %ld", v31, 0xCu);
        MEMORY[0x20F2E9420](v31, -1, -1);
      }

      else
      {
        outlined consume of Result<RaceRoute, Error>(v12, 0);
      }

      type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v33 = static OS_dispatch_queue.main.getter();
      v34 = swift_allocObject();
      *(v34 + 16) = v15;
      *(v34 + 24) = v12;
      aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.recoverRoutePoints();
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_73;
      v35 = _Block_copy(aBlock);
      v36 = v15;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v11, v6, v35);
      _Block_release(v35);

      (*(v37 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }
  }
}

uint64_t closure #1 in closure #1 in RaceCoordinator.activate()(uint64_t a1)
{
  v2 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 setRoutePoints_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id RaceCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized RaceCoordinator.init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v4 = v3;
  v37 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___WORaceCoordinator_routeDelegate] = 0;
  v12 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v13(&v4[OBJC_IVAR___WORaceCoordinator_clusterUUID], &a1[v12], v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  static Published.subscript.getter();

  if (v40 == 1)
  {
    v15 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v15 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v16 = &v14[*v15];
  swift_beginAccess();
  v13(v11, v16, v7);
  (*(v8 + 32))(&v4[OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID], v11, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4[OBJC_IVAR___WORaceCoordinator_raceFilter] = v40;
  v17 = &v14[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  swift_beginAccess();
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = &v4[OBJC_IVAR___WORaceCoordinator_routeTitle];
  *v20 = v18;
  v20[1] = v19;
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v22 = *&v14[v21];

  v23 = v22;

  v24 = [v23 identifier];
  v25 = OBJC_IVAR___WORaceCoordinator_activity;
  *&v4[OBJC_IVAR___WORaceCoordinator_activity] = v24;
  v26 = type metadata accessor for RaceRouteDataStore();
  v27 = swift_allocObject();
  *(v27 + 24) = a3;
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  v28 = &v4[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore];
  v28[3] = v26;
  v28[4] = &protocol witness table for RaceRouteDataStore;
  *v28 = v27;
  v29 = *&v4[v25];
  v30 = objc_allocWithZone(type metadata accessor for RaceLocationProvider());
  v31 = RaceLocationProvider.init(activity:)(v29);
  *&v4[OBJC_IVAR___WORaceCoordinator_raceLocationProvider] = v31;
  v32 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  v33 = v31;
  v34 = v37;
  v35 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v33, v34, v32);

  *&v4[OBJC_IVAR___WORaceCoordinator_racePositionProvider] = v35;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t outlined init with copy of RaceRouteDataStoring(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for RaceCoordinator()
{
  result = type metadata singleton initialization cache for RaceCoordinator;
  if (!type metadata singleton initialization cache for RaceCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RaceCoordinator()
{
  result = type metadata accessor for UUID();
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

void outlined consume of Result<RaceRoute, Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for CLRoutePoint(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t partial apply for closure #1 in closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id outlined copy of Result<RaceRoute, Error>(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id MultiSportTransitionsStoreBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiSportTransitionsStoreBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiSportTransitionsStoreBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MultiSportTransitionsStoreBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiSportTransitionsStoreBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(uint64_t a1, double a2)
{
  v35 = a1;
  v3 = type metadata accessor for RoutePoint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  result = WorkoutPlan.Route.points.getter();
  v9 = result;
  v34 = *(result + 16);
  if (v34)
  {
    v10 = 0;
    v11 = 0;
    v33 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v32[1] = v4 + 16;
    v12 = (v4 + 8);
    v13 = MEMORY[0x277D84F90];
    v14 = 0.0;
    while (v11 < *(v9 + 16))
    {
      (*(v4 + 16))(v7, v33 + *(v4 + 72) * v11, v3);
      if (v10)
      {
        v15 = v10;
        [v15 latitude_deg];
        v17 = v16;
        [v15 longitude_deg];
        v19 = v18;
        RoutePoint.coordinate.getter();
        v20 = CLLocationCoordinate2D.distance(from:)(__PAIR128__(v19, v17));

        v14 = v14 + v20;
      }

      RoutePoint.coordinate.getter();
      v22 = v21;
      RoutePoint.coordinate.getter();
      v24 = v23;
      v25 = COERCE_DOUBLE(RoutePoint.altitude.getter());
      if (v26)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v25;
      }

      v28 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:1 longitude:v22 altitude:v24 odometer:v27 timestamp:v14 signalEnvironmentType:v14];
      v29 = v28;
      if (v14 >= a2)
      {
        v30 = v28;
        MEMORY[0x20F2E6F30]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32[0] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v13 = v36;
      }

      else
      {
      }

      if (v35 < 1)
      {
        result = (*v12)(v7, v3);
      }

      else
      {
        if (v13 >> 62)
        {
          v31 = __CocoaSet.count.getter();
        }

        else
        {
          v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        result = (*v12)(v7, v3);
        if (v31 == v35)
        {

          return v13;
        }
      }

      ++v11;
      v10 = v29;
      if (v34 == v11)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = 0;
    v13 = MEMORY[0x277D84F90];
LABEL_24:

    return v13;
  }

  return result;
}

id RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(uint64_t *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm_21(a1);
  return v8;
}

uint64_t RacePositionProvider.raceDelegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RacePositionProvider.raceDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WORacePositionProvider_raceDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RacePositionProvider.raceDelegate.modify;
}

void RacePositionProvider.raceDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t RacePositionProvider.routeProviderDelegate.getter()
{
  v1 = v0 + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t RacePositionProvider.routeProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RacePositionProvider.routeProviderDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return RacePositionProvider.routeProviderDelegate.modify;
}

void RacePositionProvider.routeProviderDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id RacePositionProvider.init(raceLocationProvider:builder:)(uint64_t *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v10, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm_21(a1);
  return v12;
}

uint64_t RacePositionProvider.activate(raceRoute:activity:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.app);
  v16._countAndFlagsBits = 0xD000000000000026;
  v16._object = 0x800000020B469770;
  v17._object = 0x800000020B4697A0;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v16, v17);
  v22 = *(v3 + OBJC_IVAR___WORacePositionProvider_queue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a2;
  v19[4] = v14;
  aBlock[4] = partial apply for closure #1 in RacePositionProvider.activate(raceRoute:activity:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_74;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v20);
  _Block_release(v20);
  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

void closure #1 in RacePositionProvider.activate(raceRoute:activity:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = Strong + OBJC_IVAR___WORacePositionProvider_state;
  if (*(Strong + OBJC_IVAR___WORacePositionProvider_state + 8) != 2 || *(Strong + OBJC_IVAR___WORacePositionProvider_state) != 1)
  {
LABEL_19:

    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CBFC48]) init];
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = v11;
  v12 = [v11 configureWithWorkoutActivityType:a2 bufferSize:3600 offRouteGraceDurationInSec:180];
  if (v12)
  {
    v4 = v12;
    if (one-time initialization token for race == -1)
    {
LABEL_10:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.race);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v4;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Race Position Provider: Failed to initialize CLRacingRouteManager with result %lu", v16, 0xCu);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      if (v4 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 8;
      }

      if (v4 == 1)
      {
        v18 = 7;
      }

      else
      {
        v18 = v17;
      }

      lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v19 = swift_allocError();
      *v20 = v18;

      v21 = *v9;
      *v9 = v19;
      v22 = *(v9 + 8);
      *(v9 + 8) = 1;
      outlined consume of RacePositionProvider.State(v21, v22);
      v23 = &v8[OBJC_IVAR___WORacePositionProvider_position];
      *v23 = 3;
      *(v23 + 2) = 0;
      v23[12] = 1;
      goto LABEL_19;
    }

LABEL_49:
    swift_once();
    goto LABEL_10;
  }

  if ([v3 numberOfRoutePointsToAdd] < 1)
  {
LABEL_47:
    RacePositionProvider.subscribeToLocationUpdates()();

    return;
  }

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v3 addRoutePoints_];

  if (!v25)
  {
    if (a3 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (!v31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_37:
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static WOLog.race);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          if (a3 >> 62)
          {
            v42 = __CocoaSet.count.getter();
          }

          else
          {
            v42 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v41 + 4) = v42;

          _os_log_impl(&dword_20AEA4000, v39, v40, "Race Position Provider: Activated CLRacingRouteManager with %ld points", v41, 0xCu);
          MEMORY[0x20F2E9420](v41, -1, -1);
        }

        else
        {
        }

        v43 = *v9;
        *v9 = v3;
        v44 = *(v9 + 8);
        *(v9 + 8) = 0;
        v45 = v3;
        outlined consume of RacePositionProvider.State(v43, v44);
        goto LABEL_47;
      }
    }

    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      __break(1u);
    }

    else if ((a3 & 0xC000000000000001) == 0)
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v33 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(a3 + 8 * v33 + 32);
LABEL_36:
        v35 = v34;
        [v34 timestamp_s];
        v37 = v36;

        *&v8[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v37;
        goto LABEL_37;
      }

      __break(1u);
      return;
    }

    v34 = MEMORY[0x20F2E7A20](v33, a3);
    goto LABEL_36;
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.race);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    if (a3 >> 62)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    *(v29 + 12) = 2048;
    *(v29 + 14) = v25;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Race Position Provider: Failed to add %ld points to CLRacingRouteManager with result %lu", v29, 0x16u);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall RacePositionProvider.subscribeToLocationUpdates()()
{
  v1 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24);
  v2 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider), v1);
  (*(v2 + 8))(v1, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type AnyPublisher<RaceLocation, RaceError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in RacePositionProvider.subscribeToLocationUpdates()(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v4 = swift_allocError();
      *v5 = v1;
      v6 = &v3[OBJC_IVAR___WORacePositionProvider_state];
      v7 = *&v3[OBJC_IVAR___WORacePositionProvider_state];
      *v6 = v4;
      LOBYTE(v5) = v6[8];
      v6[8] = 1;
      outlined consume of RacePositionProvider.State(v7, v5);
    }

    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.race);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v14 = MEMORY[0x20F2E7F50](&type metadata for RaceError, v13);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Race Position Provider: Transitioning to failed state with %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_21(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }
}

void closure #2 in RacePositionProvider.subscribeToLocationUpdates()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v1;
    RacePositionProvider.handleLocationUpdate(_:)(&v4);
  }
}

void RacePositionProvider.handleLocationUpdate(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___WORacePositionProvider_state + 8))
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.race);
    v73 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v73, v15, "Race Position Provider: handleLocation - no active evaluator", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

LABEL_19:
    v35 = v73;

    return;
  }

  v17 = *(v1 + OBJC_IVAR___WORacePositionProvider_state);
  if (*(v1 + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) != 1)
  {
    v30 = one-time initialization token for race;
    v31 = v17;
    if (v30 == -1)
    {
LABEL_16:
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static WOLog.race);
      v73 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_20AEA4000, v73, v33, "Race Position Provider: workout paused - do not process location update", v34, 2u);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      outlined consume of RacePositionProvider.State(v17, 0);
      goto LABEL_19;
    }

LABEL_46:
    swift_once();
    goto LABEL_16;
  }

  v70 = v11;
  v71 = v4;
  v72 = v10;
  v18 = *a1;
  v81 = 1;
  v19 = *(v1 + OBJC_IVAR___WORacePositionProvider_queue);
  v20 = swift_allocObject();
  v20[2].isa = v17;
  v20[3].isa = &v81;
  v20[4].isa = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in RacePositionProvider.handleLocationUpdate(_:);
  *(v21 + 24) = v20;
  v73 = v20;
  v79 = _sIg_Ieg_TRTA_6;
  v80 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = &block_descriptor_76;
  v22 = _Block_copy(&aBlock);
  outlined copy of RacePositionProvider.State(v17, 0);
  outlined copy of RacePositionProvider.State(v17, 0);
  v23 = v1;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v81 != 1)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.race);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_31;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Race Position Provider: handleLocation - Skipping location processing while filling buffer";
    goto LABEL_30;
  }

  v24 = [v17 advanceToPoint_];
  if (!v24)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.race);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_31;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Race Position Provider: handleLocation - positionEvaluator failed to process point";
LABEL_30:
    _os_log_impl(&dword_20AEA4000, v37, v38, v40, v39, 2u);
    MEMORY[0x20F2E9420](v39, -1, -1);
LABEL_31:
    outlined consume of RacePositionProvider.State(v17, 0);

    return;
  }

  v25 = v24;
  v26 = [v24 state];
  v27 = 0.0;
  if (v26 > 2)
  {
    if ((v26 - 4) >= 2)
    {
      if (v26 == 3)
      {
        v28 = 1;
        v29 = 2;
        goto LABEL_37;
      }

      if (v26 == 6)
      {
        v28 = 1;
        v29 = 4;
        goto LABEL_37;
      }
    }

LABEL_36:
    v28 = 1;
    v29 = 3;
    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  if (v26 == 1)
  {
    [v25 timeAhead_s];
    v42 = v64;
    [v25 currentDistance_m];
    v28 = 0;
    v27 = v65;
    goto LABEL_38;
  }

  if (v26 != 2)
  {
    goto LABEL_36;
  }

  v28 = 1;
  v29 = 1;
LABEL_37:
  v42 = v29;
LABEL_38:
  v43 = (v23 + OBJC_IVAR___WORacePositionProvider_position);
  *v43 = v42;
  v43[2] = v27;
  *(v43 + 12) = v28;
  v44 = *(v23 + OBJC_IVAR___WORacePositionProvider_result);
  *(v23 + OBJC_IVAR___WORacePositionProvider_result) = v25;
  v69 = v25;

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static WOLog.race);
  v46 = v23;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v68 = v46;

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 136315138;
    v51 = *v43;
    v52 = *(v43 + 2);
    v53 = *(v43 + 12);
    v74 = v50;
    aBlock = v51;
    LODWORD(v76) = v52;
    BYTE4(v76) = v53;
    v54 = RacePosition.description.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v74);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_20AEA4000, v47, v48, "Race Position Provider: Updated race position to %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_21(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v67 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  v58 = v68;
  v59 = v69;
  v57[2] = v68;
  v57[3] = v59;
  v57[4] = v17;
  v79 = partial apply for closure #2 in RacePositionProvider.handleLocationUpdate(_:);
  v80 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = &block_descriptor_82;
  v60 = _Block_copy(&aBlock);
  outlined copy of RacePositionProvider.State(v17, 0);
  v61 = v58;
  v62 = v59;

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63 = v67;
  MEMORY[0x20F2E7580](0, v13, v7, v60);
  _Block_release(v60);

  outlined consume of RacePositionProvider.State(v17, 0);
  (*(v71 + 8))(v7, v3);
  (*(v70 + 8))(v13, v72);
}

uint64_t closure #1 in RacePositionProvider.handleLocationUpdate(_:)(void *a1, _BYTE *a2, char *a3)
{
  result = [a1 numberOfRoutePointsToAdd];
  if (result >= 1)
  {
    v7 = result;
    *a2 = 0;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.race);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Race Position Provider: CLRacingRouteManager requested %ld additional points", v11, 0xCu);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = &a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate];
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      v15 = *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp];
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      *(v16 + 24) = a3;
      v17 = *(v13 + 8);
      v18 = a1;
      v19 = a3;
      v17(v7, partial apply for closure #1 in RacePositionProvider.addLocationPoints(numberOfPoints:positionEvaluator:), v16, ObjectType, v13, v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void closure #2 in RacePositionProvider.handleLocationUpdate(_:)(char *a1, uint64_t a2, void *a3)
{
  aBlock[20] = *MEMORY[0x277D85DE8];
  v6 = [a1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didUpdate_];
    swift_unknownObjectRelease();
  }

  v9 = [a3 getRaceParameters];
  if (v9)
  {
    v10 = v9;
    aBlock[0] = 0;
    v11 = [objc_opt_self() archivedDataWithRootObject:v9 requiringSecureCoding:1 error:aBlock];
    v12 = aBlock[0];
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = *&a1[OBJC_IVAR___WORacePositionProvider_metadataDelegate];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B4697C0;
      *(inited + 48) = v13;
      *(inited + 56) = v15;
      outlined copy of Data._Representation(v13, v15);
      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSo8NSObjectCSgWOhTm_15(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v19 = *(v16 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v21 = swift_allocObject();
      v21[2] = v18;
      aBlock[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_89;
      v22 = _Block_copy(aBlock);

      [v19 addMetadata:isa completion:v22];
      _Block_release(v22);

      outlined consume of Data._Representation(v13, v15);
    }

    else
    {
      v26 = v12;
      v27 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.race);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20AEA4000, v29, v30, "Race Position Provider: Failed to encode CLRacingRouteParameters", v31, 2u);
        MEMORY[0x20F2E9420](v31, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.race);
    v10 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v24, "Race Position Provider: Received nil CLRacingRouteParameters on location update", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void closure #1 in RacePositionProvider.addLocationPoints(numberOfPoints:positionEvaluator:)(unint64_t a1, void *a2, char *a3)
{
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [a2 addRoutePoints_];

  if (v9)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.race);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      if (a1 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;

      *(v12 + 12) = 2048;
      *(v12 + 14) = v9;
      _os_log_impl(&dword_20AEA4000, oslog, v11, "Race Position Provider: Failed to add %ld points to CLRacingRouteManager with result %lu", v12, 0x16u);
      MEMORY[0x20F2E9420](v12, -1, -1);
LABEL_31:

      return;
    }

    goto LABEL_26;
  }

  if (a1 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(a1 + 8 * v15 + 32);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_41;
    }
  }

  v16 = MEMORY[0x20F2E7A20](v14 - 1, a1);
LABEL_15:
  v17 = v16;
  v4 = &selRef_totalDiskCapacity;
  [v16 timestamp_s];
  v19 = v18;

  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v19;
  if (v3)
  {
    a3 = MEMORY[0x20F2E7A20](0, a1);
    v20 = MEMORY[0x20F2E7A20](v15, a1);
    goto LABEL_21;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v15 >= v21)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v22 = *(a1 + 32 + 8 * v15);
  a3 = *(a1 + 32);
  v20 = v22;
LABEL_21:
  v15 = v20;
  if (one-time initialization token for race != -1)
  {
LABEL_41:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.race);

  oslog = a3;
  v24 = v15;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    if (a1 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v28;

    *(v27 + 12) = 2048;
    [oslog v4[81]];
    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    [v24 v4[81]];
    *(v27 + 24) = v30;
    _os_log_impl(&dword_20AEA4000, v25, v26, "Race Position Provider: Added %ld points from timestamp %f to %f to CLRacingRouteManager", v27, 0x20u);
    MEMORY[0x20F2E9420](v27, -1, -1);

    goto LABEL_31;
  }

LABEL_26:
}

Swift::Void __swiftcall RacePositionProvider.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = *(v1 + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  v3 = OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime;
  v4 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime);
  if (v4 < a1 && *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout) <= a1 - v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = [Strong metadata];
      swift_unknownObjectRelease();
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v9 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    aBlock[4] = _s11WorkoutCore22MetadataSavingDelegateC014insertOrUpdateC0yySDySSypGFySb_s5Error_pSgtYbcfU_TA_0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_11_0;
    v12 = _Block_copy(aBlock);

    [v9 addMetadata:isa completion:v12];
    _Block_release(v12);

    *(v2 + v3) = a1;
  }
}

Swift::Void __swiftcall RacePositionProvider.accumulatorDidStop()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  MetadataSavingDelegate.saveMetadata()();
  v3 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24);
  v4 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider), *(v1 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24));
  (*(v4 + 16))(v3, v4);
  v5 = OBJC_IVAR___WOMetadataSavingDelegate_builder;
  v6 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  v7 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B4697C0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002BLL;
  *(v8 + 24) = 0x800000020B4697C0;
  v29 = _s11WorkoutCore22MetadataSavingDelegateC06removeC0yySSFySb_s5Error_pSgtYbcfU_TA_0;
  v30 = v8;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_17;
  v9 = _Block_copy(&v25);

  [v6 _removeMetadata_completion_];
  _Block_release(v9);

  v10 = *(v2 + v5);
  v11 = MEMORY[0x20F2E6C00](0xD000000000000026, 0x800000020B465260);
  v12 = swift_allocObject();
  *(v12 + 16) = 0xD000000000000026;
  *(v12 + 24) = 0x800000020B465260;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v12;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_24_5;
  v13 = _Block_copy(&v25);

  [v10 _removeMetadata_completion_];
  _Block_release(v13);

  v14 = *(v2 + v5);
  v15 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B465290);
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000028;
  *(v16 + 24) = 0x800000020B465290;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v16;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_31_4;
  v17 = _Block_copy(&v25);

  [v14 _removeMetadata_completion_];
  _Block_release(v17);

  v18 = *(v2 + v5);
  v19 = MEMORY[0x20F2E6C00](0xD00000000000002DLL, 0x800000020B4652C0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD00000000000002DLL;
  *(v20 + 24) = 0x800000020B4652C0;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v20;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_38_0;
  v21 = _Block_copy(&v25);

  [v18 _removeMetadata_completion_];
  _Block_release(v21);

  v22 = v1 + OBJC_IVAR___WORacePositionProvider_state;
  v23 = *(v1 + OBJC_IVAR___WORacePositionProvider_state);
  *v22 = 1;
  v24 = *(v22 + 8);
  *(v22 + 8) = 2;
  outlined consume of RacePositionProvider.State(v23, v24);
}

void RacePositionProvider.sessionActivity(_:didChangeFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 - 3;
  if (a3 - 3) <= 6 && ((0x6Fu >> v4))
  {
    *(v3 + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) = 0x1000000uLL >> (8 * v4);
  }
}

Swift::Void __swiftcall RacePositionProvider.recoverFrom(_:)(HKLiveWorkoutBuilder a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v1[OBJC_IVAR___WORacePositionProvider_state];
  v13 = *&v1[OBJC_IVAR___WORacePositionProvider_state];
  *v12 = 0;
  v14 = v12[8];
  v12[8] = 2;
  outlined consume of RacePositionProvider.State(v13, v14);
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.race);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Race Position Provider: Recovery - Beginning recovery attempt", v18, 2u);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v19 = [(objc_class *)a1.super.super.isa metadata];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x800000020B4697C0), (v22 & 1) == 0) || (outlined init with copy of Any(*(v20 + 56) + 32 * v21, &aBlock), (swift_dynamicCast() & 1) == 0))
  {

    v26 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v29, "Race Position Provider: Recovery - No recovery object saved. Unable to recover race.", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    goto LABEL_14;
  }

  v24 = v93[0];
  v23 = v93[1];
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRacingRouteParameters, 0x277CBFC50);
  v82 = v24;
  v83 = v23;
  v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v31 = v25;
  if (!v25)
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Race Position Provider: Recovery - Failed to decode CLRacingRouteParameters", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    goto LABEL_11;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CBFC48]) init];
  if (![v32 setRaceParameters_])
  {

    v26 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v46))
    {
      v47 = v32;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v46, "Race Position Provider: Recovery - Failed to recover race with CLRacingRouteParameters", v48, 2u);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    else
    {
    }

LABEL_11:
    outlined consume of Data._Representation(v82, v83);
LABEL_14:

    return;
  }

  v79 = v32;
  v33 = v31;
  v80 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  LODWORD(v78) = v34;
  v35 = os_log_type_enabled(v80, v34);
  v81 = v33;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v81;
    *v37 = v31;
    v38 = v81;
    _os_log_impl(&dword_20AEA4000, v80, v78, "Race Position Provider: Recovery - Successfully recovery with CLRacingRouteParameters: %@", v36, 0xCu);
    _sSo8NSObjectCSgWOhTm_15(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

  v39 = CLRacingRouteParameters.lastResult.getter();
  v40 = *&v2[OBJC_IVAR___WORacePositionProvider_result];
  *&v2[OBJC_IVAR___WORacePositionProvider_result] = v39;
  v41 = v39;

  v42 = [v41 state];
  v43 = 0.0;
  if (v42 > 2)
  {
    if ((v42 - 4) >= 2)
    {
      if (v42 == 3)
      {
        v44 = 1;
        v45 = 2;
        goto LABEL_33;
      }

      if (v42 == 6)
      {
        v44 = 1;
        v45 = 4;
        goto LABEL_33;
      }
    }

LABEL_32:
    v44 = 1;
    v45 = 3;
    goto LABEL_33;
  }

  if (!v42)
  {
    goto LABEL_32;
  }

  if (v42 != 1)
  {
    if (v42 == 2)
    {
      v44 = 1;
      v45 = 1;
LABEL_33:
      v49 = v45;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  [v41 timeAhead_s];
  v49 = v72;
  [v41 currentDistance_m];
  v44 = 0;
  v43 = v73;
LABEL_34:
  v50 = &v2[OBJC_IVAR___WORacePositionProvider_position];
  *v50 = v49;
  v50[2] = v43;
  *(v50 + 12) = v44;
  v51 = v41;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v93[0] = v77;
    v78 = v54;
    *v54 = 136315138;
    v55 = [v51 state];
    LODWORD(v80) = v53;
    if (v55 > 2)
    {
      if ((v55 - 4) >= 2)
      {
        if (v55 == 3)
        {
          v57 = 2;
          goto LABEL_45;
        }

        if (v55 == 6)
        {
          v57 = 4;
LABEL_45:
          aBlock = v57;
          LODWORD(v88) = 0;
          v56 = 1;
          goto LABEL_46;
        }
      }
    }

    else if (v55)
    {
      if (v55 == 1)
      {
        [v51 timeAhead_s];
        v75 = v74;
        [v51 currentDistance_m];
        v56 = 0;
        *&v76 = v76;
        aBlock = v75;
        LODWORD(v88) = LODWORD(v76);
        goto LABEL_46;
      }

      if (v55 == 2)
      {
        v56 = 1;
        aBlock = 1;
        LODWORD(v88) = 0;
LABEL_46:
        BYTE4(v88) = v56;
        v58 = RacePosition.description.getter();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v93);

        v61 = v78;
        *(v78 + 4) = v60;
        _os_log_impl(&dword_20AEA4000, v52, v80, "Race Position Provider: Recovery - Recovered with CLRacingRoutePerformanceResults position %s", v61, 0xCu);
        v62 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm_21(v77);
        MEMORY[0x20F2E9420](v62, -1, -1);
        MEMORY[0x20F2E9420](v61, -1, -1);
        goto LABEL_47;
      }
    }

    v57 = 3;
    goto LABEL_45;
  }

LABEL_47:

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v78 = static OS_dispatch_queue.main.getter();
  v63 = swift_allocObject();
  v63[2] = v2;
  v63[3] = v51;
  v63[4] = v20;
  v91 = partial apply for closure #1 in RacePositionProvider.recoverFrom(_:);
  v92 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = thunk for @escaping @callee_guaranteed () -> ();
  v90 = &block_descriptor_44_0;
  v64 = _Block_copy(&aBlock);
  v80 = v51;
  v65 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v66 = v86;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v67 = v78;
  MEMORY[0x20F2E7580](0, v11, v7, v64);
  _Block_release(v64);

  (*(v85 + 8))(v7, v66);
  (*(v84 + 8))(v11, v8);
  v68 = v79;
  [v79 recoverRaceAtTimestamp];
  *&v65[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v69;
  v70 = *v12;
  *v12 = v68;
  LOBYTE(v67) = v12[8];
  v12[8] = 0;
  v71 = v68;
  outlined consume of RacePositionProvider.State(v70, v67);
  RacePositionProvider.subscribeToLocationUpdates()();

  outlined consume of Data._Representation(v82, v83);
}

uint64_t closure #1 in RacePositionProvider.recoverFrom(_:)(void *a1, uint64_t a2)
{
  v3 = [a1 updateHandler];
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();
    _Block_release(v4);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v6 recoverWith:a2 metadata:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

id RacePositionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RacePositionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RacePositionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void RacePositionProvider.racePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___WORacePositionProvider_position + 8);
  v3 = *(v1 + OBJC_IVAR___WORacePositionProvider_position + 12);
  *a1 = *(v1 + OBJC_IVAR___WORacePositionProvider_position);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

void protocol witness for RacePositionProviding.racePosition.getter in conformance RacePositionProvider(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR___WORacePositionProvider_position;
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 12);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v2;
}

id specialized RacePositionProvider.init(raceLocationProvider:builder:)(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v36[3] = a4;
  v36[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v18 = &a3[OBJC_IVAR___WORacePositionProvider_position];
  *v18 = 0;
  *(v18 + 2) = 0;
  v18[12] = 0;
  *&a3[OBJC_IVAR___WORacePositionProvider_result] = 0;
  v29 = OBJC_IVAR___WORacePositionProvider_queue;
  v28[1] = _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v12, *MEMORY[0x277D85260], v31);
  *&a3[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[OBJC_IVAR___WORacePositionProvider_shouldProcessLocations] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR___WORacePositionProvider_subscriptions] = v19;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = 0;
  outlined init with copy of RaceLocationProviding(v36, &a3[OBJC_IVAR___WORacePositionProvider_raceLocationProvider]);
  v20 = &a3[OBJC_IVAR___WORacePositionProvider_state];
  *v20 = 1;
  v20[8] = 2;
  v21 = type metadata accessor for MetadataSavingDelegate();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  v23 = v32;
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_builder] = v32;
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = 0x404E000000000000;
  v34.receiver = v22;
  v34.super_class = v21;
  v24 = v23;
  *&a3[OBJC_IVAR___WORacePositionProvider_metadataDelegate] = objc_msgSendSuper2(&v34, sel_init);
  v25 = type metadata accessor for RacePositionProvider();
  v33.receiver = a3;
  v33.super_class = v25;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_21(v36);
  return v26;
}

id specialized RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  (*(v9 + 16))(v12, a1, a4);
  return specialized RacePositionProvider.init(raceLocationProvider:builder:)(v12, a2, v13, a4, a5);
}

void outlined consume of RacePositionProvider.State(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore20RacePositionProviderC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for RacePositionProvider.State(uint64_t a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePositionProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RacePositionProvider.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id outlined copy of RacePositionProvider.State(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceError and conformance RaceError()
{
  result = lazy protocol witness table cache variable for type RaceError and conformance RaceError;
  if (!lazy protocol witness table cache variable for type RaceError and conformance RaceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceError and conformance RaceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceError and conformance RaceError;
  if (!lazy protocol witness table cache variable for type RaceError and conformance RaceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceError and conformance RaceError);
  }

  return result;
}

uint64_t RacePosition.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 12) == 1)
  {
    v3 = v1 > 1;
    if (v1 ^ 3 | v2)
    {
      v4 = 0x64657269707865;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v1 ^ 2 | v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v1 | v2)
    {
      v6 = 0x6574756F5266666FLL;
    }

    else
    {
      v6 = 0x6E4F746559746F6ELL;
    }

    if (v3)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v8 = *v0;
    _StringGuts.grow(_:)(41);
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
    Float.write<A>(to:)();
    return 0;
  }
}

id CLRacingRouteParameters.lastResult.getter()
{
  v1 = [v0 lastProjectedDataPoint];
  [v1 timeSinceStart];
  v35 = v2;
  [v1 offRouteTime];
  v4 = v3;

  v5 = [v0 lastOnRouteDataPoint];
  [v5 timeSinceStart];
  v7 = v6;
  [v5 offRouteTime];
  v9 = v8;

  v10 = [v0 lastOnRouteDataPoint];
  [v10 distanceAlongReference];
  v12 = v11;

  v13 = [v0 lastProjectedDataPoint];
  [v13 distanceAlongReference];
  v15 = v14;

  v16 = [v0 lastOnRouteDataPoint];
  [v16 averagePace];
  v18 = v17;

  v19 = [v0 lastProjectedDataPoint];
  [v19 distanceSinceStart];
  v21 = v20;
  [v19 offRouteDistance];
  v23 = v22;

  v24 = [v0 racingRouteVariables];
  v25 = [v24 userIsOffRoute];

  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v27 = [v0 racingRouteVariables];
    v28 = [v27 raceSessionExpired];

    if (v28)
    {
      v26 = 6;
    }

    else
    {
      v29 = [v0 racingRouteVariables];
      v30 = [v29 raceEndPointDetected];

      if (v30)
      {
        v26 = 3;
      }

      else
      {
        v31 = [v0 racingRouteVariables];
        v32 = [v31 raceStartPointDetected];

        v26 = v32;
      }
    }
  }

  v33 = objc_allocWithZone(MEMORY[0x277CBFC58]);

  return [v33 initWithTimeAhead:v26 currentDistance:v35 - v4 - (v7 - v9) referenceDistance:v12 currentAveragePace:v15 totalOverlapDistance:v18 state:v21 - v23];
}

uint64_t HKWorkoutEvent.isDownhillRun.getter()
{
  if ([v0 type] != 7)
  {
    goto LABEL_9;
  }

  v1 = [v0 metadata];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *MEMORY[0x277D0A738];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v7, v16);
  _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = v15;
  if ([v15 integerValue] == 1 || objc_msgSend(v15, sel_integerValue) == 3)
  {

LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

LABEL_12:
  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v3);
  if (one-time initialization token for metadataKeys != -1)
  {
    swift_once();
  }

  v13 = specialized Set._isDisjoint<A>(with:)(static DownhillRun.metadataKeys, v12);

  v11 = v13 ^ 1;
  return v11 & 1;
}

Class @objc HKWorkoutBuilder.downhillRunEvents.getter(void *a1)
{
  v1 = a1;
  v2 = HKWorkoutBuilder.downhillRunEvents.getter();

  if (v2)
  {
    _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t HKWorkoutBuilder.downhillRunEvents.getter()
{
  v1 = [v0 workoutConfiguration];
  v2 = [v1 activityType];

  if (v2 != 67 && v2 != 61)
  {
    return 0;
  }

  v3 = [v0 workoutEvents];
  _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    v8 = *MEMORY[0x277D0A738];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F2E7A20](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 v7[476]] == 7)
      {
        v12 = [v10 metadata];
        if (v12)
        {
          v13 = v12;
          v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v14 + 16))
          {
            v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
            v18 = v17;

            if (v18)
            {
              outlined init with copy of Any(*(v14 + 56) + 32 * v25, v27);
              _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
              if (swift_dynamicCast())
              {
                v19 = v26;
                if ([v26 integerValue] == 1 || objc_msgSend(v26, sel_integerValue) == 3)
                {

LABEL_25:
                  v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
                  goto LABEL_7;
                }

LABEL_22:
                v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v14);
                if (one-time initialization token for metadataKeys != -1)
                {
                  swift_once();
                }

                v21 = specialized Set._isDisjoint<A>(with:)(static DownhillRun.metadataKeys, v20);

                if ((v21 & 1) == 0)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v22 = *(v28 + 16);
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
                  goto LABEL_7;
                }

                goto LABEL_25;
              }
            }
          }

          else
          {
          }

          v19 = 0;
          goto LABEL_22;
        }
      }

LABEL_7:
      ++v6;
      if (v11 == i)
      {
        v23 = v28;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_34:

  return v23;
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    v10 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15 == v9 && v15[1] == v8;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

id GhostPacerAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GhostPacerAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GhostPacerAccumulatorFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static GhostPacerAccumulatorFactory.make(activityType:liveWorkoutConfiguration:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    static Published.subscript.getter();

    v5 = [v18 value];

    if (v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = [v18 value];

      if (v6)
      {
        v7 = objc_opt_self();
        v8 = [v7 meterUnit];
        [v5 doubleValueForUnit_];
        v10 = v9;

        v11 = [v7 secondUnit];
        [v6 doubleValueForUnit_];
        v13 = v12;

        v14 = objc_allocWithZone(type metadata accessor for GhostPacerAccumulator());
        v15 = a1;
        v16 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(v15, v10, v13);

        return v16;
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for RaceSessionConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceSessionConstants(_WORD *result, int a2, int a3)
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

uint64_t CLRacingRouteConfigurationState.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000012;
  v2 = 0xD00000000000001ELL;
  if (a1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6564656563637573;
  }
}

uint64_t CLRacingRoutePerformanceResults.racePosition.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 state];
  if (result > 2)
  {
    if ((result - 4) >= 2)
    {
      if (result == 3)
      {
        v5 = 2;
        goto LABEL_11;
      }

      if (result == 6)
      {
        v5 = 4;
LABEL_11:
        *a1 = v5;
        *(a1 + 8) = 0;
        v4 = 1;
        goto LABEL_12;
      }
    }

LABEL_10:
    v5 = 3;
    goto LABEL_11;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result == 1)
  {
    [v1 timeAhead_s];
    v7 = v6;
    result = [v1 currentDistance_m];
    v4 = 0;
    *&v8 = v8;
    *a1 = v7;
    *(a1 + 8) = LODWORD(v8);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v4 = 1;
  *a1 = 1;
  *(a1 + 8) = 0;
LABEL_12:
  *(a1 + 12) = v4;
  return result;
}

uint64_t CLRacingRoutePerformanceResults.racePositionState.getter@<X0>(char *a1@<X8>)
{
  result = [v1 state];
  if (result > 2)
  {
    if (result == 3)
    {
      v4 = 4;
      goto LABEL_13;
    }

    if (result == 6)
    {
      v4 = 6;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v4 = 3;
      goto LABEL_13;
    }

LABEL_8:
    v4 = 5;
    goto LABEL_13;
  }

  [v1 timeAhead_s];
  v6 = v5;
  result = [v1 currentDistance_m];
  if (v6 >= 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

LABEL_13:
  *a1 = v4;
  return result;
}

Swift::Int RaceLocationProvider.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceLocationProvider.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceLocationProvider.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t RaceLocationProvider.locationPublisher.getter()
{
  v2 = *(v0 + OBJC_IVAR___WORaceLocationProvider__locationPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  return Publisher.eraseToAnyPublisher()();
}

id RaceLocationProvider.init(activity:)(uint64_t a1)
{
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR___WORaceLocationProvider__locationPublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v1[v10] = PassthroughSubject.init()();
  v18 = OBJC_IVAR___WORaceLocationProvider_queue;
  v14 = _sSo17OS_dispatch_queueCMaTm_18(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v17[0] = "unsupportedWorkout";
  v17[1] = v14;
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v19);
  *&v1[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR___WORaceLocationProvider_distance] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_elapsedTime] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_kForceLocationUpdateTimeout] = 0x4000000000000000;
  *&v1[OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_lastLocation] = 0;
  v1[OBJC_IVAR___WORaceLocationProvider_state] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_activity] = v20;
  v15 = type metadata accessor for RaceLocationProvider();
  v21.receiver = v1;
  v21.super_class = v15;
  return objc_msgSendSuper2(&v21, sel_init);
}

Swift::Void __swiftcall RaceLocationProvider.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  v2 = *(v13 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v12);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR___WORaceLocationProvider_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in RaceLocationProvider.activate();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_75;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

void closure #1 in RaceLocationProvider.activate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.race);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Race Location Provider: Activating location updates", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = static LocationManager.shared;
    v7 = v1;
    specialized LocationManager.add(observer:)(v7, v6);

    *(v7 + OBJC_IVAR___WORaceLocationProvider_state) = 1;
  }
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall RaceLocationProvider.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = v1;
  if (a1 - *(v1 + OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime) > 2.0)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.race);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Race Location Provider: Location update timeout, processing last-known location with updated timestamp.", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = *(v2 + OBJC_IVAR___WORaceLocationProvider_lastLocation);
    if (v8)
    {
      v9 = v8;
      [v9 latitude_deg];
      v11 = v10;
      [v9 longitude_deg];
      v13 = v12;
      [v9 altitude_m];
      v15 = v14;
      [v9 odometer_m];
      v17 = v16;
      v18 = [v9 signalEnvironmentType];
      v19 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:v18 longitude:v11 altitude:v13 odometer:v15 timestamp:v17 signalEnvironmentType:a1];
      RaceLocationProvider.updateLocation(_:)(v19);
    }
  }

  *(v2 + OBJC_IVAR___WORaceLocationProvider_elapsedTime) = a1;
}

uint64_t RaceLocationProvider.updateLocation(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR___WORaceLocationProvider_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in RaceLocationProvider.updateLocation(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_7;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in RaceLocationProvider.updateLocation(_:)(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR___WORaceLocationProvider_state))
  {
    v2 = *(a1 + OBJC_IVAR___WORaceLocationProvider__locationPublisher);

    v5 = a2;
    PassthroughSubject.send(_:)();

    *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime) = *(a1 + OBJC_IVAR___WORaceLocationProvider_elapsedTime);
    v6 = *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocation);
    *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocation) = v5;
    v7 = v5;
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.race);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v9, "Race Location Provider: Workout inactive. Location update ignored.", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }
  }
}

Swift::Void __swiftcall RaceLocationProvider.stopUpdatingLocation()()
{
  v1 = v0;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.race);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Race Location Provider: Stopping location updates", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static LocationManager.shared;
  v7 = *(static LocationManager.shared + OBJC_IVAR___WOCoreLocationManager_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_2;
  *(v9 + 24) = v8;
  v20[4] = _sIg_Ieg_TRTA_7;
  v20[5] = v9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed () -> ();
  v20[3] = &block_descriptor_15_6;
  v10 = _Block_copy(v20);
  v11 = v1;
  v12 = v6;

  v13 = v7;
  v14 = v10;
  v15 = v13;
  label = dispatch_queue_get_label(v15);
  v17 = dispatch_queue_get_label(0);

  if (label == v17)
  {
    v18 = objc_autoreleasePoolPush();
    v14[2](v14);
    objc_autoreleasePoolPop(v18);
  }

  else
  {
    dispatch_sync(v15, v14);
  }

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11[OBJC_IVAR___WORaceLocationProvider_state] = 0;
  }
}

id RaceLocationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceLocationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceLocationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for RaceLocationProviding.locationPublisher.getter in conformance RaceLocationProvider()
{
  v2 = *(*v0 + OBJC_IVAR___WORaceLocationProvider__locationPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  return Publisher.eraseToAnyPublisher()();
}

void specialized RaceLocationProvider.authorizationStatusDidUpdate(authorizationStatus:locationManager:)()
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.race);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    type metadata accessor for CLAuthorizationStatus(0);
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "Race Location Provider: Authorization status changed to: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x20F2E9420](v3, -1, -1);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }

  else
  {
  }
}

void specialized RaceLocationProvider.locationDidUpdate(locations:locationManager:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v6 = MEMORY[0x20F2E7A20](v5, a1);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = *(a1 + 8 * v5 + 32);
LABEL_8:
  v1 = v6;
  if ([v6 type] != 1 && objc_msgSend(v1, sel_type) != 9 && objc_msgSend(v1, sel_type) != 3 && objc_msgSend(v1, sel_type) != 11)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.race);
    v1 = v1;
    v40 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v40, v29))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    [v1 type];
    type metadata accessor for CLLocationType(0);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v41);

    *(v30 + 4) = v39;
    v35 = "Race Location Provider: Ignoring location update. Invalid location type: %s";
    goto LABEL_21;
  }

  [v1 horizontalAccuracy];
  if (v7 >= 50.0)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.race);
    v1 = v1;
    v40 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v40, v29))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    [v1 horizontalAccuracy];
    v32 = Double.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

    *(v30 + 4) = v34;
    v35 = "Race Location Provider: Ignoring location update. Low horizontal accuracy: %s";
LABEL_21:
    _os_log_impl(&dword_20AEA4000, v40, v29, v35, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);

    return;
  }

  [v1 coordinate];
  v9 = v8;
  [v1 coordinate];
  v11 = v10;
  [v1 altitude];
  v13 = v12;
  v14 = *&v2[OBJC_IVAR___WORaceLocationProvider_distance];
  v15 = *&v2[OBJC_IVAR___WORaceLocationProvider_elapsedTime];
  v16 = [v1 signalEnvironmentType];
  v2 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:v16 longitude:v9 altitude:v11 odometer:v13 timestamp:v14 signalEnvironmentType:v15];
  if (one-time initialization token for race != -1)
  {
LABEL_36:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.race);
  v40 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = v40;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20AEA4000, v18, v19, "Race Location Provider: Observed location: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  RaceLocationProvider.updateLocation(_:)(v40);
LABEL_27:
}

void specialized RaceLocationProvider.locationDidFail(error:locationManager:)(void *a1)
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.race);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Race Location Provider: Location error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type RaceLocationProvider.State and conformance RaceLocationProvider.State()
{
  result = lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State;
  if (!lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceLocationProvider.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceLocationProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
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

id LiveWorkoutConfiguration.analyticsAlertsConfigured(formattingManager:)(void *a1)
{
  v174 = MEMORY[0x277D84FA0];
  result = [a1 unitManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *&v1[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  v5 = &OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v168 = v6;
  v159 = [v3 userDistanceHKUnitForActivityType_];

  type metadata accessor for IntervalWorkoutConfiguration();
  v167 = v4;
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v153 = v4;
    static Published.subscript.getter();

    v7 = IntervalWorkout.blocks.getter();

    v8 = v7;
    v155 = v7;
    if (v7 >> 62)
    {
      goto LABEL_267;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v6;
    if (v9)
    {
LABEL_5:
      v11 = 0;
      v156 = (v8 & 0xC000000000000001);
      v151 = v8 + 32;
      v152 = v8 & 0xFFFFFFFFFFFFFF8;
      v160 = 0x800000020B4544B0;
      v154 = v9;
      do
      {
        if (v156)
        {
          v12 = v11;
          MEMORY[0x20F2E7A20](v11);
          v13 = __OFADD__(v12, 1);
          v14 = v12 + 1;
          if (v13)
          {
            goto LABEL_266;
          }
        }

        else
        {
          if (v11 >= *(v152 + 16))
          {
            __break(1u);
LABEL_270:
            v81 = __CocoaSet.count.getter();
            if (!v81)
            {
              goto LABEL_271;
            }

LABEL_166:
            v82 = 0;
            v4 = 0xD000000000000013;
            v161 = v81;
            while (2)
            {
              if ((v160 & 0xC000000000000001) != 0)
              {
                v83 = MEMORY[0x20F2E7A20](v82, v160);
              }

              else
              {
                if (v82 >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_265;
                }

                v83 = *(v160 + 32 + 8 * v82);
              }

              v84 = v83;
              v13 = __OFADD__(v82, 1);
              v85 = v82 + 1;
              if (v13)
              {
                goto LABEL_263;
              }

              v86 = *v5;
              swift_beginAccess();
              v162 = v86;
              v87 = *&v84[v86];
              v164 = v84;
              v88 = v87;
              specialized static TargetZoneStorage.defaultZones(activityType:)(v88);
              v90 = v89;

              v166 = v85;
              if (v90 >> 62)
              {
                v91 = __CocoaSet.count.getter();
                if (v91)
                {
LABEL_176:
                  if (v91 < 1)
                  {
                    goto LABEL_264;
                  }

                  for (i = 0; i != v91; ++i)
                  {
                    if ((v90 & 0xC000000000000001) != 0)
                    {
                      v103 = MEMORY[0x20F2E7A20](i, v90);
                    }

                    else
                    {
                      v103 = *(v90 + 8 * i + 32);
                    }

                    swift_beginAccess();
                    if (*(v103 + 40))
                    {
                      v93 = *(v103 + 16);
                      v94 = 1701736302;
                      if (v93 == 6)
                      {
                        v94 = 0x5F65676172657661;
                      }

                      v95 = 0xED00007265776F70;
                      if (v93 != 6)
                      {
                        v95 = 0xE400000000000000;
                      }

                      if (v93 == 4)
                      {
                        v96 = 0x5F65676172657661;
                      }

                      else
                      {
                        v96 = 0xD000000000000013;
                      }

                      v97 = 0xEF65636E65646163;
                      if (v93 != 4)
                      {
                        v97 = 0x800000020B4544E0;
                      }

                      if (*(v103 + 16) <= 5u)
                      {
                        v94 = v96;
                        v95 = v97;
                      }

                      v98 = 0xD000000000000012;
                      if (v93 != 2)
                      {
                        v98 = 0xD000000000000015;
                      }

                      v99 = 0x800000020B4544B0;
                      if (v93 == 2)
                      {
                        v99 = 0x800000020B454490;
                      }

                      v100 = 0x5F676E696C6C6F72;
                      if (*(v103 + 16))
                      {
                        v100 = 0x5F65676172657661;
                      }

                      if (*(v103 + 16) <= 1u)
                      {
                        v98 = v100;
                        v99 = 0xEC00000065636170;
                      }

                      if (*(v103 + 16) <= 3u)
                      {
                        v101 = v98;
                      }

                      else
                      {
                        v101 = v94;
                      }

                      if (*(v103 + 16) <= 3u)
                      {
                        v102 = v99;
                      }

                      else
                      {
                        v102 = v95;
                      }

                      specialized Set._Variant.insert(_:)(&v171, v101, v102);
                    }

                    else
                    {
                    }
                  }
                }
              }

              else
              {
                v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v91)
                {
                  goto LABEL_176;
                }
              }

              if ([*&v84[v162] supportsTimeSplits])
              {
                v104 = [objc_opt_self() timeSplitForActivityType_];
                v105 = [v104 enabled];

                if (v105)
                {
                  specialized Set._Variant.insert(_:)(&v171, 1701669236, 0xE400000000000000);
                }
              }

              v82 = v166;
              if ([*&v84[v162] supportsDistanceSplits])
              {
                v106 = objc_opt_self();
                v107 = *&v84[v162];

                v108 = [v106 distanceSplitForActivityType:v107 userDistanceUnit:v159];
                LODWORD(v107) = [v108 enabled];

                if (v107)
                {
                  specialized Set._Variant.insert(_:)(&v171, 0x74696C7073, 0xE500000000000000);
                }

                else
                {
                }
              }

              else
              {
              }

              v5 = &OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
              if (v166 == v161)
              {
                goto LABEL_271;
              }

              continue;
            }
          }

          v158 = *(v151 + 8 * v11);
          v15 = v11;

          v13 = __OFADD__(v15, 1);
          v14 = v15 + 1;
          if (v13)
          {
            goto LABEL_266;
          }
        }

        v157 = v14;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v163 = v171;
        if (v171 >> 62)
        {
          v16 = __CocoaSet.count.getter();
          v10 = v168;
          if (!v16)
          {
            goto LABEL_6;
          }

LABEL_15:
          v17 = 0;
          v165 = v16;
          while (2)
          {
            if ((v163 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x20F2E7A20](v17, v163);
              v13 = __OFADD__(v17, 1);
              v30 = v17 + 1;
              if (v13)
              {
                goto LABEL_261;
              }
            }

            else
            {
              if (v17 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_262;
              }

              v29 = *(v163 + 32 + 8 * v17);

              v13 = __OFADD__(v17, 1);
              v30 = v17 + 1;
              if (v13)
              {
                goto LABEL_261;
              }
            }

            v31 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
            swift_beginAccess();
            v32 = *(v29 + v31);
            v169 = v30;
            if (v32 >> 62)
            {
              v33 = __CocoaSet.count.getter();
            }

            else
            {
              v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v33)
            {
              v4 = 0;
              v5 = (v32 & 0xC000000000000001);
              do
              {
                if (v5)
                {
                  v34 = MEMORY[0x20F2E7A20](v4, v32);
                  v35 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
                    goto LABEL_253;
                  }
                }

                else
                {
                  if (v4 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_254;
                  }

                  v34 = *(v32 + 8 * v4 + 32);

                  v35 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
LABEL_253:
                    __break(1u);
LABEL_254:
                    __break(1u);
LABEL_255:
                    __break(1u);
LABEL_256:
                    __break(1u);
LABEL_257:
                    __break(1u);
LABEL_258:
                    __break(1u);
LABEL_259:
                    __break(1u);
LABEL_260:
                    __break(1u);
LABEL_261:
                    __break(1u);
LABEL_262:
                    __break(1u);
LABEL_263:
                    __break(1u);
LABEL_264:
                    __break(1u);
LABEL_265:
                    __break(1u);
LABEL_266:
                    __break(1u);
LABEL_267:
                    v9 = __CocoaSet.count.getter();
                    v8 = v155;
                    v10 = v168;
                    if (!v9)
                    {
                      goto LABEL_268;
                    }

                    goto LABEL_5;
                  }
                }

                swift_beginAccess();
                if (*(v34 + 40))
                {

                  v18 = *(v34 + 16);
                  v19 = 1701736302;
                  if (v18 == 6)
                  {
                    v19 = 0x5F65676172657661;
                  }

                  v20 = 0xED00007265776F70;
                  if (v18 != 6)
                  {
                    v20 = 0xE400000000000000;
                  }

                  if (v18 == 4)
                  {
                    v21 = 0x5F65676172657661;
                  }

                  else
                  {
                    v21 = 0xD000000000000013;
                  }

                  v22 = 0xEF65636E65646163;
                  if (v18 != 4)
                  {
                    v22 = 0x800000020B4544E0;
                  }

                  if (*(v34 + 16) <= 5u)
                  {
                    v19 = v21;
                    v20 = v22;
                  }

                  v23 = 0xD000000000000012;
                  if (v18 != 2)
                  {
                    v23 = 0xD000000000000015;
                  }

                  v24 = 0x800000020B4544B0;
                  if (v18 == 2)
                  {
                    v24 = 0x800000020B454490;
                  }

                  v25 = 0x5F676E696C6C6F72;
                  if (*(v34 + 16))
                  {
                    v25 = 0x5F65676172657661;
                  }

                  if (*(v34 + 16) <= 1u)
                  {
                    v23 = v25;
                    v24 = 0xEC00000065636170;
                  }

                  if (*(v34 + 16) <= 3u)
                  {
                    v26 = v23;
                  }

                  else
                  {
                    v26 = v19;
                  }

                  if (*(v34 + 16) <= 3u)
                  {
                    v27 = v24;
                  }

                  else
                  {
                    v27 = v20;
                  }

                  specialized Set._Variant.insert(_:)(&v171, v26, v27);

                  goto LABEL_42;
                }

                ++v4;
              }

              while (v35 != v33);
            }

            v36 = *(v29 + v31);
            if (v36 >> 62)
            {
              if (v36 < 0)
              {
                v78 = *(v29 + v31);
              }

              v37 = __CocoaSet.count.getter();
            }

            else
            {
              v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v37)
            {
              v38 = 0;
              v5 = (v36 & 0xC000000000000001);
              do
              {
                if (v5)
                {
                  v4 = MEMORY[0x20F2E7A20](v38, v36);
                  v39 = v38 + 1;
                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_255;
                  }
                }

                else
                {
                  if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_256;
                  }

                  v4 = *(v36 + 8 * v38 + 32);

                  v39 = v38 + 1;
                  if (__OFADD__(v38, 1))
                  {
                    goto LABEL_255;
                  }
                }

                swift_beginAccess();
                v40 = *(v4 + 40);

                if (v40 == 1)
                {
                  goto LABEL_90;
                }

                ++v38;
              }

              while (v39 != v37);
            }

            v41 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
            swift_beginAccess();
            v4 = *(v29 + v41);
            if (v4)
            {
              v42 = *(v29 + v41);
            }

            else
            {
              if (one-time initialization token for defaultZone != -1)
              {
                swift_once();
              }

              v42 = static HeartRateTargetZone.defaultZone;
            }

            v43 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
            if (v42[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v42[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
            {
              v49 = v4;

LABEL_90:

LABEL_91:
              v50 = *(v29 + v31);
              if (v50 >> 62)
              {
                if (v50 < 0)
                {
                  v79 = *(v29 + v31);
                }

                v51 = __CocoaSet.count.getter();
              }

              else
              {
                v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (!v51)
              {
LABEL_104:

                v55 = *(v29 + v31);
                if (v55 >> 62)
                {
                  if (v55 < 0)
                  {
                    v80 = *(v29 + v31);
                  }

                  v56 = __CocoaSet.count.getter();
                }

                else
                {
                  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v56)
                {
                  v57 = 0;
                  v5 = (v55 & 0xC000000000000001);
                  while (1)
                  {
                    if (v5)
                    {
                      v4 = MEMORY[0x20F2E7A20](v57, v55);
                      v58 = v57 + 1;
                      if (__OFADD__(v57, 1))
                      {
                        goto LABEL_259;
                      }
                    }

                    else
                    {
                      if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_260;
                      }

                      v4 = *(v55 + 8 * v57 + 32);

                      v58 = v57 + 1;
                      if (__OFADD__(v57, 1))
                      {
                        goto LABEL_259;
                      }
                    }

                    swift_beginAccess();
                    v59 = *(v4 + 40);

                    if (v59 == 1)
                    {
                      break;
                    }

                    ++v57;
                    if (v58 == v56)
                    {
                      goto LABEL_117;
                    }
                  }

                  v28 = v165;
                }

                else
                {
LABEL_117:

                  v60 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
                  swift_beginAccess();
                  v61 = *(v29 + v60);
                  if (v61)
                  {
                    v62 = *(v29 + v60);
                    v28 = v165;
                  }

                  else
                  {
                    v28 = v165;
                    if (one-time initialization token for defaultZone != -1)
                    {
                      swift_once();
                    }

                    v62 = static HeartRateTargetZone.defaultZone;
                  }

                  if (*(v62 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v62 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
                  {
                    v65 = v61;
                  }

                  else
                  {
                    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v64 = v61;

                    if ((v63 & 1) == 0)
                    {

                      v4 = v167;
                      goto LABEL_43;
                    }
                  }
                }

                v66 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
                swift_beginAccess();
                v67 = *(v29 + v66);
                if (v67)
                {
                  v5 = *(v29 + v66);
                }

                else
                {
                  if (one-time initialization token for defaultZone != -1)
                  {
                    swift_once();
                  }

                  v5 = static PowerZonesAlertTargetZone.defaultZone;
                }

                v68 = v5 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
                swift_beginAccess();
                v69 = *v68;
                v70 = *(v68 + 1);
                v71 = v68[16];
                v72 = v71 >> 6;
                if (v71 >> 6 > 1)
                {
                  if (v72 != 2)
                  {
                    v77 = v67;
                    outlined consume of PowerZonesAlertZoneType(v69, v70, v71);
                    outlined consume of PowerZonesAlertZoneType(0, 0, 192);

                    v4 = v167;
                    goto LABEL_43;
                  }
                }

                else if (v72)
                {
                  outlined copy of PowerZonesAlertZoneType(*v68, *(v68 + 1), v68[16]);
                }

                v73 = v67;
                outlined consume of PowerZonesAlertZoneType(v69, v70, v71);
                outlined consume of PowerZonesAlertZoneType(0, 0, 192);
                v74 = v68[16] >> 6;
                if (v74 > 1)
                {
                  v4 = v167;
                  if (v74 == 2)
                  {
                    v75 = 0xD000000000000017;
                    v76 = "power_zone_alert_off";
                  }

                  else
                  {
                    v75 = 0xD000000000000014;
                    v76 = "oneType.target(value: ";
                  }
                }

                else
                {
                  v4 = v167;
                  if (v74)
                  {
                    v75 = 0xD00000000000001ALL;
                    v76 = "power_zone_alert_custom";
                  }

                  else
                  {
                    v75 = 0xD000000000000017;
                    v76 = "power_zone_alert_automatic";
                  }
                }

                specialized Set._Variant.insert(_:)(&v171, v75, v76 | 0x8000000000000000);

                goto LABEL_150;
              }

              v52 = 0;
              v5 = (v50 & 0xC000000000000001);
              while (1)
              {
                if (v5)
                {
                  v4 = MEMORY[0x20F2E7A20](v52, v50);
                  v53 = v52 + 1;
                  if (__OFADD__(v52, 1))
                  {
                    goto LABEL_257;
                  }
                }

                else
                {
                  if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_258;
                  }

                  v4 = *(v50 + 8 * v52 + 32);

                  v53 = v52 + 1;
                  if (__OFADD__(v52, 1))
                  {
                    goto LABEL_257;
                  }
                }

                swift_beginAccess();
                v54 = *(v4 + 40);

                if (v54 == 1)
                {
                  break;
                }

                ++v52;
                if (v53 == v51)
                {
                  goto LABEL_104;
                }
              }

LABEL_42:

              v28 = v165;
              v4 = v167;
            }

            else
            {
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v45 = v4;

              if (v44)
              {

                goto LABEL_91;
              }

              v46 = v42[v43];
              v4 = v167;
              if (v42[v43])
              {
                v28 = v165;
                if (v46 == 1)
                {
                  v47 = 0xD000000000000016;
                  v48 = "heart_rate_zone_off";
                }

                else
                {
                  v47 = 0xD000000000000013;
                  v48 = "lastLocationUpdateTime";
                }
              }

              else
              {
                v47 = 0xD000000000000019;
                v48 = "heart_rate_zone_custom";
                v28 = v165;
              }

              specialized Set._Variant.insert(_:)(&v171, v47, v48 | 0x8000000000000000);

LABEL_150:
            }

LABEL_43:
            v17 = v169;
            v10 = v168;
            if (v169 == v28)
            {
              goto LABEL_6;
            }

            continue;
          }
        }

        v16 = *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = v168;
        if (v16)
        {
          goto LABEL_15;
        }

LABEL_6:

        v11 = v157;
      }

      while (v157 != v154);
    }

LABEL_268:

    goto LABEL_308;
  }

  type metadata accessor for MultiSportWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    v109 = LiveWorkoutConfiguration.currentTargetZones.getter();
    v110 = v109;
    if (v109 >> 62)
    {
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_289;
      }
    }

    else
    {
      v4 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_289;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_323;
    }

    for (j = 0; j != v4; ++j)
    {
      if ((v110 & 0xC000000000000001) != 0)
      {
        v122 = MEMORY[0x20F2E7A20](j, v110);
      }

      else
      {
        v122 = *(v110 + 8 * j + 32);
      }

      swift_beginAccess();
      if (*(v122 + 40))
      {
        v112 = *(v122 + 16);
        v113 = 1701736302;
        if (v112 == 6)
        {
          v113 = 0x5F65676172657661;
        }

        v114 = 0xED00007265776F70;
        if (v112 != 6)
        {
          v114 = 0xE400000000000000;
        }

        if (v112 == 4)
        {
          v115 = 0x5F65676172657661;
        }

        else
        {
          v115 = 0xD000000000000013;
        }

        v116 = 0xEF65636E65646163;
        if (v112 != 4)
        {
          v116 = 0x800000020B4544E0;
        }

        if (*(v122 + 16) <= 5u)
        {
          v113 = v115;
          v114 = v116;
        }

        v117 = 0xD000000000000015;
        if (v112 == 2)
        {
          v117 = 0xD000000000000012;
          v118 = 0x800000020B454490;
        }

        else
        {
          v118 = 0x800000020B4544B0;
        }

        v119 = 0x5F676E696C6C6F72;
        if (*(v122 + 16))
        {
          v119 = 0x5F65676172657661;
        }

        if (*(v122 + 16) <= 1u)
        {
          v117 = v119;
          v118 = 0xEC00000065636170;
        }

        if (*(v122 + 16) <= 3u)
        {
          v120 = v117;
        }

        else
        {
          v120 = v113;
        }

        if (*(v122 + 16) <= 3u)
        {
          v121 = v118;
        }

        else
        {
          v121 = v114;
        }

        specialized Set._Variant.insert(_:)(&v172, v120, v121);
      }

      else
      {
      }
    }

LABEL_289:

    v1 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v135 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
    v134 = off_27C728570;

    v136 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v135, v134, v1);

    if (v136)
    {
      specialized HeartRateTargetZone.__allocating_init(dict:)(v136);
      if (v137)
      {
        v138 = v137;

        v4 = v167;
LABEL_294:
        v139 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
        if (*(v138 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v138 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
        {

          goto LABEL_306;
        }

        v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v140)
        {

          goto LABEL_307;
        }

        v141 = 0xD000000000000013;
        if (*(v138 + v139))
        {
          if (*(v138 + v139) == 1)
          {
            v142 = "heart_rate_zone_off";
            v141 = 0xD000000000000016;
LABEL_305:
            specialized Set._Variant.insert(_:)(&v171, v141, v142 | 0x8000000000000000);

            goto LABEL_306;
          }

          v143 = "heart_rate_zone_off";
        }

        else
        {
          v141 = 0xD000000000000019;
          v143 = "heart_rate_zone_automatic";
        }

        v142 = v143 - 32;
        goto LABEL_305;
      }
    }

    v4 = v167;
    if (one-time initialization token for defaultZone == -1)
    {
LABEL_293:
      v138 = static HeartRateTargetZone.defaultZone;

      goto LABEL_294;
    }

LABEL_323:
    swift_once();
    goto LABEL_293;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v156 = v4;
  static Published.subscript.getter();

  v160 = v173;
  if (v173 >> 62)
  {
    goto LABEL_270;
  }

  v81 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v81)
  {
    goto LABEL_166;
  }

LABEL_271:

  v123 = LiveWorkoutConfiguration.currentActivityType.getter();
  swift_beginAccess();
  v125 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v124 = off_27C728570;

  v126 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v125, v124, v123);

  if (!v126 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v126), !v127))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v127 = static HeartRateTargetZone.defaultZone;
  }

  v128 = v127;

  v4 = v167;
  v129 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (*(v128 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v128 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {

LABEL_306:

    goto LABEL_307;
  }

  v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v130 & 1) == 0)
  {
    v131 = 0xD000000000000013;
    if (*(v128 + v129))
    {
      if (*(v128 + v129) == 1)
      {
        v132 = "heart_rate_zone_off";
        v131 = 0xD000000000000016;
LABEL_287:
        specialized Set._Variant.insert(_:)(&v171, v131, v132 | 0x8000000000000000);

        goto LABEL_306;
      }

      v133 = "heart_rate_zone_off";
    }

    else
    {
      v131 = 0xD000000000000019;
      v133 = "heart_rate_zone_automatic";
    }

    v132 = v133 - 32;
    goto LABEL_287;
  }

LABEL_307:
  v10 = v168;
LABEL_308:
  if ([*(v4 + v10) supportsTimeSplits])
  {
    v144 = [objc_opt_self() timeSplitForActivityType_];
    v145 = [v144 enabled];

    v10 = v168;
    if (v145)
    {
      specialized Set._Variant.insert(_:)(&v171, 1701669236, 0xE400000000000000);
    }
  }

  if ([*(v4 + v10) supportsDistanceSplits])
  {
    v146 = [objc_opt_self() distanceSplitForActivityType:*(v4 + v10) userDistanceUnit:v159];
    v147 = [v146 enabled];

    v10 = v168;
    if (v147)
    {
      specialized Set._Variant.insert(_:)(&v171, 0x74696C7073, 0xE500000000000000);
    }
  }

  type metadata accessor for RaceWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    if ([*(v4 + v10) supportsRaceRoute])
    {
      v148 = *(v4 + v10);
      v149 = specialized static RaceAlertsStore.read(for:)(v148);

      swift_beginAccess();
      LODWORD(v148) = *(v149 + 16);

      if (v148 == 1)
      {
        specialized Set._Variant.insert(_:)(&v170, 1701011826, 0xE400000000000000);
      }
    }
  }

  if (*(v174 + 16))
  {
    v170 = v174;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
    lazy protocol witness table accessor for type String and conformance String();
    v150 = Sequence<>.joined(separator:)();
  }

  else
  {
    v150 = 1701736302;
  }

  return v150;
}

unint64_t LiveWorkoutConfiguration.analyticsActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  [*(v1 + v2) effectiveTypeIdentifier];
  v3 = _HKWorkoutActivityNameForActivityType();
  if (!v3)
  {
    return 0xD000000000000010;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x800000020B456540;
  v8._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v8))
  {
    v9 = String.count.getter();
    v10 = specialized Collection.dropFirst(_:)(v9, v5, v7);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v5 = MEMORY[0x20F2E6D00](v10, v12, v14, v16);
  }

  return v5;
}

uint64_t LiveWorkoutConfiguration.analyticsConfigurationType.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

void one-time initialization function for precisionStart(uint64_t a1, _BYTE *a2)
{
  if (one-time initialization token for kMGQWatchAppButtonCapability != -1)
  {
    swift_once();
  }

  v3 = static MobileGestaltConstants.kMGQWatchAppButtonCapability;
  v4 = MGGetBoolAnswer();

  *a2 = v4;
}

uint64_t static DeviceFeatures.precisionStart.getter(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id DeviceFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceFeatures.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceFeatures();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceFeatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LaneChangeReason.description.getter()
{
  v1 = 0x6C65532072657355;
  if (*v0 != 1)
  {
    v1 = 0x7465442D6F747541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843206F4ELL;
  }
}

WorkoutCore::LaneChangeReason_optional __swiftcall LaneChangeReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type LaneChangeReason and conformance LaneChangeReason()
{
  result = lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason;
  if (!lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LaneChangeReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LaneChangeReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LaneChangeReason()
{
  v1 = 0x6C65532072657355;
  if (*v0 != 1)
  {
    v1 = 0x7465442D6F747541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843206F4ELL;
  }
}

uint64_t getEnumTagSinglePayload for LaneChangeReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaneChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
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

WorkoutCore::RepetitionCounter __swiftcall RepetitionCounter.init(repetition:maxRepetitions:)(Swift::Int repetition, Swift::Int maxRepetitions)
{
  *v2 = repetition;
  v2[1] = maxRepetitions;
  result.maxRepetitions = maxRepetitions;
  result.repetition = repetition;
  return result;
}

uint64_t getEnumTagSinglePayload for RepetitionCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RepetitionCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void IntervalWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v110 = a1;
  v140 = type metadata accessor for IntervalStep.Purpose();
  v121 = *(v140 - 8);
  v4 = *(v121 + 64);
  MEMORY[0x28223BE20](v140);
  v144 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for IntervalStep();
  v139 = *(v136 - 8);
  v6 = *(v139 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for IntervalBlock();
  v124 = *(v123 - 8);
  v8 = *(v124 + 64);
  v9 = MEMORY[0x28223BE20](v123);
  v125 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v96 - v11;
  v115 = type metadata accessor for WorkoutGoal();
  v114 = *(v115 - 8);
  v12 = *(v114 + 64);
  v13 = MEMORY[0x28223BE20](v115);
  v112 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v96 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v96 - v17;
  v19 = type metadata accessor for WorkoutStep();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v106 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v134 = &v96 - v27;
  MEMORY[0x28223BE20](v26);
  v142 = &v96 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v109 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v108 = &v96 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v105 = &v96 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v107 = &v96 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v141 = &v96 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v96 - v41;
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v44 = *(v3 + v43);
  v45 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v46 = v145;
  v47 = IntervalWorkout.warmupStep.getter();

  v122 = v42;
  v118 = v3;
  v138 = v19;
  v120 = v20;
  if (v47)
  {
    v48 = [v45 activityType];
    v49 = [v45 locationType];
    v50 = [v45 swimmingLocationType];
    v133 = type metadata accessor for CustomWorkout();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v51 = v145;
    _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v48, v49, v50, v18);
    if (v2)
    {

      return;
    }

    v113 = v45;

    WorkoutStep.workoutKitAlertRepresentation.getter(&v145);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v79 = v142;
    WorkoutStep.init(goal:alert:displayName:)();
    WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();

    v20 = v120;
    v82 = v141;
    v19 = v138;
    (v120[4])(v141, v79, v138);
    v99 = v20[7];
    v99(v82, 0, 1, v19);
    outlined init with take of WorkoutStep?(v82, v122);
    v45 = v113;
  }

  else
  {
    v99 = v20[7];
    v99(v42, 1, 1, v19);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = v145;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53 = v145;
  if (v145 >> 62)
  {
LABEL_43:
    v54 = __CocoaSet.count.getter();
    if (v54)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v54 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_7:
      v55 = MEMORY[0x277D84F90];
      v147 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54 & ~(v54 >> 63), 0);
      if (v54 < 0)
      {
        goto LABEL_52;
      }

      v56 = 0;
      v57 = v147;
      v58 = v53 & 0xC000000000000001;
      v98 = v53 & 0xFFFFFFFFFFFFFF8;
      v97 = v53 + 32;
      v129 = (v121 + 104);
      v127 = (v20 + 4);
      v117 = *MEMORY[0x277CE4028];
      v126 = v139 + 32;
      v19 = v124 + 32;
      v130 = *MEMORY[0x277CE4020];
      v104 = v53;
      v102 = v54;
      v101 = v53 & 0xC000000000000001;
      v113 = v45;
      v100 = (v124 + 32);
      while (1)
      {
        if (__OFADD__(v56, 1))
        {
          goto LABEL_42;
        }

        v119 = v57;
        v103 = v56 + 1;
        if (v58)
        {
          v59 = MEMORY[0x20F2E7A20]();
        }

        else
        {
          if (v56 >= *(v98 + 16))
          {
            goto LABEL_53;
          }

          v59 = *(v97 + 8 * v56);
        }

        v142 = [v45 activityType];
        v141 = [v45 locationType];
        v45 = [v45 swimmingLocationType];
        IntervalBlock.init(steps:iterations:)();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        IntervalBlock.iterations.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v60 = v145;
        v53 = v59;
        if (v145 >> 62)
        {
          v72 = v145;
          v61 = __CocoaSet.count.getter();
          v60 = v72;
          if (v61)
          {
LABEL_16:
            v62 = v60;
            v146 = v55;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61 & ~(v61 >> 63), 0);
            if ((v61 & 0x8000000000000000) == 0)
            {
              v128 = v61;
              v63 = 0;
              v20 = v146;
              v64 = v62;
              v133 = v62 & 0xC000000000000001;
              v111 = v62 & 0xFFFFFFFFFFFFFF8;
              v132 = v53;
              v131 = v62;
              while (1)
              {
                v19 = v63 + 1;
                if (__OFADD__(v63, 1))
                {
                  break;
                }

                if (v133)
                {
                  v65 = MEMORY[0x20F2E7A20](v63, v64);
                }

                else
                {
                  if (v63 >= *(v111 + 16))
                  {
                    goto LABEL_41;
                  }

                  v65 = *(v64 + 8 * v63 + 32);
                }

                swift_beginAccess();
                v66 = v130;
                if (*(v65 + 16))
                {
                  if (*(v65 + 16) != 1)
                  {
                    v80 = type metadata accessor for ImportError();
                    lazy protocol witness table accessor for type ImportError and conformance ImportError();
                    swift_allocError();
                    (*(*(v80 - 8) + 104))(v81, *MEMORY[0x277CE4008], v80);
                    swift_willThrow();

LABEL_39:
                    (*(v124 + 8))(v125, v123);
                    outlined destroy of WorkoutStep?(v122);

                    return;
                  }

                  v66 = v117;
                }

                (*v129)(v144, v66, v140);
                type metadata accessor for CustomWorkout();
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v67 = v145;
                _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v142, v141, v45, v143);
                if (v2)
                {
                  (*(v121 + 8))(v144, v140);

                  goto LABEL_39;
                }

                WorkoutStep.workoutKitAlertRepresentation.getter(&v145);
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v68 = v137;
                WorkoutStep.init(goal:alert:displayName:)();
                WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();
                (*v127)(v134, v68, v138);
                v69 = v135;
                IntervalStep.init(_:step:)();

                v146 = v20;
                v71 = v20[2];
                v70 = v20[3];
                if (v71 >= v70 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1);
                  v20 = v146;
                }

                v20[2] = v71 + 1;
                (*(v139 + 32))(v20 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v71, v69, v136);
                ++v63;
                v53 = v132;
                v64 = v131;
                if (v19 == v128)
                {
                  goto LABEL_32;
                }
              }

              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }
        }

        else
        {
          v61 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_16;
          }
        }

LABEL_32:

        v73 = v125;
        IntervalBlock.steps.setter();

        v19 = v100;
        v74 = *v100;
        v75 = v116;
        v76 = v123;
        (*v100)(v116, v73, v123);
        v57 = v119;
        v147 = v119;
        v78 = *(v119 + 16);
        v77 = *(v119 + 24);
        v45 = v113;
        if (v78 >= v77 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1);
          v57 = v147;
        }

        *(v57 + 16) = v78 + 1;
        v74((v57 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v78), v75, v76);
        v56 = v103;
        v20 = v120;
        v53 = v104;
        v55 = MEMORY[0x277D84F90];
        v58 = v101;
        if (v103 == v102)
        {
          v119 = v57;

          v19 = v138;
          goto LABEL_45;
        }
      }
    }
  }

  v119 = MEMORY[0x277D84F90];
LABEL_45:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v83 = v145;
  v84 = IntervalWorkout.cooldownStep.getter();

  if (v84)
  {
    v85 = [v45 activityType];
    v86 = [v45 locationType];
    v87 = [v45 swimmingLocationType];
    type metadata accessor for CustomWorkout();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v88 = v145;
    _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v85, v86, v87, v112);
    if (v2)
    {
      outlined destroy of WorkoutStep?(v122);

      return;
    }

    WorkoutStep.workoutKitAlertRepresentation.getter(&v145);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v92 = v106;
    WorkoutStep.init(goal:alert:displayName:)();
    WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();

    v93 = v105;
    v94 = v92;
    v95 = v138;
    (v120[4])(v105, v94, v138);
    v99(v93, 0, 1, v95);
    v89 = v107;
    outlined init with take of WorkoutStep?(v93, v107);
  }

  else
  {
    v89 = v107;
    v99(v107, 1, 1, v19);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v90 = v145;
  IntervalWorkout.displayName.getter();

  v91 = v122;
  outlined init with copy of WorkoutStep?(v122, v108);
  outlined init with copy of WorkoutStep?(v89, v109);
  CustomWorkout.init(configuration:displayName:warmup:blocks:cooldown:)();
  outlined destroy of WorkoutStep?(v89);
  outlined destroy of WorkoutStep?(v91);
}

uint64_t specialized static IntervalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v153 = a4;
  v118 = a3;
  v114 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v116 = *(v117 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v117);
  v115 = v110 - v7;
  v152 = type metadata accessor for IntervalStep.Purpose();
  v150 = *(v152 - 8);
  v8 = *(v150 + 64);
  v9 = MEMORY[0x28223BE20](v152);
  v151 = v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = v110 - v11;
  v156 = type metadata accessor for WorkoutStep();
  v12 = *(v156 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v156);
  v157 = v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for IntervalStep();
  v154 = *(v160 - 8);
  v15 = *(v154 + 64);
  MEMORY[0x28223BE20](v160);
  v158 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v149 = *(v135 - 8);
  v17 = v149[8];
  MEMORY[0x28223BE20](v135);
  v134 = v110 - v18;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v148 = *(v133 - 8);
  v19 = *(v148 + 64);
  MEMORY[0x28223BE20](v133);
  v132 = v110 - v20;
  v140 = type metadata accessor for IntervalBlock();
  v141 = *(v140 - 8);
  v21 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  v23 = v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v120 = v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v110 - v28;
  v137 = type metadata accessor for UUID();
  v131 = *(v137 - 8);
  v30 = *(v131 + 64);
  v31 = MEMORY[0x28223BE20](v137);
  v113 = v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = v110 - v33;
  v35 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v35 setActivityType_];
  [v35 setLocationType_];
  CustomWorkout.activity.getter();
  [v35 setSwimmingLocationType_];
  v155 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  UUID.init()();
  v112 = type metadata accessor for IntervalWorkout();
  v36 = objc_allocWithZone(v112);
  v139 = v34;
  v37 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v34, 0, 0);
  v143 = a1;
  v38 = CustomWorkout.displayName.getter();
  v138 = v12;
  if (v39)
  {
    v40 = v38;
    v41 = v39;
    swift_getKeyPath();
    swift_getKeyPath();
    v162[0] = v40;
    v162[1] = v41;
    v42 = v37;
    v12 = v138;
    static Published.subscript.setter();
  }

  v142 = v37;
  CustomWorkout.warmup.getter();
  v119 = *(v12 + 48);
  if (v119(v29, 1, v156) == 1)
  {
    outlined destroy of WorkoutStep?(v29);
    v43 = 0;
  }

  else
  {
    LOBYTE(v162[0]) = 1;
    LOBYTE(v165) = 2;
    v44 = v155;
    v45 = v29;
    v46 = WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v155, v162, &v165, v153);
    if (v4)
    {

      goto LABEL_32;
    }

    v47 = v46;
    (*(v12 + 8))(v29, v156);
    v43 = v47;
  }

  IntervalWorkout.warmupStep.setter(v43);
  v48 = CustomWorkout.blocks.getter();
  v49 = *(v48 + 16);
  v50 = v152;
  v121 = v35;
  if (!v49)
  {

    v79 = MEMORY[0x277D84F90];
LABEL_28:
    swift_getKeyPath();
    swift_getKeyPath();
    v162[0] = v79;
    v80 = v142;
    static Published.subscript.setter();
    v29 = v120;
    CustomWorkout.cooldown.getter();
    if (v119(v29, 1, v156) == 1)
    {
      v160 = v4;
      outlined destroy of WorkoutStep?(v29);
      v81 = 0;
LABEL_37:
      IntervalWorkout.cooldownStep.setter(v81);
      v88 = *(v131 + 16);
      v89 = v139;
      v90 = v137;
      v88(v139, v114, v137);
      v91 = v88;
      v92 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration());
      v93 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
      LOBYTE(v162[0]) = 0;
      v94 = v115;
      Published.init(initialValue:)();
      (*(v116 + 32))(&v92[v93], v94, v117);
      swift_beginAccess();
      v165 = v80;
      v159 = v80;
      Published.init(initialValue:)();
      swift_endAccess();
      v95 = v113;
      v91(v113, v89, v90);
      v96 = v91;
      *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v97 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
      v98 = type metadata accessor for Date();
      v99 = *(*(v98 - 8) + 56);
      v99(&v92[v97], 1, 1, v98);
      v99(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v98);
      v100 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v101 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v101 - 8) + 56))(&v92[v100], 1, 1, v101);
      v102 = v131;
      (*(v131 + 56))(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v90);
      v103 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v96(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v95, v90);
      v104 = v155;
      *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v155;
      v92[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
      v105 = v118;
      *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v118;
      swift_beginAccess();
      *&v92[v103] = 0;
      v92[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v106 = type metadata accessor for WorkoutConfiguration();
      v161.receiver = v92;
      v161.super_class = v106;
      v107 = v104;
      v108 = v105;
      v45 = objc_msgSendSuper2(&v161, sel_init);

      v109 = *(v102 + 8);
      v109(v95, v90);
      v109(v139, v90);
      return v45;
    }

    LOBYTE(v162[0]) = 1;
    LOBYTE(v165) = 3;
    v44 = v155;
    v45 = v29;
    v82 = WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v155, v162, &v165, v153);
    if (!v4)
    {
      v160 = 0;
      v87 = v82;
      (*(v12 + 8))(v29, v156);
      v81 = v87;
      goto LABEL_37;
    }

LABEL_32:
    (*(v12 + 8))(v29, v156);
    return v45;
  }

  v110[1] = v12 + 48;
  v162[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v51 = 0;
  v129 = v48 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
  v128 = v141 + 16;
  v127 = (v148 + 32);
  v126 = (v149 + 4);
  v125 = (v131 + 32);
  v147 = v154 + 16;
  v146 = (v150 + 16);
  v52 = (v150 + 88);
  v145 = *MEMORY[0x277CE4020];
  v144 = *MEMORY[0x277CE4028];
  v149 = (v150 + 8);
  v148 = v12 + 8;
  v150 = v154 + 8;
  v123 = (v141 + 8);
  v53 = v140;
  v124 = v23;
  v122 = v48;
  v111 = v49;
  while (v51 < *(v48 + 16))
  {
    v54 = *(v141 + 72);
    v130 = v51;
    (*(v141 + 16))(v23, v129 + v54 * v51, v53);
    v55 = v139;
    UUID.init()();
    v56 = type metadata accessor for WorkoutBlock();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
    v165 = 1;
    v61 = v132;
    Published.init(initialValue:)();
    (*v127)(v59 + v60, v61, v133);
    v62 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
    v165 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    v63 = v134;
    Published.init(initialValue:)();
    (*v126)(v59 + v62, v63, v135);
    (*v125)(v59 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v55, v137);
    v64 = IntervalBlock.iterations.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v165 = v64;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v136 = v59;
    static Published.subscript.getter();

    if (!v165)
    {
      goto LABEL_40;
    }

    v65 = IntervalBlock.steps.getter();
    v66 = *(v65 + 16);
    if (v66)
    {
      v165 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v67 = 0;
      v68 = v65 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
      while (v67 < *(v65 + 16))
      {
        (*(v154 + 16))(v158, v68 + *(v154 + 72) * v67, v160);
        IntervalStep.step.getter();
        v164 = 1;
        v69 = v159;
        IntervalStep.purpose.getter();
        v70 = v151;
        (*v146)(v151, v69, v50);
        v71 = (*v52)(v70, v50);
        if (v71 == v145)
        {
          v72 = 0;
          v73 = v153;
        }

        else
        {
          v73 = v153;
          if (v71 != v144)
          {

            (*v148)(v157, v156);
            v83 = type metadata accessor for ImportError();
            lazy protocol witness table accessor for type ImportError and conformance ImportError();
            swift_allocError();
            (*(*(v83 - 8) + 104))(v84, *MEMORY[0x277CE4008], v83);
            swift_willThrow();

            v45 = v149;
            v85 = *v149;
            (*v149)(v159, v50);
            (*v150)(v158, v160);
            (*v123)(v124, v140);
            v85(v151, v50);
            goto LABEL_34;
          }

          v72 = 1;
        }

        (*v149)(v159, v50);
        v163 = v72;
        v45 = v157;
        WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v155, &v164, &v163, v73);
        if (v4)
        {

          (*v148)(v45, v156);
          (*v150)(v158, v160);
          (*v123)(v124, v140);
LABEL_34:

          return v45;
        }

        ++v67;
        (*v148)(v45, v156);
        (*v150)(v158, v160);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v74 = *(v165 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v50 = v152;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v66 == v67)
        {

          v75 = v165;
          goto LABEL_23;
        }
      }

      __break(1u);
      break;
    }

    v75 = MEMORY[0x277D84F90];
LABEL_23:
    v53 = v140;
    v76 = v130 + 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v165 = v75;

    static Published.subscript.setter();
    v23 = v124;
    (*v123)(v124, v53);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v77 = *(v162[0] + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v51 = v76;
    v78 = v76 == v111;
    v12 = v138;
    v48 = v122;
    if (v78)
    {

      v79 = v162[0];
      v35 = v121;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of WorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id GuidedActivityTypesMigrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuidedActivityTypesMigrator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedActivityTypesMigrator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GuidedActivityTypesMigrator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedActivityTypesMigrator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(uint64_t a1, void (*a2)(id))
{
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v10 = 52;
    }

    else
    {
      v10 = 37;
    }

    v12 = MEMORY[0x20F2E5300]();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v16;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v17 = objc_allocWithZone(MEMORY[0x277D0A810]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithActivityTypeIdentifier:v10 isIndoor:0 metadata:isa];

    a2(v19);
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.activityPicker);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21 = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x20F2E5300](a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v21);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20AEA4000, oslog, v4, "[GuidedActivityTypesMigrator] hide: cannot make activity type of mediaType: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    else
    {
    }
  }
}